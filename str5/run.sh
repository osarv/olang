#!/bin/bash
# usage: run.sh prog.olang [modes...]  modes: b s d r i t   (default: b s d i)
O=${OLANG:-/home/user/wt/rvstr5/build/out}
f=$(readlink -f $1); shift; b=$(basename $f .olang)
modes=${*:-b s d i}
W=/home/user/review/str5/w/$b; rm -rf $W; mkdir -p $W; cd $W
for m in $modes; do
  case $m in
    b) fl="-b"; bin=build/$b;;
    s) fl="-b -s"; bin=build/$b.san;;
    d) fl="-b -d"; bin=build/$b.debug;;
    r) fl="-b -r"; bin=build/$b.race;;
    t) fl="-t"; bin="";;
    i) out=$(timeout 120 $O -i $f 2>&1); e=$?; echo "  [-i] exit=$e: $(echo "$out" | tr '\n' '|' | cut -c1-220)"; continue;;
  esac
  out=$(timeout 300 $O $fl $f 2>&1); e=$?
  if [ $m = t ]; then echo "  [-t] exit=$e: $(echo "$out" | tr '\n' '|' | cut -c1-300)"; continue; fi
  if [ $e -ne 0 ]; then
    if echo "$out" | grep -q "internal compiler error"; then echo "  [$fl] ICE: $(echo "$out" | grep -m1 internal | cut -c1-200)"
    else echo "  [$fl] REFUSED: $(echo "$out" | grep -m2 -E 'error' | tr '\n' '|' | cut -c1-260)"; fi
    continue
  fi
  [ -x $bin ] || bin=$(ls build/$b* 2>/dev/null | grep -v '\.' | head -1)
  r=$(timeout 120 ./$bin 2>&1); e=$?
  echo "  [$fl] run exit=$e: $(echo "$r" | grep -v '^ *#' | tr '\n' '|' | cut -c1-220)"
done
