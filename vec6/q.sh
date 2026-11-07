#!/bin/bash
# q.sh FILE : compile only with d5ddcda (accept/refuse), first errors printed
NEW=${NEW:-/home/user/wt/rvvec6/build/out}
f=$(readlink -f "$1"); n=$(basename "${f%.olang}")
d=/home/user/review/vec6/runs/q_$n; rm -rf $d; mkdir -p $d; cd $d
$NEW -b -d -s "$f" > cc.log 2>&1 && echo "ACCEPTED $n" || { echo "REFUSED $n"; grep -m3 'error\|note' cc.log | cut -c1-240; }
rm -rf $d
