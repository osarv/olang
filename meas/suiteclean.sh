#!/bin/bash
cd /home/user/wt/fastverify
setsid meas/topmem.sh $(ps -o sid= -p $$ | tr -d ' ') meas/topmem.txt &
make clean > /dev/null; make boot; /usr/bin/time -f "cpu %U %S" make suite
