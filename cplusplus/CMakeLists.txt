cmake_minimum_required(VERSION 2.6 FATAL_ERROR)
project(pcl_seg)

set(CMAKE_PREFIX_PATH "~/install_dir/pcl/")
find_package(PCL 1.3 REQUIRED COMPONENTS common io kdtree)
include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "../bin/")

add_executable(pcd_main src/segmentation.cpp src/sampling.cpp src/helper.hpp src/pcd_main.cpp)
target_link_libraries(pcd_main ${PCL_COMMON_LIBRARIES} ${PCL_IO_LIBRARIES} ${PCL_LIBRARIES})
