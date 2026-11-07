#!/bin/bash
# usage: run.sh prog.olang  -> builds with -b, runs, then -i
cd /home/user/review/types
f=$1; b=$(basename $f .olang)
echo "== -b"; /home/user/wt/review/build/out -b $f 2>&1 | grep -v "^.\[32mbuilt" ; if [ -x build/$b ]; then ./build/$b; echo "[exit $?]"; rm -f build/$b; fi
echo "== -i"; /home/user/wt/review/build/out -i $f 2>&1; echo "[exit $?]"
