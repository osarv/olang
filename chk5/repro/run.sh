#!/bin/bash
# run.sh - builds each reproducer with 771a922 (NEW) and c2a38f0 (BASE) and runs it; for the growth reproducers it
# prints the peak resident memory. NEW/BASE may be overridden.
NEW=${NEW:-/home/user/wt/rv10/build/out}
BASE=${BASE:-/home/user/wt/chk5base/build/out}
here=$(cd $(dirname $0) && pwd)
peak() { "$@" & pid=$!; p=0; while kill -0 $pid 2>/dev/null; do r=$(awk '/VmHWM/{print $2}' /proc/$pid/status 2>/dev/null); [ -n "$r" ] && p=$r; sleep 0.05; done; wait $pid; echo "  peak ${p} kB"; }
for f in ${@:-$here/*.olang}; do
  n=$(basename $f .olang)
  for c in NEW BASE; do
    comp=${!c}; d=$(mktemp -d); cp $f $d/; cd $d
    if out=$($comp -b $n.olang 2>&1); then
      echo "[$c] $n: built"; case $n in r05_*) peak ./build/$n;; *) ./build/$n; echo "  status $?";; esac
      $comp -s -b $n.olang >/dev/null 2>&1 && case $n in r05_*) ;; *) echo "  -s:"; ./build/$n.san 2>&1 | head -3;; esac
    else echo "[$c] $n: refused"; echo "$out" | grep "error" | head -3 | sed 's/^/  /'; fi
    cd $here; rm -rf $d
  done
done
