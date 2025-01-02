cmake_minimum_required(VERSION 2.8.12.2)

SET(GCC_FLAGS "-std=c++11 -O3 -mavx -mavx2 -mfma")

add_definitions(${GCC_FLAGS})

project(bilateral_blur)
find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )

add_executable(${PROJECT_NAME} ./src/main.cpp
                            ./src/kernel.h
                            ./src/kernel.cpp)

target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBS})