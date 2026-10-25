#!/bin/bash
# m04: M21's per-instance methods across modules - built -debug -sanitize, plainly and interpreted. ./repro.sh OLANG
O=${1:?pass the compiler}
cd "$(dirname "$0")"
rm -rf build
echo "== build -debug -sanitize"; $O build -debug -sanitize main.olang > out 2>&1 && ./build/main.debug.san || cat out
echo "== build"; $O build main.olang > out 2>&1 && ./build/main || cat out
echo "== interpret"; $O interpret main.olang
