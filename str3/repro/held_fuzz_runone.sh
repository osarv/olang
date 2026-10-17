#!/bin/bash
f=$1; b=$(basename $f .olang)
d=w/$b; mkdir -p $d; cp $f $d/; cd $d
o=$(timeout 300 /home/user/wt/rvstr3/build/out -b -s $b.olang 2>&1); e=$?
if [ $e -ne 0 ]; then
  if echo "$o" | grep -q "internal compiler error"; then echo "$b ICE: $(echo "$o" | grep -m1 internal)"; else echo "$b REFUSED: $(echo "$o" | grep -m1 -oE 'error\[[^]]*\]')"; fi
  cd ../..; rm -rf $d; exit
fi
r=$(timeout 60 ./build/$b.san 2>&1); e=$?
if [ $e -ne 0 ]; then echo "$b CRASH $e: $(echo "$r" | tr '\n' ' ' | cut -c1-120)"; else echo "$b OK: $(echo "$r" | tr '\n' ' ' | cut -c1-40)"; cd ../..; rm -rf $d; fi
