#!/bin/bash
# usage: run.sh file.olang [-i]
f=$1; b=$(basename $f .olang)
out=$(/home/user/wt/review/build/out -b $f 2>&1); rc=$?
if [ $rc -ne 0 ]; then echo "== $b: COMPILE FAIL"; echo "$out" | sed 's/\x1b\[[0-9;]*m//g' | head -${LINES:-12}; exit; fi
echo "== $b: built; run:"; timeout 10 ./build/$b; echo "[exit $?]"
if [ "$2" = "-i" ]; then echo "-- interp:"; timeout 20 /home/user/wt/review/build/out -i $f 2>&1 | sed 's/\x1b\[[0-9;]*m//g' | head -20; fi
