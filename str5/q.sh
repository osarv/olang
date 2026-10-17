#!/bin/bash
# quick: -b -s and -i; prints REFUSED/ICE or both outputs
O=${OLANG:-/home/user/wt/rvstr5/build/out}
f=$(readlink -f $1); b=$(basename $f .olang)
W=/home/user/review/str5/w/$b; rm -rf $W; mkdir -p $W; cd $W
out=$(timeout 300 $O -b -s $f 2>&1); e=$?
if [ $e -ne 0 ]; then
  if echo "$out" | grep -q "internal compiler error"; then echo "$b ICE: $(echo "$out" | grep -m1 internal | cut -c1-200)"
  else echo "$b REFUSED: $(echo "$out" | grep -m1 -oE 'error\[[^]]*\]:.{0,90}')"; fi
  exit
fi
r=$(timeout 120 ./build/$b.san 2>&1); e=$?
i=$(timeout 120 $O -i $f 2>&1); ie=$?
r1=$(echo "$r" | tr '\n' '|' | cut -c1-100); i1=$(echo "$i" | tr '\n' '|' | cut -c1-100)
if [ $e -ne 0 ] || [ "$r" != "$i" ]; then echo "$b MISMATCH san=$e[$r1] i=$ie[$i1]"; else echo "$b OK [$r1]"; fi
