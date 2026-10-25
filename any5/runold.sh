#!/bin/bash
# runold.sh NAME [OLANG]: run.sh with the 0c37adb compiler, output into repro/NAME.0c37adb.out
n=${1:?name}
O=${2:-/home/user/wt/rvany5-old/build/olang}
/home/user/review/any5/run.sh $n $O .0c37adb > /dev/null 2>&1
cat /home/user/review/any5/repro/$n.0c37adb.out
