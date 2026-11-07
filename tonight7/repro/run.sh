#!/bin/bash
# run.sh file.olang : build -b, -b -d, and -i; print outputs
O=${O:-/home/user/wt/rv7/build/out}
f=$1; n=$(basename $f .olang)
echo "== -b"; $O -b $f >/dev/null && ./build/$n; echo "[exit $?]"
echo "== -b -d"; $O -b -d $f >/dev/null && ./build/$n.debug; echo "[exit $?]"
echo "== -i"; $O -i $f; echo "[exit $?]"
