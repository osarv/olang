#!/bin/bash
cd /home/user/wt/fastverify
CHECKS_TIMES=$PWD/meas/$1.times OLANG=$PWD/build/olang /usr/bin/time -f "cpu %U %S" build/olang test checks/checks.olang
