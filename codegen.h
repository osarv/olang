#ifndef CODEGEN_H
#define CODEGEN_H

#include "semantic.h"

//what tops off a module's object, if anything (§10 P1/P2)
enum cgEntry {
    CG_ENTRY_NONE,  //-c: a plain module object, no entry point of its own
    CG_ENTRY_MAIN,  //-b: this module is the program's root, so it also carries "main" (P4)
    CG_ENTRY_TESTS, //-t: this module also carries the test harness (P8)
};

//P3b: rejects two modules in one program whose file base names match, since symbols are named from them
void CodegenCheckModuleNames(void);

//emits ONE module's LLVM IR to outPath - the rest of the program is declarations, never definitions
void CodegenModule(struct semaModule* mod, char* outPath, enum cgEntry entry);

#endif //CODEGEN_H
