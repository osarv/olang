#!/bin/bash
# run.sh [-d DIR] NAME OLANG: DIR/NAME.olang (DIR defaults to repro) + common.inc -> DIR/gen/NAME/NAME.olang; built
# -debug -sanitize and run, built plainly (-O3) and run, then interpreted. Output also in DIR/NAME.out
R=/home/user/review/any3/repro
if [ "$1" = "-d" ]; then R=/home/user/review/any3/$2; shift 2; fi
n=${1:?name}
O=${2:?pass the compiler: ./run.sh NAME OLANG}
mkdir -p $R/gen/$n
{ grep -q 'import "std/io"' $R/$n.olang || echo 'import "std/io"'; cat $R/$n.olang /home/user/review/any3/common.inc; } > $R/gen/$n/$n.olang
cd $R/gen/$n
{
echo "== build -debug -sanitize"; if $O build -debug -sanitize $n.olang > out.$n 2>&1; then timeout 60 ./build/$n.debug.san; echo "status $?"; else head -30 out.$n; fi
echo "== build"; if $O build $n.olang > out.$n 2>&1; then timeout 60 ./build/$n; echo "status $?"; else head -8 out.$n; fi
echo "== interpret"; timeout 120 $O interpret $n.olang 2>&1 | head -30; echo "status ${PIPESTATUS[0]}"
} 2>&1 | tee $R/$n.out
