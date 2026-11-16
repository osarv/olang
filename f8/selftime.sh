#!/bin/bash
# the compiler building itself, cold (a fresh directory each time): master's against round 8's, alternated
W=/home/user/wt/freeing8
export OLANG_STD=$W/std
for r in 1 2; do
for c in olang.master olang; do
  T=$W/f8/st_${c}_$r; rm -rf $T; mkdir -p $T; cd $T
  s=$(date +%s%N)
  OLANG_TIMES=1 $W/build/$c build -output $T/out $W/compiler/olang.olang > $T/log 2>&1
  e=$(date +%s%N)
  echo "$c run $r total $(( (e-s)/1000000 )) ms; $(grep -v 'compiled [0-9]' $T/log | grep -E 'load|check|evaluate|scope|facts|lower|compile |link' | sed -E 's/olang: ([a-z+ ]+)[^0-9]*([0-9]+) ms.*/\1=\2/' | tr '\n' ' ')"
  rm -rf $T/build
done; done
