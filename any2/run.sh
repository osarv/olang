#!/bin/bash
# run.sh [-d DIR] NAME [OLANG]: DIR/NAME.olang + common.inc -> DIR/gen/NAME.olang; built -debug -sanitize and run, built
# plainly (-O3) and run, then interpreted. DIR defaults to repro.
D=repro
if [ "$1" = "-d" ]; then D=$2; shift 2; fi
O=${2:?pass the compiler: ./run.sh NAME OLANG}
cd /home/user/review/any2/$D
mkdir -p gen
n=$1
{ grep -q 'import "std/io"' $n.olang || echo 'import "std/io"'; cat $n.olang /home/user/review/any2/common.inc; } > gen/$n.olang
cd gen
echo "== build -debug -sanitize"; if $O build -debug -sanitize $n.olang > out.$n 2>&1; then timeout 60 ./build/$n.debug.san; echo "status $?"; else head -30 out.$n; fi
echo "== build"; if $O build $n.olang > out.$n 2>&1; then timeout 60 ./build/$n; echo "status $?"; else head -5 out.$n; fi
echo "== interpret"; timeout 120 $O interpret $n.olang 2>&1 | head -30; echo "status ${PIPESTATUS[0]}"
