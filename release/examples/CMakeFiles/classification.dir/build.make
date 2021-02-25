# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/openpose_caffe_train

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/openpose_caffe_train/release

# Include any dependencies generated for this target.
include examples/CMakeFiles/classification.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/classification.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/classification.dir/flags.make

examples/CMakeFiles/classification.dir/cpp_classification/classification.cpp.o: examples/CMakeFiles/classification.dir/flags.make
examples/CMakeFiles/classification.dir/cpp_classification/classification.cpp.o: ../examples/cpp_classification/classification.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/openpose_caffe_train/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/classification.dir/cpp_classification/classification.cpp.o"
	cd /root/openpose_caffe_train/release/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/classification.dir/cpp_classification/classification.cpp.o -c /root/openpose_caffe_train/examples/cpp_classification/classification.cpp

examples/CMakeFiles/classification.dir/cpp_classification/classification.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/classification.dir/cpp_classification/classification.cpp.i"
	cd /root/openpose_caffe_train/release/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/openpose_caffe_train/examples/cpp_classification/classification.cpp > CMakeFiles/classification.dir/cpp_classification/classification.cpp.i

examples/CMakeFiles/classification.dir/cpp_classification/classification.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/classification.dir/cpp_classification/classification.cpp.s"
	cd /root/openpose_caffe_train/release/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/openpose_caffe_train/examples/cpp_classification/classification.cpp -o CMakeFiles/classification.dir/cpp_classification/classification.cpp.s

# Object files for target classification
classification_OBJECTS = \
"CMakeFiles/classification.dir/cpp_classification/classification.cpp.o"

# External object files for target classification
classification_EXTERNAL_OBJECTS =

examples/cpp_classification/classification: examples/CMakeFiles/classification.dir/cpp_classification/classification.cpp.o
examples/cpp_classification/classification: examples/CMakeFiles/classification.dir/build.make
examples/cpp_classification/classification: lib/libcaffe.so.1.0.0
examples/cpp_classification/classification: lib/libcaffeproto.a
examples/cpp_classification/classification: /usr/local/lib/libopencv_cudabgsegm.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_cudaobjdetect.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_cudastereo.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_stitching.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_cudafeatures2d.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_superres.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_videostab.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_cudaoptflow.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_cudalegacy.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_cudawarping.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_aruco.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_bgsegm.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_bioinspired.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_ccalib.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_cvv.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_dnn_objdetect.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_dpm.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_highgui.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_videoio.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_face.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_freetype.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_fuzzy.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_hdf.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_hfs.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_img_hash.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_line_descriptor.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_optflow.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_reg.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_rgbd.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_saliency.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_sfm.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_stereo.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_structured_light.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_viz.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_phase_unwrapping.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_surface_matching.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_tracking.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_datasets.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_text.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_dnn.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_plot.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_xfeatures2d.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_shape.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_video.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_ml.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_ximgproc.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_xobjdetect.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_objdetect.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_calib3d.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_imgcodecs.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_features2d.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_flann.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_xphoto.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_photo.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_cudaimgproc.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_cudafilters.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_imgproc.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_cudaarithm.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_core.so.3.4.9
examples/cpp_classification/classification: /usr/local/lib/libopencv_cudev.so.3.4.9
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libboost_system.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libboost_thread.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libglog.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libgflags.so
examples/cpp_classification/classification: /usr/local/lib/libprotobuf.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libpthread.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libsz.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libz.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libdl.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libm.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libpthread.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libsz.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libz.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libdl.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libm.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/liblmdb.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libleveldb.so
examples/cpp_classification/classification: /usr/local/cuda-10.1/lib64/libcudart.so
examples/cpp_classification/classification: /usr/local/cuda-10.1/lib64/libcurand.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libcublas.so
examples/cpp_classification/classification: /usr/local/cuda-10.1/lib64/libcudnn.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/liblapack.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libcblas.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libatlas.so
examples/cpp_classification/classification: /usr/lib/x86_64-linux-gnu/libboost_python-py36.so
examples/cpp_classification/classification: examples/CMakeFiles/classification.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/openpose_caffe_train/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cpp_classification/classification"
	cd /root/openpose_caffe_train/release/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/classification.dir/link.txt --verbose=$(VERBOSE)
	cd /root/openpose_caffe_train/release/examples && ln -sf /root/openpose_caffe_train/release/examples/cpp_classification/classification /root/openpose_caffe_train/release/examples/cpp_classification/classification.bin

# Rule to build all files generated by this target.
examples/CMakeFiles/classification.dir/build: examples/cpp_classification/classification

.PHONY : examples/CMakeFiles/classification.dir/build

examples/CMakeFiles/classification.dir/clean:
	cd /root/openpose_caffe_train/release/examples && $(CMAKE_COMMAND) -P CMakeFiles/classification.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/classification.dir/clean

examples/CMakeFiles/classification.dir/depend:
	cd /root/openpose_caffe_train/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/openpose_caffe_train /root/openpose_caffe_train/examples /root/openpose_caffe_train/release /root/openpose_caffe_train/release/examples /root/openpose_caffe_train/release/examples/CMakeFiles/classification.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/classification.dir/depend
