#!/bin/bash
# usage: run.sh FILE [args] - runs a program built (-O3, LTO), built -debug -sanitize, and interpreted
f=$(realpath $1); shift
O=/home/user/wt/rework/build/olang
cd /home/user/review/bulk6/work
echo "== build"; timeout 300 $O $f "$@" 2>&1 | head -${N:-15}
echo "== -debug -sanitize"; timeout 300 $O -debug -sanitize $f "$@" 2>&1 | head -${N:-15}
echo "== interpret"; timeout 300 $O interpret $f "$@" 2>&1 | head -${N:-15}
