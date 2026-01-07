#!/bin/sh -x

./configure --enable-static --disable-shared --disable-doc
make

ls -l ./src/.libs/liblo.a
