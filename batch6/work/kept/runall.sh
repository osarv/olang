#!/bin/bash
# runall.sh COMPILER FILES...: for each file, -b -d -s run and -i run; prints compile errors briefly
O=$1; shift
for f in "$@"; do
  b=$(basename $f .olang)
  out=$($O -b -d -s $f 2>&1)
  if [ $? -ne 0 ]; then echo "$b: REFUSED: $(echo "$out" | grep -m1 'error' )"; continue; fi
  r=$(timeout 30 ./build/$b.debug.san 2>&1 | head -3 | tr '\n' '|')
  i=$(timeout 60 $O -i $f 2>&1 | head -3 | tr '\n' '|')
  if [ "$r" == "$i" ]; then echo "$b: same: $r"; else echo "$b: DIFFER: -s: $r  -i: $i"; fi
done
