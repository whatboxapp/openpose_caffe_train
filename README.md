# OpenPose Caffe Training

<div align="center">
    <img src=".github/Logo_main_black.png", width="300">
</div>

----------------------------------------------------------------------------------------------------



## Contents
1. [Introduction](#introduction)
2. [Functionality](#functionality)
3. [Testing](#testing)
4. [Training](#training)
5. [Citation](#citation)
6. [License](#license)



## Introduction
[**OpenPose Caffe Training**](https://github.com/CMU-Perceptual-Computing-Lab/openpose_caffe_train) includes the modified Caffe version for training [**OpenPose**](https://github.com/CMU-Perceptual-Computing-Lab/openpose). Check the training repository in [github.com/CMU-Perceptual-Computing-Lab/openpose_train](https://github.com/CMU-Perceptual-Computing-Lab/openpose_train) for all the training details.

It is **authored by [Gines Hidalgo](https://www.gineshidalgo.com), [Zhe Cao](https://people.eecs.berkeley.edu/~zhecao), [Yaadhav Raaj](https://www.raaj.tech), [Tomas Simon](http://www.cs.cmu.edu/~tsimon), [Haroon Idrees](https://scholar.google.com/citations?user=z74SfHcAAAAJ&hl=en), [Donglai Xiang](https://xiangdonglai.github.io), [Shih-En Wei](https://scholar.google.com/citations?user=sFQD3k4AAAAJ&hl=en), [Hanbyul Joo](https://jhugestar.github.io), and [Yaser Sheikh](http://www.cs.cmu.edu/~yaser)**. It is based on the papers described in the [Citation](#citation) section and in [Realtime Multi-Person Pose Estimation](https://github.com/ZheC/Realtime_Multi-Person_Pose_Estimation). In addition, OpenPose would not be possible without the [CMU Panoptic Studio dataset](http://domedb.perception.cs.cmu.edu). We would also like to thank all the people who helped OpenPose in any way.

This repository and its documentation assumes knowledge of [OpenPose](https://github.com/CMU-Perceptual-Computing-Lab/openpose). If you have not used OpenPose yet, you must familiare yourself with it before attempting to follow this documentation.



## Citation
Please cite these papers in your publications if it helps your research (the face keypoint detector was trained using the procedure described in [Simon et al. 2017] for hands):

    @inproceedings{hidalgo2019singlenetwork,
      author = {Gines Hidalgo and Yaadhav Raaj and Haroon Idrees and Donglai Xiang and Hanbyul Joo and Tomas Simon and Yaser Sheikh},
      booktitle = {ICCV},
      title = {Single-Network Whole-Body Pose Estimation},
      year = {2019}
    }

    @inproceedings{cao2018openpose,
      author = {Zhe Cao and Gines Hidalgo and Tomas Simon and Shih-En Wei and Yaser Sheikh},
      booktitle = {arXiv preprint arXiv:1812.08008},
      title = {Open{P}ose: realtime multi-person 2{D} pose estimation using {P}art {A}ffinity {F}ields},
      year = {2018}
    }

Links to the papers:

- [Single-Network Whole-Body Pose Estimation](https://arxiv.org/abs/1909.13423)
- [OpenPose: Realtime Multi-Person 2D Pose Estimation using Part Affinity Fields](https://arxiv.org/abs/1812.08008)



## License
OpenPose is freely available for free non-commercial use, and may be redistributed under these conditions. Please, see the [license](LICENSE) for further details. Interested in a commercial license? Check this [FlintBox link](https://flintbox.com/public/project/47343/). For commercial queries, use the `Directly Contact Organization` section from the [FlintBox link](https://flintbox.com/public/project/47343/) and also send a copy of that message to [Yaser Sheikh](http://www.cs.cmu.edu/~yaser/).
