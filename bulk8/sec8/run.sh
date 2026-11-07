#!/bin/bash
# run.sh FILE: build -debug -sanitize, run, then interpret; also olang test if it has tests
O=/home/user/wt/review8/build/olang
f=$1; base=$(basename $f .olang); d=/home/user/review/bulk8/sec8/b
echo "== build $f"
/home/user/blk $O build -debug -sanitize -output $d/$base $f 2>&1 | head -30 || exit 1
if [ -x $d/$base ]; then echo "== run"; timeout 60 $d/$base 2>&1 | head -20; echo "status $?"; fi
echo "== interpret"; timeout 120 /home/user/blk $O interpret $f 2>&1 | head -20
