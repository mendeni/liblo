#!/bin/sh -x

# build for both macOS archs
if [ `uname -o` == 'Darwin' ]; then
  export CFLAGS="-arch x86_64 -arch arm64 -mmacosx-version-min=10.9 -isysroot $(xcrun --sdk macosx --show-sdk-path)"
fi

make clean
./configure --enable-static --disable-shared --disable-doc
make
