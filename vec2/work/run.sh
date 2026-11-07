#!/bin/bash
# run.sh file.olang : compile (accept/refuse), then -d -s run, then -i run
O=/home/user/wt/rvvec2/build/out
f=$1
n=$(basename $f .olang)
echo "== $n"
if ! $O -b -d -s $f > $n.cmp 2>&1; then echo "REFUSED:"; grep -E "error" $n.cmp | head -5; exit 0; fi
bin=$(grep -o "built .*" $n.cmp | sed 's/built //')
echo "ACCEPTED"
echo "-- -d -s:"; timeout 60 $bin 2>&1 | tail -4; echo "status ${PIPESTATUS[0]}"
echo "-- -i:"; timeout 60 $O -i $f 2>&1 | tail -4
