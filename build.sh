#!/bin/sh -x

./configure CC="gcc -arch x86_64 -arch arm64" --enable-static --disable-shared --disable-doc

make

ls -l ./src/.libs/liblo.a
