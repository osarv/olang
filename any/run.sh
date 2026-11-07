#!/bin/bash
# run.sh NAME [OLANG]: repro/NAME.olang + repro/common.inc -> repro/gen/NAME.olang; built -debug -sanitize and run, built
# plainly (-O3) and run, then interpreted
O=${2:-/home/user/wt/rvany/build/olang}
cd /home/user/review/any/repro
mkdir -p gen
n=$1
{ grep -q 'import "std/io"' $n.olang || echo 'import "std/io"'; cat $n.olang common.inc; } > gen/$n.olang
cd gen
echo "== build -debug -sanitize"; if $O build -debug -sanitize $n.olang > out.$n 2>&1; then timeout 60 ./build/$n.debug.san; echo "status $?"; else head -30 out.$n; fi
echo "== build"; if $O build $n.olang > out.$n 2>&1; then timeout 60 ./build/$n; echo "status $?"; else head -5 out.$n; fi
echo "== interpret"; timeout 120 $O interpret $n.olang 2>&1 | head -30; echo "status ${PIPESTATUS[0]}"
