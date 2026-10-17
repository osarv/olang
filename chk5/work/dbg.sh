#!/bin/bash
# dbg.sh file.olang : O26a decisions in non-std functions
d=$(mktemp -d /home/user/review/chk5/work/runs/dbgXXXX); cp $(dirname $(readlink -f $1))/*.olang $d/; cd $d
O26DBG=1 /home/user/wt/chk5dbg/build/out -c $(basename $1) 2>&1 | grep "O26a\|HOLD\|LAND" | sort -u
rm -rf $d
