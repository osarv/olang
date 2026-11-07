#!/bin/bash
# usage: runone.sh prog.olang  -> one line: name RESULT detail
O=${OLANG:-/home/user/wt/rvstr4/build/out}
f=$(readlink -f $1); b=$(basename $f .olang)
d=$(dirname $f)/../w/$b; mkdir -p $d; cd $d
o=$(timeout 300 $O -b -s $f 2>&1); e=$?
if [ $e -ne 0 ]; then
  if echo "$o" | grep -q "internal compiler error"; then echo "$b ICE: $(echo "$o" | grep -m1 internal | cut -c1-150)"
  else echo "$b REFUSED: $(echo "$o" | grep -m1 -oE 'error\[[^]]*\]')"; fi
  cd ..; rm -rf $d; exit
fi
r=$(timeout 60 ./build/$b.san 2>&1); e=$?
i=$(timeout 120 $O -i $f 2>&1); ie=$?
if [ $e -ne 0 ] || [ "$r" != "$i" ]; then echo "$b MISMATCH san=$e[$(echo $r | tr '\n' ' ' | cut -c1-80)] i=$ie[$(echo $i | tr '\n' ' ' | cut -c1-60)]"
else echo "$b OK [$(echo $r | tr '\n' ' ' | cut -c1-40)]"; cd ..; rm -rf $d; fi
