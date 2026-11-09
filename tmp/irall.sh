#!/bin/bash
# $1 compiler (absolute), $2 out dir (absolute)
R=/home/user/wt/r4
mkdir -p $2/c && cd $2/c && $1 build -output x $R/compiler/olang.olang > ../log 2>&1
for f in $R/bench/*.olang; do b=$(basename $f .olang); mkdir -p $2/$b; cd $2/$b; $1 build -output x $f >> ../log 2>&1; done
