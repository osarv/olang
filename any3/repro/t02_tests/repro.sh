#!/bin/bash
# t02: the table's lazy slots across roots and test builds: a.olang built (helper's object made with no default slot
# reached), then a.olang's and b.olang's tests in one invocation, then b alone, then b compiled from scratch.
# ./repro.sh OLANG
O=${1:?pass the compiler}
cd "$(dirname "$0")"
rm -rf build
$O build a.olang > /dev/null && ./build/a | tr '\n' ' '; echo
$O test a.olang b.olang 2>&1 | tail -4
$O test b.olang 2>&1 | tail -2
$O compile helper.olang 2>&1 | tail -1
$O test -debug -sanitize b.olang 2>&1 | tail -2
rm -rf build; $O test b.olang 2>&1 | tail -2
