# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6...3.17)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget caffe caffeproto)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target caffe
add_library(caffe SHARED IMPORTED)

set_target_properties(caffe PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "USE_LMDB;USE_LEVELDB;USE_CUDNN;USE_OPENCV"
  INTERFACE_INCLUDE_DIRECTORIES "/usr/include;/usr/include;/usr/include;/usr/local/include;/usr/include/hdf5/serial;/usr/include;/usr/include;/usr/local/cuda-10.1/include;/usr/local/cuda-10.1/include;/usr/local/include;/usr/local/include/opencv;/usr/include/x86_64-linux-gnu;/usr/include/x86_64-linux-gnu;/usr/include;/root/openpose_caffe_train/include"
)

# Create imported target caffeproto
add_library(caffeproto STATIC IMPORTED)

set_target_properties(caffeproto PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/local/include"
)

# Import target "caffe" for configuration "Release"
set_property(TARGET caffe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(caffe PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "caffeproto;opencv_cudabgsegm;opencv_cudaobjdetect;opencv_cudastereo;opencv_stitching;opencv_cudafeatures2d;opencv_superres;opencv_videostab;opencv_cudaoptflow;opencv_cudalegacy;opencv_cudawarping;opencv_aruco;opencv_bgsegm;opencv_bioinspired;opencv_ccalib;opencv_cvv;opencv_dnn_objdetect;opencv_dpm;opencv_highgui;opencv_videoio;opencv_face;opencv_freetype;opencv_fuzzy;opencv_hdf;opencv_hfs;opencv_img_hash;opencv_line_descriptor;opencv_optflow;opencv_reg;opencv_rgbd;opencv_saliency;opencv_sfm;opencv_stereo;opencv_structured_light;opencv_viz;opencv_phase_unwrapping;opencv_surface_matching;opencv_tracking;opencv_datasets;opencv_text;opencv_dnn;opencv_plot;opencv_xfeatures2d;opencv_shape;opencv_video;opencv_ml;opencv_ximgproc;opencv_xobjdetect;opencv_objdetect;opencv_calib3d;opencv_imgcodecs;opencv_features2d;opencv_flann;opencv_xphoto;opencv_photo;opencv_cudaimgproc;opencv_cudafilters;opencv_imgproc;opencv_cudaarithm;opencv_core;opencv_cudev;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;-lpthread;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libglog.so;/usr/lib/x86_64-linux-gnu/libgflags.so;/usr/local/lib/libprotobuf.so;-lpthread;/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so;/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so;/usr/lib/x86_64-linux-gnu/libpthread.so;/usr/lib/x86_64-linux-gnu/libsz.so;/usr/lib/x86_64-linux-gnu/libz.so;/usr/lib/x86_64-linux-gnu/libdl.so;/usr/lib/x86_64-linux-gnu/libm.so;/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so;/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so;/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so;/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so;/usr/lib/x86_64-linux-gnu/libpthread.so;/usr/lib/x86_64-linux-gnu/libsz.so;/usr/lib/x86_64-linux-gnu/libz.so;/usr/lib/x86_64-linux-gnu/libdl.so;/usr/lib/x86_64-linux-gnu/libm.so;/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so;/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so;/usr/lib/x86_64-linux-gnu/liblmdb.so;/usr/lib/x86_64-linux-gnu/libleveldb.so;/usr/local/cuda-10.1/lib64/libcudart.so;/usr/local/cuda-10.1/lib64/libcurand.so;/usr/lib/x86_64-linux-gnu/libcublas.so;/usr/local/cuda-10.1/lib64/libcudnn.so;opencv_core;opencv_highgui;opencv_imgproc;opencv_imgcodecs;/usr/lib/x86_64-linux-gnu/liblapack.so;/usr/lib/x86_64-linux-gnu/libcblas.so;/usr/lib/x86_64-linux-gnu/libatlas.so;/usr/lib/x86_64-linux-gnu/libboost_python-py36.so"
  IMPORTED_LOCATION_RELEASE "/root/openpose_caffe_train/release/lib/libcaffe.so.1.0.0"
  IMPORTED_SONAME_RELEASE "libcaffe.so.1.0.0"
  )

# Import target "caffeproto" for configuration "Release"
set_property(TARGET caffeproto APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(caffeproto PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "/usr/local/lib/libprotobuf.so;-lpthread"
  IMPORTED_LOCATION_RELEASE "/root/openpose_caffe_train/release/lib/libcaffeproto.a"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)