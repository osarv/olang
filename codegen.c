#define _GNU_SOURCE
#include <stdint.h>
#include <stdarg.h>
#include <math.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <unistd.h>
#include <stddef.h>
#include <dirent.h>
#include <errno.h>
#include <spawn.h>
#include <setjmp.h>
#include <sys/stat.h>
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

//a growable text buffer, for text with no bound worth trusting - a call's argument list, a closure's or a task's
//environment type. Fixed buffers here used to truncate silently: a long enough argument list lost its tail.
struct cgBuf { char* p; size_t len, cap; };

__attribute__((format(printf, 2, 3))) static void cgBufAdd(struct cgBuf* b, const char* fmt, ...) {
    va_list ap;
    va_start(ap, fmt);
    int need = vsnprintf(NULL, 0, fmt, ap);
    va_end(ap);
    if (need < 0) ErrorBugFound();
    if (b->len + (size_t)need + 1 > b->cap) {
        b->cap = (b->len + (size_t)need + 1) * 2 + 64;
        b->p = ReallocOrCrash(b->p, b->cap);
    }
    va_start(ap, fmt);
    vsnprintf(b->p + b->len, b->cap - b->len, fmt, ap);
    va_end(ap);
    b->len += (size_t)need;
}

static char* cgBufStr(struct cgBuf* b) {
    if (!b->p) cgBufAdd(b, "%s", "");
    return b->p;
}

//one argument of a call as it is passed: its LLVM type and value, both owned
struct cgArg { char* ty; char* val; };

static char* cgStrDup(const char* s) {
    char* r = MallocOrCrash(strlen(s) + 1);
    strcpy(r, s);
    return r;
}

static void cgArgAdd(struct list* args, const char* ty, const char* val) {
    struct cgArg a = { cgStrDup(ty), cgStrDup(val) };
    ListAdd(args, &a);
}

//"ty val, ty val, ..." - an argument list as a call instruction writes it
static char* cgArgsText(struct list* args) {
    struct cgBuf b = {0};
    for (int i = 0; i < args->len; i++) {
        struct cgArg* a = ListGetIdx(args, i);
        cgBufAdd(&b, "%s%s %s", i ? ", " : "", a->ty, a->val);
    }
    return cgBufStr(&b);
}

struct cgLoop {
    char breakLbl[32];
    char contLbl[32];
    int slotsAtEntry;
    int depthAtEntry; //S19: the depth of the block holding the loop - a jump leaves every block deeper than it
    bool breakOuter;  //S9f: a run's counted loop - a "break" in it leaves the loop around it too
};

//S19: one piece of deferred code, registered when emission passes its "defer": the depth of the block it belongs
//to, and the names it sees. It is emitted afresh on every path out of that block, as a block nested in it.
struct cgDefer { struct statement* s; struct cgScope* scope; int depth; };

struct cgDbgLoc { int sp; int line; int id; int file; };
//B3d: the module this compilation was asked for (-b/-t's root, or -c's one module) - the only object that
//defines the program's generic instantiations
static struct semaModule* cgCompilationRoot;
void CodegenSetRoot(struct semaModule* root) { cgCompilationRoot = root; }
//B12: the target every module is generated for - its triple, its architecture, and the attributes every function carries
static const char* cgTriple = "x86_64-pc-linux-gnu";
static const char* cgArch = "x86_64";
static const char* cgTargetAttrs = "";
void CodegenSetTarget(const char* triple, const char* arch, const char* attrs) {
    cgTriple = triple;
    cgArch = arch;
    cgTargetAttrs = attrs;
}
struct cgDbgFile { struct str name; int id; int sp; }; //sp set on an entry recording a subprogram's own file

struct cgStaticLit { struct operand* op; char* name; };
struct cgCtx {
    struct list fnValues; //D16: struct var* - named functions used as values, each needing a static closure
    //B2e: -d's DWARF metadata. Collected into dbgOut and appended to the module at the end; every id
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
    int dbgBasic[32];     //by baseType, 0 until first used
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
    //S19: the deferred code registered in the blocks currently open, innermost last (struct cgDefer)
    struct list defers;
    int dbgStmtLine, dbgStmtFile; //B2e: the statement being emitted, to locate what follows deferred code again
    //S18b/P1d: the runtime unwind chain's nodes - one %olang.unwind per block depth plus one for the
    //body's own scope, all alloca'd in the entry block beside the scope headers they describe. Their
    //`prev` and `scope` fields never change within a frame, so they are filled in once there and a block
    //entry costs two stores: its join head, and the new chain top.
    struct list unwindPool;
    char* ownUnwindNode;
    bool emitUnwind;
    bool floatText; //E11a: a float is rendered - the object carries @__olang_fmt_float (emitFloatTextRuntime)
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
    //a function returning an aggregate returns it through one slot and one exit block, written by every return
    //site: so once the function is inlined, its result's fields reach the caller as separate values, which LLVM
    //can reason about - a merged aggregate value it cannot see into, and a loop testing a Bool from one (an
    //iterator's "Next") was then never vectorized. NULL where a body returns no aggregate.
    char* retSlot;
    char retSlotTy[256];
    bool retSlotUsed;
    //T7b: the declaration of the local array that is this function's result and nothing else, built in the result
    //scope from the start (cgResultLocal) - NULL when there is none
    struct statement* resultLocal;
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
    struct list staticLits; //T25d: struct cgStaticLit - the constant each static literal site in this object is
    struct list emittedSyms; //list of char*: shared helpers (equality, rendering, call adapters) already written into this
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
//B3b: a module's identity as a symbol prefix, injectively - a letter or digit as itself, '/' as '_', and every other
//byte as '$' and two hexadecimal digits - so "geom/rect" is geom_rect while "geom_rect" is geom$5Frect and "a.b" is
//a$2Eb. Every prefix is therefore one identity's only (identities are paths, so the common ones read as before). A
//leading digit is escaped too: every symbol and type name starts with the prefix, and an LLVM name may not begin with
//a digit ("@2go_helper" is invalid IR - "2go.olang" could not be built), so "2go" is $32go.
void mangleModPrefix(struct semaModule* mod, char* buf, size_t n) {
    struct str f = mod->identity;
    size_t w = 0;
    for (int i = 0; i < f.len && w + 1 < n; i++) {
        unsigned char c = (unsigned char)f.ptr[i];
        bool digit = c >= '0' && c <= '9';
        if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (digit && w > 0)) buf[w++] = (char)c;
        else if (c == '/') buf[w++] = '_';
        else {
            if (w + 4 > n) break;
            w += (size_t)snprintf(buf + w, n - w, "$%02X", c);
        }
    }
    buf[w] = '\0';
}

//B3b: two modules sharing an identity would mangle to the same prefix and so define the same symbols - which only
//modules named by a file name alone can (a root outside the working directory, an import by absolute path). Checked
//once per compilation, before anything is emitted, rather than left to surface as a duplicate symbol at link time -
//which is where it would otherwise appear, naming mangled symbols rather than files.
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
            if (!strcmp(pa, pb)) ErrFile(b->fileName, ERR_MODULE_IDENTITY_CLASH, a->fileName);
        }
    }
}

//G16a: an instantiation's name has no length limit - it is its identity - but a symbol need not spell all of it. A name
//longer than this is written as its beginning and a 128-bit hash of the whole, so every symbol fits the buffers it is
//written into, two different names still never share one, and every object derives the same symbol from the same name
#define CG_SYM_PART_MAX 120
static struct str cgSymPart(struct str name) {
    if (name.len <= CG_SYM_PART_MAX) return name;
    unsigned long long h1 = 1469598103934665603ULL, h2 = 7809847782465536322ULL;
    for (int i = 0; i < name.len; i++) {
        h1 = (h1 ^ (unsigned char)name.ptr[i]) * 1099511628211ULL;
        h2 = (h2 ^ (unsigned char)name.ptr[i]) * 1099511628211ULL + (unsigned long long)i;
    }
    char* out = MallocOrCrash(CG_SYM_PART_MAX + 1);
    int keep = CG_SYM_PART_MAX - 35;
    snprintf(out, CG_SYM_PART_MAX + 1, "%.*s.h%016llx%016llx", keep, name.ptr, h1, h2);
    return StrFromCStr(out);
}

//a global's or function's symbol: its module's prefix, '_', and its name with each '_' written "$5F" - so the last '_'
//is always the one between them, and module "a" naming "b_c" (a_b$5Fc) never meets module "a/b" naming "c" (a_b_c).
//The escaped name is shortened afterwards (G16a), so the shortening can never cut an escape in two
void mangleGlobal(struct semaModule* mod, struct str name, char* buf, size_t n) {
    char prefix[256];
    mangleModPrefix(mod, prefix, sizeof(prefix));
    char* esc = MallocOrCrash((size_t)name.len * 3 + 1);
    size_t w = 0;
    for (int i = 0; i < name.len; i++) {
        if (name.ptr[i] != '_') { esc[w++] = name.ptr[i]; continue; }
        memcpy(esc + w, "$5F", 3);
        w += 3;
    }
    struct str part = cgSymPart(Str(esc, (int)w));
    snprintf(buf, n, "@%s_%.*s", prefix, part.len, part.ptr);
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
    if (!(recv->owner && recv->name.len)) {
        struct str e = typeShortName(recv->bType == BASETYPE_ARRAY ? *recv->arrElem : *recv);
        char* shape = MallocOrCrash((size_t)e.len + 8);
        snprintf(shape, (size_t)e.len + 8, "%s%.*s", recv->bType == BASETYPE_ARRAY ? "arr_" : "", e.len, e.ptr);
        rn = StrFromCStr(shape);
    }
    rn = cgSymPart(rn);
    struct str fn = cgSymPart(f->name);
    snprintf(buf, n, "@%s.%.*s.%.*s", prefix, rn.len, rn.ptr, fn.len, fn.ptr);
}

void mangleTypeName(struct semaModule* mod, struct str name, char* buf, size_t n) {
    char prefix[256];
    mangleModPrefix(mod, prefix, sizeof(prefix));
    name = cgSymPart(name);
    snprintf(buf, n, "%s.%.*s", prefix, name.len, name.ptr);
}

static void llvmTypeB(struct type t, struct cgBuf* b);

//the pointee type to use when GEP-ing off a pointer to this struct, regardless of structMAlloc - both a
//malloc-indirect struct pointer and a plain by-ref struct pointer address memory laid out this way
static void structAggSpellingB(struct type t, struct cgBuf* b) {
    if (t.owner && t.name.len > 0) {
        char nameBuf[200];
        mangleTypeName(t.owner, t.name, nameBuf, sizeof(nameBuf));
        cgBufAdd(b, "%%%s", nameBuf);
        return;
    }
    //anonymous struct type expression: no top-level definition exists, so spell it out inline
    cgBufAdd(b, "{ ");
    for (int i = 0; i < t.vars.len; i++) {
        struct var* m = ListGetIdx(&t.vars, i);
        if (i) cgBufAdd(b, ", ");
        llvmTypeB(m->type, b);
    }
    cgBufAdd(b, " }");
}

//a spelling into a caller's fixed buffer - which must hold it: a tuple spelled inline can be long, and cut short it
//would be a different type, so running out of room is reported rather than truncated
static void cgSpellInto(struct cgBuf* b, char* buf, size_t n) {
    char* text = cgBufStr(b);
    if (strlen(text) >= n) {
        fprintf(stderr, "olang: internal limit: an LLVM type spelling of %zu characters does not fit %zu\n", strlen(text), n);
        ErrorBugFound();
    }
    snprintf(buf, n, "%s", text);
    free(b->p);
}

void structAggSpelling(struct type t, char* buf, size_t n) {
    struct cgBuf b = {0};
    structAggSpellingB(t, &b);
    cgSpellInto(&b, buf, n);
}

//the same, in storage of its own that fits whatever the spelling is
static char* structAggSpelled(struct type t) {
    struct cgBuf b = {0};
    structAggSpellingB(t, &b);
    return cgBufStr(&b);
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
static void llvmTypeB(struct type t, struct cgBuf* b) {
    switch (t.bType) {
        //a type variable never reaches codegen: monomorphization (G16) substitutes every one away before
        //a copy is emitted, so being asked to lower one means an instantiation was missed - a bug here
        case BASETYPE_TYPEVAR: ErrorBugFound(); return;
        case BASETYPE_CONST: ErrorBugFound(); return; //G20: a constant argument is a type's, never a value's
        //T2a: same reasoning - "null" is retagged to the type it adapts to before anything lowers it, so
        //reaching here means one escaped an assignability context it should never have left
        case BASETYPE_NULL: ErrorBugFound(); return;
        case BASETYPE_VOID: cgBufAdd(b, "void"); return;
        case BASETYPE_BOOL: cgBufAdd(b, "i1"); return;
        case BASETYPE_BYTE: case BASETYPE_INT32: case BASETYPE_INT64: case BASETYPE_FLOAT32: case BASETYPE_FLOAT64:
        case BASETYPE_I8: case BASETYPE_I16: case BASETYPE_U16: case BASETYPE_U32: case BASETYPE_U64:
        case BASETYPE_F16: case BASETYPE_BF16:
            cgBufAdd(b, "%s", PrimInfo(t.bType)->llvm); //T4
            return;
        //T17: a payload-free choice is the bare i32 ordinal it always was; one carrying a payload is a
        //tag plus a buffer big enough for the largest case, since exactly one case is live at a time
        case BASETYPE_CHOICE:
            if (t.structMAlloc) cgBufAdd(b, "ptr");
            else if (ChoiceHasPayload(t)) cgBufAdd(b, "{ i64, [%lld x i64] }", ChoicePayloadSize(t) / 8);
            else cgBufAdd(b, "i32");
            return;
        case BASETYPE_INTERFACE: ErrorBugFound(); return; //T30: a trait is a constraint, never a value
        case BASETYPE_ERROR: cgBufAdd(b, "i32"); return;
        //T21/D16: a function value is the pair (code, closure environment) - the code in a register, so a call through
        //a value LLVM can see the origin of is direct (and inlinable) once the callee is inlined; see cgFnPair
        case BASETYPE_FUNC: cgBufAdd(b, "{ ptr, ptr }"); return;
        //no real arena/runtime backing exists yet (see the report) - opaque pointer for now, same as any
        //other reference-shaped value; codegen never actually reads through it yet
        case BASETYPE_SCOPE: cgBufAdd(b, "ptr"); return;
        case BASETYPE_STRUCT:
            if (t.structMAlloc) cgBufAdd(b, "ptr");
            else structAggSpellingB(t, b);
            return;
        case BASETYPE_ARRAY:
            if (t.arrMalloc) { cgBufAdd(b, "{ i64, ptr }"); return; }
            if (t.structMAlloc) { cgBufAdd(b, "ptr"); return; }
            cgBufAdd(b, "[%lld x ", t.arrLen ? t.arrLen->intLiteralVal : 0);
            llvmTypeB(*t.arrElem, b);
            cgBufAdd(b, "]");
            return;
    }
}

void llvmType(struct type t, char* buf, size_t n) {
    struct cgBuf b = {0};
    llvmTypeB(t, &b);
    cgSpellInto(&b, buf, n);
}

//true for the categories whose cgValue() "value" is a ptr to storage rather than a loaded scalar/aggregate
bool typeIsByRef(struct type t) {
    if (t.bType == BASETYPE_STRUCT && !t.structMAlloc) return true;
    if (t.bType == BASETYPE_ARRAY && !t.arrMalloc && !t.structMAlloc) return true;
    return false;
}

//a value too big to pass or return as an LLVM first-class aggregate: it goes through memory, as a C compiler passes
//a large struct. Moved as one value, a struct holding an inline Array<F32>(16384) took LLVM minutes per call and per
//copy, split into an element at a time. Smaller aggregates are unchanged.
#define CG_BIG_AGGREGATE 128
static bool cgViaMemory(struct type t) { return typeIsByRef(t) && TypeGetSize(t) > CG_BIG_AGGREGATE; }

//a function whose result goes through memory: its caller passes "ptr %out" first, before everything else, and it
//returns nothing (or only its error code)
static bool cgRetViaMemory(struct type f) { return f.hasRetType && f.retType && cgViaMemory(*f.retType); }

//a parameter's LLVM type as it is passed: a big aggregate is a pointer to the callee's own copy (cgViaMemory)
static void cgParamTy(struct type t, char* buf, size_t n) {
    if (cgViaMemory(t)) snprintf(buf, n, "ptr");
    else llvmType(t, buf, n);
}

/* the actual LLVM return type of a function, accounting for its declared error set (see the report for
 * the design). A fallible function (errors.len > 0) wraps its success type in { i32 code, T payload }
 * (code 0 == success, payload only meaningful then), or is a bare i32 code when it has no success type
 * at all. An infallible function is unchanged: hasRetType ? T : void. */
void llvmFuncRetType(struct type funcType, char* buf, size_t n) {
    if (cgRetViaMemory(funcType)) { snprintf(buf, n, "%s", funcType.errors.len ? "i32" : "void"); return; }
    if (funcType.errors.len == 0) {
        llvmType(funcType.hasRetType ? *funcType.retType : TypeVanilla(BASETYPE_VOID), buf, n);
        return;
    }
    if (!funcType.hasRetType) { snprintf(buf, n, "i32"); return; }
    struct cgBuf b = {0};
    cgBufAdd(&b, "{ i32, ");
    llvmTypeB(*funcType.retType, &b);
    cgBufAdd(&b, " }");
    cgSpellInto(&b, buf, n);
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
//a fresh block for whatever is emitted after a terminator - statements written after a return, or what follows
//deferred code that ended the test or the process. Nothing branches to it, so it is dead and LLVM drops it; without
//it those instructions would follow the terminator in the same block, which is invalid IR.
static void cgDeadLabel(struct cgCtx* ctx) {
    char lbl[32];
    snprintf(lbl, sizeof(lbl), "dead.%d", ctx->lblCtr++);
    cgLabel(ctx, lbl);
}

void cgBlock(struct cgCtx* ctx, struct list* block);

//S19: one piece of deferred code, emitted where its block is being left - as a block nested in its own, with that
//block's names, depth and open scopes, whatever deeper ones the path out has already closed. Everything a path
//out may be in the middle of is put aside meanwhile: the blocks deeper than its own (their entries in blockSlots
//are reused by its nested blocks), the deferred code still to run (it unwinds only within itself, S19b), and a
//promotion, try default or failed check under way.
static void cgEmitDeferred(struct cgCtx* ctx, struct cgDefer d) {
    struct cgScope* scope = ctx->scope;
    int depth = ctx->blockDepth;
    int keep = d.depth - 1;
    if (keep < 0) keep = 0;
    if (keep > ctx->blockSlots.len) keep = ctx->blockSlots.len;
    int open = ctx->blockSlots.len;
    char** kept = MallocOrCrash(sizeof(char*) * 2 * (open - keep + 1));
    for (int i = keep; i < open; i++) {
        kept[2 * (i - keep)] = *(char**)ListGetIdx(&ctx->blockSlots, i);
        kept[2 * (i - keep) + 1] = *(char**)ListGetIdx(&ctx->blockJoins, i);
    }
    struct list defers = ctx->defers;
    char* override = ctx->targetScopeOverride;
    struct type* staticErrType = ctx->staticErrType;
    int staticErrWord = ctx->staticErrWord;
    struct operand* tdOp = ctx->tdOp;
    char* tdSlot = ctx->tdSlot;
    char tdJoin[32];
    memcpy(tdJoin, ctx->tdJoin, sizeof(tdJoin));
    ctx->scope = d.scope;
    ctx->blockDepth = d.depth;
    ctx->blockSlots.len = keep;
    ctx->blockJoins.len = keep;
    ctx->defers = ListInit(sizeof(struct cgDefer));
    ctx->targetScopeOverride = NULL;
    ctx->tdOp = NULL;
    cgBlock(ctx, &d.s->block);
    if (ctx->terminated) cgDeadLabel(ctx); //it ended the test or the process (S19c)
    ListDestroy(ctx->defers);
    ctx->defers = defers;
    ctx->targetScopeOverride = override;
    ctx->staticErrType = staticErrType;
    ctx->staticErrWord = staticErrWord;
    ctx->tdOp = tdOp;
    ctx->tdSlot = tdSlot;
    memcpy(ctx->tdJoin, tdJoin, sizeof(tdJoin));
    ctx->scope = scope;
    ctx->blockDepth = depth;
    ctx->blockSlots.len = keep;
    ctx->blockJoins.len = keep;
    for (int i = 0; i < open - keep; i++) {
        ListAdd(&ctx->blockSlots, &kept[2 * i]);
        ListAdd(&ctx->blockJoins, &kept[2 * i + 1]);
    }
    free(kept);
    //B2e: what follows belongs to the statement being emitted, not to the deferred code's last line
    if (ctx->debug && ctx->dbgStmtLine > 0) fprintf(ctx->fnOut, "; dbgloc %d %d\n", ctx->dbgStmtLine, ctx->dbgStmtFile);
}

//S19: the deferred code registered in the block at `depth` (from index `from` of the stack on), last registered
//first. It sits on top of the stack once every deeper block's has been passed, so the scan skips those and stops
//at the first shallower one.
static void cgRunDefersAt(struct cgCtx* ctx, int depth, int from) {
    for (int i = ctx->defers.len - 1; i >= from; i--) {
        struct cgDefer d = *(struct cgDefer*)ListGetIdx(&ctx->defers, i);
        if (d.depth > depth) continue;
        if (d.depth < depth) break;
        cgEmitDeferred(ctx, d);
    }
}

//O2a/S11a/S19: leaves every open block deeper than `toDepth`, innermost first, each in the order its own end
//would: its deferred code run (the block's last statements), its tasks waited for (P1b - the block's end), its
//destructors and arena released. The body's own level (depth 1) has no entry in blockSlots - its scope is the
//caller's to close - but its deferred code runs here.
static void cgLeaveBlocks(struct cgCtx* ctx, int toDepth) {
    int top = ctx->blockDepth;
    if (ctx->blockSlots.len + 1 > top) top = ctx->blockSlots.len + 1;
    for (int d = top; d > toDepth; d--) {
        int i = d - 2;
        bool hasSlot = i >= 0 && i < ctx->blockSlots.len;
        cgRunDefersAt(ctx, d, 0);
        char* jh = hasSlot ? *(char**)ListGetIdx(&ctx->blockJoins, i) : NULL;
        if (jh) fprintf(ctx->fnOut, "  call void @__olang_join_tasks(ptr %s)\n", jh);
        if (hasSlot) fprintf(ctx->fnOut, "  call void @__olang_scope_close(ptr %s)\n", *(char**)ListGetIdx(&ctx->blockSlots, i));
    }
}

void cgCloseOwnScope(struct cgCtx* ctx) {
    //nothing to emit after a terminator: a body ending in "done"/"fail" already left via __olang_end, so
    //these closes would land after an "unreachable" in the same basic block - invalid IR, and the block
    //that followed would have no terminator before its label. (Under a test the scopes are still closed:
    //the longjmp lands on the harness's unwind block, which closes them there.)
    if (ctx->terminated) return;
    //O2a: innermost first, then the body's own - a return leaves every block it is nested in, and each
    //one's destructors have to run before the arena under it is reclaimed
    cgLeaveBlocks(ctx, 0);
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
                   int dbgSp; int dbgLine; char* savedRetSlot; bool savedRetUsed; char savedRetTy[256]; };

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
    if (t.bType == BASETYPE_FUNC) return 0; //a (code, environment) pair, an aggregate - not described yet
    if (t.structMAlloc || (t.bType == BASETYPE_ARRAY && t.arrMalloc)) return ctx->dbgPtrType;
    const char* nm; int bits; const char* enc;
    const struct primInfo* p = PrimInfo(t.bType);
    if (t.bType == BASETYPE_BOOL) { nm = "Bool"; bits = 8; enc = "DW_ATE_boolean"; }
    else if (p) {
        nm = p->name;
        bits = p->bits;
        enc = p->kind == 'f' ? "DW_ATE_float" : p->kind == 'u' ? "DW_ATE_unsigned" : "DW_ATE_signed";
    } else return 0;
    int slot = (int)t.bType % 32;
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
    b->savedRetSlot = ctx->retSlot; //a helper reached mid-body returns on its own terms
    b->savedRetUsed = ctx->retSlotUsed;
    memcpy(b->savedRetTy, ctx->retSlotTy, sizeof(b->savedRetTy));
    ctx->retSlot = NULL;
    ctx->retSlotUsed = false;
}

//a return of val, of LLVM type ty, from the body being emitted - through the function's return slot when it has one
static void cgEmitRet(struct cgCtx* ctx, const char* ty, const char* val) {
    if (ctx->retSlot && strcmp(ty, ctx->retSlotTy) == 0) {
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n  br label %%ret.common\n", ty, val, ctx->retSlot);
        ctx->retSlotUsed = true;
        return;
    }
    fprintf(ctx->fnOut, "  ret %s %s\n", ty, val);
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
    ctx->retSlot = b->savedRetSlot;
    ctx->retSlotUsed = b->savedRetUsed;
    memcpy(ctx->retSlotTy, b->savedRetTy, sizeof(ctx->retSlotTy));
}

struct cgLocal* cgFindLocal(struct cgCtx* ctx, struct str name);

//S18b/P1d: the node one level below block-slot index `i` in this frame's unwind chain.
static char* cgUnwindBelow(struct cgCtx* ctx, int i) {
    if (i <= 0) return ctx->ownUnwindNode;
    return *(char**)ListGetIdx(&ctx->unwindPool, i -1);
}

//allocates this frame's own unwind node and fills in the half that never varies within a frame. Each block depth's
//node is made beside its scope header as that depth is first opened (cgEnsureBlockSlot). Call after ownScopeSlot is
//set up.
static void cgSetupUnwind(struct cgCtx* ctx) {
    ctx->unwindPool.len = 0;
    ctx->ownUnwindNode = NULL;
    //every push and pop below is already guarded on unwindPool being non-empty or ownUnwindNode being
    //set, so bailing here is all it takes to emit none of it
    if (!ctx->emitUnwind) return;
    char* own = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca %%olang.unwind\n", own);
    ctx->ownUnwindNode = own;
    char* sslot = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %%olang.unwind, ptr %s, i32 0, i32 1\n", sslot, own);
    fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", ctx->ownScopeSlot, sslot);
    char* jslot = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %%olang.unwind, ptr %s, i32 0, i32 2\n", jslot, own);
    fprintf(ctx->fnOut, "  store ptr null, ptr %s\n", jslot);
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



//returns error code `code` (an i32 value or constant) from the function being emitted, as its error union says: a bare
//code with no success type or a result through memory, else { code, undef }
static void cgRetErrorCode(struct cgCtx* ctx, const char* code) {
    if (!ctx->curFunc->type.hasRetType || cgRetViaMemory(ctx->curFunc->type)) {
        fprintf(ctx->fnOut, "  ret i32 %s\n", code);
        return;
    }
    char wrapTy[256];
    llvmFuncRetType(ctx->curFunc->type, wrapTy, sizeof(wrapTy));
    char* v = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue %s undef, i32 %s, 0\n", v, wrapTy, code);
    cgEmitRet(ctx, wrapTy, v);
}

void cgPropagateError(struct cgCtx* ctx, struct type calleeType, char* code) {
    //R17: through a bare "?" function, any error leaves as that function's own default error
    if (cgFuncIsBareFallible(ctx->curFunc->type)) {
        cgCloseOwnScope(ctx);
        cgRetErrorCode(ctx, "65536"); //(1 << 16) | 0: the default error, its one word
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
    cgRetErrorCode(ctx, newCode);
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
    bool isPtr = (t.bType == BASETYPE_SCOPE) ||
        ((t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_CHOICE) && t.structMAlloc) ||
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
    scopeParam = SemanticRuntimeScope(scopeParam, &depth); //O23a: a derived scope passes the one it was read through
    if (!scopeParam) return cgScopeSlotAt(ctx, depth);
    char* addr = cgLookupVarAddr(ctx, scopeParam);
    char* loaded = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", loaded, addr);
    return loaded;
}

//O1b: the program's scope, as this thread reaches it (@__olang_prog_scope): code in a function may run on a task, which
//allocates into a private stand-in for it (P2), never into the shared scope itself
char* cgProgramScope(struct cgCtx* ctx) {
    char* t = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load ptr, ptr @__olang_prog_scope\n", t);
    return t;
}

static bool cgIsGlobalRead(struct operand* op) {
    return op->opType == OPERATION_READ_VAR && op->readVar && op->readVar->owner && !op->readVar->isFuncDecl;
}

static bool typeIsRefShaped(struct type t);
static bool cgIsReference(struct type t);
char* cgBoundScopeArg(struct cgCtx* ctx, struct operand* callOp, struct var* sv);

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
    if (cgIsGlobalRead(base)) return cgProgramScope(ctx); //O1b: a global's referent, or its own storage
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

//whether every error of funcType is named, as a whole type, by a clause in a or b - so an error reaching past both
//cannot happen (a comprehension's Next, its Exhausted taken by its own clause and the rest by its try's)
static bool cgClausesCoverAll(struct list* a, struct list* b, struct type* funcType) {
    for (int i = 0; i < funcType->errors.len; i++) {
        struct type* e = *(struct type**)ListGetIdx(&funcType->errors, i);
        bool covered = false;
        for (int pass = 0; pass < 2 && !covered; pass++) {
            struct list* cs = pass ? b : a;
            for (int c = 0; c < cs->len && !covered; c++) {
                struct catchClause* cc = ListGetIdx(cs, c);
                covered = cc->catchAll;
                for (int m = 0; m < cc->matches.len && !covered; m++) {
                    struct catchMatch* cm = ListGetIdx(&cc->matches, m);
                    covered = !cm->hasWord && TypeIsSame(cm->errType, *e);
                }
            }
        }
        if (!covered) return false;
    }
    return true;
}
void cgBlock(struct cgCtx* ctx, struct list* block);

//true for a type that "&"/"&name" can mark as a reference - a struct, or a compile-time-length ("T[N]") array;
//a runtime-length ("T[]") array is excluded, same reasoning as typeNeedsMallocPromotion.
//a REFERENCE - a marked struct or array of any length kind - which is what a container has to be for a slot
//inside it to live in its scope. typeIsRefShaped answers which types a marker can MAKE a reference, and leaves
//out a run-time-length array; testing containers with it made "b.a[0] = N(...)" allocate the new node in the
//writing function's own scope while storing it in the caller's array - a use-after-free
static bool cgIsReference(struct type t) {
    return t.structMAlloc && (t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_ARRAY || t.bType == BASETYPE_CHOICE);
}

static bool typeIsRefShaped(struct type t) {
    return (t.bType == BASETYPE_STRUCT) || t.bType == BASETYPE_CHOICE || (t.bType == BASETYPE_ARRAY && !t.arrMalloc);
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

//C9: a destructor - the function a struct type names as its own. Its scope calls it with a pointer to the
//instance (__olang_scope_register_dtor), so its one parameter is that pointer, and the body's field reads go
//through it to the very instance. It used to take the instance by value, so every field it read was the bits of
//the pointer the runtime passed - garbage nothing caught, since no destructor in the corpus read a field.
static bool cgIsDtor(struct var* func) {
    if (func->type.vars.len != 1) return false;
    struct var* p = ListGetIdx(&func->type.vars, 0);
    return p->type.bType == BASETYPE_STRUCT && p->type.destructFunc == func;
}

//O18a/E12c: the one answer to "where is this temporary built" - storage made by an expression itself, with nothing to
//borrow: a constructor's instance, an enum value with a payload, text, "Array<T>(n)", a comprehension, a capturing
//lambda's closure. In order: where the checker landed it (the program's scope, for a global or what is stored into
//one), a scope its own type names, the target being built into around it (a promotion, a constructor's instance, a
//task's join block, a "catch default"), and otherwise the block it stands in - the scope the checker assumed for it
char* cgWhereBuilt(struct cgCtx* ctx, struct operand* op) {
    struct var* to;
    int depth;
    if (SemanticLandedInProgram(op)) return cgProgramScope(ctx);
    if (SemanticCtorLanding(op, &to, &depth)) return cgResolveScope(ctx, to, depth);
    if (op->type.scopeParam && op->opType != OPERATION_FUNCCALL) {
        int d = op->type.scopeDepth;
        struct var* sv = SemanticRuntimeScope(op->type.scopeParam, &d);
        if (!sv || cgFindLocalKind(ctx, sv->name, true)) return cgResolveScope(ctx, op->type.scopeParam, op->type.scopeDepth);
    }
    if (ctx->targetScopeOverride) return ctx->targetScopeOverride;
    return cgScopeSlotAt(ctx, op->type.scopeDepth > 0 && op->opType != OPERATION_FUNCCALL ? op->type.scopeDepth
                                                                                         : ctx->blockDepth);
}

//the scope a constructor call's instance lands in (C2d)
static char* cgCtorHereArg(struct cgCtx* ctx, struct operand* op) { return cgWhereBuilt(ctx, op); }

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
                    || (paramT.bType == BASETYPE_FUNC && paramT.structMAlloc); //D16: so does a function value's
    if (!paramT.scopeParam || !refLike) return NULL;
    return cgBoundScopeArg(ctx, callOp, paramT.scopeParam);
}

//the scope a call bound its scope variable sv to, as the hidden argument passes it. O2d: a binding to one of our
//blocks names WHICH block - the one the argument lives in, or where the result landed. O1b: one bound to a global's
//referent is the program's scope - building into the caller's own instead left a borrowed result built from a global
//("H = f(G)", f returning "String&t") in a scope that closed at the caller's return
char* cgBoundScopeArg(struct cgCtx* ctx, struct operand* callOp, struct var* sv) {
    if (SemanticBindingIsUnnamed(callOp, sv)) return cgProgramScope(ctx);
    return cgResolveScope(ctx, SemanticBoundScope(callOp, sv), SemanticBoundScopeDepth(callOp, sv, ctx->blockDepth));
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
    if (dstT.bType == BASETYPE_STRUCT || dstT.bType == BASETYPE_CHOICE) return true;
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
//resulting { i64, ptr } slice value - one memcpy of the elements, or a loop where each row needs storage of its own,
//so the code is the same size whatever the length (it was unrolled per element: 100,000 elements made 18MB of IR).
//Also registers each destructor-bearing element found in the fresh buffer (see
//cgRegisterDtorIfNeeded) - srcT is always a COMPILE-TIME-LENGTH array here (a runtime-length one is never itself promoted
//again - see typeNeedsRuntimeLengthPromotion), so its own element loop is the exact same compile-time-
//unrolled shape cgRegisterDtorIfNeeded already walks generically, regardless of whether srcAddr came from
//a fresh literal or an existing variable; no new mechanism needed, just one more call site.
char* cgStringLiteralGlobal(struct cgCtx* ctx, struct operand* op);
char* cgFloatConst(double v, enum baseType b);
//T25b: a literal known while compiling that reaches a READ-ONLY array reference is never written through it, so it
//is the constant itself - static data, no arena allocation, nothing copied. NULL where that does not apply: a
//writable target, or a literal with anything not constant in it
char* cgStringLiteralGlobalAt(struct cgCtx* ctx, struct operand* op, bool addrSignificant);
char* cgStaticLiteral(struct cgCtx* ctx, struct operand* op, struct type dstT) {
    if (!CtIsStaticLiteral(op, dstT)) return NULL;
    if (op->opType == OPERATION_NOMINAL_CONVERT && op->args.len) op = *(struct operand**)ListGetIdx(&op->args, 0);
    long long n = op->type.arrLen->intLiteralVal;
    //E10/T25d: a site is one instance however often it is reached - and however often it is written out (deferred
    //code is emitted once per way out of its block) - and two sites are two: the constant is not unnamed_addr, so
    //nothing merges two sites holding the same text
    for (int i = 0; i < ctx->staticLits.len; i++) {
        struct cgStaticLit* l = ListGetIdx(&ctx->staticLits, i);
        if (l->op == op) {
            char* r = MallocOrCrash(96);
            snprintf(r, 96, "{ i64 %lld, ptr %s }", n, l->name);
            return r;
        }
    }
    char* data;
    if (op->tok.type == TOK_STR_LIT) {
        data = cgStringLiteralGlobalAt(ctx, op, true);
    } else {
        struct type et = *op->type.arrElem;
        bool scalar = (TypeIsNumeric(et) && !et.owner) || et.bType == BASETYPE_BOOL;
        if (!scalar || op->args.len != n) return NULL;
        for (int i = 0; i < op->args.len; i++) { //every element constant, or the literal is built as usual
            struct operand* e = *(struct operand**)ListGetIdx(&op->args, i);
            if (!e->isLiteral || e->opType != OPERATION_NONE) return NULL;
        }
        char ety[64];
        llvmType(et, ety, sizeof(ety));
        data = MallocOrCrash(32);
        snprintf(data, 32, "@.arr.%d", ctx->strCtr++);
        fprintf(ctx->out, "%s = private constant [%lld x %s] [", data, n, ety);
        for (int i = 0; i < op->args.len; i++) {
            struct operand* e = *(struct operand**)ListGetIdx(&op->args, i);
            char v[64];
            if (TypeIsFloat(et)) {
                double d = TypeIsFloat(e->type) ? e->floatLiteralVal : (double)e->intLiteralVal;
                snprintf(v, sizeof(v), "%s", cgFloatConst(d, et.bType));
            } else if (et.bType == BASETYPE_BOOL) snprintf(v, sizeof(v), "%s", e->intLiteralVal ? "true" : "false");
            else snprintf(v, sizeof(v), "%lld", e->intLiteralVal);
            fprintf(ctx->out, "%s%s %s", i ? ", " : "", ety, v);
        }
        fputs("]\n", ctx->out);
    }
    struct cgStaticLit sl = { op, data };
    ListAdd(&ctx->staticLits, &sl);
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
    if (!promoteElems && dstElemSize == elemSize) { //the same elements laid out alike: one copy, whatever the length
        if (count > 0)
            fprintf(ctx->fnOut, "  call void @llvm.memcpy.p0.p0.i64(ptr %s, ptr %s, i64 %lld, i1 false)\n", bytes, srcAddr,
                    elemSize * count);
    } else { //each row its own allocation: a loop, so the code is one row's whatever the length
        int id = ctx->lblCtr++;
        char condLbl[32], bodyLbl[32], endLbl[32];
        snprintf(condLbl, sizeof(condLbl), "promote.cond.%d", id);
        snprintf(bodyLbl, sizeof(bodyLbl), "promote.body.%d", id);
        snprintf(endLbl, sizeof(endLbl), "promote.end.%d", id);
        char* idxSlot = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca i64\n", idxSlot);
        fprintf(ctx->fnOut, "  store i64 0, ptr %s\n", idxSlot);
        cgBr(ctx, condLbl);
        cgLabel(ctx, condLbl);
        char* i = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load i64, ptr %s\n", i, idxSlot);
        char* more = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp slt i64 %s, %lld\n", more, i, count);
        fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", more, bodyLbl, endLbl);
        ctx->terminated = true;
        cgLabel(ctx, bodyLbl);
        char* srcElemAddr = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 0, i64 %s\n", srcElemAddr, srcStorTy, srcAddr, i);
        char* dstElemAddr = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 %s\n", dstElemAddr, dstElemTy, bytes, i);
        if (promoteElems) {
            char* row = cgPromoteFixedToRuntimeLength(ctx, *dstT.arrElem, elemT, srcElemAddr, scopeVal);
            fprintf(ctx->fnOut, "  store { i64, ptr } %s, ptr %s\n", row, dstElemAddr);
        } else {
            char* v = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", v, elemTy, srcElemAddr);
            fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", elemTy, v, dstElemAddr);
        }
        char* next = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = add i64 %s, 1\n", next, i);
        fprintf(ctx->fnOut, "  store i64 %s, ptr %s\n", next, idxSlot);
        cgBr(ctx, condLbl);
        cgLabel(ctx, endLbl);
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
    //a function value made from a Call instance (E31) holds its instance in its environment - never a borrow here
    return dstT.structMAlloc && dstT.bType != BASETYPE_FUNC && !srcT.structMAlloc && srcIsLvalue
        && (srcT.bType == BASETYPE_STRUCT || srcT.bType == BASETYPE_ARRAY || srcT.bType == BASETYPE_CHOICE);
}

char* cgAddr(struct cgCtx* ctx, struct operand* op);
char* cgValue(struct cgCtx* ctx, struct operand* op);
//what a borrow takes from op: cgValue's address for a by-ref type or an array's descriptor - and for an enum, held in
//a register as a value, the address of the storage it was read from (T17d)
static char* cgBorrowSource(struct cgCtx* ctx, struct operand* op) {
    return op->type.bType == BASETYPE_CHOICE ? cgAddr(ctx, op) : cgValue(ctx, op);
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

//T7c: storage for a value of type t - a local's, a temporary's. One larger than CG_FRAME_LIMIT (64KB, Go's bound on a
//variable it keeps in a frame) is taken from the arena of the block it is made in, which reclaims it with the block -
//an Array<U8, 64000000> local had overflowed the stack at its first touch. Defined where it is made, which comes before
//every use, as a declaration does; a helper with no arena keeps its frame
#define CG_FRAME_LIMIT 65536
static void cgValueSlotAs(struct cgCtx* ctx, char* slot, struct type t, const char* ty) {
    if (TypeGetSize(t) > CG_FRAME_LIMIT && ctx->ownScopeSlot) {
        fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 %lld)\n", slot, cgScopeSlotAt(ctx, ctx->blockDepth),
                TypeGetSize(t));
        return;
    }
    fprintf(cgAllocaOut(ctx), "  %s = alloca %s, align %lld\n", slot, ty, cgStackAlign(t));
}
static char* cgValueSlot(struct cgCtx* ctx, struct type t, const char* ty) {
    char* slot = cgNewTmp(ctx);
    cgValueSlotAs(ctx, slot, t, ty);
    return slot;
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
//T36: a closure's environment (D16c) is a family of its own - written once where the closure is made, read only by the
//code it is made for, so its loads never alias a program's fields or elements (see cgClosureType)
static const char* cgCaptureTbaa = ", !tbaa !28";

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
        char* loaded = src; //an enum is already the value (T17d); anything else is the address of one
        if (cgViaMemory(srcT)) {
            fprintf(ctx->fnOut, "  call void @llvm.memcpy.p0.p0.i64(ptr %s, ptr %s, i64 %lld, i1 false)\n", heap, src,
                    TypeGetSize(srcT));
        } else {
            if (typeIsByRef(srcT)) {
                loaded = cgNewTmp(ctx);
                fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", loaded, storTy, src);
            }
            fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", storTy, loaded, heap);
        }
        fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", heap, dstAddr);
        cgRegisterDtorIfNeeded(ctx, srcT, scopeVal, heap);
        return;
    }
    if (typeNeedsRuntimeLengthPromotion(dstT, srcT)) {
        char* scopeVal = scopeOverride ? scopeOverride : cgResolveScope(ctx, dstT.scopeParam, dstT.scopeDepth);
        //T7: assigned to a value array holding a value already, a literal of the same length is written into the storage
        //that value has, as any other array is - a borrow taken earlier sees the new elements
        if (dstHoldsLiveValue && !dstT.structMAlloc && !srcT.structMAlloc) {
            char* copied = cgCopyRuntimeLengthArray(ctx, dstT, cgBorrowValue(ctx, dstT, srcT, src), scopeVal, dstAddr);
            fprintf(ctx->fnOut, "  store { i64, ptr } %s, ptr %s\n", copied, dstAddr);
            return;
        }
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
    //T17d: a reference to an enum copied out into a value - read through it
    bool enumCopyOut = dstT.bType == BASETYPE_CHOICE && !dstT.structMAlloc && srcT.structMAlloc;
    if (cgViaMemory(dstT)) { //moved as one value, LLVM would split a big aggregate an element at a time
        fprintf(ctx->fnOut, "  call void @llvm.memcpy.p0.p0.i64(ptr %s, ptr %s, i64 %lld, i1 false)\n", dstAddr, src,
                TypeGetSize(dstT));
    } else if (typeIsByRef(dstT) || enumCopyOut) {
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

//D16c: a lambda capturing only values - a temporary, built where it lands, as text is
static bool cgIsFreshClosure(struct operand* op) {
    return op->opType == OPERATION_READ_VAR && op->readVar && op->readVar->isLambda
           && op->readVar->lambdaCaptures.len && !op->lambdaHomeSet;
}

//storage made by the expression itself, with nothing to borrow - built in the scope of whatever it lands in
//(E12c): rendered or joined text, a capturing lambda's closure, "Array<T>(n)" and a comprehension (E27)
static bool cgIsFreshTemp(struct operand* op);
//a conditional's or a match's value v, landing in their type t, makes storage of its own: a fresh temporary, or a literal
//promoted into t's run-time length (a copy of it, made there)
static bool cgValueIsFresh(struct operand* v, struct type t) {
    return cgIsFreshTemp(v) || typeNeedsRuntimeLengthPromotion(t, v->type);
}
static bool cgIsFreshTemp(struct operand* op) {
    //E28: a conditional either of whose values is one - only that value is built in the target's scope
    if (op->opType == OPERATION_COND && op->args.len == 3) {
        return cgValueIsFresh(*(struct operand**)ListGetIdx(&op->args, 1), op->type)
               || cgValueIsFresh(*(struct operand**)ListGetIdx(&op->args, 2), op->type);
    }
    //S12b: the same, for any of a match's values. A text literal among them was copied into the match's own block and
    //returned from there, read after that block's scope closed ("return match n { case 7 => "seven" ... }")
    if (op->opType == OPERATION_MATCH) {
        struct list vs = SemanticMatchValues(op);
        for (int i = 0; i < vs.len; i++) if (cgValueIsFresh(*(struct operand**)ListGetIdx(&vs, i), op->type)) return true;
        return false;
    }
    //T29a/T29c: a conversion names its argument's storage, so it is fresh exactly when its argument is - text written in
    //place, a literal made a String by being one of a conditional's values ("return "yes" if c else "no""), included
    if (op->opType == OPERATION_NOMINAL_CONVERT && op->args.len == 1)
        return cgValueIsFresh(*(struct operand**)ListGetIdx(&op->args, 0), op->type);
    return op->opType == OPERATION_STR_OF || op->opType == OPERATION_CONCAT || cgIsFreshClosure(op)
           || op->opType == OPERATION_SIZED_ARRAY_ALLOC || op->opType == OPERATION_COMPREHENSION;
}

//T21/D16: a function value's two halves - its code, and the closure environment that code takes as its hidden first
//argument - out of the pair it is held as. The code is a value, never loaded from the environment, so a call through
//a value whose origin LLVM can see (a lambda handed to a helper that is inlined) is a direct call, and inlines
static char* cgFnCode(struct cgCtx* ctx, char* fv, char** envOut) {
    char* code = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = extractvalue { ptr, ptr } %s, 0\n", code, fv);
    *envOut = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = extractvalue { ptr, ptr } %s, 1\n", *envOut, fv);
    return code;
}

//a function value made of its code and its environment: a constant when the environment is (a named function's, or a
//lambda capturing nothing, has none)
static char* cgFnPair(struct cgCtx* ctx, const char* code, const char* env) {
    if (strcmp(env, "null") == 0) {
        char* c = MallocOrCrash(strlen(code) + 32);
        sprintf(c, "{ ptr %s, ptr null }", code);
        return c;
    }
    char* half = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue { ptr, ptr } { ptr %s, ptr undef }, ptr %s, 1\n", half, code, env);
    return half;
}

//T7/E12c: an array the expression makes itself - "Array<T>(n)", a comprehension, a rendering or a join - is storage
//nothing else holds, built where the target being stored into lands it (cgWhereBuilt falls through to the target's
//scope: the checker placed it nowhere else). A reference target, or a value target holding nothing yet, ADOPTS that
//storage - its descriptor is stored - rather than copying it into a second allocation of the same size in the same
//scope. A value array already holding a value is written into instead (T11b), so it is never adopted.
static bool cgAdoptsFresh(struct type dstT, struct operand* op, bool dstHoldsLiveValue) {
    if (dstT.bType != BASETYPE_ARRAY || !dstT.arrMalloc || (dstHoldsLiveValue && !dstT.structMAlloc)) return false;
    if (op->type.bType != BASETYPE_ARRAY || !op->type.arrMalloc || op->type.structMAlloc || op->type.scopeParam
            || op->ctorLanded) return false;
    return op->opType == OPERATION_SIZED_ARRAY_ALLOC || op->opType == OPERATION_COMPREHENSION
           || op->opType == OPERATION_STR_OF || op->opType == OPERATION_CONCAT;
}

//E31: a value whose type declares Call, given where a function value is wanted - the adapter, paired with an
//environment holding the instance and the instance's scope; the adapter takes the environment as any function value's
//code does (then the function type's scope arguments and parameters) and calls the instance's Call with them
static bool cgSymAlreadyEmitted(struct cgCtx* ctx, char* sym);
static char* cgCallAdapterValue(struct cgCtx* ctx, struct operand* op, struct type dstT, char* scopeOverride) {
    struct var* call = SemanticCallOf(op->type);
    char callSym[256];
    mangleFuncSym(call, callSym, sizeof(callSym));
    char adapter[320];
    snprintf(adapter, sizeof(adapter), "%s.callfv", callSym);
    struct var* recv = ListGetIdx(&call->type.vars, 0);
    char recvTy[256];
    llvmType(recv->type, recvTy, sizeof(recvTy));
    bool recvRef = strcmp(recvTy, "ptr") == 0;
    if (!cgSymAlreadyEmitted(ctx, adapter)) {
        char retTy[256];
        llvmFuncRetType(call->type, retTy, sizeof(retTy));
        bool outFirst = cgRetViaMemory(call->type);
        fprintf(ctx->out, "define linkonce_odr %s %s(%sptr %%closure", retTy, adapter, outFirst ? "ptr %out, " : "");
        for (int k = 0; k < dstT.scopeVars.len; k++) fprintf(ctx->out, ", ptr %%sarg%d", k);
        for (int k = 0; k < dstT.vars.len; k++) {
            char pty[256];
            cgParamTy(((struct var*)ListGetIdx(&dstT.vars, k))->type, pty, sizeof(pty));
            fprintf(ctx->out, ", %s %%arg%d", pty, k);
        }
        fputs(") {\nentry:\n", ctx->out);
        fputs("  %inst = load ptr, ptr %closure, !tbaa !28\n"
              "  %sp = getelementptr { ptr, ptr }, ptr %closure, i32 0, i32 1\n  %iscope = load ptr, ptr %sp, !tbaa !28\n", ctx->out);
        struct cgBuf args = {0};
        if (outFirst) cgBufAdd(&args, "ptr %%out");
        //the receiver's own scope comes first among Call's, where it has one (a reference receiver, O4b)
        int callScopes = call->type.scopeVars.len;
        int k0 = 0;
        if (recv->type.scopeParam) { cgBufAdd(&args, "%sptr %%iscope", args.len ? ", " : ""); k0 = 1; }
        for (int k = k0; k < callScopes; k++) cgBufAdd(&args, "%sptr %%sarg%d", args.len ? ", " : "", k - k0);
        if (recvRef) {
            cgBufAdd(&args, "%sptr %%inst", args.len ? ", " : "");
        } else if (cgViaMemory(recv->type)) { //a big receiver by value: Call's own copy
            fprintf(ctx->out, "  %%rv = alloca %s, align %lld\n  call void @llvm.memcpy.p0.p0.i64(ptr %%rv, ptr %%inst, i64 %lld, i1 false)\n",
                    recvTy, cgStackAlign(recv->type), TypeGetSize(recv->type));
            cgBufAdd(&args, "%sptr %%rv", args.len ? ", " : "");
        } else {
            fprintf(ctx->out, "  %%rv = load %s, ptr %%inst\n", recvTy);
            cgBufAdd(&args, "%s%s %%rv", args.len ? ", " : "", recvTy);
        }
        for (int k = 0; k < dstT.vars.len; k++) {
            char pty[256];
            cgParamTy(((struct var*)ListGetIdx(&dstT.vars, k))->type, pty, sizeof(pty));
            cgBufAdd(&args, ", %s %%arg%d", pty, k);
        }
        char* argsText = cgBufStr(&args);
        if (strcmp(retTy, "void") == 0) fprintf(ctx->out, "  call void %s(%s)\n  ret void\n}\n\n", callSym, argsText);
        else fprintf(ctx->out, "  %%r = call %s %s(%s)\n  ret %s %%r\n}\n\n", retTy, callSym, argsText, retTy);
    }
    //where the function value lives, and the instance it calls: the very one when it has storage (a reference, or
    //an lvalue borrowed), else a temporary built there
    char* where = scopeOverride ? scopeOverride : ctx->targetScopeOverride ? ctx->targetScopeOverride
                : cgResolveScope(ctx, dstT.scopeParam, dstT.scopeDepth);
    char* inst;
    char* instScope;
    if (op->type.structMAlloc) {
        inst = cgValue(ctx, op);
        instScope = cgResolveEffectiveScope(ctx, op);
    } else if (OperandIsLvalue(op)) {
        inst = cgAddr(ctx, op);
        instScope = cgResolveEffectiveScope(ctx, op);
    } else {
        char ty[256];
        llvmType(op->type, ty, sizeof(ty));
        inst = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 %lld)\n", inst, where, TypeGetSize(op->type));
        char* v = cgValue(ctx, op);
        cgStoreInto(ctx, op->type, op->type, v, inst, where, false, false, false);
        instScope = where;
    }
    char* obj = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 16)\n", obj, where);
    char* p2 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  store ptr %s, ptr %s%s\n", inst, obj, cgCaptureTbaa);
    fprintf(ctx->fnOut, "  %s = getelementptr { ptr, ptr }, ptr %s, i32 0, i32 1\n  store ptr %s, ptr %s%s\n", p2, obj, instScope, p2,
            cgCaptureTbaa);
    char* adapterSym = MallocOrCrash(strlen(adapter) + 1);
    strcpy(adapterSym, adapter);
    return cgFnPair(ctx, adapterSym, obj);
}

char* cgValueForTarget(struct cgCtx* ctx, struct operand* op, struct type dstT, char* scopeOverride) {
    if (dstT.bType == BASETYPE_FUNC && op->type.bType != BASETYPE_FUNC && SemanticCallMatches(op->type, dstT)) {
        return cgCallAdapterValue(ctx, op, dstT, scopeOverride);
    }
    //E11a/E11b: "$x" and a text join produce fresh storage with nothing to borrow, which makes them
    //temporaries in E12c's sense - so they are built in the TARGET's scope, exactly as a struct literal
    //is. Building them in the block the expression sits in instead made every string-building function
    //impossible: the result could never outlive the block, so "return "hi " + name" was rejected.
    bool isFreshText = cgIsFreshTemp(op);
    if (op->type.bType == BASETYPE_CHOICE && cgIsBorrow(dstT, op->type, OperandIsLvalue(op))) return cgBorrowSource(ctx, op);
    if (!isFreshText && !typeNeedsMallocPromotion(dstT, op->type) && !typeNeedsRuntimeLengthPromotion(dstT, op->type))
        return cgValue(ctx, op);
    char* scopeVal = scopeOverride ? scopeOverride : cgResolveScope(ctx, dstT.scopeParam, dstT.scopeDepth);
    char* prev = ctx->targetScopeOverride;
    ctx->targetScopeOverride = scopeVal;
    char* v = cgValue(ctx, op);
    ctx->targetScopeOverride = prev;
    return v;
}

//E12c/O16: a temporary - a constructor's instance, a value a call returned, an enum value - promoted into a reference:
//fresh storage in scopeVal, the value built and stored there. The storage is bumped BEFORE the value is built, so an
//instance comes before whatever its own arguments build: "Node(tree(d - 1), tree(d - 1))" lays a tree out parent
//first, in the order a walk from the root reads it, where building first put every subtree ahead of its root. Which
//address an instance gets is not observable; its destructor is registered once its constructor has completed (O16),
//exactly as before, so destructors still run in the order O15 gives. A value whose building fails leaves its slot to
//the scope, reclaimed when that closes.
static char* cgPromote(struct cgCtx* ctx, struct operand* op, char* scopeVal) {
    char storTy[256];
    llvmType(op->type, storTy, sizeof(storTy));
    char* heap = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 %lld)\n", heap, scopeVal, TypeGetSize(op->type));
    char* prev = ctx->targetScopeOverride;
    ctx->targetScopeOverride = scopeVal;
    char* v = cgValue(ctx, op);
    ctx->targetScopeOverride = prev;
    if (cgViaMemory(op->type)) {
        fprintf(ctx->fnOut, "  call void @llvm.memcpy.p0.p0.i64(ptr %s, ptr %s, i64 %lld, i1 false)\n", heap, v,
                TypeGetSize(op->type));
    } else {
        char* loaded = v; //an enum is already the value (T17d); anything else is the address of one
        if (typeIsByRef(op->type)) {
            loaded = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", loaded, storTy, v);
        }
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", storTy, loaded, heap);
    }
    cgRegisterDtorIfNeeded(ctx, op->type, scopeVal, heap);
    return heap;
}

//op's value stored into dstAddr, a slot of type dstT: cgValueForTarget then cgStoreInto, except where the value is new
//storage the target simply takes - a fresh array adopted (cgAdoptsFresh), a temporary promoted into a reference
//(cgPromote, its slot bumped before it is built)
static void cgStoreOperand(struct cgCtx* ctx, struct type dstT, struct operand* op, char* dstAddr, char* scopeOverride,
                           bool dstHoldsLiveValue, bool dstIsElem) {
    if (typeNeedsMallocPromotion(dstT, op->type) && !cgIsBorrow(dstT, op->type, OperandIsLvalue(op))) {
        char* scopeVal = scopeOverride ? scopeOverride : cgResolveScope(ctx, dstT.scopeParam, dstT.scopeDepth);
        fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", cgPromote(ctx, op, scopeVal), dstAddr);
        return;
    }
    char* val = cgValueForTarget(ctx, op, dstT, scopeOverride);
    if (cgAdoptsFresh(dstT, op, dstHoldsLiveValue)) {
        fprintf(ctx->fnOut, "  store { i64, ptr } %s, ptr %s%s\n", val, dstAddr, dstHoldsLiveValue ? cgTbaa(dstT, dstIsElem) : "");
        return;
    }
    cgStoreInto(ctx, dstT, op->type, val, dstAddr, scopeOverride, dstHoldsLiveValue, OperandIsLvalue(op), dstIsElem);
}

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
char* cgBoundaryValue(struct cgCtx* ctx, struct operand* op, struct type dstT, char* scopeOverride) {
    if (dstT.bType == BASETYPE_FUNC && op->type.bType != BASETYPE_FUNC && SemanticCallMatches(op->type, dstT)) {
        return cgCallAdapterValue(ctx, op, dstT, scopeOverride); //E31: an argument or result converted from Call
    }

    //E12c: an lvalue crossing into a "&" parameter or return slot is borrowed - the callee gets the very
    //instance the caller named. This is what E12a used to forbid outright, back when the only thing that
    //could happen here was a silent copy.
    if (cgIsBorrow(dstT, op->type, OperandIsLvalue(op))) {
        return cgBorrowValue(ctx, dstT, op->type, cgBorrowSource(ctx, op));
    }
    //E12's other direction: a reference crossing into a VALUE parameter copies out, so the aggregate has
    //to be loaded from the pointer the reference holds. cgStoreInto has done this for a var-decl or an
    //assignment since E12c; a call boundary never did, and cgValue's loaded pointer was handed straight to
    //a parameter expecting the aggregate - invalid IR, caught the moment a method-style call put a
    //reference receiver against a by-value first parameter.
    //structs only: D9a forbids a by-value array parameter, so a struct is the only thing that can be a
    //by-value target here - and including arrays wrongly caught E12's T[N]& -> T[] widening, which keeps
    //the pointer and materialises a length rather than loading anything
    if (!dstT.structMAlloc && op->type.structMAlloc && (dstT.bType == BASETYPE_STRUCT || dstT.bType == BASETYPE_CHOICE)
            && op->type.bType == dstT.bType) {
        char* refPtr = cgValue(ctx, op);
        char ty[256];
        llvmType(dstT, ty, sizeof(ty));
        char* loaded = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", loaded, ty, refPtr);
        return loaded;
    }
    if (typeNeedsMallocPromotion(dstT, op->type)) {
        return cgPromote(ctx, op, scopeOverride ? scopeOverride : cgResolveScope(ctx, dstT.scopeParam, dstT.scopeDepth));
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
    if (v->type.bType == BASETYPE_FUNC && !v->isGlobalVar) mangleFuncSym(v, buf, 256);
    else mangleGlobal(v->owner, v->name, buf, 256); //a function-typed global is storage holding a function value
    return buf;
}

static void cgBoundsFailed(struct cgCtx* ctx, struct operand* op, char* okLbl, char* badLbl);

char* cgIndexAddr(struct cgCtx* ctx, struct operand* op) {
    struct operand* base = *(struct operand**)ListGetIdx(&op->args, 0);
    struct operand* idx = *(struct operand**)ListGetIdx(&op->args, 1);
    char idxTy[64];
    llvmType(idx->type, idxTy, sizeof(idxTy));
    //the base is evaluated once, before the index (left to right, S4): a checked index reads its length and its
    //data pointer from the same value, so a base with an effect ("try mk()[1]") runs it once
    char* baseVal = cgValue(ctx, base);
    char* idxVal = cgValue(ctx, idx);
    //a GEP sign-extends a narrow index, so an unsigned one (T4: U8 200 is 200, not -56) is zero-extended first
    if (TypeIsUnsigned(idx->type) && TypeGetSize(idx->type) != 8) {
        char* z = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = zext %s %s to i64\n", z, idxTy, idxVal);
        idxVal = z;
        strcpy(idxTy, "i64");
    }

    //E16: an ordinary index is NOT checked at run time - the same reading C gives it. E16d's "try a[i]" is
    //the opt-in: it asks for the check and takes the failure as the bare error, so a checked access is
    //visible both where it is written and in the enclosing signature. What is free stays free either way -
    //a constant index into a fixed-size array is settled at compile time (see OperandIndex), and a SLICE
    //is still always checked (E16b) because that cost is per slice expression, never per element access.
    if (op->isTried || op->checkRoot) {
        //widened for the compare: an Int64 already is, a Byte is unsigned (T4) and zero-extends
        char* idx64 = idxVal;
        if (strcmp(idxTy, "i64") != 0) {
            idx64 = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = sext %s %s to i64\n", idx64, idxTy, idxVal);
        }
        char* lenVal;
        if (base->type.arrMalloc) {
            lenVal = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 0\n", lenVal, baseVal);
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

    if (base->type.arrMalloc) { //baseVal: a { i64, ptr } aggregate
        char* dataPtr = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 1\n", dataPtr, baseVal);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, %s %s\n", result, elemTy, dataPtr, idxTy, idxVal);
    } else {
        //baseVal is a ptr to [N x ElemT] either way - cgValue()'s by-ref convention hands back the
        //embedded array's own storage address when it's embedded, and typeIsByRef is false for a
        //structMAlloc array, so cgValue there instead LOADS and hands back the already-heap-allocated
        //pointer directly - same GEP shape needed in both cases, just where the pointer came from differs
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
    if (op->placeOf && op->placeOf->cgPlace) return op->placeOf->cgPlace; //S4: the place its statement computed
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

char* cgStringLiteralGlobal(struct cgCtx* ctx, struct operand* op) { return cgStringLiteralGlobalAt(ctx, op, false); }

//addrSignificant: the constant is a static literal's own storage (T25d), whose address is its identity
char* cgStringLiteralGlobalAt(struct cgCtx* ctx, struct operand* op, bool addrSignificant) {
    char* raw = op->tok.str.ptr +1;
    int rawLen = op->tok.str.len -2;
    //decoding only ever shortens the text, so its own length bounds it - a fixed buffer here cut every literal over
    //4096 bytes short, silently
    unsigned char* decoded = MallocOrCrash((size_t)rawLen + 1);
    int n = 0;
    for (int i = 0; i < rawLen; i++) {
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
    fprintf(ctx->out, "%s = private %sconstant [%d x i8] c\"", name, addrSignificant ? "" : "unnamed_addr ", n);
    for (int i = 0; i < n; i++) emitLLVMCharEscape(ctx->out, decoded[i]);
    fputs("\"\n", ctx->out);
    free(decoded);
    char* result = MallocOrCrash(32);
    strcpy(result, name);
    return result;
}

//a float constant as LLVM writes it: double's bit pattern for F32/F64 (F32 rounded to float first), and the 16-bit
//forms for F16 ("0xH") and BF16 ("0xR"), rounded to nearest-even as the hardware rounds (T4). A NaN keeps its sign
//and payload (E33) - an F32's in the double as LLVM reads one back, its payload at the top of the double's
char* cgFloatConst(double v, enum baseType b) {
    char* buf = MallocOrCrash(24);
    unsigned long long bits = FloatBits(v, b);
    if (b == BASETYPE_F16 || b == BASETYPE_BF16) {
        snprintf(buf, 24, "0x%c%04llX", b == BASETYPE_F16 ? 'H' : 'R', bits);
        return buf;
    }
    double asDouble = b == BASETYPE_FLOAT32 ? FloatFromBits(bits, b) : v;
    memcpy(&bits, &asDouble, sizeof(bits));
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
        char* slot = cgValueSlot(ctx, op->type, storTy);
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
            cgStoreOperand(ctx, fieldT, arg, fieldAddr, fieldScope, false, false);
        }
        return slot;
    }

    //compile-time-length array - the only shape a literal ever builds directly now (see buildArrLiteralLevel)
    char storTy[256];
    llvmType(op->type, storTy, sizeof(storTy));
    char* slot = cgValueSlot(ctx, op->type, storTy);
    for (int i = 0; i < op->args.len; i++) {
        struct operand* arg = *(struct operand**)ListGetIdx(&op->args, i);
        char* elemAddr = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 0, i64 %d\n", elemAddr, storTy, slot, i);
        struct type elemT = *op->type.arrElem;
        //T25d: constant text reaching a read-only element is the constant itself - nothing copied, nothing built
        char* st = cgStaticLiteral(ctx, arg, elemT);
        if (st) {
            fprintf(ctx->fnOut, "  store { i64, ptr } %s, ptr %s\n", st, elemAddr);
            continue;
        }
        char* elemScope = elemT.scopeParam ? NULL : ctx->targetScopeOverride;
        cgStoreOperand(ctx, elemT, arg, elemAddr, elemScope, false, true);
    }
    return slot;
}

//T17: a payload-carrying choice value - "Shape.Circle(3)". Built the way an aggregate literal is, into
//{ i64 tag, [N x i64] payload }: zero the whole thing first (so a smaller case leaves no stale bytes behind
//in the tail), write the tag, then write the payload's fields through the case's own struct shape. The
//buffer is sized for the LARGEST case, which is the whole space saving over a struct holding every
//alternative at once.
static char* cgChoiceValue(struct cgCtx* ctx, struct operand* op) {
    struct type t = op->type;
    char ty[256];
    llvmType(t, ty, sizeof(ty));
    char* slot = cgValueSlot(ctx, t, ty);
    fprintf(ctx->fnOut, "  store %s zeroinitializer, ptr %s\n", ty, slot);
    char* tagAddr = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 0\n", tagAddr, ty, slot);
    fprintf(ctx->fnOut, "  store i64 %lld, ptr %s\n", op->intLiteralVal, tagAddr);
    if (op->args.len > 0) {
        struct var* c = ListGetIdx(&t.vars, (int)op->intLiteralVal);
        char* payTy = structAggSpelled(c->type); //sized to the spelling, however many fields the case has
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
            //C2d: a payload the checker never landed lives where the value is being built into, as a constructor's does
            char* fieldScope = fieldT.scopeParam && SemanticBindingIsLanding(op, fieldT.scopeParam) && ctx->targetScopeOverride
                               ? ctx->targetScopeOverride : cgResolveParamScopeOverride(ctx, NULL, op, fieldT);
            cgStoreOperand(ctx, fieldT, arg, fieldAddr, fieldScope, false, false);
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
        case BASETYPE_BYTE: case BASETYPE_INT32: case BASETYPE_INT64: case BASETYPE_I8: case BASETYPE_I16:
        case BASETYPE_U16: case BASETYPE_U32: case BASETYPE_U64:
            snprintf(buf, 64, "%lld", op->intLiteralVal); return buf;
        case BASETYPE_FLOAT32: case BASETYPE_FLOAT64: case BASETYPE_F16: case BASETYPE_BF16:
            return cgFloatConst(op->floatLiteralVal, op->type.bType);
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
    char* ext = TypeIsUnsigned(t) ? "zext" : "sext";
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
    //T36: tagged as every other access to the same storage is - left untagged, "l.count++" aliased every element
    //store, so a count kept beside a buffer went back to memory on each append
    const char* tbaa = cgTbaa(target->type, target->opType == OPERATION_INDEX);
    char* oldVal = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load %s, ptr %s%s\n", oldVal, ty, addr, tbaa);
    bool isF = TypeIsFloat(target->type);
    char* newVal = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = %s %s %s, %s\n", newVal, isF ? (inc ? "fadd" : "fsub") : (inc ? "add" : "sub"),
        ty, oldVal, isF ? "1.0" : "1");
    fprintf(ctx->fnOut, "  store %s %s, ptr %s%s\n", ty, newVal, addr, tbaa);
    return prefix ? newVal : oldVal;
}

char* cgDeepEq(struct cgCtx* ctx, struct type t, char* aVal, char* bVal);

//runtime-length arrays carry no compile-time length, so equality needs a runtime length-check + elementwise loop
//(a fixed array longer than a few elements is compared by the same loop; anything shorter is unrolled straight-line)
//copies a runtime-length array's ELEMENTS into a fresh buffer of its own, arena-allocated into scopeVal,
//and returns the resulting { i64, ptr } descriptor. This is what an UNMARKED runtime-length array's
//assignment does now that T11 is gone: without a marker it is a value, so "b = a" must give b storage of
//its own rather than pointing it at a's - the same thing "b = a" already did for a compile-time-length
//array, and the whole point of making the two behave alike. A marked "T[]&" keeps copying the descriptor
//instead (that is what a reference assignment means, S4a). Length is a runtime value here, so this is a real loop.
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
static void rdKey(struct type t, struct cgBuf* b);
static char* cgChoiceEqFn(struct cgCtx* ctx, struct type t) {
    //named by the type's structure (rdKey), never a per-object counter, which two objects could give two shapes
    struct type keyT = t;
    keyT.structMAlloc = false;
    struct cgBuf key = {0};
    rdKey(keyT, &key);
    struct cgBuf symB = {0};
    cgBufAdd(&symB, "@olang.choiceeq.%s", cgBufStr(&key));
    free(key.p);
    char* sym = cgBufStr(&symB);
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
    //runtime-length one is { i64, ptr }, which no icmp accepts. E10: its identity is the same storage AND the same
    //length - two descriptors naming one buffer from one start, over as many elements - so a[:2] is not a[:3]
    if (t.bType == BASETYPE_ARRAY && t.arrMalloc && t.structMAlloc) {
        char* pa = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 1\n", pa, aVal);
        char* pb = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 1\n", pb, bVal);
        char* na = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 0\n", na, aVal);
        char* nb = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 0\n", nb, bVal);
        char* eqP = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp eq ptr %s, %s\n", eqP, pa, pb);
        char* eqN = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp eq i64 %s, %s\n", eqN, na, nb);
        char* eq = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", eq, eqP, eqN);
        return eq;
    }
    if (t.bType == BASETYPE_ARRAY && !t.arrMalloc && !t.structMAlloc) {
        char storTy[256];
        llvmType(t, storTy, sizeof(storTy));
        long long n = t.arrLen ? t.arrLen->intLiteralVal : 0;
        //E10: beyond a few elements a loop, as for a run-time length - the code is one element's whatever the length
        if (n > 8) {
            char* da = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } { i64 %lld, ptr undef }, ptr %s, 1\n", da, n, aVal);
            char* db = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } { i64 %lld, ptr undef }, ptr %s, 1\n", db, n, bVal);
            struct type rt = t;
            rt.arrMalloc = true;
            rt.arrLen = NULL;
            return cgDeepEqSlice(ctx, rt, da, db);
        }
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
    //each arm and leaves every call site straight-line. "linkonce_odr" because
    //the comparison belongs to the type, every object that needs it emits it, and the linker keeps one.
    if (t.bType == BASETYPE_CHOICE && ChoiceHasPayload(t) && !t.structMAlloc) { //a reference is identity (E10)
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

    //T21: a function value is identity - the same code with the same environment (a named function's and a
    //capture-free lambda's have none, so the code alone tells them apart)
    if (t.bType == BASETYPE_FUNC) {
        char* ea;
        char* ca = cgFnCode(ctx, aVal, &ea);
        char* eb;
        char* cb = cgFnCode(ctx, bVal, &eb);
        char* eqC = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp eq ptr %s, %s\n", eqC, ca, cb);
        char* eqE = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp eq ptr %s, %s\n", eqE, ea, eb);
        char* eq = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", eq, eqC, eqE);
        return eq;
    }
    //scalar leaf, including <>-indirect struct references (spelled "ptr")
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
    bool isU = TypeIsUnsigned(a->type); //T4: the U types are unsigned, the I types signed
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
            char* how = aw < bw ? "trunc" : (TypeIsUnsigned(b->type) ? "zext" : "sext");
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

//the target of a call written by name: the function's own symbol, or - for a local or a global of function type -
//the code of the function value it holds (D16), with *closureOut set to that value's environment, passed as the
//hidden first argument every function reached through a value takes
static char* cgNamedTarget(struct cgCtx* ctx, struct var* func, char** closureOut) {
    *closureOut = NULL;
    //only a local or parameter holding a function value is called through the local of its name: a declared function
    //or method shares no namespace with locals (a method has its own, M19; D3a is per module, so another module's
    //function may share one too), so "lit := g.lit(t)" calls the method
    struct cgLocal* local = func->owner ? NULL : cgFindLocal(ctx, func->name);
    if (local || func->isGlobalVar) { //a function-typed global: the function value it holds, called as a local's is
        char g[256];
        if (!local) mangleGlobal(func->owner, func->name, g, sizeof(g));
        char* fv = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load { ptr, ptr }, ptr %s\n", fv, local ? local->llvmVal : g);
        return cgFnCode(ctx, fv, closureOut);
    }
    char* sym = MallocOrCrash(256);
    mangleFuncSym(func, sym, 256);
    return sym;
}

//D16: a function value is the pair (code, environment), the code taking the environment as its hidden first
//argument. A named function's value is its adapter "@f.fvt", which drops the environment, with none - so one function
//is one value however often it is named, in any module (the adapter is linkonce_odr). A lambda's code already takes
//the environment; one capturing nothing has none either.
//D16c: a capturing lambda's environment - each capture's value and, for a reference, its scope. It is written once,
//where the lambda is made, and read only by the lambda's own prologue, so its accesses carry a TBAA family of their
//own (cgCaptureTbaa) and never alias a program's fields or elements
static char* cgClosureType(struct var* L) {
    struct cgBuf b = {0};
    cgBufAdd(&b, "{ ");
    for (int i = 0; i < L->lambdaCaptures.len; i++) {
        struct var* in = ((struct lambdaCapture*)ListGetIdx(&L->lambdaCaptures, i))->inner;
        char cty[256];
        llvmType(in->type, cty, sizeof(cty));
        cgBufAdd(&b, "%s%s%s", i ? ", " : "", cty, in->type.scopeParam ? ", ptr" : "");
    }
    cgBufAdd(&b, " }");
    return cgBufStr(&b);
}

//D16c: a capturing lambda's value, made here: its environment, built where the lambda lives - with the references
//it captured, or where it lands - holding a copy of every capture, paired with the lambda's code
static char* cgClosure(struct cgCtx* ctx, struct operand* op, char* sym) {
    struct var* L = op->readVar;
    char* envTy = cgClosureType(L);
    char* scope = op->lambdaHomeSet ? cgResolveScope(ctx, op->lambdaHome, op->lambdaHomeDepth) : cgWhereBuilt(ctx, op);
    char* obj = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 ptrtoint (ptr getelementptr (%s, ptr null, i32 1) to i64))\n",
            obj, scope, envTy);
    int field = 0;
    for (int i = 0; i < L->lambdaCaptures.len && i < op->args.len; i++) {
        struct var* in = ((struct lambdaCapture*)ListGetIdx(&L->lambdaCaptures, i))->inner;
        struct operand* capOp = *(struct operand**)ListGetIdx(&op->args, i);
        char cty[256];
        llvmType(in->type, cty, sizeof(cty));
        if (cgViaMemory(in->type)) { //copied as memory, not as one first-class value (cgViaMemory)
            char* src = cgValue(ctx, capOp);
            char* fp = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 %d\n", fp, envTy, obj, field++);
            fprintf(ctx->fnOut, "  call void @llvm.memcpy.p0.p0.i64(ptr %s, ptr %s, i64 %lld, i1 false)\n", fp, src,
                    TypeGetSize(in->type));
        } else {
            char* v = cgBoundaryValue(ctx, capOp, in->type, NULL);
            char* fp = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 %d\n", fp, envTy, obj, field++);
            fprintf(ctx->fnOut, "  store %s %s, ptr %s%s\n", cty, v, fp, cgCaptureTbaa);
        }
        if (!in->type.scopeParam) continue;
        struct var* sv = in->type.scopeParam;
        char* sval = cgBoundScopeArg(ctx, op, sv);
        char* sp = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 %d\n", sp, envTy, obj, field++);
        fprintf(ctx->fnOut, "  store ptr %s, ptr %s%s\n", sval, sp, cgCaptureTbaa);
    }
    return cgFnPair(ctx, sym, obj);
}

void cgEmitParamList(FILE* out, struct var* func, bool named);
static char* cgFuncValue(struct cgCtx* ctx, struct var* f, char* sym) {
    if (f->isLambda && f->lambdaCaptures.len) return NULL; //made by cgClosure instead
    if (f->isLambda) return cgFnPair(ctx, sym, "null"); //its code takes the (absent) environment already
    char* code = MallocOrCrash(strlen(sym) + 8);
    sprintf(code, "%s.fvt", sym);
    bool have = false;
    for (int i = 0; i < ctx->fnValues.len && !have; i++) have = *(struct var**)ListGetIdx(&ctx->fnValues, i) == f;
    if (!have) ListAdd(&ctx->fnValues, &f);
    return cgFnPair(ctx, code, "null");
}

//D16: the adapters of every named function this object used as a value
void cgEmitFuncValues(struct cgCtx* ctx) {
    for (int i = 0; i < ctx->fnValues.len; i++) {
        struct var* f = *(struct var**)ListGetIdx(&ctx->fnValues, i);
        char sym[256];
        mangleFuncSym(f, sym, sizeof(sym));
        char retTy[256];
        llvmFuncRetType(f->type, retTy, sizeof(retTy));
        bool outFirst = cgRetViaMemory(f->type); //its result's storage comes before the closure, as at every call
        fprintf(ctx->out, "define linkonce_odr %s %s.fvt(%sptr %%closure", retTy, sym, outFirst ? "ptr %out, " : "");
        struct cgBuf params = {0};
        for (int k = 0; k < f->type.scopeVars.len; k++) cgBufAdd(&params, ", ptr %%sarg%d", k);
        struct cgBuf args = {0};
        if (outFirst) cgBufAdd(&args, "ptr %%out");
        for (int k = 0; k < f->type.scopeVars.len; k++) cgBufAdd(&args, "%sptr %%sarg%d", args.len ? ", " : "", k);
        for (int k = 0; k < f->type.vars.len; k++) {
            char pty[256];
            cgParamTy(((struct var*)ListGetIdx(&f->type.vars, k))->type, pty, sizeof(pty));
            cgBufAdd(&params, ", %s %%arg%d", pty, k);
            cgBufAdd(&args, "%s%s %%arg%d", args.len ? ", " : "", pty, k);
        }
        fprintf(ctx->out, "%s) {\nentry:\n", cgBufStr(&params));
        char* argsText = cgBufStr(&args);
        if (strcmp(retTy, "void") == 0) fprintf(ctx->out, "  call void %s(%s)\n  ret void\n}\n\n", sym, argsText);
        else fprintf(ctx->out, "  %%r = call %s %s(%s)\n  ret %s %%r\n}\n\n", retTy, sym, argsText, retTy);
    }
}

//P2: a task's private arena standing in for `parent` - allocated from the join block's own arena, since a join in a
//loop starts any number of tasks and the header has to outlive the task rather than the iteration - and recorded
//to be spliced back into `parent` at the join, the one point at which the task is provably done with it
struct cgScopeMerge {
    char* sub;
    char* parent;
};

static char* cgSpawnSubScope(struct cgCtx* ctx, struct list* merges, char* parent) {
    struct cgScopeMerge m;
    m.parent = parent;
    m.sub = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 24)\n", m.sub, cgScopeSlotAt(ctx, ctx->joinDepth));
    fprintf(ctx->fnOut, "  store %%olang.scope zeroinitializer, ptr %s\n", m.sub);
    ListAdd(merges, &m);
    return m.sub;
}


//a call's target and its arguments in order - the closure of a call through a function value, a constructor's
//instance scope, the callee's scope variables, then the parameters - shared by an ordinary call and a task (P1),
//so the two cannot drift apart: a spawned constructor once lost its instance-scope argument and read its fields
//from the wrong registers, and a spawned call through a computed function value crashed the compiler.
//`spawnMerges`, for a task, receives one sub-arena per scope the task allocates into (P2): the arguments are still
//evaluated here, in the spawner, where they are built into the real scopes.
static char* cgCallTargetAndArgs(struct cgCtx* ctx, struct operand* op, struct list* args, struct list* spawnMerges,
                                 char* outSlot) {
    struct var* func = op->readVar;
    char* closure = NULL;
    char* target;
    if (outSlot) cgArgAdd(args, "ptr", outSlot); //a result through memory (cgRetViaMemory) - its storage comes first
    if (op->callee) { //E13b: the function value is computed, then called as a variable holding it is
        target = cgFnCode(ctx, cgValue(ctx, op->callee), &closure);
    } else target = cgNamedTarget(ctx, func, &closure);
    if (closure) cgArgAdd(args, "ptr", closure);

    bool ctor = cgIsCtor(func);
    char* here = ctor ? cgCtorHereArg(ctx, op) : NULL;
    char* hereArg = ctor && spawnMerges ? cgSpawnSubScope(ctx, spawnMerges, here) : here;
    if (ctor) cgArgAdd(args, "ptr", hereArg);
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
        //P2: a task gets a private stand-in for that very scope, folded into it at the join - the scope this call binds,
        //resolved as any call resolves it (the block its binding names, the program's for a global's referent)
        bool atHere = ctor && sv->isImplicitScope && SemanticBindingIsLanding(op, sv);
        char* sval = atHere ? hereArg
                     : SemanticBindingIsLanding(op, sv) && ctx->targetScopeOverride ? ctx->targetScopeOverride
                     : cgBoundScopeArg(ctx, op, sv);
        if (spawnMerges && !atHere) sval = cgSpawnSubScope(ctx, spawnMerges, sval);
        //R9a: where the result lives - a "catch default" standing for it is built there too
        struct var* rsv = func->type.resultScope ? func->type.resultScope
                          : func->type.hasRetType ? func->type.retType->scopeParam : NULL;
        if (!spawnMerges && rsv && canonicalVar(sv) == canonicalVar(rsv)) op->cgResultScope = sval;
        cgArgAdd(args, "ptr", sval);
    }
    for (int i = 0; i < op->args.len; i++) {
        struct operand* argOp = *(struct operand**)ListGetIdx(&op->args, i);
        //the parameter's own declared type (not argOp->type) decides malloc-promotion and the LLVM type
        //word at the call site - a "&" parameter is exactly where a plain struct argument needs one
        struct type paramT = (*(struct var*)ListGetIdx(&func->type.vars, i)).type;
        if (cgViaMemory(paramT)) {
            //passed as a pointer to the callee's own copy, made here so a later argument cannot change it - a call's
            //result is already a copy no one else holds; a task's copy lives in its join block's arena, which outlives it
            char* src = cgValue(ctx, argOp);
            char* copy = src;
            if (spawnMerges || argOp->opType != OPERATION_FUNCCALL) {
                char ty[256];
                llvmType(paramT, ty, sizeof(ty));
                copy = cgNewTmp(ctx);
                if (spawnMerges)
                    fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 %lld)\n", copy,
                            cgScopeSlotAt(ctx, ctx->joinDepth), TypeGetSize(paramT));
                else cgValueSlotAs(ctx, copy, paramT, ty);
                fprintf(ctx->fnOut, "  call void @llvm.memcpy.p0.p0.i64(ptr %s, ptr %s, i64 %lld, i1 false)\n", copy, src,
                        TypeGetSize(paramT));
            }
            cgArgAdd(args, "ptr", copy);
            continue;
        }
        char* scopeOverride = cgResolveParamScopeOverride(ctx, func, op, paramT);
        //C2d: a constructor parameter whose reference names no scope fills a field of the instance, so
        //an argument with no storage of its own is built where the instance lands
        if (ctor && ((!scopeOverride && !paramT.scopeParam)
                     || (paramT.scopeParam && paramT.scopeParam->isImplicitScope
                         && SemanticBindingIsLanding(op, paramT.scopeParam))))
            scopeOverride = here;
        char* av = cgBoundaryValue(ctx, argOp, paramT, scopeOverride);
        char aty[256];
        llvmType(paramT, aty, sizeof(aty));
        cgArgAdd(args, aty, av);
    }
    return target;
}

char* cgFuncCall(struct cgCtx* ctx, struct operand* op) {
    struct var* func = op->readVar;
    if (func->type.isExtern) return cgExternFuncCall(ctx, op);
    //a big result (cgRetViaMemory) is written straight into storage of this call's own, which is then its value
    char* outSlot = NULL;
    if (cgRetViaMemory(func->type)) {
        char ty[256];
        llvmType(*func->type.retType, ty, sizeof(ty));
        outSlot = cgValueSlot(ctx, *func->type.retType, ty);
    }
    struct list args = ListInit(sizeof(struct cgArg));
    char* target = cgCallTargetAndArgs(ctx, op, &args, NULL, outSlot);
    char* argsBuf = cgArgsText(&args);

    if (func->type.errors.len == 0 && outSlot) {
        fprintf(ctx->fnOut, "  call void %s(%s)\n", target, argsBuf);
        return outSlot;
    }
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
    //E31: a Try form called for an operator inside a tried expression fails through that try (R20)
    struct operand* root = op->checkRoot ? op->checkRoot : op;
    if (!root->isTried) ErrorBugFound();
    char wrapTy[256];
    llvmFuncRetType(func->type, wrapTy, sizeof(wrapTy));
    char* raw = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call %s %s(%s)\n", raw, wrapTy, target, argsBuf);
    char* code = raw;
    char* resSlot = NULL;
    if (func->type.hasRetType && !outSlot) {
        code = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue %s %s, 0\n", code, wrapTy, raw);
        //the result is stored where the call is and its payload read back in the success block, so no aggregate
        //value is live across blocks: LLVM 18's x86 back end at -O0 carried a bfloat inside one across a branch
        //without widening it as the reading block expects, so "try f()" read a BF16 result as 0 (an F16 or a
        //wider type was unaffected). One store and a load, which -O3 removes again.
        resSlot = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", resSlot, wrapTy);
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", wrapTy, raw, resSlot);
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
    //a call with clauses of its own under another try (a comprehension's Next, S9a): its own first, then that try's
    bool rest = true;
    if (op != root && op->isTried && op->catchClauses.len)
        rest = cgCatchDispatch(ctx, op, &op->catchClauses, code, &func->type, op->cgEndLbl);
    if (rest && (!root->catchClauses.len || cgCatchDispatch(ctx, root, &root->catchClauses, code, &func->type, root->cgEndLbl))) {
        if (op != root && cgClausesCoverAll(&op->catchClauses, &root->catchClauses, &func->type)) {
            fputs("  unreachable\n", ctx->fnOut);
            ctx->terminated = true;
        } else {
            cgPropagateError(ctx, func->type, code);
        }
    }
    cgLabel(ctx, okLbl);

    if (!func->type.hasRetType) return "";
    if (outSlot) return outSlot;
    struct type rt = *func->type.retType;
    char retTy[256];
    llvmType(rt, retTy, sizeof(retTy));
    char* payAddr = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 1\n", payAddr, wrapTy, resSlot);
    if (typeIsByRef(rt)) return payAddr; //a by-ref value is the address of its storage - this call's own slot
    char* payload = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", payload, retTy, payAddr);
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
    //X8: an exact function of the C math library is LLVM's intrinsic for it - the same correctly rounded result, which
    //the code generator makes the target's instruction where it has one (fma to vfmadd, given FMA) and vectorizes,
    //and the library's own call where it has none (fma at baseline x86-64)
    if (CtMathFn(func) == CT_MATH_EXACT) {
        bool f32 = func->type.retType->bType == BASETYPE_FLOAT32;
        snprintf(target, sizeof(target), "@llvm.%.*s.%s", func->name.len - (f32 ? 1 : 0), func->name.ptr, f32 ? "f32" : "f64");
    }

    struct list args = ListInit(sizeof(struct cgArg));
    for (int i = 0; i < op->args.len; i++) {
        struct operand* argOp = *(struct operand**)ListGetIdx(&op->args, i);
        struct type paramT = (*(struct var*)ListGetIdx(&func->type.vars, i)).type;
        //X3/T7c: an Array<T, N> is handed over as its own storage - a value's address, a reference's pointer - never
        //copied first, so what the foreign function writes there is in the array afterwards
        if (paramT.bType == BASETYPE_ARRAY && argOp->type.bType == BASETYPE_ARRAY && !argOp->type.arrMalloc) {
            cgArgAdd(&args, "ptr", cgValue(ctx, argOp));
            continue;
        }
        char* boundary = cgBoundaryValue(ctx, argOp, paramT, ctx->ownScopeSlot);
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
            cgArgAdd(&args, "ptr", ptr);
        } else {
            char aty[64];
            llvmType(paramT, aty, sizeof(aty));
            cgArgAdd(&args, aty, boundary);
        }
    }
    char* argsBuf = cgArgsText(&args);

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
//P9: one atomic method, one LLVM atomic instruction, always sequentially consistent. The address comes
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
//T4: the instructions converting val from one numeric type to another - none between two of one width and kind (a
//retag, or I32 and U32 which share a representation), an extension or truncation chosen by the source's signedness,
//and between F16 and BF16 (one width, neither containing the other) a trip through float
//a BF16 widened to F32 (wide "float") or F64 ("double"): its bits are the top half of the F32 holding the same value, so
//by an integer shift - exact for every value and payload. Not "fpext bfloat": LLVM 18's InstCombine takes a value
//extended from bfloat to fit in any type of at least bfloat's precision, so "fptrunc (fdiv (fpext b), (fpext b)) to
//half" became an F16 division of b narrowed to F16, where bfloat's range does not fit - 2^-126 / 2^-126 was 0 / 0, a
//NaN (found by the fuzzer, fuzz/repro/bf16shrink.ll)
static char* cgWidenBF16(struct cgCtx* ctx, char* val, const char* wide) {
    char* bits = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = bitcast bfloat %s to i16\n", bits, val);
    char* z = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = zext i16 %s to i32\n", z, bits);
    char* sh = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = shl i32 %s, 16\n", sh, z);
    char* f = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = bitcast i32 %s to float\n", f, sh);
    if (!strcmp(wide, "float")) return f;
    char* d = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = fpext float %s to %s\n", d, f, wide);
    return d;
}

static char* cgConvertValue(struct cgCtx* ctx, struct type from, struct type to, char* val) {
    char fromTy[16], toTy[16];
    llvmType(from, fromTy, sizeof(fromTy));
    llvmType(to, toTy, sizeof(toTy));
    if (!strcmp(fromTy, toTy)) return val;
    bool fromF = TypeIsFloat(from), toF = TypeIsFloat(to);
    long long fb = TypeGetSize(from), tb = TypeGetSize(to);
    const char* instr;
    if (fromF && toF) {
        if (fb == tb) { //F16 <-> BF16
            char* wide = from.bType == BASETYPE_BF16 ? cgWidenBF16(ctx, val, "float") : cgNewTmp(ctx);
            if (from.bType != BASETYPE_BF16) fprintf(ctx->fnOut, "  %s = fpext %s %s to float\n", wide, fromTy, val);
            char* r = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = fptrunc float %s to %s\n", r, wide, toTy);
            return r;
        }
        if (tb > fb && from.bType == BASETYPE_BF16) return cgWidenBF16(ctx, val, toTy);
        instr = tb > fb ? "fpext" : "fptrunc";
    } else if (fromF) instr = TypeIsUnsigned(to) ? "fptoui" : "fptosi";
    else if (toF && to.bType == BASETYPE_BF16) { //T4: rounded once, by the runtime's own conversion
        bool u = TypeIsUnsigned(from);
        char* x = val;
        if (fb < 8) {
            x = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = %s %s %s to i64\n", x, u ? "zext" : "sext", fromTy, val);
        }
        char* neg = "false";
        char* mag = x;
        if (!u) {
            neg = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = icmp slt i64 %s, 0\n", neg, x);
            char* nx = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = sub i64 0, %s\n", nx, x);
            mag = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = select i1 %s, i64 %s, i64 %s\n", mag, neg, nx, x);
        }
        char* r = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = call bfloat @__olang_int_bf16(i64 %s, i1 %s)\n", r, mag, neg);
        return r;
    }
    else if (toF && to.bType == BASETYPE_F16) {
        //T4/E26: through a double, which holds every integer that does not overflow F16 exactly, so this rounds once. Not
        //"sitofp ... to half": LLVM 18 folds "fpext (sitofp x to half)" - which every use of an F16 makes - into "sitofp
        //x to double" whenever x has at most 11 significant bits, losing F16's overflow to infinity (65536 printed as
        //65536). The fence keeps it from folding the double back into the half (found by the fuzzer, fuzz/repro/f16fold.ll)
        char* d = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = %s %s %s to double\n", d, TypeIsUnsigned(from) ? "uitofp" : "sitofp", fromTy, val);
        char* fenced = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = call double @llvm.arithmetic.fence.f64(double %s)\n", fenced, d);
        char* r = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = fptrunc double %s to half\n", r, fenced);
        return r;
    }
    else if (toF) instr = TypeIsUnsigned(from) ? "uitofp" : "sitofp";
    else if (tb == fb) return val;
    else instr = tb > fb ? (TypeIsUnsigned(from) ? "zext" : "sext") : "trunc";
    char* r = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = %s %s %s to %s\n", r, instr, fromTy, val, toTy);
    return r;
}

//R20: a conversion the target type cannot represent the value of - a NaN or infinity is INVALID, anything else
//out of range OVERFLOW. Integers are compared in i128, where every source value and both bounds are exact; a float
//is compared as a double against the target's exclusive bounds, which are powers of two and so exact too.
static void cgCheckConvert(struct cgCtx* ctx, struct operand* op, struct type from, struct type to, char* fromTy,
                           char* val) {
    bool fromF = TypeIsFloat(from), toF = TypeIsFloat(to);
    if (toF) { //into a float: only a finite value becoming infinite can be lost (a float narrowing, or an integer into F16)
        if (fromF && TypeGetSize(to) > TypeGetSize(from)) return;
        char toTy[16];
        llvmType(to, toTy, sizeof(toTy));
        char* t = cgConvertValue(ctx, from, to, val);
        char* dstFin = cgIsFinite(ctx, toTy, t);
        char* lost = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = xor i1 %s, true\n", lost, dstFin);
        char* ov = lost;
        if (fromF) {
            char* srcFin = cgIsFinite(ctx, fromTy, val);
            ov = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", ov, srcFin, lost);
        }
        cgFailIf(ctx, op, ov, "OVERFLOW");
        return;
    }
    int bits = (int)TypeGetSize(to) * 8;
    bool u = TypeIsUnsigned(to);
    if (fromF) {
        char* d = val;
        if (from.bType == BASETYPE_BF16) d = cgWidenBF16(ctx, val, "double");
        else if (from.bType != BASETYPE_FLOAT64) {
            d = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = fpext %s %s to double\n", d, fromTy, val);
        }
        char* fin = cgIsFinite(ctx, "double", d);
        char* notFin = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = xor i1 %s, true\n", notFin, fin);
        cgFailIf(ctx, op, notFin, "INVALID");
        double lo = u ? 0.0 : -ldexp(1.0, bits - 1), hi = u ? ldexp(1.0, bits) : ldexp(1.0, bits - 1);
        //in range exactly when lo <= v < hi
        char* ge = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = fcmp oge double %s, %s\n", ge, d, cgFloatConst(lo, BASETYPE_FLOAT64));
        char* lt = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = fcmp olt double %s, %s\n", lt, d, cgFloatConst(hi, BASETYPE_FLOAT64));
        char* in = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", in, ge, lt);
        char* out = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = xor i1 %s, true\n", out, in);
        cgFailIf(ctx, op, out, "OVERFLOW");
        return;
    }
    //integer to integer
    char* w = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = %s %s %s to i128\n", w, TypeIsUnsigned(from) ? "zext" : "sext", fromTy, val);
    char lo[48], hi[48];
    if (u) { snprintf(lo, sizeof(lo), "0"); snprintf(hi, sizeof(hi), "%llu", bits == 64 ? ~0ULL : (1ULL << bits) - 1); }
    else {
        snprintf(lo, sizeof(lo), "%lld", bits == 64 ? (-9223372036854775807LL - 1) : -(1LL << (bits - 1)));
        snprintf(hi, sizeof(hi), "%lld", bits == 64 ? 9223372036854775807LL : (1LL << (bits - 1)) - 1);
    }
    char* below = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = icmp slt i128 %s, %s\n", below, w, lo);
    char* above = cgNewTmp(ctx); fprintf(ctx->fnOut, "  %s = icmp sgt i128 %s, %s\n", above, w, hi);
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
    char fromTy[16];
    llvmType(from, fromTy, sizeof(fromTy));
    if (op->checkRoot) cgCheckConvert(ctx, op, from, to, fromTy, val); //R20
    return cgConvertValue(ctx, from, to, val);
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
    if (TypeGetSize(sizeOp->type) == 8) {
        count = rawCount;
    } else {
        count = cgNewTmp(ctx);
        char* ext = TypeIsUnsigned(sizeOp->type) ? "zext" : "sext";
        char sizeTy[64];
        llvmType(sizeOp->type, sizeTy, sizeof(sizeTy));
        fprintf(ctx->fnOut, "  %s = %s %s %s to i64\n", count, ext, sizeTy, rawCount);
    }

    //D14b: a negative length is rejected here rather than allowed to multiply out to a negative byte
    //count - which __olang_new_chunk's unsigned comparison reads as an enormous capacity, so it mallocs a
    //few bytes, records a huge cap, and every later allocation from this scope bumps straight past the end
    //of it. Verified as "malloc(): corrupted top size". So is a length whose byte count would not fit an I64,
    //which wrapped to a small allocation the array then ran past (2^61 + 1 I64s made 8 bytes). One unsigned
    //compare covers both, since a negative length reads as a huge one. One compare per ALLOCATION, never per
    //access, which is the same reason a slice's bounds are checked (E16b) and an index's are not (E16).
    struct type elemT = *op->type.arrElem;
    long long elemSize = TypeGetSize(elemT);
    int nid = ctx->lblCtr++;
    char negLbl[32], okLbl[32];
    snprintf(negLbl, sizeof(negLbl), "len.neg.%d", nid);
    snprintf(okLbl, sizeof(okLbl), "len.ok.%d", nid);
    char* isNeg = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp ugt i64 %s, %lld\n", isNeg, count, ArrayLengthLimit(elemSize));
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", isNeg, negLbl, okLbl);
    ctx->terminated = true;
    if (op->checkRoot) cgCheckFailed(ctx, op->checkRoot, okLbl, negLbl, "OUT_OF_BOUNDS", NULL); //R20
    else {
        cgLabel(ctx, negLbl);
        fputs("  call void @__olang_check_failed(ptr @__olang_msg_arraylen)\n", ctx->fnOut);
        cgBr(ctx, okLbl);
        cgLabel(ctx, okLbl);
    }

    char* byteSize = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = mul i64 %s, %lld\n", byteSize, count, elemSize);

    //T7: "Array<T>(n)" is a temporary - built in the scope of whatever it lands in when that is known
    //(E12c), otherwise in the block it is written in
    char* scopeVal = cgWhereBuilt(ctx, op);
    char* bytes = cgNewTmp(ctx);
    //D13c: zero-filled storage comes from the allocator's zeroed path, which skips the clearing for a large array the
    //system has just handed over (__olang_scope_alloc_zeroed)
    bool zeroed = !(op->args.len > 1 && !(*(struct operand**)ListGetIdx(&op->args, 1))->zeroBits) && !op->noZeroFill;
    fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc%s(ptr %s, i64 %s)\n", bytes, zeroed ? "_zeroed" : "", scopeVal,
            byteSize);
    //D15b: a local "T[expr]" is left as the arena hands it over - chunk memory is recycled, so that is
    //genuinely whatever was there before. A D14a constructor field still zero-fills (noZeroFill is set
    //only at the local var-decl), since a field has no "= v" form to ask for a fill with.
    if (op->args.len > 1 && !(*(struct operand**)ListGetIdx(&op->args, 1))->zeroBits) { //D13c: a zero-bits fill is the memset
        //T7: "Array<T>(n, v)" - every element is v
        struct operand* fillOp = *(struct operand**)ListGetIdx(&op->args, 1);
        //the elements live where the array does (O5): a fill built here is built there, and one promoted into a
        //reference element is allocated there - it was left at its own address in this frame, read back after a return
        //...and a literal reaching a run-time-length element is that element's value, promoted (or its static data, T25d) -
        //it was stored as the literal's own fixed-length address: invalid IR for "Array<String&>(n, "")"
        bool promote = typeNeedsMallocPromotion(elemT, fillOp->type) || typeNeedsRuntimeLengthPromotion(elemT, fillOp->type);
        char* fillVal = promote ? cgBoundaryValue(ctx, fillOp, elemT, scopeVal) : cgValueForTarget(ctx, fillOp, elemT, scopeVal);
        cgFillLoop(ctx, elemT, bytes, count, fillVal);
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

//E28/S12b: where a conditional's or a match's value v is built when it has to be made into the result's reference type:
//where the value as a whole is being built into, else where the checker landed v. Never the result type's own tag - a
//reference taken from a call's result is tagged with the CALLEE's scope variable, which no frame here holds (resolving
//it crashed the compiler: "return wrap(e) if e != null else Expr.Num(1.0)")
static char* cgArmScope(struct cgCtx* ctx, struct operand* v, struct type resultT) {
    if (ctx->targetScopeOverride || !typeNeedsMallocPromotion(resultT, v->type)) return ctx->targetScopeOverride;
    return cgWhereBuilt(ctx, v);
}

//E28: "a if c else b" - the chosen value, converted to the conditional's type on its own path, through one slot.
//A value built here (text, an array) is built in the target's scope, which reaches the branch as the override.
char* cgCond(struct cgCtx* ctx, struct operand* op) {
    struct operand* c = *(struct operand**)ListGetIdx(&op->args, 0);
    char ty[256];
    llvmType(op->type, ty, sizeof(ty));
    char* slot = cgValueSlot(ctx, op->type, ty);
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
        cgStoreOperand(ctx, op->type, v, slot, cgArmScope(ctx, v, op->type), false, false);
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
        struct operand* l = *(struct operand**)ListGetIdx(&op->chainOperands, i);
        struct operand* r = *(struct operand**)ListGetIdx(&op->chainOperands, i + 1);
        char* lv = prev ? prev : cgValue(ctx, l);
        char* rv = cgValue(ctx, r);
        l->cgCached = lv;
        r->cgCached = rv;
        char* res = cgValue(ctx, cmp); //a built-in comparison, or a declared "<" (E31) - either reads the cache
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
    char* scopeVal = cgWhereBuilt(ctx, op);
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
    //D14b: room for more elements than an array of them can have would wrap the byte count - a range's count
    //reserved up front can be anything
    int id = ctx->lblCtr++;
    char* tooBig = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp ugt i64 %s, %lld\n", tooBig, room, ArrayLengthLimit(size));
    fprintf(ctx->fnOut, "  br i1 %s, label %%compr.big.%d, label %%compr.room.%d\n", tooBig, id, id);
    ctx->terminated = true;
    char lbl[40];
    snprintf(lbl, sizeof(lbl), "compr.big.%d", id);
    cgLabel(ctx, lbl);
    fputs("  call void @__olang_check_failed(ptr @__olang_msg_arraylen)\n", ctx->fnOut);
    snprintf(lbl, sizeof(lbl), "compr.room.%d", id);
    cgBr(ctx, lbl);
    cgLabel(ctx, lbl);
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
    if (TypeGetSize(v->type) == 8) return raw;
    char* ext = cgNewTmp(ctx);
    char* instr = TypeIsUnsigned(v->type) ? "zext" : "sext";
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
    if (op->catchClauses.len && !cgCatchDispatch(ctx, op, &op->catchClauses, NULL, NULL, op->cgEndLbl)) {
        //R9b: a clause took the error - its default stands in for the result
    } else if (op->isTried) {
        long long code = errorCode(ctx->curFunc->type, *builtin, wordOrd);
        cgCloseOwnScope(ctx);
        char codeText[32];
        snprintf(codeText, sizeof(codeText), "%lld", code);
        cgRetErrorCode(ctx, codeText);
        ctx->terminated = true;
    } else {
        if (abortMsg) {
            fprintf(ctx->fnOut, "  call void @__olang_check_failed(ptr %s)\n", abortMsg);
            cgBr(ctx, okLbl);
        } else { fputs("  unreachable\n", ctx->fnOut); ctx->terminated = true; }
    }
    cgLabel(ctx, okLbl);
}

//E31: a derived TryAt/TrySlice's check - v itself, once lo <= v < hi (<= hi when inclusive), compared as Int64
static char* cgAsI64(struct cgCtx* ctx, struct operand* x, char* v) {
    if (TypeGetSize(x->type) == 8) return v;
    char ty[64];
    llvmType(x->type, ty, sizeof(ty));
    char* w = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = %s %s %s to i64\n", w, TypeIsUnsigned(x->type) ? "zext" : "sext", ty, v);
    return w;
}

static char* cgBoundsValue(struct cgCtx* ctx, struct operand* op) {
    struct operand* vOp = *(struct operand**)ListGetIdx(&op->args, 0);
    struct operand* loOp = *(struct operand**)ListGetIdx(&op->args, 1);
    struct operand* hiOp = *(struct operand**)ListGetIdx(&op->args, 2);
    char* v = cgValue(ctx, vOp);
    char* v64 = cgAsI64(ctx, vOp, v);
    char* lo = cgAsI64(ctx, loOp, cgValue(ctx, loOp));
    char* hi = cgAsI64(ctx, hiOp, cgValue(ctx, hiOp));
    char* a = cgNewTmp(ctx);
    char* b = cgNewTmp(ctx);
    char* both = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = icmp sge i64 %s, %s\n", a, v64, lo);
    fprintf(ctx->fnOut, "  %s = icmp %s i64 %s, %s\n", b, op->isInclusive ? "sle" : "slt", v64, hi);
    fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", both, a, b);
    int id = ctx->lblCtr++;
    char okLbl[32], badLbl[32];
    snprintf(okLbl, sizeof(okLbl), "bounds.ok.%d", id);
    snprintf(badLbl, sizeof(badLbl), "bounds.bad.%d", id);
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", both, okLbl, badLbl);
    ctx->terminated = true;
    cgBoundsFailed(ctx, op, okLbl, badLbl);
    return v;
}


//E32: "x is Enum.Case" and "x as Enum.Case" - the tag tested, and for "as" the payload read. On a reference to an enum
//(T17d) the tag and payload are read through it, and a null one holds no case: "is" is false, "as" does not hold
static char* cgIsAs(struct cgCtx* ctx, struct operand* op) {
    struct operand* x = *(struct operand**)ListGetIdx(&op->args, 0);
    bool isAs = op->opType == OPERATION_AS;
    char* v = cgValue(ctx, x);
    bool viaRef = x->type.structMAlloc;
    struct type vt = x->type;
    vt.structMAlloc = false;
    bool payload = ChoiceHasPayload(vt);
    char xty[256];
    llvmType(vt, xty, sizeof(xty));
    char* hit;
    if (viaRef && isAs && op->noCheck) hit = "true"; //S13b: its case - and so that it is not null - was just tested
    else if (viaRef) {
        char* slot = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca i1\n", slot);
        fprintf(ctx->fnOut, "  store i1 false, ptr %s\n", slot);
        char* live = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp ne ptr %s, null\n", live, v);
        int id = ctx->lblCtr++;
        char loadLbl[32], endLbl[32];
        snprintf(loadLbl, sizeof(loadLbl), "isas.load.%d", id);
        snprintf(endLbl, sizeof(endLbl), "isas.end.%d", id);
        fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", live, loadLbl, endLbl);
        ctx->terminated = true;
        cgLabel(ctx, loadLbl);
        char* tag = cgNewTmp(ctx);
        if (payload) {
            char* tp = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 0\n", tp, xty, v);
            fprintf(ctx->fnOut, "  %s = load i64, ptr %s\n", tag, tp);
        } else fprintf(ctx->fnOut, "  %s = load i32, ptr %s\n", tag, v);
        char* h = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp eq %s %s, %lld\n", h, payload ? "i64" : "i32", tag, op->castTag);
        fprintf(ctx->fnOut, "  store i1 %s, ptr %s\n", h, slot);
        cgBr(ctx, endLbl);
        cgLabel(ctx, endLbl);
        hit = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load i1, ptr %s\n", hit, slot);
    } else {
        char* tag = v;
        if (payload) {
            tag = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = extractvalue %s %s, 0\n", tag, xty, v);
        }
        hit = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp eq %s %s, %lld\n", hit, payload ? "i64" : xty, tag, op->castTag);
    }
    if (!isAs) return hit;
    if (!op->noCheck) { //S13b: a pattern reads a payload only once its own test has selected the case
        int id = ctx->lblCtr++;
        char okLbl[32], badLbl[32];
        snprintf(okLbl, sizeof(okLbl), "as.ok.%d", id);
        snprintf(badLbl, sizeof(badLbl), "as.bad.%d", id);
        fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", hit, okLbl, badLbl);
        ctx->terminated = true;
        cgCheckFailed(ctx, op->checkRoot ? op->checkRoot : op, okLbl, badLbl, "INVALID", "@__olang_msg_as");
    }
    //the payload: in place behind a reference, else spilled - then its one field, or all of them as several results
    //(a tuple of the same layout)
    {
        struct var* c = ListGetIdx(&vt.vars, (int)op->castTag);
        char* payTy = structAggSpelled(c->type); //sized to the spelling, however many fields the case has
        char* slot = v;
        if (!viaRef) {
            slot = cgNewTmp(ctx);
            fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", slot, xty);
            fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", xty, v, slot);
        }
        char* pay = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 1\n", pay, xty, slot);
        char* at = pay;
        if (!op->type.isTuple) {
            at = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 0\n", at, payTy, pay);
        }
        return cgLoadOrAddr(ctx, op->type, at, false);
    }
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
    //E32b: "x as Array<T, N>&" - the whole of x, of length N exactly: one compare, and the pointer alone
    if (op->sliceExact) {
        char* same = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp eq i64 %s, %s\n", same, baseLen, hiVal);
        int eid = ctx->lblCtr++;
        char eBad[32], eOk[32];
        snprintf(eBad, sizeof(eBad), "as.len.bad.%d", eid);
        snprintf(eOk, sizeof(eOk), "as.len.ok.%d", eid);
        fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", same, eOk, eBad);
        ctx->terminated = true;
        cgBoundsFailed(ctx, op, eOk, eBad);
        return dataPtr;
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

static void rdSpellTypeB(struct type t, struct cgBuf* b);
static bool rdForDiag;              //spelling a type for a diagnostic (DiagSpellType) rather than for a rendering
static const struct var* rdOwnScope; //the implicit scope of the parameter being spelled, written as its bare "&"
static int rdSigDepth;               //how many signatures the type being spelled is inside

//a stable name for a type, for a linkonce_odr helper's symbol (a rendering, an enum's equality). It must be a pure
//function of the type's structure: each object names its helpers itself, and the linker keeps one body per name, so
//two different types sharing a name in two objects would share one body. An anonymous struct (a tuple, a payload)
//used to be named by its heap address and an anonymous enum by a per-object counter, either of which two objects
//could give two different types. Each part's key is length-prefixed, so no two structures spell one key.
static void rdKey(struct type t, struct cgBuf* b) {
    char inner[512] = "";
    if (t.owner && t.name.len > 0) mangleTypeName(t.owner, t.name, inner, sizeof(inner));
    switch (t.bType) {
        case BASETYPE_ARRAY: {
            struct cgBuf e = {0};
            rdKey(*t.arrElem, &e);
            if (t.arrMalloc) cgBufAdd(b, "%s%sa.r.%s", inner, t.structMAlloc ? "m" : "", cgBufStr(&e));
            else cgBufAdd(b, "%s%sa.%lld.%s", inner, t.structMAlloc ? "m" : "", t.arrLen ? t.arrLen->intLiteralVal : 0,
                          cgBufStr(&e));
            free(e.p);
            return;
        }
        case BASETYPE_STRUCT: case BASETYPE_CHOICE:
            cgBufAdd(b, "%s", t.structMAlloc ? "m" : "");
            if (inner[0]) { cgBufAdd(b, "%s", inner); return; }
            cgBufAdd(b, "anon.%c%d", t.bType == BASETYPE_CHOICE ? 'e' : t.isTuple ? 't' : 's', t.vars.len);
            for (int i = 0; i < t.vars.len; i++) {
                struct var* m = ListGetIdx(&t.vars, i);
                struct cgBuf mk = {0};
                rdKey(m->type, &mk);
                if (t.isTuple) cgBufAdd(b, ".%zu.%s", mk.len, cgBufStr(&mk));
                else cgBufAdd(b, ".%d.%.*s.%zu.%s", m->name.len, m->name.len, m->name.ptr, mk.len, cgBufStr(&mk));
                free(mk.p);
            }
            return;
        case BASETYPE_FUNC: { //structural, so its spelling is its identity - made symbol-safe
            struct cgBuf sp = {0};
            rdSpellTypeB(t, &sp);
            char* text = cgBufStr(&sp);
            for (size_t i = 0; text[i]; i++) {
                char c = text[i];
                bool ok = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9');
                if (ok) cgBufAdd(b, "%c", c);
                else cgBufAdd(b, "_%02x", (unsigned char)c);
            }
            free(sp.p);
            return;
        }
        default: {
            char ty[64];
            llvmType(t, ty, sizeof(ty));
            cgBufAdd(b, "%s%s%s", inner, inner[0] ? "." : "", PrimInfo(t.bType) ? PrimInfo(t.bType)->name : ty); //T4
            return;
        }
    }
}

//a type spelled as it is written in source - the element type an array rendering starts with, and the
//parameter and result types of a function rendering. Spelled into a growable buffer: a fixed one per level cut a
//long type short, and two long function types then shared a rendering helper's name

//"(a int32, b mut Point&) int32 ? E + F", the part of a signature after its name
static void rdSpellSigB(struct type f, struct cgBuf* b) {
    rdSigDepth++;
    cgBufAdd(b, "(");
    for (int i = 0; i < f.vars.len; i++) {
        struct var* p = ListGetIdx(&f.vars, i);
        cgBufAdd(b, "%s%.*s %s", i ? ", " : "", p->name.len, p->name.ptr, p->mut ? "mut " : "");
        struct type pt = p->type;
        pt.refMut = false; //written once, before the name's type, as the parameter's own "mut"
        const struct var* outer = rdOwnScope;
        struct str own = pt.scopeParam ? pt.scopeParam->name : (struct str){0}; //"&p" is p's own
        bool isOwn = own.len == p->name.len + 1 && own.ptr[0] == '&' && !memcmp(own.ptr + 1, p->name.ptr, (size_t)p->name.len);
        rdOwnScope = isOwn ? pt.scopeParam : NULL;
        rdSpellTypeB(pt, b);
        rdOwnScope = outer;
    }
    cgBufAdd(b, ")");
    if (f.hasRetType && f.retType) {
        cgBufAdd(b, " ");
        rdSpellTypeB(*f.retType, b);
    }
    //R16: the default error is spelled by the "?" itself, and never by name
    int written = 0;
    if (f.errors.len) cgBufAdd(b, " ?");
    for (int i = 0; i < f.errors.len; i++) {
        struct type* e = *(struct type**)ListGetIdx(&f.errors, i);
        if (TypeIsSame(*e, *SemanticGenericErrorType())) continue;
        cgBufAdd(b, "%s%.*s", written++ ? " + " : " ", e->name.len, e->name.ptr);
    }
    rdSigDepth--;
}

static void rdSpellTypeB(struct type t, struct cgBuf* b) {
    char mark[80] = "";
    if (t.structMAlloc) {
        //O4b/O13: an implicit scope is named "&p" (parameter p's) or "&result" - which is spelled "&p" where another
        //parameter or the result names it, and as the bare "&" it is written as on p itself and on a built result
        struct str sn = t.scopeParam ? t.scopeParam->name : (struct str){0};
        bool implicitName = sn.len && sn.ptr[0] == '&';
        //a diagnostic names a scope only inside a signature, where it is part of the type; elsewhere it is the scope
        //checks' business, which say so in words
        if (!sn.len || t.scopeParam == rdOwnScope || StrCmp(sn, StrFromCStr("&result")) || (rdForDiag && !rdSigDepth))
            snprintf(mark, sizeof(mark), "&");
        else snprintf(mark, sizeof(mark), "%s%.*s", implicitName ? "" : "&", sn.len, sn.ptr);
    }
    //a diagnostic tells apart what a rendering need not: a writable reference from a read-only one, at every level
    if (rdForDiag && t.structMAlloc && t.refMut) cgBufAdd(b, "mut ");
    if (t.bType == BASETYPE_ARRAY && !(t.owner && t.name.len)) { //T7: as it is written - T7c: with its length if fixed
        cgBufAdd(b, "Array<");
        rdSpellTypeB(*t.arrElem, b);
        if (t.arrLenArg) { cgBufAdd(b, ", "); rdSpellTypeB(*t.arrLenArg, b); }
        else if (!t.arrMalloc && t.arrLen) cgBufAdd(b, ", %lld", t.arrLen->intLiteralVal);
        cgBufAdd(b, ">%s", mark);
        return;
    }
    if (t.bType == BASETYPE_CONST) { //G25: a constant argument is its value, as it would be written
        if (!t.constKnown) {
            struct str src = SemanticConstPatternSource(t);
            cgBufAdd(b, "%.*s", src.len, src.ptr);
        } else if (t.constOf && t.constOf->bType == BASETYPE_CHOICE && t.constVal >= 0 && t.constVal < t.constOf->vars.len) {
            struct var* c = ListGetIdx(&t.constOf->vars, (int)t.constVal);
            cgBufAdd(b, "%.*s.%.*s", t.constOf->name.len, t.constOf->name.ptr, c->name.len, c->name.ptr);
        } else if (t.constOf && t.constOf->bType == BASETYPE_BOOL) {
            cgBufAdd(b, "%s", t.constVal ? "true" : "false");
        } else if (t.constOf && PrimInfo(t.constOf->bType) && PrimInfo(t.constOf->bType)->kind == 'u') {
            cgBufAdd(b, "%llu", (unsigned long long)t.constVal); //a U64 constant holds its bits
        } else cgBufAdd(b, "%lld", t.constVal);
        return;
    }
    if (t.bType == BASETYPE_FUNC) {
        cgBufAdd(b, "fn");
        rdSpellSigB(t, b);
        return;
    }
    if (t.bType == BASETYPE_TYPEVAR) { cgBufAdd(b, "<%.*s>", t.name.len, t.name.ptr); return; }
    if (t.isTuple) {
        cgBufAdd(b, "(");
        for (int i = 0; i < t.vars.len; i++) {
            if (i) cgBufAdd(b, ", ");
            rdSpellTypeB(((struct var*)ListGetIdx(&t.vars, i))->type, b);
        }
        cgBufAdd(b, ")");
        return;
    }
    if (t.genericOrigin && t.typeArgs.len) {
        cgBufAdd(b, "%.*s<", t.genericOrigin->name.len, t.genericOrigin->name.ptr);
        for (int i = 0; i < t.typeArgs.len; i++) {
            if (i) cgBufAdd(b, ", ");
            rdSpellTypeB(*(struct type*)ListGetIdx(&t.typeArgs, i), b);
        }
        cgBufAdd(b, ">%s", mark);
        return;
    }
    if (t.name.len) { cgBufAdd(b, "%.*s%s", t.name.len, t.name.ptr, mark); return; }
    if (rdForDiag && t.bType == BASETYPE_CHOICE) { //an anonymous enum: its cases are what it is
        cgBufAdd(b, "enum {");
        for (int i = 0; i < t.vars.len; i++) {
            struct var* c = ListGetIdx(&t.vars, i);
            cgBufAdd(b, " %.*s", c->name.len, c->name.ptr);
            if (c->type.vars.len) { //its payload, as its fields are written
                cgBufAdd(b, "(");
                for (int k = 0; k < c->type.vars.len; k++) {
                    struct var* fv = ListGetIdx(&c->type.vars, k);
                    cgBufAdd(b, "%s%.*s ", k ? ", " : "", fv->name.len, fv->name.ptr);
                    rdSpellTypeB(fv->type, b);
                }
                cgBufAdd(b, ")");
            }
        }
        cgBufAdd(b, " }%s", mark);
        return;
    }
    const char* prim = t.bType == BASETYPE_BOOL ? "Bool" : PrimInfo(t.bType) ? PrimInfo(t.bType)->name : "?"; //T4
    cgBufAdd(b, "%s%s", prim, mark);
}

static void rdSpellType(struct type t, char* buf, size_t n) {
    struct cgBuf b = {0};
    rdSpellTypeB(t, &b);
    snprintf(buf, n, "%s", cgBufStr(&b));
    free(b.p);
}

static void rdSpellSig(struct type f, char* buf, size_t n) {
    struct cgBuf b = {0};
    rdSpellSigB(f, &b);
    snprintf(buf, n, "%s", cgBufStr(&b));
    free(b.p);
}

//the compile-time evaluator renders "$x" exactly as the generated code does, so it spells types with these
void RdSpellType(struct type t, char* buf, size_t n) { rdSpellType(t, buf, n); }
void RdSpellSig(struct type f, char* buf, size_t n) { rdSpellSig(f, buf, n); }
//a type as a diagnostic names it (errmsg.c's "%t")
void DiagSpellType(struct type t, char* buf, size_t n) {
    rdForDiag = true;
    t.refMut = false; //a reference's own permission is T25c's to report, in words - inner levels' are part of the type
    rdSpellType(t, buf, n);
    rdForDiag = false;
}


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

//a number, through the runtime's writers: an integer's writes exactly its digits, a float's goes through snprintf -
//while writing, the capacity only bounds what snprintf may write; the measured length is exact, and its trailing
//NUL lands on the next piece's first byte (or on the one spare byte a join allocates past the end), which is
//overwritten or unused
static void rdPutNumber(struct cgCtx* ctx, struct type t, char* addr) {
    char ty[64];
    llvmType(t, ty, sizeof(ty));
    char* v = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", v, ty, addr);
    bool isFloat = TypeIsFloat(t);
    bool u64 = t.bType == BASETYPE_U64;
    char* wide = cgNewTmp(ctx);
    //E11a: "x + -0.0" is x for every x - a negative zero included, which "+ 0.0" would turn into a positive one
    if (t.bType == BASETYPE_FLOAT64) fprintf(ctx->fnOut, "  %s = fadd double %s, -0.0\n", wide, v);
    else if (t.bType == BASETYPE_BF16) fprintf(ctx->fnOut, "  %s = fadd double %s, -0.0\n", wide, cgWidenBF16(ctx, v, "double"));
    else if (isFloat) fprintf(ctx->fnOut, "  %s = fpext %s %s to double\n", wide, ty, v);
    else if (TypeGetSize(t) == 8) fprintf(ctx->fnOut, "  %s = add i64 %s, 0\n", wide, v);
    else fprintf(ctx->fnOut, "  %s = %s %s %s to i64\n", wide, TypeIsUnsigned(t) ? "zext" : "sext", ty, v);
    char* at;
    char* p = rdHere(ctx, &at);
    char* cap = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = select i1 %%rd.measure, i64 0, i64 64\n", cap);
    char* k = cgNewTmp(ctx);
    if (isFloat) {
        enum floatKind fk = t.bType == BASETYPE_FLOAT32 ? FLOAT_KIND_F32 : t.bType == BASETYPE_F16 ? FLOAT_KIND_F16
                          : t.bType == BASETYPE_BF16 ? FLOAT_KIND_BF16 : FLOAT_KIND_F64;
        fprintf(ctx->fnOut, "  %s = call i64 @__olang_fmt_float(ptr %s, i64 %s, double %s, i32 %d)\n", k, p, cap, wide, (int)fk);
        ctx->floatText = true;
    } else {
        fprintf(ctx->fnOut, "  %s = call i64 @__olang_fmt_%s(ptr %s, i64 %s)\n", k, u64 ? "u64" : "i64", p, wide);
    }
    rdAdvance(ctx, at, k);
}

//E11c: the text the type's own Str gives for the value at addr. Str has no effect (the checker saw to that), so it
//is simply called again for the writing pass. What it builds lives in a scope of its own, closed once copied.
static void rdPutStr(struct cgCtx* ctx, struct var* m, char* addr) {
    char sym[256];
    mangleFuncSym(m, sym, sizeof(sym));
    struct var* recv = ListGetIdx(&m->type.vars, 0);
    char recvTy[256], retTy[256];
    llvmType(recv->type, recvTy, sizeof(recvTy));
    llvmFuncRetType(m->type, retTy, sizeof(retTy));
    char* scope = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca %%olang.scope\n", scope);
    fprintf(ctx->fnOut, "  store %%olang.scope zeroinitializer, ptr %s\n", scope);
    char args[2048] = "";
    for (int k = 0; k < m->type.scopeVars.len; k++) {
        char piece[64];
        snprintf(piece, sizeof(piece), "%sptr %s", k ? ", " : "", scope);
        strncat(args, piece, sizeof(args) - strlen(args) - 1);
    }
    char piece[320];
    if (!strcmp(recvTy, "ptr")) {
        snprintf(piece, sizeof(piece), "%sptr %s", strlen(args) ? ", " : "", addr);
    } else if (cgViaMemory(recv->type)) { //a big receiver by value: Str's own copy (cgViaMemory)
        char* rc = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca %s, align %lld\n", rc, recvTy, cgStackAlign(recv->type));
        fprintf(ctx->fnOut, "  call void @llvm.memcpy.p0.p0.i64(ptr %s, ptr %s, i64 %lld, i1 false)\n", rc, addr,
                TypeGetSize(recv->type));
        snprintf(piece, sizeof(piece), "%sptr %s", strlen(args) ? ", " : "", rc);
    } else {
        char* rv = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", rv, recvTy, addr);
        snprintf(piece, sizeof(piece), "%s%s %s", strlen(args) ? ", " : "", recvTy, rv);
    }
    strncat(args, piece, sizeof(args) - strlen(args) - 1);
    char* r = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call %s %s(%s)\n", r, retTy, sym, args);
    char* len = cgNewTmp(ctx);
    char* src = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 0\n", len, r);
    fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 1\n", src, r);
    rdPut(ctx, src, len);
    fprintf(ctx->fnOut, "  call void @__olang_scope_close(ptr %s)\n", scope);
}

//renders the value of type t at addr into the helper being emitted: a primitive inline, anything else
//through its own helper
static void rdPutValue(struct cgCtx* ctx, struct type t, char* addr, char* depth, bool rowCtx) {
    if (!t.structMAlloc && SemanticStrOf(t)) { rdPutStr(ctx, SemanticStrOf(t), addr); return; } //E11c
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
        if (TypeIsChar(t)) { rdPutQuoted(ctx, addr, "1", '\''); return; } //nested: 'c' (T29h)

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
    if (TypeIsChar(elem)) { rdPutQuoted(ctx, base, count, '"'); return; } //T29h: Chars are text
    char ety[256];
    llvmType(elem, ety, sizeof(ety));
    int id = ctx->lblCtr++;
    char* iSlot = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca i64\n", iSlot);
    fprintf(ctx->fnOut, "  store i64 0, ptr %s\n", iSlot);
    if (!row) {
        struct type base0 = elem;
        while (base0.bType == BASETYPE_ARRAY && !base0.structMAlloc && !(base0.owner && base0.name.len)
               && !TypeIsChar(*base0.arrElem)) base0 = *base0.arrElem;
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
    if (!t.structMAlloc && SemanticStrOf(t)) { rdPutStr(ctx, SemanticStrOf(t), "%rd.val"); return; } //E11c
    int id = ctx->lblCtr++;
    bool markedRuntime = t.bType == BASETYPE_ARRAY && t.arrMalloc && t.structMAlloc;
    bool markedPtr = t.structMAlloc && !markedRuntime
            && (t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_ARRAY || t.bType == BASETYPE_CHOICE);
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
        case BASETYPE_FUNC: {
            //E11a: a function value is its signature - what it is, not what it holds. A null one is "null".
            char* w = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = load ptr, ptr %%rd.val\n", w);
            char* isNull = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = icmp eq ptr %s, null\n", isNull, w);
            fprintf(ctx->fnOut, "  br i1 %s, label %%rd.null.%d, label %%rd.live.%d\nrd.null.%d:\n", isNull, id, id, id);
            rdPutText(ctx, "null");
            fprintf(ctx->fnOut, "  br label %%rd.end.%d\nrd.live.%d:\n", id, id);
            char spelled[2400];
            rdSpellType(t, spelled, sizeof(spelled));
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
    struct cgBuf key = {0};
    rdKey(t, &key);
    struct cgBuf symB = {0};
    cgBufAdd(&symB, "@olang.rd.%s%s", row ? "row." : "", cgBufStr(&key));
    free(key.p);
    char* sym = cgBufStr(&symB);
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
    char* scopeVal = cgWhereBuilt(ctx, op);
    struct type textT = op->type;
    struct list pieces = ListInit(sizeof(struct textPiece));
    char* total = "0";
    for (int i = 0; i < parts.len; i++) {
        struct operand* p = *(struct operand**)ListGetIdx(&parts, i);
        struct textPiece tp = {0};
        struct operand* in = p->opType == OPERATION_STR_OF ? *(struct operand**)ListGetIdx(&p->args, 0) : NULL;
        bool viaStr = in && SemanticStrOf(in->type); //E11c: rendered by the type's own Str, at the top level too
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
        } else if (TypeIsChar(in->type) && !viaStr) {
            char* addr = cgValueAddr(ctx, in);
            char* d1 = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } undef, i64 1, 0\n", d1);
            tp.desc = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = insertvalue { i64, ptr } %s, ptr %s, 1\n", tp.desc, d1, addr);
        } else if (in->type.bType == BASETYPE_ARRAY && TypeIsChar(*in->type.arrElem) && !viaStr) {
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
//the type a try's slot is stored at (R9a): a built result's scope is the callee's result-scope variable, which
//names nothing in this function - what is stored there lives where the call's result lands, the scope being built
//into or this block, given back in *where
//R9a: a try's value slot, and where a default standing for its result is built: where the call put its result (the
//scope it passed for it), else - an index, a slice - the scope the slot's type names here
static struct type cgTrySlotType(struct cgCtx* ctx, struct operand* op, struct type t, char** where) {
    *where = NULL;
    if (op->opType == OPERATION_FUNCCALL && op->cgResultScope) {
        *where = op->cgResultScope;
        t.scopeParam = NULL;
        return t;
    }
    if (t.scopeParam && !cgFindLocalKind(ctx, t.scopeParam->name, true)) {
        *where = cgWhereBuilt(ctx, op);
        t.scopeParam = NULL;
    }
    return t;
}

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
    char* where = NULL;
    struct type st = cgTrySlotType(ctx, op, op->type, &where);
    cgStoreInto(ctx, st, st, v, slot, where, false, false, false);
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
    char* where = NULL;
    struct type dt = cgTrySlotType(ctx, op, op->tryDefaultType, &where);
    char* prevTarget = ctx->targetScopeOverride;
    if (where) ctx->targetScopeOverride = where; //a value holding references keeps them there too
    char* dv = cgValueForTarget(ctx, dflt, dt, where);
    ctx->targetScopeOverride = prevTarget;
    cgStoreInto(ctx, dt, dflt->type, dv, slot, where, false, OperandIsLvalue(dflt), false);
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
                //a clause of a try covering several things may name an error this call cannot produce (E31a)
                bool produced = false;
                for (int k = 0; k < funcType->errors.len && !produced; k++)
                    produced = TypeIsSame(**(struct type**)ListGetIdx(&funcType->errors, k), cm->errType);
                if (!produced) continue;
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
        //a failure from a block nested inside the try (a comprehension's loop, S9e) leaves those blocks first, as a
        //break does, and the clause then runs where the try is
        int savedSlots = ctx->blockSlots.len, savedDepth = ctx->blockDepth;
        bool unwound = op->cgDepthSet && ctx->blockSlots.len > op->cgSlots;
        char* keptSlots[64];
        char* keptJoins[64];
        if (unwound && savedSlots - op->cgSlots > 64) unwound = false; //deeper than any program nests
        for (int i = op->cgSlots; unwound && i < savedSlots; i++) {
            keptSlots[i - op->cgSlots] = *(char**)ListGetIdx(&ctx->blockSlots, i);
            keptJoins[i - op->cgSlots] = *(char**)ListGetIdx(&ctx->blockJoins, i);
        }
        if (unwound) {
            for (int i = ctx->blockSlots.len - 1; i >= op->cgSlots; i--) {
                char* jh = *(char**)ListGetIdx(&ctx->blockJoins, i);
                if (jh) fprintf(ctx->fnOut, "  call void @__olang_join_tasks(ptr %s)\n", jh);
                fprintf(ctx->fnOut, "  call void @__olang_scope_close(ptr %s)\n", *(char**)ListGetIdx(&ctx->blockSlots, i));
            }
            if (ctx->ownUnwindNode) fprintf(ctx->fnOut, "  store ptr %s, ptr @__olang_unwind_top\n", cgUnwindBelow(ctx, op->cgSlots));
            ctx->blockSlots.len = op->cgSlots;
            ctx->blockJoins.len = op->cgSlots;
            ctx->blockDepth = op->cgDepth;
        }
        if (cc->hasBlock) cgBlock(ctx, &cc->block);
        if (cc->dflt) cgTryDefaultStore(ctx, op, cc->dflt);
        else if (endLbl) cgBr(ctx, endLbl);
        else if (!ctx->terminated) { fputs("  unreachable\n", ctx->fnOut); ctx->terminated = true; }
        if (unwound) { //the clause's own blocks reused the entries it left; the try's inner ones come back
            ctx->blockSlots.len = op->cgSlots;
            ctx->blockJoins.len = op->cgSlots;
            for (int i = 0; i < savedSlots - op->cgSlots; i++) {
                ListAdd(&ctx->blockSlots, &keptSlots[i]);
                ListAdd(&ctx->blockJoins, &keptJoins[i]);
            }
            ctx->blockDepth = savedDepth;
        }
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
char* cgMatchValue(struct cgCtx* ctx, struct operand* op);
char* cgCmpChain(struct cgCtx* ctx, struct operand* op);
char* cgValue(struct cgCtx* ctx, struct operand* op) {
    if (op->cgCached) return op->cgCached; //E30: a chain's shared operand, computed once
    if (op->isTried && ctx->tdOp != op) { //where its clauses run, should a failure come from a block nested inside it
        op->cgSlots = ctx->blockSlots.len;
        op->cgDepth = ctx->blockDepth;
        op->cgDepthSet = true;
    }
    if (op->tryNeedsSlot && ctx->tdOp != op) return cgTryDefaultValue(ctx, op);
    switch (op->opType) {
        case OPERATION_COND: return cgCond(ctx, op);
        case OPERATION_MATCH: return cgMatchValue(ctx, op);
        case OPERATION_CMP_CHAIN: return cgCmpChain(ctx, op);
        case OPERATION_SEQ:
            if (op->isTryStmt) { //E31: "try x[i] = v" - a clause that takes an error continues after it
                char* end = MallocOrCrash(32);
                snprintf(end, 32, "trystore.end.%d", ctx->lblCtr++);
                op->cgEndLbl = end;
                for (int i = 0; i < op->comprBody.len; i++) cgStatement(ctx, ListGetIdx(&op->comprBody, i));
                cgBr(ctx, end);
                cgLabel(ctx, end);
                return "";
            }
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
        case OPERATION_BOUNDS: return cgBoundsValue(ctx, op);
        case OPERATION_IS: case OPERATION_AS: return cgIsAs(ctx, op);
        case OPERATION_SIZED_ARRAY_ALLOC: return cgSizedArrayAlloc(ctx, op);
        case OPERATION_ZERO: { //D13c: zero bits of the type, as a value or (for one passed by reference) a slot holding it
            char ty[256];
            llvmType(op->type, ty, sizeof(ty));
            if (!typeIsByRef(op->type)) return "zeroinitializer";
            char* slot = cgValueSlot(ctx, op->type, ty);
            if (cgViaMemory(op->type)) fprintf(ctx->fnOut, "  call void @llvm.memset.p0.i64(ptr %s, i8 0, i64 %lld, i1 false)\n", slot, TypeGetSize(op->type));
            else fprintf(ctx->fnOut, "  store %s zeroinitializer, ptr %s\n", ty, slot);
            //T7c: an Array<T, N> whose elements' zero value a constructor gives - each element that value, unless it was
            //found to be zero bits while compiling
            struct operand* fill = op->args.len ? *(struct operand**)ListGetIdx(&op->args, 0) : NULL;
            if (fill && !fill->zeroBits && op->type.bType == BASETYPE_ARRAY && op->type.arrLen) {
                struct type elemT = *op->type.arrElem;
                char* fv = cgValueForTarget(ctx, fill, elemT, NULL);
                char count[32];
                snprintf(count, sizeof(count), "%lld", op->type.arrLen->intLiteralVal);
                cgFillLoop(ctx, elemT, slot, count, fv);
            }
            return slot;
        }
        case OPERATION_COMPREHENSION: return cgComprehension(ctx, op);
        case OPERATION_COMPR_PUSH: cgComprPush(ctx, op); return "";
        case OPERATION_COMPR_RESERVE: cgComprReserve(ctx, op); return "";
        case OPERATION_NUMERIC_CONVERT: return cgNumericConvert(ctx, op);
        case OPERATION_BITCAST: { //E33: the same bits read as the other type - a value, so no load or store is involved
            struct operand* src = *(struct operand**)ListGetIdx(&op->args, 0);
            char* v = cgValue(ctx, src);
            char from[64], to[64];
            llvmType(src->type, from, sizeof(from));
            llvmType(op->type, to, sizeof(to));
            //LLVM 18's InstCombine takes a bitcast between half and bfloat for a no-op cast, so it merges
            //F16 bits made into a BF16 (or the reverse) with the conversion that follows: fpext, fptosi and
            //the rest then read the bits as the other type (fuzz/repro/bf16bitcastfold.ll). An empty asm
            //on the integer keeps the two bitcasts apart; it emits no instruction.
            if (op->type.bType == BASETYPE_F16 || op->type.bType == BASETYPE_BF16) {
                char* opaque = cgNewTmp(ctx);
                fprintf(ctx->fnOut, "  %s = call i16 asm \"\", \"=r,0\"(i16 %s)\n", opaque, v);
                v = opaque;
            }
            char* r = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = bitcast %s %s to %s\n", r, from, v, to);
            return r;
        }
        case OPERATION_READ_VAR: case OPERATION_INDEX: case OPERATION_MEMBER: {
            char* addr = cgAddr(ctx, op);
            //a bare read of a global FUNCTION (not a local variable/parameter that merely *holds* a
            //function pointer, e.g. "f" inside "func apply(f func(...) ? T)") has no separate storage
            //slot to load through at all - cgLookupVarAddr's "not a local, so mangle as global" branch
            //returns the function's own mangled symbol directly, which unlike every other global IS
            //already the value (an LLVM `define`, not a `global` storage declaration) - loading "through"
            //it would read the function's own machine code as if it were a stored pointer. Every other
            //global genuinely is a storage slot, so this only carves out the function case.
            if (op->opType == OPERATION_READ_VAR && op->type.bType == BASETYPE_FUNC && !op->readVar->isGlobalVar
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
//P1: one task. Its arguments are evaluated here, in the spawner's frame, by the very lowering an ordinary call
//uses (cgCallTargetAndArgs), then boxed into an env struct that a per-task trampoline unpacks on the new thread.
//The env lives in the join block's arena, which outlives the task (P1b). Field 0 is the target itself, which makes a
//call through a function value work the same way a direct one does. Appends one entry to "merges" per scope this
//task was handed.
//P1g: `dstOps` are the lvalues the call's results are stored into. Their ADDRESSES are taken here,
//in the spawner, and captured in the env - the task stores through it when its call returns. Taking it
//here rather than on the task is what makes "spawn results[i] = f(i)" in a loop mean slot i: the index is
//evaluated at the spawn, not whenever the task happens to run.
void cgSpawnTask(struct cgCtx* ctx, struct operand* op, struct list* merges, struct list* dstOps) {
    struct var* func = op->readVar;
    int id = ctx->lblCtr++;
    char* joinScope = cgScopeSlotAt(ctx, ctx->joinDepth);

    //S4: left to right - each destination's place (its base and index, as written) before the call's operands
    int nDst = dstOps ? dstOps->len : 0;
    char** dstAddr = MallocOrCrash(sizeof(char*) * (size_t)(nDst + 1));
    for (int d = 0; d < nDst; d++) {
        struct operand* dstOp = *(struct operand**)ListGetIdx(dstOps, d);
        dstAddr[d] = dstOp ? cgAddr(ctx, dstOp) : NULL; //D8c: a "_" captures nothing and its result is not stored
    }
    //the very marshalling an ordinary call performs (cgCallTargetAndArgs), captured rather than passed. What it builds
    //with nowhere of its own to go - a temporary argument, a scope still following the result - lasts until the join,
    //so it is built in the join block, never in a block the task may outlive (P2)
    struct list args = ListInit(sizeof(struct cgArg));
    char* prevTarget = ctx->targetScopeOverride;
    ctx->targetScopeOverride = joinScope;
    char* target = cgCallTargetAndArgs(ctx, op, &args, merges, NULL);
    ctx->targetScopeOverride = prevTarget;
    int nArgs = args.len; //everything after this is a destination, captured and never passed
    int* dstIdx = MallocOrCrash(sizeof(int) * (size_t)(nDst + 1));
    for (int d = 0; d < nDst; d++) {
        dstIdx[d] = -1;
        if (!dstAddr[d]) continue;
        dstIdx[d] = args.len;
        cgArgAdd(&args, "ptr", dstAddr[d]);
    }
    //O1b/P2: the task's own stand-in for the program's scope, which code it runs may build into (a global assigned, a
    //result borrowed from a global) - folded into the spawner's at the join, as every other scope it was handed is
    int progIdx = args.len;
    cgArgAdd(&args, "ptr", cgSpawnSubScope(ctx, merges, cgProgramScope(ctx)));
    struct cgBuf envB = {0};
    cgBufAdd(&envB, "{ ptr");
    for (int i = 0; i < args.len; i++) cgBufAdd(&envB, ", %s", ((struct cgArg*)ListGetIdx(&args, i))->ty);
    cgBufAdd(&envB, " }");
    char* envTy = cgBufStr(&envB);

    char* env = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 ptrtoint (ptr getelementptr (%s, ptr null, i32 1) to i64))\n",
            env, joinScope, envTy);
    char* fnSlot = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 0\n", fnSlot, envTy, env);
    fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", target, fnSlot);
    for (int i = 0; i < args.len; i++) {
        struct cgArg* a = ListGetIdx(&args, i);
        char* slot = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i32 0, i32 %d\n", slot, envTy, env, i +1);
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", a->ty, a->val, slot);
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
    struct cgBuf callArgs = {0};
    bool viaMem = cgRetViaMemory(func->type);
    if (viaMem) { //a big result lands in the task's own frame, then goes where the destinations say
        char rty[256];
        llvmType(*func->type.retType, rty, sizeof(rty));
        fprintf(ctx->out, "  %%rslot = alloca %s, align %lld\n", rty, cgStackAlign(*func->type.retType));
        cgBufAdd(&callArgs, "ptr %%rslot");
    }
    for (int i = 0; i < args.len; i++) {
        char* ty = ((struct cgArg*)ListGetIdx(&args, i))->ty;
        fprintf(ctx->out, "  %%s%d = getelementptr %s, ptr %%env, i32 0, i32 %d\n", i, envTy, i +1);
        fprintf(ctx->out, "  %%a%d = load %s, ptr %%s%d\n", i, ty, i);
        if (i >= nArgs) continue; //a destination is captured, never passed to the call
        cgBufAdd(&callArgs, "%s%s %%a%d", callArgs.len ? ", " : "", ty, i);
    }
    fprintf(ctx->out, "  %%prevprog = load ptr, ptr @__olang_prog_scope\n  store ptr %%a%d, ptr @__olang_prog_scope\n", progIdx);
    if (viaMem) {
        fprintf(ctx->out, "  call void %%fn(%s)\n", cgBufStr(&callArgs));
        struct type rt = *func->type.retType;
        char rty[256];
        llvmType(rt, rty, sizeof(rty));
        for (int d = 0; d < nDst; d++) {
            if (dstIdx[d] < 0) continue;
            if (!rt.isTuple) {
                fprintf(ctx->out, "  call void @llvm.memcpy.p0.p0.i64(ptr %%a%d, ptr %%rslot, i64 %lld, i1 false)\n",
                        dstIdx[d], TypeGetSize(rt));
                continue;
            }
            struct type et = (*(struct var*)ListGetIdx(&rt.vars, d)).type;
            fprintf(ctx->out, "  %%rp.%d = getelementptr %s, ptr %%rslot, i32 0, i32 %d\n", d, rty, d);
            fprintf(ctx->out, "  call void @llvm.memcpy.p0.p0.i64(ptr %%a%d, ptr %%rp.%d, i64 %lld, i1 false)\n",
                    dstIdx[d], d, TypeGetSize(et));
        }
    } else if (func->type.hasRetType) {
        char retTy[256];
        llvmType(*func->type.retType, retTy, sizeof(retTy));
        fprintf(ctx->out, "  %%r = call %s %%fn(%s)\n", retTy, cgBufStr(&callArgs));
        //P1g: the result lands in the spawner's storage the instant the call returns. A plain store is
        //all this can be - the types were required to agree exactly (SPAWN_RESULT_TYPE) precisely
        //because there is no caller frame here to run a conversion or a promotion in.
        if (func->type.retType->isTuple) {
            for (int d = 0; d < nDst; d++) {
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
        fprintf(ctx->out, "  call void %%fn(%s)\n", cgBufStr(&callArgs));
    }
    //P2a used to drain this thread's chunk pool here, because the thread was about to exit and take the
    //pool with it. A worker does not exit (P1e), so the pool stays and the next task to run on this
    //worker reuses it - the leak P2a fixed is gone by construction rather than by cleanup, and the
    //retained memory is bounded by the number of workers instead of the number of tasks.
    fprintf(ctx->out, "  store ptr %%prevprog, ptr @__olang_prog_scope\n  ret ptr null\n}\n\n");
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
static void cgEnsureBlockSlot(struct cgCtx* ctx, int idx);
void cgJoin(struct cgCtx* ctx, struct statement* s) {
    char* prevHead = ctx->joinTaskHead;
    int prevDepth = ctx->joinDepth;
    int idx = ctx->blockDepth - 1;
    if (idx >= 0 && ctx->ownScopeSlot) cgEnsureBlockSlot(ctx, idx);
    char* head = (idx >= 0 && idx < ctx->joinPool.len) ? *(char**)ListGetIdx(&ctx->joinPool, idx) : NULL;
    if (head) fprintf(ctx->fnOut, "  store ptr null, ptr %s\n", head);
    ctx->joinTaskHead = head;
    ctx->joinDepth = ctx->blockDepth + 1;
    cgBlockJoining(ctx, &s->block, head);
    ctx->joinTaskHead = prevHead;
    ctx->joinDepth = prevDepth;
}

//O2: one scope header, task-list head and unwind node per block nesting depth, alloca'd in the ENTRY block as the
//first block at that depth is opened. Emitting them where a block starts would put an alloca inside a loop, growing
//the stack by a header per iteration - a stack overflow at a few million iterations, which is exactly the workload
//block scopes exist to make cheap. One slot per depth is enough because only one block at a given depth is ever open
//at a time within a frame, and closing resets the header to empty. They used to be counted before the body was
//emitted, by a walker kept in step with every construct that opens a block - and it missed the blocks inside a match
//used as a value, its case values, guards and pattern tests, which then got no arena at all and allocated into the
//function's scope until it returned (a loop leaked). Made by the emission itself, a slot exists for every block
//that is emitted, whatever construct holds it.
//The unwind node's predecessor and scope never vary within a frame, so they are filled in once, in the entry block.
static void cgEnsureBlockSlot(struct cgCtx* ctx, int idx) {
    while (ctx->scopePool.len <= idx) {
        char* sl = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca %%olang.scope\n", sl);
        ListAdd(&ctx->scopePool, &sl);
        char* jh = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca ptr\n", jh);
        ListAdd(&ctx->joinPool, &jh);
        if (!ctx->ownUnwindNode) continue; //S18b/P1d: no unwind chain in this build
        int i = ctx->unwindPool.len;
        char* n = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = alloca %%olang.unwind\n", n);
        ListAdd(&ctx->unwindPool, &n);
        char* ps = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = getelementptr %%olang.unwind, ptr %s, i32 0, i32 0\n", ps, n);
        fprintf(cgAllocaOut(ctx), "  store ptr %s, ptr %s\n", cgUnwindBelow(ctx, i), ps);
        char* ss = cgNewTmp(ctx);
        fprintf(cgAllocaOut(ctx), "  %s = getelementptr %%olang.unwind, ptr %s, i32 0, i32 1\n", ss, n);
        fprintf(cgAllocaOut(ctx), "  store ptr %s, ptr %s\n", sl, ss);
    }
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
    if (idx >= 0 && ctx->ownScopeSlot) cgEnsureBlockSlot(ctx, idx);
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
    int deferBase = ctx->defers.len;
    for (int i = 0; i < block->len; i++) {
        struct statement* s = ListGetIdx(block, i);
        if (ctx->terminated) cgDeadLabel(ctx); //written after a return, a break or an error
        cgStatement(ctx, s);
    }
    //S19: its deferred code - falling off the end is one more way out - as the block's last statements, so before
    //a join block's end waits for its tasks (a deferred Cancel() is what lets them finish)
    if (!ctx->terminated) cgRunDefersAt(ctx, ctx->blockDepth, deferBase);
    ctx->defers.len = deferBase;
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
    //a by-ref value (a struct, an inline array) is its storage's address, not the aggregate: copied from there. It was
    //stored as though it were the aggregate - invalid IR for "Array<P>(3, P(1, 2))", and for "Array<Q>(3)" where Q's
    //zero value is not zero bits (D13c)
    if (typeIsByRef(elemT))
        fprintf(ctx->fnOut, "  call void @llvm.memcpy.p0.p0.i64(ptr %s, ptr %s, i64 %lld, i1 false)\n", slotPtr, fillVal,
                TypeGetSize(elemT));
    else fprintf(ctx->fnOut, "  store %s %s, ptr %s%s\n", elemTy, fillVal, slotPtr, cgTbaa(elemT, true));
    char* next = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = add i64 %s, 1\n", next, i);
    fprintf(ctx->fnOut, "  store i64 %s, ptr %s\n", next, idxSlot);
    cgBr(ctx, condLbl);
    cgLabel(ctx, endLbl);
}

void cgVarDecl(struct cgCtx* ctx, struct statement* s) {
    //D13c: a zero value its constructor was found to give as zero bits is the declaration with no initializer
    struct statement plain;
    if (s->op && s->op->zeroBits) {
        plain = *s;
        plain.op = NULL;
        s = &plain;
    }
    char ty[256];
    llvmType(s->var.type, ty, sizeof(ty));
    char* slot = cgDeclareLocal(ctx, s->var.name, s->var.type);
    cgValueSlotAs(ctx, slot, s->var.type, ty);
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
        //D13: no initializer is the zero value, null included (T2a) - an Array<T, N>'s elements too (T7c): nothing in
        //the language is left uninitialized. A large one is cleared as memory - LLVM handles a huge aggregate store badly
        if (cgViaMemory(s->var.type)) {
            fprintf(ctx->fnOut, "  call void @llvm.memset.p0.i64(ptr %s, i8 0, i64 %lld, i1 false)\n", slot, TypeGetSize(s->var.type));
            return;
        }
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
    //T7b: the function's result, built where it is returned to (cgResultLocal)
    if (s == ctx->resultLocal) {
        struct type rt = *ctx->curFunc->type.retType;
        here = cgResolveScope(ctx, rt.scopeParam, rt.scopeDepth);
    }
    char* prev = ctx->targetScopeOverride;
    if (here) ctx->targetScopeOverride = here;
    char* scope = here && !s->var.type.scopeParam ? here : NULL;
    cgStoreOperand(ctx, s->var.type, s->op, slot, scope, false, false);
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
        if (cgIsReference(base->type) || cgValueHomeVar(s->target) || cgIsGlobalRead(base)) {
            scopeOverride = cgResolveEffectiveScope(ctx, base);
        }
    }
    //O1b/O18a: a global reference - or a global value holding references - is assigned what lives in the program's
    //scope, so a temporary assigned to it is built there
    if (cgIsGlobalRead(s->target) && (s->target->type.structMAlloc || s->target->type.arrMalloc
                                       || TypeHoldsReferences(s->target->type)))
        scopeOverride = cgProgramScope(ctx);
    //S4: left to right - the target's place (its base and index, as written), then the value, then the store. A
    //compound assignment's value reads that same place (placeOf), so its base and index run once
    char* addr = cgAddr(ctx, s->target);
    char* outerPlace = s->target->cgPlace;
    s->target->cgPlace = addr;
    //T7/E12c: a reference field or element given a fresh array ("l.chunks[k] = Array<T>(n)") repoints at it - built
    //in the target's scope, it is not copied into another (cgStoreOperand)
    cgStoreOperand(ctx, s->target->type, s->op, addr, scopeOverride, true, s->target->opType == OPERATION_INDEX);
    s->target->cgPlace = outerPlace;
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
    cgLeaveBlocks(ctx, lp->depthAtEntry); //S19: running each one's deferred code on the way
    //everything closed above is off the chain now, so the top is whatever sat below the loop's own level
    if (ctx->ownUnwindNode && ctx->blockSlots.len > lp->slotsAtEntry) {
        fprintf(ctx->fnOut, "  store ptr %s, ptr @__olang_unwind_top\n",
                cgUnwindBelow(ctx, lp->slotsAtEntry));
    }
}

void cgBreakOrContinue(struct cgCtx* ctx, bool isBreak) {
    if (ctx->loops.len == 0) return; //rejected in the checker (S11); nothing sensible to emit
    struct cgLoop* lp = ListGetIdx(&ctx->loops, ctx->loops.len - 1);
    if (isBreak && lp->breakOuter && ctx->loops.len >= 2) lp = ListGetIdx(&ctx->loops, ctx->loops.len - 2); //S9f
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
        cgValueSlotAs(ctx, slot, s->var.type, ty);
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
    lp.depthAtEntry = ctx->blockDepth;
    lp.breakOuter = s->breakOuter;
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
    lp.depthAtEntry = ctx->blockDepth;
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

//S12-S14: the checker has built each alternative's test and its bindings' reads over the held value, so this lays out
//only the order: the value held, then per case each alternative's test - the first to hold fills the clause's
//bindings its own way - then the guard, then the block. An alternative or guard that fails falls to the next case.
void cgAbortLike(struct cgCtx* ctx, struct statement* s, bool isUnreachable);
static void cgMatchInto(struct cgCtx* ctx, struct statement* s, char* slot, struct type resultT);
void cgMatch(struct cgCtx* ctx, struct statement* s) { cgMatchInto(ctx, s, NULL, (struct type){0}); }

//S12b: a match used as a value - each value case stores its value, converted to the match's type on its own path,
//into one slot, as a conditional's do (E28); a case whose block leaves stores nothing
char* cgMatchValue(struct cgCtx* ctx, struct operand* op) {
    char ty[256];
    llvmType(op->type, ty, sizeof(ty));
    char* slot = cgValueSlot(ctx, op->type, ty);
    cgMatchInto(ctx, ListGetIdx(&op->comprBody, 0), slot, op->type);
    return cgLoadOrAddr(ctx, op->type, slot, false);
}

//one value case's value into the slot
static void cgMatchStore(struct cgCtx* ctx, struct operand* v, char* slot, struct type resultT) {
    cgStoreOperand(ctx, resultT, v, slot, cgArmScope(ctx, v, resultT), false, false);
}

static void cgMatchInto(struct cgCtx* ctx, struct statement* s, char* slot, struct type resultT) {
    cgPushScope(ctx); //the held value's local, if any
    for (int i = 0; i < s->matchHold.len; i++) cgStatement(ctx, ListGetIdx(&s->matchHold, i));
    int id = ctx->lblCtr++;
    char endLbl[32];
    snprintf(endLbl, sizeof(endLbl), "match.end.%d", id);
    for (int i = 0; i < s->matchCases.len; i++) {
        struct statement* c = ListGetIdx(&s->matchCases, i);
        char takenLbl[48], bodyLbl[48], nextLbl[48];
        snprintf(takenLbl, sizeof(takenLbl), "match.taken.%d.%d", id, i);
        snprintf(bodyLbl, sizeof(bodyLbl), "match.case.%d.%d", id, i);
        snprintf(nextLbl, sizeof(nextLbl), "match.next.%d.%d", id, i);
        //the clause's own codegen scope, so two clauses binding the SAME name are two different locals - the
        //semantic side scopes them that way, and without the matching push here both landed in the enclosing scope
        //and the second clause silently read the first one's slot
        cgPushScope(ctx);
        char** slots = MallocOrCrash(sizeof(char*) * (size_t)(c->caseBindings.len ? c->caseBindings.len : 1));
        for (int b = 0; b < c->caseBindings.len; b++) {
            struct var* bv = *(struct var**)ListGetIdx(&c->caseBindings, b);
            char ty[256];
            llvmType(bv->type, ty, sizeof(ty));
            slots[b] = cgDeclareLocal(ctx, bv->name, bv->type);
            fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", slots[b], ty);
        }
        for (int a = 0; a < c->caseAlts.len; a++) {
            struct caseAlt* alt = ListGetIdx(&c->caseAlts, a);
            char hitLbl[48], missLbl[48];
            snprintf(hitLbl, sizeof(hitLbl), "match.alt.%d.%d.%d", id, i, a);
            snprintf(missLbl, sizeof(missLbl), "match.miss.%d.%d.%d", id, i, a);
            char* t = cgValue(ctx, alt->test);
            fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", t, hitLbl, missLbl);
            ctx->terminated = true;
            cgLabel(ctx, hitLbl);
            //T17b: the payload's fields become the clause's locals, read now that the test has proved which case
            //each one is in
            for (int b = 0; b < alt->binds.len; b++) {
                struct caseBind* cb = ListGetIdx(&alt->binds, b);
                int k = 0;
                while (k < c->caseBindings.len && *(struct var**)ListGetIdx(&c->caseBindings, k) != cb->v) k++;
                if (k == c->caseBindings.len) continue;
                char* v = cgValue(ctx, cb->from);
                cgStoreInto(ctx, cb->v->type, cb->from->type, v, slots[k], NULL, false, true, false);
            }
            cgBr(ctx, takenLbl);
            cgLabel(ctx, missLbl);
        }
        cgBr(ctx, nextLbl);
        cgLabel(ctx, takenLbl);
        if (c->caseGuard) { //S13e: read after the bindings it may name
            char* g = cgValue(ctx, c->caseGuard);
            fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", g, bodyLbl, nextLbl);
            ctx->terminated = true;
        } else cgBr(ctx, bodyLbl);
        cgLabel(ctx, bodyLbl);
        if (slot && c->op) cgMatchStore(ctx, c->op, slot, resultT);
        else cgBlock(ctx, &c->block);
        cgPopScope(ctx);
        cgBr(ctx, endLbl);
        cgLabel(ctx, nextLbl);
    }
    if (s->hasNomatch) {
        if (slot && s->nomatchValue) cgMatchStore(ctx, s->nomatchValue, slot, resultT);
        else cgBlock(ctx, &s->nomatchBlock);
    } else if (slot) cgAbortLike(ctx, s, true); //S12b: every case is covered, so this is not reached - checked, not assumed
    cgBr(ctx, endLbl);
    cgLabel(ctx, endLbl);
    cgPopScope(ctx);
}

//T7b: a function returning an array value copies a local it returns into the result scope (cgRet). The copy is
//skipped for a local whose storage is built there from the start, which is safe exactly when nothing can tell: the
//local is declared once (in the body's own block, outside every loop) from storage it makes itself, every return
//returns it, nothing assigns it, and it is otherwise only indexed or measured - its elements numbers, which cannot be
//borrowed - so no reference to it or into it exists for deferred code, a task or a destructor to write through after
//the result is computed (and the body has none of the first two). An infallible function only: a call that failed
//would leave the array in its caller's scope. Anything else keeps the copy.
static bool cgReadsDecl(struct operand* op, struct statement* d) {
    return op && op->opType == OPERATION_READ_VAR && op->readVar && StrCmp(op->readVar->name, d->var.name)
           && op->readVar->tok.str.ptr == d->var.tok.str.ptr;
}
static bool cgStmtsLeaveDecl(struct list* stmts, struct statement* d);
//every read of d's local within op is the array an index or a length reads
static bool cgOpLeavesDecl(struct operand* op, struct statement* d) {
    if (!op) return true;
    if (cgReadsDecl(op, d)) return false;
    bool indexed = (op->opType == OPERATION_INDEX || op->opType == OPERATION_LEN) && op->args.len > 0
                   && cgReadsDecl(*(struct operand**)ListGetIdx(&op->args, 0), d);
    for (int i = indexed ? 1 : 0; i < op->args.len; i++) if (!cgOpLeavesDecl(*(struct operand**)ListGetIdx(&op->args, i), d)) return false;
    for (int i = 0; i < op->chainOperands.len; i++) if (!cgOpLeavesDecl(*(struct operand**)ListGetIdx(&op->chainOperands, i), d)) return false;
    if (!cgOpLeavesDecl(op->callee, d) || !cgOpLeavesDecl(op->placeOf, d) || !cgStmtsLeaveDecl(&op->comprBody, d)) return false;
    for (int c = 0; c < op->catchClauses.len; c++) {
        struct catchClause* cc = ListGetIdx(&op->catchClauses, c);
        if (!cgStmtsLeaveDecl(&cc->block, d) || !cgOpLeavesDecl(cc->dflt, d)) return false;
    }
    return true;
}
static bool cgStmtLeavesDecl(struct statement* s, struct statement* d) {
    if (s->sType == STATEMENT_DEFER || s->sType == STATEMENT_JOIN || s->sType == STATEMENT_SPAWN) return false;
    if (s->sType == STATEMENT_RET) return cgReadsDecl(s->op, d);
    if (s != d && !cgOpLeavesDecl(s->op, d)) return false;
    if (!cgOpLeavesDecl(s->target, d) || !cgOpLeavesDecl(s->fillValue, d) || !cgOpLeavesDecl(s->forInit, d)) return false;
    if (s->sType == STATEMENT_ASSIGN && cgReadsDecl(s->target, d)) return false;
    if ((s->forPost && !cgStmtLeavesDecl(s->forPost, d)) || (s->elseStmnt && !cgStmtLeavesDecl(s->elseStmnt, d))) return false;
    if (!cgStmtsLeaveDecl(&s->block, d) || !cgStmtsLeaveDecl(&s->nomatchBlock, d) || !cgStmtsLeaveDecl(&s->matchHold, d))
        return false;
    for (int i = 0; i < s->matchCases.len; i++) if (!cgStmtLeavesDecl(ListGetIdx(&s->matchCases, i), d)) return false;
    if (!cgOpLeavesDecl(s->caseGuard, d) || !cgOpLeavesDecl(s->nomatchValue, d)) return false;
    for (int i = 0; i < s->caseAlts.len; i++) {
        struct caseAlt* a = ListGetIdx(&s->caseAlts, i);
        if (!cgOpLeavesDecl(a->test, d)) return false;
        for (int b = 0; b < a->binds.len; b++) if (!cgOpLeavesDecl(((struct caseBind*)ListGetIdx(&a->binds, b))->from, d)) return false;
    }
    for (int c = 0; c < s->catchClauses.len; c++) {
        struct catchClause* cc = ListGetIdx(&s->catchClauses, c);
        if (!cgStmtsLeaveDecl(&cc->block, d)) return false;
    }
    return true;
}
static bool cgStmtsLeaveDecl(struct list* stmts, struct statement* d) {
    for (int i = 0; i < stmts->len; i++) if (!cgStmtLeavesDecl(ListGetIdx(stmts, i), d)) return false;
    return true;
}
static struct statement* cgResultLocal(struct var* func) {
    if (func->type.errors.len || !func->type.hasRetType || !func->type.retType) return NULL;
    struct type rt = *func->type.retType;
    if (rt.bType != BASETYPE_ARRAY || !rt.arrMalloc || rt.structMAlloc || !rt.arrElem) return NULL;
    if (!(TypeIsNumeric(*rt.arrElem) || rt.arrElem->bType == BASETYPE_BOOL)) return NULL;
    for (int i = 0; i < func->codeBlock.len; i++) {
        struct statement* d = ListGetIdx(&func->codeBlock, i);
        if (d->sType != STATEMENT_VAR_DECL || !d->op || d->fillValue || !cgAdoptsFresh(d->var.type, d->op, false)) continue;
        if (!TypeIsSame(d->var.type, rt) || !cgStmtsLeaveDecl(&func->codeBlock, d)) continue;
        return d;
    }
    return NULL;
}

//T7b: whether cgBoundaryValue built op's array value in the result scope itself - fresh storage the expression made
//there (on every path, for a conditional or a match), a literal copied there, or a call whose own result landed there
static bool cgBuiltInResult(struct cgCtx* ctx, struct operand* op, struct type retT) {
    if (op->opType == OPERATION_COND && op->args.len == 3) {
        return cgBuiltInResult(ctx, *(struct operand**)ListGetIdx(&op->args, 1), retT)
               && cgBuiltInResult(ctx, *(struct operand**)ListGetIdx(&op->args, 2), retT);
    }
    if (op->opType == OPERATION_MATCH) {
        struct list vs = SemanticMatchValues(op);
        for (int i = 0; i < vs.len; i++) if (!cgBuiltInResult(ctx, *(struct operand**)ListGetIdx(&vs, i), retT)) return false;
        return vs.len > 0;
    }
    if (cgIsFreshTemp(op) || typeNeedsRuntimeLengthPromotion(retT, op->type)) return true;
    if (ctx->resultLocal && cgReadsDecl(op, ctx->resultLocal)) return true; //built there (cgResultLocal)
    if (op->opType == OPERATION_FUNCCALL && op->readVar && !op->type.structMAlloc && op->readVar->type.resultScope
            && retT.scopeParam) {
        struct var* bound = SemanticBoundScope(op, op->readVar->type.resultScope);
        return bound && canonicalVar(bound) == canonicalVar(retT.scopeParam);
    }
    return false;
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
    if (cgRetViaMemory(ctx->curFunc->type)) {
        //a big result is copied into the caller's storage (cgViaMemory) before this function's scopes close - the
        //value's own storage, or the reference it was read through
        char* src = cgValue(ctx, s->op);
        ctx->targetScopeOverride = prevTarget;
        fprintf(ctx->fnOut, "  call void @llvm.memcpy.p0.p0.i64(ptr %%out, ptr %s, i64 %lld, i1 false)\n", src,
                TypeGetSize(retT));
        cgCloseOwnScope(ctx);
        fputs(fallible ? "  ret i32 0\n" : "  ret void\n", ctx->fnOut);
        ctx->terminated = true;
        return;
    }
    char* val = cgBoundaryValue(ctx, s->op, retT, NULL);
    ctx->targetScopeOverride = prevTarget;
    //T7b: an array value result is a new array built where the call's result is put - the result scope - which the
    //caller then takes as it is. One that is not already there (a local, a parameter's array, a field's) is copied
    //there now, before this function's scopes close: they may hold its elements, and a destructor run by the close
    //may allocate over them. Deferred code runs after the result is computed (S19), so it cannot change it either.
    if (retT.bType == BASETYPE_ARRAY && retT.arrMalloc && !retT.structMAlloc && !cgBuiltInResult(ctx, s->op, retT)) {
        val = cgCopyRuntimeLengthArray(ctx, retT, val, cgResolveScope(ctx, retT.scopeParam, retT.scopeDepth), NULL);
    }
    cgCloseOwnScope(ctx);
    if (!fallible) {
        cgEmitRet(ctx, ty, val);
        ctx->terminated = true;
        return;
    }
    char wrapTy[256];
    llvmFuncRetType(ctx->curFunc->type, wrapTy, sizeof(wrapTy));
    char* agg = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue %s undef, i32 0, 0\n", agg, wrapTy);
    char* agg2 = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = insertvalue %s %s, %s %s, 1\n", agg2, wrapTy, agg, ty, val);
    cgEmitRet(ctx, wrapTy, agg2);
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
//S18a: where a written check failed, as its message's prefix - "FILE:LINE: what" and then sep ("\n", or ": " before a
//message of the program's own). A statement the compiler made has no line of its own, and says only what failed
static char* cgCheckWhere(struct cgCtx* ctx, struct statement* s, const char* what, const char* sep) {
    char* text;
    if (s && s->line > 0 && s->file.len) {
        size_t n = (size_t)s->file.len + strlen(what) + strlen(sep) + 32;
        text = MallocOrCrash(n);
        snprintf(text, n, "%.*s:%d: %s%s", s->file.len, s->file.ptr, s->line, what, sep);
    } else {
        text = MallocOrCrash(strlen(what) + strlen(sep) + 1);
        sprintf(text, "%s%s", what, sep);
    }
    return cgGlobalStringConst(ctx, text);
}

void cgAbortLike(struct cgCtx* ctx, struct statement* s, bool isUnreachable) {
    char* msg = cgCheckWhere(ctx, s, isUnreachable ? "reached unreachable code" : "aborted", "\n");
    fprintf(ctx->fnOut, "  call void @__olang_check_failed(ptr %s)\n", msg);
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
    //S18a: its location, and the program's own message - evaluated here, only when the check has failed
    if (s->assertMsg) {
        char* where = cgCheckWhere(ctx, s, "assertion failed", ": ");
        char* text = cgValue(ctx, s->assertMsg);
        fprintf(ctx->fnOut, "  call void @__olang_check_failed_text(ptr %s, { i64, ptr } %s)\n", where, text);
    } else {
        fprintf(ctx->fnOut, "  call void @__olang_check_failed(ptr %s)\n", cgCheckWhere(ctx, s, "assertion failed", "\n"));
    }
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
    char codeText[32];
    snprintf(codeText, sizeof(codeText), "%lld", code);
    cgRetErrorCode(ctx, codeText);
    ctx->terminated = true;
}

//"try f(...) catch A || B.word { ... }" - deliberately bypasses cgFuncCall/cgValue (unlike a bare "try
//f(...)" expression) since this needs the raw code to decide catch-vs-propagate before any value exists
void cgTryCatch(struct cgCtx* ctx, struct statement* s) {
    struct operand* callOp = s->op;
    struct var* func = callOp->readVar;
    char* outSlot = NULL; //a big result (cgRetViaMemory) still needs storage to land in, though it is discarded
    if (cgRetViaMemory(func->type)) {
        char ty[256];
        llvmType(*func->type.retType, ty, sizeof(ty));
        outSlot = cgValueSlot(ctx, *func->type.retType, ty);
    }
    struct list args = ListInit(sizeof(struct cgArg));
    char* target = cgCallTargetAndArgs(ctx, callOp, &args, NULL, outSlot);
    char* argsBuf = cgArgsText(&args);

    char wrapTy[256];
    llvmFuncRetType(func->type, wrapTy, sizeof(wrapTy));
    char* raw = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call %s %s(%s)\n", raw, wrapTy, target, argsBuf);
    char* code = raw;
    if (func->type.hasRetType && !outSlot) {
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
    if (ctx->debug && s->line > 0) { //B2e
        ctx->dbgStmtLine = s->line;
        ctx->dbgStmtFile = cgDbgFileId(ctx, s->file);
        fprintf(ctx->fnOut, "; dbgloc %d %d\n", ctx->dbgStmtLine, ctx->dbgStmtFile);
    }
    switch (s->sType) {
        case STATEMENT_DEFER: { //S19: nothing runs here - its code is emitted on each way out of this block
            struct cgDefer d = { s, ctx->scope, ctx->blockDepth };
            ListAdd(&ctx->defers, &d);
            return;
        }
        case STATEMENT_VAR_DECL: cgVarDecl(ctx, s); return;
        case STATEMENT_ASSIGN: cgAssign(ctx, s); return;
        case STATEMENT_EXPR: cgValue(ctx, s->op); return;
        case STATEMENT_IF: cgIf(ctx, s); return;
        case STATEMENT_FOR: cgFor(ctx, s); return;
        case STATEMENT_DO: cgDo(ctx, s); return;
        case STATEMENT_MATCH: cgMatch(ctx, s); return;
        case STATEMENT_RET: cgRet(ctx, s); return;
        case STATEMENT_ABORT: cgAbortLike(ctx, s, false); return;
        case STATEMENT_UNREACHABLE: cgAbortLike(ctx, s, true); return;
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

//K2a/K2b: what a baked global's references and arrays point at - each node its own private global, shared by every
//global of the module that reaches it, so two references to one node stay one instance (identity, E10) and a cycle
//terminates; a slice is the address of its place in its base's global. cgAuxOut is where they are written; NULL asks
//only whether the value can be written out at all.
struct cgAuxNode { struct ctVal* node; char* name; };
static struct list cgAuxNodes;
static FILE* cgAuxOut;
static const char* cgAuxBase;
static int cgAuxCtr;

static char* cgConstInit(struct ctVal* v, struct type t);
static struct type cgElementsType(struct type arrT, int n);

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
    //T25b: what no writable reference reaches from any global is never written while the program runs - so it is
    //read-only data. What one does reach (a "mut" field's referent, say) is written, and must not be: it was emitted
    //read-only when it held no reference itself, and a write through the field then faulted (or was folded away)
    bool ro = !CtNodeWritable(node);
    if (cgAuxOut) fprintf(cgAuxOut, "%s = internal %s %s %s\n", name, ro ? "constant" : "global", ty, init);
    return name;
}

//E10/K2b: the address an array's storage starts at, as a constant - null for an array with none (its zero value), the
//place in its base's global for a slice, and its own global otherwise (an empty one included: one element's room, so
//it is an instance of its own, as the allocator gives an allocation of nothing). NULL where it has no constant form
static char* cgAuxArrayPtr(struct ctVal* elems, struct type arrT) {
    struct ctVal* base = elems->viewOf ? elems->viewOf : elems;
    if (!base->elems) return "null";
    struct type st = cgElementsType(arrT, base->n ? base->n : 1);
    char* g = cgAuxGlobal(base, st);
    if (!g) return NULL;
    if (!elems->viewOf) return g;
    char ty[256];
    llvmType(st, ty, sizeof(ty));
    char* expr = MallocOrCrash(strlen(g) + strlen(ty) + 96);
    sprintf(expr, "getelementptr inbounds (%s, ptr %s, i64 0, i64 %d)", ty, g, elems->viewOff);
    return expr;
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
//K2e: where a payload's bytes hold an address - the byte offset of its word, and the private global it points at.
//NULL while nothing is collecting them, when an address has no byte spelling
struct cgPtrWord { long long off; char* name; };
static struct list* cgPtrWords;
static unsigned char* cgPtrBase;

static bool cgConstBytes(struct ctVal* v, struct type t, unsigned char* buf, long long size) {
    if (v->kind == CT_NULL) return true; //all-zero bits (T2a), already zero
    //K2e: a reference to a struct or an enum is the address of its referent's own private global - one word,
    //8-aligned like every pointer, so it fills a whole word of the payload
    if (cgPtrWords && v->kind == CT_REF && t.structMAlloc && v->target
            && (t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_CHOICE)
            && (v->target->kind == CT_AGG || (t.bType == BASETYPE_CHOICE && v->target->kind == CT_INT))) {
        struct type vt = t;
        vt.structMAlloc = false;
        vt.scopeParam = NULL;
        char* g = cgAuxGlobal(v->target, vt);
        if (!g) return false;
        struct cgPtrWord pw = { (long long)(buf - cgPtrBase), g };
        ListAdd(cgPtrWords, &pw);
        return true;
    }
    //...and an array of a run-time length is { length, storage }: the length's bytes, then its elements' global
    if (cgPtrWords && t.bType == BASETYPE_ARRAY && t.arrMalloc
            && (v->kind == CT_AGG || (v->kind == CT_REF && v->target && v->target->kind == CT_AGG))) {
        struct ctVal* elems = v->kind == CT_REF ? v->target : v;
        unsigned long long n = (unsigned long long)elems->n;
        for (int i = 0; i < 8; i++) buf[i] = (unsigned char)(n >> (8 * i));
        char* g = cgAuxArrayPtr(elems, t);
        if (!g) return false;
        if (!strcmp(g, "null")) return true; //no storage: zero bits
        struct cgPtrWord pw = { (long long)(buf + 8 - cgPtrBase), g };
        ListAdd(cgPtrWords, &pw);
        return true;
    }
    switch (t.bType) {
        case BASETYPE_BOOL: case BASETYPE_BYTE: case BASETYPE_INT32: case BASETYPE_INT64: case BASETYPE_ERROR:
        case BASETYPE_I8: case BASETYPE_I16: case BASETYPE_U16: case BASETYPE_U32: case BASETYPE_U64: {
            unsigned long long x = (unsigned long long)v->i;
            for (long long i = 0; i < size && i < 8; i++) buf[i] = (unsigned char)(x >> (8 * i));
            return true;
        }
        case BASETYPE_FLOAT32: case BASETYPE_FLOAT64: case BASETYPE_F16: case BASETYPE_BF16: { //T4, E33: a NaN's bits kept
            unsigned long long x = FloatBits(v->f, t.bType);
            for (long long i = 0; i < size && i < PrimInfo(t.bType)->bits / 8; i++) buf[i] = (unsigned char)(x >> (8 * i));
            return true;
        }
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
        //LLVM's exact form: a float32 too is written as the double it widens to, F16/BF16 in their own (T4)
        fputs(cgFloatConst(v->f, t.bType), f);
    } else if (v->kind == CT_BOOL) {
        fputs(v->i ? "true" : "false", f);
    } else if (v->kind == CT_INT) {
        fprintf(f, "%lld", v->i);
    } else if (t.bType == BASETYPE_ARRAY && t.arrMalloc && (v->kind == CT_AGG || (v->kind == CT_REF && v->target->kind == CT_AGG))) {
        //an array of a run-time length is { length, storage }: its elements go in a global of their own
        struct ctVal* elems = v->kind == CT_REF ? v->target : v;
        char* g = cgAuxArrayPtr(elems, t);
        if (!g) ok = false;
        else fprintf(f, "{ i64 %d, ptr %s }", elems->n, g);
    } else if (v->kind == CT_REF && (t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_CHOICE) && t.structMAlloc
               && (v->target->kind == CT_AGG || (t.bType == BASETYPE_CHOICE && v->target->kind == CT_INT))) {
        //a reference to a struct or an enum (T17d): its referent in a global of its own
        struct type vt = t;
        vt.structMAlloc = false;
        vt.scopeParam = NULL;
        char* g = cgAuxGlobal(v->target, vt);
        if (!g) ok = false;
        else fputs(g, f);
    } else if (v->kind == CT_AGG && t.bType == BASETYPE_ARRAY && !t.arrMalloc && !t.structMAlloc && v->n == 0) {
        fputs("zeroinitializer", f); //an empty array's room (cgAuxArrayPtr)
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
        //T17: { i64 tag, [K x i64] } - the live case's fields written as the bytes they occupy (K2d), packed into
        //the payload's words, little-endian as the target lays them out
        long long k = ChoicePayloadSize(t);
        unsigned char* bytes = calloc((size_t)(8 + k), 1);
        //K2e: a payload holding a reference holds an address there - its referent's private global
        struct list ptrWords = ListInit(sizeof(struct cgPtrWord));
        struct list* savedWords = cgPtrWords;
        unsigned char* savedBase = cgPtrBase;
        cgPtrWords = &ptrWords;
        cgPtrBase = bytes;
        ok = cgConstBytes(v, t, bytes, 8 + k);
        cgPtrWords = savedWords;
        cgPtrBase = savedBase;
        if (ok) {
            fprintf(f, "{ i64 %lld, [%lld x i64] [", v->i, k / 8);
            for (long long w = 0; w < k / 8; w++) {
                char* addr = NULL;
                for (int p = 0; p < ptrWords.len; p++) {
                    struct cgPtrWord* pw = ListGetIdx(&ptrWords, p);
                    if (pw->off == 8 + w * 8) addr = pw->name;
                }
                if (addr) { fprintf(f, "%s i64 ptrtoint (ptr %s to i64)", w ? "," : "", addr); continue; }
                unsigned long long word = 0;
                for (int b = 7; b >= 0; b--) word = (word << 8) | bytes[8 + w * 8 + b];
                fprintf(f, "%s i64 %lld", w ? "," : "", (long long)word);
            }
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

//K2b: which of a module's globals are written out as data - decided once per object, before any is written. One whose
//value has no constant form is set at startup, and so is one reaching an instance another global holds that is set at
//startup (or that belongs to another module's object): set at startup, that instance is built anew there, and data
//written here would be a second copy of it - two globals the evaluator found sharing one instance would not
static struct list cgBakedVars; //struct var*
static struct semaModule* cgBakedFor;

static bool cgIsBaked(struct var* v) {
    for (int i = 0; i < cgBakedVars.len; i++) if (*(struct var**)ListGetIdx(&cgBakedVars, i) == v) return true;
    return false;
}

static void cgDecideBakes(struct semaModule* emitMod) {
    if (cgBakedFor == emitMod) return;
    cgBakedFor = emitMod;
    cgBakedVars = ListInit(sizeof(struct var*));
    struct list cands = ListInit(sizeof(struct var*));
    for (int i = 0; i < emitMod->vars.len; i++) {
        struct var* v = ListGetIdx(&emitMod->vars, i);
        if (v->isFuncDecl || !(v->constVal || v->bakeVal)) continue;
        ListAdd(&cands, &v);
    }
    int n = cands.len;
    struct list* nodes = MallocOrCrash(sizeof(struct list) * (size_t)(n ? n : 1));
    bool* baked = calloc((size_t)(n ? n : 1), sizeof(bool));
    for (int k = 0; k < n; k++) {
        struct var* v = *(struct var**)ListGetIdx(&cands, k);
        struct ctVal* val = v->constVal ? v->constVal : v->bakeVal;
        nodes[k] = ListInit(sizeof(struct ctVal*));
        CtReachableNodes(val, &nodes[k]);
        cgAuxNodes = ListInit(sizeof(struct cgAuxNode)); //a dry run: does it have a constant form at all
        cgAuxOut = NULL;
        cgAuxBase = "@dry";
        baked[k] = cgConstInit(val, v->type) != NULL;
        for (int j = 0; j < nodes[k].len && baked[k]; j++) {
            struct var* owner = CtNodeOwner(*(struct ctVal**)ListGetIdx(&nodes[k], j));
            if (owner && owner->owner != emitMod) baked[k] = false; //another object's instance
        }
    }
    for (bool changed = true; changed; ) { //an instance a global set at startup builds is built there, not here
        changed = false;
        for (int k = 0; k < n; k++) {
            if (!baked[k]) continue;
            for (int j = 0; j < nodes[k].len && baked[k]; j++) {
                struct var* owner = CtNodeOwner(*(struct ctVal**)ListGetIdx(&nodes[k], j));
                for (int q = 0; q < n && owner; q++) {
                    if (!baked[q] && *(struct var**)ListGetIdx(&cands, q) == owner) { baked[k] = false; changed = true; break; }
                }
            }
        }
    }
    for (int k = 0; k < n; k++) if (baked[k]) ListAdd(&cgBakedVars, ListGetIdx(&cands, k));
    for (int k = 0; k < n; k++) ListDestroy(nodes[k]);
    free(nodes);
    free(baked);
    ListDestroy(cands);
    cgAuxNodes = ListInit(sizeof(struct cgAuxNode)); //shared by every global of the module, as the instances are
    cgAuxCtr = 0;
}

//K2/K2a: a global's baked initializer, its private globals written to aux - or NULL to set it at startup
static char* cgGlobalConstInit(struct var* v, const char* gname, FILE* aux) {
    if (!cgIsBaked(v)) return NULL;
    cgAuxOut = aux;
    cgAuxBase = gname;
    cgAuxCtr = 0; //each global numbers what it writes out first; an instance another wrote out already keeps that name
    char* init = cgConstInit(v->constVal ? v->constVal : v->bakeVal, v->type);
    cgAuxOut = NULL;
    return init;
}

//K2: another module's immutable global baked as plain data, which no writable reference reaches - its value, to be
//declared "available_externally": the global is still that module's (nothing is emitted for it here), but this object's
//optimizer reads its value at every load before the link. A generic's instantiation lives in the root object (B3d), so
//a library kernel's bounds held in the library's named globals were unknown where the kernel was optimized - unrolled
//and register-allocated only with the literals written in (std/linalg's GEMM, 7 against 16.6 GFLOPS). NULL when the
//value needs storage of its own (an array's elements), or its own module would not bake it (cgDecideBakes)
static char* cgExternConstInit(struct var* v) {
    if (v->mut || !v->constVal || CtNodeWritable(v->constVal)) return NULL;
    struct list nodes = ListInit(sizeof(struct ctVal*));
    CtReachableNodes(v->constVal, &nodes);
    bool own = true;
    for (int j = 0; j < nodes.len && own; j++) {
        struct var* owner = CtNodeOwner(*(struct ctVal**)ListGetIdx(&nodes, j));
        if (owner && owner != v) own = false;
    }
    ListDestroy(nodes);
    if (!own) return NULL;
    struct list savedNodes = cgAuxNodes;
    FILE* savedOut = cgAuxOut;
    const char* savedBase = cgAuxBase;
    int savedCtr = cgAuxCtr;
    cgAuxNodes = ListInit(sizeof(struct cgAuxNode));
    cgAuxOut = NULL;
    cgAuxBase = "@dry";
    char* init = cgConstInit(v->constVal, v->type);
    if (cgAuxNodes.len) init = NULL; //storage of its own, which only its module defines
    ListDestroy(cgAuxNodes);
    cgAuxNodes = savedNodes;
    cgAuxOut = savedOut;
    cgAuxBase = savedBase;
    cgAuxCtr = savedCtr;
    return init;
}

void emitGlobalDecls(FILE* out, struct semaModule* emitMod) {
    cgBakedFor = NULL; //a new object: its own decisions
    cgDecideBakes(emitMod);
    struct list* all = SemanticAllModules();
    for (int m = 0; m < all->len; m++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(all, m);
        for (int i = 0; i < mod->vars.len; i++) {
            struct var* v = ListGetIdx(&mod->vars, i);
            if (v->type.bType == BASETYPE_FUNC && !v->isGlobalVar) continue; //a function, not storage
            char name[256];
            mangleGlobal(mod, v->name, name, sizeof(name));
            char ty[256];
            llvmType(v->type, ty, sizeof(ty));
            //P1: one module, one object. Another module's global is a reference to storage that object
            //defines, never a second definition of it - two would be a duplicate symbol at link time.
            char* init = mod == emitMod ? cgGlobalConstInit(v, name, out) : NULL;
            //K2: an immutable global baked while compiling, which no writable reference reaches, is never written -
            //a constant, so the optimizer reads its value at every load before the link (a GEMM kernel's tile bounds,
            //held in named globals, were neither unrolled nor kept in registers while it was a mutable global)
            bool ro = init && !v->mut && !CtNodeWritable(v->constVal ? v->constVal : v->bakeVal);
            if (mod == emitMod) fprintf(out, "%s = %s %s %s\n", name, ro ? "constant" : "global", ty, init ? init : "zeroinitializer");
            else if ((init = cgExternConstInit(v))) fprintf(out, "%s = available_externally constant %s %s\n", name, ty, init);
            else fprintf(out, "%s = external global %s\n", name, ty);
        }
    }
}

void emitRuntimeDecls(FILE* out);

//P1e/X7: an "extern fn" naming a function the runtime itself declares or defines refers to that very function, and
//must not be declared a second time - LLVM rejects a duplicate "declare", and a "declare" beside a definition, even
//when the signatures agree. So the runtime's own declaration stands for both. It can, because a call states its own
//function type at the call site, and X3 marshals an array parameter to the same "ptr" the runtime uses; a prototype
//that disagrees is an X1a error the program is already responsible for. The answer comes from the runtime's own
//text, rendered once, rather than from a list kept beside it: a list missed "exit", "abort", "setjmp" and "longjmp",
//so "extern fn exit(status I32)" failed to compile with an invalid redefinition reported against the IR.
static bool cgRuntimeDeclaresSym(struct str name) {
    static char* text;
    static size_t len;
    if (!text) {
        FILE* f = open_memstream(&text, &len);
        if (!f) ErrorBugFound();
        emitRuntimeDecls(f);
        fclose(f);
    }
    //"@NAME(" with nothing but the name between: a call, a declare or a define - each means the runtime has it
    for (char* at = strchr(text, '@'); at; at = strchr(at + 1, '@')) {
        if (!strncmp(at + 1, name.ptr, (size_t)name.len) && at[1 + name.len] == '(') return true;
    }
    return false;
}

//"declare RETTY @NAME(ARGTYS)" for every "extern func" (§11) in the program - the unmangled name (X5:
//it's also the linker symbol, no module-prefix mangling like an ordinary olang function gets) and a
//plain C-ABI signature (llvmType already gives an array-typed param/local its right shape everywhere
//else; here it's simply overridden to "ptr", matching the marshalling cgExternFuncCall performs at
//every call site - X3). No body, ever - an extern-func-decl has none to emit.
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
            //X8: the C math library's functions. An exact one touches no memory - the library sets errno for none of
            //them but sqrt, which LLVM then always makes the instruction - so LLVM lowers each to an instruction where
            //there is one and vectorizes it. Another one writes errno and nothing else the program can see, and is always
            //the library's own call, never rewritten into another (pow(x, 2.0) into x * x): the compile-time evaluator
            //calls this very function, so the two agree
            enum ctMathFn m = CtMathFn(v);
            fputs(m == CT_MATH_EXACT ? ") memory(none) nounwind willreturn\n"
                  : m == CT_MATH_INEXACT ? ") nobuiltin nofree nosync nounwind willreturn memory(write)\n" : ")\n", out);
        }
    }
}

void emitScopeRuntime(FILE* out);
void emitOsRuntime(FILE* out);
static void emitFloatTextRuntime(FILE* out);

/* runtime support, always emitted (harmless if unused): assert()'s failure path can either longjmp back
 * to a test harness's recovery point (when @__olang_jmp_target is set) or hard-abort (outside test mode,
 * where it's always null). The jmp_buf is sized by this compiler's own C library, since a test build is for this
 * machine (B12a).
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
        "declare double @strtod(ptr, ptr)\n"
        "declare i64 @strtol(ptr, ptr, i32)\n"
        "declare void @abort() noreturn\n"
        "declare void @exit(i32) noreturn\n"
        "declare ptr @malloc(i64)\n"
        "declare ptr @aligned_alloc(i64, i64)\n"
        "declare void @free(ptr)\n"
        "declare ptr @mmap(ptr, i64, i32, i32, i32, i64)\n"
        "declare i32 @munmap(ptr, i64)\n"
        "declare void @llvm.memset.p0.i64(ptr, i8, i64, i1)\n"
        "declare i64 @llvm.ctlz.i64(i64, i1)\n"
        "declare i128 @llvm.cttz.i128(i128, i1)\n"
        //O8b: the chunk pool's budget, an eighth of the machine's memory
        "declare i64 @sysconf(i32)\n"
        "declare double @llvm.arithmetic.fence.f64(double)\n", out);
    //X8: the exact functions of the C math library, as LLVM's intrinsics (cgExternFuncCall)
    fputs("declare double @llvm.sqrt.f64(double)\n"
        "declare float @llvm.sqrt.f32(float)\n"
        "declare double @llvm.fma.f64(double, double, double)\n"
        "declare float @llvm.fma.f32(float, float, float)\n"
        "declare double @llvm.floor.f64(double)\n"
        "declare float @llvm.floor.f32(float)\n"
        "declare double @llvm.ceil.f64(double)\n"
        "declare float @llvm.ceil.f32(float)\n"
        "declare double @llvm.trunc.f64(double)\n"
        "declare float @llvm.trunc.f32(float)\n"
        "declare double @llvm.round.f64(double)\n"
        "declare float @llvm.round.f32(float)\n"
        "declare double @llvm.roundeven.f64(double)\n"
        "declare float @llvm.roundeven.f32(float)\n"
        "declare double @llvm.fabs.f64(double)\n"
        "declare float @llvm.fabs.f32(float)\n"
        "declare double @llvm.copysign.f64(double, double)\n"
        "declare float @llvm.copysign.f32(float, float)\n"
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
        "@stdout = external global ptr\n"
        "declare i64 @fwrite(ptr, i64, i64, ptr)\n"
        "declare i32 @fputc(i32, ptr)\n"
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
        "@__olang_msg_slice = linkonce_odr unnamed_addr constant [27 x i8] c\"slice bounds out of range\\0A\\00\"\n"
        "@__olang_msg_as = linkonce_odr unnamed_addr constant [34 x i8] c\"'as' named what the value is not\\0A\\00\"\n"
        "@__olang_msg_arraylen = linkonce_odr unnamed_addr constant [27 x i8] c\"array length out of range\\0A\\00\"\n"
        "@__olang_msg_oom = linkonce_odr unnamed_addr constant [15 x i8] c\"out of memory\\0A\\00\"\n"
        "@__olang_msg_arrayfit = linkonce_odr unnamed_addr constant [47 x i8] c\"array length does not match its fixed storage\\0A\\00\"\n"
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
        //an array length out of range. Distinct from "fail", which is the program's own orderly decision -
        //this one aborts, so it leaves a core dump and skips atexit, which is what you want for a broken
        //invariant. Under a test it is recoverable, exactly as S18 says.
        "define linkonce_odr void @__olang_check_failed(ptr %msg) {\n"
        "entry:\n"
        "  %stream = call ptr @__olang_check_stream()\n"
        "  call i32 @fputs(ptr %msg, ptr %stream)\n"
        "  call void @__olang_check_end()\n"
        "  unreachable\n"
        "}\n\n"
        , out);
    fputs(
        //S18a: "assert cond, message" - its location's prefix, then the program's own text and a line end
        "define linkonce_odr void @__olang_check_failed_text(ptr %where, { i64, ptr } %text) {\n"
        "entry:\n"
        "  %stream = call ptr @__olang_check_stream()\n"
        "  call i32 @fputs(ptr %where, ptr %stream)\n"
        "  %len = extractvalue { i64, ptr } %text, 0\n"
        "  %data = extractvalue { i64, ptr } %text, 1\n"
        "  call i64 @fwrite(ptr %data, i64 1, i64 %len, ptr %stream)\n"
        "  call i32 @fputc(i32 10, ptr %stream)\n"
        "  call void @__olang_check_end()\n"
        "  unreachable\n"
        "}\n\n"
        //where a failed check says what failed: stderr outside a test - not printf: stdout is block-buffered whenever
        //it is not a terminal, so abort() discarded the message exactly when the output was being captured, and the
        //unhandled-error path writes there too - and stdout inside one, beside the "FAIL - " line the harness prints
        "define linkonce_odr ptr @__olang_check_stream() {\n"
        "entry:\n"
        "  %tgt = load ptr, ptr @__olang_jmp_target\n"
        "  %isnull = icmp eq ptr %tgt, null\n"
        "  %errs = load ptr, ptr @stderr\n"
        "  %outs = load ptr, ptr @stdout\n"
        "  %stream = select i1 %isnull, ptr %errs, ptr %outs\n"
        "  ret ptr %stream\n"
        "}\n\n"
        "define linkonce_odr void @__olang_check_end() {\n"
        "entry:\n"
        "  %tgt = load ptr, ptr @__olang_jmp_target\n"
        "  %isnull = icmp eq ptr %tgt, null\n"
        "  br i1 %isnull, label %hard, label %soft\n"
        "hard:\n"
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
        "define linkonce_odr void @__olang_alloc_check(ptr %p) {\n"
        "entry:\n"
        "  %ok = icmp ne ptr %p, null\n"
        "  br i1 %ok, label %done, label %bad\n"
        "bad:\n"
        "  call void @__olang_check_failed(ptr @__olang_msg_oom)\n"
        "  br label %done\n"
        "done:\n"
        "  ret void\n"
        "}\n\n"
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
    emitOsRuntime(out);
}

/* the real backing for every scope (O2): a growable, chunked bump allocator. A chunk is a 64-byte header followed by
 * cap bytes of data; a scope is a chunk-list head, lazily null until first use. Allocating only ever bumps a cursor or
 * links on one more chunk - nothing is ever freed individually. Closing a scope gives its chunks to this thread's
 * pool (O8b), where the next scope needing one takes it without asking the system again.
 *
 * The pool is a set of size classes, so any chunk big enough is found, not only the one on top. It used to be one
 * list taken from its head: a closing scope gives its chunks back newest first, so a scope that took a large chunk and
 * then a smaller one left the large one under the small one - the next call found the small one at the head, mapped
 * another large one, and the old one was never taken again (std/linalg's Gemm lost a B panel per product that way). A
 * class holds chunks of one size, four classes per power of two from 4KB up (4096, 5120, 6144, 7168, 8192, 10240, ...),
 * and a new chunk is made at its class's size, so every chunk of a class holds whatever the class is asked for. A
 * request takes the newest chunk of the smallest non-empty class that holds it, up to two powers of two above its own
 * - one count of trailing zeros, over a bit per class saying which are non-empty - and asks the system only when
 * there is none. Further up is left for a request its size: a small one would pin a large chunk in a scope that may
 * live long.
 *
 * What the pool keeps is bounded, per thread, by an eighth of the machine's memory: a chunk given back beyond that
 * returns the pool's least recently given back chunks to the system first (munmap, or free for one from
 * aligned_alloc), or goes back itself when it alone is larger. So a phase that needed much memory gives it back once
 * later ones do not use it, and a computation repeated in a loop takes the same chunks every time. */
void emitScopeRuntime(FILE* out) {
    fputs(
        //next, used, cap, the length mmap gave it (0 for one from aligned_alloc), whether it is fresh from the system and
        //zero above "used" (__olang_scope_alloc_zeroed), its class, then the pool's: prev (a class is a circular list
        //through next and prev) and the stamp ordering chunks by when they were given back. 64 bytes, so the data area
        //after it is 64-aligned like the chunk itself (O8a)
        "%olang.chunk = type { ptr, i64, i64, i64, i64, i64, ptr, i64 }\n"
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
                                                    //if unused). The tail is tracked so a task's sub-scope
                                                    //can be spliced into its parent in O(1) (P2) - chunks are
                                                    //PREPENDED, so the tail is whichever chunk this scope
                                                    //allocated first, set once when the list goes from empty
                                                    //to non-empty and never touched again.
        //P1: the pool is thread_local, so two threads never take from or give to the same one. A scope belongs to
        //exactly one thread, and so do the chunks it takes and gives back, which is what makes a per-thread pool
        //correct rather than merely faster. A class's list, by its newest chunk (O8b)
        "@__olang_pool = linkonce_odr thread_local(initialexec) global [128 x ptr] zeroinitializer\n"
        //bit k set when class k holds a chunk
        "@__olang_pool_mask = linkonce_odr thread_local(initialexec) global i128 0\n"
        //one 4KB chunk kept beside the classes, outside their bookkeeping: what a block scope allocating a little on
        //every pass of a loop takes and gives back, each time
        "@__olang_pool_spare = linkonce_odr thread_local(initialexec) global ptr null\n"
        //what the pool holds, in bytes of whole chunks, and the bound on it - an eighth of the machine's memory, read
        //when the pool first reaches it; 0 until then
        "@__olang_pool_bytes = linkonce_odr thread_local(initialexec) global i64 0\n"
        "@__olang_pool_limit = linkonce_odr thread_local(initialexec) global i64 0\n"
        //stamps: one more for every chunk given back, so a smaller stamp was given back earlier
        "@__olang_pool_clock = linkonce_odr thread_local(initialexec) global i64 0\n"
        //O1b: the program's own scope - what a global's initializer allocates into. Never closed, so what
        //it holds lives as long as the program
        "@__olang_global_scope = linkonce_odr global %olang.scope zeroinitializer\n"
        //O1b/P2: the program's scope as this thread reaches it - the scope itself on the main thread, and a task's
        //private stand-in while a task runs, folded back at its join - so no two threads ever bump it at once
        "@__olang_prog_scope = linkonce_odr thread_local(initialexec) global ptr @__olang_global_scope\n"
        "\n"
        "", out);
    fputs(
        //an empty chunk whose data holds at least size bytes, when the spare will not do (__olang_scope_alloc takes that
        //itself): the newest chunk of the smallest class in the pool that holds size bytes, no more than eight classes (two
        //powers of two) above the request's own, or a new one of its class's size - mapped from 128KB up, where glibc's
        //malloc itself turns to mmap, and taken from aligned_alloc below. Never inlined, so __olang_scope_alloc stays
        //small enough to inline wherever a scope allocates
        "define linkonce_odr ptr @__olang_new_chunk(i64 %size) noinline {\n"
        "entry:\n"
        "  %small = icmp ule i64 %size, 4096\n"
        "  br i1 %small, label %search, label %sized\n"
        //the class of a size s above 4KB: with e the top bit of s - 1 and q the two bits below it plus 4 (4 to 7),
        //the class is 4(e - 11) + q - 7 and holds (q + 1) 2^(e - 2) bytes. 4096 itself is class 0; nothing smaller is
        //made. The last class takes every size beyond it, which is why a chunk taken is still measured
        "sized:\n"
        "  %x = sub i64 %size, 1\n"
        "  %lz = call i64 @llvm.ctlz.i64(i64 %x, i1 true)\n"
        "  %e = sub i64 63, %lz\n"
        "  %sh = sub i64 %e, 2\n"
        "  %q = lshr i64 %x, %sh\n"
        "  %e4 = shl i64 %e, 2\n"
        "  %c0 = add i64 %e4, %q\n"
        "  %c1 = sub i64 %c0, 51\n"
        "  %q1 = add i64 %q, 1\n"
        "  %csz = shl i64 %q1, %sh\n"
        "  %past = icmp ugt i64 %c1, 127\n"
        "  %c = select i1 %past, i64 127, i64 %c1\n"
        "  br label %search\n"
        "search:\n"
        "  %class = phi i64 [ 0, %entry ], [ %c, %sized ]\n"
        "  %classsize = phi i64 [ 4096, %entry ], [ %csz, %sized ]\n"
        "  %mask = load i128, ptr @__olang_pool_mask\n"
        "  %class128 = zext i64 %class to i128\n"
        "  %above = lshr i128 %mask, %class128\n"
        "  %window = and i128 %above, 511\n"
        "  %none = icmp eq i128 %window, 0\n"
        "  br i1 %none, label %make, label %found\n"
        "found:\n"
        "  %tz = call i128 @llvm.cttz.i128(i128 %window, i1 true)\n"
        "  %tz64 = trunc i128 %tz to i64\n"
        "  %k = add i64 %class, %tz64\n"
        "  %slot = getelementptr [128 x ptr], ptr @__olang_pool, i64 0, i64 %k\n"
        "  %c.p = load ptr, ptr %slot\n"
        "  %capptr = getelementptr %olang.chunk, ptr %c.p, i32 0, i32 2\n"
        "  %cap = load i64, ptr %capptr\n"
        "  %fits = icmp uge i64 %cap, %size\n"
        "  br i1 %fits, label %take, label %make\n"
        "take:\n"
        "  call void @__olang_pool_unlink(ptr %c.p, i64 %k)\n"
        "  %usedptr.p = getelementptr %olang.chunk, ptr %c.p, i32 0, i32 1\n"
        "  store i64 0, ptr %usedptr.p\n"
        //it has been used: what it holds is whatever its last scope left there
        "  %freshptr.p = getelementptr %olang.chunk, ptr %c.p, i32 0, i32 4\n"
        "  store i64 0, ptr %freshptr.p\n"
        "  ret ptr %c.p\n"
        "make:\n"
        "  %hdrsize = ptrtoint ptr getelementptr (%olang.chunk, ptr null, i32 1) to i64\n"
        "  %total0 = add i64 %hdrsize, %classsize\n"
        //D13c: a mapped chunk comes zeroed, which __olang_scope_alloc_zeroed relies on to skip clearing it again
        "  %huge = icmp uge i64 %classsize, 131072\n"
        "  br i1 %huge, label %map, label %heap\n"
        "map:\n"
        "  %mt1 = add i64 %total0, 4095\n"
        "  %mtotal = and i64 %mt1, -4096\n"
        //PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS (Linux)
        "  %m = call ptr @mmap(ptr null, i64 %mtotal, i32 3, i32 34, i32 -1, i64 0)\n"
        "  %mfailed = icmp eq ptr %m, inttoptr (i64 -1 to ptr)\n"
        "  %mchunk = select i1 %mfailed, ptr null, ptr %m\n"
        "  br label %got\n"
        "heap:\n"
        //aligned_alloc requires a size that is a multiple of the alignment
        "  %total1 = add i64 %total0, 63\n"
        "  %htotal = and i64 %total1, -64\n"
        "  %h = call ptr @aligned_alloc(i64 64, i64 %htotal)\n"
        "  br label %got\n"
        "got:\n"
        "  %new = phi ptr [ %mchunk, %map ], [ %h, %heap ]\n"
        "  %total = phi i64 [ %mtotal, %map ], [ %htotal, %heap ]\n"
        "  %maplen = phi i64 [ %mtotal, %map ], [ 0, %heap ]\n"
        "  %zeroed = phi i64 [ 1, %map ], [ 0, %heap ]\n"
        //the allocator declining is a broken guarantee, as a thread that will not start is (P1c): reported, never
        //written through - a null chunk used to be filled in as though it were one
        "  call void @__olang_alloc_check(ptr %new)\n"
        "  %usedptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 1\n"
        "  store i64 0, ptr %usedptr.n\n"
        "  %capptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 2\n"
        "  %realcap = sub i64 %total, %hdrsize\n"
        "  store i64 %realcap, ptr %capptr.n\n"
        "  %mapptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 3\n"
        "  store i64 %maplen, ptr %mapptr.n\n"
        "  %freshptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 4\n"
        "  store i64 %zeroed, ptr %freshptr.n\n"
        "  %classptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 5\n"
        "  store i64 %class, ptr %classptr.n\n"
        "  ret ptr %new\n"
        "}\n\n"
        "", out);
    fputs(
        //takes chunk c out of class k's circular list: the class is emptied when c was all it held, and its newest chunk is
        //the one after c when c was the newest
        "define linkonce_odr void @__olang_pool_unlink(ptr %c, i64 %k) {\n"
        "entry:\n"
        "  %slot = getelementptr [128 x ptr], ptr @__olang_pool, i64 0, i64 %k\n"
        "  %nextptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 0\n"
        "  %next = load ptr, ptr %nextptr\n"
        "  %alone = icmp eq ptr %next, %c\n"
        "  br i1 %alone, label %empty, label %link\n"
        "empty:\n"
        "  store ptr null, ptr %slot\n"
        "  %mask = load i128, ptr @__olang_pool_mask\n"
        "  %k128 = zext i64 %k to i128\n"
        "  %bit = shl i128 1, %k128\n"
        "  %keep = xor i128 %bit, -1\n"
        "  %mask2 = and i128 %mask, %keep\n"
        "  store i128 %mask2, ptr @__olang_pool_mask\n"
        "  br label %count\n"
        "link:\n"
        "  %prevptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 6\n"
        "  %prev = load ptr, ptr %prevptr\n"
        "  %pnextptr = getelementptr %olang.chunk, ptr %prev, i32 0, i32 0\n"
        "  store ptr %next, ptr %pnextptr\n"
        "  %nprevptr = getelementptr %olang.chunk, ptr %next, i32 0, i32 6\n"
        "  store ptr %prev, ptr %nprevptr\n"
        "  %head = load ptr, ptr %slot\n"
        "  %washead = icmp eq ptr %head, %c\n"
        "  %head2 = select i1 %washead, ptr %next, ptr %head\n"
        "  store ptr %head2, ptr %slot\n"
        "  br label %count\n"
        "count:\n"
        "  %capptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 2\n"
        "  %cap = load i64, ptr %capptr\n"
        "  %bytes = load i64, ptr @__olang_pool_bytes\n"
        "  %less = sub i64 %bytes, %cap\n"
        "  %hdr = sub i64 %less, 64\n"
        "  store i64 %hdr, ptr @__olang_pool_bytes\n"
        "  ret void\n"
        "}\n\n"
        //chunk c back to the system it came from: munmap for a mapped one, free for one from aligned_alloc
        "define linkonce_odr void @__olang_chunk_release(ptr %c) {\n"
        "entry:\n"
        "  %mapptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 3\n"
        "  %maplen = load i64, ptr %mapptr\n"
        "  %mapped = icmp ne i64 %maplen, 0\n"
        "  br i1 %mapped, label %unmap, label %release\n"
        "unmap:\n"
        "  %r = call i32 @munmap(ptr %c, i64 %maplen)\n"
        "  ret void\n"
        "release:\n"
        "  call void @free(ptr %c)\n"
        "  ret void\n"
        "}\n\n"
        "", out);
    fputs(
        //O8b: chunk c into the pool, as the newest of its class - once there is room for it under the pool's bound,
        //which __olang_pool_make_room makes out of line, or c itself goes back to the system when it alone is larger
        "define linkonce_odr void @__olang_pool_give(ptr %given) {\n"
        "entry:\n"
        "  %classptr0 = getelementptr %olang.chunk, ptr %given, i32 0, i32 5\n"
        "  %class0 = load i64, ptr %classptr0\n"
        "  %small = icmp eq i64 %class0, 0\n"
        "  br i1 %small, label %spare, label %pool\n"
        //a 4KB chunk becomes the spare, the newest of its class, and the one it replaces goes into the class
        "spare:\n"
        "  %s = load ptr, ptr @__olang_pool_spare\n"
        "  store ptr %given, ptr @__olang_pool_spare\n"
        "  %free = icmp eq ptr %s, null\n"
        "  br i1 %free, label %done, label %pool\n"
        "done:\n"
        "  ret void\n"
        "pool:\n"
        "  %c = phi ptr [ %given, %entry ], [ %s, %spare ]\n"
        "  %capptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 2\n"
        "  %cap = load i64, ptr %capptr\n"
        "  %need = add i64 %cap, 64\n"
        "  %bytes0 = load i64, ptr @__olang_pool_bytes\n"
        "  %after0 = add i64 %bytes0, %need\n"
        "  %limit = load i64, ptr @__olang_pool_limit\n"
        "  %over = icmp ugt i64 %after0, %limit\n"
        "  br i1 %over, label %bound, label %keep\n"
        "bound:\n"
        "  %room = call i1 @__olang_pool_make_room(i64 %need)\n"
        "  br i1 %room, label %keep, label %drop\n"
        "drop:\n"
        "  call void @__olang_chunk_release(ptr %c)\n"
        "  ret void\n"
        "keep:\n"
        "  %bytes = load i64, ptr @__olang_pool_bytes\n"
        "  %after = add i64 %bytes, %need\n"
        "  store i64 %after, ptr @__olang_pool_bytes\n"
        "  %clock = load i64, ptr @__olang_pool_clock\n"
        "  %tick = add i64 %clock, 1\n"
        "  store i64 %tick, ptr @__olang_pool_clock\n"
        "  %cstampptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 7\n"
        "  store i64 %tick, ptr %cstampptr\n"
        "  %classptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 5\n"
        "  %class = load i64, ptr %classptr\n"
        "  %cslot = getelementptr [128 x ptr], ptr @__olang_pool, i64 0, i64 %class\n"
        "  %head = load ptr, ptr %cslot\n"
        "  store ptr %c, ptr %cslot\n"
        "  %cnextptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 0\n"
        "  %cprevptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 6\n"
        "  %first = icmp eq ptr %head, null\n"
        "  br i1 %first, label %alone, label %link\n"
        "alone:\n"
        "  store ptr %c, ptr %cnextptr\n"
        "  store ptr %c, ptr %cprevptr\n"
        "  %pmask = load i128, ptr @__olang_pool_mask\n"
        "  %class128 = zext i64 %class to i128\n"
        "  %bit = shl i128 1, %class128\n"
        "  %pmask2 = or i128 %pmask, %bit\n"
        "  store i128 %pmask2, ptr @__olang_pool_mask\n"
        "  ret void\n"
        "link:\n"
        "  %hprevptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 6\n"
        "  %tail.l = load ptr, ptr %hprevptr\n"
        "  store ptr %head, ptr %cnextptr\n"
        "  store ptr %tail.l, ptr %cprevptr\n"
        "  %tnextptr = getelementptr %olang.chunk, ptr %tail.l, i32 0, i32 0\n"
        "  store ptr %c, ptr %tnextptr\n"
        "  store ptr %c, ptr %hprevptr\n"
        "  ret void\n"
        "}\n\n"
        "", out);
    fputs(
        //each chunk of a closed scope's list to the pool - a chunk's next is read before it is given, since giving relinks
        //it
        "define linkonce_odr void @__olang_pool_give_list(ptr %head) noinline {\n"
        "entry:\n"
        "  br label %each\n"
        "each:\n"
        "  %cur = phi ptr [ %head, %entry ], [ %next, %each ]\n"
        "  %nextptr = getelementptr %olang.chunk, ptr %cur, i32 0, i32 0\n"
        "  %next = load ptr, ptr %nextptr\n"
        "  call void @__olang_pool_give(ptr %cur)\n"
        "  %atend = icmp eq ptr %next, null\n"
        "  br i1 %atend, label %done, label %each\n"
        "done:\n"
        "  ret void\n"
        "}\n\n"
        "", out);
    fputs(
        //makes room in the pool for need more bytes, false when need alone is beyond the bound: gives the least recently
        //given back chunks to the system until the rest and need fit. The oldest chunk of a class is the one before its
        //newest, and the oldest of all the oldest of some class, so a pass over the non-empty classes finds it. The
        //bound is measured here the first time it is reached (0 until then)
        "define linkonce_odr i1 @__olang_pool_make_room(i64 %need) noinline {\n"
        "entry:\n"
        "  br label %room\n"
        "room:\n"
        "  %bytes = load i64, ptr @__olang_pool_bytes\n"
        "  %after = add i64 %bytes, %need\n"
        "  %limit = load i64, ptr @__olang_pool_limit\n"
        "  %over = icmp ugt i64 %after, %limit\n"
        "  br i1 %over, label %bound, label %yes\n"
        "bound:\n"
        "  %known = icmp ne i64 %limit, 0\n"
        "  br i1 %known, label %evict, label %measure\n"
        "measure:\n"
        "  %measured = call i64 @__olang_pool_measure()\n"
        "  store i64 %measured, ptr @__olang_pool_limit\n"
        "  br label %room\n"
        "evict:\n"
        "  %toobig = icmp ugt i64 %need, %limit\n"
        "  br i1 %toobig, label %no, label %oldest\n"
        "oldest:\n"
        "  %mask = load i128, ptr @__olang_pool_mask\n"
        "  %anyleft = icmp ne i128 %mask, 0\n"
        "  br i1 %anyleft, label %scan, label %no\n"
        "scan:\n"
        "  %m = phi i128 [ %mask, %oldest ], [ %mrest, %scan ]\n"
        "  %best = phi ptr [ null, %oldest ], [ %best2, %scan ]\n"
        "  %bestk = phi i64 [ 0, %oldest ], [ %bestk2, %scan ]\n"
        "  %beststamp = phi i64 [ -1, %oldest ], [ %beststamp2, %scan ]\n"
        "  %tz = call i128 @llvm.cttz.i128(i128 %m, i1 true)\n"
        "  %k = trunc i128 %tz to i64\n"
        "  %slot = getelementptr [128 x ptr], ptr @__olang_pool, i64 0, i64 %k\n"
        "  %newest = load ptr, ptr %slot\n"
        "  %tailptr = getelementptr %olang.chunk, ptr %newest, i32 0, i32 6\n"
        "  %tail = load ptr, ptr %tailptr\n"
        "  %stampptr = getelementptr %olang.chunk, ptr %tail, i32 0, i32 7\n"
        "  %stamp = load i64, ptr %stampptr\n"
        "  %older = icmp ult i64 %stamp, %beststamp\n"
        "  %best2 = select i1 %older, ptr %tail, ptr %best\n"
        "  %bestk2 = select i1 %older, i64 %k, i64 %bestk\n"
        "  %beststamp2 = select i1 %older, i64 %stamp, i64 %beststamp\n"
        "  %m1 = sub i128 %m, 1\n"
        "  %mrest = and i128 %m, %m1\n"
        "  %more = icmp ne i128 %mrest, 0\n"
        "  br i1 %more, label %scan, label %victim\n"
        "victim:\n"
        "  call void @__olang_pool_unlink(ptr %best2, i64 %bestk2)\n"
        "  call void @__olang_chunk_release(ptr %best2)\n"
        "  br label %room\n"
        "yes:\n"
        "  ret i1 1\n"
        "no:\n"
        "  ret i1 0\n"
        "}\n\n"
        "", out);
    //the pool's bound: an eighth of the machine's memory, from sysconf, or 1GB where it will not say. The names are the
    //C library's own constants, read from the compiler's headers - sound while the target is the host, as the rest of
    //the runtime's use of them (X6)
    fprintf(out,
        "define linkonce_odr i64 @__olang_pool_measure() {\n"
        "entry:\n"
        "  %%pages = call i64 @sysconf(i32 %d)\n"
        "  %%psize = call i64 @sysconf(i32 %d)\n"
        "  %%pagesok = icmp sgt i64 %%pages, 0\n"
        "  %%psizeok = icmp sgt i64 %%psize, 0\n"
        "  %%ok = and i1 %%pagesok, %%psizeok\n"
        "  %%ram = mul i64 %%pages, %%psize\n"
        "  %%eighth = lshr i64 %%ram, 3\n"
        "  %%limit = select i1 %%ok, i64 %%eighth, i64 1073741824\n"
        "  ret i64 %%limit\n"
        "}\n\n", (int)_SC_PHYS_PAGES, (int)_SC_PAGESIZE);
    fputs(
        //bump-allocates size bytes from scope, growing (linking on one more chunk) if the current one
        //doesn't have room
        "define linkonce_odr noalias ptr @__olang_scope_alloc(ptr %scope, i64 %rawsize) {\n"
        "entry:\n"
        //every allocation is rounded up to 8 bytes so the NEXT one starts 8-aligned. The bump offset is a
        //raw byte sum, so without this a 12-byte "int32[3]" left the following allocation at offset 12 -
        //fine for an i32 but misaligned for any i64 or pointer field, which is UB at the LLVM level even
        //where the hardware tolerates it. Latent before; the dtor nodes below (24 bytes, three pointers,
        //one per registered instance) made it near-certain to be hit. The chunk's own data area is
        //already 64-aligned (O8a): the chunk is, and its header is 64 bytes.
        "  %sizeup = add i64 %rawsize, 7\n"
        "  %size8 = and i64 %sizeup, -8\n"
        //E10: an allocation of nothing still gets storage of its own, so two of them are two instances (an empty array
        //made twice, a struct with no fields built twice) - a zero size bumped nothing, and handed both the same address
        "  %size0 = icmp eq i64 %size8, 0\n"
        "  %size = select i1 %size0, i64 8, i64 %size8\n"
        //the alignment this allocation gets, from its own size: enough for SSE at 32 bytes and for AVX-512
        //or a cache line at 64. Two selects, no branch, and small allocations are unaffected.
        "  %a32 = icmp uge i64 %size, 32\n"
        "  %a64 = icmp uge i64 %size, 64\n"
        "  %alnA = select i1 %a32, i64 32, i64 8\n"
        "  %aln = select i1 %a64, i64 64, i64 %alnA\n"
        "  %alnm1 = sub i64 %aln, 1\n"
        "  %alnmask = sub i64 0, %aln\n"
        //every offset is a multiple of 8 already (every size is), so an 8-aligned allocation - which is every one under
        //32 bytes, decided while compiling where the size is known - takes the offset as it is
        "  %round = icmp ugt i64 %aln, 8\n"
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
        "  %csrounded = and i64 %csup, %alnmask\n"
        "  %csaligned = select i1 %round, i64 %csrounded, i64 %csused\n"
        "  %remaining = sub i64 %cscap, %csaligned\n"
        "  %fits = icmp uge i64 %remaining, %size\n"
        "  br i1 %fits, label %bump, label %needchunk\n"
        //the common case, complete in itself: the offset just computed, bumped
        "bump:\n"
        "  %dataptr = getelementptr %olang.chunk, ptr %head, i32 1\n"
        "  %result = getelementptr i8, ptr %dataptr, i64 %csaligned\n"
        "  %newused = add i64 %csaligned, %size\n"
        "  store i64 %newused, ptr %csusedptr\n"
        "  ret ptr %result\n"
        //the pool's spare 4KB chunk when it is there and holds this (O8b) - what a block allocating a little on each pass
        //of a loop takes every time, taken here; anything else is __olang_new_chunk's
        "needchunk:\n"
        "  %small = icmp ule i64 %size, 4096\n"
        "  %spare = load ptr, ptr @__olang_pool_spare\n"
        "  %hasspare = icmp ne ptr %spare, null\n"
        "  %quick = and i1 %small, %hasspare\n"
        "  br i1 %quick, label %usespare, label %callnew\n"
        //it has been used: what it holds is whatever its last scope left there
        "usespare:\n"
        "  store ptr null, ptr @__olang_pool_spare\n"
        "  %sparefresh = getelementptr %olang.chunk, ptr %spare, i32 0, i32 4\n"
        "  store i64 0, ptr %sparefresh\n"
        "  br label %link\n"
        "callnew:\n"
        "  %made = call ptr @__olang_new_chunk(i64 %size)\n"
        "  br label %link\n"
        "link:\n"
        "  %newchunk = phi ptr [ %spare, %usespare ], [ %made, %callnew ]\n"
        "  %oldhead = load ptr, ptr %headptr\n"
        "  %newnextptr = getelementptr %olang.chunk, ptr %newchunk, i32 0, i32 0\n"
        "  store ptr %oldhead, ptr %newnextptr\n"
        "  store ptr %newchunk, ptr %headptr\n"
        //first chunk in this scope: it is the tail, and stays the tail for the scope's whole life, since
        //every later chunk is prepended ahead of it
        "  %wasempty = icmp eq ptr %oldhead, null\n"
        "  br i1 %wasempty, label %settail, label %first\n"
        "settail:\n"
        "  %tailptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 2\n"
        "  store ptr %newchunk, ptr %tailptr\n"
        "  br label %first\n"
        //a chunk from __olang_new_chunk is empty (its offset 0) and its data area 64-aligned, so this allocation is its
        //first bytes, whatever alignment it wants
        "first:\n"
        "  %ncusedptr = getelementptr %olang.chunk, ptr %newchunk, i32 0, i32 1\n"
        "  store i64 %size, ptr %ncusedptr\n"
        "  %ncdata = getelementptr %olang.chunk, ptr %newchunk, i32 1\n"
        "  ret ptr %ncdata\n"
        "}\n\n", out);
    fputs(
        //D13c: size bytes of ZEROS from scope - an "Array<T>(n)" with no fill. Bumped as any allocation is, then cleared -
        //unless it came from a chunk the system has just handed over (__olang_new_chunk maps a large one, and mapped memory
        //is zero) that no scope has used before: there, everything at or above the chunk's bump offset has never been
        //handed out, so it is still zero and its pages are first touched by the program's own writes. A chunk that comes
        //back through the pool is dirty and is cleared as any other.
        "define linkonce_odr noalias ptr @__olang_scope_alloc_zeroed(ptr %scope, i64 %rawsize) {\n"
        "entry:\n"
        "  %p = call ptr @__olang_scope_alloc(ptr %scope, i64 %rawsize)\n"
        "  %big = icmp uge i64 %rawsize, 4096\n"
        "  br i1 %big, label %check, label %clear\n"
        "check:\n"
        //the chunk p was bumped from is the scope's head: __olang_scope_alloc takes it from there or puts a new one there
        "  %headptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 0\n"
        "  %head = load ptr, ptr %headptr\n"
        "  %freshptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 4\n"
        "  %fresh = load i64, ptr %freshptr\n"
        "  %untouched = icmp ne i64 %fresh, 0\n"
        "  br i1 %untouched, label %done, label %clear\n"
        "clear:\n"
        "  call void @llvm.memset.p0.i64(ptr %p, i8 0, i64 %rawsize, i1 false)\n"
        "  br label %done\n"
        "done:\n"
        "  ret ptr %p\n"
        "}\n\n", out);
    fputs(
        //E11a: an integer in decimal - the length it takes (a digit count: the bit length gives the count to within
        //one, a power of ten settles it), and with a destination, the digits written there, two at a time from a
        //table, last first. No snprintf: measuring is a few instructions, and writing is no more than it has to be.
        //A null destination only measures, as every rendering's contract says (E11a); a real one has the room the
        //measurement said, and nothing is written past it. A float's rendering is @__olang_fmt_float's, below.
        "@__olang_fmt_g = linkonce_odr unnamed_addr constant [6 x i8] c\"%.17g\\00\"\n"
        "@__olang_pow10 = linkonce_odr unnamed_addr constant [20 x i64] [i64 1, i64 10, i64 100, i64 1000, i64 10000, "
            "i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, "
            "i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, "
            "i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616]\n"
        "@__olang_digits2 = linkonce_odr unnamed_addr constant [200 x i8] c\""
            "00010203040506070809101112131415161718192021222324252627282930313233343536373839"
            "40414243444546474849505152535455565758596061626364656667686970717273747576777879"
            "8081828384858687888990919293949596979899\"\n"
        "define linkonce_odr i64 @__olang_fmt_u64(ptr %buf, i64 %v) {\n"
        "entry:\n"
        "  %v1 = or i64 %v, 1\n"
        "  %lz = call i64 @llvm.ctlz.i64(i64 %v1, i1 true)\n"
        "  %bits = sub i64 64, %lz\n"
        "  %t0 = mul i64 %bits, 1233\n"
        "  %t = lshr i64 %t0, 12\n"
        "  %pp = getelementptr [20 x i64], ptr @__olang_pow10, i64 0, i64 %t\n"
        "  %pw = load i64, ptr %pp\n"
        "  %below = icmp ult i64 %v1, %pw\n"
        "  %belowi = zext i1 %below to i64\n"
        "  %t1 = add i64 %t, 1\n"
        "  %len = sub i64 %t1, %belowi\n"
        "  %measure = icmp eq ptr %buf, null\n"
        "  br i1 %measure, label %done, label %write\n"
        "write:\n"
        "  %end = getelementptr i8, ptr %buf, i64 %len\n"
        "  br label %pairs\n"
        "pairs:\n"
        "  %m = phi i64 [ %v, %write ], [ %q, %pair ]\n"
        "  %p = phi ptr [ %end, %write ], [ %p2, %pair ]\n"
        "  %big = icmp uge i64 %m, 100\n"
        "  br i1 %big, label %pair, label %last\n"
        "pair:\n"
        "  %q = udiv i64 %m, 100\n"
        "  %q100 = mul i64 %q, 100\n"
        "  %r = sub i64 %m, %q100\n"
        "  %ri = shl i64 %r, 1\n"
        "  %src = getelementptr i8, ptr @__olang_digits2, i64 %ri\n"
        "  %d = load i16, ptr %src, align 1\n"
        "  %p2 = getelementptr i8, ptr %p, i64 -2\n"
        "  store i16 %d, ptr %p2, align 1\n"
        "  br label %pairs\n"
        "last:\n"
        "  %two = icmp uge i64 %m, 10\n"
        "  br i1 %two, label %lasttwo, label %lastone\n"
        "lasttwo:\n"
        "  %li = shl i64 %m, 1\n"
        "  %lsrc = getelementptr i8, ptr @__olang_digits2, i64 %li\n"
        "  %ld = load i16, ptr %lsrc, align 1\n"
        "  %lp = getelementptr i8, ptr %p, i64 -2\n"
        "  store i16 %ld, ptr %lp, align 1\n"
        "  br label %done\n"
        "lastone:\n"
        "  %c = add i64 %m, 48\n"
        "  %c8 = trunc i64 %c to i8\n"
        "  %op = getelementptr i8, ptr %p, i64 -1\n"
        "  store i8 %c8, ptr %op\n"
        "  br label %done\n"
        "done:\n"
        "  ret i64 %len\n"
        "}\n\n"
        //a signed one: a '-', then the magnitude - "0 - v" is the magnitude as an unsigned number for every v, the
        //most negative included, since the subtraction wraps (E6c)
        "define linkonce_odr i64 @__olang_fmt_i64(ptr %buf, i64 %v) {\n"
        "entry:\n"
        "  %neg = icmp slt i64 %v, 0\n"
        "  br i1 %neg, label %minus, label %plain\n"
        "plain:\n"
        "  %n = call i64 @__olang_fmt_u64(ptr %buf, i64 %v)\n"
        "  ret i64 %n\n"
        "minus:\n"
        "  %mag = sub i64 0, %v\n"
        "  %measure = icmp eq ptr %buf, null\n"
        "  br i1 %measure, label %count, label %sign\n"
        "sign:\n"
        "  store i8 45, ptr %buf\n"
        "  br label %count\n"
        "count:\n"
        "  %after = getelementptr i8, ptr %buf, i64 1\n"
        "  %rest = select i1 %measure, ptr null, ptr %after\n"
        "  %k = call i64 @__olang_fmt_u64(ptr %rest, i64 %mag)\n"
        "  %k1 = add i64 %k, 1\n"
        "  ret i64 %k1\n"
        "}\n\n"
        //T4: an integer - negative when %neg, of magnitude %m - as a BF16, rounded ONCE to its 8 significant bits, ties
        //to even. LLVM's own "sitofp ... to bfloat" goes through a float at -O0, rounding twice, and so came out one
        //step off where -O3 and the evaluator did not: the magnitude is cut to its top 8 bits here, in integers
        "define linkonce_odr bfloat @__olang_int_bf16(i64 %m, i1 %neg) {\n"
        "entry:\n"
        "  %lz = call i64 @llvm.ctlz.i64(i64 %m, i1 false)\n"
        "  %bits = sub i64 64, %lz\n"
        "  %big = icmp ugt i64 %bits, 8\n"
        "  %shr = sub i64 %bits, 8\n"
        "  %sh = select i1 %big, i64 %shr, i64 0\n"
        "  %q = lshr i64 %m, %sh\n"
        "  %one = shl i64 1, %sh\n"
        "  %mask = sub i64 %one, 1\n"
        "  %rem = and i64 %m, %mask\n"
        "  %half = lshr i64 %one, 1\n"
        "  %gt = icmp ugt i64 %rem, %half\n"
        "  %eq = icmp eq i64 %rem, %half\n"
        "  %odd = trunc i64 %q to i1\n"
        "  %tie = and i1 %eq, %odd\n"
        "  %up0 = or i1 %gt, %tie\n"
        "  %up = and i1 %up0, %big\n"
        "  %upi = zext i1 %up to i64\n"
        "  %q2 = add i64 %q, %upi\n"
        "  %lsh = sub i64 8, %bits\n"
        "  %lsh2 = select i1 %big, i64 0, i64 %lsh\n"
        "  %q3 = shl i64 %q2, %lsh2\n"
        "  %carry = icmp eq i64 %q3, 256\n"
        "  %q4 = select i1 %carry, i64 128, i64 %q3\n"
        "  %e0 = sub i64 %bits, 1\n"
        "  %ce = zext i1 %carry to i64\n"
        "  %e1 = add i64 %e0, %ce\n"
        "  %be = add i64 %e1, 127\n"
        "  %mant = and i64 %q4, 127\n"
        "  %ebits = shl i64 %be, 7\n"
        "  %mag16 = or i64 %ebits, %mant\n"
        "  %nz = icmp ne i64 %m, 0\n"
        "  %mag = select i1 %nz, i64 %mag16, i64 0\n"
        "  %sign = select i1 %neg, i64 32768, i64 0\n"
        "  %all = or i64 %mag, %sign\n"
        "  %w = trunc i64 %all to i16\n"
        "  %r = bitcast i16 %w to bfloat\n"
        "  ret bfloat %r\n"
        "}\n\n"
        "", out);
    fputs(
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
        //P2a: gives this thread's whole chunk pool back to the system - a worker retiring (P1f), whose pool would
        //otherwise be lost with its thread. Every chunk in the pool came from a scope that has already closed, so
        //nothing refers to it; a task's sub-scope's chunks are never here, having been spliced into the parent at the
        //join rather than given back by their own thread
        "define linkonce_odr void @__olang_pool_drain() {\n"
        "entry:\n"
        "  %s = load ptr, ptr @__olang_pool_spare\n"
        "  store ptr null, ptr @__olang_pool_spare\n"
        "  %nospare = icmp eq ptr %s, null\n"
        "  br i1 %nospare, label %classes, label %spare\n"
        "spare:\n"
        "  call void @__olang_chunk_release(ptr %s)\n"
        "  br label %classes\n"
        "classes:\n"
        "  %mask = load i128, ptr @__olang_pool_mask\n"
        "  store i128 0, ptr @__olang_pool_mask\n"
        "  store i64 0, ptr @__olang_pool_bytes\n"
        "  %empty = icmp eq i128 %mask, 0\n"
        "  br i1 %empty, label %done, label %class\n"
        "class:\n"
        "  %m = phi i128 [ %mask, %classes ], [ %mrest, %nextclass ]\n"
        "  %tz = call i128 @llvm.cttz.i128(i128 %m, i1 true)\n"
        "  %k = trunc i128 %tz to i64\n"
        "  %slot = getelementptr [128 x ptr], ptr @__olang_pool, i64 0, i64 %k\n"
        "  %newest = load ptr, ptr %slot\n"
        "  store ptr null, ptr %slot\n"
        "  br label %walk\n"
        //round the circle once, from the newest back to it
        "walk:\n"
        "  %cur = phi ptr [ %newest, %class ], [ %next, %walk ]\n"
        "  %nextptr = getelementptr %olang.chunk, ptr %cur, i32 0, i32 0\n"
        "  %next = load ptr, ptr %nextptr\n"
        "  call void @__olang_chunk_release(ptr %cur)\n"
        "  %round = icmp eq ptr %next, %newest\n"
        "  br i1 %round, label %nextclass, label %walk\n"
        "nextclass:\n"
        "  %m1 = sub i128 %m, 1\n"
        "  %mrest = and i128 %m, %m1\n"
        "  %more = icmp ne i128 %mrest, 0\n"
        "  br i1 %more, label %class, label %done\n"
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
        "  call void @__olang_alloc_check(ptr %w)\n"
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
        //walks and calls this scope's own dtor-node list first, LIFO - most-recently-registered first, the order a stack
        //unwind would give - then gives each of its chunks to the pool (O8b) and resets the scope to empty
        "define linkonce_odr void @__olang_scope_close(ptr %scope) alwaysinline {\n"
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
        "  br i1 %empty, label %done, label %give\n"
        //every chunk to the pool, out of line, so that what is left here is small; and this is always inlined, so a
        //scope's header never escapes into a call and one allocating nothing on a path costs nothing there - its header
        //kept in registers, the close folded away (LLVM's own estimate put it past the threshold for a cold call, and a
        //loop's body scope then cost two stores and two tests every pass). The tail needs no reset: it is read only
        //while the list is not empty, and set when the list next stops being empty
        "give:\n"
        "  store ptr null, ptr %headptr\n"
        //one 4KB chunk, and no spare: it becomes the spare, here
        "  %hnextptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 0\n"
        "  %hnext = load ptr, ptr %hnextptr\n"
        "  %single = icmp eq ptr %hnext, null\n"
        "  %hclassptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 5\n"
        "  %hclass = load i64, ptr %hclassptr\n"
        "  %hsmall = icmp eq i64 %hclass, 0\n"
        "  %spare = load ptr, ptr @__olang_pool_spare\n"
        "  %nospare = icmp eq ptr %spare, null\n"
        "  %one = and i1 %single, %hsmall\n"
        "  %quick = and i1 %one, %nospare\n"
        "  br i1 %quick, label %tospare, label %list\n"
        "tospare:\n"
        "  store ptr %head, ptr @__olang_pool_spare\n"
        "  br label %done\n"
        "list:\n"
        "  call void @__olang_pool_give_list(ptr %head)\n"
        "  br label %done\n"
        "done:\n"
        "  ret void\n"
        "}\n\n", out);
}

//E11a: a float's text (@__olang_fmt_float and what it needs, the powers of ten among them) - written only into an object
//that renders a float, since the powers alone are 11KB of data no other object reads
static void emitFloatTextRuntime(FILE* out) {
    fputs(
        //E11a: a float's text by trying - the fewest digits p for which "%.*e" (p - 1) reads back, rounded to the type,
        //as v; then laid out as "%.17g" would. An infinity or a NaN is "%.17g"'s own. v - v is 0 exactly when v is
        //finite. Up to seventeen tries, so @__olang_fmt_float (below) computes the digits directly and comes here only
        //for the tiniest values, where the two agree - floatShortestByTries in util.c is this in C
        "@__olang_fmt_e = linkonce_odr unnamed_addr constant [5 x i8] c\"%.*e\\00\"\n"
        "@__olang_fmt_s = linkonce_odr unnamed_addr constant [3 x i8] c\"%s\\00\"\n"
        "@__olang_fmt_fpad = linkonce_odr unnamed_addr constant [15 x i8] c\"%.*s%c%.*s%.*s\\00\"\n"
        "@__olang_fmt_fmid = linkonce_odr unnamed_addr constant [16 x i8] c\"%.*s%c%.*s.%.*s\\00\"\n"
        "@__olang_fmt_fsmall = linkonce_odr unnamed_addr constant [17 x i8] c\"%.*s0.%.*s%c%.*s\\00\"\n"
        "@__olang_fmt_minus = linkonce_odr unnamed_addr constant [2 x i8] c\"-\\00\"\n"
        "@__olang_fmt_zeros = linkonce_odr unnamed_addr constant [20 x i8] c\"0000000000000000000\\00\"\n"
        "define linkonce_odr i64 @__olang_fmt_float_tries(ptr %buf, i64 %cap, double %v, i32 %kind) {\n"
        "entry:\n"
        "  %e = alloca [40 x i8]\n"
        "  %vv = fsub double %v, %v\n"
        "  %fin = fcmp oeq double %vv, 0.0\n"
        "  br i1 %fin, label %try, label %special\n"
        //every NaN renders as "nan": snprintf would print the sign, which for a NaN an operation made is unspecified
        //(E33a) - LLVM folds 0/0 to +NaN where x86 computes -NaN
        "special:\n"
        "  %isnan = fcmp uno double %v, %v\n"
        "  %w = select i1 %isnan, double 0x7FF8000000000000, double %v\n"
        "  %ns = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %buf, i64 %cap, ptr @__olang_fmt_g, double %w)\n"
        "  %ns64 = sext i32 %ns to i64\n"
        "  ret i64 %ns64\n"
        "try:\n"
        "  %p = phi i32 [ 1, %entry ], [ %p1, %next ]\n"
        "  %pm1 = sub i32 %p, 1\n"
        "  %ne = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %e, i64 40, ptr @__olang_fmt_e, i32 %pm1, double %v)\n"
        "  %back = call double @strtod(ptr %e, ptr null)\n"
        "  switch i32 %kind, label %r64 [ i32 1, label %r32 i32 2, label %r16 i32 3, label %rb16 ]\n"
        "r32:\n"
        "  %t32 = fptrunc double %back to float\n"
        "  %w32 = fpext float %t32 to double\n"
        "  br label %cmp\n"
        "r16:\n"
        "  %t16 = fptrunc double %back to half\n"
        "  %w16 = fpext half %t16 to double\n"
        "  br label %cmp\n"
        "rb16:\n"
        "  %tb16 = fptrunc double %back to bfloat\n"
        "  %wb16 = fpext bfloat %tb16 to double\n"
        "  br label %cmp\n"
        "r64:\n"
        "  br label %cmp\n"
        "cmp:\n"
        "  %r = phi double [ %w32, %r32 ], [ %w16, %r16 ], [ %wb16, %rb16 ], [ %back, %r64 ]\n"
        "  %same = fcmp oeq double %r, %v\n"
        "  %last = icmp sge i32 %p, 17\n"
        "  %stop = or i1 %same, %last\n"
        "  br i1 %stop, label %found, label %next\n"
        "next:\n"
        "  %p1 = add i32 %p, 1\n"
        "  br label %try\n"
        //e is "[-]d[.ddd]e+XX" with p digits: the sign, the first digit, the rest from s + 2, the exponent after the e
        "found:\n"
        "  %c0 = load i8, ptr %e\n"
        "  %neg = icmp eq i8 %c0, 45\n"
        "  %negi = zext i1 %neg to i32\n"
        "  %neg64 = zext i1 %neg to i64\n"
        "  %s = getelementptr i8, ptr %e, i64 %neg64\n"
        "  %d1 = load i8, ptr %s\n"
        "  %d1i = zext i8 %d1 to i32\n"
        "  %rest = getelementptr i8, ptr %s, i64 2\n"
        "  %onedig = icmp eq i32 %p, 1\n"
        "  %p64 = sext i32 %p to i64\n"
        "  %pp1 = add i64 %p64, 1\n"
        "  %eoff = select i1 %onedig, i64 1, i64 %pp1\n"
        "  %eat = getelementptr i8, ptr %s, i64 %eoff\n"
        "  %xat = getelementptr i8, ptr %eat, i64 1\n"
        "  %x64 = call i64 @strtol(ptr %xat, ptr null, i32 10)\n"
        "  %x = trunc i64 %x64 to i32\n"
        "  %xlo = icmp slt i32 %x, -4\n"
        "  %xhi = icmp sge i32 %x, 17\n"
        "  %sci = or i1 %xlo, %xhi\n"
        "  br i1 %sci, label %wsci, label %fixed\n"
        "wsci:\n"
        "  %n1 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %buf, i64 %cap, ptr @__olang_fmt_s, ptr %e)\n"
        "  br label %out\n"
        "fixed:\n"
        "  %pad = icmp sge i32 %x, %pm1\n"
        "  br i1 %pad, label %wpad, label %notpad\n"
        "wpad:\n"
        "  %z = sub i32 %x, %pm1\n"
        "  %n2 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %buf, i64 %cap, ptr @__olang_fmt_fpad, i32 %negi, "
            "ptr @__olang_fmt_minus, i32 %d1i, i32 %pm1, ptr %rest, i32 %z, ptr @__olang_fmt_zeros)\n"
        "  br label %out\n"
        "notpad:\n"
        "  %pos = icmp sge i32 %x, 0\n"
        "  br i1 %pos, label %wmid, label %wsmall\n"
        "wmid:\n"
        "  %xs = sext i32 %x to i64\n"
        "  %tail = getelementptr i8, ptr %rest, i64 %xs\n"
        "  %tn = sub i32 %pm1, %x\n"
        "  %n3 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %buf, i64 %cap, ptr @__olang_fmt_fmid, i32 %negi, "
            "ptr @__olang_fmt_minus, i32 %d1i, i32 %x, ptr %rest, i32 %tn, ptr %tail)\n"
        "  br label %out\n"
        "wsmall:\n"
        "  %nz = sub i32 -1, %x\n"
        "  %n4 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %buf, i64 %cap, ptr @__olang_fmt_fsmall, i32 %negi, "
            "ptr @__olang_fmt_minus, i32 %nz, ptr @__olang_fmt_zeros, i32 %d1i, i32 %pm1, ptr %rest)\n"
        "  br label %out\n"
        "out:\n"
        "  %n = phi i32 [ %n1, %wsci ], [ %n2, %wpad ], [ %n3, %wmid ], [ %n4, %wsmall ]\n"
        "  %n64 = sext i32 %n to i64\n"
        "  ret i64 %n64\n"
        "}\n\n", out);
    fputs("@__olang_pow10m = linkonce_odr unnamed_addr constant [1392 x i64] [", out);
    for (int i = 0; i < 1392; i++) fprintf(out, "%si64 %lld", i ? ", " : "", (long long)FloatPow10[i]);
    fputs("]\n", out);
    fputs(
        //E11a: Schubfach (Giulietti) - FloatSchubfach (util.c) written in IR, with the same powers of ten, so the run
        //time and the evaluator compute the same digits. The rounded-to-odd top bits of g * cp, g = g1 * 2^63 + g0:
        "define linkonce_odr i64 @__olang_rop(i64 %g1, i64 %g0, i64 %cp) {\n"
        "entry:\n"
        "  %g0w = zext i64 %g0 to i128\n"
        "  %cpw = zext i64 %cp to i128\n"
        "  %x = mul i128 %g0w, %cpw\n"
        "  %xs = lshr i128 %x, 64\n"
        "  %x1 = trunc i128 %xs to i64\n"
        "  %g1w = zext i64 %g1 to i128\n"
        "  %y = mul i128 %g1w, %cpw\n"
        "  %ys = lshr i128 %y, 64\n"
        "  %y1 = trunc i128 %ys to i64\n"
        "  %y0 = trunc i128 %y to i64\n"
        "  %y0s = lshr i64 %y0, 1\n"
        "  %z = add i64 %y0s, %x1\n"
        "  %z63 = lshr i64 %z, 63\n"
        "  %vbp = add i64 %y1, %z63\n"
        "  %zm = and i64 %z, 9223372036854775807\n"
        "  %zp = add i64 %zm, 9223372036854775807\n"
        "  %st = lshr i64 %zp, 63\n"
        "  %r = or i64 %vbp, %st\n"
        "  ret i64 %r\n"
        "}\n\n"
        , out);
    fputs(
        //the shortest decimal f * 10^e in the rounding interval of c * 2^q (p significant bits, qmin the subnormals'
        //exponent), the closest to it of those - { f, e, true } - else, for the tiniest c, { _, _, false }
        "define linkonce_odr { i64, i32, i1 } @__olang_shortest(i64 %c, i32 %q, i32 %p, i32 %qmin) {\n"
        "entry:\n"
        "  %tiny = icmp ult i64 %c, 8\n"
        "  br i1 %tiny, label %fail, label %go\n"
        "go:\n"
        "  %out = and i64 %c, 1\n"
        "  %cb = shl i64 %c, 2\n"
        "  %cbr = add i64 %cb, 2\n"
        "  %pm1 = sub i32 %p, 1\n"
        "  %pm1w = zext i32 %pm1 to i64\n"
        "  %pow = shl i64 1, %pm1w\n"
        "  %ispow = icmp eq i64 %c, %pow\n"
        "  %notmin = icmp ne i32 %q, %qmin\n"
        "  %lop = and i1 %ispow, %notmin\n"
        "  %q64 = sext i32 %q to i64\n"
        "  %qk = mul i64 %q64, 661971961083\n"
        "  %qk2 = sub i64 %qk, 274743187321\n"
        "  %kin = select i1 %lop, i64 %qk2, i64 %qk\n"
        "  %k = ashr i64 %kin, 41\n"
        "  %cbl1 = sub i64 %cb, 2\n"
        "  %cbl2 = sub i64 %cb, 1\n"
        "  %cbl = select i1 %lop, i64 %cbl2, i64 %cbl1\n"
        "  %nk = sub i64 0, %k\n"
        "  %hk = mul i64 %nk, 913124641741\n"
        "  %hk2 = ashr i64 %hk, 38\n"
        "  %h0 = add i64 %q64, %hk2\n"
        "  %h = add i64 %h0, 2\n"
        "  %rowa = sub i64 348, %k\n"
        "  %row = shl i64 %rowa, 1\n"
        "  %hp = getelementptr [1392 x i64], ptr @__olang_pow10m, i64 0, i64 %row\n"
        "  %hi = load i64, ptr %hp\n"
        "  %row1 = add i64 %row, 1\n"
        "  %lp = getelementptr [1392 x i64], ptr @__olang_pow10m, i64 0, i64 %row1\n"
        "  %lo = load i64, ptr %lp\n"
        "  %gh0 = lshr i64 %hi, 2\n"
        "  %lo2 = lshr i64 %lo, 2\n"
        "  %hi62 = shl i64 %hi, 62\n"
        "  %gl0 = or i64 %lo2, %hi62\n"
        "  %gl = add i64 %gl0, 1\n"
        "  %glz = icmp eq i64 %gl, 0\n"
        "  %ghc = zext i1 %glz to i64\n"
        "  %gh = add i64 %gh0, %ghc\n"
        "  %gh1 = shl i64 %gh, 1\n"
        "  %gl63 = lshr i64 %gl, 63\n"
        "  %g1 = or i64 %gh1, %gl63\n"
        "  %g0 = and i64 %gl, 9223372036854775807\n"
        "  %cbh = shl i64 %cb, %h\n"
        "  %cblh = shl i64 %cbl, %h\n"
        "  %cbrh = shl i64 %cbr, %h\n"
        "  %vb = call i64 @__olang_rop(i64 %g1, i64 %g0, i64 %cbh)\n"
        "  %vbl = call i64 @__olang_rop(i64 %g1, i64 %g0, i64 %cblh)\n"
        "  %vbr = call i64 @__olang_rop(i64 %g1, i64 %g0, i64 %cbrh)\n"
        "  %vblo = add i64 %vbl, %out\n"
        "  %s = lshr i64 %vb, 2\n"
        "  %big = icmp uge i64 %s, 10\n"
        "  br i1 %big, label %ten, label %one\n"
        //one digit fewer: the multiples of ten either side of v
        "ten:\n"
        "  %s10 = udiv i64 %s, 10\n"
        "  %sp10 = mul i64 %s10, 10\n"
        "  %tp10 = add i64 %sp10, 10\n"
        "  %sp4 = shl i64 %sp10, 2\n"
        "  %upin = icmp ule i64 %vblo, %sp4\n"
        "  %tp4 = shl i64 %tp10, 2\n"
        "  %tp4o = add i64 %tp4, %out\n"
        "  %wpin = icmp ule i64 %tp4o, %vbr\n"
        "  %both = and i1 %upin, %wpin\n"
        "  br i1 %both, label %fail, label %ten2\n"
        "ten2:\n"
        "  %either = or i1 %upin, %wpin\n"
        "  br i1 %either, label %tenok, label %one\n"
        "tenok:\n"
        "  %ften = select i1 %upin, i64 %sp10, i64 %tp10\n"
        "  br label %found\n"
        "one:\n"
        "  %t = add i64 %s, 1\n"
        "  %s4 = shl i64 %s, 2\n"
        "  %uin = icmp ule i64 %vblo, %s4\n"
        "  %t4 = shl i64 %t, 2\n"
        "  %t4o = add i64 %t4, %out\n"
        "  %win = icmp ule i64 %t4o, %vbr\n"
        "  %st = add i64 %s, %t\n"
        "  %st2 = shl i64 %st, 1\n"
        "  %cmp = sub i64 %vb, %st2\n"
        "  %clt = icmp slt i64 %cmp, 0\n"
        "  %ceq = icmp eq i64 %cmp, 0\n"
        "  %so = and i64 %s, 1\n"
        "  %se = icmp eq i64 %so, 0\n"
        "  %ctie = and i1 %ceq, %se\n"
        "  %low1 = or i1 %clt, %ctie\n"
        "  %ok1 = or i1 %uin, %win\n"
        "  %oneof = xor i1 %uin, %win\n"
        "  %pick = select i1 %oneof, i1 %uin, i1 %low1\n"
        "  %fone = select i1 %pick, i64 %s, i64 %t\n"
        "  br i1 %ok1, label %found, label %fail\n"
        "found:\n"
        "  %f = phi i64 [ %ften, %tenok ], [ %fone, %one ]\n"
        "  %k32 = trunc i64 %k to i32\n"
        "  %r0 = insertvalue { i64, i32, i1 } undef, i64 %f, 0\n"
        "  %r1 = insertvalue { i64, i32, i1 } %r0, i32 %k32, 1\n"
        "  %r2 = insertvalue { i64, i32, i1 } %r1, i1 true, 2\n"
        "  ret { i64, i32, i1 } %r2\n"
        "fail:\n"
        "  ret { i64, i32, i1 } { i64 0, i32 0, i1 false }\n"
        "}\n\n"
        , out);
    fputs(
        //E11a: a float as the shortest text reading back as it in its own type (kind: 0 F64, 1 F32, 2 F16, 3 BF16 -
        //enum floatKind): its significand and exponent in that type, Schubfach's digits, then laid out as "%.17g" lays
        //a number out - positional for a decimal exponent in [-4, 17), "d.ddde+XX" otherwise. For the tiniest values,
        //and an infinity or a NaN, @__olang_fmt_float_tries. snprintf's contract:
        //the length is returned, and with a buffer of cap bytes as much as fits is written, then a NUL
        "define linkonce_odr i64 @__olang_fmt_float(ptr %buf, i64 %cap, double %v, i32 %kind) {\n"
        "entry:\n"
        "  %d = alloca [24 x i8]\n"
        "  %o = alloca [48 x i8]\n"
        "  %vv = fsub double %v, %v\n"
        "  %fin = fcmp oeq double %vv, 0.0\n"
        "  br i1 %fin, label %finite, label %tries\n"
        "tries:\n"
        "  %tn = call i64 @__olang_fmt_float_tries(ptr %buf, i64 %cap, double %v, i32 %kind)\n"
        "  ret i64 %tn\n"
        "finite:\n"
        "  %bits = bitcast double %v to i64\n"
        "  %neg = icmp slt i64 %bits, 0\n"
        "  %negi = zext i1 %neg to i64\n"
        "  store i8 45, ptr %o\n"
        "  %isz = fcmp oeq double %v, 0.0\n"
        "  br i1 %isz, label %zero, label %parts\n"
        "zero:\n"
        "  %oz0 = getelementptr i8, ptr %o, i64 %negi\n"
        "  store i8 48, ptr %oz0\n"
        "  %zlen = add i64 %negi, 1\n"
        "  br label %copy\n"
        "parts:\n"
        "  switch i32 %kind, label %k64 [ i32 1, label %k32 i32 2, label %k16 i32 3, label %kb16 ]\n"
        "k64:\n"
        "  %e64s = lshr i64 %bits, 52\n"
        "  %e64 = and i64 %e64s, 2047\n"
        "  %m64 = and i64 %bits, 4503599627370495\n"
        "  br label %kc\n"
        "k32:\n"
        "  %f32 = fptrunc double %v to float\n"
        "  %b32 = bitcast float %f32 to i32\n"
        "  %b32w = zext i32 %b32 to i64\n"
        "  %e32s = lshr i64 %b32w, 23\n"
        "  %e32 = and i64 %e32s, 255\n"
        "  %m32 = and i64 %b32w, 8388607\n"
        "  br label %kc\n"
        "k16:\n"
        "  %f16 = fptrunc double %v to half\n"
        "  %b16 = bitcast half %f16 to i16\n"
        "  %b16w = zext i16 %b16 to i64\n"
        "  %e16s = lshr i64 %b16w, 10\n"
        "  %e16 = and i64 %e16s, 31\n"
        "  %m16 = and i64 %b16w, 1023\n"
        "  br label %kc\n"
        "kb16:\n"
        "  %fb16 = fptrunc double %v to bfloat\n"
        "  %bb16 = bitcast bfloat %fb16 to i16\n"
        "  %bb16w = zext i16 %bb16 to i64\n"
        "  %eb16s = lshr i64 %bb16w, 7\n"
        "  %eb16 = and i64 %eb16s, 255\n"
        "  %mb16 = and i64 %bb16w, 127\n"
        "  br label %kc\n"
        , out);
    fputs(
        //the type's exponent field, its fraction, its implicit bit, its bias plus its fraction's width, the
        //subnormals' exponent and its precision
        "kc:\n"
        "  %ex = phi i64 [ %e64, %k64 ], [ %e32, %k32 ], [ %e16, %k16 ], [ %eb16, %kb16 ]\n"
        "  %mn = phi i64 [ %m64, %k64 ], [ %m32, %k32 ], [ %m16, %k16 ], [ %mb16, %kb16 ]\n"
        "  %impl = phi i64 [ 4503599627370496, %k64 ], [ 8388608, %k32 ], [ 1024, %k16 ], [ 128, %kb16 ]\n"
        "  %off = phi i64 [ 1075, %k64 ], [ 150, %k32 ], [ 25, %k16 ], [ 134, %kb16 ]\n"
        "  %qmin = phi i32 [ -1074, %k64 ], [ -149, %k32 ], [ -24, %k16 ], [ -133, %kb16 ]\n"
        "  %prec = phi i32 [ 53, %k64 ], [ 24, %k32 ], [ 11, %k16 ], [ 8, %kb16 ]\n"
        "  %sub = icmp eq i64 %ex, 0\n"
        "  %cn = or i64 %mn, %impl\n"
        "  %c = select i1 %sub, i64 %mn, i64 %cn\n"
        "  %ex1 = select i1 %sub, i64 1, i64 %ex\n"
        "  %q64 = sub i64 %ex1, %off\n"
        "  %q = trunc i64 %q64 to i32\n"
        "  %r = call { i64, i32, i1 } @__olang_shortest(i64 %c, i32 %q, i32 %prec, i32 %qmin)\n"
        "  %ok = extractvalue { i64, i32, i1 } %r, 2\n"
        "  br i1 %ok, label %strip, label %tries\n"
        "strip:\n"
        "  %f0 = extractvalue { i64, i32, i1 } %r, 0\n"
        "  %e0 = extractvalue { i64, i32, i1 } %r, 1\n"
        "  br label %sloop\n"
        "sloop:\n"
        "  %f = phi i64 [ %f0, %strip ], [ %fq, %sdiv ]\n"
        "  %e = phi i32 [ %e0, %strip ], [ %e1, %sdiv ]\n"
        "  %fq = udiv i64 %f, 10\n"
        "  %fr = mul i64 %fq, 10\n"
        "  %zr = icmp eq i64 %fr, %f\n"
        "  br i1 %zr, label %sdiv, label %digits\n"
        "sdiv:\n"
        "  %e1 = add i32 %e, 1\n"
        "  br label %sloop\n"
        , out);
    fputs(
        //d holds the n digits; x is the decimal exponent of the first
        "digits:\n"
        "  %n64 = call i64 @__olang_fmt_u64(ptr %d, i64 %f)\n"
        "  %n = trunc i64 %n64 to i32\n"
        "  %nm1 = sub i32 %n, 1\n"
        "  %x = add i32 %e, %nm1\n"
        "  %xlo = icmp slt i32 %x, -4\n"
        "  %xhi = icmp sge i32 %x, 17\n"
        "  %sci = or i1 %xlo, %xhi\n"
        "  br i1 %sci, label %wsci, label %fixed\n"
        "wsci:\n"
        "  %o1 = getelementptr i8, ptr %o, i64 %negi\n"
        "  %d0 = load i8, ptr %d\n"
        "  store i8 %d0, ptr %o1\n"
        "  %w1 = add i64 %negi, 1\n"
        "  %many = icmp sgt i32 %n, 1\n"
        "  br i1 %many, label %sfrac, label %sexp\n"
        "sfrac:\n"
        "  %o2 = getelementptr i8, ptr %o, i64 %w1\n"
        "  store i8 46, ptr %o2\n"
        "  %w2 = add i64 %w1, 1\n"
        "  %o3 = getelementptr i8, ptr %o, i64 %w2\n"
        "  %d1 = getelementptr i8, ptr %d, i64 1\n"
        "  %nm164 = zext i32 %nm1 to i64\n"
        "  call void @llvm.memcpy.p0.p0.i64(ptr %o3, ptr %d1, i64 %nm164, i1 false)\n"
        "  %w3 = add i64 %w2, %nm164\n"
        "  br label %sexp\n"
        "sexp:\n"
        "  %ws = phi i64 [ %w1, %wsci ], [ %w3, %sfrac ]\n"
        "  %oe = getelementptr i8, ptr %o, i64 %ws\n"
        "  store i8 101, ptr %oe\n"
        "  %xneg = icmp slt i32 %x, 0\n"
        "  %sgn = select i1 %xneg, i8 45, i8 43\n"
        "  %ws1 = add i64 %ws, 1\n"
        "  %osg = getelementptr i8, ptr %o, i64 %ws1\n"
        "  store i8 %sgn, ptr %osg\n"
        "  %ws2 = add i64 %ws, 2\n"
        "  %xn = sub i32 0, %x\n"
        "  %ax = select i1 %xneg, i32 %xn, i32 %x\n"
        "  %ax64 = zext i32 %ax to i64\n"
        "  %small = icmp ult i32 %ax, 10\n"
        "  br i1 %small, label %epad, label %enum\n"
        "epad:\n"
        "  %oz = getelementptr i8, ptr %o, i64 %ws2\n"
        "  store i8 48, ptr %oz\n"
        "  %ws3 = add i64 %ws2, 1\n"
        "  br label %enum\n"
        "enum:\n"
        "  %wx = phi i64 [ %ws2, %sexp ], [ %ws3, %epad ]\n"
        "  %ox = getelementptr i8, ptr %o, i64 %wx\n"
        "  %nx = call i64 @__olang_fmt_u64(ptr %ox, i64 %ax64)\n"
        "  %wend1 = add i64 %wx, %nx\n"
        "  br label %copy\n"
        "fixed:\n"
        "  %pad = icmp sge i32 %x, %nm1\n"
        "  br i1 %pad, label %wpad, label %notpad\n"
        , out);
    fputs(
        //the digits, then x + 1 - n zeros
        "wpad:\n"
        "  %op = getelementptr i8, ptr %o, i64 %negi\n"
        "  call void @llvm.memcpy.p0.p0.i64(ptr %op, ptr %d, i64 %n64, i1 false)\n"
        "  %wp = add i64 %negi, %n64\n"
        "  %zc = sub i32 %x, %nm1\n"
        "  %zc64 = zext i32 %zc to i64\n"
        "  %oz2 = getelementptr i8, ptr %o, i64 %wp\n"
        "  call void @llvm.memset.p0.i64(ptr %oz2, i8 48, i64 %zc64, i1 false)\n"
        "  %wend2 = add i64 %wp, %zc64\n"
        "  br label %copy\n"
        "notpad:\n"
        "  %pos = icmp sge i32 %x, 0\n"
        "  br i1 %pos, label %wmid, label %wsmall\n"
        //the first x + 1 digits, a point, the rest
        "wmid:\n"
        "  %x1 = add i32 %x, 1\n"
        "  %x164 = zext i32 %x1 to i64\n"
        "  %om = getelementptr i8, ptr %o, i64 %negi\n"
        "  call void @llvm.memcpy.p0.p0.i64(ptr %om, ptr %d, i64 %x164, i1 false)\n"
        "  %wm = add i64 %negi, %x164\n"
        "  %odot = getelementptr i8, ptr %o, i64 %wm\n"
        "  store i8 46, ptr %odot\n"
        "  %wm1 = add i64 %wm, 1\n"
        "  %rest = sub i64 %n64, %x164\n"
        "  %drest = getelementptr i8, ptr %d, i64 %x164\n"
        "  %om2 = getelementptr i8, ptr %o, i64 %wm1\n"
        "  call void @llvm.memcpy.p0.p0.i64(ptr %om2, ptr %drest, i64 %rest, i1 false)\n"
        "  %wend3 = add i64 %wm1, %rest\n"
        "  br label %copy\n"
        //"0.", then -x - 1 zeros, then the digits
        "wsmall:\n"
        "  %os = getelementptr i8, ptr %o, i64 %negi\n"
        "  store i8 48, ptr %os\n"
        "  %wsa = add i64 %negi, 1\n"
        "  %osd = getelementptr i8, ptr %o, i64 %wsa\n"
        "  store i8 46, ptr %osd\n"
        "  %wsb = add i64 %negi, 2\n"
        "  %zs = sub i32 -1, %x\n"
        "  %zs64 = zext i32 %zs to i64\n"
        "  %osz = getelementptr i8, ptr %o, i64 %wsb\n"
        "  call void @llvm.memset.p0.i64(ptr %osz, i8 48, i64 %zs64, i1 false)\n"
        "  %wsc = add i64 %wsb, %zs64\n"
        "  %osdg = getelementptr i8, ptr %o, i64 %wsc\n"
        "  call void @llvm.memcpy.p0.p0.i64(ptr %osdg, ptr %d, i64 %n64, i1 false)\n"
        "  %wend4 = add i64 %wsc, %n64\n"
        "  br label %copy\n"
        "copy:\n"
        "  %len = phi i64 [ %zlen, %zero ], [ %wend1, %enum ], [ %wend2, %wpad ], [ %wend3, %wmid ], [ %wend4, %wsmall ]\n"
        "  %hasbuf = icmp ne ptr %buf, null\n"
        "  %hascap = icmp ne i64 %cap, 0\n"
        "  %wr = and i1 %hasbuf, %hascap\n"
        "  br i1 %wr, label %write, label %done\n"
        "write:\n"
        "  %capm1 = sub i64 %cap, 1\n"
        "  %fits = icmp ult i64 %len, %cap\n"
        "  %cnt = select i1 %fits, i64 %len, i64 %capm1\n"
        "  call void @llvm.memcpy.p0.p0.i64(ptr %buf, ptr %o, i64 %cnt, i1 false)\n"
        "  %nul = getelementptr i8, ptr %buf, i64 %cnt\n"
        "  store i8 0, ptr %nul\n"
        "  br label %done\n"
        "done:\n"
        "  ret i64 %len\n"
        "}\n\n"
        "", out);
}

//a number of `bytes` bytes at `off` in the struct at %base, as an i64 named %name - sign- or zero-extended as the C
//field is signed or not
static void cgOsLoadField(FILE* out, const char* name, const char* base, size_t off, size_t bytes, bool isSigned) {
    int bits = (int)bytes * 8;
    fprintf(out, "  %%%s.p = getelementptr i8, ptr %%%s, i64 %zu\n", name, base, off);
    fprintf(out, "  %%%s.v = load i%d, ptr %%%s.p\n", name, bits, name);
    if (bits == 64) fprintf(out, "  %%%s = add i64 %%%s.v, 0\n", name, name);
    else fprintf(out, "  %%%s = %s i%d %%%s.v to i64\n", name, isSigned ? "sext" : "zext", bits, name);
}

/* §11 X6, B12a: what the runtime reads of the C library's structures, on each architecture it builds for - Linux with
 * the GNU C library, 64-bit: struct stat (its size, and where st_mode, st_size and st_mtim's two parts are), where
 * struct dirent's d_name is, and the size of a posix_spawn_file_actions_t. The constants the runtime uses besides - the
 * S_IF* file kinds, the errno values (OsErrClasses) and EINVAL - are the kernel's, one set for every architecture here.
 * Written down rather than taken from this compiler's own headers, which describe only the machine it runs on - and
 * checked against them for that machine, below, so the row a build for this machine uses is the C library's own. */
struct cgLibcLayout {
    const char* arch;
    size_t statSize, mode, modeSize, size, mtimSec, mtimNsec, direntName, spawnActions;
};
static const struct cgLibcLayout cgLibcLayouts[] = {
    { "x86_64", 144, 24, 4, 48, 88, 96, 19, 80 },
    { "aarch64", 128, 16, 4, 48, 88, 96, 19, 80 },
};
#if defined(__x86_64__) && defined(__linux__) && defined(__GLIBC__)
#define CG_HOST_LAYOUT 0
#elif defined(__aarch64__) && defined(__linux__) && defined(__GLIBC__)
#define CG_HOST_LAYOUT 1
#endif
#ifdef CG_HOST_LAYOUT
_Static_assert(sizeof(struct stat) == (CG_HOST_LAYOUT ? 128 : 144), "struct stat's size");
_Static_assert(offsetof(struct stat, st_mode) == (CG_HOST_LAYOUT ? 16 : 24), "st_mode's offset");
_Static_assert(sizeof(((struct stat*)0)->st_mode) == 4, "st_mode's size");
_Static_assert(offsetof(struct stat, st_size) == 48 && sizeof(((struct stat*)0)->st_size) == 8, "st_size");
_Static_assert(offsetof(struct stat, st_mtim) + offsetof(struct timespec, tv_sec) == 88, "st_mtim.tv_sec");
_Static_assert(offsetof(struct stat, st_mtim) + offsetof(struct timespec, tv_nsec) == 96, "st_mtim.tv_nsec");
_Static_assert(sizeof(((struct stat*)0)->st_mtim.tv_sec) == 8 && sizeof(((struct stat*)0)->st_mtim.tv_nsec) == 8, "st_mtim");
_Static_assert(offsetof(struct dirent, d_name) == 19, "d_name's offset");
_Static_assert(sizeof(posix_spawn_file_actions_t) == 80, "posix_spawn_file_actions_t's size");
_Static_assert(S_IFMT == 0170000 && S_IFREG == 0100000 && S_IFDIR == 0040000 && EINVAL == 22, "the kernel's constants");
#endif

/* §11 X6 / B4a: what the runtime keeps of the process and offers std through "extern fn" - its command line, its
 * environment, the error the last failing system call left, and the system calls whose C interface hands back a
 * pointer or a struct, which X2 cannot receive. Each copies what it has into a buffer its caller supplies and returns
 * a length (snprintf's contract: the whole length, whatever fitted), so nothing is ever handed back by address. A
 * structure's offsets are the target's (cgLibcLayouts, B12a). -i has its own version of each (comptime.c), since these
 * live in the built program and not in the compiler's process. */
void emitOsRuntime(FILE* out) {
    const struct cgLibcLayout* L = &cgLibcLayouts[0];
    for (size_t i = 0; i < sizeof(cgLibcLayouts) / sizeof(cgLibcLayouts[0]); i++) {
        if (!strcmp(cgLibcLayouts[i].arch, cgArch)) L = &cgLibcLayouts[i];
    }
    fputs(
        //the command line, saved by "main" before anything else runs - a global initializer may read it (B5a)
        "@__olang_argc = linkonce_odr global i32 0\n"
        "@__olang_argv = linkonce_odr global ptr null\n"
        "declare i64 @strlen(ptr)\n"
        "declare ptr @getenv(ptr)\n"
        "declare ptr @__errno_location()\n"
        "declare i32 @stat(ptr, ptr)\n"
        "declare ptr @opendir(ptr)\n"
        "declare ptr @readdir(ptr)\n"
        "declare i32 @closedir(ptr)\n"
        "declare ptr @realpath(ptr, ptr)\n\n"
        //up to cap bytes of the NUL-terminated s into buf, and s's whole length
        "define linkonce_odr i64 @__olang_copy_cstr(ptr %s, ptr %buf, i64 %cap) {\n"
        "entry:\n"
        "  %len = call i64 @strlen(ptr %s)\n"
        "  %pos = icmp sgt i64 %cap, 0\n"
        "  %c = select i1 %pos, i64 %cap, i64 0\n"
        "  %fits = icmp ult i64 %len, %c\n"
        "  %n = select i1 %fits, i64 %len, i64 %c\n"
        "  call void @llvm.memcpy.p0.p0.i64(ptr %buf, ptr %s, i64 %n, i1 false)\n"
        "  ret i64 %len\n"
        "}\n\n"
        "define linkonce_odr i64 @__olang_arg_count() {\n"
        "entry:\n"
        "  %n = load i32, ptr @__olang_argc\n"
        "  %w = sext i32 %n to i64\n"
        "  ret i64 %w\n"
        "}\n\n"
        //argument i, or -1 past the last
        "define linkonce_odr i64 @__olang_arg(i64 %i, ptr %buf, i64 %cap) {\n"
        "entry:\n"
        "  %n = load i32, ptr @__olang_argc\n"
        "  %w = sext i32 %n to i64\n"
        "  %ok = icmp ult i64 %i, %w\n"
        "  br i1 %ok, label %have, label %none\n"
        "have:\n"
        "  %argv = load ptr, ptr @__olang_argv\n"
        "  %slot = getelementptr ptr, ptr %argv, i64 %i\n"
        "  %s = load ptr, ptr %slot\n"
        "  %len = call i64 @__olang_copy_cstr(ptr %s, ptr %buf, i64 %cap)\n"
        "  ret i64 %len\n"
        "none:\n"
        "  ret i64 -1\n"
        "}\n\n"
        //the variable "name" (NUL-terminated), or -1 when it is not set
        "define linkonce_odr i64 @__olang_env(ptr %name, ptr %buf, i64 %cap) {\n"
        "entry:\n"
        "  %s = call ptr @getenv(ptr %name)\n"
        "  %unset = icmp eq ptr %s, null\n"
        "  br i1 %unset, label %none, label %have\n"
        "have:\n"
        "  %len = call i64 @__olang_copy_cstr(ptr %s, ptr %buf, i64 %cap)\n"
        "  ret i64 %len\n"
        "none:\n"
        "  ret i64 -1\n"
        "}\n\n"
        //the real path of "path" - absolute, with every symbolic link resolved - or -1 (errno says why)
        "define linkonce_odr i64 @__olang_realpath(ptr %path, ptr %buf, i64 %cap) {\n"
        "entry:\n"
        "  %r = call ptr @realpath(ptr %path, ptr null)\n"
        "  %bad = icmp eq ptr %r, null\n"
        "  br i1 %bad, label %fail, label %have\n"
        "have:\n"
        "  %len = call i64 @__olang_copy_cstr(ptr %r, ptr %buf, i64 %cap)\n"
        "  call void @free(ptr %r)\n"
        "  ret i64 %len\n"
        "fail:\n"
        "  ret i64 -1\n"
        "}\n\n", out);

    //the class of the error the last failing call on this thread left in errno - the table -i reads too
    fputs("define linkonce_odr i32 @__olang_err() {\n"
          "entry:\n"
          "  %p = call ptr @__errno_location()\n"
          "  %e = load i32, ptr %p\n", out);
    fputs("  %r0 = add i32 0, 0\n", out);
    for (int i = 0; i < OsErrClassCount; i++) {
        fprintf(out, "  %%is%d = icmp eq i32 %%e, %d\n", i, OsErrClasses[i].errnoVal);
        fprintf(out, "  %%r%d = select i1 %%is%d, i32 %d, i32 %%r%d\n", i + 1, i, OsErrClasses[i].cls, i);
    }
    fprintf(out, "  ret i32 %%r%d\n}\n\n", OsErrClassCount);

    //stat(path) into out: out[0] the kind (1 a file, 2 a directory, 0 anything else), out[1] the size in bytes,
    //out[2] the modification time in nanoseconds since the epoch; 0, or -1 when stat fails (errno says why)
    fprintf(out, "define linkonce_odr i32 @__olang_stat(ptr %%path, ptr %%out) {\n"
                 "entry:\n"
                 "  %%st = alloca [%zu x i8], align 16\n"
                 "  %%rc = call i32 @stat(ptr %%path, ptr %%st)\n"
                 "  %%ok = icmp eq i32 %%rc, 0\n"
                 "  br i1 %%ok, label %%have, label %%fail\n"
                 "have:\n", L->statSize);
    cgOsLoadField(out, "mode", "st", L->mode, L->modeSize, false);
    cgOsLoadField(out, "size", "st", L->size, 8, true);
    cgOsLoadField(out, "sec", "st", L->mtimSec, 8, true);
    cgOsLoadField(out, "nsec", "st", L->mtimNsec, 8, true);
    fprintf(out, "  %%fmt = and i64 %%mode, %d\n"
                 "  %%isreg = icmp eq i64 %%fmt, %d\n"
                 "  %%isdir = icmp eq i64 %%fmt, %d\n"
                 "  %%k1 = select i1 %%isdir, i64 2, i64 0\n"
                 "  %%kind = select i1 %%isreg, i64 1, i64 %%k1\n"
                 "  store i64 %%kind, ptr %%out\n"
                 "  %%o1 = getelementptr i64, ptr %%out, i64 1\n"
                 "  store i64 %%size, ptr %%o1\n"
                 "  %%ns = mul i64 %%sec, 1000000000\n"
                 "  %%t = add i64 %%ns, %%nsec\n"
                 "  %%o2 = getelementptr i64, ptr %%out, i64 2\n"
                 "  store i64 %%t, ptr %%o2\n"
                 "  ret i32 0\n"
                 "fail:\n"
                 "  ret i32 -1\n"
                 "}\n\n", 0170000, 0100000, 0040000);

    //the names in directory "path" - "." and ".." left out, each followed by a NUL, in the order the directory
    //gives them - as many whole names as fit in cap bytes, and the bytes all of them take; -1 when it cannot be
    //opened (errno says why)
    fprintf(out, "define linkonce_odr i64 @__olang_dir(ptr %%path, ptr %%buf, i64 %%cap) {\n"
                 "entry:\n"
                 "  %%d = call ptr @opendir(ptr %%path)\n"
                 "  %%bad = icmp eq ptr %%d, null\n"
                 "  br i1 %%bad, label %%fail, label %%loop\n"
                 "loop:\n"
                 "  %%at = phi i64 [ 0, %%entry ], [ %%at, %%skip ], [ %%after, %%next ]\n"
                 "  %%e = call ptr @readdir(ptr %%d)\n"
                 "  %%end = icmp eq ptr %%e, null\n"
                 "  br i1 %%end, label %%done, label %%one\n"
                 "one:\n"
                 "  %%name = getelementptr i8, ptr %%e, i64 %zu\n"
                 "  %%c0 = load i8, ptr %%name\n"
                 "  %%dot0 = icmp eq i8 %%c0, 46\n"
                 "  br i1 %%dot0, label %%dot1, label %%keep\n"
                 "dot1:\n"
                 "  %%p1 = getelementptr i8, ptr %%name, i64 1\n"
                 "  %%c1 = load i8, ptr %%p1\n"
                 "  %%nul1 = icmp eq i8 %%c1, 0\n"
                 "  br i1 %%nul1, label %%skip, label %%dot2\n"
                 "dot2:\n"
                 "  %%isdot1 = icmp eq i8 %%c1, 46\n"
                 "  br i1 %%isdot1, label %%dot3, label %%keep\n"
                 "dot3:\n"
                 "  %%p2 = getelementptr i8, ptr %%name, i64 2\n"
                 "  %%c2 = load i8, ptr %%p2\n"
                 "  %%nul2 = icmp eq i8 %%c2, 0\n"
                 "  br i1 %%nul2, label %%skip, label %%keep\n"
                 "skip:\n"
                 "  br label %%loop\n"
                 "keep:\n"
                 "  %%len = call i64 @strlen(ptr %%name)\n"
                 "  %%len1 = add i64 %%len, 1\n"
                 "  %%after = add i64 %%at, %%len1\n"
                 "  %%fits = icmp sle i64 %%after, %%cap\n"
                 "  br i1 %%fits, label %%copy, label %%next\n"
                 "copy:\n"
                 "  %%dst = getelementptr i8, ptr %%buf, i64 %%at\n"
                 "  call void @llvm.memcpy.p0.p0.i64(ptr %%dst, ptr %%name, i64 %%len1, i1 false)\n"
                 "  br label %%next\n"
                 "next:\n"
                 "  br label %%loop\n"
                 "done:\n"
                 "  call i32 @closedir(ptr %%d)\n"
                 "  ret i64 %%at\n"
                 "fail:\n"
                 "  ret i64 -1\n"
                 "}\n\n", L->direntName);

    //the program named by the count NUL-terminated entries of args, started with them as its command line - the first
    //looked up through PATH as posix_spawnp does - and with in, out and err (each -1 for this process's own) as its
    //standard input, output and error, without a shell; its process id, or -1 when it could not be started (errno says
    //why - posix_spawnp gives its error as its result, which is put where __olang_err looks)
    fprintf(out, "declare i32 @posix_spawn_file_actions_init(ptr)\n"
                 "declare i32 @posix_spawn_file_actions_destroy(ptr)\n"
                 "declare i32 @posix_spawn_file_actions_adddup2(ptr, i32, i32)\n"
                 "declare i32 @posix_spawnp(ptr, ptr, ptr, ptr, ptr, ptr)\n"
                 "@environ = external global ptr\n\n"
                 "define linkonce_odr i32 @__olang_spawn(ptr %%args, i64 %%count, i32 %%in, i32 %%out, i32 %%err) {\n"
                 "entry:\n"
                 "  %%fa = alloca [%zu x i8], align 16\n"
                 "  %%pid = alloca i32\n"
                 "  %%none = icmp slt i64 %%count, 1\n"
                 "  br i1 %%none, label %%inval, label %%start\n"
                 "inval:\n"
                 "  %%ep0 = call ptr @__errno_location()\n"
                 "  store i32 %d, ptr %%ep0\n"
                 "  ret i32 -1\n"
                 "start:\n"
                 "  %%n1 = add i64 %%count, 1\n"
                 "  %%bytes = mul i64 %%n1, 8\n"
                 "  %%argv = call ptr @malloc(i64 %%bytes)\n"
                 "  br label %%loop\n"
                 "loop:\n"
                 "  %%i = phi i64 [ 0, %%start ], [ %%i1, %%step ]\n"
                 "  %%p = phi ptr [ %%args, %%start ], [ %%p1, %%step ]\n"
                 "  %%more = icmp slt i64 %%i, %%count\n"
                 "  br i1 %%more, label %%step, label %%built\n"
                 "step:\n"
                 "  %%slot = getelementptr ptr, ptr %%argv, i64 %%i\n"
                 "  store ptr %%p, ptr %%slot\n"
                 "  %%len = call i64 @strlen(ptr %%p)\n"
                 "  %%len1 = add i64 %%len, 1\n"
                 "  %%p1 = getelementptr i8, ptr %%p, i64 %%len1\n"
                 "  %%i1 = add i64 %%i, 1\n"
                 "  br label %%loop\n"
                 "built:\n"
                 "  %%end = getelementptr ptr, ptr %%argv, i64 %%count\n"
                 "  store ptr null, ptr %%end\n"
                 "  %%fi = call i32 @posix_spawn_file_actions_init(ptr %%fa)\n"
                 "  %%hasIn = icmp sge i32 %%in, 0\n"
                 "  br i1 %%hasIn, label %%dupIn, label %%doneIn\n"
                 "dupIn:\n"
                 "  %%d0 = call i32 @posix_spawn_file_actions_adddup2(ptr %%fa, i32 %%in, i32 0)\n"
                 "  br label %%doneIn\n"
                 "doneIn:\n"
                 "  %%hasOut = icmp sge i32 %%out, 0\n"
                 "  br i1 %%hasOut, label %%dupOut, label %%doneOut\n"
                 "dupOut:\n"
                 "  %%d1 = call i32 @posix_spawn_file_actions_adddup2(ptr %%fa, i32 %%out, i32 1)\n"
                 "  br label %%doneOut\n"
                 "doneOut:\n"
                 "  %%hasErr = icmp sge i32 %%err, 0\n"
                 "  br i1 %%hasErr, label %%dupErr, label %%doneErr\n"
                 "dupErr:\n"
                 "  %%d2 = call i32 @posix_spawn_file_actions_adddup2(ptr %%fa, i32 %%err, i32 2)\n"
                 "  br label %%doneErr\n"
                 "doneErr:\n"
                 "  %%env = load ptr, ptr @environ\n"
                 "  %%prog = load ptr, ptr %%argv\n"
                 "  %%rc = call i32 @posix_spawnp(ptr %%pid, ptr %%prog, ptr %%fa, ptr null, ptr %%argv, ptr %%env)\n"
                 "  %%fd = call i32 @posix_spawn_file_actions_destroy(ptr %%fa)\n"
                 "  call void @free(ptr %%argv)\n"
                 "  %%ok = icmp eq i32 %%rc, 0\n"
                 "  br i1 %%ok, label %%started, label %%failed\n"
                 "started:\n"
                 "  %%v = load i32, ptr %%pid\n"
                 "  ret i32 %%v\n"
                 "failed:\n"
                 "  %%ep = call ptr @__errno_location()\n"
                 "  store i32 %%rc, ptr %%ep\n"
                 "  ret i32 -1\n"
                 "}\n\n", L->spawnActions, 22);
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
    //B5a: in the order the checker found, each after the globals its initializer reads
    int count = emitMod->globalOrderSet ? emitMod->globalOrder.len : emitMod->vars.len;
    for (int i = 0; i < count; i++) {
        struct var* v = emitMod->globalOrderSet ? *(struct var**)ListGetIdx(&emitMod->globalOrder, i)
                                                : (struct var*)ListGetIdx(&emitMod->vars, i);
        if ((v->type.bType == BASETYPE_FUNC && !v->isGlobalVar) || !v->initExpr || v->initExpr->zeroBits) continue; //D13c: zero bits is BSS
        char gname[256];
        mangleGlobal(emitMod, v->name, gname, sizeof(gname));
        if (cgIsBaked(v)) continue; //K2: already the global's data
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
    bool outFirst = cgRetViaMemory(func->type);
    if (outFirst) fprintf(out, named ? "ptr %%out" : "ptr"); //a result through memory, first of all
    if (ctor) fprintf(out, named ? "%sptr %%here" : "%sptr", outFirst ? ", " : ""); //C2d
    //D16: a lambda is reached only through a function value, so it takes the value's closure first - and its
    //captures' scopes come from that closure, not from its caller
    if (func->isLambda) { fprintf(out, named ? "%sptr %%closure" : "%sptr", outFirst ? ", " : ""); ctor = true; }
    ctor = ctor || outFirst;
    bool anyScope = false;
    for (int i = 0; i < func->type.scopeVars.len; i++) {
        if ((*(struct var**)ListGetIdx(&func->type.scopeVars, i))->isCaptureScope) continue;
        fprintf(out, "%sptr", anyScope || ctor ? ", " : "");
        if (named) fprintf(out, " %%sarg%d", i);
        anyScope = true;
    }
    bool dtor = cgIsDtor(func);
    for (int i = 0; i < func->type.vars.len; i++) {
        struct var* p = ListGetIdx(&func->type.vars, i);
        char pty[256];
        if (dtor) snprintf(pty, sizeof(pty), "ptr");
        else cgParamTy(p->type, pty, sizeof(pty));
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
            if (v->type.bType != BASETYPE_FUNC || v->type.isExtern || v->isGlobalVar) continue;
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
    //non-LTO build (-r) does before the object is written. "weak_odr" is kept, and still merges with
    //the copy a "-c" object of an imported module may carry.
    fprintf(ctx->fnOut, "define %s%s %s(", shared ? "weak_odr " : func->isLambda ? "internal " : "", retTy, name);
    cgEmitParamList(ctx->fnOut, func, true);
    fprintf(ctx->fnOut, ")%s {\nentry:\n", cgDbgSubprogram(ctx, func->name, name, func->tok.lineNr, func->tok));
    struct cgBodyBuf bb;
    cgBodyBegin(ctx, &bb);
    ctx->terminated = false;
    if (retTy[0] == '{' || retTy[0] == '%' || retTy[0] == '[') {
        ctx->retSlot = cgNewTmp(ctx);
        snprintf(ctx->retSlotTy, sizeof(ctx->retSlotTy), "%s", retTy);
        fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", ctx->retSlot, retTy);
    }

    for (int i = 0; i < func->type.scopeVars.len; i++) {
        struct var* sv = *(struct var**)ListGetIdx(&func->type.scopeVars, i);
        if (sv->isCaptureScope) continue; //D16c: from the closure, below
        char* slot = cgDeclareLocal(ctx, sv->name, sv->type);
        fprintf(cgAllocaOut(ctx), "  %s = alloca ptr\n", slot);
        fprintf(ctx->fnOut, "  store ptr %%sarg%d, ptr %s\n", i, slot);
    }
    //D16c: a lambda's captures, and their scopes, as the closure carries them
    if (func->isLambda && func->lambdaCaptures.len) {
        char* envTy = cgClosureType(func);
        int field = 0;
        for (int i = 0; i < func->lambdaCaptures.len; i++) {
            struct var* in = ((struct lambdaCapture*)ListGetIdx(&func->lambdaCaptures, i))->inner;
            char cty[256];
            llvmType(in->type, cty, sizeof(cty));
            char* fp = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %%closure, i32 0, i32 %d\n", fp, envTy, field++);
            char* slot = cgDeclareLocal(ctx, in->name, in->type);
            fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", slot, cty);
            if (cgViaMemory(in->type)) {
                fprintf(ctx->fnOut, "  call void @llvm.memcpy.p0.p0.i64(ptr %s, ptr %s, i64 %lld, i1 false)\n", slot, fp,
                        TypeGetSize(in->type));
            } else {
                char* fv = cgNewTmp(ctx);
                fprintf(ctx->fnOut, "  %s = load %s, ptr %s%s\n", fv, cty, fp, cgCaptureTbaa);
                fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", cty, fv, slot);
            }
            if (!in->type.scopeParam) continue;
            char* sp = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %%closure, i32 0, i32 %d\n", sp, envTy, field++);
            char* sval = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = load ptr, ptr %s%s\n", sval, sp, cgCaptureTbaa);
            char* sslot = cgDeclareLocal(ctx, in->type.scopeParam->name, in->type.scopeParam->type);
            fprintf(cgAllocaOut(ctx), "  %s = alloca ptr\n", sslot);
            fprintf(ctx->fnOut, "  store ptr %s, ptr %s\n", sval, sslot);
        }
    }
    //D9: a "mut" parameter holding a run-time-length array by value - a generic's, instantiated with one (D9a) - is the
    //callee's own copy, as a struct's is: it was handed the caller's { length, storage } pair, and writing through that
    //changed the caller's array (or faulted on a constant one)
    struct list ownCopies = ListInit(sizeof(int));
    for (int i = 0; i < func->type.vars.len; i++) {
        struct var* p = ListGetIdx(&func->type.vars, i);
        if (cgIsDtor(func)) { //C9: the instance itself, in place - its storage is where the pointer passed points
            struct cgLocal self = {0};
            self.name = p->name;
            self.type = p->type;
            self.llvmVal = "%arg0";
            ListAdd(&ctx->scope->locals, &self);
            continue;
        }
        if (cgViaMemory(p->type)) { //its storage is the copy the caller made for this call
            struct cgLocal mine = {0};
            mine.name = p->name;
            mine.type = p->type;
            mine.llvmVal = MallocOrCrash(24);
            snprintf(mine.llvmVal, 24, "%%arg%d", i);
            ListAdd(&ctx->scope->locals, &mine);
            continue;
        }
        char pty[256];
        llvmType(p->type, pty, sizeof(pty));
        char* slot = cgDeclareLocal(ctx, p->name, p->type);
        fprintf(cgAllocaOut(ctx), "  %s = alloca %s\n", slot, pty);
        //%argN is already the real boundary-form value (aggregate or scalar) - store it directly, unlike
        //cgStoreInto's by-ref branch which expects our internal ptr-to-storage convention
        fprintf(ctx->fnOut, "  store %s %%arg%d, ptr %s\n", pty, i, slot);
        cgDbgVar(ctx, slot, p->name, p->type, func->tok.lineNr, i + 1);
        if (p->mut && !p->type.structMAlloc && p->type.bType == BASETYPE_ARRAY && p->type.arrMalloc) ListAdd(&ownCopies, &i);
    }

    //this function's own private scope - see emitScopeRuntime/cgCloseOwnScope. Lazily empty (lazy in the
    //sense that no chunk is grabbed until something actually allocates into it) until "own" or a bare
    //"&" allocation touches it; harmless and cheap to always set up even when never used.
    char* ownScope = cgNewTmp(ctx);
    fprintf(cgAllocaOut(ctx), "  %s = alloca %%olang.scope\n", ownScope);
    fprintf(ctx->fnOut, "  store %%olang.scope zeroinitializer, ptr %s\n", ownScope);
    ctx->ownScopeSlot = ownScope;
    for (int k = 0; k < ownCopies.len; k++) {
        struct var* p = ListGetIdx(&func->type.vars, *(int*)ListGetIdx(&ownCopies, k));
        struct cgLocal* l = cgFindLocal(ctx, p->name);
        char* cur = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load { i64, ptr }, ptr %s\n", cur, l->llvmVal);
        char* mine = cgCopyRuntimeLengthArray(ctx, p->type, cur, ownScope, NULL);
        fprintf(ctx->fnOut, "  store { i64, ptr } %s, ptr %s\n", mine, l->llvmVal);
    }
    ListDestroy(ownCopies);
    //O2: the body IS a block, and the checker counts it as depth 1 (buildBlock). This path emits its
    //statements directly rather than through cgBlock, so the depth has to be set to match or every
    //nested block lands one level too shallow and never gets an arena of its own.
    ctx->blockDepth = 1;
    ctx->blockSlots.len = 0;
    ctx->blockJoins.len = 0;
    ctx->scopePool.len = 0; //O2: each depth's slots are made as its first block is opened (cgEnsureBlockSlot)
    ctx->joinPool.len = 0;
    cgSetupUnwind(ctx);
    cgPushOwnUnwind(ctx);

    ctx->defers.len = 0; //S19: the body's own deferred code - cgCloseOwnScope runs it on every way out
    ctx->resultLocal = cgResultLocal(func);
    for (int i = 0; i < func->codeBlock.len; i++) {
        struct statement* s = ListGetIdx(&func->codeBlock, i);
        if (ctx->terminated) cgDeadLabel(ctx); //written after a return, a break or an error
        cgStatement(ctx, s);
    }

    if (!ctx->terminated && cgRetViaMemory(func->type)) { //unreachable past D10a, but well-formed: a zero result
        cgCloseOwnScope(ctx);
        fprintf(ctx->fnOut, "  call void @llvm.memset.p0.i64(ptr %%out, i8 0, i64 %lld, i1 false)\n",
                TypeGetSize(*func->type.retType));
        fputs(func->type.errors.len ? "  ret i32 0\n" : "  ret void\n", ctx->fnOut);
    } else if (!ctx->terminated) {
        cgCloseOwnScope(ctx);
        if (func->type.errors.len > 0) {
            //fell off the end without an explicit return/error: implicit success, same as an infallible
            //function's implicit zero-value return below - zeroinitializer's i32 field is code 0
            if (func->type.hasRetType) cgEmitRet(ctx, retTy, "zeroinitializer");
            else fputs("  ret i32 0\n", ctx->fnOut);
        } else if (!func->type.hasRetType) fputs("  ret void\n", ctx->fnOut);
        else {
            char* z = cgZeroValue(*func->type.retType);
            cgEmitRet(ctx, retTy, z);
        }
    }
    if (ctx->retSlotUsed) {
        char* r = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "ret.common:\n  %s = load %s, ptr %s\n  ret %s %s\n", r, retTy, ctx->retSlot, retTy, r);
    }
    ctx->retSlot = NULL;
    ctx->retSlotUsed = false;
    ctx->resultLocal = NULL;
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
            if (v->type.bType != BASETYPE_FUNC || v->type.isExtern || v->isGlobalVar) continue;
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

//B12: the target's triple, as clang normalized it when the target was resolved - for this machine its own default, so
//clang never warns that it overrides the module's triple
void emitTargetTriple(FILE* out) {
    fprintf(out, "target triple = \"%s\"\n\n", cgTriple);
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
          "!18 = !{!\"closure\", !20, i64 0}\n" //a closure's environment (cgCaptureTbaa)
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
          "!28 = !{!18, !18, i64 0}\n"
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

//B4a: the process's command line, kept for the runtime's "__olang_arg" (X6) before anything else runs - a global's
//initializer may already read it (B5a)
static void cgSaveCommandLine(struct cgCtx* ctx) {
    fputs("  store i32 %argc, ptr @__olang_argc\n  store ptr %argv, ptr @__olang_argv\n", ctx->fnOut);
}

//main's signature is fixed to "<errors> ? void" (checked in semantic.c: no params, no success type, at
//least one declared error) - so its LLVM return is always a bare i32 code, no payload to worry about.
//code 0 -> process exit 0. Nonzero -> prints which declared error it was to stderr, then exits 1 (the
//OS-standard success/failure pair - see the report for why a finer-grained exit code isn't worth it).
void cgProgramMain(struct cgCtx* ctx, struct semaModule* root) {
    struct var* mainFunc = VarGetList(&root->vars, StrFromCStr("main"));
    fprintf(ctx->fnOut, "define i32 @main(i32 %%argc, ptr %%argv)%s {\nentry:\n", cgDbgSubprogram(ctx, StrFromCStr("olang.start"), "main", 1, (struct token){0}));
    struct cgBodyBuf bb;
    cgBodyBegin(ctx, &bb);
    ctx->terminated = false;
    cgSaveCommandLine(ctx);
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

    fprintf(ctx->fnOut, "define i32 @main(i32 %%argc, ptr %%argv)%s {\nentry:\n", cgDbgSubprogram(ctx, StrFromCStr("olang.tests"), "main", 1, (struct token){0}));
    struct cgBodyBuf bb;
    cgBodyBegin(ctx, &bb);
    ctx->terminated = false;
    cgSaveCommandLine(ctx);
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
        ctx->scopePool.len = 0; //O2: each depth's slots are made as its first block is opened (cgEnsureBlockSlot),
        ctx->joinPool.len = 0;  //and a block zeroes its header as it opens it, so the unwinder reads only entered ones

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
        fprintf(cgAllocaOut(ctx), "  %s = alloca [%zu x i8], align 16\n", buf, sizeof(jmp_buf)); //-t is for this machine (B12a)
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
//B12: every function carries the target's CPU and features (cgTargetAttrs), as a C frontend's do. Under LTO the code
//is generated at the link, from bitcode, and what decides which instructions a function may use there is its own
//attributes - a flag given to the compile step would reach nothing. P7: LLVM's ThreadSanitizer pass instruments a
//function only if it carries the "sanitize_thread" attribute - a C/C++ frontend adds it, and there is no frontend for a
//.ll, so -fsanitize=thread alone silently instruments NOTHING. Rewriting the finished text is what avoids threading
//both through all the "define" sites, several of which live inside multi-function runtime string literals; doing it
//here also guarantees the runtime itself (the arena, the scope merge, the chunk pool, the join walk) is built for the
//target and, under -r, instrumented - exactly the code a concurrency bug would hide in.
static void cgWriteWithAttributes(FILE* dst, char* buf, size_t len, bool race) {
    size_t i = 0;
    while (i < len) {
        size_t end = i;
        while (end < len && buf[end] != '\n') end++;
        size_t lineLen = end - i;
        //"define <...> {" - the attribute group goes immediately before the brace. The last brace on the
        //line is the right one: a struct return type ("define { i32, i32 } @f() {") contains others.
        //Under -d the line also carries "!dbg !N", and attributes must come before it.
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
    fprintf(dst, "\nattributes #0 = { %s%s }\n", race ? "sanitize_thread " : "", cgTargetAttrs);
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
    ctx.defers = ListInit(sizeof(struct cgDefer));

    ctx.debug = debug;
    ctx.fnValues = ListInit(sizeof(struct var*));
    ctx.staticLits = ListInit(sizeof(struct cgStaticLit));
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
    if (ctx.floatText) emitFloatTextRuntime(out);

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
    cgWriteWithAttributes(real, modBuf, modSize, race);
    fclose(real);
    fclose(out);
    free(modBuf);
}

