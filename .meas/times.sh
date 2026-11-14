#!/bin/bash
S=/tmp/claude-0/-home-user/6ca8065a-e812-5852-abb7-f4f9afea01cb/scratchpad; W=/home/user/wt/checked; E=$S/exp
export OLANG_NOREUSE=1
for m in none all hoist; do
  rm -rf $E/$m; mkdir -p $E/$m; cp $W/bench/*.olang $E/$m/; cd $E/$m
  for f in *.olang; do n=${f%.olang}; case $n in benchlib|run|ir) continue;; esac
    if [ $m = none ]; then $W/build/olang build $f > /dev/null 2>&1; else OLANG_CHECKS=$m $W/build/olang build $f >/dev/null 2>&1; fi || echo "build fail $m $n"
  done
done
while IFS='|' read name prog cprog args; do
  line="$name"
  for m in none all hoist; do
    cd $E/$m; ts=()
    for r in 1 2 3; do s=$(date +%s%N); ./build/$prog $args > out.$m.txt 2>&1; e=$(date +%s%N); ts+=($(( (e-s)/1000000 ))); done
    med=$(printf "%s\n" "${ts[@]}" | sort -n | sed -n 2p)
    line="$line|$med"
  done
  cmp -s $E/none/out.none.txt $E/all/out.all.txt && cmp -s $E/none/out.none.txt $E/hoist/out.hoist.txt || line="$line|OUTPUT DIFFERS"
  echo "$line"
done < $E/table.txt
