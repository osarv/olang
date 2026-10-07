#define _GNU_SOURCE
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <unistd.h>
#include "util.h"
#include "token.h"
#include "syntax.h"
#include "semantic.h"
#include "codegen.h"
#include "comptime.h"
#include "errmsg.h"

/* ---- codegen-time symbol table: pure name-based lexical scoping, rebuilt from the same statement/
 * operand tree the semantic layer already validated. We deliberately do NOT rely on struct var* pointer
 * identity here (op->readVar for a function parameter does not reliably point at anything codegen can
 * recover from func->type.vars - see the fork's final report), so every local is looked up by name
 * through this parallel scope stack instead. */
struct cgLocal {
    struct str name;
    char* llvmVal; //the alloca'd ptr for this local, e.g. "%loc.5"
    struct type type;
};

struct cgScope {
    struct list locals; //list of struct cgLocal
    struct cgScope* parent;
};

struct cgLoop {
    char breakLbl[32];
    char contLbl[32];
    int slotsAtEntry;
};

struct cgDbgLoc { int sp; int line; int id; int file; };
//B3d: the module this compilation was asked for (-b/-t's root, or -c's one module) - the only object that
//defines the program's generic instantiations
static struct semaModule* cgCompilationRoot;
void CodegenSetRoot(struct semaModule* root) { cgCompilationRoot = root; }
struct cgDbgFile { struct str name; int id; int sp; }; //sp set on an entry recording a subprogram's own file

struct cgCtx {
    struct list fnValues; //D16: struct var* - named functions used as values, each needing a static closure
    //B2e: -debug's DWARF metadata. Collected into dbgOut and appended to the module at the end; every id
    //comes from dbgNext, which starts far above anything the TBAA metadata uses.
    bool debug;
    FILE* dbgOut;
    char* dbgBuf;
    size_t dbgSize;
    int dbgNext;
    int dbgFile;
    int dbgCu;
    int dbgSubType;
    int dbgPtrType;
    int dbgBasic[8];     //by baseType, 0 until first used
    int dbgPendingSp;    //the subprogram the next cgBodyBegin belongs to
    int dbgCurSp;        //the subprogram whose body is being emitted, for variables
    int dbgCurLine;
    struct list dbgLocs; //struct cgDbgLoc: one DILocation per (subprogram, file, line)
    struct list dbgFiles; //struct cgDbgFile: one DIFile per source file (M22: a package has several)
    struct list dbgSpFiles; //struct cgDbgFile: which file each subprogram is in
    FILE* out;   //real output file: types, declares, globals, string literal constants
    FILE* fnOut; //memstream accumulating every function body, flushed into out at the very end
    struct semaModule* curMod; //module whose function/global/test body is currently being generated
    struct var* curFunc; //function currently being generated; NULL outside a real function body (globals/tests)
    struct cgScope* scope;
    //the current function's own private scope - an alloca'd %olang.scope, lazily-empty until the first
    //"&"/"own" allocation actually touches it (see the report). NULL outside a real function/test body
    //(globals, the program-main wrapper, the test harness's own non-per-test code), where "own" is never
    //reachable (checked in semantic.c via ctx->hasOwnScope) so this is never read there.
    char* ownScopeSlot;
    //O2: one arena per BLOCK. ownScopeSlot is the body's own (depth 1); blockSlots holds the open nested
    //ones, innermost last, so blockSlots[d-2] is depth d's. A bare "&" resolves by the depth its type
    //recorded, never by "innermost" - "r = Box(7)" inside an if must allocate where r was DECLARED, or the
    //value dies at the closing brace while r still points at it.
    //S11: the innermost enclosing loop's exit and next-iteration labels, plus how many block scopes were
    //open when it started - break/continue close everything above that mark before branching, which is
    //the same unwinding cgCloseOwnScope does for a return (O2a/S11a).
    struct list loops; //list of struct cgLoop
    //P1: the enclosing "join" block - the alloca holding its task-list head, and the block depth whose
    //arena a task's bookkeeping is allocated from. Both are saved and restored around a nested join, so
    //an inner join takes its own tasks and binding stays lexical.
    char* joinTaskHead;
    int joinDepth;
    struct list joinPool;   //list of char*: one task-head alloca per nesting depth, entry-block allocated
    int blockDepth;
    struct list blockSlots; //list of char*: the block scopes currently OPEN, innermost last
    //P1a: in lockstep with blockSlots - the task-list head of the join whose block that slot is, or NULL
    //for an ordinary block. Every path OUT of a join block (a return, an error, a break, a continue) has
    //to wait for its tasks before the arena they may still be holding is reclaimed, exactly as the
    //fall-through path does; that is what this lets the unwinders see.
    struct list blockJoins;
    //S18b/P1d: the runtime unwind chain's nodes - one %olang.unwind per block depth plus one for the
    //body's own scope, all alloca'd in the entry block beside the scope headers they describe. Their
    //`prev` and `scope` fields never change within a frame, so they are filled in once there and a block
    //entry costs two stores: its join head, and the new chain top.
    struct list unwindPool;
    char* ownUnwindNode;
    bool emitUnwind;
    //every "alloca" goes here rather than where it is written, so all of them land in the function's
    //ENTRY block. An alloca inside a loop body allocates a fresh slot per iteration and the stack grows
    //without bound - O2 records exactly this trap for scope headers, which were hoisted for that reason;
    //ordinary locals and temporaries were not, and "mem2reg" had been hiding it at -O3 wherever it could
    //promote them. It cannot when the local's address escapes into a call it cannot inline, which is an
    //ordinary cross-module call, so this was a live bug in optimized builds and not merely at -O0.
    FILE* allocaOut;
    struct list scopePool;  //list of char*: one entry-block alloca per nesting depth, index = depth - 2
    //ambient "this is the scope a struct/array literal currently under construction is ultimately being
    //promoted into" - set by cgValueForTarget/cgBoundaryValue around a recursive cgValue() call so a
    //literal's own nested bare-"&" fields (built inside cgAggregateLiteral) inherit the *same* scope as
    //the literal itself, instead of each independently defaulting to ctx->ownScopeSlot - see the report.
    //NULL when nothing is currently being promoted (the common case - most values never touch this).
    char* targetScopeOverride;
    //E27: the comprehensions being built, innermost last - each one's buffer, length and capacity slots (entry
    //allocas), the scope its storage comes from, and its element type
    struct { char* buf; char* len; char* cap; char* scope; struct type elem; } compr[64];
    int comprDepth;
    //a failed check under "try" (an index, a slice, checked arithmetic): the one error it can produce, known
    //statically, which cgCatchDispatch matches clauses against when it is given no run-time code
    struct type* staticErrType;
    int staticErrWord;
    //C2d: inside a constructor, the scope its instance lands in - the hidden leading parameter every
    //constructor takes. NULL in any other function.
    char* ctorHere;
    int tmpCtr;
    int lblCtr;
    int strCtr;
    struct list emittedSyms; //list of char*: dispatch tables and receiver thunks already written into this
                              //object. They are linkonce_odr so the LINKER keeps one across objects, but a
                              //second definition within one object is a redefinition error, and the same
                              //(interface, type) pair is reached once per conversion site.
    bool terminated; //true once the current basic block has a terminator - see cgLabel/cgBr
    //R9a: the try-with-default being emitted - its result slot and the label both paths join at. The
    //failure branch (a callee's error, a failed bounds check) stores the default there instead of
    //propagating. Saved and restored around each one, since a default or an argument may hold another.
    struct operand* tdOp;
    char* tdSlot;
    char tdJoin[32];
};

//a module's own stable symbol prefix: its file's base name, directory and ".olang" extension stripped,
//with anything not [A-Za-z0-9_] replaced. Deliberately NOT the module's discovery-order index, which was
//what this used to be: an index is only meaningful within one compilation, so two objects compiled
//independently would disagree about which module "m0" named, and nothing would link. The base name is
//the same identity the language already derives an import alias from (§4 M3), so it is stable for a
//given module however a client happens to spell the path it imports it by.
//M22a: symbols are mangled from a module's identity - its path - so "std/list" and a local "list.olang"
//never collide
void mangleModPrefix(struct semaModule* mod, char* buf, size_t n) {
    struct str f = mod->identity;
    int start = 0;
    int end = f.len;
    size_t w = 0;
    for (int i = start; i < end && w +1 < n; i++) {
        char c = f.ptr[i];
        buf[w++] = ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')
                    || (c >= '0' && c <= '9') || c == '_') ? c : '_';
    }
    buf[w] = '\0';
}

//B3b: two modules whose base names match would mangle to the same prefix and so define the same symbols.
//Checked once per compilation, before anything is emitted, rather than left to surface as a duplicate
//symbol at link time - which is where it would otherwise appear, naming mangled symbols rather than files.
void CodegenCheckModuleNames(void) {
    struct list* all = SemanticAllModules();
    for (int i = 0; i < all->len; i++) {
        struct semaModule* a = *(struct semaModule**)ListGetIdx(all, i);
        char pa[256];
        mangleModPrefix(a, pa, sizeof(pa));
        for (int j = i +1; j < all->len; j++) {
            struct semaModule* b = *(struct semaModule**)ListGetIdx(all, j);
            char pb[256];
            mangleModPrefix(b, pb, sizeof(pb));
            if (!strcmp(pa, pb)) ErrMsgFile(b->fileName, MODULE_NAME_COLLISION);
        }
    }
}

void mangleGlobal(struct semaModule* mod, struct str name, char* buf, size_t n) {
    char prefix[256];
    mangleModPrefix(mod, prefix, sizeof(prefix));
    snprintf(buf, n, "@%s_%.*s", prefix, name.len, name.ptr);
}

//M21: a method's symbol carries its receiver type, because a module may declare several methods sharing
//one name - one per type - and they are different functions. Applied to every method, not only the ones
//that happen to have a same-named sibling, so a symbol never depends on what else the module declares.
void mangleFuncSym(struct var* f, char* buf, size_t n) {
    struct type* recv = SemanticMethodReceiver(f);
    if (!recv) { mangleGlobal(f->owner, f->name, buf, n); return; }
    char prefix[256];
    mangleModPrefix(f->owner, prefix, sizeof(prefix));
    //a built-in receiver has no name of its own, so it is spelled by shape. An array is keyed by its
    //element alone, since that is all a built-in method's identity depends on (M19): "int32[4]&" and
    //"int32[]&" are receivers of the same method
    struct str rn = recv->name;
    char shape[300];
    if (!(recv->owner && recv->name.len)) {
        struct str e = typeShortName(recv->bType == BASETYPE_ARRAY ? *recv->arrElem : *recv);
        snprintf(shape, sizeof(shape), "%s%.*s", recv->bType == BASETYPE_ARRAY ? "arr_" : "", e.len, e.ptr);
        rn = StrFromCStr(shape);
    }
    snprintf(buf, n, "@%s.%.*s.%.*s", prefix, rn.len, rn.ptr, f->name.len, f->name.ptr);
}

void mangleTypeName(struct semaModule* mod, struct str name, char* buf, size_t n) {
    char prefix[256];
    mangleModPrefix(mod, prefix, sizeof(prefix));
    snprintf(buf, n, "%s.%.*s", prefix, name.len, name.ptr);
}

void llvmType(struct type t, char* buf, size_t n);

//the pointee type to use when GEP-ing off a pointer to this struct, regardless of structMAlloc - both a
//malloc-indirect struct pointer and a plain by-ref struct pointer address memory laid out this way
void structAggSpelling(struct type t, char* buf, size_t n) {
    if (t.owner && t.name.len > 0) {
        char nameBuf[200];
        mangleTypeName(t.owner, t.name, nameBuf, sizeof(nameBuf));
        snprintf(buf, n, "%%%s", nameBuf);
        return;
    }
    //anonymous struct type expression: no top-level definition exists, so spell it out inline
    char membersBuf[2048] = "";
    for (int i = 0; i < t.vars.len; i++) {
        struct var* m = ListGetIdx(&t.vars, i);
        char mbuf[256];
        llvmType(m->type, mbuf, sizeof(mbuf));
        strncat(membersBuf, mbuf, sizeof(membersBuf) - strlen(membersBuf) -1);
        if (i < t.vars.len -1) strncat(membersBuf, ", ", sizeof(membersBuf) - strlen(membersBuf) -1);
    }
    snprintf(buf, n, "{ %s }", membersBuf);
}

/* the LLVM type of a value of type t, used everywhere: alloca operands, function signatures, GEP pointee
 * types. Struct types are always represented by-pointer at the value level (ptr when structMAlloc, the
 * named aggregate itself otherwise - both cases point at memory laid out per structAggSpelling); a fixed
 * array is the real aggregate [N x ElemT] when embedded, or a bare ptr when "&"-heap-indirect (same
 * "ptr when referenced" rule a struct already gets, since its own size is compile-time-known either way -
 * see the report on extending scope/"&" to arrays); a runtime-length ("T[]") array is always the two-word slice
 * { i64, ptr } regardless of structMAlloc - a genuinely runtime-sized array always needs to carry its own
 * length somewhere, so "arrMalloc" wins the shape question over "structMAlloc" for that one case (whether
 * scope-tracking a runtime-length array's own backing store is a separate, not-yet-implemented step - see the
 * report). */
void llvmType(struct type t, char* buf, size_t n) {
    switch (t.bType) {
        //a type variable never reaches codegen: monomorphization (G16) substitutes every one away before
        //a copy is emitted, so being asked to lower one means an instantiation was missed - a bug here
        case BASETYPE_TYPEVAR: ErrorBugFound(); return;
        //T2a: same reasoning - "null" is retagged to the type it adapts to before anything lowers it, so
        //reaching here means one escaped an assignability context it should never have left
        case BASETYPE_NULL: ErrorBugFound(); return;
        case BASETYPE_VOID: snprintf(buf, n, "void"); return;
        case BASETYPE_BOOL: snprintf(buf, n, "i1"); return;
        case BASETYPE_BYTE: snprintf(buf, n, "i8"); return;
        case BASETYPE_INT32: snprintf(buf, n, "i32"); return;
        case BASETYPE_INT64: snprintf(buf, n, "i64"); return;
        case BASETYPE_FLOAT32: snprintf(buf, n, "float"); return;
        case BASETYPE_FLOAT64: snprintf(buf, n, "double"); return;
        //T17: a payload-free choice is the bare i32 ordinal it always was; one carrying a payload is a
        //tag plus a buffer big enough for the largest case, since exactly one case is live at a time
        case BASETYPE_CHOICE:
            if (ChoiceHasPayload(t)) snprintf(buf, n, "{ i64, [%lld x i8] }", ChoicePayloadSize(t));
            else snprintf(buf, n, "i32");
            return;
        //T33: the (concrete type, instance) pair - a dispatch-table pointer and the instance it names.
        //Two words, exactly like a runtime-length array's { len, ptr }, and for the same reason: the value
        //genuinely is two things and there is nowhere else to keep the second.
        case BASETYPE_INTERFACE: snprintf(buf, n, "{ ptr, ptr }"); return;
        case BASETYPE_ERROR: snprintf(buf, n, "i32"); return;
        case BASETYPE_FUNC: snprintf(buf, n, "ptr"); return;
        //no real arena/runtime backing exists yet (see the report) - opaque pointer for now, same as any
        //other reference-shaped value; codegen never actually reads through it yet
        case BASETYPE_SCOPE: snprintf(buf, n, "ptr"); return;
        case BASETYPE_STRUCT:
            if (t.structMAlloc) snprintf(buf, n, "ptr");
            else structAggSpelling(t, buf, n);
            return;
        case BASETYPE_ARRAY:
            if (t.arrMalloc) { snprintf(buf, n, "{ i64, ptr }"); return; }
            if (t.structMAlloc) { snprintf(buf, n, "ptr"); return; }
            {
                char elemBuf[256];
                llvmType(*t.arrElem, elemBuf, sizeof(elemBuf));
                long long count = t.arrLen ? t.arrLen->intLiteralVal : 0;
                snprintf(buf, n, "[%lld x %s]", count, elemBuf);
            }
            return;
    }
}

//true for the categories whose cgValue() "value" is a ptr to storage rather than a loaded scalar/aggregate
bool typeIsByRef(struct type t) {
    if (t.bType == BASETYPE_STRUCT && !t.structMAlloc) return true;
    if (t.bType == BASETYPE_ARRAY && !t.arrMalloc && !t.structMAlloc) return true;
    return false;
}

/* the actual LLVM return type of a function, accounting for its declared error set (see the report for
 * the design). A fallible function (errors.len > 0) wraps its success type in { i32 code, T payload }
 * (code 0 == success, payload only meaningful then), or is a bare i32 code when it has no success type
 * at all. An infallible function is unchanged: hasRetType ? T : void. */
void llvmFuncRetType(struct type funcType, char* buf, size_t n) {
    if (funcType.errors.len == 0) {
        llvmType(funcType.hasRetType ? *funcType.retType : TypeVanilla(BASETYPE_VOID), buf, n);
        return;
    }
    if (!funcType.hasRetType) { snprintf(buf, n, "i32"); return; }
    char payloadTy[200];
    llvmType(*funcType.retType, payloadTy, sizeof(payloadTy));
    snprintf(buf, n, "{ i32, %s }", payloadTy);
}

//1-based ordinal of errType within funcType's own declared error list ("ErrA + ErrB + ..."). This ordinal
//is purely local to this one signature - it's fixed the moment the signature is written and never shifts
//because of anything declared elsewhere in the program (see the report for why that matters)
int errorTypeOrdinal(struct type funcType, struct type errType) {
    for (int i = 0; i < funcType.errors.len; i++) {
        struct type* e = *(struct type**)ListGetIdx(&funcType.errors, i);
        if (TypeIsSame(*e, errType)) return i +1;
    }
    ErrorBugFound();
    return 0;
}

//packs (typeOrdinal, wordOrdinal) into the single i32 code a fallible function's return communicates.
//wordOrdinal is itself local to errType's own declaration (see OperandErrorLiteral) - so this whole value
//is computable from two single declarations and needs zero whole-program coordination
static bool cgFuncIsBareFallible(struct type funcType) {
    return funcType.errors.len == 1
           && TypeIsSame(**(struct type**)ListGetIdx(&funcType.errors, 0), *SemanticGenericErrorType());
}

long long errorCode(struct type funcType, struct type errType, long long wordOrdinal) {
    //R17: a bare "?" function fails with its default error, whatever the failure inside it was
    if (cgFuncIsBareFallible(funcType)) return 1LL << 16;
    long long typeOrdinal = errorTypeOrdinal(funcType, errType);
    return (typeOrdinal << 16) | wordOrdinal;
}

char* cgNewTmp(struct cgCtx* ctx) {
    char* buf = MallocOrCrash(32);
    snprintf(buf, 32, "%%t%d", ctx->tmpCtr++);
    return buf;
}

void cgLabel(struct cgCtx* ctx, char* name) {
    fprintf(ctx->fnOut, "%s:\n", name);
    ctx->terminated = false;
}

void cgBr(struct cgCtx* ctx, char* label) {
    if (ctx->terminated) return;
    fprintf(ctx->fnOut, "  br label %%%s\n", label);
    ctx->terminated = true;
}

//re-encodes `code` (produced under calleeType's own local ordinals) into ctx->curFunc's own local ordinals
//for the same error type, then returns it - a raw passthrough would be wrong whenever the two signatures
//declare their error lists in a different order (see errorCode/errorTypeOrdinal and the report). Which of
//calleeType's error types `code` actually is is a runtime fact, so this is a runtime remap (a small chain
//of selects - calleeType.errors.len is always small), even though every operand of it is otherwise a
//compile-time constant computed purely from the two (already mutually visible) signatures involved.
//emitted right before every "ret" of a real function/test body (never for the synthesized wrapper
//functions - global-init, program-main, the test harness's own dispatch loop - which have no own scope
//at all, ownScopeSlot stays NULL there). Reclaims this function's own private scope's chunks back to the
//pool - see emitScopeRuntime. A safe no-op if the scope was never actually used (still empty).
void cgCloseOwnScope(struct cgCtx* ctx) {
    //nothing to emit after a terminator: a body ending in "done"/"fail" already left via __olang_end, so
    //these closes would land after an "unreachable" in the same basic block - invalid IR, and the block
    //that followed would have no terminator before its label. (Under a test the scopes are still closed:
    //the longjmp lands on the harness's unwind block, which closes them there.)
    if (ctx->terminated) return;
    //O2a: innermost first, then the body's own - a return leaves every block it is nested in, and each
    //one's destructors have to run before the arena under it is reclaimed
    for (int i = ctx->blockSlots.len - 1; i >= 0; i--) {
        char* jh = *(char**)ListGetIdx(&ctx->blockJoins, i);
        if (jh) fprintf(ctx->fnOut, "  call void @__olang_join_tasks(ptr %s)\n", jh);
        fprintf(ctx->fnOut, "  call void @__olang_scope_close(ptr %s)\n", *(char**)ListGetIdx(&ctx->blockSlots, i));
    }
    if (ctx->ownScopeSlot) fprintf(ctx->fnOut, "  call void @__olang_scope_close(ptr %s)\n", ctx->ownScopeSlot);
    //and take this whole frame back off the unwind chain in one store - every node in it is gone now
    if (ctx->ownUnwindNode) {
        char* ps = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %%olang.unwind, ptr %s, i32 0, i32 0\n", ps, ctx->ownUnwindNode);
        char* pv = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", pv, ps);
        fprintf(ctx->fnOut, "  store ptr %s, ptr @__olang_unwind_top\n", pv);
    }
}

//where an "alloca" is written: the function's entry stream while a body is being built, and the ordinary
//stream otherwise (the runtime's own hand-written functions already put theirs in their entry blocks).
static FILE* cgAllocaOut(struct cgCtx* ctx) { return ctx->allocaOut ? ctx->allocaOut : ctx->fnOut; }

//a function body under construction: allocas accumulate in one stream and everything else in another, so
//the two can be written out entry-block-first. The caller emits its own "define ... {" and "entry:" to
//the real stream before beginning, and the body's closing brace is part of the buffered half.
struct cgBodyBuf { FILE* savedFn; FILE* savedAlloca; FILE* aOut; FILE* bOut; char* abuf; char* bbuf; size_t asz; size_t bsz;
                   int dbgSp; int dbgLine; };

// ---- B2e: debug info ----
//
//Line information is attached after the fact rather than threaded through every emitter: cgStatement
//writes a "; dbgloc N" comment before each statement, and when a function's body is flushed every
//instruction line in it gets the location of the marker before it. That keeps the hundreds of fprintf
//sites untouched, and a comment is valid IR, so a body with no subprogram (a linkonce helper, the globals
//initializer) is simply left as it is.

//one DIFile per source file: a test build emits other modules' code into its harness. 0 means "the subprogram's own file".
static int cgDbgFileId(struct cgCtx* ctx, struct str file) {
    if (!ctx->debug || file.len == 0) return 0;
    for (int i = 0; i < ctx->dbgFiles.len; i++) {
        struct cgDbgFile* f = ListGetIdx(&ctx->dbgFiles, i);
        if (StrCmp(f->name, file)) return f->id;
    }
    struct cgDbgFile f = { file, ctx->dbgNext++, 0 };
    char cwd[1024] = ".";
    if (!getcwd(cwd, sizeof(cwd))) strcpy(cwd, ".");
    fprintf(ctx->dbgOut, "!%d = !DIFile(filename: \"%.*s\", directory: \"%s\")\n", f.id, file.len, file.ptr, cwd);
    ListAdd(&ctx->dbgFiles, &f);
    return f.id;
}

//a location's file is its scope's, so a line from a file other than the subprogram's - code from another
//module, all emitted into one harness function - is scoped by a DILexicalBlockFile over it
static int cgDbgSpFile(struct cgCtx* ctx, int sp) {
    for (int i = 0; i < ctx->dbgSpFiles.len; i++) {
        struct cgDbgFile* f = ListGetIdx(&ctx->dbgSpFiles, i);
        if (f->sp == sp) return f->id;
    }
    return ctx->dbgFile;
}

static int cgDbgLocId(struct cgCtx* ctx, int sp, int file, int line) {
    for (int i = 0; i < ctx->dbgLocs.len; i++) {
        struct cgDbgLoc* l = ListGetIdx(&ctx->dbgLocs, i);
        if (l->sp == sp && l->file == file && l->line == line) return l->id;
    }
    int scope = sp;
    if (file && file != cgDbgSpFile(ctx, sp)) {
        scope = ctx->dbgNext++;
        fprintf(ctx->dbgOut, "!%d = !DILexicalBlockFile(scope: !%d, file: !%d, discriminator: 0)\n", scope, sp, file);
    }
    struct cgDbgLoc l = { sp, line, ctx->dbgNext++, file };
    fprintf(ctx->dbgOut, "!%d = !DILocation(line: %d, column: 1, scope: !%d)\n", l.id, line, scope);
    ListAdd(&ctx->dbgLocs, &l);
    return l.id;
}

static void cgDbgInit(struct cgCtx* ctx, struct semaModule* mod) {
    if (!ctx->debug) return;
    ctx->dbgOut = open_memstream(&ctx->dbgBuf, &ctx->dbgSize);
    ctx->dbgNext = 900000;
    ctx->dbgLocs = ListInit(sizeof(struct cgDbgLoc));
    ctx->dbgFiles = ListInit(sizeof(struct cgDbgFile));
    ctx->dbgSpFiles = ListInit(sizeof(struct cgDbgFile));
    //the compile unit's file is the module's source file; another module's code gets its own
    ctx->dbgFile = cgDbgFileId(ctx, mod->files.len ? StrFromCStr(*(char**)ListGetIdx(&mod->files, 0)) : mod->fileName);
    ctx->dbgCu = ctx->dbgNext++;
    ctx->dbgSubType = ctx->dbgNext++;
    ctx->dbgPtrType = ctx->dbgNext++;
    fprintf(ctx->dbgOut, "!%d = distinct !DICompileUnit(language: DW_LANG_C, file: !%d, producer: \"olang\", "
            "isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)\n", ctx->dbgCu, ctx->dbgFile);
    fprintf(ctx->dbgOut, "!%d = !DISubroutineType(types: !{})\n", ctx->dbgSubType);
    fprintf(ctx->dbgOut, "!%d = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)\n",
            ctx->dbgPtrType);
}

//a DISubprogram for the function about to be defined, and the " !dbg !N" its define line carries
static char* cgDbgSubprogram(struct cgCtx* ctx, struct str name, char* linkage, int line, struct token tok) {
    static char suffix[32];
    suffix[0] = '\0';
    if (!ctx->debug) return suffix;
    int file = tok.owner ? cgDbgFileId(ctx, TokenGetFileName(tok.owner)) : ctx->dbgFile;
    int id = ctx->dbgNext++;
    struct cgDbgFile spf = { (struct str){0}, file, id };
    ListAdd(&ctx->dbgSpFiles, &spf);
    if (linkage[0] == '@') linkage++;
    //no linkageName: with a C compile unit gdb takes it as the function's name, so "break scale" would find
    //nothing and a backtrace would print the mangled symbol. The symbol is still in the ELF table.
    (void)linkage;
    fprintf(ctx->dbgOut, "!%d = distinct !DISubprogram(name: \"%.*s\", scope: !%d, "
            "file: !%d, line: %d, type: !%d, scopeLine: %d, spFlags: DISPFlagDefinition, unit: !%d)\n",
            id, name.len, name.ptr, file, file, line, ctx->dbgSubType, line, ctx->dbgCu);
    ctx->dbgPendingSp = id;
    ctx->dbgCurLine = line;
    snprintf(suffix, sizeof(suffix), " !dbg !%d", id);
    return suffix;
}

//the debug type of a variable, or 0 where none is described yet (a by-value aggregate)
static int cgDbgType(struct cgCtx* ctx, struct type t) {
    if (t.structMAlloc || t.bType == BASETYPE_INTERFACE || t.bType == BASETYPE_FUNC
            || (t.bType == BASETYPE_ARRAY && t.arrMalloc)) return ctx->dbgPtrType;
    const char* nm; int bits; const char* enc;
    switch (t.bType) {
        case BASETYPE_BOOL:    nm = "Bool";    bits = 8;  enc = "DW_ATE_boolean"; break;
        case BASETYPE_BYTE:    nm = "Byte";    bits = 8;  enc = "DW_ATE_unsigned_char"; break;
        case BASETYPE_INT32:   nm = "Int32";   bits = 32; enc = "DW_ATE_signed"; break;
        case BASETYPE_INT64:   nm = "Int64";   bits = 64; enc = "DW_ATE_signed"; break;
        case BASETYPE_FLOAT32: nm = "Float32"; bits = 32; enc = "DW_ATE_float"; break;
        case BASETYPE_FLOAT64: nm = "Float64"; bits = 64; enc = "DW_ATE_float"; break;
        default: return 0;
    }
    int slot = (int)t.bType % 8;
    if (!ctx->dbgBasic[slot]) {
        ctx->dbgBasic[slot] = ctx->dbgNext++;
        fprintf(ctx->dbgOut, "!%d = !DIBasicType(name: \"%s\", size: %d, encoding: %s)\n",
                ctx->dbgBasic[slot], nm, bits, enc);
    }
    return ctx->dbgBasic[slot];
}

//names a local or parameter's slot for the debugger. argNo is 1-based for a parameter, 0 for a local.
static void cgDbgVar(struct cgCtx* ctx, char* slot, struct str name, struct type t, int line, int argNo) {
    if (!ctx->debug || !ctx->dbgCurSp || name.len == 0 || name.ptr[0] == '$') return;
    int ty = cgDbgType(ctx, t);
    if (!ty) return;
    int id = ctx->dbgNext++;
    if (argNo) {
        fprintf(ctx->dbgOut, "!%d = !DILocalVariable(name: \"%.*s\", arg: %d, scope: !%d, file: !%d, line: %d, type: !%d)\n",
                id, name.len, name.ptr, argNo, ctx->dbgCurSp, cgDbgSpFile(ctx, ctx->dbgCurSp), line, ty);
    } else {
        fprintf(ctx->dbgOut, "!%d = !DILocalVariable(name: \"%.*s\", scope: !%d, file: !%d, line: %d, type: !%d)\n",
                id, name.len, name.ptr, ctx->dbgCurSp, cgDbgSpFile(ctx, ctx->dbgCurSp), line, ty);
    }
    fprintf(ctx->fnOut, "  call void @llvm.dbg.declare(metadata ptr %s, metadata !%d, metadata !DIExpression())\n",
            slot, id);
}

//appends ", !dbg !N" to every instruction line of a finished body, N being the location of the last
//"; dbgloc" marker above it (the function's own line before the first), and drops the markers
//Before the first statement's marker - the function's setup: parameter stores, scope headers - only calls
//get a location, which the verifier requires of them. Clang does the same: LLVM puts prologue_end on the
//first located instruction, and a debugger stops there, so locating the parameter stores made it stop
//before them and show garbage arguments.
static void cgDbgAnnotate(struct cgCtx* ctx, FILE* dst, char* buf, size_t size, int sp, int* line, int* file, bool* seenStmt) {
    size_t i = 0;
    while (i < size) {
        size_t j = i;
        while (j < size && buf[j] != '\n') j++;
        size_t len = j - i;
        char* ln = buf + i;
        bool isCall = memmem(ln, len, "call ", 5) != NULL;
        if (len > 9 && !strncmp(ln, "; dbgloc ", 9)) {
            char* sp2 = NULL;
            *line = (int)strtol(ln + 9, &sp2, 10);
            *file = (int)strtol(sp2, NULL, 10);
            *seenStmt = true;
        } else if (len > 2 && ln[0] == ' ' && ln[1] == ' ' && ln[2] != ';' && ln[2] != ' '
                   && (*seenStmt || isCall)) {
            fwrite(ln, 1, len, dst);
            fprintf(dst, ", !dbg !%d\n", cgDbgLocId(ctx, sp, *file, *line));
        } else {
            fwrite(ln, 1, len, dst);
            fputc('\n', dst);
        }
        i = j + 1;
    }
}

static void cgBodyBegin(struct cgCtx* ctx, struct cgBodyBuf* b) {
    b->savedFn = ctx->fnOut;
    b->savedAlloca = ctx->allocaOut; //these nest: a linkonce helper can be reached mid-body
    b->aOut = open_memstream(&b->abuf, &b->asz);
    b->bOut = open_memstream(&b->bbuf, &b->bsz);
    if (!b->aOut || !b->bOut) ErrorBugFound();
    ctx->allocaOut = b->aOut;
    ctx->fnOut = b->bOut;
    b->dbgSp = ctx->dbgPendingSp; //a helper reached mid-body gets none: this is cleared here
    b->dbgLine = ctx->dbgCurLine;
    ctx->dbgPendingSp = 0;
    if (b->dbgSp) ctx->dbgCurSp = b->dbgSp;
}

static void cgBodyEnd(struct cgCtx* ctx, struct cgBodyBuf* b) {
    fflush(b->aOut);
    fflush(b->bOut);
    if (b->dbgSp) {
        int line = b->dbgLine;
        bool seenStmt = false;
        int file = 0;
        cgDbgAnnotate(ctx, b->savedFn, b->abuf, b->asz, b->dbgSp, &line, &file, &seenStmt);
        cgDbgAnnotate(ctx, b->savedFn, b->bbuf, b->bsz, b->dbgSp, &line, &file, &seenStmt);
        ctx->dbgCurSp = 0;
    } else {
        fwrite(b->abuf, 1, b->asz, b->savedFn);
        fwrite(b->bbuf, 1, b->bsz, b->savedFn);
    }
    fclose(b->aOut);
    fclose(b->bOut);
    free(b->abuf);
    free(b->bbuf);
    ctx->fnOut = b->savedFn;
    ctx->allocaOut = b->savedAlloca;
}

struct cgLocal* cgFindLocal(struct cgCtx* ctx, struct str name);

//S18b/P1d: the node one level below block-slot index `i` in this frame's unwind chain.
static char* cgUnwindBelow(struct cgCtx* ctx, int i) {
    if (i <= 0) return ctx->ownUnwindNode;
    return *(char**)ListGetIdx(&ctx->unwindPool, i -1);
}

//allocates this frame's unwind nodes beside the scope headers they describe and fills in the half that
//never varies within a frame - each node's predecessor and the scope it closes. Then pushes the body's
//own node, which is the only link that is dynamic, since it reaches into the caller's frame.
//Call after ownScopeSlot and scopePool are set up.
static void cgSetupUnwind(struct cgCtx* ctx) {
    ctx->unwindPool.len = 0;
    ctx->ownUnwindNode = NULL;
    //every push and pop below is already guarded on unwindPool being non-empty or ownUnwindNode being
    //set, so bailing here is all it takes to emit none of it
    if (!ctx->emitUnwind) return;
    char* own = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca %%olang.unwind\n", own);
    ctx->ownUnwindNode = own;
    for (int i = 0; i < ctx->scopePool.len; i++) {
        char* n = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca %%olang.unwind\n", n);
        ListAdd(&ctx->unwindPool, &n);
    }
    char* sslot = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %%olang.unwind, ptr %s, i32 0, i32 1\n", sslot, own);
    fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", ctx->ownScopeSlot, sslot);
    char* jslot = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %%olang.unwind, ptr %s, i32 0, i32 2\n", jslot, own);
    fprintf(ctx->fnOut, "  store ptr null, ptr %s\n", jslot);
    for (int i = 0; i < ctx->unwindPool.len; i++) {
        char* n = *(char**)ListGetIdx(&ctx->unwindPool, i);
        char* ps = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %%olang.unwind, ptr %s, i32 0, i32 0\n", ps, n);
        fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", cgUnwindBelow(ctx, i), ps);
        char* ss = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %%olang.unwind, ptr %s, i32 0, i32 1\n", ss, n);
        fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", *(char**)ListGetIdx(&ctx->scopePool, i), ss);
    }
}

//links this frame onto the chain the caller left, and makes it the top. Separate from cgSetupUnwind
//because the test harness has to record its unwind mark between the two.
static void cgPushOwnUnwind(struct cgCtx* ctx) {
    if (!ctx->ownUnwindNode) return;
    char* prev = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load ptr, ptr @__olang_unwind_top\n", prev);
    char* pslot = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %%olang.unwind, ptr %s, i32 0, i32 0\n", pslot, ctx->ownUnwindNode);
    fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", prev, pslot);
    fprintf(ctx->fnOut, "  store ptr %s, ptr @__olang_unwind_top\n", ctx->ownUnwindNode);
}



void cgPropagateError(struct cgCtx* ctx, struct type calleeType, char* code) {
    //R17: through a bare "?" function, any error leaves as that function's own default error
    if (cgFuncIsBareFallible(ctx->curFunc->type)) {
        cgCloseOwnScope(ctx);
        char* erased = "65536"; //(1 << 16) | 0: the default error, its one word
        if (!ctx->curFunc->type.hasRetType) {
            fprintf(ctx->fnOut, "  ret i32 %s\n", erased);
        } else {
            char wrapTy[256];
            llvmFuncRetType(ctx->curFunc->type, wrapTy, sizeof(wrapTy));
            char* v = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = insertvalue %s undef, i32 %s, 0\n", v, wrapTy, erased);
            fprintf(ctx->fnOut, "  ret %s %s\n", wrapTy, v);
        }
        ctx->terminated = true;
        return;
    }
    char* calleeOrd = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = lshr i32 %s, 16\n", calleeOrd, code);

    char* acc = "0";
    for (int i = 0; i < calleeType.errors.len; i++) {
        struct type* e = *(struct type**)ListGetIdx(&calleeType.errors, i);
        //0 is a safe placeholder when e isn't one of ctx->curFunc's own declared errors: from a
        //cgTryCatch call site that can only happen when e is fully caught by that catch clause, which
        //means this select's condition can never actually be true at runtime (see the report)
        int callerOrd = 0;
        for (int j = 0; j < ctx->curFunc->type.errors.len; j++) {
            struct type* fe = *(struct type**)ListGetIdx(&ctx->curFunc->type.errors, j);
            if (TypeIsSame(*e, *fe)) { callerOrd = j +1; break; }
        }
        char* isThis = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp eq i32 %s, %d\n", isThis, calleeOrd, i +1);
        char* next = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = select i1 %s, i32 %d, i32 %s\n", next, isThis, callerOrd, acc);
        acc = next;
    }

    char* wordPart = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = and i32 %s, 65535\n", wordPart, code);
    char* shifted = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = shl i32 %s, 16\n", shifted, acc);
    char* newCode = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = or i32 %s, %s\n", newCode, shifted, wordPart);

    cgCloseOwnScope(ctx);
    if (!ctx->curFunc->type.hasRetType) {
        fprintf(ctx->fnOut, "  ret i32 %s\n", newCode);
    } else {
        char wrapTy[256];
        llvmFuncRetType(ctx->curFunc->type, wrapTy, sizeof(wrapTy));
        char* v = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = insertvalue %s undef, i32 %s, 0\n", v, wrapTy, newCode);
        fprintf(ctx->fnOut, "  ret %s %s\n", wrapTy, v);
    }
    ctx->terminated = true;
}

void cgPushScope(struct cgCtx* ctx) {
    struct cgScope* s = MallocOrCrash(sizeof(struct cgScope));
    s->locals = ListInit(sizeof(struct cgLocal));
    s->parent = ctx->scope;
    ctx->scope = s;
}

void cgPopScope(struct cgCtx* ctx) {
    ctx->scope = ctx->scope->parent;
}

char* cgDeclareLocal(struct cgCtx* ctx, struct str name, struct type type) {
    char* buf = MallocOrCrash(32);
    snprintf(buf, 32, "%%loc.%d", ctx->tmpCtr++);
    struct cgLocal local = {0};
    local.name = name;
    local.type = type;
    local.llvmVal = buf;
    ListAdd(&ctx->scope->locals, &local);
    return buf;
}

//NULL if not a local in the current codegen scope chain. A scope variable's slot (the hidden argument
//carrying it) is in the same table but a different namespace: a scope name is not a value (O3), so a local
//may share one, and "return out" beside a "&out" tag has to find the local. Keying both by bare name made
//it find the scope pointer instead, and return that as the array.
static struct cgLocal* cgFindLocalKind(struct cgCtx* ctx, struct str name, bool scopeVar) {
    for (struct cgScope* sc = ctx->scope; sc; sc = sc->parent) {
        for (int i = 0; i < sc->locals.len; i++) {
            struct cgLocal* l = ListGetIdx(&sc->locals, i);
            if ((l->type.bType == BASETYPE_SCOPE) == scopeVar && StrCmp(l->name, name)) return l;
        }
    }
    return NULL;
}

struct cgLocal* cgFindLocal(struct cgCtx* ctx, struct str name) {
    return cgFindLocalKind(ctx, name, false);
}

char* cgZeroValue(struct type t) {
    char* buf = MallocOrCrash(16);
    bool isPtr = (t.bType == BASETYPE_FUNC) || (t.bType == BASETYPE_SCOPE) ||
        (t.bType == BASETYPE_STRUCT && t.structMAlloc) ||
        (t.bType == BASETYPE_ARRAY && t.structMAlloc && !t.arrMalloc);
    strcpy(buf, isPtr ? "null" : "zeroinitializer");
    return buf;
}

char* cgLookupVarAddr(struct cgCtx* ctx, struct var* v);

//the runtime "ptr" value for a scopeParam field (see semantic.h): NULL means this function's or block's
//own scope (the alloca'd header for that depth); non-NULL names a scope variable, whose hidden argument
//(whatever scope the caller bound it to) is an ordinary local read.
//the slot for a block depth: 0 (not a block tag - a parameter, field or return type) and 1 (the body's
//own top level) are both the body's arena; deeper ones are the nested blocks currently open.
char* cgScopeSlotAt(struct cgCtx* ctx, int depth) {
    int idx = depth - 2;
    if (idx < 0 || idx >= ctx->blockSlots.len) return ctx->ownScopeSlot;
    return *(char**)ListGetIdx(&ctx->blockSlots, idx);
}

char* cgResolveScope(struct cgCtx* ctx, struct var* scopeParam, int depth) {
    if (!scopeParam) return cgScopeSlotAt(ctx, depth);
    char* addr = cgLookupVarAddr(ctx, scopeParam);
    char* loaded = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", loaded, addr);
    return loaded;
}

static bool typeIsRefShaped(struct type t);
static bool cgIsReference(struct type t);

//resolves the scope base's own "&"-heap-indirect storage lives in - the type-level rule a bare "&"
//field/element is now defined by: its effective scope is always the SAME as whatever contains it,
//recursively. base->type.scopeParam set (an explicit "&name") is the base case, resolved the ordinary
//way. A bare "&" base that is itself a member access (base.field) OR an index (base[i]) has no scope of
//its own to fall back to - it inherits its own base's, walking up an arbitrary chain of bare-"&" member
//accesses/indexes (freely mixed - "a[i].b[j]" resolves exactly the same way as "a.b.c") until either an
//explicitly-scoped ancestor is found, or the chain bottoms out at a plain var (a var, unlike a field or
//element, really can be its own root - a bare "&" var means "this var's own enclosing function scope",
//same as cgResolveScope(ctx, NULL) already means). Only ever called on a structMAlloc value - callers
//check first.
//O25a: a value local whose references live where its initializer built them, reached through a member or index
static struct var* cgValueHomeVar(struct operand* op) {
    while (op->opType == OPERATION_MEMBER || op->opType == OPERATION_INDEX) {
        op = *(struct operand**)ListGetIdx(&op->args, 0);
        if (op->type.structMAlloc) return NULL; //a reference on the way: its own scope decides
    }
    if (op->opType != OPERATION_READ_VAR || !op->readVar) return NULL;
    for (struct var* v = op->readVar; v; v = v->origin != v ? v->origin : NULL) {
        if (v->valueHomeSet) return v;
    }
    return NULL;
}

char* cgResolveEffectiveScope(struct cgCtx* ctx, struct operand* base) {
    //a tag belonging to a type, not this function: where the checker resolved it, else the container's (O23)
    if (base->type.scopeParam && !varIsOwnParam(base->type.scopeParam, ctx->curFunc)) {
        struct var* to;
        int depth;
        if (SemanticReferentScope(ctx->curFunc, base, &to, &depth)) return cgResolveScope(ctx, to, depth);
        if (base->opType == OPERATION_MEMBER || base->opType == OPERATION_INDEX)
            return cgResolveEffectiveScope(ctx, *(struct operand**)ListGetIdx(&base->args, 0));
        return ctx->ownScopeSlot;
    }
    if (base->type.scopeParam) return cgResolveScope(ctx, base->type.scopeParam, base->type.scopeDepth);
    if (base->opType == OPERATION_MEMBER || base->opType == OPERATION_INDEX) {
        struct operand* innerBase = *(struct operand**)ListGetIdx(&base->args, 0);
        if (cgIsReference(innerBase->type) || cgValueHomeVar(base)) {
            return cgResolveEffectiveScope(ctx, innerBase);
        }
    }
    struct var* home = base->type.structMAlloc ? NULL : cgValueHomeVar(base);
    if (home) return cgResolveScope(ctx, home->valueHome, home->valueHomeDepth);
    return ctx->ownScopeSlot;
}

char* cgValue(struct cgCtx* ctx, struct operand* op);
static bool cgCatchDispatch(struct cgCtx* ctx, struct operand* op, struct list* clauses, char* code,
                            struct type* funcType, char* endLbl);
void cgBlock(struct cgCtx* ctx, struct list* block);

//true for a type that "&"/"&name" can mark as a reference - a struct, or a compile-time-length ("T[N]") array;
//a runtime-length ("T[]") array is excluded, same reasoning as typeNeedsMallocPromotion.
//a REFERENCE - a marked struct or array of any length kind - which is what a container has to be for a slot
//inside it to live in its scope. typeIsRefShaped answers which types a marker can MAKE a reference, and leaves
//out a run-time-length array; testing containers with it made "b.a[0] = N(...)" allocate the new node in the
//writing function's own scope while storing it in the caller's array - a use-after-free
static bool cgIsReference(struct type t) {
    return t.structMAlloc && (t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_ARRAY);
}

static bool typeIsRefShaped(struct type t) {
    return (t.bType == BASETYPE_STRUCT) || (t.bType == BASETYPE_ARRAY && !t.arrMalloc);
}

//a parameter's own declared type may name ANOTHER parameter of the *same* signature as its scope tag
//(e.g. "func f(s scope, p Point<s>)") - fine for type-checking (semantic.c already resolves this), but at
//a call site that name has no meaning yet: "s" isn't a local in the CALLER's own scope, it's whatever
//scope value THIS call happens to be passing as its own "s" argument. Returns that value directly - found
//by locating which parameter index paramT's scope tag names, then evaluating the caller's own argument
//expression for that same index - instead of letting cgResolveScope try (and fail) to look "s" up as a
//caller-local. NULL when paramT's scope tag doesn't need this (bare "&", or names a scope the caller
//already has in its own scope, e.g. a scope variable of the caller itself being passed straight through).
//C2d: a constructor is the function a struct type points at as its own (an instantiation's monomorphized
//one included). It takes one hidden leading "ptr" more than its signature shows: the scope the instance
//it builds lands in, which a field holding a reference with no scope name of its own is built into.
static bool cgIsCtor(struct var* func) {
    return func->type.hasRetType && func->type.retType && func->type.retType->bType == BASETYPE_STRUCT
           && func->type.retType->ctorFunc == func;
}

//the scope a constructor call's instance lands in: the target being built into when there is one,
//otherwise the caller's own function scope - the same place a nested unnamed-scope reference went before
static char* cgCtorHereArg(struct cgCtx* ctx, struct operand* op) {
    //O18a: where the checker landed the instance - a returned local's result scope, an assignment's target
    struct var* to;
    int depth;
    if (SemanticCtorLanding(op, &to, &depth)) return cgResolveScope(ctx, to, depth);
    if (ctx->targetScopeOverride) return ctx->targetScopeOverride;
    return ctx->ownScopeSlot;
}

char* cgResolveParamScopeOverride(struct cgCtx* ctx, struct var* func, struct operand* callOp, struct type paramT) {
    (void)func;
    //T11: a run-time-length array is pointer-backed whatever marker it carries, so a "&s" on one is as
    //real a scope tag as a struct's and has to be resolved through THIS call's binding - it names the
    //CALLEE's variable, which does not exist in our frame. typeIsRefShaped answers a different question
    //(which types a marker can make a reference) and excludes arrMalloc, so such a parameter got no
    //override at all and cgBoundaryValue looked the callee's own scope up here: the compiler SEGFAULTED
    //on a temporary passed to a "T[]&s" parameter, mangling a global with a NULL owner.
    bool refLike = (paramT.bType == BASETYPE_ARRAY && paramT.arrMalloc)
                    || (typeIsRefShaped(paramT) && paramT.structMAlloc)
                    || (paramT.bType == BASETYPE_INTERFACE && paramT.structMAlloc) //O4b: it names a callee scope too
                    || (paramT.bType == BASETYPE_FUNC && paramT.structMAlloc); //D16: so does a function value's
    if (!paramT.scopeParam || !refLike) return NULL;
    return cgResolveScope(ctx, SemanticBoundScope(callOp, paramT.scopeParam), ctx->blockDepth);
}

//if t declares a destructor, registers the instance at heapPtr with scopeVal so it runs when that scope
//closes - see __olang_scope_register_dtor/emitScopeRuntime. Called from the malloc-promotion sites below,
//each of which has just heap-allocated storage for a freshly constructed instance: that allocation IS the
//construction site, which is exactly where O16 says registration belongs. A destructor-declaring type
//is reference-only (C11), so it is never an array element or an embedded field and this never needs to
//walk into an aggregate - one instance, one allocation, one registration.
void cgRegisterDtorIfNeeded(struct cgCtx* ctx, struct type t, char* scopeVal, char* heapPtr) {
    if (t.bType == BASETYPE_STRUCT) {
        if (!t.hasDestruct) return;
        char dtorSym[256];
        mangleFuncSym(t.destructFunc, dtorSym, sizeof(dtorSym));
        fprintf(ctx->fnOut, "  call void @__olang_scope_register_dtor(ptr %s, ptr %s, ptr %s)\n", scopeVal, heapPtr, dtorSym);
        return;
    }
    //no array walk, and no struct-field walk: a destructor-declaring type is reference-only (C11), so it
    //can never be an element or an embedded field in the first place. Every instance has its own
    //allocation and registers itself here, once, at its own construction (O16).
}


//true if a plain (non-referenced) value of srcT needs to be malloc-and-copied to fit a "&"-heap-indirect
//dstT - a struct, or a compile-time-length array (same rule either way, see the report on extending scope/"&" to
//arrays): dstT wants a reference, srcT doesn't have one yet. Deliberately excludes a runtime-length ("T[]")
//array target even when structMAlloc: a runtime-length array's own backing store already gets a fresh @malloc
//at the point its literal is built (cgAggregateLiteral), before this promotion step would even run -
//scope-tracking *that* allocation is a separate, not-yet-implemented step, not attempted here.
bool typeNeedsMallocPromotion(struct type dstT, struct type srcT) {
    if (dstT.bType != srcT.bType) return false;
    if (!dstT.structMAlloc || srcT.structMAlloc) return false;
    if (dstT.bType == BASETYPE_STRUCT) return true;
    if (dstT.bType == BASETYPE_ARRAY) return !dstT.arrMalloc;
    return false;
}

//true if a compile-time-length array value needs malloc-and-copy to fit a runtime-length ("T[]") target - the array-sizing
//counterpart to typeNeedsMallocPromotion above, an orthogonal axis (arrMalloc, not structMAlloc/"&" -
//see the report): dstT wants a runtime-length slice, srcT is still a compile-time-length, embedded aggregate. Applies equally
//to a fresh literal or an already-existing compile-time-length-array value (semantic.c's OperandFitsType admits both -
//see the report), but codegen doesn't need to know or care which one it's looking at here either way -
//cgPromoteFixedToRuntimeLength only ever needs srcT's own by-ref address to copy from.
bool typeNeedsRuntimeLengthPromotion(struct type dstT, struct type srcT) {
    return dstT.bType == BASETYPE_ARRAY && srcT.bType == BASETYPE_ARRAY && dstT.arrMalloc && !srcT.arrMalloc;
}

//copies a compile-time-length array's own backing storage (srcAddr, its by-ref address) into a fresh buffer -
//arena-allocated into scopeVal (own by default, or the target's own "&name" tag - see cgResolveScope),
//not a bare @malloc: a runtime-length array is implicitly reference-shaped for scope-checking purposes even with
//no explicit "&" marker, since a runtime-known length can never be embedded - see the report. Returns the
//resulting { i64, ptr } slice value - element-by-element, same convention every other aggregate-building
//loop in this file already uses (no memcpy intrinsic, kept consistent with e.g. cgAggregateLiteral's own
//runtime-length-array branch). Also registers each destructor-bearing element found in the fresh buffer (see
//cgRegisterDtorIfNeeded) - srcT is always a COMPILE-TIME-LENGTH array here (a runtime-length one is never itself promoted
//again - see typeNeedsRuntimeLengthPromotion), so its own element loop is the exact same compile-time-
//unrolled shape cgRegisterDtorIfNeeded already walks generically, regardless of whether srcAddr came from
//a fresh literal or an existing variable; no new mechanism needed, just one more call site.
char* cgStringLiteralGlobal(struct cgCtx* ctx, struct operand* op);
char* cgFloatConst(double v, bool isF32);
//T25b: a literal known while compiling that reaches a READ-ONLY array reference is never written through it, so it
//is the constant itself - static data, no arena allocation, nothing copied. NULL where that does not apply: a
//writable target, or a literal with anything not constant in it
char* cgStaticLiteral(struct cgCtx* ctx, struct operand* op, struct type dstT) {
    if (!(dstT.bType == BASETYPE_ARRAY && dstT.arrMalloc && dstT.structMAlloc && !dstT.refMut)) return NULL;
    if (op->opType == OPERATION_NOMINAL_CONVERT && op->args.len) op = *(struct operand**)ListGetIdx(&op->args, 0);
    if (!op->isLiteral || op->opType != OPERATION_NONE || op->type.bType != BASETYPE_ARRAY || op->type.arrMalloc
            || !op->type.arrLen) return NULL;
    long long n = op->type.arrLen->intLiteralVal;
    char* data;
    if (op->tok.type == TOK_STR_LIT) {
        data = cgStringLiteralGlobal(ctx, op);
    } else {
        struct type et = *op->type.arrElem;
        bool scalar = et.bType == BASETYPE_BYTE || et.bType == BASETYPE_INT32 || et.bType == BASETYPE_INT64
                      || et.bType == BASETYPE_BOOL || et.bType == BASETYPE_FLOAT32 || et.bType == BASETYPE_FLOAT64;
        if (!scalar || op->args.len != n) return NULL;
        for (int i = 0; i < op->args.len; i++) { //every element constant, or the literal is built as usual
            struct operand* e = *(struct operand**)ListGetIdx(&op->args, i);
            if (!e->isLiteral || e->opType != OPERATION_NONE) return NULL;
        }
        char ety[64];
        llvmType(et, ety, sizeof(ety));
        data = MallocOrCrash(32);
        snprintf(data, 32, "@.arr.%d", ctx->strCtr++);
        fprintf(ctx->out, "%s = private unnamed_addr constant [%lld x %s] [", data, n, ety);
        for (int i = 0; i < op->args.len; i++) {
            struct operand* e = *(struct operand**)ListGetIdx(&op->args, i);
            char v[64];
            if (et.bType == BASETYPE_FLOAT32 || et.bType == BASETYPE_FLOAT64) {
                double d = e->type.bType == BASETYPE_FLOAT32 || e->type.bType == BASETYPE_FLOAT64 ? e->floatLiteralVal : (double)e->intLiteralVal;
                snprintf(v, sizeof(v), "%s", cgFloatConst(d, et.bType == BASETYPE_FLOAT32));
            } else if (et.bType == BASETYPE_BOOL) snprintf(v, sizeof(v), "%s", e->intLiteralVal ? "true" : "false");
            else snprintf(v, sizeof(v), "%lld", et.bType == BASETYPE_BYTE ? (long long)(signed char)e->intLiteralVal : e->intLiteralVal);
            fprintf(ctx->out, "%s%s %s", i ? ", " : "", ety, v);
        }
        fputs("]\n", ctx->out);
    }
    char* r = MallocOrCrash(96);
    snprintf(r, 96, "{ i64 %lld, ptr %s }", n, data);
    return r;
}

char* cgPromoteFixedToRuntimeLength(struct cgCtx* ctx, struct type dstT, struct type srcT, char* srcAddr, char* scopeVal) {
    struct type elemT = *srcT.arrElem;
    char elemTy[256];
    llvmType(elemT, elemTy, sizeof(elemTy));
    long long elemSize = TypeGetSize(elemT);
    long long count = srcT.arrLen->intLiteralVal;
    //E12: a "T[N]&" source is already a reference, so this is a WIDENING, not a promotion - keep the
    //pointer and materialise the length beside it. Nothing is allocated and nothing is copied, so the
    //target names the very storage the source did, which is the whole point of "byte[]&" being one
    //parameter that takes any length. (It also emitted invalid IR before: llvmType of a "T[N]&" is a bare
    //"ptr", which the element-copy loop below then GEP'd as if it were an "[N x T]" aggregate.)
    if (srcT.structMAlloc) {
        char* w1 = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } undef, i64 %lld, 0\n", w1, count);
        char* w2 = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } %s, ptr %s, 1\n", w2, w1, srcAddr);
        return w2;
    }
    //sized by the TARGET's element type: when rows are promoted below, this level holds { i64, ptr }
    //descriptors, not the source's inline rows
    long long dstElemSize = TypeGetSize(*dstT.arrElem);
    (void)elemSize;
    char* bytes = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 %lld)\n", bytes, scopeVal, dstElemSize * count);
    char srcStorTy[256];
    llvmType(srcT, srcStorTy, sizeof(srcStorTy)); //"[N x ElemT]"
    //a multi-dimensional promotion ("int32[2][2]" -> "int32[][]") promotes each ROW as well: T8a makes the
    //length kind uniform across dimensions, so if the target's elements are runtime-length then the
    //source's are compile-time-length and each one needs its own allocation, with the resulting
    //{ i64, ptr } descriptor stored in this level's buffer. Without this the outer level was copied
    //verbatim and the row descriptors were nonsense - which is why a nested literal could not reach a
    //fully runtime-length target at all.
    bool promoteElems = typeNeedsRuntimeLengthPromotion(*dstT.arrElem, elemT);
    char dstElemTy[256];
    llvmType(*dstT.arrElem, dstElemTy, sizeof(dstElemTy));
    for (long long i = 0; i < count; i++) {
        char* srcElemAddr = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 0, i64 %lld\n", srcElemAddr, srcStorTy, srcAddr, i);
        char* dstElemAddr = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 %lld\n", dstElemAddr, dstElemTy, bytes, i);
        if (promoteElems) {
            char* row = cgPromoteFixedToRuntimeLength(ctx, *dstT.arrElem, elemT, srcElemAddr, scopeVal);
            fprintf(ctx->fnOut, "  store { i64, ptr } %s, ptr %s\n", row, dstElemAddr);
            continue;
        }
        char* v = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", v, elemTy, srcElemAddr);
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", elemTy, v, dstElemAddr);
    }
    cgRegisterDtorIfNeeded(ctx, srcT, scopeVal, bytes);
    char* agg1 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } undef, i64 %lld, 0\n", agg1, count);
    char* agg2 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } %s, ptr %s, 1\n", agg2, agg1, bytes);
    return agg2;
}

//srcT is the value's own checked type (which OperandFitsType allows to differ from dstT only in
//structMAlloc-ness - TypeIsSame deliberately ignores that flag for structs, see the report). A plain
//struct value (e.g. "Point[1, 2]") stored into a "&"-heap-indirect target is exactly that case: src is
//a stack address (cgValue()'s by-ref convention), and storing it as-is into a structMAlloc slot would
//leave a dangling pointer the moment src's own stack frame is gone - so that combination gets its own
//malloc-and-copy branch instead of a raw pointer store. The heap storage itself now comes from dstT's own
//scope (cgResolveScope), not a bare @malloc - see emitScopeRuntime. scopeOverride, when non-NULL, is used
//instead of resolving dstT's own scope - see cgAssign for the one case that needs this (a struct field's
//own scope isn't declared anywhere - see the report). Applies identically to a compile-time-length array target -
//see typeNeedsMallocPromotion.
char* cgCopyRuntimeLengthArray(struct cgCtx* ctx, struct type t, char* srcVal, char* scopeVal, char* liveDstAddr);
bool OperandIsLvalue(struct operand* op);

//E12c: the value already has storage, so the reference IS that storage - src is whatever cgValue produced
//(an address for a by-ref type, a { i64, ptr } descriptor for a runtime-length array). The one thing a
//borrow still has to build is a length: a compile-time-length array reaching a runtime-length reference
//keeps the pointer it already has and materialises the length it knows statically beside it. That is E12's
//widening half, which copies nothing - distinct from the by-value "T[N]" -> "T[]" conversion next to it,
//which does allocate because the two representations genuinely differ.
static char* cgBorrowValue(struct cgCtx* ctx, struct type dstT, struct type srcT, char* src) {
    if (dstT.bType != BASETYPE_ARRAY || !dstT.arrMalloc || srcT.arrMalloc) return src;
    long long count = srcT.arrLen ? srcT.arrLen->intLiteralVal : 0;
    char* w1 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } undef, i64 %lld, 0\n", w1, count);
    char* w2 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } %s, ptr %s, 1\n", w2, w1, src);
    return w2;
}

//true when op is an lvalue being taken as a reference: E12c borrows it rather than copying
static bool cgIsBorrow(struct type dstT, struct type srcT, bool srcIsLvalue) {
    return dstT.structMAlloc && !srcT.structMAlloc && srcIsLvalue
        && (srcT.bType == BASETYPE_STRUCT || srcT.bType == BASETYPE_ARRAY);
}

//dstHoldsLiveValue says whether dstAddr already contains a valid value of dstT - true only for an
//ASSIGNMENT to an existing lvalue, false at every initialization (a var-decl slot, a struct field or array
//element being built, a global's initializer), where the storage is still undefined. Only one thing reads
//O8a on the stack. The arena aligns what it hands out by size; an alloca is aligned by LLVM from the
//ELEMENT type instead, so "float64[8]" sat at 8 bytes and no vector load could use it. Same rule here, so
//where storage lives stops deciding whether it is SIMD-ready. Harmless where it is not wanted: over-
//aligning a slot costs a few bytes of frame and nothing at run time.
static long long cgStackAlign(struct type t) {
    long long sz = TypeGetSize(t);
    if (sz >= 64) return 64;
    if (sz >= 32) return 32;
    long long nat = TypeGetAlign(t);
    return nat > 0 ? nat : 8;
}

//TBAA (type-based alias analysis). olang's types cannot be punned (T36): there are no unions, no pointer
//casts and no reinterpretation, and a numeric conversion is a value conversion rather than a reread of the
//same bytes - so an access of one type never overlaps an access of another. Telling LLVM that is what lets
//it hoist an array's buffer pointer out of a loop that stores elements: without it the pointer is reloaded
//every iteration, because the store might have overwritten the descriptor it came from, and a loop whose
//address changes per iteration cannot vectorize at all.
//There are TWO families per type, and which one an access gets is decided by the LAST step of its path: an
//array ELEMENT (reached by indexing) or a FIELD (a struct member, a local, a global). That split is sound
//here because no storage is reachable both ways - olang has no way to build an "int32[]" view over a
//"Point[]", so a field is never nameable as an element of that same storage. It is what lets a count kept
//beside a buffer stay in a register across a loop that writes the buffer, which is the whole cost of an
//append. "pts[i].x" is a FIELD access, since its last step is the member - consistently so from every path
//that can reach it.
//CONSISTENCY IS THE OBLIGATION: every access to the same storage must use the same family, or LLVM is told
//two aliasing accesses do not alias. So an array literal's element stores are element-tagged exactly as a
//later read of them is.
//Deliberately narrow. Only the six primitives and the runtime-length array descriptor are tagged;
//aggregates, references, and anything reached through a CHOICE PAYLOAD stay untagged, which means "may
//alias anything" and is always the safe answer. The payload is the one place olang could pun - two cases
//can put different types in the same bytes - so it is excluded rather than reasoned about.
static const char* cgTbaa(struct type t, bool elem) {
    switch (t.bType) {
        case BASETYPE_BOOL: return elem ? ", !tbaa !31" : ", !tbaa !21";
        case BASETYPE_BYTE: return elem ? ", !tbaa !32" : ", !tbaa !22";
        case BASETYPE_INT32: return elem ? ", !tbaa !33" : ", !tbaa !23";
        case BASETYPE_INT64: return elem ? ", !tbaa !34" : ", !tbaa !24";
        case BASETYPE_FLOAT32: return elem ? ", !tbaa !35" : ", !tbaa !25";
        case BASETYPE_FLOAT64: return elem ? ", !tbaa !36" : ", !tbaa !26";
        //the "{ i64, ptr }" descriptor. llvmType gives a runtime-length array that shape whatever marker it
        //carries (T11), so the marker is irrelevant here; a compile-time-length array is inline storage or
        //a bare ptr and stays untagged. An element variant is needed too, for a "T[][]"'s rows.
        case BASETYPE_ARRAY: return t.arrMalloc ? (elem ? ", !tbaa !37" : ", !tbaa !27") : "";
        default: return "";
    }
}

//it: an unmarked runtime-length array reuses the buffer it already has when the incoming length matches.
void cgStoreInto(struct cgCtx* ctx, struct type dstT, struct type srcT, char* src, char* dstAddr, char* scopeOverride, bool dstHoldsLiveValue, bool srcIsLvalue, bool dstIsElem) {
    //E12c: taking a reference to an existing value BORROWS it, so the reference names that very instance
    //rather than a copy of it. Only a temporary, which has no storage to borrow, is allocated into the
    //target's scope, and that is construction rather than copying. srcIsLvalue is what tells the two apart
    //(a type pair cannot); the semantic side has already checked that the borrowed storage outlives the
    //target's scope. A runtime-length array stores its { i64, ptr } descriptor, everything else the address
    //cgValue already handed us for a by-ref type.
    //E12d/T33: an interface slot holds the two-word pair, whether it was just built from a concrete value
    //(cgValueForTarget) or copied from another interface value
    if (dstT.bType == BASETYPE_INTERFACE) {
        fprintf(ctx->fnOut, "  store { ptr, ptr } %s, ptr %s\n", src, dstAddr);
        return;
    }
    //C2e: an array of a length known only at run time copied into fixed storage (an inline field) - its
    //length is checked once, here, per copy, and a mismatch aborts as a bad slice bound does
    if (dstT.bType == BASETYPE_ARRAY && !dstT.arrMalloc && !dstT.structMAlloc && dstT.arrLen
            && srcT.bType == BASETYPE_ARRAY && srcT.arrMalloc) {
        long long n = dstT.arrLen->intLiteralVal;
        char* len = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 0\n", len, src);
        char* ptr = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 1\n", ptr, src);
        int id = ctx->lblCtr++;
        char badLbl[32], okLbl[32];
        snprintf(badLbl, sizeof(badLbl), "fit.bad.%d", id);
        snprintf(okLbl, sizeof(okLbl), "fit.ok.%d", id);
        char* bad = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp ne i64 %s, %lld\n", bad, len, n);
        fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", bad, badLbl, okLbl);
        ctx->terminated = true;
        cgLabel(ctx, badLbl);
        fputs("  call void @__olang_check_failed(ptr @__olang_msg_arrayfit)\n", ctx->fnOut);
        cgBr(ctx, okLbl);
        cgLabel(ctx, okLbl);
        fprintf(ctx->fnOut, "  call void @llvm.memcpy.p0.p0.i64(ptr %s, ptr %s, i64 %lld, i1 false)\n",
                dstAddr, ptr, n * TypeGetSize(*dstT.arrElem));
        return;
    }
    if (cgIsBorrow(dstT, srcT, srcIsLvalue)) {
        char* borrowed = cgBorrowValue(ctx, dstT, srcT, src);
        char* ty = (dstT.bType == BASETYPE_ARRAY && dstT.arrMalloc) ? "{ i64, ptr }" : "ptr";
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", ty, borrowed, dstAddr);
        return;
    }
    if (typeNeedsMallocPromotion(dstT, srcT)) {
        char storTy[256];
        llvmType(srcT, storTy, sizeof(storTy));
        char* scopeVal = scopeOverride ? scopeOverride : cgResolveScope(ctx, dstT.scopeParam, dstT.scopeDepth);
        char* heap = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 %lld)\n", heap, scopeVal, TypeGetSize(srcT));
        char* loaded = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", loaded, storTy, src);
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", storTy, loaded, heap);
        fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", heap, dstAddr);
        cgRegisterDtorIfNeeded(ctx, srcT, scopeVal, heap);
        return;
    }
    if (typeNeedsRuntimeLengthPromotion(dstT, srcT)) {
        char* scopeVal = scopeOverride ? scopeOverride : cgResolveScope(ctx, dstT.scopeParam, dstT.scopeDepth);
        char* slice = cgPromoteFixedToRuntimeLength(ctx, dstT, srcT, src, scopeVal);
        fprintf(ctx->fnOut, "  store { i64, ptr } %s, ptr %s\n", slice, dstAddr);
        return;
    }
    //T11 gone: a runtime-length array follows its marker like any other, so the four combinations are the
    //same four every other type has, and only reference-to-reference is a descriptor store:
    //  value    -> value      copy (value semantics)
    //  value    -> reference  copy into fresh storage (E12 promotion - the "T[N]" -> "T[N]&" case, which
    //                         typeNeedsMallocPromotion handles for a compile-time length and used to skip
    //                         here, leaving the new reference aliasing the value's own buffer)
    //  reference-> value      copy out (E12's other direction)
    //  reference-> reference  store the descriptor - repointing, which is what S4a says assignment to a
    //                         reference means
    if (dstT.bType == BASETYPE_ARRAY && dstT.arrMalloc
            && srcT.bType == BASETYPE_ARRAY && srcT.arrMalloc
            && !(dstT.structMAlloc && srcT.structMAlloc)) {
        char* scopeVal = scopeOverride ? scopeOverride : cgResolveScope(ctx, dstT.scopeParam, dstT.scopeDepth);
        //only a VALUE target may reuse the buffer it already holds: repointing a reference has to produce
        //fresh storage, or the promotion would write through whatever the reference last named
        bool canReuse = dstHoldsLiveValue && !dstT.structMAlloc;
        char* copied = cgCopyRuntimeLengthArray(ctx, dstT, src, scopeVal, canReuse ? dstAddr : NULL);
        fprintf(ctx->fnOut, "  store { i64, ptr } %s, ptr %s\n", copied, dstAddr);
        return;
    }
    char ty[256];
    llvmType(dstT, ty, sizeof(ty));
    if (typeIsByRef(dstT)) {
        char* tmp = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", tmp, ty, src);
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", ty, tmp, dstAddr);
    } else {
        fprintf(ctx->fnOut, "  store %s %s, ptr %s%s\n", ty, src, dstAddr, cgTbaa(dstT, dstIsElem));
    }
}

char* cgValue(struct cgCtx* ctx, struct operand* op);
char* cgAddr(struct cgCtx* ctx, struct operand* op);

//wraps cgValue() with the ambient-override threading described on ctx->targetScopeOverride: when op is
//about to be promoted into dstT ("&"-heap-indirect, op itself a plain value), the scope that promotion
//will use is resolved *before* op's own value is built (rather than after, as a bare cgValue()+cgStoreInto
//pair would), and set as the ambient override for the duration of that build - so if op is itself a
//struct/array literal, any of ITS OWN bare-"&" fields (built recursively by cgAggregateLiteral, which
//consults ctx->targetScopeOverride for exactly this) inherit the *same* scope dstT is being promoted into,
//instead of each independently defaulting to ctx->ownScopeSlot. This is the general, type-level version of
//what cgAssign's own scopeOverride computation already did for one narrow case - see the report. A no-op
//(plain cgValue) when no promotion is needed here at all.
static char* cgInterfaceValue(struct cgCtx* ctx, struct type ifaceT, struct operand* op, char* scopeOverride);

//D16c: a lambda capturing only values - a temporary, built where it lands, as text is
static bool cgIsFreshClosure(struct operand* op) {
    return op->opType == OPERATION_READ_VAR && op->readVar && op->readVar->isLambda
           && op->readVar->lambdaCaptures.len && !op->lambdaHomeSet;
}

//storage made by the expression itself, with nothing to borrow - built in the scope of whatever it lands in
//(E12c): rendered or joined text, a capturing lambda's closure, "Array<T>(n)" and a comprehension (E27)
static bool cgIsFreshTemp(struct operand* op) {
    //E28: a conditional either of whose values is one - only that value is built in the target's scope
    if (op->opType == OPERATION_COND && op->args.len == 3) {
        return cgIsFreshTemp(*(struct operand**)ListGetIdx(&op->args, 1)) || cgIsFreshTemp(*(struct operand**)ListGetIdx(&op->args, 2));
    }
    return op->opType == OPERATION_STR_OF || op->opType == OPERATION_CONCAT || cgIsFreshClosure(op)
           || op->opType == OPERATION_SIZED_ARRAY_ALLOC || op->opType == OPERATION_COMPREHENSION;
}

char* cgValueForTarget(struct cgCtx* ctx, struct operand* op, struct type dstT, char* scopeOverride) {
    //E12d: an interface target takes the (dispatch table, instance) pair, built from the operand itself -
    //the instance half is a borrow, so it needs the lvalue's address, which a produced value has already
    //discarded. Every cgStoreInto site funnels through here, so this is the one place it has to happen.
    if (dstT.bType == BASETYPE_INTERFACE && op->type.bType != BASETYPE_INTERFACE) {
        return cgInterfaceValue(ctx, dstT, op, scopeOverride);
    }
    //E11a/E11b: "$x" and a text join produce fresh storage with nothing to borrow, which makes them
    //temporaries in E12c's sense - so they are built in the TARGET's scope, exactly as a struct literal
    //is. Building them in the block the expression sits in instead made every string-building function
    //impossible: the result could never outlive the block, so "return "hi " + name" was rejected.
    bool isFreshText = cgIsFreshTemp(op);
    if (!isFreshText && !typeNeedsMallocPromotion(dstT, op->type) && !typeNeedsRuntimeLengthPromotion(dstT, op->type))
        return cgValue(ctx, op);
    char* scopeVal = scopeOverride ? scopeOverride : cgResolveScope(ctx, dstT.scopeParam, dstT.scopeDepth);
    char* prev = ctx->targetScopeOverride;
    ctx->targetScopeOverride = scopeVal;
    char* v = cgValue(ctx, op);
    ctx->targetScopeOverride = prev;
    return v;
}

//converts op's cgValue() (a ptr for by-ref types) into the real value to use at a call-argument/return
//boundary, where aggregates cross by value rather than by our internal storage-pointer convention.
//dstT is the declared type of the slot being crossed into (a parameter's type, or the function's declared
//return type) - needed for the same malloc-promotion case cgStoreInto handles (a plain struct value, e.g.
//a literal, crossing into a "&"-heap-indirect parameter/return type): without it, op's own by-ref
//address would get loaded as a raw aggregate and handed to a boundary that expects a "ptr", corrupting
//whatever bytes happen to be read back as a pointer - a real, silent memory-safety bug this fixes.
//Resolves dstT's scope and sets it as the ambient override (see cgValueForTarget) *before* building op's
//own value, not after - same reordering, same reason: a literal argument/return value's own nested
//bare-"&" fields need to see the target scope while they're being built, not once it's too late.
//true once this object has already written `sym`; records it otherwise. See cgCtx.emittedSyms.
static bool cgSymAlreadyEmitted(struct cgCtx* ctx, char* sym) {
    for (int i = 0; i < ctx->emittedSyms.len; i++) {
        if (strcmp(*(char**)ListGetIdx(&ctx->emittedSyms, i), sym) == 0) return true;
    }
    char* copy = MallocOrCrash(strlen(sym) +1);
    strcpy(copy, sym);
    ListAdd(&ctx->emittedSyms, &copy);
    return false;
}

//a concrete type's name in a dispatch-table or thunk symbol. A declared type is owner-qualified as always;
//a built-in (M19 lets one carry methods, so it can satisfy an interface) has no owner and is spelled by
//its shape, which T25a makes its identity - length and marker included.
static void cgConcreteName(struct type t, char* buf, size_t n) {
    if (t.owner && t.name.len) { mangleTypeName(t.owner, t.name, buf, n); return; }
    struct str sn = typeShortName(t);
    snprintf(buf, n, "builtin.%.*s", sn.len, sn.ptr);
}

//T29b/T33: whether a concrete type's interface instance is a boxed run-time-length array descriptor rather
//than the instance's own address - see cgInterfaceValue
static bool cgIfaceBoxesDescriptor(struct type t) {
    return t.bType == BASETYPE_ARRAY && t.arrMalloc;
}

//the function an interface's dispatch table points at for one method. Usually the real function - but a
//method declared with a BY-VALUE receiver has a different calling convention from the dispatch (which
//always hands over a pointer to the instance), so it gets a one-line adapter that loads the aggregate and
//forwards. T31 deliberately admits both receiver shapes, on the grounds that the latitude E12 gives every
//other argument should not stop at this one; the thunk is what that costs, and it is confined to here.
static void cgItabEntry(struct cgCtx* ctx, struct type concrete, struct type iface, struct var* m,
                        char* out, size_t n) {
    struct var* impl = InterfaceMethodImpl(concrete, m);
    char real[256];
    mangleFuncSym(impl, real, sizeof(real));
    struct var* recv = ListGetIdx(&impl->type.vars, 0);
    char recvTy[256];
    llvmType(recv->type, recvTy, sizeof(recvTy));
    if (strcmp(recvTy, "ptr") == 0) { snprintf(out, n, "%s", real); return; }
    //T29b: a "T[N]" instance reaching a "T[]&" receiver - the instance pointer IS the storage, and the
    //length is the concrete type's own, so the thunk builds the pair rather than loading one
    bool widens = recv->type.bType == BASETYPE_ARRAY && recv->type.arrMalloc && !concrete.arrMalloc;

    char ifaceName[200], concreteName[200];
    mangleTypeName(iface.owner, iface.name, ifaceName, sizeof(ifaceName));
    cgConcreteName(concrete, concreteName, sizeof(concreteName));
    snprintf(out, n, "@olang.thunk.%s.%s.%.*s", ifaceName, concreteName, m->name.len, m->name.ptr);
    if (cgSymAlreadyEmitted(ctx, out)) return;

    char retTy[256];
    llvmFuncRetType(impl->type, retTy, sizeof(retTy));
    char params[4096] = "", args[4096] = "";
    int nScope = impl->type.scopeVars.len;
    for (int i = 0; i < nScope; i++) {
        char p[64], a[64];
        snprintf(p, sizeof(p), "%sptr %%s%d", i > 0 ? ", " : "", i);
        snprintf(a, sizeof(a), "%sptr %%s%d", i > 0 ? ", " : "", i);
        strncat(params, p, sizeof(params) - strlen(params) -1);
        strncat(args, a, sizeof(args) - strlen(args) -1);
    }
    //O4b: a by-value receiver has no scope of its own, but the dispatch passes the instance's anyway, first
    if (!recv->type.scopeParam) {
        char rest[4200];
        snprintf(rest, sizeof(rest), "ptr %%rscope%s%.4000s", nScope > 0 ? ", " : "", params);
        snprintf(params, sizeof(params), "%.4000s", rest);
    }
    strncat(params, nScope > 0 || !recv->type.scopeParam ? ", ptr %recv" : "ptr %recv", sizeof(params) - strlen(params) -1);
    char a0[400];
    snprintf(a0, sizeof(a0), "%s%.256s %%r0", nScope > 0 ? ", " : "", recvTy);
    strncat(args, a0, sizeof(args) - strlen(args) -1);
    for (int i = 1; i < impl->type.vars.len; i++) {
        struct var* p = ListGetIdx(&impl->type.vars, i);
        char pty[256], piece[400];
        llvmType(p->type, pty, sizeof(pty));
        snprintf(piece, sizeof(piece), ", %.256s %%a%d", pty, i);
        strncat(params, piece, sizeof(params) - strlen(params) -1);
        strncat(args, piece, sizeof(args) - strlen(args) -1);
    }
    fprintf(ctx->out, "define linkonce_odr %s %s(%s) {\nentry:\n", retTy, out, params);
    if (widens) {
        fprintf(ctx->out, "  %%r0.0 = insertvalue { i64, ptr } undef, i64 %lld, 0\n"
                "  %%r0 = insertvalue { i64, ptr } %%r0.0, ptr %%recv, 1\n",
                concrete.arrLen ? concrete.arrLen->intLiteralVal : 0);
    } else {
        fprintf(ctx->out, "  %%r0 = load %s, ptr %%recv\n", recvTy);
    }
    if (strcmp(retTy, "void") == 0) {
        fprintf(ctx->out, "  call void %s(%s)\n  ret void\n}\n\n", real, args);
    } else {
        fprintf(ctx->out, "  %%r = call %s %s(%s)\n  ret %s %%r\n}\n\n", retTy, real, args, retTy);
    }
}

//T31/T33: the dispatch table for one (interface, concrete type) pair - the method pointers, in the
//interface's own declaration order, which is the order a dispatch indexes by. Emitted "linkonce_odr" for
//exactly the reason a generic's instantiation is: the pair is created by whichever module writes the
//conversion, no module owns it, and the linker keeps one. That also makes the table's ADDRESS a stable
//identity for the concrete type, which is what lets "==" on two interface values compare types (T33)
//without a separate type descriptor.
//
//One entry follows the methods: how "==" compares two instances of this type once their tables agree (T33).
//Null means the instance pointers themselves are the identity, which holds for everything except a boxed
//array descriptor - two conversions of one array reference box it twice, so the boxes' addresses differ
//while the storage they name is the same. The trailing slot never shifts a method's index.
static char* cgItable(struct cgCtx* ctx, struct type concrete, struct type iface) {
    char ifaceName[200], concreteName[200];
    mangleTypeName(iface.owner, iface.name, ifaceName, sizeof(ifaceName));
    cgConcreteName(concrete, concreteName, sizeof(concreteName));
    char* sym = MallocOrCrash(512);
    snprintf(sym, 512, "@olang.itab.%s.%s", ifaceName, concreteName);
    if (cgSymAlreadyEmitted(ctx, sym)) return sym;
    //every thunk this table needs is written first: a define cannot be nested inside the constant below
    char entries[8192] = "";
    for (int i = 0; i < iface.vars.len; i++) {
        struct var* m = ListGetIdx(&iface.vars, i);
        char fn[512], piece[600];
        cgItabEntry(ctx, concrete, iface, m, fn, sizeof(fn));
        snprintf(piece, sizeof(piece), "%sptr %s", i > 0 ? ", " : "", fn);
        strncat(entries, piece, sizeof(entries) - strlen(entries) -1);
    }
    char* eqFn = "null";
    if (cgIfaceBoxesDescriptor(concrete)) {
        eqFn = "@olang.ieq.arr";
        if (!cgSymAlreadyEmitted(ctx, eqFn)) {
            //the same storage and the same length: what "the same instance" means for an array (T33)
            fprintf(ctx->out, "define linkonce_odr i1 @olang.ieq.arr(ptr %%a, ptr %%b) {\nentry:\n"
                    "  %%da = load { i64, ptr }, ptr %%a\n  %%db = load { i64, ptr }, ptr %%b\n"
                    "  %%la = extractvalue { i64, ptr } %%da, 0\n  %%lb = extractvalue { i64, ptr } %%db, 0\n"
                    "  %%pa = extractvalue { i64, ptr } %%da, 1\n  %%pb = extractvalue { i64, ptr } %%db, 1\n"
                    "  %%el = icmp eq i64 %%la, %%lb\n  %%ep = icmp eq ptr %%pa, %%pb\n"
                    "  %%r = and i1 %%el, %%ep\n  ret i1 %%r\n}\n\n");
        }
    }
    char piece[300];
    snprintf(piece, sizeof(piece), "%sptr %s", iface.vars.len > 0 ? ", " : "", eqFn);
    strncat(entries, piece, sizeof(entries) - strlen(entries) -1);
    fprintf(ctx->out, "%s = linkonce_odr constant [%d x ptr] [%s]\n", sym, iface.vars.len +1, entries);
    return sym;
}

//E12d: pair a concrete value with the dispatch table for its type. The instance half is an ordinary E12c
//borrow - the interface names the very instance, never a copy of it - so an lvalue contributes its own
//storage and only a temporary, having none, is constructed in the target's scope.
static char* cgInterfaceValue(struct cgCtx* ctx, struct type ifaceT, struct operand* op, char* scopeOverride) {
    char* itab = cgItable(ctx, op->type, ifaceT);
    char* data;
    //T29b: a run-time-length array is a { length, storage } pair held BY VALUE, so it has no address of its
    //own to point at. An unmarked one is a value type and an lvalue of it is borrowed like any other value
    //(its slot, which holds the pair). A marked one is a reference, and its slot is not where the instance
    //lives - a parameter's slot dies with the call - so the pair is boxed into the interface's own scope;
    //the storage it names is what the lifetime check already judged. Either way the dispatch reaches the
    //method through the by-value thunk, which loads the pair back out.
    if (cgIfaceBoxesDescriptor(op->type) && !(OperandIsLvalue(op) && !op->type.structMAlloc)) {
        char* scopeVal = scopeOverride ? scopeOverride : cgResolveScope(ctx, ifaceT.scopeParam, ifaceT.scopeDepth);
        char* v = cgValue(ctx, op);
        data = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 16)\n", data, scopeVal);
        fprintf(ctx->fnOut, "  store { i64, ptr } %s, ptr %s\n", v, data);
    } else if (cgIfaceBoxesDescriptor(op->type)) {
        data = cgAddr(ctx, op);
    } else if (typeIsByRef(op->type) || op->type.structMAlloc) {
        data = cgValue(ctx, op); //already an address: a plain aggregate's storage, or the pointer a "&" holds
    } else if (OperandIsLvalue(op)) {
        data = cgAddr(ctx, op); //a scalar-shaped lvalue (a named primitive, a choice value) - borrow its slot
    } else {
        char* scopeVal = scopeOverride ? scopeOverride : cgResolveScope(ctx, ifaceT.scopeParam, ifaceT.scopeDepth);
        char storTy[256];
        llvmType(op->type, storTy, sizeof(storTy));
        char* v = cgValue(ctx, op);
        data = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 %lld)\n",
                data, scopeVal, TypeGetSize(op->type));
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", storTy, v, data);
        cgRegisterDtorIfNeeded(ctx, op->type, scopeVal, data);
    }
    char* w1 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue { ptr, ptr } undef, ptr %s, 0\n", w1, itab);
    char* w2 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue { ptr, ptr } %s, ptr %s, 1\n", w2, w1, data);
    return w2;
}

char* cgBoundaryValue(struct cgCtx* ctx, struct operand* op, struct type dstT, char* scopeOverride) {
    //E12d: a concrete value reaching an interface target becomes the (dispatch table, instance) pair
    if (dstT.bType == BASETYPE_INTERFACE && op->type.bType != BASETYPE_INTERFACE) {
        return cgInterfaceValue(ctx, dstT, op, scopeOverride);
    }
    //E12c: an lvalue crossing into a "&" parameter or return slot is borrowed - the callee gets the very
    //instance the caller named. This is what E12a used to forbid outright, back when the only thing that
    //could happen here was a silent copy.
    if (cgIsBorrow(dstT, op->type, OperandIsLvalue(op))) {
        return cgBorrowValue(ctx, dstT, op->type, cgValue(ctx, op));
    }
    //E12's other direction: a reference crossing into a VALUE parameter copies out, so the aggregate has
    //to be loaded from the pointer the reference holds. cgStoreInto has done this for a var-decl or an
    //assignment since E12c; a call boundary never did, and cgValue's loaded pointer was handed straight to
    //a parameter expecting the aggregate - invalid IR, caught the moment a method-style call put a
    //reference receiver against a by-value first parameter.
    //structs only: D9a forbids a by-value array parameter, so a struct is the only thing that can be a
    //by-value target here - and including arrays wrongly caught E12's T[N]& -> T[] widening, which keeps
    //the pointer and materialises a length rather than loading anything
    if (!dstT.structMAlloc && op->type.structMAlloc && dstT.bType == BASETYPE_STRUCT
            && op->type.bType == BASETYPE_STRUCT) {
        char* refPtr = cgValue(ctx, op);
        char ty[256];
        llvmType(dstT, ty, sizeof(ty));
        char* loaded = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", loaded, ty, refPtr);
        return loaded;
    }
    if (typeNeedsMallocPromotion(dstT, op->type)) {
        char storTy[256];
        llvmType(op->type, storTy, sizeof(storTy));
        char* scopeVal = scopeOverride ? scopeOverride : cgResolveScope(ctx, dstT.scopeParam, dstT.scopeDepth);
        char* prev = ctx->targetScopeOverride;
        ctx->targetScopeOverride = scopeVal;
        char* v = cgValue(ctx, op);
        ctx->targetScopeOverride = prev;
        char* heap = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 %lld)\n", heap, scopeVal, TypeGetSize(op->type));
        char* loaded = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", loaded, storTy, v);
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", storTy, loaded, heap);
        cgRegisterDtorIfNeeded(ctx, op->type, scopeVal, heap);
        return heap;
    }
    //E11a/E11b: rendered or joined text is a temporary built in the TARGET's scope - at a return, the result
    //type's; at an argument, the parameter's. Only stores and declarations did this, so "return $a $b"
    //built the text in the function's own block scope and returned it dangling - read back correctly only
    //until something reused the freed chunk.
    if (cgIsFreshTemp(op)) {
        char* scopeVal = scopeOverride ? scopeOverride : cgResolveScope(ctx, dstT.scopeParam, dstT.scopeDepth);
        char* prev = ctx->targetScopeOverride;
        ctx->targetScopeOverride = scopeVal;
        char* tv = cgValue(ctx, op);
        ctx->targetScopeOverride = prev;
        return tv;
    }
    char* st = cgStaticLiteral(ctx, op, dstT);
    if (st) return st;
    if (typeNeedsRuntimeLengthPromotion(dstT, op->type)) {
        //T11a: a literal promoted into a run-time-length reference is built in the target's scope, elements
        //and all - its reference elements are allocated as it is built, before the copy
        char* scopeVal = scopeOverride ? scopeOverride : cgResolveScope(ctx, dstT.scopeParam, dstT.scopeDepth);
        char* prev = ctx->targetScopeOverride;
        ctx->targetScopeOverride = scopeVal;
        char* pv = cgValue(ctx, op);
        ctx->targetScopeOverride = prev;
        return cgPromoteFixedToRuntimeLength(ctx, dstT, op->type, pv, scopeVal);
    }
    char* v = cgValue(ctx, op);
    if (!typeIsByRef(op->type)) return v;
    char ty[256];
    llvmType(op->type, ty, sizeof(ty));
    char* tmp = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load %s, ptr %s%s\n", tmp, ty, v,
            cgTbaa(op->type, op->opType == OPERATION_INDEX));
    return tmp;
}

char* cgLoadOrAddr(struct cgCtx* ctx, struct type t, char* addr, bool elem) {
    if (typeIsByRef(t)) return addr;
    char ty[256];
    llvmType(t, ty, sizeof(ty));
    char* result = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load %s, ptr %s%s\n", result, ty, addr, cgTbaa(t, elem));
    return result;
}

char* cgLookupVarAddr(struct cgCtx* ctx, struct var* v) {
    struct cgLocal* l = cgFindLocalKind(ctx, v->name, v->type.bType == BASETYPE_SCOPE);
    if (l) return l->llvmVal;
    char* buf = MallocOrCrash(256);
    //a function named as a VALUE (passed to a func-type parameter) is its own symbol, not storage holding
    //one - and M21 makes that symbol depend on whether it is a method, exactly as at a call
    if (v->type.bType == BASETYPE_FUNC) mangleFuncSym(v, buf, 256);
    else mangleGlobal(v->owner, v->name, buf, 256);
    return buf;
}

static void cgBoundsFailed(struct cgCtx* ctx, struct operand* op, char* okLbl, char* badLbl);

char* cgIndexAddr(struct cgCtx* ctx, struct operand* op) {
    struct operand* base = *(struct operand**)ListGetIdx(&op->args, 0);
    struct operand* idx = *(struct operand**)ListGetIdx(&op->args, 1);
    char idxTy[64];
    llvmType(idx->type, idxTy, sizeof(idxTy));
    char* idxVal = cgValue(ctx, idx);

    //E16: an ordinary index is NOT checked at run time - the same reading C gives it. E16d's "try a[i]" is
    //the opt-in: it asks for the check and takes the failure as the bare error, so a checked access is
    //visible both where it is written and in the enclosing signature. What is free stays free either way -
    //a constant index into a fixed-size array is settled at compile time (see OperandIndex), and a SLICE
    //is still always checked (E16b) because that cost is per slice expression, never per element access.
    if (op->isTried || op->checkRoot) {
        //widened for the compare: an Int64 already is, a Byte is unsigned (T4) and zero-extends
        char* idx64 = idxVal;
        if (idx->type.bType != BASETYPE_INT64) {
            idx64 = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = %s %s %s to i64\n", idx64, idx->type.bType == BASETYPE_BYTE ? "zext" : "sext",
                    idxTy, idxVal);
        }
        char* lenVal;
        if (base->type.arrMalloc) {
            char* lenBase = cgValue(ctx, base);
            lenVal = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 0\n", lenVal, lenBase);
        } else {
            lenVal = MallocOrCrash(32);
            snprintf(lenVal, 32, "%lld", base->type.arrLen ? base->type.arrLen->intLiteralVal : 0);
        }
        char* nonNeg = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp sge i64 %s, 0\n", nonNeg, idx64);
        char* ltLen = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp slt i64 %s, %s\n", ltLen, idx64, lenVal);
        char* inRange = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", inRange, nonNeg, ltLen);
        int bid = ctx->lblCtr++;
        char badLbl[32], okLbl[32];
        snprintf(badLbl, sizeof(badLbl), "idx.bad.%d", bid);
        snprintf(okLbl, sizeof(okLbl), "idx.ok.%d", bid);
        fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", inRange, okLbl, badLbl);
        ctx->terminated = true;
        cgBoundsFailed(ctx, op, okLbl, badLbl);
    }
    struct type elemType = *base->type.arrElem;
    char elemTy[256];
    llvmType(elemType, elemTy, sizeof(elemTy));
    char* result = cgNewTmp(ctx);

    if (base->type.arrMalloc) {
        char* baseVal = cgValue(ctx, base); //{ i64, ptr } aggregate
        char* dataPtr = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 1\n", dataPtr, baseVal);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, %s %s\n", result, elemTy, dataPtr, idxTy, idxVal);
    } else {
        //baseVal is a ptr to [N x ElemT] either way - cgValue()'s by-ref convention hands back the
        //embedded array's own storage address when it's embedded, and typeIsByRef is false for a
        //structMAlloc array, so cgValue there instead LOADS and hands back the already-heap-allocated
        //pointer directly - same GEP shape needed in both cases, just where the pointer came from differs
        char* baseVal = cgValue(ctx, base);
        struct type embeddedShape = base->type;
        embeddedShape.structMAlloc = false; //force the raw [N x ElemT] spelling regardless of ref-ness -
                                             //mirrors structAggSpelling's own "regardless of structMAlloc" rule
        char storTy[256];
        llvmType(embeddedShape, storTy, sizeof(storTy));
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 0, %s %s\n", result, storTy, baseVal, idxTy, idxVal);
    }
    return result;
}

char* cgMemberAddr(struct cgCtx* ctx, struct operand* op) {
    struct operand* base = *(struct operand**)ListGetIdx(&op->args, 0);
    //D8d: the results of one call spread over a call's arguments - the first argument evaluates it, the rest
    //read the same value (the arguments are lowered in order, so the first dominates them)
    char* baseVal = base->isSpreadSource && op->spreadIndex > 0 ? base->spreadVal : cgValue(ctx, base); //struct: always a ptr
    if (base->isSpreadSource && op->spreadIndex == 0) base->spreadVal = baseVal;
    int idx = -1;
    for (int i = 0; i < base->type.vars.len; i++) {
        struct var* mv = ListGetIdx(&base->type.vars, i);
        if (StrCmp(mv->name, op->memberName)) { idx = i; break; }
    }
    if (idx < 0) ErrorBugFound();
    char storTy[256];
    structAggSpelling(base->type, storTy, sizeof(storTy));
    char* result = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 %d\n", result, storTy, baseVal, idx);
    return result;
}

char* cgAddr(struct cgCtx* ctx, struct operand* op) {
    switch (op->opType) {
        case OPERATION_READ_VAR: return cgLookupVarAddr(ctx, op->readVar);
        case OPERATION_INDEX: return cgIndexAddr(ctx, op);
        case OPERATION_MEMBER: return cgMemberAddr(ctx, op);
        default: ErrorBugFound(); return NULL;
    }
}

void emitLLVMCharEscape(FILE* out, unsigned char c) {
    if (c == '\\' || c == '"' || c < 32 || c >= 127) fprintf(out, "\\%02X", c);
    else fputc(c, out);
}

char* cgGlobalStringConst(struct cgCtx* ctx, char* cStr) {
    int len = (int)strlen(cStr) +1; //+1 for the trailing NUL, so printf("%s", ...) works on it
    char name[32];
    snprintf(name, sizeof(name), "@.str.%d", ctx->strCtr++);
    fprintf(ctx->out, "%s = private unnamed_addr constant [%d x i8] c\"", name, len);
    for (int i = 0; cStr[i]; i++) emitLLVMCharEscape(ctx->out, (unsigned char)cStr[i]);
    fputs("\\00\"\n", ctx->out);
    char* result = MallocOrCrash(32);
    strcpy(result, name);
    return result;
}

char* cgStringLiteralGlobal(struct cgCtx* ctx, struct operand* op) {
    char* raw = op->tok.str.ptr +1;
    int rawLen = op->tok.str.len -2;
    unsigned char decoded[4096];
    int n = 0;
    for (int i = 0; i < rawLen && n < (int)sizeof(decoded); i++) {
        if (raw[i] == '\\' && i +1 < rawLen) {
            i++;
            switch (raw[i]) {
                case 'n': decoded[n++] = '\n'; break;
                case 't': decoded[n++] = '\t'; break;
                case 'r': decoded[n++] = '\r'; break;
                case '0': decoded[n++] = '\0'; break; //this case was missing, so "a\0" held the character '0'
                default: decoded[n++] = (unsigned char)raw[i]; break;
            }
        } else decoded[n++] = (unsigned char)raw[i];
    }
    char name[32];
    snprintf(name, sizeof(name), "@.str.%d", ctx->strCtr++);
    fprintf(ctx->out, "%s = private unnamed_addr constant [%d x i8] c\"", name, n);
    for (int i = 0; i < n; i++) emitLLVMCharEscape(ctx->out, decoded[i]);
    fputs("\"\n", ctx->out);
    char* result = MallocOrCrash(32);
    strcpy(result, name);
    return result;
}

//converts a double to LLVM's required 16-hex-digit float-constant form (always the double bit pattern,
//even when the target type is float32 - LLVM truncates internally, so float32 literals are first rounded
//to float precision here so the double bit pattern reflects the value that will actually be stored)
char* cgFloatConst(double v, bool isF32) {
    double rounded = isF32 ? (double)(float)v : v;
    unsigned long long bits;
    memcpy(&bits, &rounded, sizeof(bits));
    char* buf = MallocOrCrash(24);
    snprintf(buf, 24, "0x%016llX", bits);
    return buf;
}

//"Type[v1, v2, ...]" (struct) or "T[v1, ...]" (array) - constructs a value inline. Both are by-ref (see
//typeIsByRef): allocate storage, store each value into its slot, and return the address, exactly like
//reading an existing by-ref variable would. A literal is always compile-time-length now, at every array level -
//see buildArrLiteralLevel in semantic.c; a runtime-length ("T[]") target is reached only via a separate promotion
//step (cgPromoteFixedToRuntimeLength), never by building one directly here.
char* cgAggregateLiteral(struct cgCtx* ctx, struct operand* op) {
    if (op->type.bType == BASETYPE_STRUCT) {
        char storTy[256];
        structAggSpelling(op->type, storTy, sizeof(storTy));
        char* slot = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", slot, storTy);
        for (int i = 0; i < op->args.len; i++) {
            struct operand* arg = *(struct operand**)ListGetIdx(&op->args, i);
            //the field's own declared type (not arg->type) is what decides malloc-promotion - a "&"
            //field is exactly where a plain struct literal argument needs one (see cgStoreInto)
            struct type fieldT = (*(struct var*)ListGetIdx(&op->type.vars, i)).type;
            char* fieldAddr = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 %d\n", fieldAddr, storTy, slot, i);
            //a bare "&" field (no scopeParam) inherits whatever scope THIS WHOLE literal is itself being
            //promoted into (ctx->targetScopeOverride, threaded in by cgValueForTarget/cgBoundaryValue) -
            //an explicitly-tagged "&name" field ignores it and resolves its own named scope as usual
            char* fieldScope = fieldT.scopeParam ? NULL : ctx->targetScopeOverride;
            char* fieldVal = cgValueForTarget(ctx, arg, fieldT, fieldScope);
            cgStoreInto(ctx, fieldT, arg->type, fieldVal, fieldAddr, fieldScope, false, OperandIsLvalue(arg), false);
        }
        return slot;
    }

    //compile-time-length array - the only shape a literal ever builds directly now (see buildArrLiteralLevel)
    char storTy[256];
    llvmType(op->type, storTy, sizeof(storTy));
    char* slot = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", slot, storTy);
    for (int i = 0; i < op->args.len; i++) {
        struct operand* arg = *(struct operand**)ListGetIdx(&op->args, i);
        char* elemAddr = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 0, i64 %d\n", elemAddr, storTy, slot, i);
        struct type elemT = *op->type.arrElem;
        char* elemScope = elemT.scopeParam ? NULL : ctx->targetScopeOverride;
        char* elemVal = cgValueForTarget(ctx, arg, elemT, elemScope);
        cgStoreInto(ctx, elemT, arg->type, elemVal, elemAddr, elemScope, false, OperandIsLvalue(arg), true);
    }
    return slot;
}

//T17: a payload-carrying choice value - "Shape.Circle(3)". Built the way an aggregate literal is, into
//{ i64 tag, [N x i8] payload }: zero the whole thing first (so a smaller case leaves no stale bytes behind
//in the tail), write the tag, then write the payload's fields through the case's own struct shape. The
//buffer is sized for the LARGEST case, which is the whole space saving over a struct holding every
//alternative at once.
static char* cgChoiceValue(struct cgCtx* ctx, struct operand* op) {
    struct type t = op->type;
    char ty[256];
    llvmType(t, ty, sizeof(ty));
    char* slot = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca %s, align %lld\n", slot, ty, cgStackAlign(t));
    fprintf(ctx->fnOut, "  store %s zeroinitializer, ptr %s\n", ty, slot);
    char* tagAddr = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 0\n", tagAddr, ty, slot);
    fprintf(ctx->fnOut, "  store i64 %lld, ptr %s\n", op->intLiteralVal, tagAddr);
    if (op->args.len > 0) {
        struct var* c = ListGetIdx(&t.vars, (int)op->intLiteralVal);
        char payTy[2048];
        structAggSpelling(c->type, payTy, sizeof(payTy));
        char* payAddr = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 1\n", payAddr, ty, slot);
        for (int i = 0; i < op->args.len; i++) {
            struct operand* arg = *(struct operand**)ListGetIdx(&op->args, i);
            struct type fieldT = (*(struct var*)ListGetIdx(&c->type.vars, i)).type;
            char* fieldAddr = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 %d\n", fieldAddr, payTy, payAddr, i);
            //T17c: a payload's "&name" tag names one of the CHOICE TYPE's own scope variables, which is
            //not a local here any more than a callee's scope variable is at a call - it has to be
            //resolved through this construction's own binding map, exactly as a call argument's is.
            //Without it cgResolveScope looked "s" up as a caller-local, found nothing, and mangled a var
            //with no owning module.
            char* fieldScope = cgResolveParamScopeOverride(ctx, NULL, op, fieldT);
            char* fieldVal = cgValueForTarget(ctx, arg, fieldT, fieldScope);
            cgStoreInto(ctx, fieldT, arg->type, fieldVal, fieldAddr, fieldScope, false, OperandIsLvalue(arg), false);
        }
    }
    char* loaded = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", loaded, ty, slot);
    return loaded;
}

char* cgLiteral(struct cgCtx* ctx, struct operand* op) {
    char* buf = MallocOrCrash(64);
    //T2a: by here "null" has been retagged to whatever nullable type it met (OperandFitsType), so its
    //value is simply that type's zero - "null" for a single pointer, "zeroinitializer" for the two-word
    //shapes ({ len, ptr } and { itab, data }), which is what makes "len(null)" 0 rather than garbage.
    if (op->isNullLiteral) return cgZeroValue(op->type);
    switch (op->type.bType) {
        case BASETYPE_BOOL: strcpy(buf, op->intLiteralVal ? "true" : "false"); return buf;
        //a choice value's intLiteralVal is its declared ordinal (see OperandChoiceValue) - represented as
        //a plain i32 same as any other small integer type, but never exposed to olang code as one (no
        //arithmetic/ordering operators accept BASETYPE_CHOICE - see TypeIsNumeric/TypeIsInt)
        case BASETYPE_CHOICE:
            if (ChoiceHasPayload(op->type)) return cgChoiceValue(ctx, op);
            snprintf(buf, 64, "%lld", op->intLiteralVal); return buf;
        case BASETYPE_BYTE: case BASETYPE_INT32: case BASETYPE_INT64:
            snprintf(buf, 64, "%lld", op->intLiteralVal); return buf;
        case BASETYPE_FLOAT32: return cgFloatConst(op->floatLiteralVal, true);
        case BASETYPE_FLOAT64: return cgFloatConst(op->floatLiteralVal, false);
        //a string literal's own token IS the TOK_STR_LIT it was decoded from (see OperandStringLiteral) -
        //an aggregate "T[][...]"/"T[N][...]" literal's tok is TOK_SQUARE_O instead, so this reliably
        //tells the two apart without needing a dedicated flag
        case BASETYPE_ARRAY: return op->tok.type == TOK_STR_LIT ? cgStringLiteralGlobal(ctx, op) : cgAggregateLiteral(ctx, op);
        case BASETYPE_STRUCT: return cgAggregateLiteral(ctx, op);
        default: ErrorBugFound(); return buf;
    }
}

//R20: a checked operation fails with BuiltinError.word when cond holds - through its try's clauses, or by
//propagating (cgCheckFailed). The ordinary path continues after.
static void cgCheckFailed(struct cgCtx* ctx, struct operand* op, char* okLbl, char* badLbl, char* word,
                          char* abortMsg);
static void cgFailIf(struct cgCtx* ctx, struct operand* op, char* cond, char* word) {
    int id = ctx->lblCtr++;
    char bad[32], ok[32];
    snprintf(bad, sizeof(bad), "chk.bad.%d", id);
    snprintf(ok, sizeof(ok), "chk.ok.%d", id);
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", cond, bad, ok);
    ctx->terminated = true;
    cgCheckFailed(ctx, op->checkRoot, ok, bad, word, NULL);
}

//R20: an integer result that does not fit - computed at twice the width and compared with its truncation
static char* cgCheckedIntArith(struct cgCtx* ctx, struct operand* op, char* instr, struct type t, char* av, char* bv) {
    char ty[16], wide[16];
    llvmType(t, ty, sizeof(ty));
    snprintf(wide, sizeof(wide), "i%d", (int)TypeGetSize(t) * 16);
    char* ext = t.bType == BASETYPE_BYTE ? "zext" : "sext";
    char* aw = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = %s %s %s to %s\n", aw, ext, ty, av, wide);
    char* bw = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = %s %s %s to %s\n", bw, ext, ty, bv, wide);
    char* rw = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = %s %s %s, %s\n", rw, instr, wide, aw, bw);
    char* r = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = trunc %s %s to %s\n", r, wide, rw, ty);
    char* back = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = %s %s %s to %s\n", back, ext, ty, r, wide);
    char* bad = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = icmp ne %s %s, %s\n", bad, wide, back, rw);
    cgFailIf(ctx, op, bad, "OVERFLOW");
    return r;
}

//a float that is neither NaN nor infinite: x - x is 0 exactly then
static char* cgIsFinite(struct cgCtx* ctx, char* ty, char* v) {
    char* d = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = fsub %s %s, %s\n", d, ty, v, v);
    char* f = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = fcmp oeq %s %s, 0.0\n", f, ty, d);
    return f;
}

//R20: a float result - infinite from finite operands is OVERFLOW, NaN from non-NaN operands INVALID
static void cgCheckFloatResult(struct cgCtx* ctx, struct operand* op, char* ty, char* av, char* bv, char* r) {
    char* rFin = cgIsFinite(ctx, ty, r);
    char* rNan = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = fcmp uno %s %s, %s\n", rNan, ty, r, r);
    char* aFin = cgIsFinite(ctx, ty, av);
    char* bFin = bv ? cgIsFinite(ctx, ty, bv) : "true";
    char* both = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", both, aFin, bFin);
    char* notNan = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = xor i1 %s, true\n", notNan, rNan);
    char* rInf = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = xor i1 %s, true\n", rInf, rFin);
    char* inf = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", inf, rInf, notNan);
    char* ovf = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", ovf, inf, both);
    cgFailIf(ctx, op, ovf, "OVERFLOW");
    char* aOrd = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = fcmp ord %s %s, %s\n", aOrd, ty, av, av);
    char* bOrd = "true";
    if (bv) { bOrd = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = fcmp ord %s %s, %s\n", bOrd, ty, bv, bv); }
    char* ords = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", ords, aOrd, bOrd);
    char* inv = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", inv, rNan, ords);
    cgFailIf(ctx, op, inv, "INVALID");
}

char* cgUnaryOp(struct cgCtx* ctx, struct operand* op) {
    struct operand* a = *(struct operand**)ListGetIdx(&op->args, 0);
    char* v = cgValue(ctx, a);
    char ty[256];
    llvmType(a->type, ty, sizeof(ty));
    char* r = cgNewTmp(ctx);
    switch (op->opType) {
        case OPERATION_NOT: fprintf(ctx->fnOut, "  %s = xor i1 %s, true\n", r, v); return r;
        case OPERATION_BTWSE_INV: fprintf(ctx->fnOut, "  %s = xor %s %s, -1\n", r, ty, v); return r;
        case OPERATION_MINUS:
            if (TypeIsFloat(a->type)) fprintf(ctx->fnOut, "  %s = fneg %s %s\n", r, ty, v);
            else if (op->checkRoot) return cgCheckedIntArith(ctx, op, "sub", a->type, "0", v); //R20
            else fprintf(ctx->fnOut, "  %s = sub %s 0, %s\n", r, ty, v);
            return r;
        default: ErrorBugFound(); return NULL;
    }
}

char* cgIncDec(struct cgCtx* ctx, struct operand* op, bool prefix, bool inc) {
    struct operand* target = *(struct operand**)ListGetIdx(&op->args, 0);
    char* addr = cgAddr(ctx, target);
    char ty[256];
    llvmType(target->type, ty, sizeof(ty));
    char* oldVal = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", oldVal, ty, addr);
    bool isF = TypeIsFloat(target->type);
    char* newVal = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = %s %s %s, %s\n", newVal, isF ? (inc ? "fadd" : "fsub") : (inc ? "add" : "sub"),
        ty, oldVal, isF ? "1.0" : "1");
    fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", ty, newVal, addr);
    return prefix ? newVal : oldVal;
}

char* cgDeepEq(struct cgCtx* ctx, struct type t, char* aVal, char* bVal);

//runtime-length arrays carry no compile-time length, so equality needs a runtime length-check + elementwise loop
//(everything else cgDeepEq handles is compile-time-bounded and can be unrolled straight-line)
//copies a runtime-length array's ELEMENTS into a fresh buffer of its own, arena-allocated into scopeVal,
//and returns the resulting { i64, ptr } descriptor. This is what an UNMARKED runtime-length array's
//assignment does now that T11 is gone: without a marker it is a value, so "b = a" must give b storage of
//its own rather than pointing it at a's - the same thing "b = a" already did for a compile-time-length
//array, and the whole point of making the two behave alike. A marked "T[]&" keeps copying the descriptor
//instead (that is what a reference assignment means, S4a). Length is a runtime value here, so unlike
//cgPromoteFixedToRuntimeLength's unrolled copy this is a real loop.
char* cgCopyRuntimeLengthArray(struct cgCtx* ctx, struct type t, char* srcVal, char* scopeVal, char* liveDstAddr) {
    char elemTy[256];
    llvmType(*t.arrElem, elemTy, sizeof(elemTy));
    long long elemSize = TypeGetSize(*t.arrElem);

    char* len = cgNewTmp(ctx);
    char* data = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 0\n", len, srcVal);
    fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 1\n", data, srcVal);

    char* buf;
    if (liveDstAddr) {
        //liveDstAddr already holds a valid descriptor (an ASSIGNMENT, not an initialization), so when its
        //length already matches there is nothing an allocation would buy: copy straight into the buffer it
        //has. Only a length change needs new storage. Never done at a var-decl/field/element store, where
        //the slot's contents are undefined and reading a length out of it would be reading garbage.
        int rid = ctx->lblCtr++;
        char reuseLbl[32], allocLbl[32], joinLbl[32];
        snprintf(reuseLbl, sizeof(reuseLbl), "arrcopy.reuse.%d", rid);
        snprintf(allocLbl, sizeof(allocLbl), "arrcopy.alloc.%d", rid);
        snprintf(joinLbl, sizeof(joinLbl), "arrcopy.buf.%d", rid);
        char* bufSlot = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca ptr\n", bufSlot);
        char* cur = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load { i64, ptr }, ptr %s\n", cur, liveDstAddr);
        char* curLen = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 0\n", curLen, cur);
        char* curPtr = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 1\n", curPtr, cur);
        char* sameLen = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp eq i64 %s, %s\n", sameLen, curLen, len);
        fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", sameLen, reuseLbl, allocLbl);
        ctx->terminated = true;

        cgLabel(ctx, reuseLbl);
        fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", curPtr, bufSlot);
        cgBr(ctx, joinLbl);

        cgLabel(ctx, allocLbl);
        char* nBytes = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = mul i64 %s, %lld\n", nBytes, len, elemSize);
        char* fresh = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 %s)\n", fresh, scopeVal, nBytes);
        fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", fresh, bufSlot);
        cgBr(ctx, joinLbl);

        cgLabel(ctx, joinLbl);
        buf = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", buf, bufSlot);
    } else {
        char* bytes = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = mul i64 %s, %lld\n", bytes, len, elemSize);
        buf = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 %s)\n", buf, scopeVal, bytes);
    }

    char* iSlot = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca i64\n", iSlot);
    fprintf(ctx->fnOut, "  store i64 0, ptr %s\n", iSlot);

    int id = ctx->lblCtr++;
    char condLbl[32], bodyLbl[32], doneLbl[32];
    snprintf(condLbl, sizeof(condLbl), "arrcopy.cond.%d", id);
    snprintf(bodyLbl, sizeof(bodyLbl), "arrcopy.body.%d", id);
    snprintf(doneLbl, sizeof(doneLbl), "arrcopy.done.%d", id);
    cgBr(ctx, condLbl);

    cgLabel(ctx, condLbl);
    char* iVal = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load i64, ptr %s\n", iVal, iSlot);
    char* more = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp slt i64 %s, %s\n", more, iVal, len);
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", more, bodyLbl, doneLbl);
    ctx->terminated = true;

    cgLabel(ctx, bodyLbl);
    char* srcElem = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 %s\n", srcElem, elemTy, data, iVal);
    char* dstElem = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 %s\n", dstElem, elemTy, buf, iVal);
    char* v = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", v, elemTy, srcElem);
    fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", elemTy, v, dstElem);
    char* nextI = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = add i64 %s, 1\n", nextI, iVal);
    fprintf(ctx->fnOut, "  store i64 %s, ptr %s\n", nextI, iSlot);
    cgBr(ctx, condLbl);

    cgLabel(ctx, doneLbl);
    char* agg1 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } undef, i64 %s, 0\n", agg1, len);
    char* agg2 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } %s, ptr %s, 1\n", agg2, agg1, buf);
    return agg2;
}

char* cgDeepEqSlice(struct cgCtx* ctx, struct type t, char* aVal, char* bVal) {
    char elemTy[256];
    llvmType(*t.arrElem, elemTy, sizeof(elemTy));

    char* lenA = cgNewTmp(ctx);
    char* dataA = cgNewTmp(ctx);
    char* lenB = cgNewTmp(ctx);
    char* dataB = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 0\n", lenA, aVal);
    fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 1\n", dataA, aVal);
    fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 0\n", lenB, bVal);
    fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 1\n", dataB, bVal);

    char* resultSlot = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca i1\n", resultSlot);
    char* iSlot = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca i64\n", iSlot);

    char* lenEq = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp eq i64 %s, %s\n", lenEq, lenA, lenB);

    int id = ctx->lblCtr++;
    char initLbl[32], condLbl[32], bodyLbl[32], neqLbl[32], doneLbl[32], endLbl[32];
    snprintf(initLbl, sizeof(initLbl), "sliceeq.init.%d", id);
    snprintf(condLbl, sizeof(condLbl), "sliceeq.cond.%d", id);
    snprintf(bodyLbl, sizeof(bodyLbl), "sliceeq.body.%d", id);
    snprintf(neqLbl, sizeof(neqLbl), "sliceeq.neq.%d", id);
    snprintf(doneLbl, sizeof(doneLbl), "sliceeq.done.%d", id);
    snprintf(endLbl, sizeof(endLbl), "sliceeq.end.%d", id);

    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", lenEq, initLbl, neqLbl);
    ctx->terminated = true;

    cgLabel(ctx, initLbl);
    fprintf(ctx->fnOut, "  store i64 0, ptr %s\n", iSlot);
    cgBr(ctx, condLbl);

    cgLabel(ctx, condLbl);
    char* iVal = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load i64, ptr %s\n", iVal, iSlot);
    char* more = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp slt i64 %s, %s\n", more, iVal, lenA);
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", more, bodyLbl, doneLbl);
    ctx->terminated = true;

    cgLabel(ctx, bodyLbl);
    char* elemAddrA = cgNewTmp(ctx);
    char* elemAddrB = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 %s\n", elemAddrA, elemTy, dataA, iVal);
    fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 %s\n", elemAddrB, elemTy, dataB, iVal);
    char* elemValA = cgLoadOrAddr(ctx, *t.arrElem, elemAddrA, true);
    char* elemValB = cgLoadOrAddr(ctx, *t.arrElem, elemAddrB, true);
    char* elemEq = cgDeepEq(ctx, *t.arrElem, elemValA, elemValB);
    char* nextI = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = add i64 %s, 1\n", nextI, iVal);
    fprintf(ctx->fnOut, "  store i64 %s, ptr %s\n", nextI, iSlot);
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", elemEq, condLbl, neqLbl);
    ctx->terminated = true;

    cgLabel(ctx, doneLbl);
    fprintf(ctx->fnOut, "  store i1 true, ptr %s\n", resultSlot);
    cgBr(ctx, endLbl);

    cgLabel(ctx, neqLbl);
    fprintf(ctx->fnOut, "  store i1 false, ptr %s\n", resultSlot);
    cgBr(ctx, endLbl);

    cgLabel(ctx, endLbl);
    char* result = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load i1, ptr %s\n", result, resultSlot);
    return result;
}

/* structural equality for struct/array value types; aVal/bVal are exactly what cgValue() would produce for
 * an operand of type t (an address for by-ref types - embedded structs and compile-time-length arrays - or an already-
 * loaded value otherwise). A <>-indirect struct is deliberately excluded from the "struct" case below and
 * falls through to the plain pointer-compare leaf: <> means "this is a reference", so identity is the
 * semantically correct meaning of "==" there, same as comparing object references in Java. */
//T17a: emits (once per object) the structural-equality function for one payload-carrying choice type.
//Each arm RETURNS rather than branching to a join, so no phi node is needed anywhere and cgDeepEq's own
//recursion stays straight-line - the reason this is a function at all. Reading a payload as case N is
//sound here precisely because the tag test above the switch already established that is the live case,
//which is the same argument that makes a match arm's bindings sound.
static char* cgChoiceEqFn(struct cgCtx* ctx, struct type t) {
    char nameBuf[256];
    if (t.owner && t.name.len > 0) mangleTypeName(t.owner, t.name, nameBuf, sizeof(nameBuf));
    else snprintf(nameBuf, sizeof(nameBuf), "anon.%d", ctx->lblCtr++); //T3: an unnamed inline choice shape
    char* sym = MallocOrCrash(320);
    snprintf(sym, 320, "@olang.choiceeq.%.280s", nameBuf);
    if (cgSymAlreadyEmitted(ctx, sym)) return sym;

    //emitted into its own stream: this can be reached while another function body is mid-emission, and a
    //nested choice payload can reach it again from inside this very body
    FILE* savedOut = ctx->fnOut;
    bool savedTerm = ctx->terminated;
    char* buf;
    size_t sz;
    FILE* body = open_memstream(&buf, &sz);
    if (!body) ErrorBugFound();
    ctx->fnOut = body;
    ctx->terminated = false;

    char ty[256];
    llvmType(t, ty, sizeof(ty));
    fprintf(body, "define linkonce_odr i1 %s(ptr %%ce.a, ptr %%ce.b) {\nentry:\n", sym);
    //O2c: the allocas cgDeepEq may emit below belong in THIS function's entry block, not in whatever
    //body was mid-emission when this helper was reached
    struct cgBodyBuf bb;
    cgBodyBegin(ctx, &bb);
    fprintf(ctx->fnOut, "  %%ce.tap = getelementptr %s, ptr %%ce.a, i32 0, i32 0\n", ty);
    fprintf(ctx->fnOut, "  %%ce.ta = load i64, ptr %%ce.tap\n");
    fprintf(ctx->fnOut, "  %%ce.tbp = getelementptr %s, ptr %%ce.b, i32 0, i32 0\n", ty);
    fprintf(ctx->fnOut, "  %%ce.tb = load i64, ptr %%ce.tbp\n");
    fprintf(ctx->fnOut, "  %%ce.tageq = icmp eq i64 %%ce.ta, %%ce.tb\n");
    fprintf(ctx->fnOut, "  br i1 %%ce.tageq, label %%ce.same, label %%ce.diff\n");
    fprintf(ctx->fnOut, "ce.diff:\n  ret i1 false\n");
    fprintf(ctx->fnOut, "ce.same:\n");
    fprintf(ctx->fnOut, "  %%ce.pa = getelementptr %s, ptr %%ce.a, i32 0, i32 1\n", ty);
    fprintf(ctx->fnOut, "  %%ce.pb = getelementptr %s, ptr %%ce.b, i32 0, i32 1\n", ty);
    fprintf(ctx->fnOut, "  switch i64 %%ce.ta, label %%ce.other [");
    for (int i = 0; i < t.vars.len; i++) fprintf(ctx->fnOut, " i64 %d, label %%ce.c%d", i, i);
    fprintf(ctx->fnOut, " ]\n");
    //the default is unreachable (every case is listed) but LLVM requires one, and "the tags matched" is
    //the right answer there anyway - it is exactly what a payload-free case means
    fprintf(ctx->fnOut, "ce.other:\n  ret i1 true\n");
    for (int i = 0; i < t.vars.len; i++) {
        struct var* c = ListGetIdx(&t.vars, i);
        fprintf(ctx->fnOut, "ce.c%d:\n", i);
        ctx->terminated = false;
        //the payload is an ordinary struct, so this is the ordinary structural comparison - including all
        //of E10's own rules for what a field of each kind means (a reference compares by identity, a
        //nested value struct memberwise, and a nested choice through its own function)
        char* r = cgDeepEq(ctx, c->type, "%ce.pa", "%ce.pb");
        fprintf(ctx->fnOut, "  ret i1 %s\n", r);
    }
    fprintf(ctx->fnOut, "}\n\n");
    cgBodyEnd(ctx, &bb);

    ctx->fnOut = savedOut;
    ctx->terminated = savedTerm;
    fflush(body);
    fwrite(buf, 1, sz, ctx->out);
    fclose(body);
    free(buf);
    return sym;
}

char* cgDeepEq(struct cgCtx* ctx, struct type t, char* aVal, char* bVal) {
    if (t.bType == BASETYPE_STRUCT && !t.structMAlloc) {
        char storTy[256];
        structAggSpelling(t, storTy, sizeof(storTy));
        char* acc = "true";
        for (int i = 0; i < t.vars.len; i++) {
            struct var* mv = ListGetIdx(&t.vars, i);
            char* addrA = cgNewTmp(ctx);
            char* addrB = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 %d\n", addrA, storTy, aVal, i);
            fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 %d\n", addrB, storTy, bVal, i);
            char* valA = cgLoadOrAddr(ctx, mv->type, addrA, false);
            char* valB = cgLoadOrAddr(ctx, mv->type, addrB, false);
            char* eq = cgDeepEq(ctx, mv->type, valA, valB);
            char* next = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", next, acc, eq);
            acc = next;
        }
        return acc;
    }
    //T11 gone: the MARKER decides, for either length kind. A marked compile-time-length array is a bare
    //ptr and falls through to the pointer leaf below (identity, as for a marked struct); a marked
    //runtime-length one is { i64, ptr }, which no icmp accepts, so its identity is its buffer pointer -
    //two descriptors naming the same storage.
    if (t.bType == BASETYPE_ARRAY && t.arrMalloc && t.structMAlloc) {
        char* pa = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 1\n", pa, aVal);
        char* pb = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 1\n", pb, bVal);
        char* eq = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp eq ptr %s, %s\n", eq, pa, pb);
        return eq;
    }
    if (t.bType == BASETYPE_ARRAY && !t.arrMalloc && !t.structMAlloc) {
        char storTy[256];
        llvmType(t, storTy, sizeof(storTy));
        long long n = t.arrLen ? t.arrLen->intLiteralVal : 0;
        char* acc = "true";
        for (long long i = 0; i < n; i++) {
            char* addrA = cgNewTmp(ctx);
            char* addrB = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 0, i64 %lld\n", addrA, storTy, aVal, i);
            fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 0, i64 %lld\n", addrB, storTy, bVal, i);
            char* valA = cgLoadOrAddr(ctx, *t.arrElem, addrA, true);
            char* valB = cgLoadOrAddr(ctx, *t.arrElem, addrB, true);
            char* eq = cgDeepEq(ctx, *t.arrElem, valA, valB);
            char* next = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", next, acc, eq);
            acc = next;
        }
        return acc;
    }
    if (t.bType == BASETYPE_ARRAY && t.arrMalloc) return cgDeepEqSlice(ctx, t, aVal, bVal);
    //T17a: a payload-carrying choice compares tag first, then the live case's payload - which means the
    //comparison BRANCHES, since which values get compared depends on a run-time tag. That is emitted as
    //its own function rather than inline: a branch in the middle of an expression would need phi nodes
    //threaded back out through every level of cgDeepEq's recursion, where a function simply returns from
    //each arm and leaves every call site straight-line. "linkonce_odr" for the reason a dispatch table is:
    //the comparison belongs to the type, every object that needs it emits it, and the linker keeps one.
    if (t.bType == BASETYPE_CHOICE && ChoiceHasPayload(t)) {
        char* fn = cgChoiceEqFn(ctx, t);
        char ty[256];
        llvmType(t, ty, sizeof(ty));
        char* sa = cgNewTmp(ctx);
        char* sb = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", sa, ty);
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", ty, aVal, sa);
        fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", sb, ty);
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", ty, bVal, sb);
        char* r = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = call i1 %s(ptr %s, ptr %s)\n", r, fn, sa, sb);
        return r;
    }
    //T33: an interface value is the (concrete type, instance) pair, and "==" compares both halves. The
    //dispatch table's ADDRESS is the concrete type's identity here - one table per (interface, type) pair,
    //kept single by the linker. Equal tables and equal instance pointers are equal; equal tables and
    //different pointers are equal only where the table's trailing entry says the pointers are boxes (a
    //run-time-length array, T29b) and the boxed pairs name the same storage. That needs a branch - a null
    //table has no trailing entry to read - so it lives in one helper rather than inline, as T17a's does.
    if (t.bType == BASETYPE_INTERFACE) {
        if (!cgSymAlreadyEmitted(ctx, "@olang.iface.eq")) {
            fprintf(ctx->out, "define linkonce_odr i1 @olang.iface.eq(ptr %%ia, ptr %%da, ptr %%ib, ptr %%db, i64 %%n) {\n"
                    "entry:\n  %%t = icmp eq ptr %%ia, %%ib\n  br i1 %%t, label %%same, label %%no\n"
                    "same:\n  %%d = icmp eq ptr %%da, %%db\n  br i1 %%d, label %%yes, label %%deep\n"
                    "deep:\n  %%nul = icmp eq ptr %%ia, null\n  br i1 %%nul, label %%no, label %%slot\n"
                    "slot:\n  %%sa = getelementptr ptr, ptr %%ia, i64 %%n\n  %%f = load ptr, ptr %%sa\n"
                    "  %%hasF = icmp ne ptr %%f, null\n  br i1 %%hasF, label %%call, label %%no\n"
                    "call:\n  %%r = call i1 %%f(ptr %%da, ptr %%db)\n  ret i1 %%r\n"
                    "yes:\n  ret i1 true\nno:\n  ret i1 false\n}\n\n");
        }
        char* w[4];
        for (int i = 0; i < 4; i++) {
            w[i] = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = extractvalue { ptr, ptr } %s, %d\n", w[i], i < 2 ? aVal : bVal, i % 2);
        }
        char* r = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = call i1 @olang.iface.eq(ptr %s, ptr %s, ptr %s, ptr %s, i64 %d)\n",
                r, w[0], w[1], w[2], w[3], t.vars.len);
        return r;
    }

    //scalar leaf, including func pointers and <>-indirect struct references (both spelled "ptr")
    char ty[256];
    llvmType(t, ty, sizeof(ty));
    bool isF = TypeIsFloat(t);
    char* r = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = %s %s %s %s, %s\n", r, isF ? "fcmp" : "icmp", isF ? "oeq" : "eq", ty, aVal, bVal);
    return r;
}

char* cgBinaryOp(struct cgCtx* ctx, struct operand* op) {
    struct operand* a = *(struct operand**)ListGetIdx(&op->args, 0);
    struct operand* b = *(struct operand**)ListGetIdx(&op->args, 1);
    //E7: "and"/"or" short-circuit - the right operand runs only when the left has not decided the result.
    //Through a slot rather than a phi, since the right operand may end in any block of its own.
    if (op->opType == OPERATION_AND || op->opType == OPERATION_OR) {
        bool isAnd = op->opType == OPERATION_AND;
        char* slot = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca i1\n", slot);
        char* lv = cgValue(ctx, a);
        fprintf(ctx->fnOut, "  store i1 %s, ptr %s\n", lv, slot);
        int id = ctx->lblCtr++;
        char rhsLbl[32], endLbl[32];
        snprintf(rhsLbl, sizeof(rhsLbl), "sc.rhs.%d", id);
        snprintf(endLbl, sizeof(endLbl), "sc.end.%d", id);
        fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", lv, isAnd ? rhsLbl : endLbl, isAnd ? endLbl : rhsLbl);
        ctx->terminated = true;
        cgLabel(ctx, rhsLbl);
        char* rv = cgValue(ctx, b);
        fprintf(ctx->fnOut, "  store i1 %s, ptr %s\n", rv, slot);
        cgBr(ctx, endLbl);
        cgLabel(ctx, endLbl);
        char* r = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load i1, ptr %s\n", r, slot);
        return r;
    }
    char* av = cgValue(ctx, a);
    char* bv = cgValue(ctx, b);
    char aty[256];
    llvmType(a->type, aty, sizeof(aty));
    bool isF = TypeIsFloat(a->type);
    bool isU = a->type.bType == BASETYPE_BYTE; //byte is treated as unsigned; int32/int64 as signed
    if (op->checkRoot) { //R20: the checks "try (...)" asked for, ahead of the operation
        int bits = (int)TypeGetSize(a->type) * 8;
        char bty[64];
        llvmType(b->type, bty, sizeof(bty));
        if (!isF && (op->opType == OPERATION_ADD || op->opType == OPERATION_SUB || op->opType == OPERATION_MUL))
            return cgCheckedIntArith(ctx, op, op->opType == OPERATION_ADD ? "add" : op->opType == OPERATION_SUB ? "sub" : "mul",
                                     a->type, av, bv);
        if (op->opType == OPERATION_DIV || op->opType == OPERATION_MOD) {
            char* z = cgNewTmp(ctx);
            if (isF) fprintf(ctx->fnOut, "  %s = fcmp oeq %s %s, 0.0\n", z, aty, bv);
            else fprintf(ctx->fnOut, "  %s = icmp eq %s %s, 0\n", z, aty, bv);
            cgFailIf(ctx, op, z, "DIVIDE_BY_ZERO");
            if (!isF && !isU) { //the most negative value by -1: the true quotient is one past the maximum
                char minv[32];
                snprintf(minv, sizeof(minv), "%lld", bits == 64 ? (long long)(-9223372036854775807LL - 1) : -(1LL << (bits - 1)));
                char* isMin = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = icmp eq %s %s, %s\n", isMin, aty, av, minv);
                char* isM1 = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = icmp eq %s %s, -1\n", isM1, aty, bv);
                char* ov = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", ov, isMin, isM1);
                cgFailIf(ctx, op, ov, "OVERFLOW");
            }
        }
        if (op->opType == OPERATION_BTSFT_L || op->opType == OPERATION_BTSFT_R) {
            char wv[16]; snprintf(wv, sizeof(wv), "%d", bits);
            char* tooFar = cgNewTmp(ctx);
            //unsigned compare: a negative amount reads as huge, so one compare covers both ends
            fprintf(ctx->fnOut, "  %s = icmp uge %s %s, %s\n", tooFar, bty, bv, wv);
            cgFailIf(ctx, op, tooFar, "INVALID");
        }
        if (isF && (op->opType == OPERATION_ADD || op->opType == OPERATION_SUB || op->opType == OPERATION_MUL
                    || op->opType == OPERATION_DIV)) {
            char* fr = cgNewTmp(ctx);
            char* fi = op->opType == OPERATION_ADD ? "fadd" : op->opType == OPERATION_SUB ? "fsub"
                     : op->opType == OPERATION_MUL ? "fmul" : "fdiv";
            fprintf(ctx->fnOut, "  %s = %s %s %s, %s\n", fr, fi, aty, av, bv);
            cgCheckFloatResult(ctx, op, aty, av, bv, fr);
            return fr;
        }
    }
    //E5: a shift's amount need not share the shifted operand's type, but the instruction needs one width
    if ((op->opType == OPERATION_BTSFT_L || op->opType == OPERATION_BTSFT_R) && b->type.bType != a->type.bType) {
        char bty[64];
        llvmType(b->type, bty, sizeof(bty));
        long long aw = TypeGetSize(a->type), bw = TypeGetSize(b->type);
        if (aw != bw) {
            char* conv = cgNewTmp(ctx);
            char* how = aw < bw ? "trunc" : (b->type.bType == BASETYPE_BYTE ? "zext" : "sext");
            fprintf(ctx->fnOut, "  %s = %s %s %s to %s\n", conv, how, bty, bv, aty);
            bv = conv;
        }
    }
    char* r = cgNewTmp(ctx);
    char* instr = NULL;
    switch (op->opType) {
        case OPERATION_ADD: instr = isF ? "fadd" : "add"; break;
        case OPERATION_SUB: instr = isF ? "fsub" : "sub"; break;
        case OPERATION_MUL: instr = isF ? "fmul" : "mul"; break;
        case OPERATION_DIV: instr = isF ? "fdiv" : (isU ? "udiv" : "sdiv"); break;
        case OPERATION_MOD: instr = isU ? "urem" : "srem"; break;
        case OPERATION_BTWSE_AND: case OPERATION_AND: instr = "and"; break;
        case OPERATION_BTWSE_OR: case OPERATION_OR: instr = "or"; break;
        case OPERATION_BTWSE_XOR: case OPERATION_XOR: instr = "xor"; break;
        case OPERATION_BTSFT_L: instr = "shl"; break;
        case OPERATION_BTSFT_R: instr = isU ? "lshr" : "ashr"; break;
        default: break;
    }
    if (instr) {
        fprintf(ctx->fnOut, "  %s = %s %s %s, %s\n", r, instr, aty, av, bv);
        return r;
    }

    //== and != are structural for struct/array types (cgDeepEq), not raw pointer identity - a <>-indirect
    //struct is the one exception, where identity is the actual intended meaning of "=="  (see cgDeepEq)
    if (op->opType == OPERATION_EQ || op->opType == OPERATION_NEQ) {
        char* eq = cgDeepEq(ctx, a->type, av, bv);
        if (op->opType == OPERATION_EQ) return eq;
        fprintf(ctx->fnOut, "  %s = xor i1 %s, true\n", r, eq);
        return r;
    }

    char* pred = NULL;
    switch (op->opType) {
        case OPERATION_LST: pred = isF ? "olt" : (isU ? "ult" : "slt"); break;
        case OPERATION_LSE: pred = isF ? "ole" : (isU ? "ule" : "sle"); break;
        case OPERATION_GRT: pred = isF ? "ogt" : (isU ? "ugt" : "sgt"); break;
        case OPERATION_GRE: pred = isF ? "oge" : (isU ? "uge" : "sge"); break;
        default: ErrorBugFound(); return NULL;
    }
    fprintf(ctx->fnOut, "  %s = %s %s %s %s, %s\n", r, isF ? "fcmp" : "icmp", pred, aty, av, bv);
    return r;
}

char* cgExternFuncCall(struct cgCtx* ctx, struct operand* op);

//resolves a call operand's target symbol (or loaded function pointer) and builds its full argument list.
//Shared by cgFuncCall and cgTryCatch, which have to agree exactly about both and used to say it twice -
//the second copy knew nothing about an M19a dispatch, so "try w.M()" mangled a synthetic var that has no
//owning module and crashed the compiler.
//M19a: the two run-time halves of a dispatch - the table entry to call, and the instance to hand it as
//its first argument. Shared by every path that lowers a call (a direct call, a try/catch, a spawn), which
//marshal their arguments quite differently but must agree exactly on what a dispatch resolves to.
static char* cgDispatchTarget(struct cgCtx* ctx, struct operand* op, char** dataOut) {
    struct operand* recvOp = *(struct operand**)ListGetIdx(&op->args, 0);
    char* pair = cgValue(ctx, recvOp);
    char* itab = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = extractvalue { ptr, ptr } %s, 0\n", itab, pair);
    *dataOut = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = extractvalue { ptr, ptr } %s, 1\n", *dataOut, pair);
    char* slotAddr = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr [%d x ptr], ptr %s, i64 0, i64 %d\n",
            slotAddr, op->ifaceType.vars.len, itab, op->ifaceMethodIdx);
    char* target = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", target, slotAddr);
    return target;
}

//the target of a call written by name: the function's own symbol, or - for a local of function type - the code
//its value's closure object starts with (D16), with *closureOut set to that object, passed as the hidden first
//argument every function reached through a value takes
static char* cgNamedTarget(struct cgCtx* ctx, struct var* func, char** closureOut) {
    *closureOut = NULL;
    struct cgLocal* local = cgFindLocal(ctx, func->name);
    if (local) {
        char* obj = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", obj, local->llvmVal);
        char* code = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", code, obj);
        *closureOut = obj;
        return code;
    }
    char* sym = MallocOrCrash(256);
    mangleFuncSym(func, sym, 256);
    return sym;
}

//D16: a function named as a value is a pointer to a closure object whose first word is code taking the object
//first. A named function's object is static and shared, so one function is one value however often it is
//named, in any module: "@f.fv", reaching "@f" through an adapter that drops the object. A lambda's code
//already takes it, so its object is just its code.
//D16c: a capturing lambda's closure - its code, then each capture's value and, for a reference, its scope
void cgClosureType(struct var* L, char* buf, size_t n) {
    snprintf(buf, n, "{ ptr");
    for (int i = 0; i < L->lambdaCaptures.len; i++) {
        struct var* in = ((struct lambdaCapture*)ListGetIdx(&L->lambdaCaptures, i))->inner;
        char cty[256];
        llvmType(in->type, cty, sizeof(cty));
        strncat(buf, ", ", n - strlen(buf) - 1);
        strncat(buf, cty, n - strlen(buf) - 1);
        if (in->type.scopeParam) strncat(buf, ", ptr", n - strlen(buf) - 1);
    }
    strncat(buf, " }", n - strlen(buf) - 1);
}

//D16c: a capturing lambda's value, made here: its closure, built where the lambda lives - with the references it
//captured, or where it lands - holding a copy of every capture
static char* cgClosure(struct cgCtx* ctx, struct operand* op, char* sym) {
    struct var* L = op->readVar;
    char envTy[4096];
    cgClosureType(L, envTy, sizeof(envTy));
    char* scope = op->lambdaHomeSet ? cgResolveScope(ctx, op->lambdaHome, op->lambdaHomeDepth)
                : ctx->targetScopeOverride ? ctx->targetScopeOverride : cgScopeSlotAt(ctx, ctx->blockDepth);
    char* obj = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 ptrtoint (ptr getelementptr (%s, ptr null, i32 1) to i64))\n",
            obj, scope, envTy);
    fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", sym, obj);
    int field = 1;
    for (int i = 0; i < L->lambdaCaptures.len && i < op->args.len; i++) {
        struct var* in = ((struct lambdaCapture*)ListGetIdx(&L->lambdaCaptures, i))->inner;
        struct operand* capOp = *(struct operand**)ListGetIdx(&op->args, i);
        char cty[256];
        llvmType(in->type, cty, sizeof(cty));
        char* v = cgBoundaryValue(ctx, capOp, in->type, NULL);
        char* fp = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 %d\n", fp, envTy, obj, field++);
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", cty, v, fp);
        if (!in->type.scopeParam) continue;
        struct var* sv = in->type.scopeParam;
        char* sval = cgResolveScope(ctx, SemanticBoundScope(op, sv), SemanticBoundScopeDepth(op, sv, ctx->blockDepth));
        char* sp = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 %d\n", sp, envTy, obj, field++);
        fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", sval, sp);
    }
    return obj;
}

void cgEmitParamList(FILE* out, struct var* func, bool named);
static char* cgFuncValue(struct cgCtx* ctx, struct var* f, char* sym) {
    if (f->isLambda && f->lambdaCaptures.len) return NULL; //made by cgClosure instead
    char* obj = MallocOrCrash(strlen(sym) + 8);
    sprintf(obj, "%s.fv", sym);
    bool have = false;
    for (int i = 0; i < ctx->fnValues.len && !have; i++) have = *(struct var**)ListGetIdx(&ctx->fnValues, i) == f;
    if (!have) ListAdd(&ctx->fnValues, &f);
    return obj;
}

//D16: the static closures and adapters of every function this object used as a value
void cgEmitFuncValues(struct cgCtx* ctx) {
    for (int i = 0; i < ctx->fnValues.len; i++) {
        struct var* f = *(struct var**)ListGetIdx(&ctx->fnValues, i);
        char sym[256];
        mangleFuncSym(f, sym, sizeof(sym));
        if (f->isLambda) { //internal, like the lambda
            fprintf(ctx->out, "%s.fv = internal constant { ptr } { ptr %s }\n", sym, sym);
            continue;
        }
        char retTy[256];
        llvmFuncRetType(f->type, retTy, sizeof(retTy));
        fprintf(ctx->out, "%s.fv = linkonce_odr constant { ptr } { ptr %s.fvt }\n", sym, sym);
        fprintf(ctx->out, "define linkonce_odr %s %s.fvt(ptr %%closure", retTy, sym);
        bool any = f->type.scopeVars.len + f->type.vars.len > 0;
        if (any) fputs(", ", ctx->out);
        cgEmitParamList(ctx->out, f, true);
        fputs(") {\nentry:\n", ctx->out);
        char args[4096] = "";
        for (int k = 0; k < f->type.scopeVars.len; k++) {
            char piece[64];
            snprintf(piece, sizeof(piece), "%sptr %%sarg%d", strlen(args) ? ", " : "", k);
            strncat(args, piece, sizeof(args) - strlen(args) - 1);
        }
        for (int k = 0; k < f->type.vars.len; k++) {
            char pty[256], piece[320];
            llvmType(((struct var*)ListGetIdx(&f->type.vars, k))->type, pty, sizeof(pty));
            snprintf(piece, sizeof(piece), "%s%s %%arg%d", strlen(args) ? ", " : "", pty, k);
            strncat(args, piece, sizeof(args) - strlen(args) - 1);
        }
        if (strcmp(retTy, "void") == 0) fprintf(ctx->out, "  call void %s(%s)\n  ret void\n}\n\n", sym, args);
        else fprintf(ctx->out, "  %%r = call %s %s(%s)\n  ret %s %%r\n}\n\n", retTy, sym, args, retTy);
    }
}

static char* cgCallTargetAndArgs(struct cgCtx* ctx, struct operand* op, char* argsBuf, size_t argsBufN) {
    struct var* func = op->readVar;
    char* ifaceData = NULL;
    char* closure = NULL;
    char* target;
    if (op->callee) { //E13b: the function value is computed, then called as a variable holding it is
        closure = cgValue(ctx, op->callee);
        target = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", target, closure);
    } else target = op->isIfaceDispatch ? cgDispatchTarget(ctx, op, &ifaceData) : cgNamedTarget(ctx, func, &closure);
    if (closure) {
        strncat(argsBuf, "ptr ", argsBufN - strlen(argsBuf) -1);
        strncat(argsBuf, closure, argsBufN - strlen(argsBuf) -1);
    }

    bool ctor = !op->isIfaceDispatch && cgIsCtor(func);
    char* here = ctor ? cgCtorHereArg(ctx, op) : NULL;
    if (ctor) {
        strncat(argsBuf, "ptr ", argsBufN - strlen(argsBuf) -1);
        strncat(argsBuf, here, argsBufN - strlen(argsBuf) -1);
    }
    //O17/O18: semantic analysis already bound every one of the callee's scope variables to a scope of
    //ours, recorded on this very call operand - codegen reads it back and resolves it in our own frame
    for (int i = 0; i < func->type.scopeVars.len; i++) {
        struct var* sv = *(struct var**)ListGetIdx(&func->type.scopeVars, i);
        //O2d: NOT ctx->blockDepth. When an argument determined this binding (O17) it refers to the block
        //that argument's referent lives in, which may be any number of blocks out from where the call is
        //written - using the innermost open block allocated the callee's result into a scope that closed
        //at the end of the enclosing "if", a verified use-after-free.
        //O18a: a scope that still follows the result where it was never landed explicitly is the scope the
        //code around the call is building into, if any - a constructor field's instance, a promotion's target
        //C2d: a constructor's bare parameter that nothing determined is built where the instance lands
        char* sval = ctor && sv->isImplicitScope && SemanticBindingIsLanding(op, sv) ? here
                     : SemanticBindingIsLanding(op, sv) && ctx->targetScopeOverride ? ctx->targetScopeOverride
                     : cgResolveScope(ctx, SemanticBoundScope(op, sv), SemanticBoundScopeDepth(op, sv, ctx->blockDepth));
        char piece[512];
        snprintf(piece, sizeof(piece), "%sptr %s", i > 0 || ctor || closure ? ", " : "", sval);
        strncat(argsBuf, piece, argsBufN - strlen(argsBuf) -1);
    }
    for (int i = 0; i < op->args.len; i++) {
        struct operand* argOp = *(struct operand**)ListGetIdx(&op->args, i);
        //the parameter's own declared type (not argOp->type) decides malloc-promotion and the LLVM type
        //word at the call site - a "&" parameter is exactly where a plain struct argument needs one
        struct type paramT = (*(struct var*)ListGetIdx(&func->type.vars, i)).type;
        char aty[256];
        char* av;
        if (op->isIfaceDispatch && i == 0) {
            av = ifaceData; //already extracted above; every table entry takes the instance as a bare ptr
            snprintf(aty, sizeof(aty), "ptr");
        } else {
            char* scopeOverride = cgResolveParamScopeOverride(ctx, func, op, paramT);
            //C2d: a constructor parameter whose reference names no scope fills a field of the instance, so
            //an argument with no storage of its own is built where the instance lands
            if (ctor && ((!scopeOverride && !paramT.scopeParam)
                         || (paramT.scopeParam && paramT.scopeParam->isImplicitScope
                             && SemanticBindingIsLanding(op, paramT.scopeParam))))
                scopeOverride = here;
            av = cgBoundaryValue(ctx, argOp, paramT, scopeOverride);
            llvmType(paramT, aty, sizeof(aty));
        }
        char piece[512];
        bool firstArg = (i == 0 && func->type.scopeVars.len == 0 && !ctor && !closure);
        snprintf(piece, sizeof(piece), "%s%s %s", firstArg ? "" : ", ", aty, av);
        strncat(argsBuf, piece, argsBufN - strlen(argsBuf) -1);
    }
    return target;
}

char* cgFuncCall(struct cgCtx* ctx, struct operand* op) {
    struct var* func = op->readVar;
    if (func->type.isExtern) return cgExternFuncCall(ctx, op);
    char argsBuf[4096] = "";
    char* target = cgCallTargetAndArgs(ctx, op, argsBuf, sizeof(argsBuf));

    if (func->type.errors.len == 0) {
        if (!func->type.hasRetType) {
            fprintf(ctx->fnOut, "  call void %s(%s)\n", target, argsBuf);
            return "";
        }
        struct type rt = *func->type.retType;
        char retTy[256];
        llvmType(rt, retTy, sizeof(retTy));
        char* callResult = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = call %s %s(%s)\n", callResult, retTy, target, argsBuf);
        if (typeIsByRef(rt)) {
            char* slot = cgNewTmp(ctx);
            fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", slot, retTy);
            fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", retTy, callResult, slot);
            return slot;
        }
        return callResult;
    }

    //fallible callee: the semantic layer guarantees every fallible FUNCCALL operand that reaches codegen
    //via the generic cgValue/cgFuncCall path was written as "try f(...)" (isTried) - a bare unhandled call
    //is a compile error, and the catch-statement form is codegenned separately by cgTryCatch, never through
    //here. On error, propagate to the caller (which is guaranteed to declare a superset of these errors).
    if (!op->isTried) ErrorBugFound();
    char wrapTy[256];
    llvmFuncRetType(func->type, wrapTy, sizeof(wrapTy));
    char* raw = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call %s %s(%s)\n", raw, wrapTy, target, argsBuf);
    char* code = raw;
    if (func->type.hasRetType) {
        code = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue %s %s, 0\n", code, wrapTy, raw);
    }
    char* isErr = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp ne i32 %s, 0\n", isErr, code);
    int id = ctx->lblCtr++;
    char errLbl[32], okLbl[32];
    snprintf(errLbl, sizeof(errLbl), "try.err.%d", id);
    snprintf(okLbl, sizeof(okLbl), "try.ok.%d", id);
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", isErr, errLbl, okLbl);
    ctx->terminated = true;
    cgLabel(ctx, errLbl);
    if (!op->catchClauses.len || cgCatchDispatch(ctx, op, &op->catchClauses, code, &func->type, NULL)) {
        cgPropagateError(ctx, func->type, code);
    }
    cgLabel(ctx, okLbl);

    if (!func->type.hasRetType) return "";
    struct type rt = *func->type.retType;
    char retTy[256];
    llvmType(rt, retTy, sizeof(retTy));
    char* payload = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = extractvalue %s %s, 1\n", payload, wrapTy, raw);
    if (typeIsByRef(rt)) {
        char* slot = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", slot, retTy);
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", retTy, payload, slot);
        return slot;
    }
    return payload;
}

//an "extern func" (§11) call: the unmangled name (X5 - it's also the linker symbol, never olang's own
//module-prefix mangling), never fallible (X4 - a plain call, never the {code,payload} wrapping), and an
//array-typed argument marshalled down to a bare pointer to its first element (X3) - cgBoundaryValue still
//does the ordinary promotion work first (a compile-time-length-array literal flowing into a runtime-length "byte[]" param, a
//plain value flowing into a "&"-marked param), so this only ever has to peel the final boundary-form
//value (a "{ i64, ptr }" slice, a real "[N x T]" aggregate, or an already-bare "ptr") down to that ptr.
char* cgExternFuncCall(struct cgCtx* ctx, struct operand* op) {
    struct var* func = op->readVar;
    char target[256];
    snprintf(target, sizeof(target), "@%.*s", func->name.len, func->name.ptr);

    char argsBuf[4096] = "";
    for (int i = 0; i < op->args.len; i++) {
        struct operand* argOp = *(struct operand**)ListGetIdx(&op->args, i);
        struct type paramT = (*(struct var*)ListGetIdx(&func->type.vars, i)).type;
        char* boundary = cgBoundaryValue(ctx, argOp, paramT, ctx->ownScopeSlot);
        char piece[512];
        if (paramT.bType == BASETYPE_ARRAY) {
            char* ptr;
            if (paramT.arrMalloc) {
                ptr = cgNewTmp(ctx);
                fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 1\n", ptr, boundary);
            } else if (paramT.structMAlloc) {
                ptr = boundary; //already a bare heap ptr value (llvmType: structMAlloc -> "ptr")
            } else {
                //plain compile-time-length array: cgBoundaryValue's by-value boundary convention already loaded it into
                //a real "[N x T]" aggregate - spill it to a fresh stack slot to get a real address from
                char aty[64];
                llvmType(paramT, aty, sizeof(aty));
                char* slot = cgNewTmp(ctx);
                fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", slot, aty);
                fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", aty, boundary, slot);
                ptr = slot;
            }
            snprintf(piece, sizeof(piece), "%sptr %s", i > 0 ? ", " : "", ptr);
        } else {
            char aty[64];
            llvmType(paramT, aty, sizeof(aty));
            snprintf(piece, sizeof(piece), "%s%s %s", i > 0 ? ", " : "", aty, boundary);
        }
        strncat(argsBuf, piece, sizeof(argsBuf) - strlen(argsBuf) -1);
    }

    if (!func->type.hasRetType) {
        fprintf(ctx->fnOut, "  call void %s(%s)\n", target, argsBuf);
        return "";
    }
    //X2/X3: an extern-ret-type is always a scalar (numeric primitive) - never an array, never by-ref
    char retTy[64];
    llvmType(*func->type.retType, retTy, sizeof(retTy));
    char* result = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call %s %s(%s)\n", result, retTy, target, argsBuf);
    return result;
}

//"len(arr)" - see OperandLen in semantic.c. arg is always evaluated (cgValue has real side effects for
//anything more than a bare variable read, e.g. a function call producing the array) even when the
//dimension turns out to be compile-time-known and the loaded value itself goes unused.
//P9: one atomic builtin, one LLVM atomic instruction, always sequentially consistent. The address comes
//from cgAddr, so a local, a field and an array element all work; natural alignment is what LLVM's own
//layout already gives every integer (TypeGetAlign), which is exactly what an atomic instruction requires.
char* cgAtomic(struct cgCtx* ctx, struct operand* op) {
    struct operand* target = *(struct operand**)ListGetIdx(&op->args, 0);
    char ty[64];
    llvmType(target->type, ty, sizeof(ty));
    long long align = TypeGetAlign(target->type);
    char* addr = cgAddr(ctx, target);
    char* a = op->args.len > 1 ? cgValue(ctx, *(struct operand**)ListGetIdx(&op->args, 1)) : NULL;
    char* b = op->args.len > 2 ? cgValue(ctx, *(struct operand**)ListGetIdx(&op->args, 2)) : NULL;
    char* res = cgNewTmp(ctx);
    switch (op->opType) {
        case OPERATION_ATOMIC_LOAD:
            fprintf(ctx->fnOut, "  %s = load atomic %s, ptr %s seq_cst, align %lld\n", res, ty, addr, align);
            return res;
        case OPERATION_ATOMIC_STORE:
            fprintf(ctx->fnOut, "  store atomic %s %s, ptr %s seq_cst, align %lld\n", ty, a, addr, align);
            return "0"; //a void builtin - S3 admits it as a statement and nothing reads this
        case OPERATION_ATOMIC_ADD:
            fprintf(ctx->fnOut, "  %s = atomicrmw add ptr %s, %s %s seq_cst\n", res, addr, ty, a);
            return res;
        case OPERATION_ATOMIC_SWAP:
            fprintf(ctx->fnOut, "  %s = atomicrmw xchg ptr %s, %s %s seq_cst\n", res, addr, ty, a);
            return res;
        default: { //OPERATION_ATOMIC_CAS - cmpxchg yields { T, i1 }; the value half is what is returned,
                   //since equalling `expected` is exactly the success condition for a strong exchange
            char* pair = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = cmpxchg ptr %s, %s %s, %s %s seq_cst seq_cst\n", pair, addr, ty, a, ty, b);
            fprintf(ctx->fnOut, "  %s = extractvalue { %s, i1 } %s, 0\n", res, ty, pair);
            return res;
        }
    }
}

char* cgLen(struct cgCtx* ctx, struct operand* op) {
    struct operand* arg = *(struct operand**)ListGetIdx(&op->args, 0);
    char* argVal = cgValue(ctx, arg);
    if (arg->type.arrMalloc) {
        char* result = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 0\n", result, argVal);
        return result;
    }
    char* result = MallocOrCrash(32);
    snprintf(result, 32, "%lld", arg->type.arrLen->intLiteralVal);
    return result;
}

//"TypeName(x)" - the explicit numeric-conversion builtin (see the report). Picks the one LLVM
//instruction the (source, target) pair actually needs: same type is a no-op (returns the value
//unchanged - OperandNumericConversion already lets this through as a harmless identity); float<->float
//is fpext (widening, float32->float64) or fptrunc (narrowing, the reverse - LLVM requires the matching
//direction, unlike the integer instructions below, which are each only ever reachable one way); int<-
//>float is sitofp/fptosi for a signed source/target or uitofp/fptoui for byte, this language's one
//unsigned integer type (T4); int<->int compares TypeGetSize to decide zext (byte's own unsigned width,
//never sign-extended) /sext (int32/int64) for widening vs. trunc for narrowing - byte/int32/int64 are
//the only three integer types, so a size mismatch always means exactly one of those three directions.
//R20: a conversion the target type cannot represent the value of - a NaN or infinity is INVALID, anything else
//out of range OVERFLOW. Integer ranges are compared in the wider type; a float against the target's bounds.
static void cgCheckConvert(struct cgCtx* ctx, struct operand* op, struct type from, struct type to, char* fromTy,
                           char* val) {
    bool fromF = TypeIsFloat(from), toF = TypeIsFloat(to);
    if (fromF && toF) { //Float64 to Float32: finite becoming infinite
        if (to.bType != BASETYPE_FLOAT32) return;
        char* t = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = fptrunc double %s to float\n", t, val);
        char* srcFin = cgIsFinite(ctx, "double", val);
        char* dstFin = cgIsFinite(ctx, "float", t);
        char* lost = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = xor i1 %s, true\n", lost, dstFin);
        char* ov = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", ov, srcFin, lost);
        cgFailIf(ctx, op, ov, "OVERFLOW");
        return;
    }
    double lo, hi; //the target's range, exclusive of anything that would not fit
    if (to.bType == BASETYPE_BYTE) { lo = 0; hi = 255; }
    else if (to.bType == BASETYPE_INT32) { lo = -2147483648.0; hi = 2147483647.0; }
    else { lo = -9223372036854775808.0; hi = 9223372036854775807.0; }
    if (fromF) {
        char* fin = cgIsFinite(ctx, fromTy, val);
        char* notFin = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = xor i1 %s, true\n", notFin, fin);
        cgFailIf(ctx, op, notFin, "INVALID");
        //in range exactly when lo <= v < hi + 1 (hi + 1 is a power of two, exact in either float type)
        char* ge = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = fcmp oge %s %s, %.1f\n", ge, fromTy, val, lo);
        char* lt = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = fcmp olt %s %s, %.1f\n", lt, fromTy, val, hi + 1.0);
        char* in = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", in, ge, lt);
        char* out = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = xor i1 %s, true\n", out, in);
        cgFailIf(ctx, op, out, "OVERFLOW");
        return;
    }
    if (toF) return;
    //integer narrowing: the source widened and compared with the target's bounds
    char* w = val;
    if (from.bType != BASETYPE_INT64) {
        w = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = %s %s %s to i64\n", w, from.bType == BASETYPE_BYTE ? "zext" : "sext", fromTy, val);
    }
    char* below = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = icmp slt i64 %s, %lld\n", below, w, (long long)lo);
    char* above = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = icmp sgt i64 %s, %lld\n", above, w, (long long)hi);
    char* out = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = or i1 %s, %s\n", out, below, above);
    cgFailIf(ctx, op, out, "OVERFLOW");
}

char* cgNumericConvert(struct cgCtx* ctx, struct operand* op) {
    struct operand* arg = *(struct operand**)ListGetIdx(&op->args, 0);
    char* val = cgValue(ctx, arg);
    struct type from = arg->type;
    struct type to = op->type;
    if (TypeIsSame(from, to)) return val;
    //T29: a nominal type and its underlying one are different TYPES with the same REPRESENTATION, so the
    //conversion between them is a retag with no instruction at all - "Meters(n)" moves nothing. Checked by
    //base type rather than by TypeIsSame, which now (correctly) says they differ.
    if (from.bType == to.bType) return val;

    char fromTy[16], toTy[16];
    llvmType(from, fromTy, sizeof(fromTy));
    llvmType(to, toTy, sizeof(toTy));
    bool fromFloat = TypeIsFloat(from);
    bool toFloat = TypeIsFloat(to);
    char* instr;
    if (fromFloat && toFloat) instr = from.bType == BASETYPE_FLOAT32 ? "fpext" : "fptrunc";
    else if (fromFloat) instr = to.bType == BASETYPE_BYTE ? "fptoui" : "fptosi";
    else if (toFloat) instr = from.bType == BASETYPE_BYTE ? "uitofp" : "sitofp";
    else instr = TypeGetSize(to) > TypeGetSize(from) ? (from.bType == BASETYPE_BYTE ? "zext" : "sext") : "trunc";

    if (op->checkRoot) cgCheckConvert(ctx, op, from, to, fromTy, val); //R20
    char* result = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = %s %s %s to %s\n", result, instr, fromTy, val, toTy);
    return result;
}

//"T[expr]" with no initializer (expr not a compile-time constant) - see OPERATION_SIZED_ARRAY_ALLOC and
//the report. Arena-allocates expr zero-valued elements into op->type's own scope (own by default, or its
//declared "&name" tag - same cgResolveScope convention every other reference allocation already uses) and
//returns the resulting { i64, ptr } slice value, zero-filled via memset (chunk-pool memory is reused, not
//guaranteed zero, unlike a fresh @malloc - see emitScopeRuntime).
static void cgFillLoop(struct cgCtx* ctx, struct type elemT, char* basePtr, char* countVal, char* fillVal);
char* cgSizedArrayAlloc(struct cgCtx* ctx, struct operand* op) {
    struct operand* sizeOp = *(struct operand**)ListGetIdx(&op->args, 0);
    char* rawCount = cgValue(ctx, sizeOp);
    char* count;
    if (sizeOp->type.bType == BASETYPE_INT64) {
        count = rawCount;
    } else {
        count = cgNewTmp(ctx);
        char* ext = sizeOp->type.bType == BASETYPE_BYTE ? "zext" : "sext";
        char sizeTy[64];
        llvmType(sizeOp->type, sizeTy, sizeof(sizeTy));
        fprintf(ctx->fnOut, "  %s = %s %s %s to i64\n", count, ext, sizeTy, rawCount);
    }

    //D14b: a negative length is rejected here rather than allowed to multiply out to a negative byte
    //count - which __olang_new_chunk's unsigned comparison reads as an enormous capacity, so it mallocs a
    //few bytes, records a huge cap, and every later allocation from this scope bumps straight past the end
    //of it. Verified as "malloc(): corrupted top size". One compare per ALLOCATION, never per access,
    //which is the same reason a slice's bounds are checked (E16b) and an index's are not (E16).
    int nid = ctx->lblCtr++;
    char negLbl[32], okLbl[32];
    snprintf(negLbl, sizeof(negLbl), "len.neg.%d", nid);
    snprintf(okLbl, sizeof(okLbl), "len.ok.%d", nid);
    char* isNeg = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp slt i64 %s, 0\n", isNeg, count);
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", isNeg, negLbl, okLbl);
    ctx->terminated = true;
    if (op->checkRoot) cgCheckFailed(ctx, op->checkRoot, okLbl, negLbl, "OUT_OF_BOUNDS", NULL); //R20
    else {
        cgLabel(ctx, negLbl);
        fputs("  call void @__olang_check_failed(ptr @__olang_msg_arraylen)\n", ctx->fnOut);
        cgBr(ctx, okLbl);
        cgLabel(ctx, okLbl);
    }

    struct type elemT = *op->type.arrElem;
    long long elemSize = TypeGetSize(elemT);
    char* byteSize = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = mul i64 %s, %lld\n", byteSize, count, elemSize);

    //T7: "Array<T>(n)" is a temporary - built in the scope of whatever it lands in when that is known
    //(E12c), otherwise in the block it is written in
    char* scopeVal = !op->type.scopeParam && ctx->targetScopeOverride ? ctx->targetScopeOverride
                     : cgResolveScope(ctx, op->type.scopeParam, op->type.scopeDepth);
    char* bytes = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 %s)\n", bytes, scopeVal, byteSize);
    //D15b: a local "T[expr]" is left as the arena hands it over - chunk memory is recycled, so that is
    //genuinely whatever was there before. A D14a constructor field still zero-fills (noZeroFill is set
    //only at the local var-decl), since a field has no "= v" form to ask for a fill with.
    if (op->args.len > 1) {
        //T7: "Array<T>(n, v)" - every element is v
        struct operand* fillOp = *(struct operand**)ListGetIdx(&op->args, 1);
        char* fillVal = cgValueForTarget(ctx, fillOp, elemT, NULL);
        cgFillLoop(ctx, elemT, bytes, count, fillVal);
    } else if (!op->noZeroFill) {
        fprintf(ctx->fnOut, "  call void @llvm.memset.p0.i64(ptr %s, i8 0, i64 %s, i1 false)\n", bytes, byteSize);
    }

    //register every one of this array's N slots for destruction up front, at allocation time - not
    //deferred until (or gated on) individual elements actually being assigned later. Each destructor call
    //nothing to register: zero-filling constructs no instances (O16), and a destructor-declaring element
    //type is reference-only (C11) so it can't be zero-filled into existence here at all.

    char* agg1 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } undef, i64 %s, 0\n", agg1, count);
    char* agg2 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } %s, ptr %s, 1\n", agg2, agg1, bytes);
    return agg2;
}

//E28: "a if c else b" - the chosen value, converted to the conditional's type on its own path, through one slot.
//A value built here (text, an array) is built in the target's scope, which reaches the branch as the override.
char* cgCond(struct cgCtx* ctx, struct operand* op) {
    struct operand* c = *(struct operand**)ListGetIdx(&op->args, 0);
    char ty[256];
    llvmType(op->type, ty, sizeof(ty));
    char* slot = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca %s, align %lld\n", slot, ty, cgStackAlign(op->type));
    char* cv = cgValue(ctx, c);
    int id = ctx->lblCtr++;
    char thenLbl[32], elseLbl[32], endLbl[32];
    snprintf(thenLbl, sizeof(thenLbl), "cond.then.%d", id);
    snprintf(elseLbl, sizeof(elseLbl), "cond.else.%d", id);
    snprintf(endLbl, sizeof(endLbl), "cond.end.%d", id);
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", cv, thenLbl, elseLbl);
    ctx->terminated = true;
    for (int b = 1; b <= 2; b++) {
        cgLabel(ctx, b == 1 ? thenLbl : elseLbl);
        struct operand* v = *(struct operand**)ListGetIdx(&op->args, b);
        char* val = cgValueForTarget(ctx, v, op->type, ctx->targetScopeOverride);
        cgStoreInto(ctx, op->type, v->type, val, slot, ctx->targetScopeOverride, false, OperandIsLvalue(v), false);
        cgBr(ctx, endLbl);
    }
    cgLabel(ctx, endLbl);
    return cgLoadOrAddr(ctx, op->type, slot, false);
}

//E30: "a < b <= c" - each comparison in turn, stopping at the first false; each operand is computed once, by
//the comparison that first reads it, and handed to the next through the operand's cache
char* cgCmpChain(struct cgCtx* ctx, struct operand* op) {
    char* slot = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca i1\n", slot);
    fprintf(ctx->fnOut, "  store i1 false, ptr %s\n", slot);
    int id = ctx->lblCtr++;
    char endLbl[32];
    snprintf(endLbl, sizeof(endLbl), "chain.end.%d", id);
    char* prev = NULL;
    for (int i = 0; i < op->args.len; i++) {
        struct operand* cmp = *(struct operand**)ListGetIdx(&op->args, i);
        struct operand* l = *(struct operand**)ListGetIdx(&cmp->args, 0);
        struct operand* r = *(struct operand**)ListGetIdx(&cmp->args, 1);
        char* lv = prev ? prev : cgValue(ctx, l);
        char* rv = cgValue(ctx, r);
        l->cgCached = lv;
        r->cgCached = rv;
        char* res = cgValue(ctx, cmp);
        l->cgCached = NULL;
        r->cgCached = NULL;
        prev = rv;
        if (i == op->args.len - 1) {
            fprintf(ctx->fnOut, "  store i1 %s, ptr %s\n", res, slot);
            cgBr(ctx, endLbl);
        } else {
            char nextLbl[40];
            snprintf(nextLbl, sizeof(nextLbl), "chain.next.%d.%d", id, i);
            fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", res, nextLbl, endLbl);
            ctx->terminated = true;
            cgLabel(ctx, nextLbl);
        }
    }
    cgLabel(ctx, endLbl);
    char* out = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load i1, ptr %s\n", out, slot);
    return out;
}

//E27: a comprehension - its loop emitted with an empty buffer in hand, each element appended to it. The storage
//comes from the scope the result lands in, as "Array<T>(n)"'s does; growing allocates the next one there and
//copies (the arena frees nothing before the scope closes, and nothing can hold the buffer before it is done).
char* cgComprehension(struct cgCtx* ctx, struct operand* op) {
    if (ctx->comprDepth >= 64) { fprintf(stderr, "comprehensions nest too deeply\n"); exit(1); }
    char* scopeVal = !op->type.scopeParam && ctx->targetScopeOverride ? ctx->targetScopeOverride
                     : cgResolveScope(ctx, op->type.scopeParam, op->type.scopeDepth);
    int d = ctx->comprDepth++;
    ctx->compr[d].elem = *op->type.arrElem;
    ctx->compr[d].scope = scopeVal;
    ctx->compr[d].buf = cgNewTmp(ctx);
    ctx->compr[d].len = cgNewTmp(ctx);
    ctx->compr[d].cap = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca ptr\n  %s = alloca i64\n  %s = alloca i64\n",
            ctx->compr[d].buf, ctx->compr[d].len, ctx->compr[d].cap);
    fprintf(ctx->fnOut, "  store ptr null, ptr %s\n  store i64 0, ptr %s\n  store i64 0, ptr %s\n",
            ctx->compr[d].buf, ctx->compr[d].len, ctx->compr[d].cap);
    //the loop's own temporaries land where they are written, not where the comprehension does
    char* prevOverride = ctx->targetScopeOverride;
    ctx->targetScopeOverride = NULL;
    cgBlock(ctx, &op->comprBody);
    ctx->targetScopeOverride = prevOverride;
    ctx->comprDepth--;
    char* n = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load i64, ptr %s\n", n, ctx->compr[d].len);
    char* p = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", p, ctx->compr[d].buf);
    char* agg1 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } undef, i64 %s, 0\n", agg1, n);
    char* agg2 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } %s, ptr %s, 1\n", agg2, agg1, p);
    return agg2;
}

//a new buffer of room elements in the comprehension's scope, the first len copied over from the old one
static void cgComprRealloc(struct cgCtx* ctx, int d, char* room) {
    long long size = TypeGetSize(ctx->compr[d].elem);
    char* bytes = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = mul i64 %s, %lld\n", bytes, room, size);
    char* nb = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 %s)\n", nb, ctx->compr[d].scope, bytes);
    char* ob = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", ob, ctx->compr[d].buf);
    char* n = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load i64, ptr %s\n", n, ctx->compr[d].len);
    char* used = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = mul i64 %s, %lld\n", used, n, size);
    fprintf(ctx->fnOut, "  call void @llvm.memcpy.p0.p0.i64(ptr %s, ptr %s, i64 %s, i1 false)\n", nb, ob, used);
    fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n  store i64 %s, ptr %s\n", nb, ctx->compr[d].buf, room, ctx->compr[d].cap);
}

//E27: room for at most n elements, known before the loop runs (an array's length, a range's count)
void cgComprReserve(struct cgCtx* ctx, struct operand* op) {
    int d = ctx->comprDepth - 1;
    char* n = cgValue(ctx, *(struct operand**)ListGetIdx(&op->args, 0));
    cgComprRealloc(ctx, d, n);
}

//E27: the element appended, the buffer first grown if it is full - to 100 from nothing, then doubling
void cgComprPush(struct cgCtx* ctx, struct operand* op) {
    int d = ctx->comprDepth - 1;
    struct operand* v = *(struct operand**)ListGetIdx(&op->args, 0);
    char* val = cgValueForTarget(ctx, v, ctx->compr[d].elem, NULL);
    int id = ctx->lblCtr++;
    char growLbl[32], putLbl[32];
    snprintf(growLbl, sizeof(growLbl), "compr.grow.%d", id);
    snprintf(putLbl, sizeof(putLbl), "compr.put.%d", id);
    char* n = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load i64, ptr %s\n", n, ctx->compr[d].len);
    char* cap = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load i64, ptr %s\n", cap, ctx->compr[d].cap);
    char* full = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp eq i64 %s, %s\n", full, n, cap);
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", full, growLbl, putLbl);
    ctx->terminated = true;
    cgLabel(ctx, growLbl);
    char* isEmpty = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp eq i64 %s, 0\n", isEmpty, cap);
    char* dbl = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = shl i64 %s, 1\n", dbl, cap);
    char* room = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = select i1 %s, i64 100, i64 %s\n", room, isEmpty, dbl);
    cgComprRealloc(ctx, d, room);
    cgBr(ctx, putLbl);
    cgLabel(ctx, putLbl);
    char* buf = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", buf, ctx->compr[d].buf);
    char* n2 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load i64, ptr %s\n", n2, ctx->compr[d].len);
    char elemTy[256];
    llvmType(ctx->compr[d].elem, elemTy, sizeof(elemTy));
    char* slot = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 %s\n", slot, elemTy, buf, n2);
    cgStoreInto(ctx, ctx->compr[d].elem, v->type, val, slot, NULL, false, OperandIsLvalue(v), true);
    char* n3 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = add i64 %s, 1\n  store i64 %s, ptr %s\n", n3, n2, n3, ctx->compr[d].len);
}

//E16a: a slice is a BORROW with the pointer and length adjusted - one GEP and two insertvalues, no
//allocation and no copy, which is the whole reason it is cheap. The base pointer comes from wherever the
//array already keeps it: the data half of a runtime-length descriptor, or the storage address of a
//compile-time-length array (embedded or "&"-marked alike, exactly as cgIndexAddr gets it).
//a slice bound may be any integer type (T6 adapts a literal, but a variable keeps its own); the GEP index
//and the length word are both i64, so widen whatever came in
static char* cgToI64(struct cgCtx* ctx, struct operand* v) {
    char* raw = cgValue(ctx, v);
    if (v->type.bType == BASETYPE_INT64) return raw;
    char* ext = cgNewTmp(ctx);
    char* instr = v->type.bType == BASETYPE_BYTE ? "zext" : "sext";
    char ty[64];
    llvmType(v->type, ty, sizeof(ty));
    fprintf(ctx->fnOut, "  %s = %s %s %s to i64\n", ext, instr, ty, raw);
    return ext;
}

//E16/E16b: what happens when a bounds check fails. Without "try" this is the same hard abort a failed
//assert produces - __olang_check_failed never returns (it longjmps out of the enclosing test under -t and
//aborts otherwise), so nothing ever continues with an out-of-range access. With "try" (E16c/E16d) it
//propagates the bare error under THIS function's own signature instead, which is the same encode-and-return
//an "error" statement performs: there is no callee whose code would need decoding first.
//Shared by the slice and index checks, which differ only in what they compare.
static void cgCheckFailed(struct cgCtx* ctx, struct operand* op, char* okLbl, char* badLbl, char* word,
                          char* abortMsg);
static void cgBoundsFailed(struct cgCtx* ctx, struct operand* op, char* okLbl, char* badLbl) {
    //an index or slice inside "try (...)" fails through that try (R20)
    struct operand* root = op->checkRoot && op->checkRoot != op ? op->checkRoot : op;
    cgCheckFailed(ctx, root, okLbl, badLbl, "OUT_OF_BOUNDS", "@__olang_msg_slice");
}

//a check written with "try" failed with BuiltinError.word: the catch clauses take it, or it propagates under
//this function's own signature - the encode-and-return an "error" statement performs, there being no callee
//whose code needs decoding. Without "try" a failed check aborts, as a failed assert does.
static void cgCheckFailed(struct cgCtx* ctx, struct operand* op, char* okLbl, char* badLbl, char* word,
                          char* abortMsg) {
    cgLabel(ctx, badLbl);
    struct type* builtin = SemanticBuiltinErrorType();
    int wordOrd = SemanticBuiltinErrorWord(word);
    ctx->staticErrType = builtin;
    ctx->staticErrWord = wordOrd;
    if (op->catchClauses.len && !cgCatchDispatch(ctx, op, &op->catchClauses, NULL, NULL, NULL)) {
        //R9b: a clause took the error - its default stands in for the result
    } else if (op->isTried) {
        long long code = errorCode(ctx->curFunc->type, *builtin, wordOrd);
        cgCloseOwnScope(ctx);
        if (ctx->curFunc->type.hasRetType) {
            char wrapTy[256];
            llvmFuncRetType(ctx->curFunc->type, wrapTy, sizeof(wrapTy));
            char* v = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = insertvalue %s undef, i32 %lld, 0\n", v, wrapTy, code);
            fprintf(ctx->fnOut, "  ret %s %s\n", wrapTy, v);
        } else {
            fprintf(ctx->fnOut, "  ret i32 %lld\n", code);
        }
        ctx->terminated = true;
    } else {
        if (abortMsg) {
            fprintf(ctx->fnOut, "  call void @__olang_check_failed(ptr %s)\n", abortMsg);
            cgBr(ctx, okLbl);
        } else { fputs("  unreachable\n", ctx->fnOut); ctx->terminated = true; }
    }
    cgLabel(ctx, okLbl);
}

char* cgSliceValue(struct cgCtx* ctx, struct operand* op) {
    struct operand* base = *(struct operand**)ListGetIdx(&op->args, 0);
    struct operand* lo = *(struct operand**)ListGetIdx(&op->args, 1);
    struct operand* hi = *(struct operand**)ListGetIdx(&op->args, 2);
    char elemTy[256];
    llvmType(*base->type.arrElem, elemTy, sizeof(elemTy));

    char* baseVal = cgValue(ctx, base);
    char* dataPtr;
    if (base->type.arrMalloc) {
        dataPtr = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 1\n", dataPtr, baseVal);
    } else {
        dataPtr = baseVal;
    }
    char* loVal = cgToI64(ctx, lo);
    char* hiVal = cgToI64(ctx, hi);

    //E16b: the bounds are checked, unlike an ordinary index (E16). The asymmetry is deliberate and is about
    //blast radius, not consistency: a bad index is one wrong access at the point it is written, while a bad
    //slice manufactures a VALUE that is wrong for as long as it lives - it can be returned, stored, passed
    //on, and read a million times, so the failure surfaces arbitrarily far from the mistake. The check is
    //also cheap where an index check would not be: you slice once and then read the slice N times, so this
    //is two compares amortised over the whole loop. __olang_check_failed never returns (it longjmps out of
    //the enclosing test under -t, and hard-aborts otherwise), so nothing continues with a bad slice.
    char* baseLen;
    if (base->type.arrMalloc) {
        baseLen = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 0\n", baseLen, baseVal);
    } else {
        baseLen = MallocOrCrash(32);
        snprintf(baseLen, 32, "%lld", base->type.arrLen ? base->type.arrLen->intLiteralVal : 0);
    }
    char* loNonNeg = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp sge i64 %s, 0\n", loNonNeg, loVal);
    char* loLeHi = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp sle i64 %s, %s\n", loLeHi, loVal, hiVal);
    char* hiLeLen = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp sle i64 %s, %s\n", hiLeLen, hiVal, baseLen);
    char* both = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", both, loNonNeg, loLeHi);
    char* inRange = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", inRange, both, hiLeLen);
    int bid = ctx->lblCtr++;
    char badLbl[32], okLbl[32];
    snprintf(badLbl, sizeof(badLbl), "slice.bad.%d", bid);
    snprintf(okLbl, sizeof(okLbl), "slice.ok.%d", bid);
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", inRange, okLbl, badLbl);
    ctx->terminated = true;
    cgBoundsFailed(ctx, op, okLbl, badLbl);

    char* start = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 %s\n", start, elemTy, dataPtr, loVal);
    char* len = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = sub i64 %s, %s\n", len, hiVal, loVal);
    char* agg1 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } undef, i64 %s, 0\n", agg1, len);
    char* agg2 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } %s, ptr %s, 1\n", agg2, agg1, start);
    return agg2;
}

// ---- E11a/E11b: rendering values as text, and joining text ----
//
//Every rendering is written by the same two-pass contract snprintf has: a pass with a null destination
//only MEASURES, returning the byte count; a pass with a real destination writes exactly that. So a join
//measures every piece, allocates once, and writes each piece in place - nothing is rendered into an
//intermediate buffer. Anything that is not a primitive renders through one helper function per type,
//"i64 @olang.rd.<key>(ptr dst, ptr valueAddr, i32 depth)", emitted once per object as linkonce_odr (the
//choice-equality helpers' pattern) - a function rather than inline code because a type can reach itself
//through a reference, and because an array needs a loop.

#define RD_MAX_DEPTH 8 //E11a: references followed along one path before the rest is written as "..."

static char* cgRenderFn(struct cgCtx* ctx, struct type t, bool row);
static void rdSpellType(struct type t, char* buf, size_t n);

//a stable name for a type, for the helper's symbol
static void rdKey(struct type t, char* buf, size_t n) {
    char inner[512] = "";
    if (t.owner && t.name.len > 0) mangleTypeName(t.owner, t.name, inner, sizeof(inner));
    switch (t.bType) {
        case BASETYPE_ARRAY: {
            char e[400];
            rdKey(*t.arrElem, e, sizeof(e));
            if (t.arrMalloc) snprintf(buf, n, "%s%sa.r.%s", inner, t.structMAlloc ? "m" : "", e);
            else snprintf(buf, n, "%s%sa.%lld.%s", inner, t.structMAlloc ? "m" : "",
                          t.arrLen ? t.arrLen->intLiteralVal : 0, e);
            return;
        }
        case BASETYPE_STRUCT: case BASETYPE_CHOICE:
            if (!inner[0]) snprintf(inner, sizeof(inner), "anon%p", t.vars.ptr);
            snprintf(buf, n, "%s%s", t.structMAlloc ? "m" : "", inner);
            return;
        case BASETYPE_INTERFACE:
            snprintf(buf, n, "%s", inner);
            return;
        case BASETYPE_FUNC: { //structural, so its spelling is its identity - made symbol-safe
            char sp[1200];
            rdSpellType(t, sp, sizeof(sp));
            size_t k = 0;
            for (size_t i = 0; sp[i] && k + 3 < n; i++) {
                char c = sp[i];
                bool ok = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9');
                if (ok) buf[k++] = c;
                else k += (size_t)snprintf(buf + k, n - k, "_%02x", (unsigned char)c);
                if (k >= n) { k = n - 1; break; }
            }
            buf[k] = '\0';
            return;
        }
        default: {
            char ty[64];
            llvmType(t, ty, sizeof(ty));
            snprintf(buf, n, "%s%s%s", inner, inner[0] ? "." : "", t.bType == BASETYPE_BYTE ? "c" : ty);
            return;
        }
    }
}

//a type spelled as it is written in source - the element type an array rendering starts with, and the
//parameter and result types of a function or interface rendering

static void rdSpellAppend(char* buf, size_t n, const char* more) {
    size_t used = strlen(buf);
    if (used + 1 < n) snprintf(buf + used, n - used, "%s", more);
}

//"(a int32, b mut Point&) int32 ? E + F", the part of a signature after its name
static void rdSpellSig(struct type f, char* buf, size_t n) {
    buf[0] = '\0';
    rdSpellAppend(buf, n, "(");
    for (int i = 0; i < f.vars.len; i++) {
        struct var* p = ListGetIdx(&f.vars, i);
        char one[512], ty[400];
        rdSpellType(p->type, ty, sizeof(ty));
        snprintf(one, sizeof(one), "%s%.*s %s%s", i ? ", " : "", p->name.len, p->name.ptr, p->mut ? "mut " : "", ty);
        rdSpellAppend(buf, n, one);
    }
    rdSpellAppend(buf, n, ")");
    if (f.hasRetType && f.retType) {
        char ty[600];
        rdSpellType(*f.retType, ty, sizeof(ty));
        rdSpellAppend(buf, n, " ");
        rdSpellAppend(buf, n, ty);
    }
    //R16: the default error is spelled by the "?" itself, and never by name
    int written = 0;
    if (f.errors.len) rdSpellAppend(buf, n, " ?");
    for (int i = 0; i < f.errors.len; i++) {
        struct type* e = *(struct type**)ListGetIdx(&f.errors, i);
        if (TypeIsSame(*e, *SemanticGenericErrorType())) continue;
        char one[300];
        snprintf(one, sizeof(one), "%s%.*s", written++ ? " + " : " ", e->name.len, e->name.ptr);
        rdSpellAppend(buf, n, one);
    }
}

static void rdSpellType(struct type t, char* buf, size_t n) {
    buf[0] = '\0';
    char mark[80] = "";
    if (t.structMAlloc) {
        if (t.scopeParam) snprintf(mark, sizeof(mark), "&%.*s", t.scopeParam->name.len, t.scopeParam->name.ptr);
        else snprintf(mark, sizeof(mark), "&");
    }
    if (t.bType == BASETYPE_ARRAY && !(t.owner && t.name.len)) {
        char e[400], suffix[40];
        rdSpellType(*t.arrElem, e, sizeof(e));
        if (t.arrMalloc) snprintf(suffix, sizeof(suffix), "[]");
        else snprintf(suffix, sizeof(suffix), "[%lld]", t.arrLen ? t.arrLen->intLiteralVal : 0);
        snprintf(buf, n, "%s%s%s", e, suffix, mark);
        return;
    }
    if (t.bType == BASETYPE_FUNC) {
        char sig[1200];
        rdSpellSig(t, sig, sizeof(sig));
        snprintf(buf, n, "fn%s", sig);
        return;
    }
    if (t.bType == BASETYPE_TYPEVAR) { snprintf(buf, n, "<%.*s>", t.name.len, t.name.ptr); return; }
    if (t.isTuple) {
        rdSpellAppend(buf, n, "(");
        for (int i = 0; i < t.vars.len; i++) {
            char ty[300];
            rdSpellType(((struct var*)ListGetIdx(&t.vars, i))->type, ty, sizeof(ty));
            if (i) rdSpellAppend(buf, n, ", ");
            rdSpellAppend(buf, n, ty);
        }
        rdSpellAppend(buf, n, ")");
        return;
    }
    if (t.genericOrigin && t.typeArgs.len) {
        snprintf(buf, n, "%.*s<", t.genericOrigin->name.len, t.genericOrigin->name.ptr);
        for (int i = 0; i < t.typeArgs.len; i++) {
            char ty[300];
            rdSpellType(*(struct type*)ListGetIdx(&t.typeArgs, i), ty, sizeof(ty));
            if (i) rdSpellAppend(buf, n, ", ");
            rdSpellAppend(buf, n, ty);
        }
        rdSpellAppend(buf, n, ">");
        rdSpellAppend(buf, n, mark);
        return;
    }
    if (t.name.len) { snprintf(buf, n, "%.*s%s", t.name.len, t.name.ptr, mark); return; }
    const char* prim = "?";
    switch (t.bType) {
        case BASETYPE_BOOL: prim = "Bool"; break;
        case BASETYPE_BYTE: prim = "Byte"; break;
        case BASETYPE_INT32: prim = "Int32"; break;
        case BASETYPE_INT64: prim = "Int64"; break;
        case BASETYPE_FLOAT32: prim = "Float32"; break;
        case BASETYPE_FLOAT64: prim = "Float64"; break;
        default: break;
    }
    snprintf(buf, n, "%s%s", prim, mark);
}

//the compile-time evaluator renders "$x" exactly as the generated code does, so it spells types with these
void RdSpellType(struct type t, char* buf, size_t n) { rdSpellType(t, buf, n); }
void RdSpellSig(struct type f, char* buf, size_t n) { rdSpellSig(f, buf, n); }

//E11a: an interface is its name and its methods' signatures
static void rdSpellInterface(struct type t, char* buf, size_t n) {
    snprintf(buf, n, "%.*s{", t.name.len, t.name.ptr);
    for (int i = 0; i < t.vars.len; i++) {
        struct var* m = ListGetIdx(&t.vars, i);
        char sig[1200], one[1400];
        rdSpellSig(m->type, sig, sizeof(sig));
        snprintf(one, sizeof(one), "%s%s%.*s%s", i ? ", " : "", m->mut ? "mut " : "", m->name.len, m->name.ptr, sig);
        rdSpellAppend(buf, n, one);
    }
    rdSpellAppend(buf, n, "}");
}
void RdSpellInterface(struct type t, char* buf, size_t n) { rdSpellInterface(t, buf, n); }

//appends src[0..len) at the cursor (%rd.n) of the helper being emitted
static void rdPut(struct cgCtx* ctx, char* src, char* len) {
    char* at = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load i64, ptr %%rd.n\n", at);
    fprintf(ctx->fnOut, "  call void @__olang_rd_put(ptr %%rd.dst, i64 %s, ptr %s, i64 %s)\n", at, src, len);
    char* nx = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = add i64 %s, %s\n", nx, at, len);
    fprintf(ctx->fnOut, "  store i64 %s, ptr %%rd.n\n", nx);
}

static void rdPutText(struct cgCtx* ctx, const char* text) {
    char* g = cgGlobalStringConst(ctx, (char*)text);
    char len[24];
    snprintf(len, sizeof(len), "%d", (int)strlen(text));
    rdPut(ctx, g, len);
}

//the destination at the cursor, or null while measuring
static char* rdHere(struct cgCtx* ctx, char** atOut) {
    char* at = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load i64, ptr %%rd.n\n", at);
    char* p = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr i8, ptr %%rd.dst, i64 %s\n", p, at);
    char* p2 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = select i1 %%rd.measure, ptr null, ptr %s\n", p2, p);
    *atOut = at;
    return p2;
}

static void rdAdvance(struct cgCtx* ctx, char* at, char* k) {
    char* nx = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = add i64 %s, %s\n", nx, at, k);
    fprintf(ctx->fnOut, "  store i64 %s, ptr %%rd.n\n", nx);
}

//E11a: nested text, quoted and escaped by the runtime (a byte in '', a byte array in "")
static void rdPutQuoted(struct cgCtx* ctx, char* src, char* count, int quote) {
    char* at = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load i64, ptr %%rd.n\n", at);
    char* k = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call i64 @__olang_rd_quote(ptr %%rd.dst, i64 %s, ptr %s, i64 %s, i8 %d)\n",
            k, at, src, count, quote);
    rdAdvance(ctx, at, k);
}

//a number, through the runtime's snprintf wrappers. While writing, the capacity only bounds what snprintf
//may write - the measured length is exact, and its trailing NUL lands on the next piece's first byte (or on
//the one spare byte a join allocates past the end), which is overwritten or unused
static void rdPutNumber(struct cgCtx* ctx, struct type t, char* addr) {
    char ty[64];
    llvmType(t, ty, sizeof(ty));
    char* v = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", v, ty, addr);
    bool isFloat = TypeIsFloat(t);
    char* wide = cgNewTmp(ctx);
    if (t.bType == BASETYPE_FLOAT32) fprintf(ctx->fnOut, "  %s = fpext float %s to double\n", wide, v);
    else if (t.bType == BASETYPE_FLOAT64) fprintf(ctx->fnOut, "  %s = fadd double %s, 0.0\n", wide, v);
    else if (t.bType == BASETYPE_INT64) fprintf(ctx->fnOut, "  %s = add i64 %s, 0\n", wide, v);
    else fprintf(ctx->fnOut, "  %s = sext i32 %s to i64\n", wide, v);
    char* at;
    char* p = rdHere(ctx, &at);
    char* cap = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = select i1 %%rd.measure, i64 0, i64 64\n", cap);
    char* k = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call i64 @__olang_fmt_%s(ptr %s, i64 %s, %s %s)\n",
            k, isFloat ? "f64" : "i64", p, cap, isFloat ? "double" : "i64", wide);
    rdAdvance(ctx, at, k);
}

//renders the value of type t at addr into the helper being emitted: a primitive inline, anything else
//through its own helper
static void rdPutValue(struct cgCtx* ctx, struct type t, char* addr, char* depth, bool rowCtx) {
    {
        if (t.bType == BASETYPE_BOOL) {
            char* v = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = load i1, ptr %s\n", v, addr);
            char* tt = cgGlobalStringConst(ctx, "true");
            char* ff = cgGlobalStringConst(ctx, "false");
            char* sp = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = select i1 %s, ptr %s, ptr %s\n", sp, v, tt, ff);
            char* sl = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = select i1 %s, i64 4, i64 5\n", sl, v);
            rdPut(ctx, sp, sl);
            return;
        }
        if (t.bType == BASETYPE_BYTE) { rdPutQuoted(ctx, addr, "1", '\''); return; } //nested: 'c'

        if (TypeIsNumeric(t)) { rdPutNumber(ctx, t, addr); return; }
    }
    //an unmarked array inside an array is a ROW of it, written without its own element type
    char* fn = cgRenderFn(ctx, t, rowCtx);
    char* at;
    char* p = rdHere(ctx, &at);
    char* k = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call i64 %s(ptr %s, ptr %s, i32 %s)\n", k, fn, p, addr, depth);
    rdAdvance(ctx, at, k);
}

//"T[e0, e1, ...]" over count elements of type elem starting at base - the way an array literal is written:
//the element type once, then the items, a nested unmarked array being a bare "[...]" row of the outer one.
//A byte array is text instead, in quotes.
static void rdPutElems(struct cgCtx* ctx, struct type elem, char* base, char* count, bool row) {
    if (elem.bType == BASETYPE_BYTE) { rdPutQuoted(ctx, base, count, '"'); return; }
    char ety[256];
    llvmType(elem, ety, sizeof(ety));
    int id = ctx->lblCtr++;
    char* iSlot = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca i64\n", iSlot);
    fprintf(ctx->fnOut, "  store i64 0, ptr %s\n", iSlot);
    if (!row) {
        struct type base0 = elem;
        while (base0.bType == BASETYPE_ARRAY && !base0.structMAlloc && !(base0.owner && base0.name.len)
               && base0.arrElem->bType != BASETYPE_BYTE) base0 = *base0.arrElem;
        char spelled[600];
        rdSpellType(base0, spelled, sizeof(spelled));
        rdPutText(ctx, spelled);
    }
    rdPutText(ctx, "[");
    fprintf(ctx->fnOut, "  br label %%rd.cond.%d\nrd.cond.%d:\n", id, id);
    char* iv = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load i64, ptr %s\n", iv, iSlot);
    char* more = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp slt i64 %s, %s\n", more, iv, count);
    fprintf(ctx->fnOut, "  br i1 %s, label %%rd.body.%d, label %%rd.done.%d\nrd.body.%d:\n", more, id, id, id);
    char* notFirst = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp sgt i64 %s, 0\n", notFirst, iv);
    fprintf(ctx->fnOut, "  br i1 %s, label %%rd.sep.%d, label %%rd.elem.%d\nrd.sep.%d:\n", notFirst, id, id, id);
    rdPutText(ctx, ", ");
    fprintf(ctx->fnOut, "  br label %%rd.elem.%d\nrd.elem.%d:\n", id, id);
    char* ea = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 %s\n", ea, ety, base, iv);
    rdPutValue(ctx, elem, ea, "%rd.depth", true);
    char* inc = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = add i64 %s, 1\n", inc, iv);
    fprintf(ctx->fnOut, "  store i64 %s, ptr %s\n", inc, iSlot);
    fprintf(ctx->fnOut, "  br label %%rd.cond.%d\nrd.done.%d:\n", id, id);
    rdPutText(ctx, "]");
}

//a type's name as written, without an instantiation's argument suffix
static void rdTypeName(struct type t, char* buf, size_t n) {
    int len = 0;
    while (len < t.name.len && t.name.ptr[len] != '$') len++;
    snprintf(buf, n, "%.*s", len, t.name.ptr);
}

//the fields of a struct shape at addr, "a, b, c"
static void rdPutFields(struct cgCtx* ctx, struct type t, char* addr) {
    char storTy[2048];
    structAggSpelling(t, storTy, sizeof(storTy));
    for (int i = 0; i < t.vars.len; i++) {
        struct var* m = ListGetIdx(&t.vars, i);
        if (i > 0) rdPutText(ctx, ", ");
        char* fa = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 %d\n", fa, storTy, addr, i);
        rdPutValue(ctx, m->type, fa, "%rd.depth", false);
    }
}

//the body of t's helper, rendering the value at %rd.val
static void rdBody(struct cgCtx* ctx, struct type t, bool row) {
    int id = ctx->lblCtr++;
    bool markedRuntime = t.bType == BASETYPE_ARRAY && t.arrMalloc && t.structMAlloc;
    bool markedPtr = t.structMAlloc && !markedRuntime
            && (t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_ARRAY);
    //a reference: "null", "..." past the depth limit, or its referent one level deeper
    if (markedRuntime || markedPtr) {
        struct type referent = t;
        referent.structMAlloc = false;
        char* ptr = cgNewTmp(ctx);
        char* target = "%rd.val";
        if (markedPtr) {
            fprintf(ctx->fnOut, "  %s = load ptr, ptr %%rd.val\n", ptr);
            target = ptr;
        } else {
            char* pp = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = getelementptr { i64, ptr }, ptr %%rd.val, i32 0, i32 1\n", pp);
            fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", ptr, pp);
        }
        char* isNull = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp eq ptr %s, null\n", isNull, ptr);
        fprintf(ctx->fnOut, "  br i1 %s, label %%rd.null.%d, label %%rd.live.%d\nrd.null.%d:\n", isNull, id, id, id);
        rdPutText(ctx, "null");
        fprintf(ctx->fnOut, "  br label %%rd.end.%d\nrd.live.%d:\n", id, id);
        char* deep = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp sge i32 %%rd.depth, %d\n", deep, RD_MAX_DEPTH);
        fprintf(ctx->fnOut, "  br i1 %s, label %%rd.deep.%d, label %%rd.in.%d\nrd.deep.%d:\n", deep, id, id, id);
        rdPutText(ctx, "...");
        fprintf(ctx->fnOut, "  br label %%rd.end.%d\nrd.in.%d:\n", id, id);
        char* d1 = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = add i32 %%rd.depth, 1\n", d1);
        rdPutValue(ctx, referent, target, d1, false);
        fprintf(ctx->fnOut, "  br label %%rd.end.%d\nrd.end.%d:\n", id, id);
        return;
    }
    char name[256];
    rdTypeName(t, name, sizeof(name));
    switch (t.bType) {
        case BASETYPE_ARRAY: {
            if (t.arrMalloc) {
                char* lp = cgNewTmp(ctx);
                fprintf(ctx->fnOut, "  %s = getelementptr { i64, ptr }, ptr %%rd.val, i32 0, i32 0\n", lp);
                char* len = cgNewTmp(ctx);
                fprintf(ctx->fnOut, "  %s = load i64, ptr %s\n", len, lp);
                char* pp = cgNewTmp(ctx);
                fprintf(ctx->fnOut, "  %s = getelementptr { i64, ptr }, ptr %%rd.val, i32 0, i32 1\n", pp);
                char* base = cgNewTmp(ctx);
                fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", base, pp);
                rdPutElems(ctx, *t.arrElem, base, len, row);
            } else {
                char cnt[24];
                snprintf(cnt, sizeof(cnt), "%lld", t.arrLen ? t.arrLen->intLiteralVal : 0);
                rdPutElems(ctx, *t.arrElem, "%rd.val", cnt, row);
            }
            return;
        }
        case BASETYPE_STRUCT: {
            if (t.isTuple) { //D8c: a call's several results, "(a, b)"
                rdPutText(ctx, "(");
                rdPutFields(ctx, t, "%rd.val");
                rdPutText(ctx, ")");
                return;
            }
            char open[300];
            snprintf(open, sizeof(open), "%s(", name);
            rdPutText(ctx, open);
            rdPutFields(ctx, t, "%rd.val");
            rdPutText(ctx, ")");
            return;
        }
        case BASETYPE_CHOICE: {
            bool payload = ChoiceHasPayload(t);
            char ty[256];
            llvmType(t, ty, sizeof(ty));
            char* tag = cgNewTmp(ctx);
            char* payAddr = NULL;
            if (payload) {
                char* tp = cgNewTmp(ctx);
                fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %%rd.val, i32 0, i32 0\n", tp, ty);
                fprintf(ctx->fnOut, "  %s = load i64, ptr %s\n", tag, tp);
                payAddr = cgNewTmp(ctx);
                fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %%rd.val, i32 0, i32 1\n", payAddr, ty);
            } else {
                char* t32 = cgNewTmp(ctx);
                fprintf(ctx->fnOut, "  %s = load i32, ptr %%rd.val\n", t32);
                fprintf(ctx->fnOut, "  %s = sext i32 %s to i64\n", tag, t32);
            }
            fprintf(ctx->fnOut, "  switch i64 %s, label %%rd.end.%d [", tag, id);
            for (int i = 0; i < t.vars.len; i++) fprintf(ctx->fnOut, " i64 %d, label %%rd.case.%d.%d", i, id, i);
            fprintf(ctx->fnOut, " ]\n");
            for (int i = 0; i < t.vars.len; i++) {
                struct var* c = ListGetIdx(&t.vars, i);
                fprintf(ctx->fnOut, "rd.case.%d.%d:\n", id, i);
                char word[600];
                snprintf(word, sizeof(word), "%s%s%.*s", name, name[0] ? "." : "", c->name.len, c->name.ptr);
                rdPutText(ctx, word);
                if (payload && c->type.vars.len > 0) {
                    rdPutText(ctx, "(");
                    rdPutFields(ctx, c->type, payAddr);
                    rdPutText(ctx, ")");
                }
                fprintf(ctx->fnOut, "  br label %%rd.end.%d\n", id);
            }
            fprintf(ctx->fnOut, "rd.end.%d:\n", id);
            return;
        }
        case BASETYPE_FUNC: case BASETYPE_INTERFACE: {
            //E11a: a function value is its signature and an interface its name and methods' signatures -
            //what they are, not what they hold. A null one is "null".
            char* w = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = load ptr, ptr %%rd.val\n", w); //a function pointer, or an interface's table
            char* isNull = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = icmp eq ptr %s, null\n", isNull, w);
            fprintf(ctx->fnOut, "  br i1 %s, label %%rd.null.%d, label %%rd.live.%d\nrd.null.%d:\n", isNull, id, id, id);
            rdPutText(ctx, "null");
            fprintf(ctx->fnOut, "  br label %%rd.end.%d\nrd.live.%d:\n", id, id);
            char spelled[2400];
            if (t.bType == BASETYPE_FUNC) rdSpellType(t, spelled, sizeof(spelled));
            else rdSpellInterface(t, spelled, sizeof(spelled));
            rdPutText(ctx, spelled);
            fprintf(ctx->fnOut, "  br label %%rd.end.%d\nrd.end.%d:\n", id, id);
            return;
        }
        default:
            //a primitive reached as a helper's own type (a top-level "$x" on a number or a bool)
            rdPutValue(ctx, t, "%rd.val", "%rd.depth", false);
            return;
    }
}

//emits (once per object) the rendering helper for t and returns its symbol
static char* cgRenderFn(struct cgCtx* ctx, struct type t, bool row) {
    row = row && t.bType == BASETYPE_ARRAY && !t.structMAlloc;
    char key[600];
    rdKey(t, key, sizeof(key));
    char* sym = MallocOrCrash(640);
    snprintf(sym, 640, "@olang.rd.%s%.620s", row ? "row." : "", key);
    if (cgSymAlreadyEmitted(ctx, sym)) return sym;

    FILE* savedOut = ctx->fnOut;
    bool savedTerm = ctx->terminated;
    char* buf;
    size_t sz;
    FILE* body = open_memstream(&buf, &sz);
    if (!body) ErrorBugFound();
    ctx->fnOut = body;
    ctx->terminated = false;
    fprintf(body, "define linkonce_odr i64 %s(ptr %%rd.dst, ptr %%rd.val, i32 %%rd.depth) {\nentry:\n", sym);
    struct cgBodyBuf bb;
    cgBodyBegin(ctx, &bb);
    fprintf(cgAllocaOut(ctx), "  %%rd.n = alloca i64\n");
    fprintf(ctx->fnOut, "  store i64 0, ptr %%rd.n\n");
    fprintf(ctx->fnOut, "  %%rd.measure = icmp eq ptr %%rd.dst, null\n");
    rdBody(ctx, t, row);
    fprintf(ctx->fnOut, "  %%rd.result = load i64, ptr %%rd.n\n  ret i64 %%rd.result\n}\n\n");
    cgBodyEnd(ctx, &bb);
    ctx->fnOut = savedOut;
    ctx->terminated = savedTerm;
    fflush(body);
    fwrite(buf, 1, sz, ctx->out);
    fclose(body);
    free(buf);
    return sym;
}

//one piece of a join, measured: either a descriptor to copy or a value to render through its helper
struct textPiece { char* desc; char* fn; char* addr; char* len; };

//the address of op's value, spilling a value held in a register
static char* cgValueAddr(struct cgCtx* ctx, struct operand* op) {
    char* v = cgValue(ctx, op);
    if (typeIsByRef(op->type)) return v;
    char ty[256];
    llvmType(op->type, ty, sizeof(ty));
    char* slot = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", slot, ty);
    fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", ty, v, slot);
    return slot;
}

static void cgTextParts(struct cgCtx* ctx, struct operand* op, struct list* out) {
    if (op->opType == OPERATION_CONCAT) {
        cgTextParts(ctx, *(struct operand**)ListGetIdx(&op->args, 0), out);
        cgTextParts(ctx, *(struct operand**)ListGetIdx(&op->args, 1), out);
        return;
    }
    ListAdd(out, &op);
}

//E11a/E11b: "$x" alone or a join of text pieces - every piece measured, one allocation, each written in
//place. At the top level a byte is its character and a byte array its bytes (text is shown as itself);
//everything else renders through its helper, where nested text is quoted.
static char* cgText(struct cgCtx* ctx, struct operand* op) {
    struct list parts = ListInit(sizeof(struct operand*));
    cgTextParts(ctx, op, &parts);
    char* scopeVal = ctx->targetScopeOverride ? ctx->targetScopeOverride
            : op->type.scopeParam || op->type.scopeDepth
                    ? cgResolveScope(ctx, op->type.scopeParam, op->type.scopeDepth)
                    : cgResolveScope(ctx, NULL, ctx->blockDepth);
    struct type textT = op->type;
    struct list pieces = ListInit(sizeof(struct textPiece));
    char* total = "0";
    for (int i = 0; i < parts.len; i++) {
        struct operand* p = *(struct operand**)ListGetIdx(&parts, i);
        struct textPiece tp = {0};
        struct operand* in = p->opType == OPERATION_STR_OF ? *(struct operand**)ListGetIdx(&p->args, 0) : NULL;
        if (!in) { //a literal
            tp.desc = cgBorrowValue(ctx, textT, p->type, cgValue(ctx, p));
        } else if (in->type.bType == BASETYPE_FUNC && in->opType == OPERATION_READ_VAR && in->readVar
                   && in->readVar->isFuncDecl && !in->readVar->isLambda) { //D16: a lambda has no name to show
            //E11a: a function named directly is known here, so its rendering carries its name
            char sig[1200], text[1400];
            rdSpellSig(in->type, sig, sizeof(sig));
            snprintf(text, sizeof(text), "%.*s%s", in->readVar->name.len, in->readVar->name.ptr, sig);
            char* g = cgGlobalStringConst(ctx, text);
            char* d1 = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } undef, i64 %d, 0\n", d1, (int)strlen(text));
            tp.desc = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } %s, ptr %s, 1\n", tp.desc, d1, g);
        } else if (in->type.bType == BASETYPE_BYTE) {
            char* addr = cgValueAddr(ctx, in);
            char* d1 = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } undef, i64 1, 0\n", d1);
            tp.desc = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } %s, ptr %s, 1\n", tp.desc, d1, addr);
        } else if (in->type.bType == BASETYPE_ARRAY && in->type.arrElem->bType == BASETYPE_BYTE) {
            tp.desc = cgBorrowValue(ctx, textT, in->type, cgValue(ctx, in));
        } else {
            tp.fn = cgRenderFn(ctx, in->type, false);
            tp.addr = cgValueAddr(ctx, in);
            tp.len = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = call i64 %s(ptr null, ptr %s, i32 0)\n", tp.len, tp.fn, tp.addr);
        }
        if (tp.desc) {
            tp.len = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 0\n", tp.len, tp.desc);
        }
        char* t = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = add i64 %s, %s\n", t, total, tp.len);
        total = t;
        ListAdd(&pieces, &tp);
    }
    //one spare byte: a number's snprintf writes a NUL just past itself, which lands here for the last piece
    char* alloc = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = add i64 %s, 1\n", alloc, total);
    char* buf = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 %s)\n", buf, scopeVal, alloc);
    char* at = "0";
    for (int i = 0; i < pieces.len; i++) {
        struct textPiece* tp = ListGetIdx(&pieces, i);
        char* dst = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr i8, ptr %s, i64 %s\n", dst, buf, at);
        if (tp->desc) {
            char* src = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 1\n", src, tp->desc);
            fprintf(ctx->fnOut, "  call void @llvm.memcpy.p0.p0.i64(ptr %s, ptr %s, i64 %s, i1 false)\n",
                    dst, src, tp->len);
        } else {
            char* ignored = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = call i64 %s(ptr %s, ptr %s, i32 0)\n", ignored, tp->fn, dst, tp->addr);
        }
        char* nx = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = add i64 %s, %s\n", nx, at, tp->len);
        at = nx;
    }
    ListDestroy(pieces);
    ListDestroy(parts);
    char* a1 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } undef, i64 %s, 0\n", a1, total);
    char* a2 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } %s, ptr %s, 1\n", a2, a1, buf);
    return a2;
}

//R9a: "try X default d" - both outcomes land in one slot: the success value on the ordinary path, the
//default on the failure path (see cgTryDefaultFailed), joined after.
static char* cgTryDefaultValue(struct cgCtx* ctx, struct operand* op) {
    struct operand* savedOp = ctx->tdOp;
    char* savedSlot = ctx->tdSlot;
    char savedJoin[32];
    memcpy(savedJoin, ctx->tdJoin, sizeof(savedJoin));
    char ty[256];
    llvmType(op->type, ty, sizeof(ty));
    char* slot = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", slot, ty);
    ctx->tdOp = op;
    ctx->tdSlot = slot;
    snprintf(ctx->tdJoin, sizeof(ctx->tdJoin), "try.join.%d", ctx->lblCtr++);
    char join[32];
    memcpy(join, ctx->tdJoin, sizeof(join));
    char* v = cgValue(ctx, op);
    cgStoreInto(ctx, op->type, op->type, v, slot, NULL, false, false, false);
    cgBr(ctx, join);
    cgLabel(ctx, join);
    ctx->tdOp = savedOp;
    ctx->tdSlot = savedSlot;
    memcpy(ctx->tdJoin, savedJoin, sizeof(savedJoin));
    return cgLoadOrAddr(ctx, op->type, slot, false);
}

//R9a/R9b: a clause's default becomes the try's value - stored in the slot of the try being emitted and
//joined. The slot and label are read before the default is evaluated, since the default may itself hold a
//try with a slot of its own.
static void cgTryDefaultStore(struct cgCtx* ctx, struct operand* op, struct operand* dflt) {
    char* slot = ctx->tdSlot;
    char join[32];
    memcpy(join, ctx->tdJoin, sizeof(join));
    //against the result type as seen from here (tryDefaultType): a temporary default is allocated into the
    //scope the call's result was bound to, which the callee's own scope variable names nothing for here
    char* dv = cgValueForTarget(ctx, dflt, op->tryDefaultType, NULL);
    cgStoreInto(ctx, op->tryDefaultType, dflt->type, dv, slot, NULL, false, OperandIsLvalue(dflt), false);
    cgBr(ctx, join);
}

//R9b: the failure path of a try with catch clauses, tried in order. code is the error code, or NULL for a
//failed bounds check, whose one possible error (the bare error) makes every match static. Each clause runs
//its block; one with a default then stores it as the try's value (value position), and a statement's clause
//falling off its block continues after the statement (endLbl). Returns true when an error no clause names
//can reach the current position, where the caller emits its propagation - which differs between a call and
//a bounds check - and false when every error is taken (the position is then closed off).
static bool cgCatchDispatch(struct cgCtx* ctx, struct operand* op, struct list* clauses, char* code,
                            struct type* funcType, char* endLbl) {
    int id = ctx->lblCtr++;
    char* typeOrd = NULL;
    if (code) {
        typeOrd = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = lshr i32 %s, 16\n", typeOrd, code);
    }
    for (int c = 0; c < clauses->len; c++) {
        struct catchClause* cc = ListGetIdx(clauses, c);
        char clauseLbl[48], nextLbl[48];
        snprintf(clauseLbl, sizeof(clauseLbl), "catch.clause.%d.%d", id, c);
        snprintf(nextLbl, sizeof(nextLbl), "catch.next.%d.%d", id, c);
        if (cc->catchAll) {
            cgBr(ctx, clauseLbl);
        } else if (!code) {
            bool takes = false;
            for (int i = 0; i < cc->matches.len; i++) {
                struct catchMatch* cm = ListGetIdx(&cc->matches, i);
                if (ctx->staticErrType && TypeIsSame(cm->errType, *ctx->staticErrType)
                        && (!cm->hasWord || cm->wordOrdinal == ctx->staticErrWord)) takes = true;
            }
            cgBr(ctx, takes ? clauseLbl : nextLbl);
        } else {
            char* matched = "false";
            for (int i = 0; i < cc->matches.len; i++) {
                struct catchMatch* cm = ListGetIdx(&cc->matches, i);
                int ord = errorTypeOrdinal(*funcType, cm->errType);
                char* cmp = cgNewTmp(ctx);
                if (cm->hasWord) {
                    long long exact = ((long long)ord << 16) | cm->wordOrdinal;
                    fprintf(ctx->fnOut, "  %s = icmp eq i32 %s, %lld\n", cmp, code, exact);
                } else {
                    fprintf(ctx->fnOut, "  %s = icmp eq i32 %s, %d\n", cmp, typeOrd, ord);
                }
                char* next = cgNewTmp(ctx);
                fprintf(ctx->fnOut, "  %s = or i1 %s, %s\n", next, matched, cmp);
                matched = next;
            }
            fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", matched, clauseLbl, nextLbl);
            ctx->terminated = true;
        }
        cgLabel(ctx, clauseLbl);
        if (cc->hasBlock) cgBlock(ctx, &cc->block);
        if (cc->dflt) cgTryDefaultStore(ctx, op, cc->dflt);
        else if (endLbl) cgBr(ctx, endLbl);
        else if (!ctx->terminated) { fputs("  unreachable\n", ctx->fnOut); ctx->terminated = true; }
        cgLabel(ctx, nextLbl);
    }
    //reached only by an error no clause named
    bool uncaught = true;
    if (clauses->len && ((struct catchClause*)ListGetIdx(clauses, clauses->len - 1))->catchAll) uncaught = false;
    if (uncaught && code && funcType) {
        struct list all = ListInit(sizeof(struct catchMatch));
        for (int c = 0; c < clauses->len; c++) {
            struct catchClause* cc = ListGetIdx(clauses, c);
            for (int i = 0; i < cc->matches.len; i++) ListAdd(&all, ListGetIdx(&cc->matches, i));
        }
        uncaught = false;
        for (int i = 0; i < funcType->errors.len; i++) {
            struct type* e = *(struct type**)ListGetIdx(&funcType->errors, i);
            if (!StatementCatchCoversType(&all, *e)) { uncaught = true; break; }
        }
    } else if (uncaught && !code) {
        for (int c = 0; c < clauses->len; c++) {
            struct catchClause* cc = ListGetIdx(clauses, c);
            for (int i = 0; i < cc->matches.len; i++) {
                struct catchMatch* cm = ListGetIdx(&cc->matches, i);
                if (ctx->staticErrType && TypeIsSame(cm->errType, *ctx->staticErrType)
                        && (!cm->hasWord || cm->wordOrdinal == ctx->staticErrWord)) uncaught = false;
            }
        }
    }
    if (!uncaught) { fputs("  unreachable\n", ctx->fnOut); ctx->terminated = true; }
    return uncaught;
}

void cgStatement(struct cgCtx* ctx, struct statement* s);
char* cgCond(struct cgCtx* ctx, struct operand* op);
char* cgCmpChain(struct cgCtx* ctx, struct operand* op);
char* cgValue(struct cgCtx* ctx, struct operand* op) {
    if (op->cgCached) return op->cgCached; //E30: a chain's shared operand, computed once
    if (op->tryNeedsSlot && ctx->tdOp != op) return cgTryDefaultValue(ctx, op);
    switch (op->opType) {
        case OPERATION_COND: return cgCond(ctx, op);
        case OPERATION_CMP_CHAIN: return cgCmpChain(ctx, op);
        case OPERATION_SEQ:
            for (int i = 0; i < op->comprBody.len; i++) cgStatement(ctx, ListGetIdx(&op->comprBody, i));
            return cgValue(ctx, *(struct operand**)ListGetIdx(&op->args, 0));
        case OPERATION_NONE: return cgLiteral(ctx, op);
        case OPERATION_ATOMIC_LOAD:
        case OPERATION_ATOMIC_STORE:
        case OPERATION_ATOMIC_ADD:
        case OPERATION_ATOMIC_SWAP:
        case OPERATION_ATOMIC_CAS: return cgAtomic(ctx, op);
        case OPERATION_LEN: return cgLen(ctx, op);
        //T29: a nominal conversion changes the NAME, never the bytes - so there is nothing to emit for it
        //beyond whatever E12 would already do to get the value to the underlying type. In practice that is
        //the one widening case: a compile-time-length literal reaching a run-time-length named type keeps
        //its pointer and materialises the length beside it (cgBorrowValue), which copies nothing.
        case OPERATION_NOMINAL_CONVERT: {
            struct operand* inner = *(struct operand**)ListGetIdx(&op->args, 0);
            char* v = cgValue(ctx, inner);
            return cgBorrowValue(ctx, op->type, inner->type, v);
        }
        case OPERATION_STR_OF: case OPERATION_CONCAT: return cgText(ctx, op);
        case OPERATION_SLICE: return cgSliceValue(ctx, op);
        case OPERATION_SIZED_ARRAY_ALLOC: return cgSizedArrayAlloc(ctx, op);
        case OPERATION_COMPREHENSION: return cgComprehension(ctx, op);
        case OPERATION_COMPR_PUSH: cgComprPush(ctx, op); return "";
        case OPERATION_COMPR_RESERVE: cgComprReserve(ctx, op); return "";
        case OPERATION_NUMERIC_CONVERT: return cgNumericConvert(ctx, op);
        case OPERATION_READ_VAR: case OPERATION_INDEX: case OPERATION_MEMBER: {
            char* addr = cgAddr(ctx, op);
            //a bare read of a global FUNCTION (not a local variable/parameter that merely *holds* a
            //function pointer, e.g. "f" inside "func apply(f func(...) ? T)") has no separate storage
            //slot to load through at all - cgLookupVarAddr's "not a local, so mangle as global" branch
            //returns the function's own mangled symbol directly, which unlike every other global IS
            //already the value (an LLVM `define`, not a `global` storage declaration) - loading "through"
            //it would read the function's own machine code as if it were a stored pointer. Every other
            //global genuinely is a storage slot, so this only carves out the function case.
            if (op->opType == OPERATION_READ_VAR && op->type.bType == BASETYPE_FUNC
                    && !cgFindLocal(ctx, op->readVar->name)) {
                if (op->readVar->isLambda && op->readVar->lambdaCaptures.len) return cgClosure(ctx, op, addr); //D16c
                return cgFuncValue(ctx, op->readVar, addr);
            }
            return cgLoadOrAddr(ctx, op->type, addr, op->opType == OPERATION_INDEX);
        }
        case OPERATION_FUNCCALL: return cgFuncCall(ctx, op);
        case OPERATION_NOT: case OPERATION_BTWSE_INV: case OPERATION_MINUS:
            return cgUnaryOp(ctx, op);
        case OPERATION_PREFIX_INC: return cgIncDec(ctx, op, true, true);
        case OPERATION_PREFIX_DEC: return cgIncDec(ctx, op, true, false);
        case OPERATION_POSTFIX_INC: return cgIncDec(ctx, op, false, true);
        case OPERATION_POSTFIX_DEC: return cgIncDec(ctx, op, false, false);
        default: return cgBinaryOp(ctx, op); //remaining enum values are all binary operators
    }
}

void cgBlockJoining(struct cgCtx* ctx, struct list* block, char* joinHead);
void cgBlock(struct cgCtx* ctx, struct list* block);
void cgStatement(struct cgCtx* ctx, struct statement* s);

//P2: one task's view of one scope. The task gets a private, empty arena standing in for the scope its
//caller named, and the spawner folds it back in after the join (see cgSpawn) - so a scope is only ever
//bumped by the thread that owns it, while every value allocated through it still lives exactly as long as
//the scope it was tagged with. Without this, two tasks handed the same "&s" bumped one cursor with no
//synchronisation at all: they were handed the same chunk, wrote over each other, and prepended two chunks
//onto one list head - reliably glibc-level heap corruption, not a lost update.
struct cgScopeMerge {
    char* sub;
    char* parent;
};

//P1: one task. Its arguments are evaluated here, in the spawner's frame, exactly as an ordinary call
//would evaluate them, then boxed into an env struct that a per-task trampoline unpacks on the new thread.
//The env is an alloca in this frame and the thread is joined before the frame is left, so it stays valid
//for the task's whole life. Field 0 is the target itself, which makes a call through a function-valued
//local work the same way a direct one does. Returns the pthread_t slot to join, and appends one entry to
//"merges" per scope this task was handed.
//P1g: `dstOp`, when non-NULL, is the lvalue the call's result is stored into. Its ADDRESS is taken here,
//in the spawner, and captured in the env - the task stores through it when its call returns. Taking it
//here rather than on the task is what makes "spawn results[i] = f(i)" in a loop mean slot i: the index is
//evaluated at the spawn, not whenever the task happens to run.
void cgSpawnTask(struct cgCtx* ctx, struct operand* op, struct list* merges, struct list* dstOps) {
    struct var* func = op->readVar;
    int id = ctx->lblCtr++;
    char* joinScope = cgScopeSlotAt(ctx, ctx->joinDepth);

    //M19a: a spawned dispatch needs no special machinery - the task env already carries a function
    //POINTER and the trampoline already calls it indirectly, so a table entry slots straight in
    char* ifaceData = NULL;
    char* closure = NULL;
    char* target = op->isIfaceDispatch ? cgDispatchTarget(ctx, op, &ifaceData) : cgNamedTarget(ctx, func, &closure);

    //the same marshalling cgFuncCall performs, captured rather than passed
    char envTy[4096] = "{ ptr";
    char vals[64][512];
    char tys[64][256];
    int n = 0;
    if (closure) { //D16: a call through a function value passes its closure first
        snprintf(tys[n], sizeof(tys[n]), "ptr");
        snprintf(vals[n], sizeof(vals[n]), "%s", closure);
        n++;
    }
    for (int i = 0; i < func->type.scopeVars.len && n < 63; i++) {
        struct var* sv = *(struct var**)ListGetIdx(&func->type.scopeVars, i);
        //the task allocates into a private arena of its own rather than into the caller's directly; the
        //two are spliced together at the join, which is the only point at which one thread is provably
        //done with it and the other has not resumed
        struct cgScopeMerge m;
        m.parent = cgResolveScope(ctx, SemanticBoundScope(op, sv), ctx->blockDepth);
        //from the JOIN block's arena, not an alloca: a join inside a loop would otherwise grow the stack
        //by a scope header per task, and the header has to outlive the task rather than the iteration
        m.sub = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 24)\n", m.sub, joinScope);
        fprintf(ctx->fnOut, "  store %%olang.scope zeroinitializer, ptr %s\n", m.sub);
        ListAdd(merges, &m);
        snprintf(tys[n], sizeof(tys[n]), "ptr");
        snprintf(vals[n], sizeof(vals[n]), "%s", m.sub);
        n++;
    }
    for (int i = 0; i < op->args.len && n < 63; i++) {
        struct operand* argOp = *(struct operand**)ListGetIdx(&op->args, i);
        struct type paramT = (*(struct var*)ListGetIdx(&func->type.vars, i)).type;
        if (op->isIfaceDispatch && i == 0) {
            snprintf(tys[n], sizeof(tys[n]), "ptr"); //every table entry takes the instance as a bare ptr
            snprintf(vals[n], sizeof(vals[n]), "%s", ifaceData);
            n++;
            continue;
        }
        char* scopeOverride = cgResolveParamScopeOverride(ctx, func, op, paramT);
        char* av = cgBoundaryValue(ctx, argOp, paramT, scopeOverride);
        llvmType(paramT, tys[n], sizeof(tys[n]));
        snprintf(vals[n], sizeof(vals[n]), "%s", av);
        n++;
    }
    //each destination is one more captured value, after the real arguments (D8c: one per result bound;
    //a "_" captures nothing and its result is simply not stored)
    int dstIdx[64];
    int nArgs = n; //everything from here on is a destination, captured and never passed
    int nDst = dstOps ? dstOps->len : 0;
    for (int d = 0; d < nDst && d < 64; d++) {
        struct operand* dstOp = *(struct operand**)ListGetIdx(dstOps, d);
        dstIdx[d] = -1;
        if (!dstOp || n >= 63) continue;
        snprintf(tys[n], sizeof(tys[n]), "ptr");
        snprintf(vals[n], sizeof(vals[n]), "%s", cgAddr(ctx, dstOp));
        dstIdx[d] = n++;
    }
    for (int i = 0; i < n; i++) {
        char piece[300];
        snprintf(piece, sizeof(piece), ", %.256s", tys[i]);
        strncat(envTy, piece, sizeof(envTy) - strlen(envTy) -1);
    }
    strncat(envTy, " }", sizeof(envTy) - strlen(envTy) -1);

    char* env = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 ptrtoint (ptr getelementptr (%s, ptr null, i32 1) to i64))\n",
            env, joinScope, envTy);
    char* fnSlot = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 0\n", fnSlot, envTy, env);
    fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", target, fnSlot);
    for (int i = 0; i < n; i++) {
        char* slot = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 %d\n", slot, envTy, env, i +1);
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", tys[i], vals[i], slot);
    }

    //P1: the task node lives in the join block's arena and carries the thread handle plus whatever
    //sub-scopes have to be folded back. Pushed onto the join's list, which the block walks at its end.
    char* node = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 24)\n", node, joinScope);
    char* mergeHead = MallocOrCrash(8);
    strcpy(mergeHead, "null");
    for (int i = 0; i < merges->len; i++) {
        struct cgScopeMerge* m = ListGetIdx(merges, i);
        char* mn = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 24)\n", mn, joinScope);
        char* slot0 = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %%olang.merge, ptr %s, i32 0, i32 0\n", slot0, mn);
        fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", mergeHead, slot0);
        char* slot1 = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %%olang.merge, ptr %s, i32 0, i32 1\n", slot1, mn);
        fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", m->parent, slot1);
        char* slot2 = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %%olang.merge, ptr %s, i32 0, i32 2\n", slot2, mn);
        fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", m->sub, slot2);
        mergeHead = mn;
    }
    char* mslot = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %%olang.task, ptr %s, i32 0, i32 2\n", mslot, node);
    fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", mergeHead, mslot);
    //P1e: a worker from the cache, not a fresh thread. __olang_worker_get is where a thread is created
    //if none is parked, and where P1c's check now lives.
    //the done flag has to be cleared BEFORE the worker is started, or a task that finishes immediately
    //sets it and this store puts it straight back to "not finished"
    char* dslot = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %%olang.task, ptr %s, i32 0, i32 1\n", dslot, node);
    fprintf(ctx->fnOut, "  store i64 0, ptr %s\n", dslot);
    char* worker = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call ptr @__olang_worker_get()\n", worker);
    fprintf(ctx->fnOut, "  call void @__olang_worker_start(ptr %s, ptr @olang.task.%d, ptr %s, ptr %s)\n",
            worker, id, env, node);
    char* oldHead = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", oldHead, ctx->joinTaskHead);
    char* nslot = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %%olang.task, ptr %s, i32 0, i32 0\n", nslot, node);
    fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", oldHead, nslot);
    fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", node, ctx->joinTaskHead);

    //the trampoline, written straight to the module stream: pthread hands it one void* and wants one back
    fprintf(ctx->out, "define internal ptr @olang.task.%d(ptr %%env) {\nentry:\n", id);
    fprintf(ctx->out, "  %%fnslot = getelementptr %s, ptr %%env, i32 0, i32 0\n", envTy);
    fprintf(ctx->out, "  %%fn = load ptr, ptr %%fnslot\n");
    char callArgs[4096] = "";
    for (int i = 0; i < n; i++) {
        fprintf(ctx->out, "  %%s%d = getelementptr %s, ptr %%env, i32 0, i32 %d\n", i, envTy, i +1);
        fprintf(ctx->out, "  %%a%d = load %s, ptr %%s%d\n", i, tys[i], i);
        if (i >= nArgs) continue; //a destination is captured, never passed to the call
        char piece[400];
        snprintf(piece, sizeof(piece), "%s%.256s %%a%d", strlen(callArgs) ? ", " : "", tys[i], i);
        strncat(callArgs, piece, sizeof(callArgs) - strlen(callArgs) -1);
    }
    if (func->type.hasRetType) {
        char retTy[256];
        llvmType(*func->type.retType, retTy, sizeof(retTy));
        fprintf(ctx->out, "  %%r = call %s %%fn(%s)\n", retTy, callArgs);
        //P1g: the result lands in the spawner's storage the instant the call returns. A plain store is
        //all this can be - the types were required to agree exactly (SPAWN_RESULT_TYPE) precisely
        //because there is no caller frame here to run a conversion or a promotion in.
        if (func->type.retType->isTuple) {
            for (int d = 0; d < nDst && d < 64; d++) {
                if (dstIdx[d] < 0) continue;
                char elTy[256];
                llvmType((*(struct var*)ListGetIdx(&func->type.retType->vars, d)).type, elTy, sizeof(elTy));
                fprintf(ctx->out, "  %%r.%d = extractvalue %s %%r, %d\n  store %s %%r.%d, ptr %%a%d\n",
                        d, retTy, d, elTy, d, dstIdx[d]);
            }
        } else if (nDst == 1 && dstIdx[0] >= 0) {
            fprintf(ctx->out, "  store %s %%r, ptr %%a%d\n", retTy, dstIdx[0]);
        }
    } else {
        fprintf(ctx->out, "  call void %%fn(%s)\n", callArgs);
    }
    //P2a used to drain this thread's chunk pool here, because the thread was about to exit and take the
    //pool with it. A worker does not exit (P1e), so the pool stays and the next task to run on this
    //worker reuses it - the leak P2a fixed is gone by construction rather than by cleanup, and the
    //retained memory is bounded by the number of workers instead of the number of tasks.
    fprintf(ctx->out, "  ret ptr null\n}\n\n");
}

//P1: one task. Its bookkeeping - the env, any sub-scopes, the node holding the thread handle - all comes
//from the enclosing join block's arena, which is exactly the lifetime it needs: the join runs before that
//arena is reclaimed. Nothing is alloca'd, so a join block inside a loop can start any number of tasks.
void cgSpawn(struct cgCtx* ctx, struct statement* s) {
    if (!s->op || !ctx->joinTaskHead) return; //rejected in the checker (P1)
    struct list merges = ListInit(sizeof(struct cgScopeMerge));
    cgSpawnTask(ctx, s->op, &merges, &s->spawnTargets);
}

//P1: "join { ... }" - an ordinary block whose end waits for every task spawned directly inside it. The
//head lives in an entry-block alloca per depth, so a join nested in a loop re-arms rather than growing
//the stack; cgBlockJoining emits the wait before the block's own arena is reclaimed.
void cgJoin(struct cgCtx* ctx, struct statement* s) {
    char* prevHead = ctx->joinTaskHead;
    int prevDepth = ctx->joinDepth;
    int idx = ctx->blockDepth - 1;
    char* head = (idx >= 0 && idx < ctx->joinPool.len) ? *(char**)ListGetIdx(&ctx->joinPool, idx) : NULL;
    if (head) fprintf(ctx->fnOut, "  store ptr null, ptr %s\n", head);
    ctx->joinTaskHead = head;
    ctx->joinDepth = ctx->blockDepth + 1;
    cgBlockJoining(ctx, &s->block, head);
    ctx->joinTaskHead = prevHead;
    ctx->joinDepth = prevDepth;
}

//O2: how deep this body's blocks nest, so cgFunc can alloca one scope header per depth in the ENTRY
//block. Emitting them where the block starts would put an alloca inside a loop, growing the stack by a
//header per iteration - a stack overflow at a few million iterations, which is exactly the workload block
//scopes exist to make cheap. One slot per depth is enough because only one block at a given depth is ever
//open at a time within a frame, and closing resets the header to empty.
static int cgMaxBlockDepth(struct list* block) {
    int deepest = 0;
    for (int i = 0; i < block->len; i++) {
        struct statement* s = ListGetIdx(block, i);
        int here = 0;
        if (s->block.len) here = cgMaxBlockDepth(&s->block);
        if (s->elseStmnt) {
            int e = s->elseStmnt->block.len ? cgMaxBlockDepth(&s->elseStmnt->block) : 0;
            struct list one = ListInit(sizeof(struct statement));
            ListAdd(&one, s->elseStmnt);
            int chained = cgMaxBlockDepth(&one);
            if (e > here) here = e;
            if (chained - 1 > here) here = chained - 1;
        }
        for (int c = 0; c < s->matchCases.len; c++) {
            struct statement* cs = ListGetIdx(&s->matchCases, c);
            int d = cs->block.len ? cgMaxBlockDepth(&cs->block) : 0;
            if (d > here) here = d;
        }
        if (s->nomatchBlock.len) {
            int d = cgMaxBlockDepth(&s->nomatchBlock);
            if (d > here) here = d;
        }
        if (here + 1 > deepest) deepest = here + 1;
    }
    return deepest;
}

void cgBlock(struct cgCtx* ctx, struct list* block) { cgBlockJoining(ctx, block, NULL); }

void cgBlockJoining(struct cgCtx* ctx, struct list* block, char* joinHead) {
    cgPushScope(ctx);
    ctx->blockDepth++;
    //O2: depth 1 is the body itself, whose arena cgFunc/the test harness already opened. Anything deeper
    //gets its own, so an allocation in a loop body is reclaimed each iteration instead of accumulating
    //for the whole call. The header is three null pointers and the close finds nothing to do when nothing
    //allocated (O2b), so a block that allocates nothing costs almost exactly nothing.
    char* slot = NULL;
    int idx = ctx->blockDepth - 2;
    if (idx >= 0 && idx < ctx->scopePool.len && ctx->ownScopeSlot) {
        slot = *(char**)ListGetIdx(&ctx->scopePool, idx);
        //re-entering this depth: the previous occupant was closed, which reset the header, but zero it
        //again so a block reached without its predecessor closing (a return out of a sibling) is still empty
        fprintf(ctx->fnOut, "  store %%olang.scope zeroinitializer, ptr %s\n", slot);
        //S18b/P1d: onto the unwind chain. Two stores - the node's prev and scope were filled in once in
        //the entry block, so only its join head and the new chain top vary per entry.
        int ui = ctx->blockSlots.len;
        if (ui < ctx->unwindPool.len) {
            char* node = *(char**)ListGetIdx(&ctx->unwindPool, ui);
            char* js = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = getelementptr %%olang.unwind, ptr %s, i32 0, i32 2\n", js, node);
            fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", joinHead ? joinHead : "null", js);
            fprintf(ctx->fnOut, "  store ptr %s, ptr @__olang_unwind_top\n", node);
        }
        ListAdd(&ctx->blockSlots, &slot);
        ListAdd(&ctx->blockJoins, &joinHead);
    }
    for (int i = 0; i < block->len; i++) {
        struct statement* s = ListGetIdx(block, i);
        cgStatement(ctx, s);
    }
    //P1: the join happens before this block's arena is reclaimed - a task may still hold storage from it,
    //and its sub-scopes are folded back here too
    if (joinHead && !ctx->terminated) {
        fprintf(ctx->fnOut, "  call void @__olang_join_tasks(ptr %s)\n", joinHead);
    }
    if (slot) {
        //a block that ended in a return already closed this on its way out (cgCloseOwnScope)
        if (!ctx->terminated) {
            fprintf(ctx->fnOut, "  call void @__olang_scope_close(ptr %s)\n", slot);
            if (ctx->blockSlots.len -1 < ctx->unwindPool.len) {
                fprintf(ctx->fnOut, "  store ptr %s, ptr @__olang_unwind_top\n",
                        cgUnwindBelow(ctx, ctx->blockSlots.len -1));
            }
        }
        ctx->blockSlots.len--;
        ctx->blockJoins.len--;
    }
    ctx->blockDepth--;
    cgPopScope(ctx);
}

//D15c: writes `fillVal` into `count` consecutive elements starting at `basePtr`. A counted loop rather
//than N stores, since the count may be a run-time value and N may be large either way; LLVM's loop-idiom
//pass turns the zero case back into a memset, so "= 0" costs exactly what the old unconditional zero-fill
//did and a non-zero fill costs one store per element.
static void cgFillLoop(struct cgCtx* ctx, struct type elemT, char* basePtr, char* countVal, char* fillVal) {
    char elemTy[256];
    llvmType(elemT, elemTy, sizeof(elemTy));
    int id = ctx->lblCtr++;
    char condLbl[32], bodyLbl[32], endLbl[32];
    snprintf(condLbl, sizeof(condLbl), "fill.cond.%d", id);
    snprintf(bodyLbl, sizeof(bodyLbl), "fill.body.%d", id);
    snprintf(endLbl, sizeof(endLbl), "fill.end.%d", id);
    char* idxSlot = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca i64\n", idxSlot);
    fprintf(ctx->fnOut, "  store i64 0, ptr %s\n", idxSlot);
    cgBr(ctx, condLbl);
    cgLabel(ctx, condLbl);
    char* i = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load i64, ptr %s\n", i, idxSlot);
    char* more = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp slt i64 %s, %s\n", more, i, countVal);
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", more, bodyLbl, endLbl);
    ctx->terminated = true;
    cgLabel(ctx, bodyLbl);
    char* slotPtr = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 %s\n", slotPtr, elemTy, basePtr, i);
    fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", elemTy, fillVal, slotPtr);
    char* next = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = add i64 %s, 1\n", next, i);
    fprintf(ctx->fnOut, "  store i64 %s, ptr %s\n", next, idxSlot);
    cgBr(ctx, condLbl);
    cgLabel(ctx, endLbl);
}

void cgVarDecl(struct cgCtx* ctx, struct statement* s) {
    char ty[256];
    llvmType(s->var.type, ty, sizeof(ty));
    char* slot = cgDeclareLocal(ctx, s->var.name, s->var.type);
    fprintf(cgAllocaOut(ctx), "  %s = alloca %s, align %lld\n", slot, ty, cgStackAlign(s->var.type));
    cgDbgVar(ctx, slot, s->var.name, s->var.type, s->line, 0);
    //D15c: "x T[N] = v" / "x T[expr] = v" - every element gets v
    if (s->fillValue) {
        struct type elemT = *s->var.type.arrElem;
        char* fillVal = cgValueForTarget(ctx, s->fillValue, elemT, NULL);
        char* basePtr = slot;
        char* countVal;
        if (s->op) {
            //"T[expr]": the allocation produces { i64 len, ptr }, which is the variable's own value
            char* arr = cgValue(ctx, s->op);
            fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", ty, arr, slot);
            countVal = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 0\n", countVal, arr);
            basePtr = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 1\n", basePtr, arr);
        } else {
            countVal = MallocOrCrash(32);
            snprintf(countVal, 32, "%lld", s->var.type.arrLen ? s->var.type.arrLen->intLiteralVal : 0);
        }
        cgFillLoop(ctx, elemT, basePtr, countVal, fillVal);
        return;
    }
    if (!s->op) {
        //D15b: a declared-size array ("T[N]" here - "T[expr]" always carries its allocation in s->op) is
        //left uninitialized, which is the reason for writing a size and no value at all. Everything else
        //is its zero value, null included (D15a/T2a).
        //...but only when the declaration really reserves the array's own storage. A REFERENCE to a
        //declared-size array ("T[N]&") is one pointer, so D15b's reason for skipping - that zeroing costs
        //time proportional to the length - does not apply, and skipping left a wild pointer that "== null"
        //reported as non-null and that faulted on the first write through it. Its zero value is null
        //(T2a), and storing it is one instruction.
        if (s->var.type.bType == BASETYPE_ARRAY && !s->var.type.arrMalloc && !s->var.type.structMAlloc && !s->zeroFill) return;
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", ty, cgZeroValue(s->var.type), slot);
        return;
    }
    //T7b: a destructured array result is where that array was made - the local takes its storage as it is
    if (s->op->isMoveSource && s->var.type.bType == BASETYPE_ARRAY && s->var.type.arrMalloc && !s->var.type.structMAlloc) {
        char* src = cgAddr(ctx, s->op);
        char* d = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load { i64, ptr }, ptr %s\n", d, src);
        fprintf(ctx->fnOut, "  store { i64, ptr } %s, ptr %s\n", d, slot);
        return;
    }
    //C2d: a constructor field's value is part of the instance, so whatever it builds with no scope name
    //of its own - a reference field's referent, a nested constructor call's - goes where the instance lands
    char* here = s->ctorField ? ctx->ctorHere : NULL;
    char* prev = ctx->targetScopeOverride;
    if (here) ctx->targetScopeOverride = here;
    char* scope = here && !s->var.type.scopeParam ? here : NULL;
    char* rhs = cgValueForTarget(ctx, s->op, s->var.type, scope);
    cgStoreInto(ctx, s->var.type, s->op->type, rhs, slot, scope, false, OperandIsLvalue(s->op), false);
    ctx->targetScopeOverride = prev;
}

void cgAssign(struct cgCtx* ctx, struct statement* s) {
    //a bare "&" struct field or array element has no declared scope of its own (neither a field nor an
    //array's own element type can carry a "&name" tag independently of the whole array - see the report)
    //- by rule, its effective scope is always the SAME as whatever contains it. When the target of
    //"base.field = ..." or "base[i] = ..." is itself reached through a "&"-heap-indirect base, resolve
    //that scope (walking up an arbitrary chain of bare-"&" member accesses/indexes via
    //cgResolveEffectiveScope - not just one hop) and use it both for building the rhs (so any of ITS OWN
    //nested bare-"&" fields/elements inherit the same scope too, see cgValueForTarget) and for the actual
    //promotion below.
    char* scopeOverride = NULL;
    bool targetIsMemberOrIndex = s->target->opType == OPERATION_MEMBER || s->target->opType == OPERATION_INDEX;
    if (targetIsMemberOrIndex && cgIsReference(s->target->type)) {
        struct operand* base = *(struct operand**)ListGetIdx(&s->target->args, 0);
        if (cgIsReference(base->type) || cgValueHomeVar(s->target)) {
            scopeOverride = cgResolveEffectiveScope(ctx, base);
        }
    }
    char* val = cgValueForTarget(ctx, s->op, s->target->type, scopeOverride);
    char* addr = cgAddr(ctx, s->target);
    cgStoreInto(ctx, s->target->type, s->op->type, val, addr, scopeOverride, true, OperandIsLvalue(s->op),
                s->target->opType == OPERATION_INDEX);
}

void cgIf(struct cgCtx* ctx, struct statement* s) {
    char* cond = cgValue(ctx, s->op);
    int id = ctx->lblCtr++;
    char thenLbl[32], elseLbl[32], endLbl[32];
    snprintf(thenLbl, sizeof(thenLbl), "if.then.%d", id);
    snprintf(elseLbl, sizeof(elseLbl), "if.else.%d", id);
    snprintf(endLbl, sizeof(endLbl), "if.end.%d", id);
    bool hasElse = s->elseStmnt != NULL;
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", cond, thenLbl, hasElse ? elseLbl : endLbl);
    ctx->terminated = true;

    cgLabel(ctx, thenLbl);
    cgBlock(ctx, &s->block);
    cgBr(ctx, endLbl);

    if (hasElse) {
        cgLabel(ctx, elseLbl);
        if (s->elseIsBlock) cgBlock(ctx, &s->elseStmnt->block);
        else cgIf(ctx, s->elseStmnt);
        cgBr(ctx, endLbl);
    }

    cgLabel(ctx, endLbl);
}

//S11a: close every block scope opened since the innermost loop began, innermost first - the loop body's
//own included. Without this a "continue" past an allocation would leak that iteration's chunks for the
//rest of the call, and a destructor registered in the abandoned part would never run.
static void cgUnwindToLoop(struct cgCtx* ctx, struct cgLoop* lp) {
    for (int i = ctx->blockSlots.len - 1; i >= lp->slotsAtEntry; i--) {
        char* jh = *(char**)ListGetIdx(&ctx->blockJoins, i);
        if (jh) fprintf(ctx->fnOut, "  call void @__olang_join_tasks(ptr %s)\n", jh);
        fprintf(ctx->fnOut, "  call void @__olang_scope_close(ptr %s)\n", *(char**)ListGetIdx(&ctx->blockSlots, i));
    }
    //everything closed above is off the chain now, so the top is whatever sat below the loop's own level
    if (ctx->ownUnwindNode && ctx->blockSlots.len > lp->slotsAtEntry) {
        fprintf(ctx->fnOut, "  store ptr %s, ptr @__olang_unwind_top\n",
                cgUnwindBelow(ctx, lp->slotsAtEntry));
    }
}

void cgBreakOrContinue(struct cgCtx* ctx, bool isBreak) {
    if (ctx->loops.len == 0) return; //rejected in the checker (S11); nothing sensible to emit
    struct cgLoop* lp = ListGetIdx(&ctx->loops, ctx->loops.len - 1);
    cgUnwindToLoop(ctx, lp);
    cgBr(ctx, isBreak ? lp->breakLbl : lp->contLbl);
}

void cgFor(struct cgCtx* ctx, struct statement* s) {
    cgPushScope(ctx);
    //S9: "for { }" and "for cond { }" have no loop variable, and the first no condition
    if (s->forInit) {
        char ty[256];
        llvmType(s->var.type, ty, sizeof(ty));
        char* rhs = cgValueForTarget(ctx, s->forInit, s->var.type, NULL);
        char* slot = cgDeclareLocal(ctx, s->var.name, s->var.type);
        fprintf(cgAllocaOut(ctx), "  %s = alloca %s, align %lld\n", slot, ty, cgStackAlign(s->var.type));
        cgDbgVar(ctx, slot, s->var.name, s->var.type, s->line, 0);
        cgStoreInto(ctx, s->var.type, s->forInit->type, rhs, slot, NULL, false, OperandIsLvalue(s->forInit), false);
    }

    int id = ctx->lblCtr++;
    char condLbl[32], bodyLbl[32], endLbl[32];
    snprintf(condLbl, sizeof(condLbl), "for.cond.%d", id);
    snprintf(bodyLbl, sizeof(bodyLbl), "for.body.%d", id);
    snprintf(endLbl, sizeof(endLbl), "for.end.%d", id);

    cgBr(ctx, condLbl);
    cgLabel(ctx, condLbl);
    if (s->op) {
        char* cond = cgValue(ctx, s->op);
        fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", cond, bodyLbl, endLbl);
        ctx->terminated = true;
    } else {
        cgBr(ctx, bodyLbl);
    }

    //S11: "continue" lands on the post-expression, so the loop still advances; "break" on the exit
    char postLbl[32];
    snprintf(postLbl, sizeof(postLbl), "for.post.%d", id);
    struct cgLoop lp = {0};
    snprintf(lp.breakLbl, sizeof(lp.breakLbl), "%s", endLbl);
    snprintf(lp.contLbl, sizeof(lp.contLbl), "%s", postLbl);
    lp.slotsAtEntry = ctx->blockSlots.len;
    ListAdd(&ctx->loops, &lp);

    cgLabel(ctx, bodyLbl);
    cgBlock(ctx, &s->block);
    cgBr(ctx, postLbl);
    cgLabel(ctx, postLbl);
    if (s->forPost) cgStatement(ctx, s->forPost);
    cgBr(ctx, condLbl);

    ctx->loops.len--;
    cgLabel(ctx, endLbl);
    cgPopScope(ctx);
}

void cgDo(struct cgCtx* ctx, struct statement* s) {
    int id = ctx->lblCtr++;
    char bodyLbl[32], condLbl[32], endLbl[32];
    snprintf(bodyLbl, sizeof(bodyLbl), "do.body.%d", id);
    snprintf(condLbl, sizeof(condLbl), "do.cond.%d", id);
    snprintf(endLbl, sizeof(endLbl), "do.end.%d", id);
    struct cgLoop lp = {0};
    snprintf(lp.breakLbl, sizeof(lp.breakLbl), "%s", endLbl);
    snprintf(lp.contLbl, sizeof(lp.contLbl), "%s", condLbl); //S11: a do-loop re-checks its condition
    lp.slotsAtEntry = ctx->blockSlots.len;
    ListAdd(&ctx->loops, &lp);

    cgBr(ctx, bodyLbl);
    cgLabel(ctx, bodyLbl);
    cgBlock(ctx, &s->block);
    ctx->loops.len--;
    cgBr(ctx, condLbl);
    cgLabel(ctx, condLbl);
    char* cond = cgValue(ctx, s->op);
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", cond, bodyLbl, endLbl);
    ctx->terminated = true;
    cgLabel(ctx, endLbl);
}

void cgMatch(struct cgCtx* ctx, struct statement* s) {
    char* matchedVal = cgValue(ctx, s->op);
    //T17: a payload-carrying choice is compared by its TAG, and the payload is reached only inside an arm
    //whose tag test already passed - which is what makes reading it sound. Spilled to a slot once here,
    //since every binding arm GEPs its fields out of the same buffer.
    bool payloadChoice = s->op->type.bType == BASETYPE_CHOICE && ChoiceHasPayload(s->op->type);
    char* matchedSlot = NULL;
    char* matchedTag = NULL;
    char matchedTy[256] = "";
    if (payloadChoice) {
        llvmType(s->op->type, matchedTy, sizeof(matchedTy));
        matchedSlot = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", matchedSlot, matchedTy);
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", matchedTy, matchedVal, matchedSlot);
        matchedTag = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue %s %s, 0\n", matchedTag, matchedTy, matchedVal);
    }

    int id = ctx->lblCtr++;
    char endLbl[32];
    snprintf(endLbl, sizeof(endLbl), "match.end.%d", id);

    for (int i = 0; i < s->matchCases.len; i++) {
        struct statement* c = ListGetIdx(&s->matchCases, i);
        char* cmp;
        if (payloadChoice) {
            //a binding arm carries the case's ordinal directly; a bare "case Shape.Empty" arm over the
            //same type still built an ordinary choice-value operand, whose ordinal is the same number
            long long tag = c->isChoiceCase ? c->caseTag : c->op->intLiteralVal;
            cmp = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = icmp eq i64 %s, %lld\n", cmp, matchedTag, tag);
        } else {
            char* caseVal = cgValue(ctx, c->op);
            //structural equality for struct/array case values (see cgBinaryOp's == handling), not raw icmp
            cmp = cgDeepEq(ctx, s->op->type, matchedVal, caseVal);
        }
        char caseLbl[40], nextLbl[40];
        snprintf(caseLbl, sizeof(caseLbl), "match.case.%d.%d", id, i);
        snprintf(nextLbl, sizeof(nextLbl), "match.next.%d.%d", id, i);
        fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", cmp, caseLbl, nextLbl);
        ctx->terminated = true;
        cgLabel(ctx, caseLbl);
        //the arm's own codegen scope, so two arms binding the SAME name are two different locals - the
        //semantic side already scopes them that way, and without the matching push here both landed in
        //the enclosing scope and the second arm silently read the first arm's slot
        cgPushScope(ctx);
        //T17b: the payload's fields become real locals of this arm, copied out of the buffer now that the
        //tag test has proved which case is live
        if (c->isChoiceCase && c->caseBindings.len > 0) {
            struct var* caseVar = ListGetIdx(&s->op->type.vars, (int)c->caseTag);
            char payTy[2048];
            structAggSpelling(caseVar->type, payTy, sizeof(payTy));
            char* payAddr = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 1\n", payAddr, matchedTy, matchedSlot);
            for (int b = 0; b < c->caseBindings.len; b++) {
                struct var* bindVar = *(struct var**)ListGetIdx(&c->caseBindings, b);
                if (!bindVar) continue;
                struct type fieldT = (*(struct var*)ListGetIdx(&caseVar->type.vars, b)).type;
                char fty[256];
                llvmType(fieldT, fty, sizeof(fty));
                char* fieldAddr = cgNewTmp(ctx);
                fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 %d\n", fieldAddr, payTy, payAddr, b);
                char* slot = cgDeclareLocal(ctx, bindVar->name, fieldT);
                fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", slot, fty);
                char* loaded = cgLoadOrAddr(ctx, fieldT, fieldAddr, false);
                cgStoreInto(ctx, fieldT, fieldT, loaded, slot, NULL, false, true, false);
            }
        }
        cgBlock(ctx, &c->block);
        cgPopScope(ctx);
        cgBr(ctx, endLbl);
        cgLabel(ctx, nextLbl);
    }
    if (s->hasNomatch) cgBlock(ctx, &s->nomatchBlock);
    cgBr(ctx, endLbl);
    cgLabel(ctx, endLbl);
}

//a fallible function's success return wraps the value as { i32 0, T val } (or, with no success type at
//all, just `ret i32 0`) - see llvmFuncRetType. ctx->curFunc is NULL in a context with no real error-union
//semantics (global initializers, test bodies), where a fallible-style wrap never applies.
void cgRet(struct cgCtx* ctx, struct statement* s) {
    bool fallible = ctx->curFunc && ctx->curFunc->type.errors.len > 0;
    if (!s->op) {
        cgCloseOwnScope(ctx);
        fputs(fallible ? "  ret i32 0\n" : "  ret void\n", ctx->fnOut);
        ctx->terminated = true;
        return;
    }
    //the function's own declared return type (not s->op->type) decides malloc-promotion and the LLVM
    //type word here, same reasoning as the parameter case in cgFuncCall. Computed before closing this
    //function's own scope below: a bare "&" return type is rejected at the signature level (see
    //resolveFuncSig), so this can never itself resolve to the own scope that's about to close.
    struct type retT = *ctx->curFunc->type.retType;
    char ty[256];
    llvmType(retT, ty, sizeof(ty));
    //C2d: a constructor assembles its instance here, and whatever that copies into storage of its own - an
    //array value held by a field - belongs with the instance, not in the constructor's closing scope
    char* prevTarget = ctx->targetScopeOverride;
    if (ctx->ctorHere) ctx->targetScopeOverride = ctx->ctorHere;
    char* val = cgBoundaryValue(ctx, s->op, retT, NULL);
    ctx->targetScopeOverride = prevTarget;
    cgCloseOwnScope(ctx);
    if (!fallible) {
        fprintf(ctx->fnOut, "  ret %s %s\n", ty, val);
        ctx->terminated = true;
        return;
    }
    char wrapTy[256];
    llvmFuncRetType(ctx->curFunc->type, wrapTy, sizeof(wrapTy));
    char* agg = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue %s undef, i32 0, 0\n", agg, wrapTy);
    char* agg2 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue %s %s, %s %s, 1\n", agg2, wrapTy, agg, ty, val);
    fprintf(ctx->fnOut, "  ret %s %s\n", wrapTy, agg2);
    ctx->terminated = true;
}

//exit is treated as a plain OS process exit (like C's exit()), unrelated to the function's declared error
//list - see the report for why (this is an assumption about language semantics, not yet confirmed)
//done/fail are a plain OS process exit with a fixed status, from anywhere - unrelated to the enclosing
//function's declared error union on purpose (see the report: terminating the whole process is a
//different operation from returning to a caller, same as Zig's/Rust's process-exit functions)
void cgDone(struct cgCtx* ctx, struct statement* s) {
    (void)s;
    fputs("  call void @__olang_end(i32 0)\n", ctx->fnOut);
    fputs("  unreachable\n", ctx->fnOut);
    ctx->terminated = true;
}

//S16c/S16d: both go through the same path a failed check does - abort with a message outside a test,
//recoverable inside one, exactly as "assert(false)" already behaved. That is the point: "abort" is
//assert(false) with its intent stated, and "unreachable" states a different intent again.
void cgAbortLike(struct cgCtx* ctx, bool isUnreachable) {
    fprintf(ctx->fnOut, "  call void @__olang_check_failed(ptr %s)\n",
            isUnreachable ? "@__olang_msg_unreach" : "@__olang_msg_abort");
    fputs("  unreachable\n", ctx->fnOut);
    ctx->terminated = true;
}

void cgFail(struct cgCtx* ctx, struct statement* s) {
    (void)s;
    fputs("  call void @__olang_end(i32 1)\n", ctx->fnOut);
    fputs("  unreachable\n", ctx->fnOut);
    ctx->terminated = true;
}

//"assert EXPR" - a statement now, not a call (see the report); the failure path is shared with the
//see emitRuntimeDecls for its longjmp-in-test-mode-else-hard-abort behavior
void cgAssert(struct cgCtx* ctx, struct statement* s) {
    if (s->op->ctProven) return; //S18c: already checked, and true, at compile time
    char* cv = cgValue(ctx, s->op);
    char* notc = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = xor i1 %s, true\n", notc, cv);
    int id = ctx->lblCtr++;
    char failLbl[32], okLbl[32];
    snprintf(failLbl, sizeof(failLbl), "assert.fail.%d", id);
    snprintf(okLbl, sizeof(okLbl), "assert.ok.%d", id);
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", notc, failLbl, okLbl);
    ctx->terminated = true;
    cgLabel(ctx, failLbl);
    fputs("  call void @__olang_check_failed(ptr @__olang_msg_assert)\n", ctx->fnOut);
    cgBr(ctx, okLbl);
    cgLabel(ctx, okLbl);
}

//selects the error part of the enclosing function's return union: packs (which declared error type, which
//word) into the single i32 code an unhandled caller checks (see errorCode/the report). No try/catch exists
//yet, so this always genuinely returns to the caller now - the caller decides what "unhandled" means
//(cgFuncCall's fallible path, currently a hard failure, same as a failed assert()).
void cgError(struct cgCtx* ctx, struct statement* s) {
    long long code = errorCode(ctx->curFunc->type, s->op->type, s->op->intLiteralVal);
    cgCloseOwnScope(ctx);
    if (!ctx->curFunc->type.hasRetType) {
        fprintf(ctx->fnOut, "  ret i32 %lld\n", code);
        ctx->terminated = true;
        return;
    }
    char wrapTy[256];
    llvmFuncRetType(ctx->curFunc->type, wrapTy, sizeof(wrapTy));
    char* v = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue %s undef, i32 %lld, 0\n", v, wrapTy, code);
    fprintf(ctx->fnOut, "  ret %s %s\n", wrapTy, v);
    ctx->terminated = true;
}

//"try f(...) catch A || B.word { ... }" - deliberately bypasses cgFuncCall/cgValue (unlike a bare "try
//f(...)" expression) since this needs the raw code to decide catch-vs-propagate before any value exists
void cgTryCatch(struct cgCtx* ctx, struct statement* s) {
    struct operand* callOp = s->op;
    struct var* func = callOp->readVar;
    char argsBuf[4096] = "";
    char* target = cgCallTargetAndArgs(ctx, callOp, argsBuf, sizeof(argsBuf));

    char wrapTy[256];
    llvmFuncRetType(func->type, wrapTy, sizeof(wrapTy));
    char* raw = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call %s %s(%s)\n", raw, wrapTy, target, argsBuf);
    char* code = raw;
    if (func->type.hasRetType) {
        code = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue %s %s, 0\n", code, wrapTy, raw);
    }

    int id = ctx->lblCtr++;
    char errLbl[32], catchLbl[32], propLbl[32], endLbl[32];
    snprintf(errLbl, sizeof(errLbl), "trycatch.err.%d", id);
    snprintf(catchLbl, sizeof(catchLbl), "trycatch.catch.%d", id);
    snprintf(propLbl, sizeof(propLbl), "trycatch.prop.%d", id);
    snprintf(endLbl, sizeof(endLbl), "trycatch.end.%d", id);

    char* isErr = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp ne i32 %s, 0\n", isErr, code);
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", isErr, errLbl, endLbl);
    ctx->terminated = true;

    cgLabel(ctx, errLbl);
    //R9b: clauses in order; one falling off its block continues after the statement. The propagation
    //path is only reachable when some error is left unnamed, which the semantic layer allows only when the
    //enclosing function declares it.
    if (cgCatchDispatch(ctx, callOp, &s->catchClauses, code, &func->type, endLbl)) {
        cgPropagateError(ctx, func->type, code);
    }

    cgLabel(ctx, endLbl);
}

void cgStatement(struct cgCtx* ctx, struct statement* s) {
    if (ctx->debug && s->line > 0) fprintf(ctx->fnOut, "; dbgloc %d %d\n", s->line, cgDbgFileId(ctx, s->file)); //B2e
    switch (s->sType) {
        case STATEMENT_VAR_DECL: cgVarDecl(ctx, s); return;
        case STATEMENT_ASSIGN: cgAssign(ctx, s); return;
        case STATEMENT_EXPR: cgValue(ctx, s->op); return;
        case STATEMENT_IF: cgIf(ctx, s); return;
        case STATEMENT_FOR: cgFor(ctx, s); return;
        case STATEMENT_DO: cgDo(ctx, s); return;
        case STATEMENT_MATCH: cgMatch(ctx, s); return;
        case STATEMENT_RET: cgRet(ctx, s); return;
        case STATEMENT_ABORT: cgAbortLike(ctx, false); return;
        case STATEMENT_UNREACHABLE: cgAbortLike(ctx, true); return;
        case STATEMENT_BREAK: cgBreakOrContinue(ctx, true); return;
        case STATEMENT_CONTINUE: cgBreakOrContinue(ctx, false); return;
        case STATEMENT_JOIN: cgJoin(ctx, s); return;
        case STATEMENT_SPAWN: cgSpawn(ctx, s); return;
        case STATEMENT_DONE: cgDone(ctx, s); return;
        case STATEMENT_FAIL: cgFail(ctx, s); return;
        case STATEMENT_ASSERT: cgAssert(ctx, s); return;
        case STATEMENT_ERROR: cgError(ctx, s); return;
        case STATEMENT_TRY_CATCH: cgTryCatch(ctx, s); return;
        default: ErrorBugFound(); return;
    }
}

// ---- top-level structure ----

//G16: a generic struct type has no single layout - only its instantiations do, each emitted as its own
//"%m<n>.Name<args>" aggregate. Skipping it here is the type-level counterpart of skipping an
//uninstantiated generic function in cgEmitAllFunctions.
static bool typeIsUninstantiatedGeneric(struct type t) {
    return t.bType == BASETYPE_STRUCT && t.typeParams.len != 0;
}

//one "%m<n>.Name = type { ... }" for a struct type. Shared by the ordinary and the instantiated paths -
//an instantiation is an ordinary struct type by this point, its name already carrying its arguments.
static void emitOneStructTypeDef(FILE* out, struct semaModule* mod, struct type* t) {
    char nameBuf[256];
    mangleTypeName(mod, t->name, nameBuf, sizeof(nameBuf));
    fprintf(out, "%%%s = type { ", nameBuf);
    for (int j = 0; j < t->vars.len; j++) {
        struct var* mv = ListGetIdx(&t->vars, j);
        char fbuf[256];
        llvmType(mv->type, fbuf, sizeof(fbuf));
        fprintf(out, "%s%s", fbuf, j < t->vars.len -1 ? ", " : " ");
    }
    fputs("}\n", out);
}

void emitStructTypeDefs(FILE* out) {
    struct list* all = SemanticAllModules();
    for (int m = 0; m < all->len; m++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(all, m);
        for (int i = 0; i < mod->types.len; i++) {
            struct type* t = ListGetIdx(&mod->types, i);
            if (t->bType != BASETYPE_STRUCT) continue;
            if (typeIsUninstantiatedGeneric(*t)) continue;
            emitOneStructTypeDef(out, mod, t);
        }
    }
    //...and one layout per instantiation of a generic type (G10), emitted under the module that declared
    //the generic. Their names already carry their type arguments, so mangling keeps them distinct.
    struct list* insts = SemanticAllTypeInstantiations();
    for (int i = 0; i < insts->len; i++) {
        struct type* t = *(struct type**)ListGetIdx(insts, i);
        //G8a: an application whose arguments are still type variables ("Atomic<T>" written inside a
        //generic method) is a pattern, not a layout - it has no size, and emitting it crashes on the
        //first field whose type is a variable. The same test G16 makes for a generic function's body.
        if (t->typeParams.len != 0) continue;
        emitOneStructTypeDef(out, t->owner, t);
    }
}

//K2a: what a baked global's references and arrays point at - each node its own private global, so two
//references to one node stay one instance (identity, E10) and a cycle terminates. cgAuxOut is where they
//are written; NULL asks only whether the value can be written out at all.
struct cgAuxNode { struct ctVal* node; char* name; };
static struct list cgAuxNodes;
static FILE* cgAuxOut;
static const char* cgAuxBase;
static bool cgAuxReadOnly; //T25b: the global these belong to is immutable - plain data under it is never written
static int cgAuxCtr;

static char* cgConstInit(struct ctVal* v, struct type t);

//the private global holding node as a value of storeT, or NULL when it has no constant form
static char* cgAuxGlobal(struct ctVal* node, struct type storeT) {
    for (int i = 0; i < cgAuxNodes.len; i++) {
        struct cgAuxNode* a = ListGetIdx(&cgAuxNodes, i);
        if (a->node == node) return a->name;
    }
    char* name = MallocOrCrash(320);
    snprintf(name, 320, "%s.k%d", cgAuxBase, cgAuxCtr++);
    struct cgAuxNode an = { node, name };
    ListAdd(&cgAuxNodes, &an); //before the contents, so a cycle back to this node finds it
    char* init = cgConstInit(node, storeT);
    if (!init) return NULL;
    char ty[256];
    llvmType(storeT, ty, sizeof(ty));
    //T25b: plain data an immutable global owns is reached only through it, read-only - so it is read-only data
    bool ro = cgAuxReadOnly && CtIsPlainData(node);
    if (cgAuxOut) fprintf(cgAuxOut, "%s = internal %s %s %s\n", name, ro ? "constant" : "global", ty, init);
    return name;
}

//an array's elements laid out as a fixed array of their count, the shape cgAuxGlobal stores
static struct type cgElementsType(struct type arrT, int n) {
    struct type st = arrT;
    st.structMAlloc = false;
    st.scopeParam = NULL;
    st.owner = NULL;
    st.name = (struct str){0};
    st.arrMalloc = false;
    struct operand* lenOp = MallocOrCrash(sizeof(struct operand));
    *lenOp = (struct operand){0};
    lenOp->type = TypeVanilla(BASETYPE_INT64);
    lenOp->isLiteral = true;
    lenOp->intLiteralVal = n;
    st.arrLen = lenOp;
    return st;
}

//K2d: a value's bytes as the target lays them out (little-endian, natural alignment - TypeGetAlign's rule), for
//a choice payload, whose LLVM type is an untyped byte buffer. False where a byte would have to be an address
//(a reference, a function, a run-time-length array): those have no constant byte spelling
static bool cgConstBytes(struct ctVal* v, struct type t, unsigned char* buf, long long size) {
    if (v->kind == CT_NULL) return true; //all-zero bits (T2a), already zero
    switch (t.bType) {
        case BASETYPE_BOOL: case BASETYPE_BYTE: case BASETYPE_INT32: case BASETYPE_INT64: case BASETYPE_ERROR: {
            unsigned long long x = (unsigned long long)v->i;
            for (long long i = 0; i < size && i < 8; i++) buf[i] = (unsigned char)(x >> (8 * i));
            return true;
        }
        case BASETYPE_FLOAT32: { float f = (float)v->f; memcpy(buf, &f, 4); return true; }
        case BASETYPE_FLOAT64: { double d = v->f; memcpy(buf, &d, 8); return true; }
        case BASETYPE_CHOICE: {
            unsigned long long tag = (unsigned long long)v->i;
            if (!ChoiceHasPayload(t)) { for (int i = 0; i < 4; i++) buf[i] = (unsigned char)(tag >> (8 * i)); return true; }
            for (int i = 0; i < 8; i++) buf[i] = (unsigned char)(tag >> (8 * i));
            if (v->kind != CT_AGG) return true;
            struct type c = ((struct var*)ListGetIdx(&t.vars, (int)v->i))->type;
            struct ctVal shape = *v;
            shape.type = c;
            return cgConstBytes(&shape, c, buf + 8, ChoicePayloadSize(t));
        }
        case BASETYPE_STRUCT: {
            if (t.structMAlloc || v->kind != CT_AGG) return false;
            long long off = 0;
            for (int i = 0; i < t.vars.len && i < v->n; i++) {
                struct type ft = ((struct var*)ListGetIdx(&t.vars, i))->type;
                long long a = TypeGetAlign(ft);
                off = (off + a - 1) / a * a;
                if (!cgConstBytes(v->elems[i], ft, buf + off, TypeGetSize(ft))) return false;
                off += TypeGetSize(ft);
            }
            return true;
        }
        case BASETYPE_ARRAY: {
            if (t.structMAlloc || t.arrMalloc || v->kind != CT_AGG) return false;
            long long es = TypeGetSize(*t.arrElem);
            for (int i = 0; i < v->n; i++) if (!cgConstBytes(v->elems[i], *t.arrElem, buf + es * i, es)) return false;
            return true;
        }
        default: return false;
    }
}

//K2: a global computed at compile time, written out as LLVM constant data - or NULL where its shape has no
//constant form, in which case the global is zero-filled and set at startup exactly as before. K2a: an array
//of a run-time length, or a reference, points at a private global holding its elements or its referent
static char* cgConstInit(struct ctVal* v, struct type t) {
    char* out = NULL;
    size_t size = 0;
    FILE* f = open_memstream(&out, &size);
    bool ok = true;
    if (v->kind == CT_NULL) {
        fputs("zeroinitializer", f);
    } else if (v->kind == CT_FLOAT) {
        double d = v->f;
        unsigned long long bits;
        memcpy(&bits, &d, sizeof(bits));
        fprintf(f, "0x%016llX", bits); //LLVM's exact form: a float32 too is written as the double it widens to
    } else if (v->kind == CT_BOOL) {
        fputs(v->i ? "true" : "false", f);
    } else if (v->kind == CT_INT) {
        fprintf(f, "%lld", t.bType == BASETYPE_BYTE ? (long long)(signed char)v->i : v->i);
    } else if (t.bType == BASETYPE_ARRAY && t.arrMalloc && (v->kind == CT_AGG || (v->kind == CT_REF && v->target->kind == CT_AGG))) {
        //an array of a run-time length is { length, storage }: its elements go in a global of their own
        struct ctVal* elems = v->kind == CT_REF ? v->target : v;
        if (elems->n == 0) fputs("{ i64 0, ptr null }", f);
        else {
            char* g = cgAuxGlobal(elems, cgElementsType(t, elems->n));
            if (!g) ok = false;
            else fprintf(f, "{ i64 %d, ptr %s }", elems->n, g);
        }
    } else if (v->kind == CT_REF && t.bType == BASETYPE_STRUCT && t.structMAlloc && v->target->kind == CT_AGG) {
        //a reference to a struct: its referent in a global of its own
        struct type vt = t;
        vt.structMAlloc = false;
        vt.scopeParam = NULL;
        char* g = cgAuxGlobal(v->target, vt);
        if (!g) ok = false;
        else fputs(g, f);
    } else if (v->kind == CT_AGG && t.bType == BASETYPE_ARRAY && !t.arrMalloc && !t.structMAlloc) {
        char ety[256];
        llvmType(*t.arrElem, ety, sizeof(ety));
        fputc('[', f);
        for (int i = 0; i < v->n && ok; i++) {
            char* e = cgConstInit(v->elems[i], *t.arrElem);
            if (!e) { ok = false; break; }
            fprintf(f, "%s%s %s", i ? ", " : " ", ety, e);
        }
        fputs(" ]", f);
    } else if (t.bType == BASETYPE_CHOICE && ChoiceHasPayload(t) && (v->kind == CT_AGG || v->kind == CT_INT)) {
        //T17: { i64 tag, [K x i8] } - the live case's fields written as the bytes they occupy (K2d)
        long long k = ChoicePayloadSize(t);
        unsigned char* bytes = calloc((size_t)(8 + k), 1);
        ok = cgConstBytes(v, t, bytes, 8 + k);
        if (ok) {
            fprintf(f, "{ i64 %lld, [%lld x i8] [", v->i, k);
            for (long long i = 0; i < k; i++) fprintf(f, "%s i8 %d", i ? "," : "", (int)(signed char)bytes[8 + i]);
            fputs(" ] }", f);
        }
        free(bytes);
    } else if (v->kind == CT_AGG && t.bType == BASETYPE_STRUCT && !t.structMAlloc && !ChoiceHasPayload(t)) {
        fputc('{', f);
        for (int i = 0; i < v->n && i < t.vars.len && ok; i++) {
            struct type ft = ((struct var*)ListGetIdx(&t.vars, i))->type;
            char fty[256];
            llvmType(ft, fty, sizeof(fty));
            char* e = cgConstInit(v->elems[i], ft);
            if (!e) { ok = false; break; }
            fprintf(f, "%s%s %s", i ? ", " : " ", fty, e);
        }
        fputs(" }", f);
    } else {
        ok = false;
    }
    fclose(f);
    if (!ok) { free(out); return NULL; }
    return out;
}

//K2/K2a: a global's baked initializer, its private globals written to aux - or NULL to set it at startup
static char* cgGlobalConstInit(struct var* v, const char* gname, FILE* aux) {
    struct ctVal* val = v->constVal ? v->constVal : v->bakeVal;
    if (!val) return NULL;
    cgAuxNodes = ListInit(sizeof(struct cgAuxNode));
    cgAuxOut = aux;
    cgAuxBase = gname;
    cgAuxReadOnly = !v->mut;
    cgAuxCtr = 0;
    char* init = cgConstInit(val, v->type);
    cgAuxOut = NULL;
    return init;
}

void emitGlobalDecls(FILE* out, struct semaModule* emitMod) {
    struct list* all = SemanticAllModules();
    for (int m = 0; m < all->len; m++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(all, m);
        for (int i = 0; i < mod->vars.len; i++) {
            struct var* v = ListGetIdx(&mod->vars, i);
            if (v->type.bType == BASETYPE_FUNC) continue;
            char name[256];
            mangleGlobal(mod, v->name, name, sizeof(name));
            char ty[256];
            llvmType(v->type, ty, sizeof(ty));
            //P1: one module, one object. Another module's global is a reference to storage that object
            //defines, never a second definition of it - two would be a duplicate symbol at link time.
            char* init = mod == emitMod ? cgGlobalConstInit(v, name, out) : NULL;
            if (mod == emitMod) fprintf(out, "%s = global %s %s\n", name, ty, init ? init : "zeroinitializer");
            else fprintf(out, "%s = external global %s\n", name, ty);
        }
    }
}

//"declare RETTY @NAME(ARGTYS)" for every "extern func" (§11) in the program - the unmangled name (X5:
//it's also the linker symbol, no module-prefix mangling like an ordinary olang function gets) and a
//plain C-ABI signature (llvmType already gives an array-typed param/local its right shape everywhere
//else; here it's simply overridden to "ptr", matching the marshalling cgExternFuncCall performs at
//every call site - X3). No body, ever - an extern-func-decl has none to emit.
//P1e: symbols the runtime declares for itself. An "extern func" naming one of these must not be declared
//a second time - LLVM rejects a duplicate "declare" even when the signatures agree - so the runtime's own
//declaration stands for both. It can, because these four have exactly one C signature and X3 marshals an
//array parameter to the same "ptr" the runtime uses. A prototype that disagrees is an X1a error the
//program is already responsible for, and LLVM reports it rather than it passing silently.
static bool cgRuntimeDeclaresSym(struct str name) {
    //LLVM rejects a duplicate "declare" even when the signatures agree, so any symbol the runtime declares
    //has to be skipped when a program declares it too. "snprintf" and "aligned_alloc" joined the list when
    //E11a's renderings and the arena's SIMD alignment started using them - without that, a program
    //declaring "extern func snprintf" simply failed to compile, which is a hazard the pthread names
    //already demonstrated.
    static const char* owned[] = { "pthread_mutex_lock", "pthread_mutex_unlock",
                                   "pthread_cond_wait", "pthread_cond_broadcast",
                                   "pthread_create", "pthread_detach",
                                   "snprintf", "aligned_alloc", "malloc", "free", "printf", "fputs" };
    for (size_t i = 0; i < sizeof(owned)/sizeof(owned[0]); i++) {
        if ((int)strlen(owned[i]) == name.len && !strncmp(owned[i], name.ptr, name.len)) return true;
    }
    return false;
}

void emitExternDecls(FILE* out) {
    struct list* all = SemanticAllModules();
    //X1 names the linker symbol directly, so two modules declaring the same external function name the
    //same symbol - which is legal and ordinary (io.olang and a program can both want "write"). LLVM
    //rejects a second "declare" for it regardless, so the name is emitted once per module set rather than
    //once per module. Without this, a program declaring any extern io.olang also declares simply failed
    //to compile, with the error pointing at the IR rather than at anything the program did.
    struct list seen = ListInit(sizeof(struct str));
    for (int m = 0; m < all->len; m++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(all, m);
        for (int i = 0; i < mod->vars.len; i++) {
            struct var* v = ListGetIdx(&mod->vars, i);
            if (v->type.bType != BASETYPE_FUNC || !v->type.isExtern) continue;
            if (cgRuntimeDeclaresSym(v->name)) continue;
            bool dup = false;
            for (int k = 0; k < seen.len && !dup; k++) {
                if (StrCmp(*(struct str*)ListGetIdx(&seen, k), v->name)) dup = true;
            }
            if (dup) continue;
            ListAdd(&seen, &v->name);
            char retTy[64];
            if (v->type.hasRetType) llvmType(*v->type.retType, retTy, sizeof(retTy));
            else snprintf(retTy, sizeof(retTy), "void");
            fprintf(out, "declare %s @%.*s(", retTy, v->name.len, v->name.ptr);
            for (int p = 0; p < v->type.vars.len; p++) {
                struct var* param = ListGetIdx(&v->type.vars, p);
                char pty[16];
                if (param->type.bType == BASETYPE_ARRAY) snprintf(pty, sizeof(pty), "ptr");
                else llvmType(param->type, pty, sizeof(pty));
                fprintf(out, "%s%s", p > 0 ? ", " : "", pty);
            }
            fputs(")\n", out);
        }
    }
}

void emitScopeRuntime(FILE* out);

/* runtime support, always emitted (harmless if unused): assert()'s failure path can either longjmp back
 * to a test harness's recovery point (when @__olang_jmp_target is set) or hard-abort (outside test mode,
 * where it's always null). jmp_buf is assumed to be glibc's x86-64 Linux 200-byte layout - see report.
 * P9: the target is thread_local, so it is null on every task thread and a failing assert there aborts
 * rather than longjmping. A recovery point belongs to the stack that set it up, and a longjmp from a task
 * would restore the SPAWNER's stack pointer onto the task's thread while the spawner itself is still
 * parked in pthread_join on that very stack - two threads on one stack, which happened to appear to work.
 * There is nowhere on a task thread to recover to, for exactly the reason P4 gives for errors. */
void emitRuntimeDecls(FILE* out) {
    fputs(
        "declare i32 @printf(ptr, ...)\n"
        "declare i32 @fputs(ptr, ptr)\n"
        "declare i32 @snprintf(ptr, i64, ptr, ...)\n"
        "declare void @abort() noreturn\n"
        "declare void @exit(i32) noreturn\n"
        "declare ptr @malloc(i64)\n"
        "declare ptr @aligned_alloc(i64, i64)\n"
        "declare void @free(ptr)\n"
        "declare void @llvm.memset.p0.i64(ptr, i8, i64, i1)\n"
        "declare i32 @pthread_create(ptr, ptr, ptr, ptr)\n"
        "declare i32 @pthread_detach(i64)\n"
        //no pthread_mutex_init/pthread_cond_init here on purpose: a program may declare either as an
        //"extern func" of its own (chan.olang does, with an i64 attr argument where this would want a
        //ptr), and two declares of one symbol with different signatures is invalid IR. The worker's pair
        //is zeroed instead, which IS the initialized state - glibc's PTHREAD_MUTEX_INITIALIZER and
        //PTHREAD_COND_INITIALIZER are both all-zero. The same glibc dependency chan.olang already carries.
        //The four below are declared identically by any extern that names them, so they never clash.
        "declare i32 @pthread_mutex_lock(ptr)\n"
        "declare i32 @pthread_mutex_unlock(ptr)\n"
        "declare i32 @pthread_cond_wait(ptr, ptr)\n"
        "declare i32 @pthread_cond_broadcast(ptr)\n"
        "declare i32 @setjmp(ptr) returns_twice\n"
        "@stderr = external global ptr\n"
        "declare void @longjmp(ptr, i32) noreturn\n"
        "\n"
        //initialexec, not the default general-dynamic: LLVM's default lowers every access to a
        //"call __tls_get_addr@PLT", which put a PLT call in the middle of the allocator's hot loop. The
        //initial-exec model is a direct %fs-relative load instead, and costs nothing here because these
        //are only ever linked into an executable, never dlopen'd.
        "@__olang_jmp_target = linkonce_odr thread_local(initialexec) global ptr null\n"
        //S18b/P1d: the chain of scopes currently open on THIS thread, innermost first, spanning frames.
        //thread_local for the same reason the jump target is - a scope belongs to one thread.
        "@__olang_unwind_top = linkonce_odr thread_local(initialexec) global ptr null\n"
        //where that chain stood when the running test's setjmp was taken, so a longjmp knows how far to
        //unwind. Only ever set on a test thread, since that is the only thread a longjmp happens on (P6).
        "@__olang_unwind_mark = linkonce_odr thread_local(initialexec) global ptr null\n"
        //each check names what actually failed - they all used to print "assertion failed", including the
        //two that are not assertions. NUL-terminated, which the old one was not: it was exactly 17 bytes
        //for 16 characters plus a newline, so fputs/printf read past the end of the array looking for one.
        "@__olang_msg_assert = linkonce_odr unnamed_addr constant [18 x i8] c\"assertion failed\\0A\\00\"\n"
        "@__olang_msg_slice = linkonce_odr unnamed_addr constant [27 x i8] c\"slice bounds out of range\\0A\\00\"\n"
        "@__olang_msg_arraylen = linkonce_odr unnamed_addr constant [23 x i8] c\"negative array length\\0A\\00\"\n"
        "@__olang_msg_arrayfit = linkonce_odr unnamed_addr constant [47 x i8] c\"array length does not match its fixed storage\\0A\\00\"\n"
        "@__olang_msg_abort = linkonce_odr unnamed_addr constant [9 x i8] c\"aborted\\0A\\00\"\n"
        "@__olang_msg_unreach = linkonce_odr unnamed_addr constant [26 x i8] c\"reached unreachable code\\0A\\00\"\n"
        "@__olang_msg_spawn = linkonce_odr unnamed_addr constant [22 x i8] c\"could not start task\\0A\\00\"\n"
        "\n"
        //S16a: "done" and "fail" end the innermost thing that can end - the current test if one is
        //running, the process otherwise. status 0 is done, 1 is fail; under a test they become setjmp
        //values 2 (passed) and 1 (failed), which is the same channel a failed check uses for the latter.
        "define linkonce_odr void @__olang_end(i32 %status) {\n"
        "entry:\n"
        "  %etgt = load ptr, ptr @__olang_jmp_target\n"
        "  %enull = icmp eq ptr %etgt, null\n"
        "  br i1 %enull, label %process, label %intest\n"
        "process:\n"
        "  call void @exit(i32 %status)\n"
        "  unreachable\n"
        "intest:\n"
        "  %isok = icmp eq i32 %status, 0\n"
        "  %jv = select i1 %isok, i32 2, i32 1\n"
        //"done"/"fail" leave a test the same way a failed check does, so they unwind the same way
        "  %emk = load ptr, ptr @__olang_unwind_mark\n"
        "  call void @__olang_unwind_to(ptr %emk)\n"
        "  call void @longjmp(ptr %etgt, i32 %jv)\n"
        "  unreachable\n"
        "}\n\n"
        //a runtime check the language guarantees has failed: a failed assert, an out-of-range slice bound,
        //a negative array length. Distinct from "fail", which is the program's own orderly decision -
        //this one aborts, so it leaves a core dump and skips atexit, which is what you want for a broken
        //invariant. Under a test it is recoverable, exactly as S18 says.
        "define linkonce_odr void @__olang_check_failed(ptr %msg) {\n"
        "entry:\n"
        "  %tgt = load ptr, ptr @__olang_jmp_target\n"
        "  %isnull = icmp eq ptr %tgt, null\n"
        "  br i1 %isnull, label %hard, label %soft\n"
        "hard:\n"
        //stderr, not printf: stdout is block-buffered whenever it is not a terminal, so abort() discarded
        //the message exactly when the output was being captured. The same stream the unhandled-error path
        //already writes to.
        "  %errs = load ptr, ptr @stderr\n"
        "  call i32 @fputs(ptr %msg, ptr %errs)\n"
        "  call void @abort()\n"
        "  unreachable\n"
        "soft:\n"
        //S18b/P1d: unwind BEFORE the jump, not after. A close emitted at the landing block is provably a
        //no-op on the only CFG edge LLVM can see into it (the one from before the setjmp, where the
        //scopes are still zeroed), so it gets deleted at -O3 - correct reasoning about a CFG that lies,
        //since longjmp's edge is not modelled. Here the frames are all still live and the chain is real.
        "  %mk = load ptr, ptr @__olang_unwind_mark\n"
        "  call void @__olang_unwind_to(ptr %mk)\n"
        "  call void @longjmp(ptr %tgt, i32 1)\n"
        "  unreachable\n"
        "}\n\n"

        //P1c: "spawn" guarantees the call runs, so a thread the OS declines to create is a broken
        //guarantee, not a condition to report - and pthread_create's result used to be discarded
        //entirely. The thread-id slot is pre-zeroed, so a failure left 0 there, the work silently never
        //happened, and __olang_join_tasks then handed 0 to pthread_join, which dereferences it. Running
        //the call inline instead would look like graceful degradation and is not: two tasks that talk to
        //each other through a channel deadlock the moment one of them runs to completion before the other
        //starts. The cost is one compare per spawn, against ~51us to create the thread.
        "define linkonce_odr void @__olang_task_started(i32 %rc) {\n"
        "entry:\n"
        "  %ok = icmp eq i32 %rc, 0\n"
        "  br i1 %ok, label %done, label %bad\n"
        "bad:\n"
        "  call void @__olang_check_failed(ptr @__olang_msg_spawn)\n"
        "  br label %done\n"
        "done:\n"
        "  ret void\n"
        "}\n\n", out);
    emitScopeRuntime(out);
}

/* the real backing for "scope"/"own"/"&name" (see the report): every scope is a growable, chunked
 * bump allocator. A chunk is { next, used, cap } followed immediately by cap bytes of data; a scope is
 * just a chunk-list head, lazily null until first use. Allocating only ever bumps a cursor or links on
 * one more chunk - nothing is ever freed individually. Closing a scope doesn't return memory to the OS at
 * all: it splices the whole chunk list onto @__olang_chunk_pool (a single global free-list) in one O(1)
 * operation (after an O(chunks-in-this-scope) walk to find the tail to splice at), so the very next scope
 * that needs a chunk anywhere in the program can reuse it without ever calling malloc again. This is
 * exactly the "arena allocator, but the whole language's memory model is built out of scopes of these"
 * design from the report - not yet wired to reclaim scope-generic struct fields (they don't exist yet)
 * or anything beyond the current function/test's own private scope and whatever scope was explicitly
 * passed to it. */
void emitScopeRuntime(FILE* out) {
    fputs(
        //next, used, cap, then padding out to 64 bytes. X3a-style alignment: the arena used to round only the
        //SIZE to 8, so a returned pointer was 8-aligned at best and nothing SIMD could be handed one. The
        //chunk is now allocated 64-aligned and its header padded to 64, which makes the data area 64-aligned
        //too; __olang_scope_alloc then aligns each allocation by its own size. 40 bytes per >=4096-byte
        //chunk is under 1%.
        "%olang.chunk = type { ptr, i64, i64, [40 x i8] }\n"
        "%olang.dtornode = type { ptr, ptr, ptr }\n"
        //P1: one node per task, bump-allocated from the join block's own scope - which is exactly the
        //lifetime the bookkeeping needs, since the join happens before that scope is reclaimed. An alloca
        //would not do: a join block inside a loop would grow the stack by a node per task.
        "%olang.unwind = type { ptr, ptr, ptr }\n" //prev frame's node, this block's scope, its join head
        "%olang.task = type { ptr, i64, ptr }\n"   //next, done flag, merge list
        //P1e: a cached worker thread. It owns the mutex/condvar it parks on, so waiting for one task
        //never blocks another. glibc's PTHREAD_MUTEX_INITIALIZER is all-zero, which is what lets the
        //free-list lock below be a plain zeroinitializer; a worker's own pair is explicitly init'd.
        //state: 0 fresh, 1 has work, 2 finished and waiting to be handed more.
        "%olang.worker = type { ptr, ptr, ptr, i64, ptr, [40 x i8], [48 x i8] }\n"
        "%olang.merge = type { ptr, ptr, ptr }\n"  //next, dst scope, src sub-scope //next, instance, dtorFn - see __olang_scope_register_dtor
        "%olang.scope = type { ptr, ptr, ptr }\n"  //head chunk, head dtor-list node, TAIL chunk (all null
                                                    //if unused). The tail is tracked so closing can splice
                                                    //the whole chunk list onto the pool in O(1) instead of
                                                    //walking to find it - chunks are PREPENDED, so the tail
                                                    //is whichever chunk this scope allocated first, set
                                                    //once when the list goes from empty to non-empty and
                                                    //never touched again.
        //P1: thread_local, so two threads never bump or splice the same free-list. A scope belongs to exactly
        //one thread, and so do the chunks it takes and returns, which is what makes a per-thread pool
        //correct rather than merely faster.
        "@__olang_chunk_pool = linkonce_odr thread_local(initialexec) global ptr null\n"
        //O1b: the program's own scope - what a global's initializer allocates into. Never closed, so what
        //it holds lives as long as the program
        "@__olang_global_scope = linkonce_odr global %olang.scope zeroinitializer\n"
        "\n"
        //size >= the requested amount, either reused from the free-list's head (kept at its own, possibly
        //larger, original capacity) or freshly malloc'd at max(4096, size) bytes
        "define linkonce_odr ptr @__olang_new_chunk(i64 %size) {\n"
        "entry:\n"
        "  %pool = load ptr, ptr @__olang_chunk_pool\n"
        "  %poolnull = icmp eq ptr %pool, null\n"
        "  br i1 %poolnull, label %fresh, label %trypool\n"
        "trypool:\n"
        "  %capptr = getelementptr %olang.chunk, ptr %pool, i32 0, i32 2\n"
        "  %cap = load i64, ptr %capptr\n"
        "  %fits = icmp uge i64 %cap, %size\n"
        "  br i1 %fits, label %usepool, label %fresh\n"
        "usepool:\n"
        "  %nextptr = getelementptr %olang.chunk, ptr %pool, i32 0, i32 0\n"
        "  %next = load ptr, ptr %nextptr\n"
        "  store ptr %next, ptr @__olang_chunk_pool\n"
        "  %usedptr.p = getelementptr %olang.chunk, ptr %pool, i32 0, i32 1\n"
        "  store i64 0, ptr %usedptr.p\n"
        "  ret ptr %pool\n"
        "fresh:\n"
        "  %big = icmp ugt i64 %size, 4096\n"
        "  %reqsize = select i1 %big, i64 %size, i64 4096\n"
        "  %hdrsize = ptrtoint ptr getelementptr (%olang.chunk, ptr null, i32 1) to i64\n"
        "  %total0 = add i64 %hdrsize, %reqsize\n"
        //aligned_alloc requires a size that is a multiple of the alignment
        "  %total1 = add i64 %total0, 63\n"
        "  %total = and i64 %total1, -64\n"
        "  %new = call ptr @aligned_alloc(i64 64, i64 %total)\n"
        "  %usedptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 1\n"
        "  store i64 0, ptr %usedptr.n\n"
        "  %capptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 2\n"
        "  %realcap = sub i64 %total, %hdrsize\n"
        "  store i64 %realcap, ptr %capptr.n\n"
        "  ret ptr %new\n"
        "}\n\n"
        //bump-allocates size bytes from scope, growing (linking on one more chunk) if the current one
        //doesn't have room
        "define linkonce_odr noalias ptr @__olang_scope_alloc(ptr %scope, i64 %rawsize) {\n"
        "entry:\n"
        //every allocation is rounded up to 8 bytes so the NEXT one starts 8-aligned. The bump offset is a
        //raw byte sum, so without this a 12-byte "int32[3]" left the following allocation at offset 12 -
        //fine for an i32 but misaligned for any i64 or pointer field, which is UB at the LLVM level even
        //where the hardware tolerates it. Latent before; the dtor nodes below (24 bytes, three pointers,
        //one per registered instance) made it near-certain to be hit. The chunk's own data area is
        //already 8-aligned: malloc is at least 16-aligned and the header is exactly 24 bytes.
        "  %sizeup = add i64 %rawsize, 7\n"
        "  %size = and i64 %sizeup, -8\n"
        //the alignment this allocation gets, from its own size: enough for SSE at 32 bytes and for AVX-512
        //or a cache line at 64. Two selects, no branch, and small allocations are unaffected.
        "  %a32 = icmp uge i64 %size, 32\n"
        "  %a64 = icmp uge i64 %size, 64\n"
        "  %alnA = select i1 %a32, i64 32, i64 8\n"
        "  %aln = select i1 %a64, i64 64, i64 %alnA\n"
        "  %alnm1 = sub i64 %aln, 1\n"
        "  %alnmask = sub i64 0, %aln\n"
        "  %headptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 0\n"
        "  %head = load ptr, ptr %headptr\n"
        "  %headnull = icmp eq ptr %head, null\n"
        "  br i1 %headnull, label %needchunk, label %checkspace\n"
        "checkspace:\n"
        "  %csusedptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 1\n"
        "  %csused = load i64, ptr %csusedptr\n"
        "  %cscapptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 2\n"
        "  %cscap = load i64, ptr %cscapptr\n"
        "  %csup = add i64 %csused, %alnm1\n"
        "  %csaligned = and i64 %csup, %alnmask\n"
        "  %remaining = sub i64 %cscap, %csaligned\n"
        "  %fits = icmp uge i64 %remaining, %size\n"
        "  br i1 %fits, label %alloc, label %needchunk\n"
        "needchunk:\n"
        "  %newchunk = call ptr @__olang_new_chunk(i64 %size)\n"
        "  %oldhead = load ptr, ptr %headptr\n"
        "  %newnextptr = getelementptr %olang.chunk, ptr %newchunk, i32 0, i32 0\n"
        "  store ptr %oldhead, ptr %newnextptr\n"
        "  store ptr %newchunk, ptr %headptr\n"
        //first chunk in this scope: it is the tail, and stays the tail for the scope's whole life, since
        //every later chunk is prepended ahead of it
        "  %wasempty = icmp eq ptr %oldhead, null\n"
        "  br i1 %wasempty, label %settail, label %alloc\n"
        "settail:\n"
        "  %tailptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 2\n"
        "  store ptr %newchunk, ptr %tailptr\n"
        "  br label %alloc\n"
        "alloc:\n"
        "  %curhead = load ptr, ptr %headptr\n"
        "  %curusedptr = getelementptr %olang.chunk, ptr %curhead, i32 0, i32 1\n"
        "  %curused0 = load i64, ptr %curusedptr\n"
        "  %curup = add i64 %curused0, %alnm1\n"
        "  %curused = and i64 %curup, %alnmask\n"
        "  %dataptr = getelementptr %olang.chunk, ptr %curhead, i32 1\n"
        "  %result = getelementptr i8, ptr %dataptr, i64 %curused\n"
        "  %newused = add i64 %curused, %size\n"
        "  store i64 %newused, ptr %curusedptr\n"
        "  ret ptr %result\n"
        "}\n\n", out);
    fputs(
        //P2a: returns this thread's whole chunk pool to the allocator. The pool is thread_local, so a task
        //thread's chunks were simply lost when it exited - ~4KB per task that allocated anything, and
        //unbounded in the number of tasks. Every chunk on the pool came from a scope that has already
        //closed, so nothing references it; a sub-scope's chunks are never here, having been spliced into
        //the parent at the join rather than freed by their own thread.
        //E11a: the two renderings the compiler owns. snprintf's contract IS the one E11a states - write
        //what fits, return the length the rendering needs - so a caller can allocate an estimate and
        //retry only when it was too small. "%.17g" is what makes a float read back as the same value.
        "@__olang_fmt_d = linkonce_odr unnamed_addr constant [5 x i8] c\"%lld\\00\"\n"
        "@__olang_fmt_g = linkonce_odr unnamed_addr constant [6 x i8] c\"%.17g\\00\"\n"
        "define linkonce_odr i64 @__olang_fmt_i64(ptr %buf, i64 %cap, i64 %v) {\n"
        "entry:\n"
        "  %n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %buf, i64 %cap, ptr @__olang_fmt_d, i64 %v)\n"
        "  %n64 = sext i32 %n to i64\n"
        "  ret i64 %n64\n"
        "}\n\n"
        "define linkonce_odr i64 @__olang_fmt_f64(ptr %buf, i64 %cap, double %v) {\n"
        "entry:\n"
        "  %n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %buf, i64 %cap, ptr @__olang_fmt_g, double %v)\n"
        "  %n64 = sext i32 %n to i64\n"
        "  ret i64 %n64\n"
        "}\n\n"
        //E11a: appends n bytes at dst+at, or nothing while a rendering is only being measured (dst null)
        "define linkonce_odr void @__olang_rd_put(ptr %dst, i64 %at, ptr %src, i64 %n) {\n"
        "entry:\n"
        "  %measure = icmp eq ptr %dst, null\n"
        "  br i1 %measure, label %done, label %write\n"
        "write:\n"
        "  %p = getelementptr i8, ptr %dst, i64 %at\n"
        "  call void @llvm.memcpy.p0.p0.i64(ptr %p, ptr %src, i64 %n, i1 false)\n"
        "  br label %done\n"
        "done:\n"
        "  ret void\n"
        "}\n\n"
        //E11a: nested text between quotes q, escaped the way a literal writes it (\n \t \r \0 \\ and q
        //itself); returns the bytes it takes, writing nothing while measuring (dst null)
        "define linkonce_odr i64 @__olang_rd_quote(ptr %dst, i64 %at, ptr %src, i64 %n, i8 %q) {\n"
        "entry:\n"
        "  %measure = icmp eq ptr %dst, null\n"
        "  %base = getelementptr i8, ptr %dst, i64 %at\n"
        "  br i1 %measure, label %loop, label %wopen\n"
        "wopen:\n"
        "  store i8 %q, ptr %base\n"
        "  br label %loop\n"
        "loop:\n"
        "  %i = phi i64 [ 0, %entry ], [ 0, %wopen ], [ %i1, %next ]\n"
        "  %o = phi i64 [ 1, %entry ], [ 1, %wopen ], [ %o1, %next ]\n"
        "  %more = icmp slt i64 %i, %n\n"
        "  br i1 %more, label %body, label %close\n"
        "body:\n"
        "  %cp = getelementptr i8, ptr %src, i64 %i\n"
        "  %c = load i8, ptr %cp\n"
        "  switch i8 %c, label %plain [ i8 10, label %en i8 9, label %et i8 13, label %er i8 0, label %ez i8 92, label %eb ]\n"
        "en:\n  br label %esc\n"
        "et:\n  br label %esc\n"
        "er:\n  br label %esc\n"
        "ez:\n  br label %esc\n"
        "eb:\n  br label %esc\n"
        "plain:\n"
        "  %isq = icmp eq i8 %c, %q\n"
        "  br i1 %isq, label %eq, label %raw\n"
        "eq:\n  br label %esc\n"
        "esc:\n"
        "  %e = phi i8 [ 110, %en ], [ 116, %et ], [ 114, %er ], [ 48, %ez ], [ 92, %eb ], [ %q, %eq ]\n"
        "  br i1 %measure, label %escdone, label %wesc\n"
        "wesc:\n"
        "  %ep = getelementptr i8, ptr %base, i64 %o\n"
        "  store i8 92, ptr %ep\n"
        "  %ep2 = getelementptr i8, ptr %ep, i64 1\n"
        "  store i8 %e, ptr %ep2\n"
        "  br label %escdone\n"
        "escdone:\n"
        "  %oe = add i64 %o, 2\n"
        "  br label %next\n"
        "raw:\n"
        "  br i1 %measure, label %rawdone, label %wraw\n"
        "wraw:\n"
        "  %rp = getelementptr i8, ptr %base, i64 %o\n"
        "  store i8 %c, ptr %rp\n"
        "  br label %rawdone\n"
        "rawdone:\n"
        "  %or = add i64 %o, 1\n"
        "  br label %next\n"
        "next:\n"
        "  %o1 = phi i64 [ %oe, %escdone ], [ %or, %rawdone ]\n"
        "  %i1 = add i64 %i, 1\n"
        "  br label %loop\n"
        "close:\n"
        "  br i1 %measure, label %done, label %wclose\n"
        "wclose:\n"
        "  %cl = getelementptr i8, ptr %base, i64 %o\n"
        "  store i8 %q, ptr %cl\n"
        "  br label %done\n"
        "done:\n"
        "  %total = add i64 %o, 1\n"
        "  ret i64 %total\n"
        "}\n\n"
        "define linkonce_odr void @__olang_pool_drain() {\n"
        "entry:\n"
        "  %p0 = load ptr, ptr @__olang_chunk_pool\n"
        "  store ptr null, ptr @__olang_chunk_pool\n"
        "  %empty = icmp eq ptr %p0, null\n"
        "  br i1 %empty, label %done, label %walk\n"
        "walk:\n"
        "  %cur = phi ptr [ %p0, %entry ], [ %next, %walk ]\n"
        "  %nextptr = getelementptr %olang.chunk, ptr %cur, i32 0, i32 0\n"
        "  %next = load ptr, ptr %nextptr\n"
        "  call void @free(ptr %cur)\n"
        "  %atend = icmp eq ptr %next, null\n"
        "  br i1 %atend, label %done, label %walk\n"
        "done:\n"
        "  ret void\n"
        "}\n\n"
        "", out);
    fputs(
        //P1: waits for every task on this join block's list, innermost-first is irrelevant here since
        //they are concurrent - then folds each task's sub-scopes into the scopes they stood in for (P2),
        //which is safe only now that the thread is known to be finished with them.
        //P1e: the worker cache. A spawn used to create a thread and the join used to destroy it - ~51us
        //and ~8.4KB each, with the stack held until the join, so a join block's peak grew with the TOTAL
        //number of spawns run through it rather than with how many were live at once. A finished worker
        //parks on a free list instead and the next spawn takes it, so a thread is created once per peak
        //concurrency. Every task still gets a thread of its own - this is a cache, not a fixed-size pool,
        //which is what keeps a task that blocks (on a nested join, on a mutex) from starving anyone.
        //A worker returns itself the moment its task FINISHES, not when the join gets round to noticing.
        //Returning at the join frees nothing until the block ends, so a fan-out reuses nothing at all:
        //measured at 225s for 100,000 spawns against 5.1s for a fresh thread each time, because 100,000
        //workers then sit parked and alive where plain threads had already exited. So the completion flag
        //lives in the TASK node, not in the worker, and these two guard it.
        "@__olang_worker_free = linkonce_odr global ptr null\n"
        "@__olang_worker_lock = linkonce_odr global [40 x i8] zeroinitializer\n"
        "@__olang_task_lock = linkonce_odr global [40 x i8] zeroinitializer\n"
        "@__olang_task_cv = linkonce_odr global [48 x i8] zeroinitializer\n"
        //P1f: how many workers are parked, guarded by @__olang_worker_lock with the list itself. The cap
        //is on the CACHE, never on concurrency: __olang_worker_get still creates a thread unconditionally
        //when none is parked, so a live task is never refused one and 1:1 is untouched. That is the whole
        //difference from the fixed-size pool this design rejected - a pool bounds how many tasks can RUN,
        //which deadlocks on a nested join or a blocking channel; this bounds only how many idle threads
        //are kept, which nothing can wait on. 64 is deliberately generous: an ordinary parallel workload
        //never reaches it (a 100,000-task fan-out settles at 9 workers), so it clips burst residue only,
        //and a tighter cap would thrash - destroying a worker only to recreate it costs the ~51us the
        //cache exists to avoid.
        "@__olang_worker_idle = linkonce_odr global i64 0\n\n"
        //the parked loop: take work, run it, report finished, park again. It never exits, which is why
        //the chunk pool is no longer drained per task - the next task on this worker reuses it.
        "define internal ptr @__olang_worker_loop(ptr %w) {\n"
        "entry:\n"
        "  %m = getelementptr %olang.worker, ptr %w, i32 0, i32 5\n"
        "  %c = getelementptr %olang.worker, ptr %w, i32 0, i32 6\n"
        "  %st = getelementptr %olang.worker, ptr %w, i32 0, i32 3\n"
        "  call i32 @pthread_mutex_lock(ptr %m)\n"
        "  br label %check\n"
        "check:\n"
        "  %s = load i64, ptr %st\n"
        "  %haswork = icmp eq i64 %s, 1\n"
        "  br i1 %haswork, label %run, label %park\n"
        "park:\n"
        "  call i32 @pthread_cond_wait(ptr %c, ptr %m)\n"
        "  br label %check\n"
        "run:\n"
        "  %fnp = getelementptr %olang.worker, ptr %w, i32 0, i32 1\n"
        "  %fn = load ptr, ptr %fnp\n"
        "  %envp = getelementptr %olang.worker, ptr %w, i32 0, i32 2\n"
        "  %env = load ptr, ptr %envp\n"
        "  %tkp = getelementptr %olang.worker, ptr %w, i32 0, i32 4\n"
        "  %tk = load ptr, ptr %tkp\n"
        "  call i32 @pthread_mutex_unlock(ptr %m)\n"
        "  call ptr %fn(ptr %env)\n"
        //the task is finished the moment its call returns - report that first, so a joiner can proceed
        "  call i32 @pthread_mutex_lock(ptr @__olang_task_lock)\n"
        "  %dp = getelementptr %olang.task, ptr %tk, i32 0, i32 1\n"
        "  store i64 1, ptr %dp\n"
        "  call i32 @pthread_cond_broadcast(ptr @__olang_task_cv)\n"
        "  call i32 @pthread_mutex_unlock(ptr @__olang_task_lock)\n"
        //then hand this worker straight back, so the very next spawn can have it. Taking the free-list
        //lock while still holding our own is what stops a spawner racing ahead of the park below: it
        //needs this mutex to hand over work, and the predicate is re-tested under it either way. The
        //state is cleared before the list lock is taken for the same reason - push first and a spawner
        //could hand us work that this store would then wipe, parking us forever with a task lost.
        "  call i32 @pthread_mutex_lock(ptr %m)\n"
        "  store i64 0, ptr %st\n"
        "  call i32 @pthread_mutex_lock(ptr @__olang_worker_lock)\n"
        "  %nidle = load i64, ptr @__olang_worker_idle\n"
        "  %full = icmp sge i64 %nidle, 64\n"
        "  br i1 %full, label %retire, label %stay\n"
        //P1f: enough are parked already, so this one goes away rather than being held for a load that
        //has passed. Nothing references it - the task node carries the completion flag, not a worker
        //pointer - so once it is off the list it is ours to release. The chunk pool goes back here and
        //nowhere else, which is the one place P2a's drain is still needed now that a worker normally
        //keeps its pool for the next task.
        "retire:\n"
        "  call i32 @pthread_mutex_unlock(ptr @__olang_worker_lock)\n"
        "  call i32 @pthread_mutex_unlock(ptr %m)\n"
        "  call void @__olang_pool_drain()\n"
        "  call void @free(ptr %w)\n"
        "  ret ptr null\n"
        "stay:\n"
        "  %oldf = load ptr, ptr @__olang_worker_free\n"
        "  %selfn = getelementptr %olang.worker, ptr %w, i32 0, i32 0\n"
        "  store ptr %oldf, ptr %selfn\n"
        "  store ptr %w, ptr @__olang_worker_free\n"
        "  %nidle1 = add i64 %nidle, 1\n"
        "  store i64 %nidle1, ptr @__olang_worker_idle\n"
        "  call i32 @pthread_mutex_unlock(ptr @__olang_worker_lock)\n"
        "  br label %check\n"
        "}\n\n"
        //takes a parked worker, or builds one. P1c lives here now: a thread the OS declines to create is
        //still a broken guarantee, and this is the only place one is created.
        "define linkonce_odr ptr @__olang_worker_get() {\n"
        "entry:\n"
        "  call i32 @pthread_mutex_lock(ptr @__olang_worker_lock)\n"
        //O2c: entry block, though this path returns straight after it - every alloca this compiler emits
        //is in an entry block, which is worth being an invariant that can be checked mechanically rather
        //than a rule with an argued-safe exception in it
        "  %tid = alloca i64\n"
        "  %top = load ptr, ptr @__olang_worker_free\n"
        "  %none = icmp eq ptr %top, null\n"
        "  br i1 %none, label %fresh, label %reuse\n"
        "reuse:\n"
        "  %np = getelementptr %olang.worker, ptr %top, i32 0, i32 0\n"
        "  %nx = load ptr, ptr %np\n"
        "  store ptr %nx, ptr @__olang_worker_free\n"
        "  %ni = load i64, ptr @__olang_worker_idle\n"
        "  %ni1 = sub i64 %ni, 1\n"
        "  store i64 %ni1, ptr @__olang_worker_idle\n"
        "  call i32 @pthread_mutex_unlock(ptr @__olang_worker_lock)\n"
        "  ret ptr %top\n"
        "fresh:\n"
        "  call i32 @pthread_mutex_unlock(ptr @__olang_worker_lock)\n"
        "  %w = call ptr @malloc(i64 128)\n"
        "  call void @llvm.memset.p0.i64(ptr %w, i8 0, i64 128, i1 false)\n"
        "  %rc = call i32 @pthread_create(ptr %tid, ptr null, ptr @__olang_worker_loop, ptr %w)\n"
        "  call void @__olang_task_started(i32 %rc)\n"
        //nothing ever joins a worker - it parks forever - so detach it rather than leak the descriptor
        "  %tv = load i64, ptr %tid\n"
        "  call i32 @pthread_detach(i64 %tv)\n"
        "  ret ptr %w\n"
        "}\n\n", out);
    //split here only to stay under C99's 4095-character string-literal limit
    fputs(
        "define linkonce_odr void @__olang_worker_start(ptr %w, ptr %fn, ptr %env, ptr %tk) {\n"
        "entry:\n"
        "  %m = getelementptr %olang.worker, ptr %w, i32 0, i32 5\n"
        "  %c = getelementptr %olang.worker, ptr %w, i32 0, i32 6\n"
        "  call i32 @pthread_mutex_lock(ptr %m)\n"
        "  %fp = getelementptr %olang.worker, ptr %w, i32 0, i32 1\n"
        "  store ptr %fn, ptr %fp\n"
        "  %ep = getelementptr %olang.worker, ptr %w, i32 0, i32 2\n"
        "  store ptr %env, ptr %ep\n"
        "  %tp = getelementptr %olang.worker, ptr %w, i32 0, i32 4\n"
        "  store ptr %tk, ptr %tp\n"
        "  %sp = getelementptr %olang.worker, ptr %w, i32 0, i32 3\n"
        "  store i64 1, ptr %sp\n"
        "  call i32 @pthread_cond_broadcast(ptr %c)\n"
        "  call i32 @pthread_mutex_unlock(ptr %m)\n"
        "  ret void\n"
        "}\n\n"
        //waits for ONE task to finish. This is what replaced pthread_join: a cached worker never exits,
        //so there is nothing to join and completion is signalled explicitly. It waits on the task rather
        //than on the worker because the worker has very likely been handed to somebody else by now.
        "define linkonce_odr void @__olang_task_wait(ptr %tk) {\n"
        "entry:\n"
        "  %dp = getelementptr %olang.task, ptr %tk, i32 0, i32 1\n"
        "  call i32 @pthread_mutex_lock(ptr @__olang_task_lock)\n"
        "  br label %check\n"
        "check:\n"
        "  %d = load i64, ptr %dp\n"
        "  %fin = icmp eq i64 %d, 1\n"
        "  br i1 %fin, label %got, label %wait\n"
        "wait:\n"
        "  call i32 @pthread_cond_wait(ptr @__olang_task_cv, ptr @__olang_task_lock)\n"
        "  br label %check\n"
        "got:\n"
        "  call i32 @pthread_mutex_unlock(ptr @__olang_task_lock)\n"
        "  ret void\n"
        "}\n\n"
        "define linkonce_odr void @__olang_join_tasks(ptr %headslot) {\n"
        "entry:\n"
        "  %head = load ptr, ptr %headslot\n"
        "  store ptr null, ptr %headslot\n"
        "  %nonone = icmp eq ptr %head, null\n"
        "  br i1 %nonone, label %done, label %task\n"
        "task:\n"
        "  %cur = phi ptr [ %head, %entry ], [ %tnext, %aftermerge ]\n"
        "  call void @__olang_task_wait(ptr %cur)\n"
        "  %mheadptr = getelementptr %olang.task, ptr %cur, i32 0, i32 2\n"
        "  %mhead = load ptr, ptr %mheadptr\n"
        "  %nomerge = icmp eq ptr %mhead, null\n"
        "  br i1 %nomerge, label %aftermerge, label %merge\n"
        "merge:\n"
        "  %m = phi ptr [ %mhead, %task ], [ %mnext, %merge ]\n"
        "  %dstptr = getelementptr %olang.merge, ptr %m, i32 0, i32 1\n"
        "  %dst = load ptr, ptr %dstptr\n"
        "  %srcptr = getelementptr %olang.merge, ptr %m, i32 0, i32 2\n"
        "  %src = load ptr, ptr %srcptr\n"
        "  call void @__olang_scope_merge(ptr %dst, ptr %src)\n"
        "  %mnextptr = getelementptr %olang.merge, ptr %m, i32 0, i32 0\n"
        "  %mnext = load ptr, ptr %mnextptr\n"
        "  %matend = icmp eq ptr %mnext, null\n"
        "  br i1 %matend, label %aftermerge, label %merge\n"
        "aftermerge:\n"
        "  %tnextptr = getelementptr %olang.task, ptr %cur, i32 0, i32 0\n"
        "  %tnext = load ptr, ptr %tnextptr\n"
        "  %tatend = icmp eq ptr %tnext, null\n"
        "  br i1 %tatend, label %done, label %task\n"
        "done:\n"
        "  ret void\n"
        "}\n\n"
        //walks the open-scope chain down to %mark, waiting for each join block's tasks before reclaiming
        //the arena they may still be holding (P1b), then running that scope's destructors. Closing a
        //scope that was never entered is a no-op, and so is joining a null task list, so nothing here
        //needs to know which blocks were actually reached.
        "define linkonce_odr void @__olang_unwind_to(ptr %mark) {\n"
        "entry:\n"
        "  br label %loop\n"
        "loop:\n"
        "  %cur = load ptr, ptr @__olang_unwind_top\n"
        "  %atmark = icmp eq ptr %cur, %mark\n"
        "  %atnull = icmp eq ptr %cur, null\n"
        "  %stop = or i1 %atmark, %atnull\n"
        "  br i1 %stop, label %done, label %step\n"
        "step:\n"
        "  %jslot = getelementptr %olang.unwind, ptr %cur, i32 0, i32 2\n"
        "  %j = load ptr, ptr %jslot\n"
        "  %nojoin = icmp eq ptr %j, null\n"
        "  br i1 %nojoin, label %closeit, label %joinit\n"
        "joinit:\n"
        "  call void @__olang_join_tasks(ptr %j)\n"
        "  br label %closeit\n"
        "closeit:\n"
        "  %sslot = getelementptr %olang.unwind, ptr %cur, i32 0, i32 1\n"
        "  %s = load ptr, ptr %sslot\n"
        "  call void @__olang_scope_close(ptr %s)\n"
        "  %pslot = getelementptr %olang.unwind, ptr %cur, i32 0, i32 0\n"
        "  %p = load ptr, ptr %pslot\n"
        "  store ptr %p, ptr @__olang_unwind_top\n"
        "  br label %loop\n"
        "done:\n"
        "  ret void\n"
        "}\n\n", out);
    fputs(
        //prepends one { instance, dtorFn } node onto scope's own dtor list - walked in
        //@__olang_scope_close below, in the same LIFO order registration happens in, right before that
        //scope's chunks are reclaimed. The node is bump-allocated out of the scope's OWN arena rather than
        //given its own @malloc: the arena strictly outlives every node it holds (the dtor walk runs before
        //any chunk is reclaimed) and is returned to the pool wholesale, so this turns a malloc/free pair
        //per registered instance into a pointer bump and nothing at all. LLVM cannot make this change
        //itself - the node escapes into a list reachable from the scope, so it can prove nothing about it.
        "define linkonce_odr void @__olang_scope_register_dtor(ptr %scope, ptr %instance, ptr %dtorFn) {\n"
        "entry:\n"
        "  %node = call ptr @__olang_scope_alloc(ptr %scope, i64 24)\n"
        "  %dheadptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 1\n"
        "  %oldhead = load ptr, ptr %dheadptr\n"
        "  %nextptr = getelementptr %olang.dtornode, ptr %node, i32 0, i32 0\n"
        "  store ptr %oldhead, ptr %nextptr\n"
        "  %instptr = getelementptr %olang.dtornode, ptr %node, i32 0, i32 1\n"
        "  store ptr %instance, ptr %instptr\n"
        "  %fnptr = getelementptr %olang.dtornode, ptr %node, i32 0, i32 2\n"
        "  store ptr %dtorFn, ptr %fnptr\n"
        "  store ptr %node, ptr %dheadptr\n"
        "  ret void\n"
        "}\n\n"
        //P2: folds a task's sub-scope back into the scope it stands for, on the spawner's thread, after
        //the join - so the only thread that ever bumps a given arena is the one that owns it. Nothing is
        //copied or moved: the two chunk lists are relinked, and the sub-scope's dtor nodes (which live in
        //its own chunks) go in FRONT of the parent's, so instances a task built are destructed before the
        //ones that were already there when it was spawned - the same LIFO order a sequential call gives.
        //The chunk splice is O(1) off the recorded tail; the dtor splice walks the sub-scope's own nodes
        //only, of which there is one per destructor-bearing instance the task constructed.
        "define linkonce_odr void @__olang_scope_merge(ptr %dst, ptr %src) {\n"
        "entry:\n"
        "  %sdheadptr = getelementptr %olang.scope, ptr %src, i32 0, i32 1\n"
        "  %sdhead = load ptr, ptr %sdheadptr\n"
        "  %nodtors = icmp eq ptr %sdhead, null\n"
        "  br i1 %nodtors, label %chunks, label %dwalk\n"
        "dwalk:\n"
        "  %dcur = phi ptr [ %sdhead, %entry ], [ %dnext, %dwalk ]\n"
        "  %dnextptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 0\n"
        "  %dnext = load ptr, ptr %dnextptr\n"
        "  %dattail = icmp eq ptr %dnext, null\n"
        "  br i1 %dattail, label %dsplice, label %dwalk\n"
        "dsplice:\n"
        "  %ddheadptr = getelementptr %olang.scope, ptr %dst, i32 0, i32 1\n"
        "  %ddhead = load ptr, ptr %ddheadptr\n"
        "  %dtailnextptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 0\n"
        "  store ptr %ddhead, ptr %dtailnextptr\n"
        "  store ptr %sdhead, ptr %ddheadptr\n"
        "  store ptr null, ptr %sdheadptr\n"
        "  br label %chunks\n"
        "chunks:\n"
        "  %sheadptr = getelementptr %olang.scope, ptr %src, i32 0, i32 0\n"
        "  %shead = load ptr, ptr %sheadptr\n"
        "  %nochunks = icmp eq ptr %shead, null\n"
        "  br i1 %nochunks, label %done, label %splice\n"
        "splice:\n"
        "  %stailptr = getelementptr %olang.scope, ptr %src, i32 0, i32 2\n"
        "  %stail = load ptr, ptr %stailptr\n"
        "  %dheadptr = getelementptr %olang.scope, ptr %dst, i32 0, i32 0\n"
        "  %dhead = load ptr, ptr %dheadptr\n"
        "  %stailnextptr = getelementptr %olang.chunk, ptr %stail, i32 0, i32 0\n"
        "  store ptr %dhead, ptr %stailnextptr\n"
        "  store ptr %shead, ptr %dheadptr\n"
        "  store ptr null, ptr %sheadptr\n"
        "  store ptr null, ptr %stailptr\n"
        //the parent's tail is the oldest chunk it holds, so it only changes when the parent had none
        "  %dstwasempty = icmp eq ptr %dhead, null\n"
        "  br i1 %dstwasempty, label %settail, label %done\n"
        "settail:\n"
        "  %dtailptr = getelementptr %olang.scope, ptr %dst, i32 0, i32 2\n"
        "  store ptr %stail, ptr %dtailptr\n"
        "  br label %done\n"
        "done:\n"
        "  ret void\n"
        "}\n\n"
        //walks and calls (then frees) this scope's own dtor-node list first, LIFO - most-recently-
        //registered first, same order a stack unwind would give - then splices its entire chunk list onto
        //the free pool in one O(1) op (after walking to find this list's own tail) and resets the scope
        //back to empty/lazy
        "define linkonce_odr void @__olang_scope_close(ptr %scope) {\n"
        "entry:\n"
        "  %dheadptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 1\n"
        "  %dhead = load ptr, ptr %dheadptr\n"
        "  store ptr null, ptr %dheadptr\n"
        "  %dempty = icmp eq ptr %dhead, null\n"
        "  br i1 %dempty, label %chunks, label %dwalk\n"
        "dwalk:\n"
        "  %dcur = phi ptr [ %dhead, %entry ], [ %dnext, %dwalk ]\n"
        "  %instptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 1\n"
        "  %inst = load ptr, ptr %instptr\n"
        "  %fnptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 2\n"
        "  %fn = load ptr, ptr %fnptr\n"
        "  call void %fn(ptr %inst)\n"
        "  %dnextptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 0\n"
        "  %dnext = load ptr, ptr %dnextptr\n"
        //no free: the node lives in this scope's own arena and goes back to the pool with its chunk below

        "  %datend = icmp eq ptr %dnext, null\n"
        "  br i1 %datend, label %chunks, label %dwalk\n"
        "chunks:\n"
        "  %headptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 0\n"
        "  %head = load ptr, ptr %headptr\n"
        "  %empty = icmp eq ptr %head, null\n"
        "  br i1 %empty, label %done, label %linkpool\n"
        //genuinely O(1) now: the tail was recorded when the first chunk was taken (see scope_alloc), so
        //there is nothing to walk - splice the whole list onto the pool by pointing the known tail at the
        //current pool head. Previously this walked head-to-tail on every close purely to find this node.
        "linkpool:\n"
        "  %ctailptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 2\n"
        "  %tail = load ptr, ptr %ctailptr\n"
        "  %tailnextptr = getelementptr %olang.chunk, ptr %tail, i32 0, i32 0\n"
        "  %poolhead = load ptr, ptr @__olang_chunk_pool\n"
        "  store ptr %poolhead, ptr %tailnextptr\n"
        "  store ptr %head, ptr @__olang_chunk_pool\n"
        "  store ptr null, ptr %headptr\n"
        "  store ptr null, ptr %ctailptr\n"
        "  br label %done\n"
        "done:\n"
        "  ret void\n"
        "}\n\n", out);
}

//B5a: one initializer per module, since one module is one object. The entry point calls them all, in
//an order the ROOT object decides (cgInitGlobalsCalls) - imports before importers.
void cgInitGlobalsName(struct semaModule* mod, char* buf, size_t n) {
    char prefix[256];
    mangleModPrefix(mod, prefix, sizeof(prefix));
    snprintf(buf, n, "@__olang_init_globals_%s", prefix);
}

void cgInitGlobalsFunc(struct cgCtx* ctx, struct semaModule* emitMod) {
    char fname[300];
    cgInitGlobalsName(emitMod, fname, sizeof(fname));
    fprintf(ctx->fnOut, "define void %s() {\nentry:\n", fname);
    struct cgBodyBuf bb;
    cgBodyBegin(ctx, &bb);
    ctx->terminated = false;
    ctx->curMod = emitMod;
    ctx->scope = NULL;
    //O1b: a global's initializer allocates into the program's own scope, which is never closed - the only
    //scope that outlives a global. Before it existed, a global holding a reference emitted invalid IR
    ctx->ownScopeSlot = "@__olang_global_scope";
    ctx->targetScopeOverride = NULL;
    for (int i = 0; i < emitMod->vars.len; i++) {
        struct var* v = ListGetIdx(&emitMod->vars, i);
        if (v->type.bType == BASETYPE_FUNC || !v->initExpr) continue;
        char gname[256];
        mangleGlobal(emitMod, v->name, gname, sizeof(gname));
        if (cgGlobalConstInit(v, gname, NULL)) continue; //K2: already the global's data
        char gaddr[256];
        mangleGlobal(emitMod, v->name, gaddr, sizeof(gaddr));
        char* val = cgValueForTarget(ctx, v->initExpr, v->type, NULL);
        cgStoreInto(ctx, v->type, v->initExpr->type, val, gaddr, NULL, false, OperandIsLvalue(v->initExpr), false);
    }
    fputs("  ret void\n}\n\n", ctx->fnOut);
    cgBodyEnd(ctx, &bb);
    ctx->ownScopeSlot = NULL;
}

//B5a: imports before importers, so a module's own globals are set only after everything it imports has
//been - SemanticInitOrder's post-order walk. (This used SemanticAllModules and said it was already that
//order; it is discovery order, root first, so a root's initializers read its imports' globals unset.)
void cgInitGlobalsCalls(struct cgCtx* ctx, struct semaModule* emitMod) {
    struct list order = SemanticInitOrder();
    struct list* all = &order;
    for (int m = 0; m < all->len; m++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(all, m);
        char fname[300];
        cgInitGlobalsName(mod, fname, sizeof(fname));
        if (mod != emitMod) fprintf(ctx->fnOut, "  call void %s()\n", fname);
        else fprintf(ctx->fnOut, "  call void %s()\n", fname);
    }
}

//declarations for the other modules' init functions, which this object calls but does not define
void cgEmitForeignInitDecls(FILE* out, struct semaModule* emitMod) {
    struct list* all = SemanticAllModules();
    for (int m = 0; m < all->len; m++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(all, m);
        if (mod == emitMod) continue;
        char fname[300];
        cgInitGlobalsName(mod, fname, sizeof(fname));
        fprintf(out, "declare void %s()\n", fname);
    }
}

//the parameter list, shared by a definition and by the "declare" another module's object needs for the
//same function - they have to agree exactly, so they are written in one place. §8 O3/O19: each of the
//signature's own scope variables is a leading, never-user-visible "ptr" parameter, the arena the caller
//bound it to - exactly what the old "s scope" parameter carried, minus any presence in the language.
void cgEmitParamList(FILE* out, struct var* func, bool named) {
    bool ctor = cgIsCtor(func);
    if (ctor) fprintf(out, named ? "ptr %%here" : "ptr"); //C2d
    //D16: a lambda is reached only through a function value, so it takes the value's closure first - and its
    //captures' scopes come from that closure, not from its caller
    if (func->isLambda) { fprintf(out, named ? "ptr %%closure" : "ptr"); ctor = true; }
    bool anyScope = false;
    for (int i = 0; i < func->type.scopeVars.len; i++) {
        if ((*(struct var**)ListGetIdx(&func->type.scopeVars, i))->isCaptureScope) continue;
        fprintf(out, "%sptr", anyScope || ctor ? ", " : "");
        if (named) fprintf(out, " %%sarg%d", i);
        anyScope = true;
    }
    for (int i = 0; i < func->type.vars.len; i++) {
        struct var* p = ListGetIdx(&func->type.vars, i);
        char pty[256];
        llvmType(p->type, pty, sizeof(pty));
        bool first = (i == 0 && !anyScope && !ctor);
        fprintf(out, "%s%s", first ? "" : ", ", pty);
        if (named) fprintf(out, " %%arg%d", i);
    }
}

//P1/P2: every function this object does not define but may call - another module's, or one of this
//module's own that ends up referenced before its definition is written - needs a declaration matching
//the definition exactly.
static void cgEmitFuncDecl(FILE* out, struct var* v) {
    char retTy[256], name[256];
    llvmFuncRetType(v->type, retTy, sizeof(retTy));
    mangleFuncSym(v, name, sizeof(name));
    fprintf(out, "declare %s %s(", retTy, name);
    cgEmitParamList(out, v, false);
    fputs(")\n", out);
}

void cgEmitForeignFuncDecls(FILE* out, struct semaModule* emitMod) {
    //B3d: the root defines every instantiation; any other object only calls them
    if (emitMod != cgCompilationRoot) {
        struct list* insts = SemanticAllInstantiations();
        for (int i = 0; i < insts->len; i++) cgEmitFuncDecl(out, ((struct instantiation*)ListGetIdx(insts, i))->specialized);
        struct list* tinsts = SemanticAllTypeInstantiations();
        for (int i = 0; i < tinsts->len; i++) {
            struct type* t = *(struct type**)ListGetIdx(tinsts, i);
            if (t->typeParams.len != 0) continue;
            if (t->ctorFunc) cgEmitFuncDecl(out, t->ctorFunc);
            if (t->destructFunc) cgEmitFuncDecl(out, t->destructFunc);
        }
    }
    struct list* all = SemanticAllModules();
    for (int m = 0; m < all->len; m++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(all, m);
        if (mod == emitMod) continue;
        for (int i = 0; i < mod->vars.len; i++) {
            struct var* v = ListGetIdx(&mod->vars, i);
            if (v->type.bType != BASETYPE_FUNC || v->type.isExtern) continue;
            if (v->type.typeParams.len != 0) continue; //a generic has no code of its own (G16)
            cgEmitFuncDecl(out, v);
        }
    }
    fputs("\n", out);
}

static void cgFunctionIn(struct cgCtx* ctx, struct semaModule* mod, struct var* func, bool shared);
void cgEmitLambdasOf(struct cgCtx* ctx, struct var* host, struct semaModule* mod, bool inTest);
void cgFunction(struct cgCtx* ctx, struct semaModule* mod, struct var* func, bool shared) {
    struct semaModule* savedScope = SemanticMethodScope;
    SemanticMethodScope = mod; //M22: the same visibility the body was checked under
    cgFunctionIn(ctx, mod, func, shared);
    SemanticMethodScope = savedScope;
    cgEmitLambdasOf(ctx, func, mod, false);
}

//D16: the lambdas written in host - or, with no host, in mod's global initializers or (inTest) its tests -
//each an internal function of the object that defines what it is written in, since nothing else names it
void cgEmitLambdasOf(struct cgCtx* ctx, struct var* host, struct semaModule* mod, bool inTest) {
    struct list* ls = SemanticAllLambdas();
    for (int i = 0; i < ls->len; i++) {
        struct var* L = *(struct var**)ListGetIdx(ls, i);
        if (L->lambdaHost != host) continue;
        if (!host && (L->owner != mod || L->lambdaInTest != inTest)) continue;
        cgFunction(ctx, L->owner, L, false);
    }
}

static void cgFunctionIn(struct cgCtx* ctx, struct semaModule* mod, struct var* func, bool shared) {
    ctx->curMod = mod;
    ctx->curFunc = func;
    ctx->scope = NULL;
    ctx->ctorHere = cgIsCtor(func) ? "%here" : NULL;
    ctx->targetScopeOverride = NULL;
    cgPushScope(ctx);

    char name[256];
    mangleFuncSym(func, name, sizeof(name));
    char retTy[256];
    llvmFuncRetType(func->type, retTy, sizeof(retTy));

    //B3c/B3d: a generic's instantiation is defined by the compilation's root object only, so it must SURVIVE
    //that object: "linkonce_odr" may be discarded by a translation unit that does not call it, which a
    //non-LTO build (-race) does before the object is written. "weak_odr" is kept, and still merges with
    //the copy a "-c" object of an imported module may carry.
    fprintf(ctx->fnOut, "define %s%s %s(", shared ? "weak_odr " : func->isLambda ? "internal " : "", retTy, name);
    cgEmitParamList(ctx->fnOut, func, true);
    fprintf(ctx->fnOut, ")%s {\nentry:\n", cgDbgSubprogram(ctx, func->name, name, func->tok.lineNr, func->tok));
    struct cgBodyBuf bb;
    cgBodyBegin(ctx, &bb);
    ctx->terminated = false;

    for (int i = 0; i < func->type.scopeVars.len; i++) {
        struct var* sv = *(struct var**)ListGetIdx(&func->type.scopeVars, i);
        if (sv->isCaptureScope) continue; //D16c: from the closure, below
        char* slot = cgDeclareLocal(ctx, sv->name, sv->type);
        fprintf(cgAllocaOut(ctx), "  %s = alloca ptr\n", slot);
        fprintf(ctx->fnOut, "  store ptr %%sarg%d, ptr %s\n", i, slot);
    }
    //D16c: a lambda's captures, and their scopes, as the closure carries them
    if (func->isLambda && func->lambdaCaptures.len) {
        char envTy[4096];
        cgClosureType(func, envTy, sizeof(envTy));
        int field = 1;
        for (int i = 0; i < func->lambdaCaptures.len; i++) {
            struct var* in = ((struct lambdaCapture*)ListGetIdx(&func->lambdaCaptures, i))->inner;
            char cty[256];
            llvmType(in->type, cty, sizeof(cty));
            char* fp = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %%closure, i32 0, i32 %d\n", fp, envTy, field++);
            char* fv = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", fv, cty, fp);
            char* slot = cgDeclareLocal(ctx, in->name, in->type);
            fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", slot, cty);
            fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", cty, fv, slot);
            if (!in->type.scopeParam) continue;
            char* sp = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %%closure, i32 0, i32 %d\n", sp, envTy, field++);
            char* sval = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", sval, sp);
            char* sslot = cgDeclareLocal(ctx, in->type.scopeParam->name, in->type.scopeParam->type);
            fprintf(cgAllocaOut(ctx), "  %s = alloca ptr\n", sslot);
            fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", sval, sslot);
        }
    }
    for (int i = 0; i < func->type.vars.len; i++) {
        struct var* p = ListGetIdx(&func->type.vars, i);
        char pty[256];
        llvmType(p->type, pty, sizeof(pty));
        char* slot = cgDeclareLocal(ctx, p->name, p->type);
        fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", slot, pty);
        //%argN is already the real boundary-form value (aggregate or scalar) - store it directly, unlike
        //cgStoreInto's by-ref branch which expects our internal ptr-to-storage convention
        fprintf(ctx->fnOut, "  store %s %%arg%d, ptr %s\n", pty, i, slot);
        cgDbgVar(ctx, slot, p->name, p->type, func->tok.lineNr, i + 1);
    }

    //this function's own private scope - see emitScopeRuntime/cgCloseOwnScope. Lazily empty (lazy in the
    //sense that no chunk is grabbed until something actually allocates into it) until "own" or a bare
    //"&" allocation touches it; harmless and cheap to always set up even when never used.
    char* ownScope = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca %%olang.scope\n", ownScope);
    fprintf(ctx->fnOut, "  store %%olang.scope zeroinitializer, ptr %s\n", ownScope);
    ctx->ownScopeSlot = ownScope;
    //O2: the body IS a block, and the checker counts it as depth 1 (buildBlock). This path emits its
    //statements directly rather than through cgBlock, so the depth has to be set to match or every
    //nested block lands one level too shallow and never gets an arena of its own.
    ctx->blockDepth = 1;
    ctx->blockSlots.len = 0;
    ctx->blockJoins.len = 0;
    ctx->scopePool.len = 0;
    ctx->joinPool.len = 0;
    for (int d = 2; d <= cgMaxBlockDepth(&func->codeBlock) + 1; d++) {
        char* sl = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca %%olang.scope\n", sl);
        ListAdd(&ctx->scopePool, &sl);
        char* jh = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca ptr\n", jh);
        ListAdd(&ctx->joinPool, &jh);
    }
    cgSetupUnwind(ctx);
    cgPushOwnUnwind(ctx);

    for (int i = 0; i < func->codeBlock.len; i++) {
        struct statement* s = ListGetIdx(&func->codeBlock, i);
        cgStatement(ctx, s);
    }

    if (!ctx->terminated) {
        cgCloseOwnScope(ctx);
        if (func->type.errors.len > 0) {
            //fell off the end without an explicit return/error: implicit success, same as an infallible
            //function's implicit zero-value return below - zeroinitializer's i32 field is code 0
            if (func->type.hasRetType) fprintf(ctx->fnOut, "  ret %s zeroinitializer\n", retTy);
            else fputs("  ret i32 0\n", ctx->fnOut);
        } else if (!func->type.hasRetType) fputs("  ret void\n", ctx->fnOut);
        else {
            char* z = cgZeroValue(*func->type.retType);
            fprintf(ctx->fnOut, "  ret %s %s\n", retTy, z);
        }
    }
    fputs("}\n\n", ctx->fnOut);
    cgBodyEnd(ctx, &bb);
    ctx->curFunc = NULL;
    ctx->ownScopeSlot = NULL;
    cgPopScope(ctx);
}

void cgEmitAllFunctions(struct cgCtx* ctx, struct semaModule* emitMod) {
    struct list* all = SemanticAllModules();
    for (int m = 0; m < all->len; m++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(all, m);
        if (mod != emitMod) continue; //P1: one module, one object - the rest are declares, not defines
        for (int i = 0; i < mod->vars.len; i++) {
            struct var* v = ListGetIdx(&mod->vars, i);
            if (v->type.bType != BASETYPE_FUNC || v->type.isExtern) continue;
            //G16: an uninstantiated generic has no code of its own - only its monomorphized copies are
            //emitted, each a separate ordinary function with every type variable substituted away
            if (v->type.typeParams.len != 0) continue;
            cgFunction(ctx, mod, v, false);
        }
        cgEmitLambdasOf(ctx, NULL, mod, false); //D16: those written in a global's initializer
    }
    //...and those copies, each an ordinary function by this point. Emitted under the module that
    //DECLARED the generic, not whichever one instantiated it, so one set of type arguments always
    //produces one symbol however many modules call it.
    //M22/B3d: only the compilation's ROOT object defines them. The instantiation set belongs to the whole
    //program, so an ordinary module's object carrying it would depend on which program it was built in -
    //and be reused, stale, by another: a std module compiled inside one program held instantiations
    //calling a module a second program does not link. The root transitively imports every module, so its
    //own staleness already covers the whole set; the others declare what they call.
    if (emitMod != cgCompilationRoot) return;
    struct list* insts = SemanticAllInstantiations();
    for (int i = 0; i < insts->len; i++) {
        struct instantiation* inst = ListGetIdx(insts, i);
        cgFunction(ctx, inst->generic->type.owner, inst->specialized, true);
    }
    //a generic TYPE's constructor and destructor are generic too, and their copies live on the type
    //instantiation rather than in any module's var list - emitted here for the same reason
    struct list* tinsts = SemanticAllTypeInstantiations();
    for (int i = 0; i < tinsts->len; i++) {
        struct type* t = *(struct type**)ListGetIdx(tinsts, i);
        if (t->typeParams.len != 0) continue; //G8a: still a pattern - see emitStructTypeDefs
        if (t->ctorFunc) cgFunction(ctx, t->owner, t->ctorFunc, true);
        if (t->destructFunc) cgFunction(ctx, t->owner, t->destructFunc, true);
    }
}

//pinned to match clang-20's actual host default (`clang-20 -dumpmachine`) - an unset triple still defaults
//to something internally, and when that default doesn't match the compilation target clang prints a
//harmless but noisy "overriding the module target triple" warning on every single build
void emitTargetTriple(FILE* out) {
    fputs("target triple = \"x86_64-pc-linux-gnu\"\n\n", out);
}

//the type tree cgTbaa's tags refer to: one root, one leaf per tagged type, all siblings - so any two
//different tagged types are proven not to alias, and anything untagged still aliases everything.
void emitTbaaTypeTree(FILE* out) {
    fputs("!20 = !{!\"olang\"}\n"
          "!11 = !{!\"bool\", !20, i64 0}\n"
          "!12 = !{!\"byte\", !20, i64 0}\n"
          "!13 = !{!\"int32\", !20, i64 0}\n"
          "!14 = !{!\"int64\", !20, i64 0}\n"
          "!15 = !{!\"float32\", !20, i64 0}\n"
          "!16 = !{!\"float64\", !20, i64 0}\n"
          "!17 = !{!\"arraydesc\", !20, i64 0}\n"
          //the element family: same types, reached by indexing rather than as a field
          "!41 = !{!\"bool[]\", !20, i64 0}\n"
          "!42 = !{!\"byte[]\", !20, i64 0}\n"
          "!43 = !{!\"int32[]\", !20, i64 0}\n"
          "!44 = !{!\"int64[]\", !20, i64 0}\n"
          "!45 = !{!\"float32[]\", !20, i64 0}\n"
          "!46 = !{!\"float64[]\", !20, i64 0}\n"
          "!47 = !{!\"arraydesc[]\", !20, i64 0}\n"
          "!21 = !{!11, !11, i64 0}\n"
          "!22 = !{!12, !12, i64 0}\n"
          "!23 = !{!13, !13, i64 0}\n"
          "!24 = !{!14, !14, i64 0}\n"
          "!25 = !{!15, !15, i64 0}\n"
          "!26 = !{!16, !16, i64 0}\n"
          "!27 = !{!17, !17, i64 0}\n"
          "!31 = !{!41, !41, i64 0}\n"
          "!32 = !{!42, !42, i64 0}\n"
          "!33 = !{!43, !43, i64 0}\n"
          "!34 = !{!44, !44, i64 0}\n"
          "!35 = !{!45, !45, i64 0}\n"
          "!36 = !{!46, !46, i64 0}\n"
          "!37 = !{!47, !47, i64 0}\n\n", out);
}

void cgEmitModuleDecls(FILE* out, struct semaModule* emitMod) {
    emitTargetTriple(out);
    emitStructTypeDefs(out);
    fputs("\n", out);
    emitRuntimeDecls(out);
    emitExternDecls(out);
    emitTbaaTypeTree(out);
    emitGlobalDecls(out, emitMod);
    fputs("\n", out);
}

//main's signature is fixed to "<errors> ? void" (checked in semantic.c: no params, no success type, at
//least one declared error) - so its LLVM return is always a bare i32 code, no payload to worry about.
//code 0 -> process exit 0. Nonzero -> prints which declared error it was to stderr, then exits 1 (the
//OS-standard success/failure pair - see the report for why a finer-grained exit code isn't worth it).
void cgProgramMain(struct cgCtx* ctx, struct semaModule* root) {
    struct var* mainFunc = VarGetList(&root->vars, StrFromCStr("main"));
    fprintf(ctx->fnOut, "define i32 @main()%s {\nentry:\n", cgDbgSubprogram(ctx, StrFromCStr("olang.start"), "main", 1, (struct token){0}));
    struct cgBodyBuf bb;
    cgBodyBegin(ctx, &bb);
    ctx->terminated = false;
    cgInitGlobalsCalls(ctx, root);
    char mname[256];
    mangleFuncSym(mainFunc, mname, sizeof(mname));

    char* code = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call i32 %s()\n", code, mname);
    char* isErr = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp ne i32 %s, 0\n", isErr, code);
    int id = ctx->lblCtr++;
    char errLbl[32], okLbl[32];
    snprintf(errLbl, sizeof(errLbl), "mainerr.%d", id);
    snprintf(okLbl, sizeof(okLbl), "mainok.%d", id);
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", isErr, errLbl, okLbl);
    ctx->terminated = true;

    cgLabel(ctx, errLbl);
    //pick the message matching this specific (declared error type, word) via a chain of selects, same
    //shape as cgPropagateError's ordinal remap - main's declared error set is small and fully known here
    char* msg = cgGlobalStringConst(ctx, "unhandled error\n"); //defensive fallback, never actually selected
    struct type* genericErr = SemanticGenericErrorType();
    for (int i = 0; i < mainFunc->type.errors.len; i++) {
        struct type* e = *(struct type**)ListGetIdx(&mainFunc->type.errors, i);
        int typeOrdinal = i +1;
        for (int w = 0; w < e->words.len; w++) {
            char text[300];
            //the bare error (R19) carries no real type/word to name - print it plainly instead of the
            //otherwise-generic "TypeName.word" shape, which would read as the redundant "error.error"
            if (e == genericErr) {
                snprintf(text, sizeof(text), "unhandled error\n"); //R19: the default error has no name
            } else {
                struct token wordTok = *(struct token*)ListGetIdx(&e->words, w);
                snprintf(text, sizeof(text), "unhandled error: %.*s.%.*s\n",
                    e->name.len, e->name.ptr, wordTok.str.len, wordTok.str.ptr);
            }
            char* candidate = cgGlobalStringConst(ctx, text);
            long long exact = ((long long)typeOrdinal << 16) | w;
            char* cmp = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = icmp eq i32 %s, %lld\n", cmp, code, exact);
            char* next = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = select i1 %s, ptr %s, ptr %s\n", next, cmp, candidate, msg);
            msg = next;
        }
    }
    char* errStream = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load ptr, ptr @stderr\n", errStream);
    fprintf(ctx->fnOut, "  call i32 @fputs(ptr %s, ptr %s)\n", msg, errStream);
    fputs("  ret i32 1\n", ctx->fnOut);

    cgLabel(ctx, okLbl);
    fputs("  ret i32 0\n", ctx->fnOut);
    fputs("}\n", ctx->fnOut);
    cgBodyEnd(ctx, &bb);
}

void emitTestResultPrint(struct cgCtx* ctx, struct str desc, bool passed) {
    char cbuf[512];
    int n = desc.len < 500 ? desc.len : 500;
    memcpy(cbuf, desc.ptr, (size_t)n);
    cbuf[n] = '\0';
    char* descGlobal = cgGlobalStringConst(ctx, cbuf);
    char* fmt = cgGlobalStringConst(ctx, passed ? "ok - %s\n" : "FAIL - %s\n");
    fprintf(ctx->fnOut, "  call i32 (ptr, ...) @printf(ptr %s, ptr %s)\n", fmt, descGlobal);
}

void cgTestHarnessMain(struct cgCtx* ctx, struct semaModule* root) {
    ctx->curMod = root;
    ctx->curFunc = NULL; //tests have no declared error union - a bare `return`/`error` here isn't fallible
    ctx->scope = NULL;
    cgPushScope(ctx);

    fprintf(ctx->fnOut, "define i32 @main()%s {\nentry:\n", cgDbgSubprogram(ctx, StrFromCStr("olang.tests"), "main", 1, (struct token){0}));
    struct cgBodyBuf bb;
    cgBodyBegin(ctx, &bb);
    ctx->terminated = false;
    cgInitGlobalsCalls(ctx, root);
    //These two counters cross every setjmp below, which in C is exactly the case that would require
    //"volatile": LLVM promotes an alloca across a setjmp whether or not the declaration carries
    //returns_twice (verified on a minimal probe, identical output either way), and it does promote these -
    //at -O3 no "alloca i32" survives in this function and the counts live in phi nodes.
    //It is correct anyway, and for a reason rather than by luck: NOTHING WRITES THEM BETWEEN A setjmp AND
    //ITS longjmp. Both increments sit on the two landing paths, after the jump has already arrived, and a
    //test body never touches them. Keep it that way - an increment moved above a test's setjmp, or into
    //the body, would read back whatever the registers happened to hold after the jump.
    char* passedSlot = cgNewTmp(ctx);
    char* failedSlot = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca i32\n  store i32 0, ptr %s\n", passedSlot, passedSlot);
    fprintf(cgAllocaOut(ctx), "  %s = alloca i32\n  store i32 0, ptr %s\n", failedSlot, failedSlot);

    for (int i = 0; i < root->tests.len; i++) {
        struct semaTest* t = ListGetIdx(&root->tests, i);
        int id = ctx->lblCtr++;
        //S16a/S18: this test's scopes are alloca'd and zeroed BEFORE the setjmp, so the recovery path can
        //reach them too - an alloca inside the run block does not dominate the landing block. That is what
        //lets a longjmp'd-out-of test close its scopes and run its destructors, which it never used to:
        //the old code alloca'd them after the branch and simply abandoned the chunks, "a known, deliberate
        //v1 simplification". Closing a scope twice, or one never entered, is a no-op - close nulls the
        //head and the zeroing above makes an unentered slot empty - so the recovery path can close them
        //all unconditionally without knowing which were open.
        char* testScope = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca %%olang.scope\n", testScope);
        fprintf(ctx->fnOut, "  store %%olang.scope zeroinitializer, ptr %s\n", testScope);
        ctx->blockDepth = 0;
        ctx->blockSlots.len = 0;
        ctx->blockJoins.len = 0;
        ctx->scopePool.len = 0;
        ctx->joinPool.len = 0;
        for (int d = 2; d <= cgMaxBlockDepth(&t->codeBlock) + 1; d++) {
            char* sl = cgNewTmp(ctx);
            fprintf(cgAllocaOut(ctx), "  %s = alloca %%olang.scope\n", sl);
            fprintf(ctx->fnOut, "  store %%olang.scope zeroinitializer, ptr %s\n", sl);
            ListAdd(&ctx->scopePool, &sl);
            char* jh = cgNewTmp(ctx);
            fprintf(cgAllocaOut(ctx), "  %s = alloca ptr\n", jh);
            ListAdd(&ctx->joinPool, &jh);
        }

        //S18b/P1d: the chain is built and pushed BEFORE the setjmp, and the mark records where it stood
        //first - so a longjmp out of this test unwinds exactly this test's scopes and no further, and the
        //nodes it reads live in this frame, which is still alive at the moment of the jump.
        ctx->ownScopeSlot = testScope;
        cgSetupUnwind(ctx);
        char* mark = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load ptr, ptr @__olang_unwind_top\n", mark);
        fprintf(ctx->fnOut, "  store ptr %s, ptr @__olang_unwind_mark\n", mark);
        cgPushOwnUnwind(ctx);
        ctx->ownScopeSlot = NULL;

        char* buf = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca [200 x i8], align 16\n", buf);
        fprintf(ctx->fnOut, "  store ptr %s, ptr @__olang_jmp_target\n", buf);
        char* setjmpRes = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = call i32 @setjmp(ptr %s)\n", setjmpRes, buf);

        char runLbl[40], failLbl[40], passLbl[40], nextLbl[40], unwoundLbl[40];
        snprintf(runLbl, sizeof(runLbl), "test.run.%d", id);
        snprintf(failLbl, sizeof(failLbl), "test.fail.%d", id);
        snprintf(passLbl, sizeof(passLbl), "test.pass.%d", id);
        snprintf(nextLbl, sizeof(nextLbl), "test.next.%d", id);
        snprintf(unwoundLbl, sizeof(unwoundLbl), "test.unwound.%d", id);
        //0 is the first arrival; 2 is "done" (S16a), which ends the test as PASSED; anything else is a
        //failure - a failed assert, a failed runtime check, or an explicit "fail"
        fprintf(ctx->fnOut, "  switch i32 %s, label %%%s [ i32 0, label %%%s i32 2, label %%%s ]\n",
                setjmpRes, unwoundLbl, runLbl, unwoundLbl);
        ctx->terminated = true;

        //the landing block for every longjmp: sort passed from failed on the setjmp value.
        //It does NOT close the abandoned body's scopes, and that is not for want of trying - see the
        //"destructors do not run when a test is left early" note in the design record. LLVM does not model
        //longjmp's control flow, so from here the only edge in comes from before the setjmp, where those
        //scopes are still empty; it therefore proves any close emitted here is a no-op and deletes it,
        //destructors included. Verified: correct at -O0, elided at -O3. Neither a call-site "noinline" nor
        //volatile reads inside the close were enough. Doing it properly means unwinding BEFORE the jump,
        //which needs the runtime to know which scopes are open - a push/pop on every scope open and close,
        //i.e. on the per-block path O2 just made hot. Left as a deliberate, costed decision rather than a
        //simplification nobody looked at.
        cgLabel(ctx, unwoundLbl);
        char* wasDone = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp eq i32 %s, 2\n", wasDone, setjmpRes);
        fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", wasDone, passLbl, failLbl);
        ctx->terminated = true;

        cgLabel(ctx, runLbl);
        ctx->ownScopeSlot = testScope;
        cgBlock(ctx, &t->codeBlock);
        cgCloseOwnScope(ctx);
        ctx->ownScopeSlot = NULL;
        cgBr(ctx, passLbl);

        cgLabel(ctx, passLbl);
        {
            char* pv = cgNewTmp(ctx);
            char* pv2 = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = load i32, ptr %s\n", pv, passedSlot);
            fprintf(ctx->fnOut, "  %s = add i32 %s, 1\n", pv2, pv);
            fprintf(ctx->fnOut, "  store i32 %s, ptr %s\n", pv2, passedSlot);
        }
        emitTestResultPrint(ctx, t->description, true);
        cgBr(ctx, nextLbl);

        cgLabel(ctx, failLbl);
        {
            char* fv = cgNewTmp(ctx);
            char* fv2 = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = load i32, ptr %s\n", fv, failedSlot);
            fprintf(ctx->fnOut, "  %s = add i32 %s, 1\n", fv2, fv);
            fprintf(ctx->fnOut, "  store i32 %s, ptr %s\n", fv2, failedSlot);
        }
        emitTestResultPrint(ctx, t->description, false);
        cgBr(ctx, nextLbl);

        cgLabel(ctx, nextLbl);
    }

    fputs("  store ptr null, ptr @__olang_jmp_target\n", ctx->fnOut);
    char* fp = cgNewTmp(ctx);
    char* pp = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load i32, ptr %s\n", fp, failedSlot);
    fprintf(ctx->fnOut, "  %s = load i32, ptr %s\n", pp, passedSlot);
    char* summaryFmt = cgGlobalStringConst(ctx, "%d passed, %d failed\n");
    fprintf(ctx->fnOut, "  call i32 (ptr, ...) @printf(ptr %s, i32 %s, i32 %s)\n", summaryFmt, pp, fp);
    char* isFail = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp sgt i32 %s, 0\n", isFail, fp);
    char* exitCode = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = zext i1 %s to i32\n", exitCode, isFail);
    fprintf(ctx->fnOut, "  ret i32 %s\n", exitCode);
    fputs("}\n", ctx->fnOut);
    cgBodyEnd(ctx, &bb);
    cgPopScope(ctx);
}

//P1/P2: emits ONE module's object. `entry` selects what tops it off - nothing for a plain module,
//"main" for the root of a program, the test harness for a -t run.
//P7: LLVM's ThreadSanitizer pass instruments a function only if it carries the "sanitize_thread"
//attribute - a C/C++ frontend adds it, and there is no frontend for a .ll, so -fsanitize=thread alone
//silently instruments NOTHING. Rewriting the finished text is what avoids threading a flag through all
//sixteen "define" sites, several of which live inside multi-function runtime string literals; doing it
//here also guarantees the runtime itself (the arena, the scope merge, the chunk pool, the join walk) is
//instrumented, which is exactly the code a concurrency bug would hide in.
static void cgWriteSanitized(FILE* dst, char* buf, size_t len) {
    size_t i = 0;
    while (i < len) {
        size_t end = i;
        while (end < len && buf[end] != '\n') end++;
        size_t lineLen = end - i;
        //"define <...> {" - the attribute group goes immediately before the brace. The last brace on the
        //line is the right one: a struct return type ("define { i32, i32 } @f() {") contains others.
        //Under -debug the line also carries "!dbg !N", and attributes must come before it.
        if (lineLen > 7 && !strncmp(&buf[i], "define ", 7) && buf[i + lineLen -1] == '{') {
            char* dbg = memmem(&buf[i], lineLen, " !dbg ", 6);
            size_t cut = dbg ? (size_t)(dbg - &buf[i]) : lineLen -1;
            fwrite(&buf[i], 1, cut, dst);
            fputs(dbg ? " #0" : "#0 {", dst);
            if (dbg) fwrite(dbg, 1, lineLen - cut, dst);
        } else {
            fwrite(&buf[i], 1, lineLen, dst);
        }
        if (end < len) fputc('\n', dst);
        i = end +1;
    }
    fputs("\nattributes #0 = { sanitize_thread }\n", dst);
}

void CodegenModule(struct semaModule* mod, char* outPath, enum cgEntry entry, bool race, bool unwind, bool debug) {
    SemanticMethodScope = mod; //M22: main, the harness and the globals initializer are this module's code
    char* modBuf;
    size_t modSize;
    FILE* out = open_memstream(&modBuf, &modSize);
    if (!out) ErrorBugFound();
    char* fnBuf;
    size_t fnSize;
    FILE* fnOut = open_memstream(&fnBuf, &fnSize);

    struct cgCtx ctx = {0};
    ctx.out = out;
    ctx.fnOut = fnOut;
    ctx.emittedSyms = ListInit(sizeof(char*));
    ctx.blockSlots = ListInit(sizeof(char*));
    ctx.blockJoins = ListInit(sizeof(char*));
    ctx.unwindPool = ListInit(sizeof(char*));
    ctx.emitUnwind = unwind;
    ctx.scopePool = ListInit(sizeof(char*));
    ctx.joinPool = ListInit(sizeof(char*));
    ctx.loops = ListInit(sizeof(struct cgLoop));

    ctx.debug = debug;
    ctx.fnValues = ListInit(sizeof(struct var*));
    cgDbgInit(&ctx, mod);
    cgEmitModuleDecls(out, mod);
    cgEmitForeignFuncDecls(out, mod);
    cgEmitForeignInitDecls(out, mod);
    cgInitGlobalsFunc(&ctx, mod);
    cgEmitAllFunctions(&ctx, mod);
    if (entry == CG_ENTRY_MAIN) cgProgramMain(&ctx, mod);
    else if (entry == CG_ENTRY_TESTS) {
        cgTestHarnessMain(&ctx, mod);
        cgEmitLambdasOf(&ctx, NULL, mod, true); //D16: those written in its tests
    }
    cgEmitFuncValues(&ctx);

    fflush(fnOut);
    fwrite(fnBuf, 1, fnSize, out);
    fclose(fnOut);
    free(fnBuf);
    //B2e: the collected debug metadata, and the module flags and CU list that make LLVM read it
    if (ctx.debug) {
        fflush(ctx.dbgOut);
        fputs("\ndeclare void @llvm.dbg.declare(metadata, metadata, metadata)\n", out);
        fwrite(ctx.dbgBuf, 1, ctx.dbgSize, out);
        fprintf(out, "!llvm.dbg.cu = !{!%d}\n!llvm.module.flags = !{!%d, !%d}\n"
                "!%d = !{i32 7, !\"Dwarf Version\", i32 4}\n!%d = !{i32 2, !\"Debug Info Version\", i32 3}\n",
                ctx.dbgCu, ctx.dbgNext, ctx.dbgNext + 1, ctx.dbgNext, ctx.dbgNext + 1);
        fclose(ctx.dbgOut);
        free(ctx.dbgBuf);
    }

    fflush(out);
    FILE* real = fopen(outPath, "w");
    if (!real) ErrorBugFound();
    if (race) cgWriteSanitized(real, modBuf, modSize);
    else fwrite(modBuf, 1, modSize, real);
    fclose(real);
    fclose(out);
    free(modBuf);
}

