# generate protobuf sources
file(GLOB proto_files proto/*.proto)
caffe_protobuf_generate_cpp_py(${proto_gen_folder} proto_srcs proto_hdrs proto_python ${proto_files})

# include python files either to force generation
add_library(caffeproto STATIC ${proto_hdrs} ${proto_srcs} ${proto_python})
caffe_default_properties(caffeproto)
target_link_libraries(caffeproto PUBLIC ${PROTOBUF_LIBRARIES})
target_include_directories(caffeproto PUBLIC ${PROTOBUF_INCLUDE_DIR})

#list(INSERT Caffe_LINKER_LIBS 0 PUBLIC caffeproto opencv_contrib) # note, crucial to prepend!
#list(INSERT Caffe_LINKER_LIBS 0 PUBLIC caffeproto `pkg-config --cflags --libs opencv` ) # note, crucial to prepend!
list(INSERT Caffe_LINKER_LIBS 0 PUBLIC caffeproto opencv_cudabgsegm opencv_cudaobjdetect opencv_cudastereo opencv_stitching opencv_cudafeatures2d opencv_superres opencv_videostab opencv_cudaoptflow opencv_cudalegacy opencv_cudawarping opencv_aruco opencv_bgsegm opencv_bioinspired opencv_ccalib opencv_cvv opencv_dnn_objdetect opencv_dpm opencv_highgui opencv_videoio opencv_face opencv_freetype opencv_fuzzy opencv_hdf opencv_hfs opencv_img_hash opencv_line_descriptor opencv_optflow opencv_reg opencv_rgbd opencv_saliency opencv_sfm opencv_stereo opencv_structured_light opencv_viz opencv_phase_unwrapping opencv_surface_matching opencv_tracking opencv_datasets opencv_text opencv_dnn opencv_plot opencv_xfeatures2d opencv_shape opencv_video opencv_ml opencv_ximgproc opencv_xobjdetect opencv_objdetect opencv_calib3d opencv_imgcodecs opencv_features2d opencv_flann opencv_xphoto opencv_photo opencv_cudaimgproc opencv_cudafilters opencv_imgproc opencv_cudaarithm opencv_core opencv_cudev ) # note, crucial to prepend!

# --[ Caffe library

# creates 'test_srcs', 'srcs', 'test_cuda', 'cuda' lists
caffe_pickup_caffe_sources(${PROJECT_SOURCE_DIR})

if(HAVE_CUDA)
  caffe_cuda_compile(cuda_objs ${cuda})
  list(APPEND srcs ${cuda_objs} ${cuda})
endif()

add_library(caffe ${srcs})
caffe_default_properties(caffe)
target_link_libraries(caffe ${Caffe_LINKER_LIBS})
target_include_directories(caffe ${Caffe_INCLUDE_DIRS}
                                 PUBLIC
                                 $<BUILD_INTERFACE:${Caffe_INCLUDE_DIR}>
                                 $<INSTALL_INTERFACE:include>)
target_compile_definitions(caffe ${Caffe_DEFINITIONS})
if(Caffe_COMPILE_OPTIONS)
  target_compile_options(caffe ${Caffe_COMPILE_OPTIONS})
endif()
set_target_properties(caffe PROPERTIES
    VERSION   ${CAFFE_TARGET_VERSION}
    SOVERSION ${CAFFE_TARGET_SOVERSION}
    )

# ---[ Tests
 add_subdirectory(test)

# ---[ Install
install(DIRECTORY ${Caffe_INCLUDE_DIR}/caffe DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})
install(FILES ${proto_hdrs} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/caffe/proto)
install(TARGETS caffe caffeproto EXPORT CaffeTargets DESTINATION ${CMAKE_INSTALL_LIBDIR})

file(WRITE ${PROJECT_BINARY_DIR}/__init__.py)
list(APPEND proto_python ${PROJECT_BINARY_DIR}/__init__.py)
install(PROGRAMS ${proto_python} DESTINATION python/caffe/proto)

