#ifdef USE_OPENCV
#include <opencv2/core/core.hpp>
#endif  // USE_OPENCV
#include <stdint.h>
#include <numeric>

#include <vector>

#include "caffe/data_transformer.hpp"
#include "caffe/layers/data_layer.hpp"
#include "caffe/util/benchmark.hpp"
// OpenPose: added
#include <chrono>
#include <stdexcept>
#include "caffe/util/io.hpp" // DecodeDatum, DecodeDatumNative
#include "caffe/openpose/getLine.hpp"
#include "caffe/openpose/layers/oPVideoLayer.hpp"
// OpenPose: added end

#include <iostream>
using namespace std;

namespace caffe {

template <typename Dtype>
OPVideoLayer<Dtype>::OPVideoLayer(const LayerParameter& param) :
    BasePrefetchingDataLayer<Dtype>(param),
    // offset_(),
    offsetBackground(), // OpenPose: added
    // offsetSecond(), // OpenPose: added
    op_transform_param_(param.op_transform_param()) // OpenPose: added
{
    // OpenPose: commented
    // db_.reset(db::GetDB(param.data_param().backend()));
    // db_->Open(param.data_param().source(), db::READ);
    // cursor_.reset(db_->NewCursor());
    // OpenPose: commented end
    // OpenPose: added
    // Set mSources, mModels, and mProbabilites
    mSources = split(param.op_transform_param().sources(), DELIMITER);
    mModels = split(param.op_transform_param().models(), DELIMITER);
    splitFloating(mProbabilities, param.op_transform_param().probabilities(), DELIMITER);
    // If only 1 model specified --> repeat for each source
    if (mModels.size() == 1 && mSources.size() > 1)
        mModels.resize(mSources.size(), mModels[0]);
    // Sanity checks
    for (const auto& probability : mProbabilities)
        if (probability < 0 || probability > 1)
            throw std::runtime_error{"Some probabilities is not in the range [0,1]"
                                     + getLine(__LINE__, __FUNCTION__, __FILE__)};
    if (mSources.size() != mProbabilities.size())
        throw std::runtime_error{"Error: mSources.size() != mProbabilities.size()"
                                 + getLine(__LINE__, __FUNCTION__, __FILE__)};
    if (mSources.size() != mModels.size())
        throw std::runtime_error{"Error: mSources.size() != mModels.size()"
                                 + getLine(__LINE__, __FUNCTION__, __FILE__)};
    // Initialize cursor and DB
    mDbs.resize(mSources.size());
    mCursors.resize(mSources.size());
    for (auto i = 0u ; i < mCursors.size() ; i++)
    {
        mDbs[i].reset(db::GetDB(param.data_param().backend()));
        mDbs[i]->Open(mSources[i], db::READ);
        mCursors[i].reset(mDbs[i]->NewCursor()); // OpenPose: commented
    }
    // Initialize other variables
    mCounterTimer.resize(mSources.size(), 0);
    mCounterTimerBkg = 0;
    mOffsets.resize(mSources.size(), 0);
    // Set up negatives DB
    if (!op_transform_param_.source_background().empty())
    {
        backgroundDb = true;
        onlyBackgroundProbability = op_transform_param_.prob_only_background();
        CHECK_GE(onlyBackgroundProbability, 0.f);
        CHECK_LT(onlyBackgroundProbability, 1.f);
        dbBackground.reset(db::GetDB(DataParameter_DB::DataParameter_DB_LMDB));
        dbBackground->Open(op_transform_param_.source_background(), db::READ);
        cursorBackground.reset(dbBackground->NewCursor());
    }
    else
    {
        backgroundDb = false;
        onlyBackgroundProbability = 0.f;
    }
    // Sanity checks
    const auto totalProbabilities = std::accumulate(mProbabilities.begin(), mProbabilities.end(), 0.f);
    if (std::abs(totalProbabilities + onlyBackgroundProbability - 1.f) > 1e-6)
        throw std::runtime_error{
            "Probabilities sum up something different to 100%: "
            + std::to_string(100*(totalProbabilities + onlyBackgroundProbability))
            + getLine(__LINE__, __FUNCTION__, __FILE__)};
    // Timer
    mDuration = 0;
    mCounter = 0;
    // Input Type
    if(param.op_transform_param().input_type().size()){
        mInputType = split(param.op_transform_param().input_type(), DELIMITER);
        if(mInputType.size() != mDbs.size()) throw std::runtime_error("Input Type error");
    }
    mFrameSize = param.op_transform_param().frame_size();
    // OpenPose: added end
}

template <typename Dtype>
OPVideoLayer<Dtype>::~OPVideoLayer()
{
    this->StopInternalThread();
}


template <typename Dtype>
void OPVideoLayer<Dtype>::DataLayerSetUp(const vector<Blob<Dtype>*>& bottom,
    const vector<Blob<Dtype>*>& top)
{
    const int batch_size = this->layer_param_.data_param().batch_size();
    const int frame_size = this->mFrameSize;
    // Read a data point, and use it to initialize the top blob.
    Datum datum;
    // datum.ParseFromString(cursor_->value()); // OpenPose: commented
    datum.ParseFromString(mCursors[0]->value()); // OpenPose: added

    // OpenPose: added
    mOPDataTransformers.resize(mSources.size());
    for (auto i = 0u ; i < mOPDataTransformers.size() ; i++)
        mOPDataTransformers[i].reset(
            new OPDataTransformer<Dtype>(op_transform_param_, this->phase_, mModels[i], mInputType[i]));
    // mOPDataTransformer->InitRand();
    // Force color
    bool forceColor = this->layer_param_.data_param().force_encoded_color();
    if ((forceColor && DecodeDatum(&datum, true)) || DecodeDatumNative(&datum))
        LOG(INFO) << "Decoding Datum";

    // Multi Image shape (Data layer is ([frame*batch * 3 * 368 * 38])) - Set Data size
    const int width = this->phase_ != TRAIN ? datum.width() : this->layer_param_.op_transform_param().crop_size_x();
    const int height = this->phase_ != TRAIN ? datum.height() : this->layer_param_.op_transform_param().crop_size_y();
    std::vector<int> topShape{batch_size * frame_size, 3, height, width};
    top[0]->Reshape(topShape);
    // Set output and prefetch size
    this->transformed_data_.Reshape(topShape[0], topShape[1], topShape[2], topShape[3]);
    for (int i = 0; i < this->prefetch_.size(); ++i)
        this->prefetch_[i]->data_.Reshape(topShape);
    LOG(INFO) << "Video shape: " << topShape[0] << ", " << topShape[1] << ", " << topShape[2] << ", " << topShape[3];

    // Labels
    if (this->output_labels_)
    {
        const int stride = this->layer_param_.op_transform_param().stride();
        const int numberChannels = this->mOPDataTransformers[0]->getNumberChannels();
        for (auto i = 0u ; i < this->mOPDataTransformers.size() ; i++)
            CHECK(this->mOPDataTransformers[i]->getNumberChannels() == this->mOPDataTransformers[0]->getNumberChannels())
                << "Are you using compatible models? " << this->mOPDataTransformers[i]->getNumberChannels()
                << " vs. " << this->mOPDataTransformers[0]->getNumberChannels()
                << " channels (models " << mModels[i] << " vs. " << mModels[0] << ")";
        std::vector<int> labelShape{batch_size * frame_size, numberChannels, height/stride, width/stride};
        top[1]->Reshape(labelShape);
        for (int i = 0; i < this->prefetch_.size(); ++i)
            this->prefetch_[i]->label_.Reshape(labelShape);
        this->transformed_label_.Reshape(labelShape[0], labelShape[1], labelShape[2], labelShape[3]);
        LOG(INFO) << "Label shape: " << labelShape[0] << ", " << labelShape[1] << ", " << labelShape[2] << ", " << labelShape[3];
    }
    else
        throw std::runtime_error{"output_labels_ must be set to true" + getLine(__LINE__, __FUNCTION__, __FILE__)};
}

template <typename Dtype>
bool OPVideoLayer<Dtype>::Skip(const int index)
{
    int size = Caffe::solver_count();
    int rank = Caffe::solver_rank();
    bool keep = (mOffsets[index] % size) == rank ||
                  // In test mode, only rank 0 runs, so avoid skipping
                  this->layer_param_.phase() == TEST;
    return !keep;
}

// OpenPose: added
template<typename Dtype>
void OPVideoLayer<Dtype>::Next(const int index)
{
    auto& cursor = mCursors.at(index);
    cursor->Next();
    if (!cursor->valid())
    {
        LOG_IF(INFO, Caffe::root_solver())
                << "Restarting second data prefetching from start.";
        cursor->SeekToFirst();
    }
    mOffsets[index]++;
}

template<typename Dtype>
void OPVideoLayer<Dtype>::NextBackground()
{
    assert(backgroundDb);
    cursorBackground->Next();
    if (!cursorBackground->valid())
    {
        LOG_IF(INFO, Caffe::root_solver())
                << "Restarting negatives data prefetching from start.";
        cursorBackground->SeekToFirst();
    }
    offsetBackground++;
}

template <typename Dtype>
bool OPVideoLayer<Dtype>::SkipBackground()
{
    int size = Caffe::solver_count();
    int rank = Caffe::solver_rank();
    bool keep = (offsetBackground % size) == rank ||
                  // In test mode, only rank 0 runs, so avoid skipping
                  this->layer_param_.phase() == TEST;
    return !keep;
}

template <typename Dtype>
int getRandomIndex(const std::vector<Dtype>& probabilities, const Dtype onlyBackgroundProbability)
{
    const float dice = static_cast <float> (rand()) / static_cast <float> (RAND_MAX); //[0,1]
    auto accumulated = Dtype(0);
    for (auto i = 0u ; i < probabilities.size() ; i++)
    {
        accumulated += probabilities[i];
        // Choose i
        if (dice < accumulated)
            return i;
    }
    // Choose background
    return -1;
}

// This function is called on prefetch thread
template<typename Dtype>
void OPVideoLayer<Dtype>::load_batch(Batch<Dtype>* batch)
{
    CPUTimer batch_timer;
    batch_timer.Start();
    double read_time = 0;
    double trans_time = 0;
    CPUTimer timer;
    CHECK(batch->data_.count());
    CHECK(this->transformed_data_.count());
    const int batch_size = this->layer_param_.data_param().batch_size();

    // OpenPose: added
    auto* topLabel = batch->label_.mutable_cpu_data();
    // OpenPose: added ended

    Datum datum;
    Datum datumBackground;
    // OpenPose: added - Batch within
    const auto randomIndex = getRandomIndex(mProbabilities, onlyBackgroundProbability);
    const auto desiredDbIsBkg = randomIndex == -1;
    // OpenPose: added ended
    for (int item_id = 0; item_id < batch_size; ++item_id) {
        timer.Start();
        // OpenPose: commended
        // while (Skip()) {
        //     Next();
        // }
        // datum.ParseFromString(cursor_->value());
        // OpenPose: commended ended
        // OpenPose: added
        auto inputType = this->mInputType[std::max(0, randomIndex)];
        auto oPDataTransformerPtr = this->mOPDataTransformers[std::max(0, randomIndex)]; // If bkg --> Use 0
        // If chosen dataset i
        if (!desiredDbIsBkg) // i.e., if randomIndex >= 0
        {
            mCounterTimer[randomIndex]++;
            while (Skip(randomIndex))
                Next(randomIndex);
            // datum.ParseFromString(cursor_->value());
            datum.ParseFromString(mCursors[randomIndex]->value());
        }
        // If chosen only-bkg
        else
        {
            mCounterTimerBkg++;
            CHECK(backgroundDb);
        }
        if (backgroundDb)
        {
            while (SkipBackground())
                NextBackground();
            datumBackground.ParseFromString(cursorBackground->value());
        }
        // OpenPose: added ended
        read_time += timer.MicroSeconds();

        if (item_id == 0) {
            // OpenPose: added
            // this->transformed_data_.Reshape({1, 3, height, width});
            // top_shape[0] = batch_size;
            const int width = this->phase_ != TRAIN ? datum.width()
                : this->layer_param_.op_transform_param().crop_size_x();
            const int height = this->phase_ != TRAIN ? datum.height()
                : this->layer_param_.op_transform_param().crop_size_y();
            batch->data_.Reshape({batch_size * mFrameSize, 3, height, width});
            // OpenPose: added ended
            // OpenPose: commented
            // // Reshape according to the first datum of each batch
            // // on single input batches allows for inputs of varying dimension.
            // // Use data_transformer to infer the expected blob shape from datum.
            // vector<int> top_shape = this->data_transformer_->InferBlobShape(datum);
            // this->transformed_data_.Reshape(top_shape);
            // // Reshape batch according to the batch_size.
            // top_shape[0] = batch_size;
            // batch->data_.Reshape(top_shape);
            // OpenPose: commented ended
        }

        // Apply data transformations (mirror, scale, crop...)
        timer.Start();
        // OpenPose: added
        // Image
        // const int offset = batch->data_.offset(item_id);
        auto* topData = batch->data_.mutable_cpu_data();
        this->transformed_data_.set_cpu_data(topData);
        // Label
        // const int offsetLabel = batch->label_.offset(item_id);
        this->transformed_label_.set_cpu_data(topLabel);
        // Process image & label
        const auto begin = std::chrono::high_resolution_clock::now();

        if(inputType == "image")
            oPDataTransformerPtr->TransformVideoSF(item_id, mFrameSize, &(this->transformed_data_),
                                            &(this->transformed_label_),
                                            datum, datumBackground, randomIndex);
        else
            throw std::runtime_error("Not implemented");

//        if (backgroundDb)
//            oPDataTransformerPtr->Transform(
//                &(this->transformed_data_), &(this->transformed_label_), mDistanceAverage, mDistanceSigma,
//                mDistanceAverageCounter, randomIndex, (desiredDbIsBkg ? nullptr : &datum), &datumBackground);
//        else
//            oPDataTransformerPtr->Transform(
//                &(this->transformed_data_), &(this->transformed_label_), mDistanceAverage, mDistanceSigma,
//                mDistanceAverageCounter, randomIndex, (desiredDbIsBkg ? nullptr : &datum));
        const auto end = std::chrono::high_resolution_clock::now();
        mDuration += std::chrono::duration_cast<std::chrono::nanoseconds>(end-begin).count();

        // DB i
        if (!desiredDbIsBkg) // i.e., if randomIndex >= 0
            Next(randomIndex);
        // If bkg DB included
        if (backgroundDb)
            NextBackground();
        trans_time += timer.MicroSeconds();
        // OpenPose: added ended
        // OpenPose: commented
        // this->data_transformer_->Transform(datum, &(this->transformed_data_));
        // // Copy label.
        // if (this->output_labels_) {
        //   Dtype* topLabel = batch->label_.mutable_cpu_data();
        //   topLabel[item_id] = datum.label();
        // }
        // trans_time += timer.MicroSeconds();
        // Next();
        // OpenPose: commented ended
    }
    // Timer (every 20 iterations x batch size)
    mCounter++;
    const auto repeatEveryXVisualizations = 4;
    if (mCounter % (20*repeatEveryXVisualizations) == 0)
    {
        std::string text = "Time: " + std::to_string(mDuration/repeatEveryXVisualizations * 1e-9) + "s";
        mCounter = 0;
        mDuration = 0;
        const auto accumulatedCounters = float(
            std::accumulate(mCounterTimer.begin(), mCounterTimer.end(), mCounterTimerBkg));
        for (auto i = 0u ; i < mCounterTimer.size() ; i++)
        {
            text += "\t" + mModels.at(i) + ": ";
            text += std::to_string(mCounterTimer.at(i)/accumulatedCounters);
        }
        text += "\tRatioBkg: " + std::to_string(mCounterTimerBkg/accumulatedCounters);
        std::cout << text; // << std::endl;
        std::cout << "\n" << std::endl;
    }
    timer.Stop();
    batch_timer.Stop();
    DLOG(INFO) << "Prefetch batch: " << batch_timer.MilliSeconds() << " ms.";
    DLOG(INFO) << "     Read time: " << read_time / 1000 << " ms.";
    DLOG(INFO) << "Transform time: " << trans_time / 1000 << " ms.";

    std::cout << "DONE!!" << std::endl;

    // Video Test
    auto oPDataTransformerPtr = this->mOPDataTransformers[std::max(0, randomIndex)];
    oPDataTransformerPtr->TestVideo(mFrameSize, &(this->transformed_data_), &(this->transformed_label_));

    std::cout << "VIDEO" << std::endl;
    exit(-1);

//    CPUTimer batch_timer;
//    batch_timer.Start();
//    double read_time = 0;
//    double trans_time = 0;
//    CPUTimer timer;
//    CHECK(batch->data_.count());
//    CHECK(this->transformed_data_.count());
//    const int batch_size = this->layer_param_.data_param().batch_size();

//    // Get Label pointer [Label shape: 20, 132, 46, 46]
//    auto* topLabel = batch->label_.mutable_cpu_data();
//    for(int i=0; i<Batch<float>::extra_labels_count; i++)
//        batch->extra_labels_[i].mutable_cpu_data();

//    // OpenPose: added
//    float video_or_image = 0.0;
//    if(AProbability || BProbability) video_or_image = static_cast <float> (rand()) / static_cast <float> (RAND_MAX); //[0,1]
//    //video_or_image = 1.0;

//    //Change code so that its in image mode doesnt mix?

//    bool desiredDbIs1 = false, desiredDbIs2 = false, desiredDbIs3 = false;
//    bool desiredDbIsA = false, desiredDbIsB = false;
//    //sample_dbs(desiredDbIs1, desiredDbIs2, desiredDbIs3);

//    // Sample Outside
//    if(video_or_image >= this->layer_param_.op_transform_param().video_or_image()){
//        sample_dbs(desiredDbIs1, desiredDbIs2, desiredDbIs3);
//    }else{
//        sample_ab(desiredDbIsA, desiredDbIsB);
//    }

//    // Sample lmdb for video?
//    Datum datum;
//    Datum datumBackground;
//    for (int item_id = 0; item_id < batch_size; ++item_id) {
//        //const float dice = static_cast <float> (rand()) / static_cast <float> (RAND_MAX); //[0,1]
//        //const auto desiredDbIs1 = !secondDb || (dice <= (1-secondProbability));
////        if(video_or_image >= this->layer_param_.op_transform_param().video_or_image()){
////            sample_dbs(desiredDbIs1, desiredDbIs2, desiredDbIs3);
////        }else{
////            if(item_id == 0) sample_ab(desiredDbIsA, desiredDbIsB);
////        }

//        // Read from desired DB - DB1, DB2 or BG
//        timer.Start();
//        auto oPDataTransformerPtr = this->mOPDataTransformer;
//        if (desiredDbIs1)
//        {
//            mOnes++;
//            while (Skip())
//                Next();
//            datum.ParseFromString(cursor_->value());
//        }
//        // 2nd DB
//        else if (desiredDbIs2)
//        {
//            oPDataTransformerPtr = this->mOPDataTransformerSecondary;
//            mTwos++;
//            while (SkipSecond())
//                NextSecond();
//            datum.ParseFromString(cursorSecond->value());
//        }
//        // 3rd DB
//        else if (desiredDbIs3)
//        {
//            oPDataTransformerPtr = this->mOPDataTransformerTertiary;
//            mThrees++;
//            while (SkipThird())
//                NextThird();
//            datum.ParseFromString(cursorThird->value());
//        }
//        // A DB
//        else if (desiredDbIsA)
//        {
//            oPDataTransformerPtr = this->mOPDataTransformerA;
//            mAs++;
//            while (SkipA())
//                NextA();
//            datum.ParseFromString(cursorA->value());
//        }
//        // B DB
//        else if (desiredDbIsB)
//        {
//            oPDataTransformerPtr = this->mOPDataTransformerB;
//            mBs++;
//            while (SkipB())
//                NextB();
//            datum.ParseFromString(cursorB->value());
//        }
//        if (backgroundDb)
//        {
//            NextBackground();
//            datumBackground.ParseFromString(cursorBackground->value());
//        }
//        read_time += timer.MicroSeconds();

//        // First item
//        if (item_id == 0) {
//            const int width = this->phase_ != TRAIN ? datum.width() : this->layer_param_.op_transform_param().crop_size_x();
//            const int height = this->phase_ != TRAIN ? datum.height() : this->layer_param_.op_transform_param().crop_size_y();
//            batch->data_.Reshape({batch_size * frame_size, 3, height, width});
//        }

//        // Read in data
//        timer.Start();
//        VSeq vs;
//        const int offset = batch->data_.offset(item_id);
//        auto* topData = batch->data_.mutable_cpu_data();
//        this->transformed_data_.set_cpu_data(topData);
//        // Label
//        const int offsetLabel = batch->label_.offset(item_id);
//        this->transformed_label_.set_cpu_data(topLabel);
//        // Process image & label
//        const auto begin = std::chrono::high_resolution_clock::now();
//        if (backgroundDb){
//            if(desiredDbIs1)
//                oPDataTransformerPtr->TransformVideoJSON(item_id, frame_size, vs, &(this->transformed_data_),
//                                                &(this->transformed_label_),
//                                                datum, &datumBackground);
//            else if (desiredDbIs2 || desiredDbIs3)
//                oPDataTransformerPtr->TransformVideoSF(item_id, frame_size, vs, &(this->transformed_data_),
//                                                &(this->transformed_label_),
//                                                datum, &datumBackground);
//            else if (desiredDbIsA || desiredDbIsB)
//                oPDataTransformerPtr->TransformVideoSF(item_id, frame_size, vs, &(this->transformed_data_),
//                                                &(this->transformed_label_),
//                                                datum, &datumBackground, false);

//        }else{
//            throw std::runtime_error("Not implemented");
//        }
//        const auto end = std::chrono::high_resolution_clock::now();
//        mDuration += std::chrono::duration_cast<std::chrono::nanoseconds>(end-begin).count();

//        // Advance to next data
//        if (desiredDbIs1)
//            Next();
//        else if (desiredDbIs2)
//            NextSecond();
//        else if (desiredDbIs3)
//            NextThird();
//        else if (desiredDbIsA)
//            NextA();
//        else if (desiredDbIsB)
//            NextB();
//        trans_time += timer.MicroSeconds();
//    }

//    // Testing Optional
//    //if(vCounter == 2){
//    //auto oPDataTransformerPtr = this->mOPDataTransformer;
//    //oPDataTransformerPtr->Test(frame_size, &(this->transformed_data_), &(this->transformed_label_));
//    //}
//    //boost::this_thread::sleep_for(boost::chrono::milliseconds(1000));
//    //std::cout << "Loaded Data" << std::endl;

//    // Timer (every 20 iterations x batch size)
//    mCounter++;
//    vCounter++;
//    const auto repeatEveryXVisualizations = 2;
//    if (mCounter == 20*repeatEveryXVisualizations)
//    {
//        std::cout << "Time: " << mDuration/repeatEveryXVisualizations * 1e-9 << "s\t"
//                  << "Ratio: " << mOnes/float(mOnes+mTwos) << std::endl;
//        mDuration = 0;
//        mCounter = 0;
//    }
//    timer.Stop();
//    batch_timer.Stop();
//    DLOG(INFO) << "Prefetch batch: " << batch_timer.MilliSeconds() << " ms.";
//    DLOG(INFO) << "     Read time: " << read_time / 1000 << " ms.";
//    DLOG(INFO) << "Transform time: " << trans_time / 1000 << " ms.";
}

INSTANTIATE_CLASS(OPVideoLayer);
REGISTER_LAYER_CLASS(OPVideo);

}  // namespace caffe
