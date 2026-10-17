#!/bin/bash
# runall.sh : every repro through run.sh (c7099f6 -b -d -s, -i, -b; then whether d5ddcda accepts it). Output in runall.out
cd /home/user/review/vec7
for f in repro/*.olang; do echo "== $f"; ./run.sh $f; done 2>&1 | tee runall.out
