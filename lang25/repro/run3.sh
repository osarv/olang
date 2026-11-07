#!/bin/sh
# run3.sh COMPILER FILE.olang - the program's output built plainly, built -debug -sanitize, and interpreted
C=$1; F=$2
echo "== build"; $C "$F"; echo "status $?"
B=$($C build -debug -sanitize "$F" | sed -n 's/^built //p')
echo "== build -debug -sanitize ($B)"; [ -n "$B" ] && "$B"; echo "status $?"
echo "== interpret"; $C interpret "$F"; echo "status $?"
