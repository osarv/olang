#!/bin/bash
S=/tmp/claude-0/-home-user/6ca8065a-e812-5852-abb7-f4f9afea01cb/scratchpad; R=$S/r2; C=$S/cnt; rm -rf $C; mkdir -p $C
export OLANG_NOREUSE=1 OLANG_CHECKS=all OLANG_CHECKSITES=$C/sites.txt
i=0
run() { # $1 dir with build/
  i=$((i+1)); $S/m/analyze.sh $1/build $C/r$i; cat $C/r$i/a.txt >> $C/a.txt; cat $C/r$i/h.txt >> $C/h.txt; rm -rf $1/build $C/r$i/a $C/r$i/h
}
mkdir -p $C/w && cd $C/w
cp $R/bench/*.olang .
for f in $R/bench/*.olang; do n=$(basename $f .olang); [ $n = benchlib ] && continue; $R/tmpbin/olang build -quick $n.olang >/dev/null 2>&1 || echo "bench fail $n"; run $C/w; done
for f in $R/tests/*.olang; do mkdir -p $C/t && cd $C/t && $R/tmpbin/olang test -quick $f >/dev/null 2>&1; run $C/t; done
cd $R && $R/tmpbin/olang build -quick -output $C/olangq compiler/olang.olang > /dev/null 2>&1 && run $R
echo done
