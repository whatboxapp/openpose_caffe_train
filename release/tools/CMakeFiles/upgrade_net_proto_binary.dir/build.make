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
include tools/CMakeFiles/upgrade_net_proto_binary.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/upgrade_net_proto_binary.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/upgrade_net_proto_binary.dir/flags.make

tools/CMakeFiles/upgrade_net_proto_binary.dir/upgrade_net_proto_binary.cpp.o: tools/CMakeFiles/upgrade_net_proto_binary.dir/flags.make
tools/CMakeFiles/upgrade_net_proto_binary.dir/upgrade_net_proto_binary.cpp.o: ../tools/upgrade_net_proto_binary.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/openpose_caffe_train/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/CMakeFiles/upgrade_net_proto_binary.dir/upgrade_net_proto_binary.cpp.o"
	cd /root/openpose_caffe_train/release/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/upgrade_net_proto_binary.dir/upgrade_net_proto_binary.cpp.o -c /root/openpose_caffe_train/tools/upgrade_net_proto_binary.cpp

tools/CMakeFiles/upgrade_net_proto_binary.dir/upgrade_net_proto_binary.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/upgrade_net_proto_binary.dir/upgrade_net_proto_binary.cpp.i"
	cd /root/openpose_caffe_train/release/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/openpose_caffe_train/tools/upgrade_net_proto_binary.cpp > CMakeFiles/upgrade_net_proto_binary.dir/upgrade_net_proto_binary.cpp.i

tools/CMakeFiles/upgrade_net_proto_binary.dir/upgrade_net_proto_binary.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/upgrade_net_proto_binary.dir/upgrade_net_proto_binary.cpp.s"
	cd /root/openpose_caffe_train/release/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/openpose_caffe_train/tools/upgrade_net_proto_binary.cpp -o CMakeFiles/upgrade_net_proto_binary.dir/upgrade_net_proto_binary.cpp.s

# Object files for target upgrade_net_proto_binary
upgrade_net_proto_binary_OBJECTS = \
"CMakeFiles/upgrade_net_proto_binary.dir/upgrade_net_proto_binary.cpp.o"

# External object files for target upgrade_net_proto_binary
upgrade_net_proto_binary_EXTERNAL_OBJECTS =

tools/upgrade_net_proto_binary: tools/CMakeFiles/upgrade_net_proto_binary.dir/upgrade_net_proto_binary.cpp.o
tools/upgrade_net_proto_binary: tools/CMakeFiles/upgrade_net_proto_binary.dir/build.make
tools/upgrade_net_proto_binary: lib/libcaffe.so.1.0.0
tools/upgrade_net_proto_binary: lib/libcaffeproto.a
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_cudabgsegm.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_cudaobjdetect.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_cudastereo.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_stitching.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_cudafeatures2d.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_superres.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_videostab.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_cudaoptflow.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_cudalegacy.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_cudawarping.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_aruco.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_bgsegm.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_bioinspired.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_ccalib.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_cvv.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_dnn_objdetect.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_dpm.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_highgui.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_videoio.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_face.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_freetype.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_fuzzy.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_hdf.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_hfs.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_img_hash.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_line_descriptor.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_optflow.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_reg.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_rgbd.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_saliency.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_sfm.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_stereo.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_structured_light.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_viz.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_phase_unwrapping.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_surface_matching.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_tracking.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_datasets.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_text.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_dnn.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_plot.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_xfeatures2d.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_shape.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_video.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_ml.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_ximgproc.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_xobjdetect.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_objdetect.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_calib3d.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_imgcodecs.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_features2d.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_flann.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_xphoto.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_photo.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_cudaimgproc.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_cudafilters.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_imgproc.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_cudaarithm.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_core.so.3.4.9
tools/upgrade_net_proto_binary: /usr/local/lib/libopencv_cudev.so.3.4.9
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libboost_system.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libglog.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libgflags.so
tools/upgrade_net_proto_binary: /usr/local/lib/libprotobuf.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libpthread.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libsz.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libz.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libdl.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libm.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libpthread.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libsz.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libz.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libdl.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libm.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/liblmdb.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libleveldb.so
tools/upgrade_net_proto_binary: /usr/local/cuda-10.1/lib64/libcudart.so
tools/upgrade_net_proto_binary: /usr/local/cuda-10.1/lib64/libcurand.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libcublas.so
tools/upgrade_net_proto_binary: /usr/local/cuda-10.1/lib64/libcudnn.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/liblapack.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libcblas.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libatlas.so
tools/upgrade_net_proto_binary: /usr/lib/x86_64-linux-gnu/libboost_python-py36.so
tools/upgrade_net_proto_binary: tools/CMakeFiles/upgrade_net_proto_binary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/openpose_caffe_train/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable upgrade_net_proto_binary"
	cd /root/openpose_caffe_train/release/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/upgrade_net_proto_binary.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/upgrade_net_proto_binary.dir/build: tools/upgrade_net_proto_binary

.PHONY : tools/CMakeFiles/upgrade_net_proto_binary.dir/build

tools/CMakeFiles/upgrade_net_proto_binary.dir/clean:
	cd /root/openpose_caffe_train/release/tools && $(CMAKE_COMMAND) -P CMakeFiles/upgrade_net_proto_binary.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/upgrade_net_proto_binary.dir/clean

tools/CMakeFiles/upgrade_net_proto_binary.dir/depend:
	cd /root/openpose_caffe_train/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/openpose_caffe_train /root/openpose_caffe_train/tools /root/openpose_caffe_train/release /root/openpose_caffe_train/release/tools /root/openpose_caffe_train/release/tools/CMakeFiles/upgrade_net_proto_binary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/upgrade_net_proto_binary.dir/depend

