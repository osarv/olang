#!/bin/bash
# W3b: building the edit fuzzer's seed 101 (module 2 dead) step by step in one directory refuses at step s3
# (T22b in m1, "'link' keeps 'b' in 'a'") what a clean build of the same text accepts and runs (142651566).
# The only edit s2->s3 adds `fn quiet2() Bool { return not churn.Allocates }` to m0.
O=/home/user/wt/merge/build/olang
S=/home/user/review/reviewB2/editdrv
D=$(mktemp -d); C=$(mktemp -d)
for s in s0 s1 s2 s3; do cp $S/$s/*.olang $D/; (cd $D && rm -f build/main && $O build main.olang >/dev/null 2>&1; echo "in place $s: status $? $(./build/main 2>/dev/null)"); done
(cd $D && $O build main.olang 2>&1 | head -3)
cp $S/s3/*.olang $C/; (cd $C && $O build main.olang >/dev/null 2>&1; echo "clean s3: status $? $(./build/main)")
