#!/bin/bash
# usage: run.sh prog.olang [noval] [nointerp]
O=/home/user/wt/rvown7/build/out
p=$1; b=$(basename $p .olang)
cd $(dirname $(readlink -f $p))
echo "=== compile -b -s"
if $O -b -s $b.olang > /tmp/own7_$b.c1 2>&1; then
  echo "--- run -s"; timeout 60 ./build/$b.san; echo "[exit $?]"
else cat /tmp/own7_$b.c1 | head -30; exit 0; fi
echo "=== -b"
$O -b $b.olang >/dev/null 2>&1 && { timeout 60 ./build/$b; echo "[exit $?]"; }
if [ "$2" != "noval" ]; then
 $O -b -a x86-64-v3 $b.olang >/dev/null 2>&1
 echo "=== valgrind -b"
 timeout 300 valgrind -q --error-exitcode=9 ./build/$b > /dev/null 2>/tmp/own7_$b.vg; echo "[vg exit $?]"; head -30 /tmp/own7_$b.vg
fi
if [ "$3" != "nointerp" ]; then
echo "=== -i"
timeout 120 $O -i $b.olang; echo "[exit $?]"
fi
