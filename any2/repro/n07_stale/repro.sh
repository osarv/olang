#!/bin/bash
# n07: a module's reused record (B3i) holds its tables' lazy default slots as "unreachable"; an importer that starts
# calling a default through the any then reaches it. ./repro.sh [OLANG]
O=${1:?pass the compiler}
cd "$(dirname "$0")"
rm -rf build
cp main1.olang main.olang; $O build main.olang && ./build/main
cp main2.olang main.olang; $O build main.olang && ./build/main; echo "status $? (134: unreachable reached)"
OLANG_CHECKREUSE=1 $O build main.olang 2>&1 | head -3
rm -rf build; $O build main.olang && ./build/main; echo "clean build: status $?"
