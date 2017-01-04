#!/bin/bash 
set -e 
PWD=$(pwd)
BUILD_DIR=${PWD}/output

if [   -e "$BUILD_DIR" ];then
    rm -rf "$BUILD_DIR"
fi
mkdir -p "$BUILD_DIR"

cd "$BUILD_DIR"
cmake ..
make 
echo "build finished on branch test2-2"
echo "test stash"
