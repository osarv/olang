#ifndef CODEGEN_H
#define CODEGEN_H

#include "semantic.h"

//emits every module reachable from root (via *SemanticAllModules()) into one LLVM IR file at outPath,
//plus a process main() that calls root's olang main() and converts its result to an exit code
void CodegenProgram(struct semaModule* root, char* outPath);

//emits every module reachable from root, plus a harness main() that runs every test{} block declared
//directly in root (not in its imports) and reports pass/fail per test
void CodegenTests(struct semaModule* root, char* outPath);

#endif //CODEGEN_H
