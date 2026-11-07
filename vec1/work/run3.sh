#!/bin/bash
# usage: run3.sh prog.olang  - builds and runs three ways
O=/home/user/wt/rvvec1/build/out
f=$1; b=$(basename $f .olang)
echo "--- -b -d -s"; $O -b -d -s $f >/dev/null && (./build/$b.debug.san; echo "exit $?")
echo "--- -i"; $O -i $f; echo "exit $?"
echo "--- -b"; $O -b $f > /dev/null && (./build/$b; echo "exit $?")
