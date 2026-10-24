#!/bin/bash
cd /home/user/wt/fastverify
cp -p build/olang meas/olang.keep; rm -rf build; mkdir build; cp -p meas/olang.keep build/olang
export PATH=/home/user/wt/fastverify/meas/bin:$PATH
/usr/bin/time -f "cpu %U %S" make SHELL=$PWD/meas/tshell.sh suite
