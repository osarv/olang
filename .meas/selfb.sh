#!/bin/bash
S=/tmp/claude-0/-home-user/6ca8065a-e812-5852-abb7-f4f9afea01cb/scratchpad; W=/home/user/wt/checked
export OLANG_NOREUSE=1
for m in none all hoist; do
  D=$S/cmp/$m; rm -rf $D; mkdir -p $D/bin; ln -s $W/std $D/std; cd $D
  s=$(date +%s%N)
  if [ $m = none ]; then $W/build/olang build -output $D/bin/olang $W/compiler/olang.olang > b.log 2>&1; else OLANG_CHECKS=$m $W/build/olang build -output $D/bin/olang $W/compiler/olang.olang > b.log 2>&1; fi
  e=$(date +%s%N)
  echo "build $m $(( (e-s)/1000000 )) ms, IR $(cat build/*.ll | wc -c) bytes, binary $(stat -c %s bin/olang)"
done
for r in 1 2 3; do for m in none all hoist; do
  D=$S/cmp/$m; rm -rf $S/sb; mkdir -p $S/sb; cd $S/sb
  s=$(date +%s%N); OLANG_TIMES=1 $D/bin/olang build -quick -output $S/sb/o $W/compiler/olang.olang > t.log 2>&1; e=$(date +%s%N)
  fe=$(grep -o "lower+emit [0-9]* ms" t.log); echo "selfbuild $m run$r total $(( (e-s)/1000000 )) ms; $(grep -o 'olang: [a-z+ ]* [0-9]* ms' t.log | tr '\n' ';')"
done; done
