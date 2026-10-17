#!/bin/bash
O=${OLANG:-/home/user/wt/rvstr4/build/out}
f=$(readlink -f $1); b=$(basename $f .olang)
d=$(dirname $f)/../w/$b; mkdir -p $d; cd $d
o=$(timeout 300 $O -b -r $f 2>&1); e=$?
if [ $e -ne 0 ]; then
  if echo "$o" | grep -q "internal compiler error"; then echo "$b ICE: $(echo "$o" | grep -m1 internal | cut -c1-150)"
  else echo "$b REFUSED: $(echo "$o" | grep -m1 -oE 'error\[[^]]*\]')"; fi
  cd ..; rm -rf $d; exit
fi
r=$(timeout 120 ./build/$b.race 2>&1); e=$?
if echo "$r" | grep -q "ThreadSanitizer"; then echo "$b RACE $(echo "$r" | grep -m1 -A2 WARNING | tail -1 | cut -c1-100)"; else
r2=$(echo "$r" | tail -1)
echo "$b OK [$e $r2]"; cd ..; rm -rf $d; fi
