#!/bin/bash
# usage: t.sh file.olang [modes...]  - builds/runs under -b, -d, -i, valgrind; O=compiler override
O=${O:-/home/user/wt/s3c/build/out}
f=$1; shift
modes=${@:-b d i}
base=$(basename $f .olang)
for m in $modes; do
  case $m in
    b) out=$($O -b $f 2>&1) || { echo "[-b build failed] $out"; continue; }; echo "--- -b:"; timeout 60 ./build/$base; echo "status $?";;
    d) out=$($O -d -b $f 2>&1) || { echo "[-d build failed] $out"; continue; }; echo "--- -d:"; timeout 60 ./build/$base.debug; echo "status $?";;
    i) echo "--- -i:"; timeout 120 $O -i $f; echo "status $?";;
    t) echo "--- -t:"; timeout 120 $O -t $f; echo "status $?";;
    v) $O -a x86-64-v2 -d -b $f >/dev/null 2>&1; echo "--- valgrind -d:"; timeout 300 valgrind -q --error-exitcode=9 ./build/$base.debug; echo "status $?";;
  esac
done
