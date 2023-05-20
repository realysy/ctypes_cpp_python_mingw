project(CmakeTest)
cmake_minimum_required(VERSION 3.1)

set(CMAKE_MAKE_PROGRAM "E:/MinGW64/mingw64/bin/make.exe")
set(CMAKE_C_COMPILER "E:/MinGW64/mingw64/bin/gcc.exe")
set(CMAKE_CXX_COMPILER "E:/MinGW64/mingw64/bin/g++.exe")

# ${PROJECT_SOUCE_DIR}为包含project命令的最近一个CMakeLists.txt所在文件夹
include_directories(${PROJECT_SOUCE_DIR}/src)  # 需要include的东西 .h 所在位置

set (CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/bin")
set (CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/bin")
set (CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/lib")

# a.编译可执行文件
# add_executable(test ${PROJECT_SOURCE_DIR}/src/test.cpp)               # 编译时将输出一个可执行文件：test

# b.编译库
add_library(test SHARED ${PROJECT_SOURCE_DIR}/src/test.cpp)             # 编译时将输出一个STATIC/SHARED库：test


# 告诉链接器在哪里查找库
# link_directories(${PROJECT_SOURCE_DIR}/3rd/)

# 执行链接：使json_test能够用到jsoncpp库的东西
# target_link_libraries(json_test jsoncpp)
