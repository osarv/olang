#!/bin/bash
cd /home/user/wt/fastverify
setsid meas/topmem.sh $(ps -o sid= -p $$ | tr -d ' ') meas/topmem.txt &
/usr/bin/time -f "cpu %U %S" make SHELL=$PWD/meas/tshell.sh verify
