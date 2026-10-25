#!/bin/bash
# t.sh FILE.olang: build -O3, -debug -sanitize, interpret in dead-region mode; print each output
O=${OLANG:-/home/user/wt/bulk1/build/olang}
f=$1
base=$(basename $f .olang)
dir=$(dirname $f)
cd $dir; mkdir -p build
echo "== memory report"
$O build -memory -output build/$base.o3 $base.olang 2>&1 | head -40
echo "== -O3 run"; timeout 60 ./build/$base.o3; echo "[status $?]"
$O build -debug -sanitize -output build/$base.san $base.olang > /dev/null 2>&1 || $O build -debug -sanitize -output build/$base.san $base.olang
echo "== -debug -sanitize run"; timeout 60 ./build/$base.san; echo "[status $?]"
echo "== interpret (dead regions)"; OLANG_DEADREGIONS=1 timeout 120 $O interpret $base.olang; echo "[status $?]"
