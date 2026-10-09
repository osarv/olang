#!/usr/bin/env bash
# bench/ir.sh PROG [CPROG] - the whole-program optimized IR and the disassembly of one benchmark, olang and C side by
# side, for reading why one is slower: build/lto/PROG.olang.ll / .olang.s and build/lto/CPROG.c.ll / .c.s. The IR is
# what the link-time optimizer hands to code generation (save-temps' precodegen), so it is exactly what runs.
# Run bench/run.sh first, which leaves the program's IR in build/.
set -euo pipefail
cd "$(dirname "$0")"
prog=$1
cprog=${2:-$1}
mkdir -p build/lto
others=$(ls build/*.ll | grep -v '\.main\.ll$' | grep -v '\.test\.ll$')
clang -O3 -flto -o build/lto/$prog.olang build/$prog.main.ll $others -lm -lpthread -Wl,-plugin-opt=save-temps
llvm-dis build/lto/$prog.olang.0.5.precodegen.bc -o build/lto/$prog.olang.ll
llvm-objdump -d --no-show-raw-insn build/lto/$prog.olang > build/lto/$prog.olang.s
clang -O3 -flto -o build/lto/$cprog.c c/$cprog.c -lm -lpthread -Wl,-plugin-opt=save-temps
llvm-dis build/lto/$cprog.c.0.5.precodegen.bc -o build/lto/$cprog.c.ll
llvm-objdump -d --no-show-raw-insn build/lto/$cprog.c > build/lto/$cprog.c.s
rm -f build/lto/*.bc build/lto/*.o build/lto/*.resolution.txt
echo "build/lto/$prog.olang.{ll,s}  build/lto/$cprog.c.{ll,s}"
