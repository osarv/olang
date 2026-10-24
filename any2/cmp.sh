#!/bin/bash
# cmp.sh DIR NAME...: runs each three ways, prints a one-line verdict per program (SAME/DIFF/REFUSED)
D=$1; shift
O=${OLANG:-/home/user/wt/rvany2/build/olang}
for n in "$@"; do
 (cd /home/user/review/any2/$D; mkdir -p gen
  { grep -q 'import "std/io"' $n.olang || echo 'import "std/io"'; cat $n.olang /home/user/review/any2/common.inc; } > gen/$n.olang
  cd gen
  if $O build -debug -sanitize $n.olang > c1.$n 2>&1; then timeout 60 ./build/$n.debug.san > r1.$n 2>&1; echo "status $?" >> r1.$n; else grep -m3 error c1.$n > r1.$n; echo REFUSED >> r1.$n; fi
  if $O build $n.olang > c2.$n 2>&1; then timeout 60 ./build/$n > r2.$n 2>&1; echo "status $?" >> r2.$n; else grep -m3 error c2.$n > r2.$n; echo REFUSED >> r2.$n; fi
  timeout 120 $O interpret $n.olang > r3.$n 2>&1; echo "status $?" >> r3.$n
  v=SAME; cmp -s r1.$n r2.$n || v=DIFF12; cmp -s r2.$n r3.$n || v="$v DIFF23"
  grep -q REFUSED r1.$n && v="REFUSED $v"
  echo "$n: $v | $(tail -1 r1.$n) | $(tail -1 r2.$n) | $(tail -1 r3.$n)"
 ) &
 while [ $(jobs -r | wc -l) -ge 6 ]; do sleep 1; done
done
wait
