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
include tools/CMakeFiles/caffe.bin.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/caffe.bin.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/caffe.bin.dir/flags.make

tools/CMakeFiles/caffe.bin.dir/caffe.cpp.o: tools/CMakeFiles/caffe.bin.dir/flags.make
tools/CMakeFiles/caffe.bin.dir/caffe.cpp.o: ../tools/caffe.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/openpose_caffe_train/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/CMakeFiles/caffe.bin.dir/caffe.cpp.o"
	cd /root/openpose_caffe_train/release/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/caffe.bin.dir/caffe.cpp.o -c /root/openpose_caffe_train/tools/caffe.cpp

tools/CMakeFiles/caffe.bin.dir/caffe.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/caffe.bin.dir/caffe.cpp.i"
	cd /root/openpose_caffe_train/release/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/openpose_caffe_train/tools/caffe.cpp > CMakeFiles/caffe.bin.dir/caffe.cpp.i

tools/CMakeFiles/caffe.bin.dir/caffe.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/caffe.bin.dir/caffe.cpp.s"
	cd /root/openpose_caffe_train/release/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/openpose_caffe_train/tools/caffe.cpp -o CMakeFiles/caffe.bin.dir/caffe.cpp.s

# Object files for target caffe.bin
caffe_bin_OBJECTS = \
"CMakeFiles/caffe.bin.dir/caffe.cpp.o"

# External object files for target caffe.bin
caffe_bin_EXTERNAL_OBJECTS =

tools/caffe: tools/CMakeFiles/caffe.bin.dir/caffe.cpp.o
tools/caffe: tools/CMakeFiles/caffe.bin.dir/build.make
tools/caffe: lib/libcaffe.so.1.0.0
tools/caffe: lib/libcaffeproto.a
tools/caffe: /usr/local/lib/libopencv_cudabgsegm.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_cudaobjdetect.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_cudastereo.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_stitching.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_cudafeatures2d.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_superres.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_videostab.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_cudaoptflow.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_cudalegacy.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_cudawarping.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_aruco.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_bgsegm.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_bioinspired.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_ccalib.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_cvv.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_dnn_objdetect.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_dpm.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_highgui.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_videoio.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_face.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_freetype.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_fuzzy.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_hdf.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_hfs.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_img_hash.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_line_descriptor.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_optflow.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_reg.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_rgbd.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_saliency.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_sfm.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_stereo.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_structured_light.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_viz.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_phase_unwrapping.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_surface_matching.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_tracking.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_datasets.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_text.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_dnn.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_plot.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_xfeatures2d.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_shape.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_video.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_ml.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_ximgproc.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_xobjdetect.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_objdetect.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_calib3d.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_imgcodecs.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_features2d.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_flann.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_xphoto.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_photo.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_cudaimgproc.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_cudafilters.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_imgproc.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_cudaarithm.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_core.so.3.4.9
tools/caffe: /usr/local/lib/libopencv_cudev.so.3.4.9
tools/caffe: /usr/lib/x86_64-linux-gnu/libboost_system.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libglog.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libgflags.so
tools/caffe: /usr/local/lib/libprotobuf.so
tools/caffe: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so
tools/caffe: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libpthread.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libsz.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libz.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libdl.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libm.so
tools/caffe: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so
tools/caffe: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so
tools/caffe: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so
tools/caffe: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libpthread.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libsz.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libz.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libdl.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libm.so
tools/caffe: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so
tools/caffe: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so
tools/caffe: /usr/lib/x86_64-linux-gnu/liblmdb.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libleveldb.so
tools/caffe: /usr/local/cuda-10.1/lib64/libcudart.so
tools/caffe: /usr/local/cuda-10.1/lib64/libcurand.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libcublas.so
tools/caffe: /usr/local/cuda-10.1/lib64/libcudnn.so
tools/caffe: /usr/lib/x86_64-linux-gnu/liblapack.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libcblas.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libatlas.so
tools/caffe: /usr/lib/x86_64-linux-gnu/libboost_python-py36.so
tools/caffe: tools/CMakeFiles/caffe.bin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/openpose_caffe_train/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable caffe"
	cd /root/openpose_caffe_train/release/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/caffe.bin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/caffe.bin.dir/build: tools/caffe

.PHONY : tools/CMakeFiles/caffe.bin.dir/build

tools/CMakeFiles/caffe.bin.dir/clean:
	cd /root/openpose_caffe_train/release/tools && $(CMAKE_COMMAND) -P CMakeFiles/caffe.bin.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/caffe.bin.dir/clean

tools/CMakeFiles/caffe.bin.dir/depend:
	cd /root/openpose_caffe_train/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/openpose_caffe_train /root/openpose_caffe_train/tools /root/openpose_caffe_train/release /root/openpose_caffe_train/release/tools /root/openpose_caffe_train/release/tools/CMakeFiles/caffe.bin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/caffe.bin.dir/depend

