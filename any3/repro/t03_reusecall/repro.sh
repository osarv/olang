#!/bin/bash
# t03: defaults called through an any from a non-root module whose object a later build reuses. ./repro.sh OLANG
O=${1:?pass the compiler}
cd "$(dirname "$0")"
rm -rf build
cp main1.olang main.olang; $O build main.olang > /dev/null && ./build/main
cp main2.olang main.olang; OLANG_CHECKREUSE=1 $O build main.olang 2>&1 | head -2; ./build/main; echo "status $?"
