#!/bin/bash
# t01: a library built with -library whose export fns call trait defaults through anys (T32a's table slots in the
# root's object, B3d) - linked from C. ./repro.sh OLANG
O=${1:?pass the compiler}
cd "$(dirname "$0")"
rm -rf build
$O build -library anylib.olang || exit 1
nm -D --defined-only build/libanylib.so | grep -c . 
clang -O1 use.c -o use -Lbuild -lanylib -lpthread && LD_LIBRARY_PATH=build ./use; echo "status $?"
