#!/bin/bash
# t.sh FILE [modes...]: build and run FILE with -b, -b -s (sanitizer) and -i, printing each output
O=/home/user/wt/rv11/build/out
f=$1; shift
d=$(dirname $f); b=$(basename $f .olang)
cd $d
modes=${@:-"b s i"}
for m in $modes; do
  case $m in
    b) echo "== -b"; $O -b $b.olang >/dev/null 2>$b.berr || { cat $b.berr; $O -b $b.olang 2>&1 | head -30; continue; }; timeout 60 ./build/$b 2>&1 | head -40; echo "exit ${PIPESTATUS[0]}";;
    s) echo "== -b -d -s"; $O -b -d -s $b.olang > $b.serr 2>&1 || { head -30 $b.serr; continue; }; bin=$(ls -t build/$b* | grep -v '\.' | head -1); for x in build/$b.debug.san build/$b.san.debug build/$b.debug build/$b.san; do :; done; timeout 60 $(ls -t build/${b}* | grep -v '\.o$\|\.ll$\|\.bc$' | head -1) 2>&1 | head -40; echo "exit ${PIPESTATUS[0]}";;
    r) echo "== -b -r"; $O -b -r $b.olang > $b.rerr 2>&1 || { head -30 $b.rerr; continue; }; timeout 120 $(ls -t build/${b}* | grep -v '\.o$\|\.ll$\|\.bc$' | head -1) 2>&1 | head -60; echo "exit ${PIPESTATUS[0]}";;
    i) echo "== -i"; timeout 120 $O -i $b.olang 2>&1 | head -40; echo "exit ${PIPESTATUS[0]}";;
  esac
done
