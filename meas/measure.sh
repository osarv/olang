#!/bin/bash
# scratch: time each part of make verify (not committed)
cd /home/user/wt/fastverify
T=meas/times.tsv
: > $T
step() { name=$1; shift
  /usr/bin/time -f "%e\t%M\t%U\t%S" -o meas/.t "$@" > meas/out.$name.log 2>&1; rc=$?
  echo -e "$name\t$rc\t$(cat meas/.t | tail -1)" >> $T
}
step clean make clean
step seedobj make build/olang.seed
step stage1 build/olang.seed build -output build/olang.1 compiler/olang.olang
step stage2 build/olang.1 build -output build/olang.2 compiler/olang.olang
step stage3 build/olang.2 build -output build/olang.3 compiler/olang.olang
cmp build/olang.2 build/olang.3 && cp build/olang.3 build/olang && touch build/olang
for f in $(cat /tmp/claude-0/-home-user/6ca8065a-e812-5852-abb7-f4f9afea01cb/scratchpad/files.txt); do
  n=$(echo $f | tr '/' '_')
  OLANG=$PWD/build/olang step "t:$n" build/olang test $f
done
step run make run
step runner ./build/tests_runner
step checkir make checkir
for t in tokdiff astdiff namesdiff layoutdiff fmtdiff drvdiff; do step $t make $t; done
echo done >> $T
