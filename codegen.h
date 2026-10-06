#ifndef CODEGEN_H
#define CODEGEN_H

#include "semantic.h"

//what tops off a module's object, if anything (§10 B1/B2)
enum cgEntry {
    CG_ENTRY_NONE,  //-c: a plain module object, no entry point of its own
    CG_ENTRY_MAIN,  //-b: this module is the program's root, so it also carries "main" (P4)
    CG_ENTRY_TESTS, //-t: this module also carries the test harness (P8)
};

//B3b: rejects two modules in one program whose file base names match, since symbols are named from them
void CodegenCheckModuleNames(void);

//emits ONE module's LLVM IR to outPath - the rest of the program is declarations, never definitions.
//`race` marks every emitted function "sanitize_thread", which is what makes clang's -fsanitize=thread
//actually instrument it (§6.8 P7).
//`unwind` emits the S18b/P1d open-scope chain. Only a test binary ever longjmps - outside `-t` a failed
//check aborts the process, so there is nothing to unwind to - and maintaining the chain costs ~2.4x on an
//allocation-heavy loop, so it is confined to builds that can actually use it.
void CodegenSetRoot(struct semaModule* root);
void CodegenModule(struct semaModule* mod, char* outPath, enum cgEntry entry, bool race, bool unwind, bool debug);

#endif //CODEGEN_H
