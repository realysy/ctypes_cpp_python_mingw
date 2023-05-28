#!/bin/sh
build_type=Release
BUILD_ABI=build_x64

cd ../

rm -rf $BUILD_ABI && mkdir $BUILD_ABI
cd $BUILD_ABI
# make clean

# 生成Makefile
cmake -G "Unix Makefiles" \
      -DCMAKE_BUILD_TYPE=$build_type \
      -DCMAKE_CXX_STANDARD=11 \
      ../

make -j
