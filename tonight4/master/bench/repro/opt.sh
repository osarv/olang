#!/usr/bin/env bash
# repro/opt.sh NAME - builds repro/NAME.olang and writes the whole-program optimized IR (what link-time optimization
# hands to code generation) to repro/build/NAME.opt.ll, for reading what a reproducer's loop became
set -euo pipefail
cd "$(dirname "$0")"
../../build/out -b $1.olang >/dev/null
others=$(ls build/*.ll | grep -v '\.main\.ll$' | grep -v '\.opt\.ll$')
mkdir -p build/lto
clang -O3 -flto -o build/lto/$1 build/$1.main.ll $others -lm -lpthread -Wl,-plugin-opt=save-temps
llvm-dis build/lto/$1.0.5.precodegen.bc -o build/$1.opt.ll
rm -rf build/lto
echo build/$1.opt.ll
