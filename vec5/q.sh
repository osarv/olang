#!/bin/bash
# q.sh FILE : quick - just compile with the new compiler (-c into runs/q) and print errors
NEW=/home/user/wt/rvvec5/build/out
f=$(readlink -f "$1"); n=$(basename "${f%.olang}")
d=/home/user/review/vec5/runs/q_$n; rm -rf $d; mkdir -p $d; cd $d
$NEW -b -d -s "$f" > cc.log 2>&1 && echo ACCEPTED || { echo REFUSED; grep -m3 'error\|note' cc.log | cut -c1-220; }
rm -rf $d
