#define _GNU_SOURCE
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "util.h"
#include "token.h"
#include "syntax.h"
#include "semantic.h"
#include "codegen.h"

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

struct cgCtx {
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
    //ambient "this is the scope a struct/array literal currently under construction is ultimately being
    //promoted into" - set by cgValueForTarget/cgBoundaryValue around a recursive cgValue() call so a
    //literal's own nested bare-"&" fields (built inside cgAggregateLiteral) inherit the *same* scope as
    //the literal itself, instead of each independently defaulting to ctx->ownScopeSlot - see the report.
    //NULL when nothing is currently being promoted (the common case - most values never touch this).
    char* targetScopeOverride;
    int tmpCtr;
    int lblCtr;
    int strCtr;
    bool terminated; //true once the current basic block has a terminator - see cgLabel/cgBr
};

int modIndex(struct semaModule* mod) {
    struct list* all = SemanticAllModules();
    for (int i = 0; i < all->len; i++) {
        if (*(struct semaModule**)ListGetIdx(all, i) == mod) return i;
    }
    ErrorBugFound();
    return -1;
}

void mangleGlobal(struct semaModule* mod, struct str name, char* buf, size_t n) {
    snprintf(buf, n, "@m%d_%.*s", modIndex(mod), name.len, name.ptr);
}

void mangleTypeName(struct semaModule* mod, struct str name, char* buf, size_t n) {
    snprintf(buf, n, "m%d.%.*s", modIndex(mod), name.len, name.ptr);
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
        case BASETYPE_VOID: snprintf(buf, n, "void"); return;
        case BASETYPE_BOOL: snprintf(buf, n, "i1"); return;
        case BASETYPE_BYTE: snprintf(buf, n, "i8"); return;
        case BASETYPE_INT32: snprintf(buf, n, "i32"); return;
        case BASETYPE_INT64: snprintf(buf, n, "i64"); return;
        case BASETYPE_FLOAT32: snprintf(buf, n, "float"); return;
        case BASETYPE_FLOAT64: snprintf(buf, n, "double"); return;
        case BASETYPE_VOCAB: snprintf(buf, n, "i32"); return;
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
long long errorCode(struct type funcType, struct type errType, long long wordOrdinal) {
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
    if (ctx->ownScopeSlot) fprintf(ctx->fnOut, "  call void @__olang_scope_close(ptr %s)\n", ctx->ownScopeSlot);
}

struct cgLocal* cgFindLocal(struct cgCtx* ctx, struct str name);



void cgPropagateError(struct cgCtx* ctx, struct type calleeType, char* code) {
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

//NULL if not a local in the current codegen scope chain
struct cgLocal* cgFindLocal(struct cgCtx* ctx, struct str name) {
    for (struct cgScope* sc = ctx->scope; sc; sc = sc->parent) {
        for (int i = 0; i < sc->locals.len; i++) {
            struct cgLocal* l = ListGetIdx(&sc->locals, i);
            if (StrCmp(l->name, name)) return l;
        }
    }
    return NULL;
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

//the runtime "ptr" value for a scopeParam field (see semantic.h): NULL means "this value's own private
//scope" (the enclosing function/test's own alloca, same as "own" itself evaluates to - see cgLiteral);
//non-NULL names a scope-typed parameter, whose current value (whatever scope its own caller passed) is
//just an ordinary local read.
char* cgResolveScope(struct cgCtx* ctx, struct var* scopeParam) {
    if (!scopeParam) return ctx->ownScopeSlot;
    char* addr = cgLookupVarAddr(ctx, scopeParam);
    char* loaded = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", loaded, addr);
    return loaded;
}

static bool typeIsRefShaped(struct type t);

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
char* cgResolveEffectiveScope(struct cgCtx* ctx, struct operand* base) {
    if (base->type.scopeParam) return cgResolveScope(ctx, base->type.scopeParam);
    if (base->opType == OPERATION_MEMBER || base->opType == OPERATION_INDEX) {
        struct operand* innerBase = *(struct operand**)ListGetIdx(&base->args, 0);
        if (typeIsRefShaped(innerBase->type) && innerBase->type.structMAlloc) {
            return cgResolveEffectiveScope(ctx, innerBase);
        }
    }
    return ctx->ownScopeSlot;
}

char* cgValue(struct cgCtx* ctx, struct operand* op);

//true for a type that "&"/"&name" can mark as a reference - a struct, or a compile-time-length ("T[N]") array;
//a runtime-length ("T[]") array is excluded, same reasoning as typeNeedsMallocPromotion.
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
//already has in its own scope, e.g. a scope parameter of the caller itself being passed straight through).
char* cgResolveParamScopeOverride(struct cgCtx* ctx, struct var* func, struct list* args, struct type paramT) {
    if (!(typeIsRefShaped(paramT) && paramT.structMAlloc && paramT.scopeParam)) return NULL;
    for (int i = 0; i < func->type.vars.len; i++) {
        struct var* p = ListGetIdx(&func->type.vars, i);
        if (p != paramT.scopeParam) continue;
        struct operand* scopeArg = *(struct operand**)ListGetIdx(args, i);
        return cgValue(ctx, scopeArg);
    }
    return NULL;
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
        mangleGlobal(t.destructFunc->owner, t.destructFunc->name, dtorSym, sizeof(dtorSym));
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
char* cgPromoteFixedToRuntimeLength(struct cgCtx* ctx, struct type srcT, char* srcAddr, char* scopeVal) {
    struct type elemT = *srcT.arrElem;
    char elemTy[256];
    llvmType(elemT, elemTy, sizeof(elemTy));
    long long elemSize = TypeGetSize(elemT);
    long long count = srcT.arrLen->intLiteralVal;
    char* bytes = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 %lld)\n", bytes, scopeVal, elemSize * count);
    char srcStorTy[256];
    llvmType(srcT, srcStorTy, sizeof(srcStorTy)); //"[N x ElemT]"
    for (long long i = 0; i < count; i++) {
        char* srcElemAddr = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 0, i64 %lld\n", srcElemAddr, srcStorTy, srcAddr, i);
        char* dstElemAddr = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 %lld\n", dstElemAddr, elemTy, bytes, i);
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
void cgStoreInto(struct cgCtx* ctx, struct type dstT, struct type srcT, char* src, char* dstAddr, char* scopeOverride) {
    if (typeNeedsMallocPromotion(dstT, srcT)) {
        char storTy[256];
        llvmType(srcT, storTy, sizeof(storTy));
        char* scopeVal = scopeOverride ? scopeOverride : cgResolveScope(ctx, dstT.scopeParam);
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
        char* scopeVal = scopeOverride ? scopeOverride : cgResolveScope(ctx, dstT.scopeParam);
        char* slice = cgPromoteFixedToRuntimeLength(ctx, srcT, src, scopeVal);
        fprintf(ctx->fnOut, "  store { i64, ptr } %s, ptr %s\n", slice, dstAddr);
        return;
    }
    char ty[256];
    llvmType(dstT, ty, sizeof(ty));
    if (typeIsByRef(dstT)) {
        char* tmp = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", tmp, ty, src);
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", ty, tmp, dstAddr);
    } else {
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", ty, src, dstAddr);
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
char* cgValueForTarget(struct cgCtx* ctx, struct operand* op, struct type dstT, char* scopeOverride) {
    if (!typeNeedsMallocPromotion(dstT, op->type)) return cgValue(ctx, op);
    char* scopeVal = scopeOverride ? scopeOverride : cgResolveScope(ctx, dstT.scopeParam);
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
char* cgBoundaryValue(struct cgCtx* ctx, struct operand* op, struct type dstT, char* scopeOverride) {
    if (typeNeedsMallocPromotion(dstT, op->type)) {
        char storTy[256];
        llvmType(op->type, storTy, sizeof(storTy));
        char* scopeVal = scopeOverride ? scopeOverride : cgResolveScope(ctx, dstT.scopeParam);
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
    char* v = cgValue(ctx, op);
    if (typeNeedsRuntimeLengthPromotion(dstT, op->type)) {
        char* scopeVal = scopeOverride ? scopeOverride : cgResolveScope(ctx, dstT.scopeParam);
        return cgPromoteFixedToRuntimeLength(ctx, op->type, v, scopeVal);
    }
    if (!typeIsByRef(op->type)) return v;
    char ty[256];
    llvmType(op->type, ty, sizeof(ty));
    char* tmp = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", tmp, ty, v);
    return tmp;
}

char* cgLoadOrAddr(struct cgCtx* ctx, struct type t, char* addr) {
    if (typeIsByRef(t)) return addr;
    char ty[256];
    llvmType(t, ty, sizeof(ty));
    char* result = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = load %s, ptr %s\n", result, ty, addr);
    return result;
}

char* cgLookupVarAddr(struct cgCtx* ctx, struct var* v) {
    struct cgLocal* l = cgFindLocal(ctx, v->name);
    if (l) return l->llvmVal;
    char* buf = MallocOrCrash(256);
    mangleGlobal(v->owner, v->name, buf, 256);
    return buf;
}

char* cgIndexAddr(struct cgCtx* ctx, struct operand* op) {
    struct operand* base = *(struct operand**)ListGetIdx(&op->args, 0);
    struct operand* idx = *(struct operand**)ListGetIdx(&op->args, 1);
    char idxTy[64];
    llvmType(idx->type, idxTy, sizeof(idxTy));
    char* idxVal = cgValue(ctx, idx);
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
    char* baseVal = cgValue(ctx, base); //struct: always a ptr
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
        fprintf(ctx->fnOut, "  %s = alloca %s\n", slot, storTy);
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
            cgStoreInto(ctx, fieldT, arg->type, fieldVal, fieldAddr, fieldScope);
        }
        return slot;
    }

    //compile-time-length array - the only shape a literal ever builds directly now (see buildArrLiteralLevel)
    char storTy[256];
    llvmType(op->type, storTy, sizeof(storTy));
    char* slot = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = alloca %s\n", slot, storTy);
    for (int i = 0; i < op->args.len; i++) {
        struct operand* arg = *(struct operand**)ListGetIdx(&op->args, i);
        char* elemAddr = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 0, i64 %d\n", elemAddr, storTy, slot, i);
        struct type elemT = *op->type.arrElem;
        char* elemScope = elemT.scopeParam ? NULL : ctx->targetScopeOverride;
        char* elemVal = cgValueForTarget(ctx, arg, elemT, elemScope);
        cgStoreInto(ctx, elemT, arg->type, elemVal, elemAddr, elemScope);
    }
    return slot;
}

char* cgLiteral(struct cgCtx* ctx, struct operand* op) {
    char* buf = MallocOrCrash(64);
    switch (op->type.bType) {
        case BASETYPE_BOOL: strcpy(buf, op->intLiteralVal ? "true" : "false"); return buf;
        //a vocab value's intLiteralVal is its declared ordinal (see OperandVocabLiteral) - represented as
        //a plain i32 same as any other small integer type, but never exposed to olang code as one (no
        //arithmetic/ordering operators accept BASETYPE_VOCAB - see TypeIsNumeric/TypeIsInt)
        case BASETYPE_BYTE: case BASETYPE_INT32: case BASETYPE_INT64: case BASETYPE_VOCAB:
            snprintf(buf, 64, "%lld", op->intLiteralVal); return buf;
        case BASETYPE_FLOAT32: return cgFloatConst(op->floatLiteralVal, true);
        case BASETYPE_FLOAT64: return cgFloatConst(op->floatLiteralVal, false);
        //a string literal's own token IS the TOK_STR_LIT it was decoded from (see OperandStringLiteral) -
        //an aggregate "T[][...]"/"T[N][...]" literal's tok is TOK_SQUARE_O instead, so this reliably
        //tells the two apart without needing a dedicated flag
        case BASETYPE_ARRAY: return op->tok.type == TOK_STR_LIT ? cgStringLiteralGlobal(ctx, op) : cgAggregateLiteral(ctx, op);
        case BASETYPE_STRUCT: return cgAggregateLiteral(ctx, op);
        //"own" - the only expression that ever produces a bare BASETYPE_SCOPE value (see the report) -
        //is just the current function/test's own scope alloca, set up in cgFunction/cgTestHarnessMain
        case BASETYPE_SCOPE: return ctx->ownScopeSlot;
        default: ErrorBugFound(); return buf;
    }
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
    fprintf(ctx->fnOut, "  %s = alloca i1\n", resultSlot);
    char* iSlot = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = alloca i64\n", iSlot);

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
    char* elemValA = cgLoadOrAddr(ctx, *t.arrElem, elemAddrA);
    char* elemValB = cgLoadOrAddr(ctx, *t.arrElem, elemAddrB);
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
            char* valA = cgLoadOrAddr(ctx, mv->type, addrA);
            char* valB = cgLoadOrAddr(ctx, mv->type, addrB);
            char* eq = cgDeepEq(ctx, mv->type, valA, valB);
            char* next = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", next, acc, eq);
            acc = next;
        }
        return acc;
    }
    if (t.bType == BASETYPE_ARRAY && !t.arrMalloc) {
        char storTy[256];
        llvmType(t, storTy, sizeof(storTy));
        long long n = t.arrLen ? t.arrLen->intLiteralVal : 0;
        char* acc = "true";
        for (long long i = 0; i < n; i++) {
            char* addrA = cgNewTmp(ctx);
            char* addrB = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 0, i64 %lld\n", addrA, storTy, aVal, i);
            fprintf(ctx->fnOut, "  %s = getelementptr %s, ptr %s, i64 0, i64 %lld\n", addrB, storTy, bVal, i);
            char* valA = cgLoadOrAddr(ctx, *t.arrElem, addrA);
            char* valB = cgLoadOrAddr(ctx, *t.arrElem, addrB);
            char* eq = cgDeepEq(ctx, *t.arrElem, valA, valB);
            char* next = cgNewTmp(ctx);
            fprintf(ctx->fnOut, "  %s = and i1 %s, %s\n", next, acc, eq);
            acc = next;
        }
        return acc;
    }
    if (t.bType == BASETYPE_ARRAY && t.arrMalloc) return cgDeepEqSlice(ctx, t, aVal, bVal);

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
    char* av = cgValue(ctx, a);
    char* bv = cgValue(ctx, b);
    char aty[256];
    llvmType(a->type, aty, sizeof(aty));
    bool isF = TypeIsFloat(a->type);
    bool isU = a->type.bType == BASETYPE_BYTE; //byte is treated as unsigned; int32/int64 as signed
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

char* cgFuncCall(struct cgCtx* ctx, struct operand* op) {
    struct var* func = op->readVar;
    if (func->type.isExtern) return cgExternFuncCall(ctx, op);

    char* target;
    struct cgLocal* local = cgFindLocal(ctx, func->name);
    if (local) {
        char* loaded = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", loaded, local->llvmVal);
        target = loaded;
    } else {
        target = MallocOrCrash(256);
        mangleGlobal(func->owner, func->name, target, 256);
    }

    char argsBuf[4096] = "";
    for (int i = 0; i < op->args.len; i++) {
        struct operand* argOp = *(struct operand**)ListGetIdx(&op->args, i);
        //the parameter's own declared type (not argOp->type) decides malloc-promotion and the LLVM type
        //word at the call site - a "&" parameter is exactly where a plain struct argument needs one
        struct type paramT = (*(struct var*)ListGetIdx(&func->type.vars, i)).type;
        char* scopeOverride = cgResolveParamScopeOverride(ctx, func, &op->args, paramT);
        char* av = cgBoundaryValue(ctx, argOp, paramT, scopeOverride);
        char aty[256];
        llvmType(paramT, aty, sizeof(aty));
        char piece[512];
        snprintf(piece, sizeof(piece), "%s%s %s", i > 0 ? ", " : "", aty, av);
        strncat(argsBuf, piece, sizeof(argsBuf) - strlen(argsBuf) -1);
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
            fprintf(ctx->fnOut, "  %s = alloca %s\n", slot, retTy);
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
    cgPropagateError(ctx, func->type, code);
    cgLabel(ctx, okLbl);

    if (!func->type.hasRetType) return "";
    struct type rt = *func->type.retType;
    char retTy[256];
    llvmType(rt, retTy, sizeof(retTy));
    char* payload = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = extractvalue %s %s, 1\n", payload, wrapTy, raw);
    if (typeIsByRef(rt)) {
        char* slot = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = alloca %s\n", slot, retTy);
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
                fprintf(ctx->fnOut, "  %s = alloca %s\n", slot, aty);
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
char* cgLen(struct cgCtx* ctx, struct operand* op) {
    struct operand* arg = *(struct operand**)ListGetIdx(&op->args, 0);
    char* argVal = cgValue(ctx, arg);
    if (arg->type.arrMalloc) {
        char* rawLen = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = extractvalue { i64, ptr } %s, 0\n", rawLen, argVal);
        char* result = cgNewTmp(ctx); //OperandLen returns int32 - the runtime slice field is i64
        fprintf(ctx->fnOut, "  %s = trunc i64 %s to i32\n", result, rawLen);
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
char* cgNumericConvert(struct cgCtx* ctx, struct operand* op) {
    struct operand* arg = *(struct operand**)ListGetIdx(&op->args, 0);
    char* val = cgValue(ctx, arg);
    struct type from = arg->type;
    struct type to = op->type;
    if (TypeIsSame(from, to)) return val;

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

    char* result = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = %s %s %s to %s\n", result, instr, fromTy, val, toTy);
    return result;
}

//"T[expr]" with no initializer (expr not a compile-time constant) - see OPERATION_SIZED_ARRAY_ALLOC and
//the report. Arena-allocates expr zero-valued elements into op->type's own scope (own by default, or its
//declared "&name" tag - same cgResolveScope convention every other reference allocation already uses) and
//returns the resulting { i64, ptr } slice value, zero-filled via memset (chunk-pool memory is reused, not
//guaranteed zero, unlike a fresh @malloc - see emitScopeRuntime).
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

    struct type elemT = *op->type.arrElem;
    long long elemSize = TypeGetSize(elemT);
    char* byteSize = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = mul i64 %s, %lld\n", byteSize, count, elemSize);

    char* scopeVal = cgResolveScope(ctx, op->type.scopeParam);
    char* bytes = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = call ptr @__olang_scope_alloc(ptr %s, i64 %s)\n", bytes, scopeVal, byteSize);
    fprintf(ctx->fnOut, "  call void @llvm.memset.p0.i64(ptr %s, i8 0, i64 %s, i1 false)\n", bytes, byteSize);

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

char* cgValue(struct cgCtx* ctx, struct operand* op) {
    switch (op->opType) {
        case OPERATION_NONE: return cgLiteral(ctx, op);
        case OPERATION_LEN: return cgLen(ctx, op);
        case OPERATION_SIZED_ARRAY_ALLOC: return cgSizedArrayAlloc(ctx, op);
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
                return addr;
            }
            return cgLoadOrAddr(ctx, op->type, addr);
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

void cgStatement(struct cgCtx* ctx, struct statement* s);

void cgBlock(struct cgCtx* ctx, struct list* block) {
    cgPushScope(ctx);
    for (int i = 0; i < block->len; i++) {
        struct statement* s = ListGetIdx(block, i);
        cgStatement(ctx, s);
    }
    cgPopScope(ctx);
}

void cgVarDecl(struct cgCtx* ctx, struct statement* s) {
    char ty[256];
    llvmType(s->var.type, ty, sizeof(ty));
    char* slot = cgDeclareLocal(ctx, s->var.name, s->var.type);
    fprintf(ctx->fnOut, "  %s = alloca %s\n", slot, ty);
    if (!s->op) {
        //"T[N]", no initializer - zero-filled, nothing to evaluate at all (see buildVarDeclStmnt)
        fprintf(ctx->fnOut, "  store %s %s, ptr %s\n", ty, cgZeroValue(s->var.type), slot);
        return;
    }
    char* rhs = cgValueForTarget(ctx, s->op, s->var.type, NULL);
    cgStoreInto(ctx, s->var.type, s->op->type, rhs, slot, NULL);
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
    if (targetIsMemberOrIndex && typeIsRefShaped(s->target->type) && s->target->type.structMAlloc) {
        struct operand* base = *(struct operand**)ListGetIdx(&s->target->args, 0);
        if (typeIsRefShaped(base->type) && base->type.structMAlloc) {
            scopeOverride = cgResolveEffectiveScope(ctx, base);
        }
    }
    char* val = cgValueForTarget(ctx, s->op, s->target->type, scopeOverride);
    char* addr = cgAddr(ctx, s->target);
    cgStoreInto(ctx, s->target->type, s->op->type, val, addr, scopeOverride);
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

void cgFor(struct cgCtx* ctx, struct statement* s) {
    cgPushScope(ctx);
    char ty[256];
    llvmType(s->var.type, ty, sizeof(ty));
    char* rhs = cgValueForTarget(ctx, s->forInit, s->var.type, NULL);
    char* slot = cgDeclareLocal(ctx, s->var.name, s->var.type);
    fprintf(ctx->fnOut, "  %s = alloca %s\n", slot, ty);
    cgStoreInto(ctx, s->var.type, s->forInit->type, rhs, slot, NULL);

    int id = ctx->lblCtr++;
    char condLbl[32], bodyLbl[32], endLbl[32];
    snprintf(condLbl, sizeof(condLbl), "for.cond.%d", id);
    snprintf(bodyLbl, sizeof(bodyLbl), "for.body.%d", id);
    snprintf(endLbl, sizeof(endLbl), "for.end.%d", id);

    cgBr(ctx, condLbl);
    cgLabel(ctx, condLbl);
    char* cond = cgValue(ctx, s->op);
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", cond, bodyLbl, endLbl);
    ctx->terminated = true;

    cgLabel(ctx, bodyLbl);
    cgBlock(ctx, &s->block);
    cgValue(ctx, s->forPost);
    cgBr(ctx, condLbl);

    cgLabel(ctx, endLbl);
    cgPopScope(ctx);
}

void cgDo(struct cgCtx* ctx, struct statement* s) {
    int id = ctx->lblCtr++;
    char bodyLbl[32], condLbl[32], endLbl[32];
    snprintf(bodyLbl, sizeof(bodyLbl), "do.body.%d", id);
    snprintf(condLbl, sizeof(condLbl), "do.cond.%d", id);
    snprintf(endLbl, sizeof(endLbl), "do.end.%d", id);
    cgBr(ctx, bodyLbl);
    cgLabel(ctx, bodyLbl);
    cgBlock(ctx, &s->block);
    cgBr(ctx, condLbl);
    cgLabel(ctx, condLbl);
    char* cond = cgValue(ctx, s->op);
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", cond, bodyLbl, endLbl);
    ctx->terminated = true;
    cgLabel(ctx, endLbl);
}

void cgMatch(struct cgCtx* ctx, struct statement* s) {
    char* matchedVal = cgValue(ctx, s->op);

    int id = ctx->lblCtr++;
    char endLbl[32];
    snprintf(endLbl, sizeof(endLbl), "match.end.%d", id);

    for (int i = 0; i < s->matchCases.len; i++) {
        struct statement* c = ListGetIdx(&s->matchCases, i);
        char* caseVal = cgValue(ctx, c->op);
        //structural equality for struct/array case values (see cgBinaryOp's == handling), not raw icmp
        char* cmp = cgDeepEq(ctx, s->op->type, matchedVal, caseVal);
        char caseLbl[40], nextLbl[40];
        snprintf(caseLbl, sizeof(caseLbl), "match.case.%d.%d", id, i);
        snprintf(nextLbl, sizeof(nextLbl), "match.next.%d.%d", id, i);
        fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", cmp, caseLbl, nextLbl);
        ctx->terminated = true;
        cgLabel(ctx, caseLbl);
        cgBlock(ctx, &c->block);
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
    char* val = cgBoundaryValue(ctx, s->op, retT, NULL);
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
//done/crash are a plain OS process exit with a fixed status, from anywhere - unrelated to the enclosing
//function's declared error union on purpose (see the report: terminating the whole process is a
//different operation from returning to a caller, same as Zig's/Rust's process-exit functions)
void cgDone(struct cgCtx* ctx, struct statement* s) {
    (void)s;
    fputs("  call void @exit(i32 0)\n", ctx->fnOut);
    fputs("  unreachable\n", ctx->fnOut);
    ctx->terminated = true;
}

void cgCrash(struct cgCtx* ctx, struct statement* s) {
    (void)s;
    fputs("  call void @exit(i32 1)\n", ctx->fnOut);
    fputs("  unreachable\n", ctx->fnOut);
    ctx->terminated = true;
}

//"assert EXPR" - a statement now, not a call (see the report); __olang_assert_fail itself is unchanged -
//see emitRuntimeDecls for its longjmp-in-test-mode-else-hard-abort behavior
void cgAssert(struct cgCtx* ctx, struct statement* s) {
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
    fputs("  call void @__olang_assert_fail()\n", ctx->fnOut);
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

    char* target;
    struct cgLocal* local = cgFindLocal(ctx, func->name);
    if (local) {
        char* loaded = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = load ptr, ptr %s\n", loaded, local->llvmVal);
        target = loaded;
    } else {
        target = MallocOrCrash(256);
        mangleGlobal(func->owner, func->name, target, 256);
    }
    char argsBuf[4096] = "";
    for (int i = 0; i < callOp->args.len; i++) {
        struct operand* argOp = *(struct operand**)ListGetIdx(&callOp->args, i);
        struct type paramT = (*(struct var*)ListGetIdx(&func->type.vars, i)).type;
        char* scopeOverride = cgResolveParamScopeOverride(ctx, func, &callOp->args, paramT);
        char* av = cgBoundaryValue(ctx, argOp, paramT, scopeOverride);
        char aty[256];
        llvmType(paramT, aty, sizeof(aty));
        char piece[512];
        snprintf(piece, sizeof(piece), "%s%s %s", i > 0 ? ", " : "", aty, av);
        strncat(argsBuf, piece, sizeof(argsBuf) - strlen(argsBuf) -1);
    }

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
    char* typeOrd = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = lshr i32 %s, 16\n", typeOrd, code);
    char* matched = "false";
    for (int i = 0; i < s->catchMatches.len; i++) {
        struct catchMatch* cm = ListGetIdx(&s->catchMatches, i);
        int ord = errorTypeOrdinal(func->type, cm->errType);
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
    fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", matched, catchLbl, propLbl);
    ctx->terminated = true;

    cgLabel(ctx, catchLbl);
    cgBlock(ctx, &s->block);
    cgBr(ctx, endLbl);

    cgLabel(ctx, propLbl);
    //this block is only reachable at all if some error type isn't fully caught above - the semantic layer
    //only allows that when the enclosing function declares it (so ctx->curFunc is guaranteed usable then);
    //when everything is caught (e.g. inside a test body, which has no error union of its own) this is
    //statically dead code
    bool anyPropagates = false;
    for (int i = 0; i < func->type.errors.len; i++) {
        struct type* e = *(struct type**)ListGetIdx(&func->type.errors, i);
        if (!StatementCatchCoversType(&s->catchMatches, *e)) { anyPropagates = true; break; }
    }
    if (anyPropagates) cgPropagateError(ctx, func->type, code);
    else { fputs("  unreachable\n", ctx->fnOut); ctx->terminated = true; }

    cgLabel(ctx, endLbl);
}

void cgStatement(struct cgCtx* ctx, struct statement* s) {
    switch (s->sType) {
        case STATEMENT_VAR_DECL: cgVarDecl(ctx, s); return;
        case STATEMENT_ASSIGN: cgAssign(ctx, s); return;
        case STATEMENT_EXPR: cgValue(ctx, s->op); return;
        case STATEMENT_IF: cgIf(ctx, s); return;
        case STATEMENT_FOR: cgFor(ctx, s); return;
        case STATEMENT_DO: cgDo(ctx, s); return;
        case STATEMENT_MATCH: cgMatch(ctx, s); return;
        case STATEMENT_RET: cgRet(ctx, s); return;
        case STATEMENT_DONE: cgDone(ctx, s); return;
        case STATEMENT_CRASH: cgCrash(ctx, s); return;
        case STATEMENT_ASSERT: cgAssert(ctx, s); return;
        case STATEMENT_ERROR: cgError(ctx, s); return;
        case STATEMENT_TRY_CATCH: cgTryCatch(ctx, s); return;
        default: ErrorBugFound(); return;
    }
}

// ---- top-level structure ----

void emitStructTypeDefs(FILE* out) {
    struct list* all = SemanticAllModules();
    for (int m = 0; m < all->len; m++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(all, m);
        for (int i = 0; i < mod->types.len; i++) {
            struct type* t = ListGetIdx(&mod->types, i);
            if (t->bType != BASETYPE_STRUCT) continue;
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
    }
}

void emitGlobalDecls(FILE* out) {
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
            fprintf(out, "%s = global %s zeroinitializer\n", name, ty);
        }
    }
}

//"declare RETTY @NAME(ARGTYS)" for every "extern func" (§11) in the program - the unmangled name (X5:
//it's also the linker symbol, no module-prefix mangling like an ordinary olang function gets) and a
//plain C-ABI signature (llvmType already gives an array-typed param/local its right shape everywhere
//else; here it's simply overridden to "ptr", matching the marshalling cgExternFuncCall performs at
//every call site - X3). No body, ever - an extern-func-decl has none to emit.
void emitExternDecls(FILE* out) {
    struct list* all = SemanticAllModules();
    for (int m = 0; m < all->len; m++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(all, m);
        for (int i = 0; i < mod->vars.len; i++) {
            struct var* v = ListGetIdx(&mod->vars, i);
            if (v->type.bType != BASETYPE_FUNC || !v->type.isExtern) continue;
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
 * where it's always null). jmp_buf is assumed to be glibc's x86-64 Linux 200-byte layout - see report. */
void emitRuntimeDecls(FILE* out) {
    fputs(
        "declare i32 @printf(ptr, ...)\n"
        "declare i32 @fputs(ptr, ptr)\n"
        "declare void @abort() noreturn\n"
        "declare void @exit(i32) noreturn\n"
        "declare ptr @malloc(i64)\n"
        "declare void @free(ptr)\n"
        "declare void @llvm.memset.p0.i64(ptr, i8, i64, i1)\n"
        "declare i32 @setjmp(ptr) returns_twice\n"
        "@stderr = external global ptr\n"
        "declare void @longjmp(ptr, i32) noreturn\n"
        "\n"
        "@__olang_jmp_target = global ptr null\n"
        "@__olang_assert_msg = private unnamed_addr constant [17 x i8] c\"assertion failed\\0A\"\n"
        "\n"
        "define void @__olang_assert_fail() {\n"
        "entry:\n"
        "  %tgt = load ptr, ptr @__olang_jmp_target\n"
        "  %isnull = icmp eq ptr %tgt, null\n"
        "  br i1 %isnull, label %hard, label %soft\n"
        "hard:\n"
        "  call i32 (ptr, ...) @printf(ptr @__olang_assert_msg)\n"
        "  call void @abort()\n"
        "  unreachable\n"
        "soft:\n"
        "  call void @longjmp(ptr %tgt, i32 1)\n"
        "  unreachable\n"
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
        "%olang.chunk = type { ptr, i64, i64 }\n"  //next, used, cap - data follows immediately after
        "%olang.dtornode = type { ptr, ptr, ptr }\n" //next, instance, dtorFn - see __olang_scope_register_dtor
        "%olang.scope = type { ptr, ptr, ptr }\n"  //head chunk, head dtor-list node, TAIL chunk (all null
                                                    //if unused). The tail is tracked so closing can splice
                                                    //the whole chunk list onto the pool in O(1) instead of
                                                    //walking to find it - chunks are PREPENDED, so the tail
                                                    //is whichever chunk this scope allocated first, set
                                                    //once when the list goes from empty to non-empty and
                                                    //never touched again.
        "@__olang_chunk_pool = global ptr null\n"
        "\n"
        //size >= the requested amount, either reused from the free-list's head (kept at its own, possibly
        //larger, original capacity) or freshly malloc'd at max(4096, size) bytes
        "define ptr @__olang_new_chunk(i64 %size) {\n"
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
        "  %total = add i64 %hdrsize, %reqsize\n"
        "  %new = call ptr @malloc(i64 %total)\n"
        "  %usedptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 1\n"
        "  store i64 0, ptr %usedptr.n\n"
        "  %capptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 2\n"
        "  store i64 %reqsize, ptr %capptr.n\n"
        "  ret ptr %new\n"
        "}\n\n"
        //bump-allocates size bytes from scope, growing (linking on one more chunk) if the current one
        //doesn't have room
        "define ptr @__olang_scope_alloc(ptr %scope, i64 %rawsize) {\n"
        "entry:\n"
        //every allocation is rounded up to 8 bytes so the NEXT one starts 8-aligned. The bump offset is a
        //raw byte sum, so without this a 12-byte "int32[3]" left the following allocation at offset 12 -
        //fine for an i32 but misaligned for any i64 or pointer field, which is UB at the LLVM level even
        //where the hardware tolerates it. Latent before; the dtor nodes below (24 bytes, three pointers,
        //one per registered instance) made it near-certain to be hit. The chunk's own data area is
        //already 8-aligned: malloc is at least 16-aligned and the header is exactly 24 bytes.
        "  %sizeup = add i64 %rawsize, 7\n"
        "  %size = and i64 %sizeup, -8\n"
        "  %headptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 0\n"
        "  %head = load ptr, ptr %headptr\n"
        "  %headnull = icmp eq ptr %head, null\n"
        "  br i1 %headnull, label %needchunk, label %checkspace\n"
        "checkspace:\n"
        "  %csusedptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 1\n"
        "  %csused = load i64, ptr %csusedptr\n"
        "  %cscapptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 2\n"
        "  %cscap = load i64, ptr %cscapptr\n"
        "  %remaining = sub i64 %cscap, %csused\n"
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
        "  %curused = load i64, ptr %curusedptr\n"
        "  %dataptr = getelementptr %olang.chunk, ptr %curhead, i32 1\n"
        "  %result = getelementptr i8, ptr %dataptr, i64 %curused\n"
        "  %newused = add i64 %curused, %size\n"
        "  store i64 %newused, ptr %curusedptr\n"
        "  ret ptr %result\n"
        "}\n\n", out);
    fputs(
        //prepends one { instance, dtorFn } node onto scope's own dtor list - walked in
        //@__olang_scope_close below, in the same LIFO order registration happens in, right before that
        //scope's chunks are reclaimed. The node is bump-allocated out of the scope's OWN arena rather than
        //given its own @malloc: the arena strictly outlives every node it holds (the dtor walk runs before
        //any chunk is reclaimed) and is returned to the pool wholesale, so this turns a malloc/free pair
        //per registered instance into a pointer bump and nothing at all. LLVM cannot make this change
        //itself - the node escapes into a list reachable from the scope, so it can prove nothing about it.
        "define void @__olang_scope_register_dtor(ptr %scope, ptr %instance, ptr %dtorFn) {\n"
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
        //walks and calls (then frees) this scope's own dtor-node list first, LIFO - most-recently-
        //registered first, same order a stack unwind would give - then splices its entire chunk list onto
        //the free pool in one O(1) op (after walking to find this list's own tail) and resets the scope
        //back to empty/lazy
        "define void @__olang_scope_close(ptr %scope) {\n"
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

void cgInitGlobalsFunc(struct cgCtx* ctx) {
    fputs("define void @__olang_init_globals() {\nentry:\n", ctx->fnOut);
    ctx->terminated = false;
    struct list* all = SemanticAllModules();
    for (int m = 0; m < all->len; m++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(all, m);
        ctx->curMod = mod;
        ctx->scope = NULL;
        for (int i = 0; i < mod->vars.len; i++) {
            struct var* v = ListGetIdx(&mod->vars, i);
            if (v->type.bType == BASETYPE_FUNC || !v->initExpr) continue;
            char gaddr[256];
            mangleGlobal(mod, v->name, gaddr, sizeof(gaddr));
            char* val = cgValue(ctx, v->initExpr);
            cgStoreInto(ctx, v->type, v->initExpr->type, val, gaddr, NULL);
        }
    }
    fputs("  ret void\n}\n\n", ctx->fnOut);
}

void cgFunction(struct cgCtx* ctx, struct semaModule* mod, struct var* func) {
    ctx->curMod = mod;
    ctx->curFunc = func;
    ctx->scope = NULL;
    cgPushScope(ctx);

    char name[256];
    mangleGlobal(mod, func->name, name, sizeof(name));
    char retTy[256];
    llvmFuncRetType(func->type, retTy, sizeof(retTy));

    fprintf(ctx->fnOut, "define %s %s(", retTy, name);
    for (int i = 0; i < func->type.vars.len; i++) {
        struct var* p = ListGetIdx(&func->type.vars, i);
        char pty[256];
        llvmType(p->type, pty, sizeof(pty));
        fprintf(ctx->fnOut, "%s%s %%arg%d", i > 0 ? ", " : "", pty, i);
    }
    fputs(") {\nentry:\n", ctx->fnOut);
    ctx->terminated = false;

    for (int i = 0; i < func->type.vars.len; i++) {
        struct var* p = ListGetIdx(&func->type.vars, i);
        char pty[256];
        llvmType(p->type, pty, sizeof(pty));
        char* slot = cgDeclareLocal(ctx, p->name, p->type);
        fprintf(ctx->fnOut, "  %s = alloca %s\n", slot, pty);
        //%argN is already the real boundary-form value (aggregate or scalar) - store it directly, unlike
        //cgStoreInto's by-ref branch which expects our internal ptr-to-storage convention
        fprintf(ctx->fnOut, "  store %s %%arg%d, ptr %s\n", pty, i, slot);
    }

    //this function's own private scope - see emitScopeRuntime/cgCloseOwnScope. Lazily empty (lazy in the
    //sense that no chunk is grabbed until something actually allocates into it) until "own" or a bare
    //"&" allocation touches it; harmless and cheap to always set up even when never used.
    char* ownScope = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = alloca %%olang.scope\n", ownScope);
    fprintf(ctx->fnOut, "  store %%olang.scope zeroinitializer, ptr %s\n", ownScope);
    ctx->ownScopeSlot = ownScope;

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
    ctx->curFunc = NULL;
    ctx->ownScopeSlot = NULL;
    cgPopScope(ctx);
}

void cgEmitAllFunctions(struct cgCtx* ctx) {
    struct list* all = SemanticAllModules();
    for (int m = 0; m < all->len; m++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(all, m);
        for (int i = 0; i < mod->vars.len; i++) {
            struct var* v = ListGetIdx(&mod->vars, i);
            if (v->type.bType != BASETYPE_FUNC || v->type.isExtern) continue;
            cgFunction(ctx, mod, v);
        }
    }
}

//pinned to match clang-20's actual host default (`clang-20 -dumpmachine`) - an unset triple still defaults
//to something internally, and when that default doesn't match the compilation target clang prints a
//harmless but noisy "overriding the module target triple" warning on every single build
void emitTargetTriple(FILE* out) {
    fputs("target triple = \"x86_64-pc-linux-gnu\"\n\n", out);
}

void cgEmitModuleDecls(FILE* out) {
    emitTargetTriple(out);
    emitStructTypeDefs(out);
    fputs("\n", out);
    emitRuntimeDecls(out);
    emitExternDecls(out);
    emitGlobalDecls(out);
    fputs("\n", out);
}

//main's signature is fixed to "<errors> ? void" (checked in semantic.c: no params, no success type, at
//least one declared error) - so its LLVM return is always a bare i32 code, no payload to worry about.
//code 0 -> process exit 0. Nonzero -> prints which declared error it was to stderr, then exits 1 (the
//OS-standard success/failure pair - see the report for why a finer-grained exit code isn't worth it).
void cgProgramMain(struct cgCtx* ctx, struct semaModule* root) {
    struct var* mainFunc = VarGetList(&root->vars, StrFromCStr("main"));
    fputs("define i32 @main() {\nentry:\n", ctx->fnOut);
    ctx->terminated = false;
    fputs("  call void @__olang_init_globals()\n", ctx->fnOut);
    char mname[256];
    mangleGlobal(root, mainFunc->name, mname, sizeof(mname));

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
            //the generic error (R19) carries no real type/word to name - print it plainly instead of the
            //otherwise-generic "TypeName.word" shape, which would read as the redundant "error.error"
            if (e == genericErr) {
                snprintf(text, sizeof(text), "unhandled error: error\n");
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

    fputs("define i32 @main() {\nentry:\n", ctx->fnOut);
    ctx->terminated = false;
    fputs("  call void @__olang_init_globals()\n", ctx->fnOut);
    char* passedSlot = cgNewTmp(ctx);
    char* failedSlot = cgNewTmp(ctx);
    fprintf(ctx->fnOut, "  %s = alloca i32\n  store i32 0, ptr %s\n", passedSlot, passedSlot);
    fprintf(ctx->fnOut, "  %s = alloca i32\n  store i32 0, ptr %s\n", failedSlot, failedSlot);

    for (int i = 0; i < root->tests.len; i++) {
        struct semaTest* t = ListGetIdx(&root->tests, i);
        int id = ctx->lblCtr++;
        char* buf = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = alloca [200 x i8], align 16\n", buf);
        fprintf(ctx->fnOut, "  store ptr %s, ptr @__olang_jmp_target\n", buf);
        char* setjmpRes = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = call i32 @setjmp(ptr %s)\n", setjmpRes, buf);
        char* isZero = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = icmp eq i32 %s, 0\n", isZero, setjmpRes);

        char runLbl[40], failLbl[40], passLbl[40], nextLbl[40];
        snprintf(runLbl, sizeof(runLbl), "test.run.%d", id);
        snprintf(failLbl, sizeof(failLbl), "test.fail.%d", id);
        snprintf(passLbl, sizeof(passLbl), "test.pass.%d", id);
        snprintf(nextLbl, sizeof(nextLbl), "test.next.%d", id);
        fprintf(ctx->fnOut, "  br i1 %s, label %%%s, label %%%s\n", isZero, runLbl, failLbl);
        ctx->terminated = true;

        cgLabel(ctx, runLbl);
        //this test's own private scope, same as any real function gets (see cgFunction) - a test body may
        //use "own"/bare "&" exactly like a function body can (see ctx->hasOwnScope in semantic.c). Not
        //closed on the assert-failure path (the longjmp above bypasses this normal control flow entirely)
        //- a known, deliberate v1 simplification: those chunks just aren't returned to the pool for reuse
        //on a failed test, nothing unsafe about it (see the report).
        char* testScope = cgNewTmp(ctx);
        fprintf(ctx->fnOut, "  %s = alloca %%olang.scope\n", testScope);
        fprintf(ctx->fnOut, "  store %%olang.scope zeroinitializer, ptr %s\n", testScope);
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
    cgPopScope(ctx);
}

void CodegenProgram(struct semaModule* root, char* outPath) {
    FILE* out = fopen(outPath, "w");
    if (!out) ErrorBugFound();
    char* fnBuf;
    size_t fnSize;
    FILE* fnOut = open_memstream(&fnBuf, &fnSize);

    struct cgCtx ctx = {0};
    ctx.out = out;
    ctx.fnOut = fnOut;

    cgEmitModuleDecls(out);
    cgInitGlobalsFunc(&ctx);
    cgEmitAllFunctions(&ctx);
    cgProgramMain(&ctx, root);

    fflush(fnOut);
    fwrite(fnBuf, 1, fnSize, out);
    fclose(fnOut);
    free(fnBuf);
    fclose(out);
}

void CodegenTests(struct semaModule* root, char* outPath) {
    FILE* out = fopen(outPath, "w");
    if (!out) ErrorBugFound();
    char* fnBuf;
    size_t fnSize;
    FILE* fnOut = open_memstream(&fnBuf, &fnSize);

    struct cgCtx ctx = {0};
    ctx.out = out;
    ctx.fnOut = fnOut;

    cgEmitModuleDecls(out);
    cgInitGlobalsFunc(&ctx);
    cgEmitAllFunctions(&ctx);
    cgTestHarnessMain(&ctx, root);

    fflush(fnOut);
    fwrite(fnBuf, 1, fnSize, out);
    fclose(fnOut);
    free(fnBuf);
    fclose(out);
}
