#!/bin/bash
# scratch: run "make TARGET" timed, sampling the session's total RSS every second
cd /home/user/wt/fastverify
name=$1; shift
SID=$(ps -o sid= -p $$ | tr -d " ")
( while [ ! -e meas/$name.rc ]; do echo "$(date +%s) $(ps -o rss= -s $SID | awk '{s+=$1} END {print int(s/1024)}')"; sleep 1; done ) > meas/$name.rss &
start=$(date +%s.%N)
"$@" > meas/$name.log 2>&1
rc=$?
end=$(date +%s.%N)
echo "$name rc=$rc wall=$(echo "$end - $start" | bc) peakMB=$(sort -k2 -n meas/$name.rss | tail -1 | cut -d' ' -f2)" >> meas/summary.txt
echo $rc > meas/$name.rc
