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
include examples/CMakeFiles/convert_mnist_siamese_data.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/convert_mnist_siamese_data.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/convert_mnist_siamese_data.dir/flags.make

examples/CMakeFiles/convert_mnist_siamese_data.dir/siamese/convert_mnist_siamese_data.cpp.o: examples/CMakeFiles/convert_mnist_siamese_data.dir/flags.make
examples/CMakeFiles/convert_mnist_siamese_data.dir/siamese/convert_mnist_siamese_data.cpp.o: ../examples/siamese/convert_mnist_siamese_data.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/openpose_caffe_train/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/convert_mnist_siamese_data.dir/siamese/convert_mnist_siamese_data.cpp.o"
	cd /root/openpose_caffe_train/release/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/convert_mnist_siamese_data.dir/siamese/convert_mnist_siamese_data.cpp.o -c /root/openpose_caffe_train/examples/siamese/convert_mnist_siamese_data.cpp

examples/CMakeFiles/convert_mnist_siamese_data.dir/siamese/convert_mnist_siamese_data.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/convert_mnist_siamese_data.dir/siamese/convert_mnist_siamese_data.cpp.i"
	cd /root/openpose_caffe_train/release/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/openpose_caffe_train/examples/siamese/convert_mnist_siamese_data.cpp > CMakeFiles/convert_mnist_siamese_data.dir/siamese/convert_mnist_siamese_data.cpp.i

examples/CMakeFiles/convert_mnist_siamese_data.dir/siamese/convert_mnist_siamese_data.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/convert_mnist_siamese_data.dir/siamese/convert_mnist_siamese_data.cpp.s"
	cd /root/openpose_caffe_train/release/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/openpose_caffe_train/examples/siamese/convert_mnist_siamese_data.cpp -o CMakeFiles/convert_mnist_siamese_data.dir/siamese/convert_mnist_siamese_data.cpp.s

# Object files for target convert_mnist_siamese_data
convert_mnist_siamese_data_OBJECTS = \
"CMakeFiles/convert_mnist_siamese_data.dir/siamese/convert_mnist_siamese_data.cpp.o"

# External object files for target convert_mnist_siamese_data
convert_mnist_siamese_data_EXTERNAL_OBJECTS =

examples/siamese/convert_mnist_siamese_data: examples/CMakeFiles/convert_mnist_siamese_data.dir/siamese/convert_mnist_siamese_data.cpp.o
examples/siamese/convert_mnist_siamese_data: examples/CMakeFiles/convert_mnist_siamese_data.dir/build.make
examples/siamese/convert_mnist_siamese_data: lib/libcaffe.so.1.0.0
examples/siamese/convert_mnist_siamese_data: lib/libcaffeproto.a
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_cudabgsegm.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_cudaobjdetect.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_cudastereo.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_stitching.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_cudafeatures2d.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_superres.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_videostab.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_cudaoptflow.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_cudalegacy.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_cudawarping.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_aruco.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_bgsegm.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_bioinspired.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_ccalib.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_cvv.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_dnn_objdetect.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_dpm.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_highgui.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_videoio.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_face.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_freetype.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_fuzzy.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_hdf.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_hfs.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_img_hash.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_line_descriptor.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_optflow.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_reg.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_rgbd.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_saliency.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_sfm.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_stereo.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_structured_light.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_viz.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_phase_unwrapping.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_surface_matching.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_tracking.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_datasets.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_text.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_dnn.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_plot.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_xfeatures2d.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_shape.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_video.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_ml.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_ximgproc.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_xobjdetect.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_objdetect.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_calib3d.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_imgcodecs.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_features2d.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_flann.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_xphoto.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_photo.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_cudaimgproc.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_cudafilters.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_imgproc.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_cudaarithm.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_core.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libopencv_cudev.so.3.4.9
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libboost_system.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libboost_thread.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libglog.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libgflags.so
examples/siamese/convert_mnist_siamese_data: /usr/local/lib/libprotobuf.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libpthread.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libsz.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libz.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libdl.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libm.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libpthread.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libsz.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libz.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libdl.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libm.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/liblmdb.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libleveldb.so
examples/siamese/convert_mnist_siamese_data: /usr/local/cuda-10.1/lib64/libcudart.so
examples/siamese/convert_mnist_siamese_data: /usr/local/cuda-10.1/lib64/libcurand.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libcublas.so
examples/siamese/convert_mnist_siamese_data: /usr/local/cuda-10.1/lib64/libcudnn.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/liblapack.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libcblas.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libatlas.so
examples/siamese/convert_mnist_siamese_data: /usr/lib/x86_64-linux-gnu/libboost_python-py36.so
examples/siamese/convert_mnist_siamese_data: examples/CMakeFiles/convert_mnist_siamese_data.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/openpose_caffe_train/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable siamese/convert_mnist_siamese_data"
	cd /root/openpose_caffe_train/release/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/convert_mnist_siamese_data.dir/link.txt --verbose=$(VERBOSE)
	cd /root/openpose_caffe_train/release/examples && ln -sf /root/openpose_caffe_train/release/examples/siamese/convert_mnist_siamese_data /root/openpose_caffe_train/release/examples/siamese/convert_mnist_siamese_data.bin

# Rule to build all files generated by this target.
examples/CMakeFiles/convert_mnist_siamese_data.dir/build: examples/siamese/convert_mnist_siamese_data

.PHONY : examples/CMakeFiles/convert_mnist_siamese_data.dir/build

examples/CMakeFiles/convert_mnist_siamese_data.dir/clean:
	cd /root/openpose_caffe_train/release/examples && $(CMAKE_COMMAND) -P CMakeFiles/convert_mnist_siamese_data.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/convert_mnist_siamese_data.dir/clean

examples/CMakeFiles/convert_mnist_siamese_data.dir/depend:
	cd /root/openpose_caffe_train/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/openpose_caffe_train /root/openpose_caffe_train/examples /root/openpose_caffe_train/release /root/openpose_caffe_train/release/examples /root/openpose_caffe_train/release/examples/CMakeFiles/convert_mnist_siamese_data.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/convert_mnist_siamese_data.dir/depend

