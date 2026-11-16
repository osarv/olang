#!/bin/bash
cd /home/user/wt/freeing7
set -e
S="-define BuiltStd=$PWD/std"
t=$(date +%s)
build/olang build $S -output build/olang.a compiler/olang.olang
build/olang.a build $S -output build/olang.b compiler/olang.olang
build/olang.b build $S -output build/olang.c compiler/olang.olang
cmp build/olang.b build/olang.c && echo "FIXEDPOINT OK $(( $(date +%s) - t ))s"
