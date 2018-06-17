#!/bin/sh

mkdir -p build
cd build

export CC=gcc-4.9
export CXX=g++-4.9
cmake ../MEC -DDISABLE_LIBUSB=1 -DDISABLE_SOUNDPLANELITE=1 -DDISABLE_PUSH2=1 -DDISABLE_EIGENHARP=1 -DCPU_OPTIMIZATION_FLAGS=""

make KontrolRack KontrolModule -j4
