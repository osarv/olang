#!/bin/bash
# usage: run.sh file.olang [modes...]  modes: b d i t (default b)
O=/home/user/wt/review2/build/out
f=$1; shift
modes=${@:-b}
base=$(basename $f .olang)
for m in $modes; do
  case $m in
    b) echo "== -b"; nice -n 10 $O -b $f 2>&1 | grep -v '^built' ; [ -x build/$base ] && { timeout 20 ./build/$base; echo "[exit $?]"; } ;;
    d) echo "== -d"; nice -n 10 $O -b -d $f 2>&1 | grep -v "^built"; [ -x build/$base.debug ] && { timeout 20 ./build/$base.debug; echo "[exit $?]"; } ; rm -f build/$base.debug ;;
    i) echo "== -i"; timeout 60 nice -n 10 $O -i $f; echo "[exit $?]" ;;
    t) echo "== -t"; nice -n 10 $O -t $f 2>&1 | tail -30 ;;
  esac
  rm -f build/$base
done
