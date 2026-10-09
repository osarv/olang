// ---- K: compile-time evaluation ----
//
//An interpreter over the checked program: the same operands and statements codegen lowers, run here instead.
//No function is marked as evaluable - any function is, as long as what it actually does on this call can be
//done without a running program. The places that WANT a compile-time value ask for one (CtEvaluate); for
//everything else this is simply unused, and LLVM folds what it can.
//
//What makes a computation impossible here, and so falls back to run time: reading a mutable global (its
//value is the running program's), writing any global (skipping the computation at run time would then skip
//the write), an extern call, spawn/join, atomics, a call through a function value or an interface whose target cannot be,
//done/fail/abort/unreachable, a failing assert, integer division by zero or an out-of-range shift or
//conversion (undefined at run time - refused here rather than guessed), and running out of the step
//budget. Every one of those is reported with the operation that caused it.
//
//Memory is unbounded and never reclaimed during an evaluation: scopes do not exist here, and none is
//needed, because a value that still holds a reference when evaluation ends is not plain data and is not
//used (CtIsPlainData).
//
//B3e: under "-i" the same evaluation runs a whole program (CtRunProgram), and what it refuses above because
//only a running program may do it is done instead: globals are read and written, an extern is called in this
//process through libffi (the runtime's own functions, X6, by this file's versions of them), done/fail exit, a
//guaranteed check aborts with the runtime's message, and there is no step budget. What the built program leaves
//undefined still stops it, now naming the operation and its place. Tasks and destructors are not interpreted yet.
//Memory is still never reclaimed, which a long run will notice.

#define _GNU_SOURCE
#include <stdlib.h>
#include <stdio.h>
#include <dlfcn.h>
#include <pthread.h>
#include <ffi.h>
#include <string.h>
#include <stdint.h>
#include <math.h>
#include <errno.h>
#include <dirent.h>
#include <limits.h>
#include <spawn.h>
#include <sys/stat.h>
#include "comptime.h"
#include "errmsg.h"
#include "util.h"

struct var* canonicalVar(struct var* v);
bool OperandIsLvalue(struct operand* op);
bool StatementCatchCoversType(struct list* matches, struct type errType);
bool ChoiceHasPayload(struct type t);
void RdSpellType(struct type t, char* buf, size_t n);
void RdSpellSig(struct type f, char* buf, size_t n);

#define CT_STEP_BUDGET 20000000
#define CT_DEPTH_BUDGET 2000
//B3e: how deep an interpreted program may recurse - its stack (CtRunProgram's thread) is sized for it
#define CT_RUN_DEPTH_BUDGET 100000
#define CT_RUN_STACK ((size_t)1 << 30)
//how much of a thread's stack is kept spare: an evaluation that finds less left stops with a message rather than run off
//the end of it - an interpreted call's own frames take a few KB, so the budgets above can outlast the stack (B3e)
#define CT_STACK_SPARE ((uintptr_t)8 << 20)

//B3e: a whole program is running ("-i"), so the effects K1 refuses are performed
static bool ctRun;

enum ctFlow { CF_NORMAL, CF_RETURN, CF_BREAK, CF_CONTINUE, CF_ERROR, CF_FAIL };

struct ctLocal { struct str name; struct ctVal* node; };

//E30: a comparison chain's shared operand, computed once and read by the next comparison - kept here, per evaluation,
//and only for the call it was made in: on the operand itself, a chain re-evaluated inside its own Less (a recursion
//through the method) read the outer chain's values as its own
struct ctChainVal { struct operand* op; struct ctVal* v; int depth; };

struct ctState {
    long long steps;
    int depth;
    enum ctFlow flow;
    struct ctVal* ret;           //CF_RETURN: the returned value
    struct type errType;         //CF_ERROR: the error in flight
    long long errWord;
    struct operand* errCheckRoot; //CF_ERROR raised by a check (R20): the try that checked it, whose clauses see it;
                                  //NULL for an error a call raised
    bool errBypass;              //CF_ERROR raised while evaluating a tried operation's OWN operands (an
                                 //argument's "try g()"): it leaves the enclosing function, and the
                                 //operation's clauses must not see it - until it crosses a function boundary
    struct list* locals;         //struct ctLocal, the current call's, innermost last
    const char* why;             //CF_FAIL: what could not be done at compile time
    struct token whyTok;
    bool usedBuild;              //S8a/S8b: a build constant was read, directly or through a global
    CtLocalFixer fixer;          //S8b: fixes the condition's own function's locals - only at depth 0
    void* fixerCtx;
    struct var* func;            //the function whose body is running, NULL at the top
    struct semaModule* mod;      //the module whose code is running - a function's, or a global initializer's
    //K2c: evaluating a global's initializer. Everything its own frame builds lands in the program's scope,
    //which never closes (O1b), so a destructor there would never run at all - building one is no effect
    bool globalInit;
    //E27: the comprehensions being built, innermost last, each with how many elements its storage has room for -
    //as deep as the program nests them, a recursion through one included
    struct ctVal** compr;
    int* comprCap;
    int comprDepth, comprAlloc;
    struct ctChainVal* chain; //E30, innermost last
    int chainLen, chainAlloc;
};

bool SemanticIsBuildConst(struct var* v);

//why a function with a branch still being decided (S8b) is not evaluated: its body is not yet the program's
const char* CT_WHY_INCOMPLETE = "it calls a function one of whose branches is still being decided";

//immutable globals already evaluated, or being evaluated (a cycle is a failure, not a hang). writable: its value reaches
//storage a writable reference can change while the program runs (K1)
struct ctGlobal { struct var* v; struct ctVal* val; bool busy; bool usedBuild; bool writable; };
static struct list ctGlobals;
static bool ctGlobalsReady;

static struct ctVal* ctFail(struct ctState* st, struct token tok, const char* why) {
    if (st->flow != CF_FAIL) {
        st->flow = CF_FAIL;
        st->why = why;
        st->whyTok = tok;
    }
    return NULL;
}

//B3e: a check the language guarantees failed while a program runs - the built program's message, and its abort
static void ctRunAbort(const char* msg) {
    fflush(NULL);
    fputs(msg, stderr);
    abort();
}

//R20: exact integer results for the overflow checks - twice Int64's width, as the generated code computes them
__extension__ typedef __int128 ctWide;
static struct ctVal* ctFloat(struct type t, double f);

//R20: a check under "try" failed with BuiltinError.word - as the generated code does, so the try's clauses (or the
//function's error union) take it
static struct ctVal* ctCheckFail(struct ctState* st, struct operand* op, char* word) {
    st->flow = CF_ERROR;
    st->errType = *SemanticBuiltinErrorType();
    st->errWord = SemanticBuiltinErrorWord(word);
    st->errBypass = false;
    st->errCheckRoot = op->checkRoot;
    return NULL;
}

//R20: does an exact integer result fit type t - two's complement for the I types, 0 .. 2^w - 1 for the U types (T4)
static bool ctFits(struct type t, ctWide v) {
    const struct primInfo* p = PrimInfo(t.bType);
    if (!p) return true;
    if (p->kind == 'u') return v >= 0 && v <= (((ctWide)1 << p->bits) - 1);
    return v >= -((ctWide)1 << (p->bits - 1)) && v < ((ctWide)1 << (p->bits - 1));
}

//T4: an integer value's exact mathematical value - a U64's bit pattern read unsigned; every other type's value is
//kept normalized in its range already
static ctWide ctExact(struct ctVal* v) {
    if (v->type.bType == BASETYPE_U64) return (ctWide)(unsigned long long)v->i;
    return v->i;
}

static enum floatKind ctFloatKind(struct type t) {
    switch (t.bType) {
        case BASETYPE_FLOAT32: return FLOAT_KIND_F32;
        case BASETYPE_F16: return FLOAT_KIND_F16;
        case BASETYPE_BF16: return FLOAT_KIND_BF16;
        default: return FLOAT_KIND_F64;
    }
}

//T4: a float rounded to its type, as the generated code rounds it
static double ctRound(struct type t, double r) { return FloatRoundTo(r, ctFloatKind(t)); }

//R20: a float result's checks - infinite from finite operands is OVERFLOW, NaN from non-NaN operands INVALID
static struct ctVal* ctCheckFloat(struct ctState* st, struct operand* op, struct type t, double x, double y,
                                  bool binary, double r) {
    r = ctRound(t, r);
    if (isinf(r) && isfinite(x) && (!binary || isfinite(y))) return ctCheckFail(st, op, "OVERFLOW");
    if (isnan(r) && !isnan(x) && (!binary || !isnan(y))) return ctCheckFail(st, op, "INVALID");
    return ctFloat(t, r);
}

static bool ctIsRef(struct type t) { return t.structMAlloc; }

//a value of this type runs a destructor when its scope closes - an effect evaluation does not model, and
//which skipping the construction at run time would skip too
static bool ctHasDestructor(struct type t) { return t.bType == BASETYPE_STRUCT && t.destructFunc != NULL; }

//a constructor's own closing assembly of the instance it builds (the struct value its body returns)
static bool ctIsOwnAssembly(struct var* func, struct type t) {
    return func && t.bType == BASETYPE_STRUCT && t.ctorFunc && canonicalVar(t.ctorFunc) == canonicalVar(func);
}
static const char* CT_WHY_DESTRUCTOR = "it builds a value whose destructor runs when its scope closes";

static struct ctVal* ctNew(enum ctKind k, struct type t) {
    struct ctVal* v = MallocOrCrash(sizeof(struct ctVal));
    *v = (struct ctVal){0};
    v->kind = k;
    v->type = t;
    return v;
}

//E10: a reference, an interface value and a function value compare by identity - the node named (for an
//array, the same storage and the same length, so two slices of one buffer agree exactly when they would at run
//time), or the function named. Null is no node at all.
static bool ctIsIdentity(struct ctVal* v) { return v->kind == CT_REF || v->kind == CT_NULL || v->kind == CT_FUNC; }
static bool ctSameIdentity(struct ctVal* x, struct ctVal* y) {
    if (x->kind == CT_FUNC || y->kind == CT_FUNC) {
        //a capturing lambda is a new closure each time it is made, as it is at run time (D16c)
        return x->kind == y->kind && canonicalVar(x->fn) == canonicalVar(y->fn) && x->elems == y->elems;
    }
    struct ctVal* a = x->kind == CT_REF ? x->target : NULL;
    struct ctVal* b = y->kind == CT_REF ? y->target : NULL;
    //an array is its storage and its length: no storage and no length is what a null array reference is too, bit for
    //bit ({ 0, null }) - the zero value of an array has no storage yet
    bool arrA = x->kind == CT_NULL ? x->type.bType == BASETYPE_ARRAY : a && a->kind == CT_AGG && a->type.bType == BASETYPE_ARRAY;
    bool arrB = y->kind == CT_NULL ? y->type.bType == BASETYPE_ARRAY : b && b->kind == CT_AGG && b->type.bType == BASETYPE_ARRAY;
    if (arrA && arrB) {
        int na = a ? a->n : 0, nb = b ? b->n : 0;
        struct ctVal** ea = a ? a->elems : NULL;
        struct ctVal** eb = b ? b->elems : NULL;
        return a == b || (na == nb && ea == eb);
    }
    if (x->kind == CT_NULL || y->kind == CT_NULL) return x->kind == y->kind; //a null is the same only as a null
    return a == b;
}

//a fresh, independent copy: an aggregate's elements are copied, a reference keeps pointing where it did
static struct ctVal* ctCopy(struct ctVal* v) {
    struct ctVal* c = ctNew(v->kind, v->type);
    *c = *v;
    if (v->kind == CT_AGG) {
        c->viewOf = NULL; //a copy is storage of its own
        c->viewOff = 0;
        c->elems = MallocOrCrash(sizeof(struct ctVal*) * (size_t)(v->n ? v->n : 1));
        for (int i = 0; i < v->n; i++) c->elems[i] = ctCopy(v->elems[i]);
    }
    return c;
}

//writes a value into an existing node, so every reference to that node sees it. T7: an aggregate of the same shape is
//written into the storage it already has - each part into its own node, so a reference to a part (a field, an
//element, a slice of a value array) sees the new value as it does at run time - and only an array whose length
//changes gets new storage, which an earlier borrow of the old one goes on naming
static void ctAssign(struct ctVal* node, struct ctVal* v) {
    if (v->kind != CT_AGG) { *node = *v; return; } //ctCopy of anything else is this same struct copy
    bool sameShape = node->kind == CT_AGG && node->n == v->n && node->type.bType == v->type.bType
                     && (v->type.bType != BASETYPE_CHOICE || node->i == v->i);
    if (sameShape) {
        node->i = v->i;
        for (int i = 0; i < v->n; i++) ctAssign(node->elems[i], v->elems[i]);
        return;
    }
    struct ctVal* c = ctCopy(v);
    *node = *c;
}

//E6c: an integer reduced to its type's width - zero-extended for a U type, sign-extended for an I type (T4)
static long long ctWrap(struct type t, long long v) {
    if (t.bType == BASETYPE_BOOL) return v != 0;
    const struct primInfo* p = PrimInfo(t.bType);
    if (!p || p->kind == 'f' || p->bits == 64) return v;
    unsigned long long mask = (1ULL << p->bits) - 1, u = (unsigned long long)v & mask;
    if (p->kind == 'u') return (long long)u;
    unsigned long long sign = 1ULL << (p->bits - 1);
    return (long long)((u ^ sign) - sign);
}

static bool ctIsInt(struct type t) { const struct primInfo* p = PrimInfo(t.bType); return p && p->kind != 'f'; }
static bool ctIsFloat(struct type t) { const struct primInfo* p = PrimInfo(t.bType); return p && p->kind == 'f'; }

static struct ctVal* ctZero(struct type t) {
    if (ctIsRef(t) || t.bType == BASETYPE_FUNC) return ctNew(CT_NULL, t);
    if (ctIsFloat(t)) return ctNew(CT_FLOAT, t);
    if (t.bType == BASETYPE_BOOL) return ctNew(CT_BOOL, t);
    if (t.bType == BASETYPE_ARRAY) {
        struct ctVal* a = ctNew(CT_AGG, t);
        a->n = (!t.arrMalloc && t.arrLen) ? (int)t.arrLen->intLiteralVal : 0;
        //E10: an empty zero value has no storage ({ 0, null }), so it is the same as any other such array
        a->elems = a->n ? MallocOrCrash(sizeof(struct ctVal*) * (size_t)a->n) : NULL;
        for (int i = 0; i < a->n; i++) a->elems[i] = ctZero(*t.arrElem);
        return a;
    }
    if (t.bType == BASETYPE_CHOICE && ChoiceHasPayload(t)) { //T17: all-zero bytes - the first case, its fields zero
        struct type c0 = ((struct var*)ListGetIdx(&t.vars, 0))->type;
        struct ctVal* s = ctNew(CT_AGG, t);
        s->n = c0.vars.len;
        s->elems = MallocOrCrash(sizeof(struct ctVal*) * (size_t)(s->n ? s->n : 1));
        for (int i = 0; i < s->n; i++) s->elems[i] = ctZero(((struct var*)ListGetIdx(&c0.vars, i))->type);
        return s;
    }
    if (t.bType == BASETYPE_STRUCT) {
        struct ctVal* s = ctNew(CT_AGG, t);
        s->n = t.vars.len;
        s->elems = MallocOrCrash(sizeof(struct ctVal*) * (size_t)(s->n ? s->n : 1));
        for (int i = 0; i < s->n; i++) s->elems[i] = ctZero(((struct var*)ListGetIdx(&t.vars, i))->type);
        return s;
    }
    return ctNew(CT_INT, t);
}

static struct ctVal* ctInt(struct type t, long long i) { struct ctVal* v = ctNew(CT_INT, t); v->i = ctWrap(t, i); return v; }
static struct ctVal* ctBool(bool b) { struct ctVal* v = ctNew(CT_BOOL, TypeVanilla(BASETYPE_BOOL)); v->i = b; return v; }
static struct ctVal* ctFloat(struct type t, double f) {
    struct ctVal* v = ctNew(CT_FLOAT, t);
    v->f = ctRound(t, f);
    return v;
}

//E33: a float moved to a place of its own representation, as type t - unchanged, a NaN's bits included, where making
//it afresh (ctFloat) would round it, and so quiet a signalling NaN
static struct ctVal* ctMoveFloat(struct ctVal* v, struct type t) {
    struct ctVal* c = ctNew(CT_FLOAT, t);
    c->f = v->f;
    c->nanExact = v->nanExact;
    return c;
}

static struct ctVal* ctDeref(struct ctVal* v) {
    while (v && v->kind == CT_REF) v = v->target;
    return v;
}

static double ctAsF(struct ctVal* v) { return v->kind == CT_FLOAT ? v->f : (double)ctExact(v); }

//T4: v as float type t holds it - an integer rounded once, straight to t, as the generated code's sitofp/uitofp rounds
//it: through a double (ctAsF) a 64-bit integer was rounded twice, and an F32 or BF16 came out one step off
static double ctToFloat(struct ctVal* v, struct type t) {
    if (v->kind == CT_FLOAT) return v->f;
    ctWide x = ctExact(v);
    return IntRoundTo(x < 0, (unsigned long long)(x < 0 ? -x : x), ctFloatKind(t));
}

static struct ctVal* ctEval(struct ctState* st, struct operand* op);
static struct ctVal* ctFit(struct ctState* st, struct operand* op, struct type dst);
static struct ctVal* ctFitBoundary(struct ctState* st, struct operand* op, struct type dst);
static void ctExec(struct ctState* st, struct statement* s);
static void ctRunMatch(struct ctState* st, struct statement* s, struct ctVal** out, struct type want);
static void ctExecBlock(struct ctState* st, struct list* block);

//B3e: whether this thread's stack is nearly used up - its lowest address found once, from the thread's own attributes
static _Thread_local uintptr_t ctStackLow; //0: not looked up yet, 1: not known
static _Thread_local uintptr_t ctStackSpare;
static bool ctStackNearEnd(void) {
    if (!ctStackLow) {
        pthread_attr_t a;
        void* addr = NULL;
        size_t size = 0;
        if (pthread_getattr_np(pthread_self(), &a) == 0) {
            if (pthread_attr_getstack(&a, &addr, &size) == 0) ctStackLow = (uintptr_t)addr;
            pthread_attr_destroy(&a);
        }
        if (!ctStackLow) ctStackLow = 1;
        //where the compiler's own thread could not be made (a small address-space limit) it runs on the process's
        //stack, which may be far smaller than the spare - then a quarter of it is kept free
        ctStackSpare = size / 4 < CT_STACK_SPARE ? size / 4 : CT_STACK_SPARE;
    }
    char probe;
    uintptr_t at = (uintptr_t)&probe;
    return ctStackLow > 1 && at > ctStackLow && at - ctStackLow < ctStackSpare;
}

static bool ctStep(struct ctState* st, struct token tok) {
    if (ctRun) return true; //B3e: a program runs as long as it runs
    if (++st->steps > CT_STEP_BUDGET) { ctFail(st, tok, "the computation runs longer than compile-time evaluation allows"); return false; }
    return true;
}

// ---- locals ----

static struct ctVal* ctFindLocal(struct ctState* st, struct str name) {
    for (int i = st->locals->len - 1; i >= 0; i--) {
        struct ctLocal* l = ListGetIdx(st->locals, i);
        if (StrCmp(l->name, name)) return l->node;
    }
    return NULL;
}

static void ctDeclare(struct ctState* st, struct str name, struct ctVal* v) {
    struct ctLocal l = { name, v };
    ListAdd(st->locals, &l);
}

// ---- globals ----

//K1/K2b: what globals hold. Every aggregate a global's value reaches is that global's storage (owned): compile-time
//evaluation never writes it - skipping the computation at run time would skip the write - and codegen writes it out
//once, as the global's data, with two references to it one instance. What a writable reference reaches from a
//global's value can be changed while the program runs: such a global's contents are not a compile-time value, and
//what it reaches is not written out read-only. Both are sets of nodes, keyed by address.
struct ctNodeEntry { struct ctVal* node; struct var* g; };
struct ctNodeSet { struct ctNodeEntry* tab; size_t cap, len; };
static struct ctNodeSet ctOwned, ctWritable;

static size_t ctHashPtr(const void* p) {
    unsigned long long x = (unsigned long long)(uintptr_t)p;
    x ^= x >> 33;
    x *= 0xff51afd7ed558ccdULL;
    x ^= x >> 33;
    return (size_t)x;
}
static struct ctNodeEntry* ctNodeFind(struct ctNodeSet* s, const struct ctVal* n) {
    if (!s->cap) return NULL;
    for (size_t i = ctHashPtr(n) & (s->cap - 1);; i = (i + 1) & (s->cap - 1)) {
        if (s->tab[i].node == n) return &s->tab[i];
        if (!s->tab[i].node) return NULL;
    }
}
static bool ctNodeAdd(struct ctNodeSet* s, struct ctVal* n, struct var* g) { //false when n was in it already
    if (ctNodeFind(s, n)) return false;
    if ((s->len + 1) * 2 > s->cap) {
        struct ctNodeSet bigger = { calloc(s->cap ? s->cap * 2 : 64, sizeof(struct ctNodeEntry)), s->cap ? s->cap * 2 : 64, 0 };
        for (size_t i = 0; i < s->cap; i++) if (s->tab[i].node) ctNodeAdd(&bigger, s->tab[i].node, s->tab[i].g);
        free(s->tab);
        *s = bigger;
    }
    size_t i = ctHashPtr(n) & (s->cap - 1);
    while (s->tab[i].node) i = (i + 1) & (s->cap - 1);
    s->tab[i] = (struct ctNodeEntry){ n, g };
    s->len++;
    return true;
}
static void ctNodeSetClear(struct ctNodeSet* s) { free(s->tab); *s = (struct ctNodeSet){0}; }

struct var* CtNodeOwner(struct ctVal* node) { struct ctNodeEntry* e = ctNodeFind(&ctOwned, node); return e ? e->g : NULL; }
bool CtNodeWritable(struct ctVal* node) { return ctNodeFind(&ctWritable, node) != NULL; }

static void ctReach(struct ctVal* v, struct ctNodeSet* seen, struct list* out) {
    if (!v) return;
    if (v->kind == CT_REF) { ctReach(v->target, seen, out); return; }
    if (v->kind != CT_AGG && v->kind != CT_FUNC) return;
    if (!ctNodeAdd(seen, v, NULL)) return;
    ListAdd(out, &v);
    if (v->viewOf) ctReach(v->viewOf, seen, out);
    for (int i = 0; i < v->n && v->elems; i++) ctReach(v->elems[i], seen, out);
}
void CtReachableNodes(struct ctVal* v, struct list* out) {
    struct ctNodeSet seen = (struct ctNodeSet){0};
    ctReach(v, &seen, out);
    ctNodeSetClear(&seen);
}

//every aggregate v reaches - through its parts, the references it holds and a closure's captures - is g's storage
static void ctOwn(struct ctVal* v, struct var* g) {
    if (!v) return;
    if (v->kind == CT_REF) { ctOwn(v->target, g); return; }
    if (v->kind != CT_AGG && v->kind != CT_FUNC) return;
    if (!ctNodeAdd(&ctOwned, v, g)) return;
    if (v->viewOf) ctOwn(v->viewOf, g);
    for (int i = 0; i < v->n && v->elems; i++) ctOwn(v->elems[i], g);
}

static bool ctTypeHoldsFunc(struct type t, int depth);
//whether a value of type t can hold a reference or a function value anywhere - nothing else leads to other storage
static bool ctTypeLeads(struct type t) { return t.structMAlloc || TypeHoldsReferences(t) || ctTypeHoldsFunc(t, 0); }

//the nodes v reaches that a writable reference makes changeable, v being of static type t and itself changeable when w
//- its by-value parts are its own storage, and a reference's permission is in its type (T25b). Returns whether any was
static bool ctMarkWritable(struct ctVal* v, struct type t, bool w, int depth) {
    if (!v) return false;
    if (depth > 100000) { //a chain deeper than this walk's frames afford: everything past here is taken as changeable
        struct list rest = ListInit(sizeof(struct ctVal*));
        CtReachableNodes(v, &rest);
        for (int i = 0; i < rest.len; i++) ctNodeAdd(&ctWritable, *(struct ctVal**)ListGetIdx(&rest, i), NULL);
        ListDestroy(rest);
        return true;
    }
    if (v->kind == CT_REF) {
        struct type rt = t;
        rt.structMAlloc = false;
        return ctMarkWritable(v->target, rt, t.refMut, depth + 1);
    }
    if (v->kind == CT_FUNC && v->callAdapter && v->fn && v->fn->type.vars.len && v->n) //E31: what Call's receiver may write
        return ctMarkWritable(v->elems[0], ((struct var*)ListGetIdx(&v->fn->type.vars, 0))->type, false, depth + 1);
    if (v->kind == CT_FUNC) { //a closure: what its captures may write
        bool any = false;
        for (int i = 0; v->fn && i < v->n && i < v->fn->lambdaCaptures.len; i++) {
            struct var* in = ((struct lambdaCapture*)ListGetIdx(&v->fn->lambdaCaptures, i))->inner;
            any = ctMarkWritable(v->elems[i], in->type, false, depth + 1) || any;
        }
        return any;
    }
    if (v->kind != CT_AGG) return false;
    bool any = false;
    if (w) {
        if (!ctNodeAdd(&ctWritable, v, NULL)) return true; //seen as changeable already, with all it reaches
        if (v->viewOf) ctNodeAdd(&ctWritable, v->viewOf, NULL); //a slice's elements are its base's
        any = true;
    }
    if (t.bType == BASETYPE_ARRAY && t.arrElem) {
        if (!ctTypeLeads(*t.arrElem)) return any;
        for (int i = 0; i < v->n; i++) any = ctMarkWritable(v->elems[i], *t.arrElem, w, depth + 1) || any;
    } else if (t.bType == BASETYPE_STRUCT) {
        for (int i = 0; i < v->n && i < t.vars.len; i++)
            any = ctMarkWritable(v->elems[i], ((struct var*)ListGetIdx(&t.vars, i))->type, w, depth + 1) || any;
    } else if (t.bType == BASETYPE_CHOICE && ChoiceHasPayload(t) && v->i >= 0 && v->i < t.vars.len) {
        struct type c = ((struct var*)ListGetIdx(&t.vars, (int)v->i))->type;
        for (int i = 0; i < v->n && i < c.vars.len; i++)
            any = ctMarkWritable(v->elems[i], ((struct var*)ListGetIdx(&c.vars, i))->type, w, depth + 1) || any;
    }
    return any;
}

static struct ctGlobal* ctGlobalEntry(struct var* v) {
    if (!ctGlobalsReady) { ctGlobals = ListInit(sizeof(struct ctGlobal)); ctGlobalsReady = true; }
    for (int i = 0; i < ctGlobals.len; i++) {
        struct ctGlobal* g = ListGetIdx(&ctGlobals, i);
        if (g->v == v) return g;
    }
    struct ctGlobal g = { v, NULL, false, false, false };
    ListAdd(&ctGlobals, &g);
    return ListGetIdx(&ctGlobals, ctGlobals.len - 1);
}

//B3e: a mutable global's storage while a program runs - zero until its initializer runs (B5a), as at run time
static struct ctVal* ctRunGlobal(struct var* v) {
    struct ctGlobal* g = ctGlobalEntry(v);
    if (!g->val) g->val = ctZero(v->type);
    return g->val;
}

static const char* CT_WHY_CHANGEABLE = "it reads a global holding storage a writable reference reaches, which the running program can change";

//own: v's value is wanted for v itself (K2) - its own initializer built what it holds, so reaching changeable storage
//is no reason to refuse it there, only to every other reader
static struct ctVal* ctReadGlobalAs(struct ctState* st, struct operand* op, struct var* v, bool own) {
    if (v->mut && ctRun && !v->isFuncDecl) return ctRunGlobal(v);
    if (v->mut) return ctFail(st, op->tok, "it reads a mutable global, whose value is the running program's");
    if (v->isFuncDecl) { //a function as a value - a lambda's carrying the captures it made (D16c)
        struct ctVal* f = ctNew(CT_FUNC, op->type);
        f->fn = v;
        if (v->isLambda && v->lambdaCaptures.len) {
            f->n = v->lambdaCaptures.len;
            f->elems = MallocOrCrash(sizeof(struct ctVal*) * (size_t)f->n);
            for (int i = 0; i < f->n && i < op->args.len; i++) {
                struct var* in = ((struct lambdaCapture*)ListGetIdx(&v->lambdaCaptures, i))->inner;
                f->elems[i] = ctFit(st, *(struct operand**)ListGetIdx(&op->args, i), in->type);
                if (!f->elems[i]) return NULL;
                if (!ctIsRef(in->type)) f->elems[i] = ctCopy(f->elems[i]);
            }
        }
        return f;
    }
    if (SemanticIsBuildConst(v)) st->usedBuild = true;
    if (!v->initExpr) return ctZero(v->type); //D15a: no initializer is the zero value
    struct ctGlobal* g = ctGlobalEntry(v);
    if (g->val) {
        st->usedBuild = st->usedBuild || g->usedBuild;
        if (g->writable && !own && !ctRun) return ctFail(st, op->tok, CT_WHY_CHANGEABLE);
        return g->val;
    }
    if (g->busy) return ctFail(st, op->tok, "these globals are defined in terms of each other");
    g->busy = true;
    struct ctState inner = (struct ctState){0};
    struct list locals = ListInit(sizeof(struct ctLocal));
    inner.locals = &locals;
    inner.steps = st->steps;
    inner.globalInit = true; //K2c: what its own frame builds lands in the program's scope, which never closes
    inner.mod = v->owner;
    struct ctVal* val = ctFit(&inner, v->initExpr, v->type);
    st->steps = inner.steps;
    g = ctGlobalEntry(v); //the list may have grown
    g->busy = false;
    if (inner.flow == CF_FAIL) { st->flow = CF_FAIL; st->why = inner.why; st->whyTok = inner.whyTok; return NULL; }
    if (inner.flow != CF_NORMAL || !val) return ctFail(st, op->tok, "its initializer does not produce a value");
    g->val = val;
    g->usedBuild = inner.usedBuild;
    st->usedBuild = st->usedBuild || inner.usedBuild;
    if (ctRun) return val;
    ctOwn(val, v);
    g->writable = ctMarkWritable(val, v->type, false, 0);
    if (g->writable && !own) return ctFail(st, op->tok, CT_WHY_CHANGEABLE);
    return val;
}

static struct ctVal* ctReadGlobal(struct ctState* st, struct operand* op, struct var* v) {
    return ctReadGlobalAs(st, op, v, false);
}

// ---- lvalues: the node an operand names ----

static const char* CT_WHY_WRITES_GLOBAL = "it writes a global or what one holds, which the running program would then not see written";

static struct ctVal* ctLvalue(struct ctState* st, struct operand* op, bool forWrite) {
    if (op->placeOf && op->placeOf->ctPlace) return op->placeOf->ctPlace; //S4: the place its statement computed
    switch (op->opType) {
        case OPERATION_READ_VAR: {
            struct ctVal* node = ctFindLocal(st, op->readVar->name);
            if (node) return node;
            if (!op->readVar->owner) {
                //a local of the function the condition is in: known here only when its value is fixed
                struct operand* init = st->depth == 0 && st->fixer && !forWrite
                                       ? st->fixer(op->readVar, st->fixerCtx) : NULL;
                if (!init) return ctFail(st, op->tok, "it reads a variable whose value is known only when the program runs");
                struct ctVal* v = ctFit(st, init, op->readVar->type);
                if (!v) return NULL;
                node = ctNew(CT_INT, op->readVar->type);
                *node = *ctCopy(v);
                ctDeclare(st, op->readVar->name, node);
                return node;
            }
            if (forWrite && ctRun) return ctRunGlobal(canonicalVar(op->readVar)); //B3e
            if (forWrite) return ctFail(st, op->tok, CT_WHY_WRITES_GLOBAL);
            return ctReadGlobal(st, op, canonicalVar(op->readVar));
        }
        case OPERATION_MEMBER: {
            struct operand* baseOp = *(struct operand**)ListGetIdx(&op->args, 0);
            //D8d: one call's results spread over a call's arguments - evaluated once, by the first
            struct ctVal* base = baseOp->isSpreadSource && op->spreadIndex > 0 ? baseOp->spreadVal
                                 : ctDeref(ctLvalue(st, baseOp, forWrite));
            if (baseOp->isSpreadSource && op->spreadIndex == 0) baseOp->spreadVal = base;
            if (!base) return NULL;
            if (forWrite && !ctRun && CtNodeOwner(base)) return ctFail(st, op->tok, CT_WHY_WRITES_GLOBAL);
            if (base->kind == CT_NULL) return ctFail(st, op->tok, "it reads through a null reference");
            if (base->kind != CT_AGG) return ctFail(st, op->tok, "it uses a value compile-time evaluation does not model");
            for (int i = 0; i < base->type.vars.len && i < base->n; i++) {
                if (StrCmp(((struct var*)ListGetIdx(&base->type.vars, i))->name, op->memberName)) return base->elems[i];
            }
            return ctFail(st, op->tok, "it uses a value compile-time evaluation does not model");
        }
        case OPERATION_INDEX: {
            struct operand* baseOp = *(struct operand**)ListGetIdx(&op->args, 0);
            struct operand* idxOp = *(struct operand**)ListGetIdx(&op->args, 1);
            struct ctVal* base = ctDeref(ctLvalue(st, baseOp, forWrite));
            struct ctVal* idx = base ? ctEval(st, idxOp) : NULL;
            if (!base || !idx) {
                //not this index's own failure - unless it is a check this try asked for (R20)
                if (st->flow == CF_ERROR && op->isTried && st->errCheckRoot != op) st->errBypass = true;
                return NULL;
            }
            if (forWrite && !ctRun && CtNodeOwner(base)) return ctFail(st, op->tok, CT_WHY_WRITES_GLOBAL);
            if (base->kind == CT_NULL) return ctFail(st, op->tok, "it indexes a null array");
            if (base->kind != CT_AGG) return ctFail(st, op->tok, "it uses a value compile-time evaluation does not model");
            if (idx->i < 0 || idx->i >= base->n) {
                if (op->checkRoot) return ctCheckFail(st, op, "OUT_OF_BOUNDS"); //E16d/R20
                return ctFail(st, op->tok, "it indexes outside the array, which is undefined at run time");
            }
            return base->elems[idx->i];
        }
        default:
            return ctEval(st, op); //a temporary: a fresh node nothing else refers to
    }
}

// ---- operators ----

//an operand evaluating which does nothing but read - a variable, a field or element of one, at a literal or variable
//index - so skipping it changes nothing
static bool ctReadsOnly(struct operand* op) {
    for (int depth = 0; depth < 64; depth++) {
        if (op->opType == OPERATION_READ_VAR) return true;
        if (op->opType == OPERATION_NONE) return op->isLiteral;
        if (op->opType != OPERATION_MEMBER && op->opType != OPERATION_INDEX) return false;
        if (op->isAtCall || op->catchClauses.len || op->checkRoot) return false;
        if (op->opType == OPERATION_INDEX) {
            struct operand* idx = *(struct operand**)ListGetIdx(&op->args, 1);
            if (!(idx->isLiteral || idx->opType == OPERATION_READ_VAR)) return false;
        }
        op = *(struct operand**)ListGetIdx(&op->args, 0);
    }
    return false;
}

static struct ctVal* ctBinary(struct ctState* st, struct operand* op) {
    struct operand* aOp = *(struct operand**)ListGetIdx(&op->args, 0);
    struct operand* bOp = *(struct operand**)ListGetIdx(&op->args, 1);
    if (op->opType == OPERATION_AND || op->opType == OPERATION_OR) {
        struct ctVal* a = ctEval(st, aOp);
        if (!a) return NULL;
        if ((op->opType == OPERATION_AND) != (a->i != 0)) return ctBool(a->i != 0);
        struct ctVal* b = ctEval(st, bOp);
        return b ? ctBool(b->i != 0) : NULL;
    }
    struct ctVal* a = ctEval(st, aOp);
    if (!a) return NULL;
    struct ctVal* b = ctEval(st, bOp);
    if (!b) return NULL;
    a = a->kind == CT_REF && !ctIsRef(op->type) && op->opType != OPERATION_EQ && op->opType != OPERATION_NEQ ? ctDeref(a) : a;
    b = b->kind == CT_REF && !ctIsRef(op->type) && op->opType != OPERATION_EQ && op->opType != OPERATION_NEQ ? ctDeref(b) : b;
    switch (op->opType) {
        case OPERATION_EQ: case OPERATION_NEQ: {
            bool eq;
            if (ctIsIdentity(a) || ctIsIdentity(b)) {
                eq = ctSameIdentity(a, b);
            } else if (a->kind == CT_AGG || b->kind == CT_AGG) {
                //a value compares structurally - through ctDeepEq below
                extern bool ctDeepEqPublic(struct ctVal* x, struct ctVal* y);
                eq = ctDeepEqPublic(a, b);
            } else if (a->kind == CT_FLOAT || b->kind == CT_FLOAT) {
                eq = ctAsF(a) == ctAsF(b);
            } else {
                eq = a->i == b->i;
            }
            return ctBool(op->opType == OPERATION_EQ ? eq : !eq);
        }
        case OPERATION_LST: case OPERATION_LSE: case OPERATION_GRT: case OPERATION_GRE: {
            bool r;
            if (a->kind == CT_FLOAT || b->kind == CT_FLOAT) {
                double x = ctAsF(a), y = ctAsF(b);
                r = op->opType == OPERATION_LST ? x < y : op->opType == OPERATION_LSE ? x <= y
                  : op->opType == OPERATION_GRT ? x > y : x >= y;
            } else {
                ctWide x = ctExact(a), y = ctExact(b); //T4: a U64 compares unsigned
                r = op->opType == OPERATION_LST ? x < y : op->opType == OPERATION_LSE ? x <= y
                  : op->opType == OPERATION_GRT ? x > y : x >= y;
            }
            return ctBool(r);
        }
        default: break;
    }
    struct type t = op->type;
    if (op->checkRoot) { //R20: the checks "try (...)" asked for, as the generated code makes them
        if (ctIsFloat(t)) {
            double x = ctAsF(a), y = ctAsF(b);
            switch (op->opType) {
                case OPERATION_ADD: return ctCheckFloat(st, op, t, x, y, true, x + y);
                case OPERATION_SUB: return ctCheckFloat(st, op, t, x, y, true, x - y);
                case OPERATION_MUL: return ctCheckFloat(st, op, t, x, y, true, x * y);
                case OPERATION_DIV:
                    if (y == 0) return ctCheckFail(st, op, "DIVIDE_BY_ZERO");
                    return ctCheckFloat(st, op, t, x, y, true, x / y);
                default: break;
            }
        } else if (ctIsInt(t)) {
            int w = PrimInfo(t.bType)->bits;
            ctWide x = ctExact(a), y = ctExact(b);
            switch (op->opType) {
                case OPERATION_ADD: if (!ctFits(t, x + y)) return ctCheckFail(st, op, "OVERFLOW"); break;
                case OPERATION_SUB: if (!ctFits(t, x - y)) return ctCheckFail(st, op, "OVERFLOW"); break;
                case OPERATION_MUL: if (!ctFits(t, x * y)) return ctCheckFail(st, op, "OVERFLOW"); break;
                case OPERATION_DIV: case OPERATION_MOD:
                    if (y == 0) return ctCheckFail(st, op, "DIVIDE_BY_ZERO");
                    if (!TypeIsUnsigned(t) && y == -1 && !ctFits(t, -x)) return ctCheckFail(st, op, "OVERFLOW");
                    break;
                case OPERATION_BTSFT_L: case OPERATION_BTSFT_R: {
                    //the amount in its own type: a negative one, or one past the width, is INVALID
                    ctWide n = ctExact(b);
                    if (n < 0 || n >= w) return ctCheckFail(st, op, "INVALID");
                    break;
                }
                default: break;
            }
        }
    }
    if (ctIsFloat(t)) {
        double x = ctAsF(a), y = ctAsF(b), r;
        switch (op->opType) {
            case OPERATION_ADD: r = x + y; break;
            case OPERATION_SUB: r = x - y; break;
            case OPERATION_MUL: r = x * y; break;
            case OPERATION_DIV: r = x / y; break;
            case OPERATION_MOD: r = fmod(x, y); break;
            default: return ctFail(st, op->tok, "it uses an operator compile-time evaluation does not model");
        }
        return ctFloat(t, r);
    }
    if (t.bType == BASETYPE_BOOL) {
        switch (op->opType) {
            case OPERATION_XOR: case OPERATION_BTWSE_XOR: return ctBool((a->i != 0) != (b->i != 0));
            case OPERATION_BTWSE_AND: return ctBool(a->i && b->i);
            case OPERATION_BTWSE_OR:  return ctBool(a->i || b->i);
            default: return ctFail(st, op->tok, "it uses an operator compile-time evaluation does not model");
        }
    }
    if (!ctIsInt(t)) return ctFail(st, op->tok, "it uses an operator on values compile-time evaluation does not model");
    long long x = a->i, y = b->i;
    int bits = PrimInfo(t.bType)->bits;
    bool uns = TypeIsUnsigned(t);
    unsigned long long ux = (unsigned long long)x, uy = (unsigned long long)y;
    ctWide shift = ctExact(b); //a shift count in its own type
    switch (op->opType) {
        case OPERATION_ADD: return ctInt(t, (long long)(ux + uy));
        case OPERATION_SUB: return ctInt(t, (long long)(ux - uy));
        case OPERATION_MUL: return ctInt(t, (long long)(ux * uy));
        case OPERATION_DIV: case OPERATION_MOD: {
            //E6a: undefined at run time, so refused here rather than given a value the program never had
            if (y == 0) return ctFail(st, op->tok, "it divides by zero");
            long long minV = bits == 64 ? INT64_MIN : -(1LL << (bits - 1));
            if (!uns && x == minV && y == -1) return ctFail(st, op->tok, "it divides the most negative value by -1, which overflows");
            if (uns) return ctInt(t, (long long)(op->opType == OPERATION_DIV ? ux / uy : ux % uy)); //held zero-extended
            return ctInt(t, op->opType == OPERATION_DIV ? x / y : x % y);
        }
        case OPERATION_BTWSE_AND: return ctInt(t, x & y);
        case OPERATION_BTWSE_OR:  return ctInt(t, x | y);
        case OPERATION_BTWSE_XOR: case OPERATION_XOR: return ctInt(t, x ^ y);
        case OPERATION_BTSFT_L: case OPERATION_BTSFT_R: {
            //E8a: a count outside [0, width) is undefined at run time
            if (shift < 0 || shift >= bits) return ctFail(st, op->tok, "it shifts by a count outside the type's width");
            if (op->opType == OPERATION_BTSFT_L) return ctInt(t, (long long)(ux << (int)shift));
            if (uns) return ctInt(t, (long long)(ux >> (int)shift)); //logical for the U types
            return ctInt(t, x >> (int)shift); //arithmetic for the I types, as the generated code does
        }
        default: return ctFail(st, op->tok, "it uses an operator compile-time evaluation does not model");
    }
}

bool ctDeepEqPublic(struct ctVal* x, struct ctVal* y) {
    if (ctIsIdentity(x) || ctIsIdentity(y)) return ctSameIdentity(x, y);
    if (x->kind == CT_AGG || y->kind == CT_AGG) {
        if (x->kind != y->kind || x->n != y->n) return false;
        if (x->type.bType == BASETYPE_CHOICE && x->i != y->i) return false; //T17a: the live case, then its payload
        for (int i = 0; i < x->n; i++) if (!ctDeepEqPublic(x->elems[i], y->elems[i])) return false;
        return true;
    }
    if (x->kind == CT_FLOAT || y->kind == CT_FLOAT) return ctAsF(x) == ctAsF(y);
    return x->i == y->i;
}

//T4: an integer type's range as doubles - lo inclusive, hi exclusive, both powers of two and so exact
static void ctIntBounds(struct type t, double* lo, double* hi) {
    const struct primInfo* p = PrimInfo(t.bType);
    *lo = p->kind == 'u' ? 0.0 : -ldexp(1.0, p->bits - 1);
    *hi = p->kind == 'u' ? ldexp(1.0, p->bits) : ldexp(1.0, p->bits - 1);
}

static struct ctVal* ctConvert(struct ctState* st, struct operand* op) {
    struct operand* src = *(struct operand**)ListGetIdx(&op->args, 0);
    struct ctVal* v = ctDeref(ctEval(st, src));
    if (!v) return NULL;
    struct type t = op->type;
    if (op->checkRoot) { //R20: a value the target cannot represent
        if (v->kind == CT_FLOAT && ctIsInt(t)) {
            if (!isfinite(v->f)) return ctCheckFail(st, op, "INVALID");
            double lo, hi;
            ctIntBounds(t, &lo, &hi);
            if (!(v->f >= lo && v->f < hi)) return ctCheckFail(st, op, "OVERFLOW");
        } else if (ctIsFloat(t)) { //into a float: a finite value becoming infinite
            double x = ctAsF(v);
            if (isfinite(x) && isinf(ctRound(t, ctToFloat(v, t)))) return ctCheckFail(st, op, "OVERFLOW");
        } else if (v->kind != CT_FLOAT && ctIsInt(t)) {
            if (!ctFits(t, ctExact(v))) return ctCheckFail(st, op, "OVERFLOW");
        }
    }
    if (ctIsFloat(t) && v->kind == CT_FLOAT && v->type.bType == t.bType) return ctMoveFloat(v, t); //E26: unchanged
    if (ctIsFloat(t)) return ctFloat(t, ctToFloat(v, t));
    if (ctIsInt(t)) {
        if (v->kind == CT_FLOAT) {
            //E26a: a float the target cannot represent is undefined at run time
            double f = trunc(v->f);
            double lo, hi;
            ctIntBounds(t, &lo, &hi);
            if (!(f >= lo && f < hi)) return ctFail(st, op->tok, "it converts a float the target type cannot represent");
            return ctInt(t, f >= 9223372036854775808.0 ? (long long)(unsigned long long)f : (long long)f);
        }
        //a U type widens by zero-extending, an I type by sign-extending, as the generated code does (T4)
        return ctInt(t, (long long)ctExact(v));
    }
    return ctFail(st, op->tok, "it converts to a type compile-time evaluation does not model");
}

// ---- literals ----

static long long ctDecodeEsc(char c) {
    switch (c) {
        case 'n': return '\n';
        case 't': return '\t';
        case 'r': return '\r';
        case '0': return '\0';
        default:  return c;
    }
}

static struct ctVal* ctLiteral(struct ctState* st, struct operand* op) {
    struct type t = op->type;
    if (ctHasDestructor(t) && !ctIsOwnAssembly(st->func, t)) return ctFail(st, op->tok, CT_WHY_DESTRUCTOR);
    if (op->isNullLiteral) return ctNew(CT_NULL, t);
    if (t.bType == BASETYPE_ARRAY && op->args.len == 0 && op->tok.type == TOK_STR_LIT) {
        struct ctVal* a = ctNew(CT_AGG, t);
        a->elems = MallocOrCrash(sizeof(struct ctVal*) * (size_t)(op->tok.str.len ? op->tok.str.len : 1));
        for (int i = 1; i < op->tok.str.len - 1; i++) {
            char c = op->tok.str.ptr[i];
            long long b = c;
            if (c == '\\' && i + 1 < op->tok.str.len - 1) b = ctDecodeEsc(op->tok.str.ptr[++i]);
            a->elems[a->n++] = ctInt(*t.arrElem, b);
        }
        return a;
    }
    if (t.bType == BASETYPE_ARRAY || t.bType == BASETYPE_STRUCT) {
        struct ctVal* a = ctNew(CT_AGG, t);
        a->n = op->args.len;
        a->elems = MallocOrCrash(sizeof(struct ctVal*) * (size_t)(a->n ? a->n : 1));
        for (int i = 0; i < a->n; i++) {
            struct operand* e = *(struct operand**)ListGetIdx(&op->args, i);
            struct type et = t.bType == BASETYPE_ARRAY ? *t.arrElem : ((struct var*)ListGetIdx(&t.vars, i))->type;
            a->elems[i] = ctFit(st, e, et);
            if (!a->elems[i]) return NULL;
        }
        return a;
    }
    if (t.bType == BASETYPE_CHOICE) {
        if (!ChoiceHasPayload(t)) {
            struct ctVal* v = ctNew(CT_INT, t);
            v->i = op->intLiteralVal;
            return v;
        }
        //T17: the case's tag and its payload's fields, in order
        struct type c = ((struct var*)ListGetIdx(&t.vars, (int)op->intLiteralVal))->type;
        struct ctVal* v = ctNew(CT_AGG, t);
        v->i = op->intLiteralVal;
        v->n = op->args.len;
        v->elems = MallocOrCrash(sizeof(struct ctVal*) * (size_t)(v->n ? v->n : 1));
        for (int i = 0; i < v->n; i++) {
            v->elems[i] = ctFit(st, *(struct operand**)ListGetIdx(&op->args, i), ((struct var*)ListGetIdx(&c.vars, i))->type);
            if (!v->elems[i]) return NULL;
        }
        return v;
    }
    if (ctIsFloat(t) && isnan(op->floatLiteralVal)) {
        //E33: a NaN a constructor's result left in a literal (T29d) - the program holds exactly these bits, as written
        struct ctVal* v = ctNew(CT_FLOAT, t);
        v->f = op->floatLiteralVal;
        v->nanExact = true;
        return v;
    }
    if (ctIsFloat(t)) return ctFloat(t, op->floatLiteralVal);
    if (t.bType == BASETYPE_BOOL) return ctBool(op->intLiteralVal != 0);
    if (ctIsInt(t) || t.bType == BASETYPE_ERROR) return ctInt(t, op->intLiteralVal);
    return ctFail(st, op->tok, "it uses a literal compile-time evaluation does not model");
}

// ---- K3: what a function can never do at compile time ----
//
//A static answer, per function, to "can a call of this ever be evaluated at compile time, and if not,
//what stops it": the first operation in its body - or in anything it calls, or in the initializer of an
//immutable global it reads - that no evaluation can perform. It makes evaluability a property of the
//function rather than of the arguments one call happened to pass, so a constant context fails the same way
//whatever values reach it, and the reason names the operation where it is written. Computed per build,
//never stored (B2a: a function's facts come from its source). Recursion is assumed evaluable while it is
//being analysed, which is the fixed point: a cycle adds no operation of its own.

struct ctFacts { void* key; bool busy; bool done; const char* why; struct token tok; };
static struct list ctFactList;
static bool ctFactsReady;

static struct ctFacts* ctFactsFor(void* key) {
    if (!ctFactsReady) { ctFactList = ListInit(sizeof(struct ctFacts)); ctFactsReady = true; }
    for (int i = 0; i < ctFactList.len; i++) {
        struct ctFacts* f = ListGetIdx(&ctFactList, i);
        if (f->key == key) return f;
    }
    struct ctFacts f = (struct ctFacts){0};
    f.key = key;
    ListAdd(&ctFactList, &f);
    return ListGetIdx(&ctFactList, ctFactList.len - 1);
}

struct ctScan { const char* why; struct token tok; struct var* func; };

static void ctScanOp(struct ctScan* sc, struct operand* op);
static void ctScanBlock(struct ctScan* sc, struct list* block);
static const char* ctFuncWhy(struct var* func, struct token* tok);
static const char* ctGlobalWhy(struct var* v, struct token* tok);

static void ctScanFail(struct ctScan* sc, struct token tok, const char* why) {
    if (sc->why) return;
    sc->why = why;
    sc->tok = tok;
}

//the variable an lvalue is ultimately part of
static struct var* ctRootVar(struct operand* op) {
    while (op && (op->opType == OPERATION_MEMBER || op->opType == OPERATION_INDEX)) op = *(struct operand**)ListGetIdx(&op->args, 0);
    return op && op->opType == OPERATION_READ_VAR ? op->readVar : NULL;
}

//a global variable - storage, a function-typed one included - as against a function
static bool ctIsGlobal(struct var* v) { return v && v->owner && (v->type.bType != BASETYPE_FUNC || v->isGlobalVar); }

static void ctScanWrite(struct ctScan* sc, struct operand* target) {
    struct var* root = ctRootVar(target);
    if (ctIsGlobal(canonicalVar(root))) ctScanFail(sc, target->tok, "it writes a global, which the running program would then not see written");
}

static void ctScanOp(struct ctScan* sc, struct operand* op) {
    if (!op || sc->why) return;
    switch (op->opType) {
        case OPERATION_READ_VAR: {
            struct var* v = canonicalVar(op->readVar);
            if (!ctIsGlobal(v)) return;
            if (v->mut) { ctScanFail(sc, op->tok, "it reads a mutable global, whose value is the running program's"); return; }
            struct token t;
            const char* why = ctGlobalWhy(v, &t);
            if (why) ctScanFail(sc, t, why);
            return;
        }
        case OPERATION_FUNCCALL: {
            struct var* f = op->readVar;
            if (op->isCtorCall && ctHasDestructor(op->type)) { ctScanFail(sc, op->tok, CT_WHY_DESTRUCTOR); return; }
            if (!f || (f->type.isExtern && !CtMathFn(f))) { ctScanFail(sc, op->tok, "it calls an external function"); return; }
            //a call through a function value is evaluable exactly when the function it reaches is - which only
            //the evaluation knows, so it is decided there (ctCall), not here. A function-typed global's is read first
            bool throughValue = (!f->owner || f->isGlobalVar) && !op->isCtorCall;
            if (f->isGlobalVar && !op->callee) {
                struct var* g = canonicalVar(f);
                if (g->mut) { ctScanFail(sc, op->tok, "it reads a mutable global, whose value is the running program's"); return; }
                struct token t;
                const char* why = ctGlobalWhy(g, &t);
                if (why) { ctScanFail(sc, t, why); return; }
            }
            for (int i = 0; i < op->args.len && !sc->why; i++) {
                struct operand* a = *(struct operand**)ListGetIdx(&op->args, i);
                //a global bound to a "mut &" parameter may be written through it
                if (i < f->type.vars.len) {
                    struct var* p = ListGetIdx(&f->type.vars, i);
                    if (p->mut && p->type.structMAlloc && OperandIsLvalue(a)) ctScanWrite(sc, a);
                }
                ctScanOp(sc, a);
            }
            if (sc->why || f->type.typeParams.len || throughValue || f->type.isExtern) return;
            struct token t;
            const char* why = ctFuncWhy(f, &t);
            if (why) ctScanFail(sc, t, why);
            return;
        }
        case OPERATION_PREFIX_INC: case OPERATION_PREFIX_DEC: case OPERATION_POSTFIX_INC: case OPERATION_POSTFIX_DEC:
            ctScanWrite(sc, *(struct operand**)ListGetIdx(&op->args, 0));
            break;
        case OPERATION_ATOMIC_LOAD: case OPERATION_ATOMIC_STORE: case OPERATION_ATOMIC_ADD:
        case OPERATION_ATOMIC_SWAP: case OPERATION_ATOMIC_CAS:
            ctScanFail(sc, op->tok, "it uses an atomic operation");
            return;
        case OPERATION_NONE:
            //a constructor assembling its own instance is the construction its call already is, not another
            if (op->isLiteral && ctHasDestructor(op->type) && !ctIsOwnAssembly(sc->func, op->type)) {
                ctScanFail(sc, op->tok, CT_WHY_DESTRUCTOR);
                return;
            }
            break;
        default: break;
    }
    if (op->callee) ctScanOp(sc, op->callee); //E13b
    ctScanBlock(sc, &op->comprBody); //E27
    for (int i = 0; i < op->args.len && !sc->why; i++) ctScanOp(sc, *(struct operand**)ListGetIdx(&op->args, i));
    for (int c = 0; c < op->catchClauses.len && !sc->why; c++) {
        struct catchClause* cc = ListGetIdx(&op->catchClauses, c);
        ctScanBlock(sc, &cc->block);
        ctScanOp(sc, cc->dflt);
    }
}

static void ctScanStmt(struct ctScan* sc, struct statement* s) {
    if (sc->why) return;
    struct token tok = s->op ? s->op->tok : s->var.tok;
    switch (s->sType) {
        case STATEMENT_DONE: case STATEMENT_FAIL: case STATEMENT_ABORT: case STATEMENT_UNREACHABLE:
            ctScanFail(sc, tok, "it ends the test or the process");
            return;
        case STATEMENT_JOIN: case STATEMENT_SPAWN:
            ctScanFail(sc, tok, "it starts tasks");
            return;
        case STATEMENT_ASSIGN:
            ctScanWrite(sc, s->target);
            ctScanOp(sc, s->target);
            break;
        case STATEMENT_MATCH:
            ctScanBlock(sc, &s->matchHold);
            for (int i = 0; i < s->matchCases.len && !sc->why; i++) {
                struct statement* c = ListGetIdx(&s->matchCases, i);
                for (int a = 0; a < c->caseAlts.len; a++) {
                    struct caseAlt* alt = ListGetIdx(&c->caseAlts, a);
                    ctScanOp(sc, alt->test);
                    for (int b = 0; b < alt->binds.len; b++) ctScanOp(sc, ((struct caseBind*)ListGetIdx(&alt->binds, b))->from);
                }
                ctScanOp(sc, c->caseGuard);
                ctScanOp(sc, c->op);
                ctScanBlock(sc, &c->block);
            }
            ctScanBlock(sc, &s->nomatchBlock);
            ctScanOp(sc, s->nomatchValue);
            break;
        case STATEMENT_TRY_CATCH:
            for (int c = 0; c < s->catchClauses.len && !sc->why; c++) {
                struct catchClause* cc = ListGetIdx(&s->catchClauses, c);
                ctScanBlock(sc, &cc->block);
            }
            break;
        default: break;
    }
    ctScanOp(sc, s->op);
    ctScanOp(sc, s->fillValue);
    if (s->forInit) ctScanOp(sc, s->forInit);
    if (s->forPost) ctScanStmt(sc, s->forPost);
    ctScanBlock(sc, &s->block);
    if (s->elseStmnt) {
        if (s->elseIsBlock) ctScanBlock(sc, &s->elseStmnt->block);
        else ctScanStmt(sc, s->elseStmnt);
    }
}

static void ctScanBlock(struct ctScan* sc, struct list* block) {
    for (int i = 0; i < block->len && !sc->why; i++) ctScanStmt(sc, ListGetIdx(block, i));
}

static const char* ctFuncWhy(struct var* func, struct token* tok) {
    struct ctFacts* f = ctFactsFor(func);
    if (f->done || f->busy) { *tok = f->tok; return f->done ? f->why : NULL; }
    f->busy = true;
    struct ctScan sc = (struct ctScan){0};
    sc.func = func;
    if (func->bodyHadErrors) ctScanFail(&sc, func->tok, "it calls a function that does not compile");
    if (func->bodyIncomplete) ctScanFail(&sc, func->tok, CT_WHY_INCOMPLETE);
    ctScanBlock(&sc, &func->codeBlock);
    f = ctFactsFor(func); //the list may have grown
    f->busy = false;
    f->done = true;
    f->why = sc.why;
    f->tok = sc.tok;
    *tok = sc.tok;
    return sc.why;
}

static const char* ctGlobalWhy(struct var* v, struct token* tok) {
    struct ctFacts* f = ctFactsFor(v);
    if (f->done || f->busy) { *tok = f->tok; return f->done ? f->why : NULL; }
    f->busy = true;
    struct ctScan sc = (struct ctScan){0};
    ctScanOp(&sc, v->initExpr);
    f = ctFactsFor(v);
    f->busy = false;
    f->done = true;
    f->why = sc.why;
    f->tok = sc.tok;
    *tok = sc.tok;
    return sc.why;
}

const char* CtWhyNotEvaluable(struct var* func, struct token* where) {
    struct token t = (struct token){0};
    const char* why = ctFuncWhy(func, &t);
    if (where) *where = t;
    return why;
}

// ---- B5a: the order a module's globals are initialized in ----
//
//A global's initializer runs after the initializers of the globals it reads - directly, or through a function it
//calls - with declaration order breaking ties, and a cycle among them is an error. A call through a function value
//reaches whichever function the value names, so the functions named as values in what runs - and in the initializer
//of a global it reads that holds one - count as called wherever any call through a value is made.

struct ctDeps {
    struct semaModule* mod;
    struct list funcs;   //struct var*: functions already walked
    struct list named;   //struct var*: functions named as values, which a call through a value may reach
    struct list found;   //struct var*: this module's globals read
    struct list holders; //struct var*: globals holding function values whose initializers were searched for names
    bool throughValue;   //a call through a function value was seen
    bool namesOnly;      //searching a global's initializer for the functions it names, nothing else
};

static void ctDepOp(struct ctDeps* d, struct operand* op);
static void ctDepBlock(struct ctDeps* d, struct list* block);

static bool ctListHas(struct list* l, void* p) {
    for (int i = 0; i < l->len; i++) if (*(void**)ListGetIdx(l, i) == p) return true;
    return false;
}

static bool ctTypeHoldsFunc(struct type t, int depth) {
    if (t.bType == BASETYPE_FUNC) return true;
    if (depth > 8) return false;
    if (t.bType == BASETYPE_ARRAY && t.arrElem) return ctTypeHoldsFunc(*t.arrElem, depth + 1);
    if (t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_CHOICE) {
        for (int i = 0; i < t.vars.len; i++) if (ctTypeHoldsFunc(((struct var*)ListGetIdx(&t.vars, i))->type, depth + 1)) return true;
    }
    return false;
}

static void ctDepFunc(struct ctDeps* d, struct var* f) {
    if (!f || ctListHas(&d->funcs, f)) return;
    ListAdd(&d->funcs, &f);
    bool names = d->namesOnly;
    d->namesOnly = false; //a function walked runs - what it reads counts
    ctDepBlock(d, &f->codeBlock);
    d->namesOnly = names;
}

static void ctDepGlobal(struct ctDeps* d, struct var* g) {
    if (d->namesOnly) return;
    if (g->owner == d->mod && !ctListHas(&d->found, g)) ListAdd(&d->found, &g);
    //what it holds may be called: the functions its initializer names
    if (ctTypeHoldsFunc(g->type, 0) && g->initExpr && !ctListHas(&d->holders, g)) {
        ListAdd(&d->holders, &g);
        d->namesOnly = true;
        ctDepOp(d, g->initExpr);
        d->namesOnly = false;
    }
}

//the functions "$" calls rendering a value of type t - its Str, or its parts' (E11c)
static void ctDepStr(struct ctDeps* d, struct type t, int depth) {
    if (depth > 8) return;
    struct var* m = SemanticStrOf(t);
    if (m) { ctDepFunc(d, m); return; }
    if (t.bType == BASETYPE_ARRAY && t.arrElem) ctDepStr(d, *t.arrElem, depth + 1);
    if (t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_CHOICE) {
        for (int i = 0; i < t.vars.len; i++) ctDepStr(d, ((struct var*)ListGetIdx(&t.vars, i))->type, depth + 1);
    }
}

static void ctDepStmt(struct ctDeps* d, struct statement* s) {
    ctDepOp(d, s->target);
    ctDepOp(d, s->op);
    ctDepOp(d, s->fillValue);
    ctDepOp(d, s->forInit);
    if (s->forPost) ctDepStmt(d, s->forPost);
    ctDepBlock(d, &s->block);
    if (s->elseStmnt) {
        if (s->elseIsBlock) ctDepBlock(d, &s->elseStmnt->block);
        else ctDepStmt(d, s->elseStmnt);
    }
    for (int c = 0; c < s->catchClauses.len; c++) ctDepBlock(d, &((struct catchClause*)ListGetIdx(&s->catchClauses, c))->block);
    if (s->sType == STATEMENT_MATCH) {
        ctDepBlock(d, &s->matchHold);
        for (int i = 0; i < s->matchCases.len; i++) {
            struct statement* c = ListGetIdx(&s->matchCases, i);
            for (int a = 0; a < c->caseAlts.len; a++) {
                struct caseAlt* alt = ListGetIdx(&c->caseAlts, a);
                ctDepOp(d, alt->test);
                for (int b = 0; b < alt->binds.len; b++) ctDepOp(d, ((struct caseBind*)ListGetIdx(&alt->binds, b))->from);
            }
            ctDepOp(d, c->caseGuard);
            ctDepOp(d, c->op);
            ctDepBlock(d, &c->block);
        }
        ctDepBlock(d, &s->nomatchBlock);
        ctDepOp(d, s->nomatchValue);
    }
}

static void ctDepBlock(struct ctDeps* d, struct list* block) {
    for (int i = 0; i < block->len; i++) ctDepStmt(d, ListGetIdx(block, i));
}

static void ctDepOp(struct ctDeps* d, struct operand* op) {
    if (!op) return;
    switch (op->opType) {
        case OPERATION_READ_VAR: {
            struct var* v = canonicalVar(op->readVar);
            if (!v) break;
            if (v->isFuncDecl) { if (!ctListHas(&d->named, v)) ListAdd(&d->named, &v); }
            else if (ctIsGlobal(v)) ctDepGlobal(d, v);
            break;
        }
        case OPERATION_FUNCCALL: {
            struct var* f = op->readVar;
            if (!f || d->namesOnly) break;
            if (op->callee) d->throughValue = true;
            else if (f->isGlobalVar) { ctDepGlobal(d, canonicalVar(f)); d->throughValue = true; }
            else if (!f->owner && !op->isCtorCall) d->throughValue = true;
            else if (!f->type.isExtern) ctDepFunc(d, f);
            break;
        }
        case OPERATION_STR_OF:
            if (!d->namesOnly && op->args.len) ctDepStr(d, (*(struct operand**)ListGetIdx(&op->args, 0))->type, 0);
            break;
        default: break;
    }
    //E31: a value whose type declares Call may stand for a function value - its Call is named as one
    if (op->type.bType == BASETYPE_STRUCT || op->type.bType == BASETYPE_CHOICE) {
        struct var* call = SemanticCallOf(op->type);
        if (call && !ctListHas(&d->named, call)) ListAdd(&d->named, &call);
    }
    ctDepOp(d, op->callee);
    ctDepBlock(d, &op->comprBody);
    for (int i = 0; i < op->args.len; i++) ctDepOp(d, *(struct operand**)ListGetIdx(&op->args, i));
    for (int c = 0; c < op->catchClauses.len; c++) {
        struct catchClause* cc = ListGetIdx(&op->catchClauses, c);
        ctDepBlock(d, &cc->block);
        ctDepOp(d, cc->dflt);
    }
}

//this module's globals g's initializer reads, directly or through what it calls
static struct list ctGlobalDeps(struct semaModule* mod, struct var* g) {
    struct ctDeps d = (struct ctDeps){0};
    d.mod = mod;
    d.funcs = ListInit(sizeof(struct var*));
    d.named = ListInit(sizeof(struct var*));
    d.found = ListInit(sizeof(struct var*));
    d.holders = ListInit(sizeof(struct var*));
    ctDepOp(&d, g->initExpr);
    //a call through a function value may reach any function named as one - walked until nothing new is named
    for (int i = 0; d.throughValue && i < d.named.len; i++) ctDepFunc(&d, *(struct var**)ListGetIdx(&d.named, i));
    ListDestroy(d.funcs);
    ListDestroy(d.named);
    ListDestroy(d.holders);
    return d.found;
}

//a module's global that is set when the program starts - one with an initializer
static bool ctNeedsInit(struct var* v) {
    return v->initExpr && !v->isFuncDecl && !v->isMethod && (v->type.bType != BASETYPE_FUNC || v->isGlobalVar);
}

void CtOrderGlobals(void) {
    struct list* all = SemanticAllModules();
    for (int m = 0; m < all->len; m++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(all, m);
        struct list gs = ListInit(sizeof(struct var*));
        for (int i = 0; i < mod->vars.len; i++) {
            struct var* v = ListGetIdx(&mod->vars, i);
            if (ctNeedsInit(v)) ListAdd(&gs, &v);
        }
        int n = gs.len;
        struct list* deps = MallocOrCrash(sizeof(struct list) * (size_t)(n ? n : 1));
        for (int k = 0; k < n; k++) deps[k] = ctGlobalDeps(mod, *(struct var**)ListGetIdx(&gs, k));
        bool* placed = calloc((size_t)(n ? n : 1), sizeof(bool));
        mod->globalOrder = ListInit(sizeof(struct var*));
        mod->globalOrderSet = true;
        for (int done = 0; done < n; ) {
            int pick = -1;
            for (int k = 0; k < n && pick < 0; k++) { //the first, in declaration order, whose every dependency is set
                if (placed[k]) continue;
                bool ready = true;
                for (int j = 0; j < deps[k].len && ready; j++) {
                    struct var* dv = *(struct var**)ListGetIdx(&deps[k], j);
                    for (int q = 0; q < n; q++) {
                        if (*(struct var**)ListGetIdx(&gs, q) == dv && !placed[q]) { ready = false; break; }
                    }
                }
                if (ready) pick = k;
            }
            if (pick < 0) {
                //a cycle: reported once, from the first global left, along the reads back to a global already on it
                int at = 0;
                while (placed[at]) at++;
                int path[64], len = 0;
                for (int cur = at; len < 64; ) {
                    int seen = -1;
                    for (int p = 0; p < len; p++) if (path[p] == cur) seen = p;
                    if (seen >= 0) {
                        struct var* first = *(struct var**)ListGetIdx(&gs, path[seen]);
                        if (seen == len - 1) Err(first->tok, ERR_GLOBAL_READS_ITSELF, first->name, first->name);
                        else {
                            char buf[1200];
                            int w = 0;
                            buf[0] = '\0';
                            for (int p = seen; p <= len && w < (int)sizeof(buf); p++) {
                                struct var* gv = *(struct var**)ListGetIdx(&gs, p < len ? path[p] : path[seen]);
                                w += snprintf(buf + w, sizeof(buf) - (size_t)w, "%s%.*s", p > seen ? " -> " : "", gv->name.len, gv->name.ptr);
                            }
                            Err(first->tok, ERR_GLOBALS_CYCLE, buf);
                        }
                        //its members are set in declaration order, and the rest ordered on - another cycle is its own error
                        for (int p = seen; p < len; p++) { placed[path[p]] = true; ListAdd(&mod->globalOrder, ListGetIdx(&gs, path[p])); done++; }
                        len = -1;
                        break;
                    }
                    path[len++] = cur;
                    int next = -1;
                    for (int j = 0; j < deps[cur].len && next < 0; j++) {
                        struct var* dv = *(struct var**)ListGetIdx(&deps[cur], j);
                        for (int q = 0; q < n; q++) if (*(struct var**)ListGetIdx(&gs, q) == dv && !placed[q]) { next = q; break; }
                    }
                    if (next < 0) break;
                    cur = next;
                }
                if (len >= 0) { //no cycle found (it cannot happen): the rest in declaration order
                    for (int k = 0; k < n; k++) if (!placed[k]) { placed[k] = true; ListAdd(&mod->globalOrder, ListGetIdx(&gs, k)); done++; }
                }
                continue;
            }
            placed[pick] = true;
            ListAdd(&mod->globalOrder, ListGetIdx(&gs, pick));
            done++;
        }
        for (int k = 0; k < n; k++) ListDestroy(deps[k]);
        free(deps);
        free(placed);
        ListDestroy(gs);
    }
}

// ---- calls ----

static struct ctVal* ctExtern(struct ctState* st, struct operand* op, struct var* func);

//the call itself: parameters bound, body run. A reference parameter is bound to the argument's own node, so
//writing through a "mut &" parameter writes the caller's value - exactly E12c's borrow.
static struct ctVal* ctCall(struct ctState* st, struct operand* op) {
    struct var* func = op->readVar;
    if (op->isCtorCall && ctHasDestructor(op->type) && !(st->globalInit && st->depth == 0)) {
        if (ctRun) return ctFail(st, op->tok, "it builds a value whose type declares a destructor, which -i does not run yet");
        return ctFail(st, op->tok, CT_WHY_DESTRUCTOR);
    }
    //B3e, X8: -i calls every extern; while compiling only the C math library's, which has no effect to skip
    if (func && func->type.isExtern && (ctRun || CtMathFn(func))) return ctExtern(st, op, func);
    if (!func || func->type.isExtern) return ctFail(st, op->tok, "it calls an external function");
    struct ctVal* through = NULL;
    if ((!func->owner || func->isGlobalVar) && !op->isCtorCall) {
        //a call through a function value: the function it names, decided now (K1a) - computed (E13b), a local's, or
        //the one a function-typed global holds
        struct ctVal* fv = op->callee ? ctEval(st, op->callee)
                           : func->isGlobalVar ? ctReadGlobal(st, op, canonicalVar(func)) : ctFindLocal(st, func->name);
        if (!fv && (op->callee || func->isGlobalVar)) return NULL;
        if (fv) fv = ctDeref(fv);
        if (!fv || fv->kind == CT_NULL) return ctFail(st, op->tok, "it calls through a null function value");
        if (fv->kind != CT_FUNC) return ctFail(st, op->tok, "it calls through a function value compile-time evaluation does not model");
        func = canonicalVar(fv->fn);
        through = fv;
    }
    if (func->type.typeParams.len) return ctFail(st, op->tok, "it calls a generic that has no instantiation here");
    if (!ctRun) {
        //K3: a function that can never be evaluated is rejected before running any of it, with the
        //operation that stops it as the reason - the same answer whatever arguments reached it
        struct token whyTok;
        const char* why = ctFuncWhy(func, &whyTok);
        if (why) return ctFail(st, whyTok, why);
    }
    if (func->codeBlock.len == 0 && func->type.hasRetType) return ctFail(st, op->tok, "it calls a function whose body is not available");
    if (st->depth >= (ctRun ? CT_RUN_DEPTH_BUDGET : CT_DEPTH_BUDGET) || ctStackNearEnd())
        return ctFail(st, op->tok, ctRun ? "it recurses deeper than -i allows" : "the computation recurses deeper than compile-time evaluation allows");

    struct list locals = ListInit(sizeof(struct ctLocal));
    //E31: through a Call adapter, Call's receiver is the instance the adapter holds, and the call's arguments are the rest
    int recv = through && through->callAdapter && func->type.vars.len ? 1 : 0;
    if (recv) {
        struct var* p = ListGetIdx(&func->type.vars, 0);
        struct ctVal* node = ctNew(CT_INT, p->type);
        *node = *(ctIsRef(p->type) ? through->elems[0] : ctCopy(ctDeref(through->elems[0])));
        if (ctIsRef(p->type)) node->type = p->type;
        struct ctLocal l = { p->name, node };
        ListAdd(&locals, &l);
    }
    for (int i = recv; i < func->type.vars.len && i - recv < op->args.len; i++) {
        struct var* p = ListGetIdx(&func->type.vars, i);
        struct operand* a = *(struct operand**)ListGetIdx(&op->args, i - recv);
        struct ctVal* v = ctFitBoundary(st, a, p->type);
        if (!v) {
            //from an argument, not from this call - unless a check this call's own try asked for (R20, E31)
            if (st->flow == CF_ERROR && op->isTried && st->errCheckRoot != op) st->errBypass = true;
            return NULL;
        }
        //a parameter is a node of its own: a value one holds a copy, a reference one points where the
        //argument does - so repointing the parameter (S4a) moves only the callee's cursor
        struct ctVal* node = ctNew(CT_INT, p->type);
        *node = *(ctIsRef(p->type) ? v : ctCopy(v));
        struct ctLocal l = { p->name, node };
        ListAdd(&locals, &l);
    }
    //D16c: a lambda's captures, as the value carries them - each a node of the call's own, like a parameter
    for (int i = 0; through && i < through->n && i < func->lambdaCaptures.len; i++) {
        struct var* in = ((struct lambdaCapture*)ListGetIdx(&func->lambdaCaptures, i))->inner;
        struct ctVal* node = ctNew(CT_INT, in->type);
        *node = *(ctIsRef(in->type) ? through->elems[i] : ctCopy(through->elems[i]));
        struct ctLocal l = { in->name, node };
        ListAdd(&locals, &l);
    }
    struct list* saved = st->locals;
    struct var* savedFunc = st->func;
    struct semaModule* savedMod = st->mod;
    st->locals = &locals;
    st->func = func;
    st->mod = func->owner ? func->owner : st->mod;
    st->depth++;
    ctExecBlock(st, &func->codeBlock);
    st->depth--;
    st->locals = saved;
    st->func = savedFunc;
    st->mod = savedMod;
    //this call's clauses see it - or, for a Try form an operator called inside a tried expression, that try's (E31)
    if (st->flow == CF_ERROR) { st->errBypass = false; st->errCheckRoot = op->isTried ? NULL : op->checkRoot; }
    //R17: through a bare "?" function, any error leaves as that function's own default error, its one word
    struct type* generic = SemanticGenericErrorType();
    if (st->flow == CF_ERROR && generic && func->type.errors.len == 1
            && TypeIsSame(**(struct type**)ListGetIdx(&func->type.errors, 0), *generic)) {
        st->errType = *generic;
        st->errWord = 0;
    }
    if (st->flow == CF_RETURN) {
        st->flow = CF_NORMAL;
        struct ctVal* r = st->ret;
        st->ret = NULL;
        return r ? r : ctNew(CT_INT, TypeVanilla(BASETYPE_VOID));
    }
    if (st->flow == CF_NORMAL) return ctNew(CT_INT, TypeVanilla(BASETYPE_VOID)); //fell off a void body
    return NULL; //an error, a failure, or a stray break
}

//R9/R9a/R9b: a tried operand's failure - handled by the first clause that names it, else propagated
static struct ctVal* ctHandleTry(struct ctState* st, struct operand* op) {
    if (st->flow != CF_ERROR || st->errBypass) return NULL;
    for (int c = 0; c < op->catchClauses.len; c++) {
        struct catchClause* cc = ListGetIdx(&op->catchClauses, c);
        bool match = cc->catchAll;
        for (int i = 0; !match && i < cc->matches.len; i++) {
            struct catchMatch* cm = ListGetIdx(&cc->matches, i);
            match = TypeIsSame(cm->errType, st->errType) && (!cm->hasWord || cm->wordOrdinal == st->errWord);
        }
        if (!match) continue;
        st->flow = CF_NORMAL;
        if (cc->hasBlock) {
            size_t mark = (size_t)st->locals->len;
            ctExecBlock(st, &cc->block);
            st->locals->len = (int)mark;
            if (st->flow != CF_NORMAL) return NULL; //it left: return, break, continue, or its own error
        }
        if (!cc->dflt) return NULL;
        return ctFit(st, cc->dflt, op->tryDefaultType);
    }
    return NULL; //no clause named it: it propagates
}

// ---- expressions ----

static struct ctVal* ctIncDec(struct ctState* st, struct operand* op, bool prefix, bool inc) {
    struct operand* target = *(struct operand**)ListGetIdx(&op->args, 0);
    struct ctVal* node = ctDeref(ctLvalue(st, target, true));
    if (!node) return NULL;
    struct ctVal* old = ctCopy(node);
    //E6c: wraps, computed unsigned - the compiler's own arithmetic has no overflow of its own
    struct ctVal* nv = ctIsFloat(node->type) ? ctFloat(node->type, node->f + (inc ? 1 : -1))
                                            : ctInt(node->type, (long long)((unsigned long long)node->i + (inc ? 1ULL : ~0ULL)));
    ctAssign(node, nv);
    return prefix ? ctCopy(node) : old;
}

static struct ctVal* ctEvalOp(struct ctState* st, struct operand* op);

//E16a: a slice is a borrow - a reference to a view sharing the base's element nodes, so a write through either is
//seen through both. Its bounds are checked as the generated code checks them (E16b, or E16c/R20 under "try").
static struct ctVal* ctSlice(struct ctState* st, struct operand* op) {
    struct ctVal* base = ctDeref(ctEval(st, *(struct operand**)ListGetIdx(&op->args, 0)));
    if (!base) return NULL;
    struct ctVal* lo = ctEval(st, *(struct operand**)ListGetIdx(&op->args, 1));
    if (!lo) return NULL;
    struct ctVal* hi = ctEval(st, *(struct operand**)ListGetIdx(&op->args, 2));
    if (!hi) return NULL;
    if (base->kind == CT_NULL) return ctFail(st, op->tok, "it slices a null array");
    if (base->kind != CT_AGG) return ctFail(st, op->tok, "it uses a value compile-time evaluation does not model");
    long long l = ctDeref(lo)->i, h = ctDeref(hi)->i;
    //E32b: "x as Array<T, N>&" - the whole of x, of length N exactly
    if (op->sliceExact ? h != base->n : !(l >= 0 && l <= h && h <= base->n)) {
        if (op->checkRoot) return ctCheckFail(st, op, "OUT_OF_BOUNDS");
        if (ctRun) ctRunAbort("slice bounds out of range\n");
        return ctFail(st, op->tok, "it slices out of range, which aborts at run time");
    }
    struct type vt = op->type;
    vt.structMAlloc = false;
    struct ctVal* view = ctNew(CT_AGG, vt);
    view->n = (int)(h - l);
    view->elems = base->elems ? base->elems + l : NULL;
    view->viewOf = base->viewOf ? base->viewOf : base; //E16a: part of its base's storage, wherever that is written out
    view->viewOff = (int)l + (base->viewOf ? base->viewOff : 0);
    struct ctVal* ref = ctNew(CT_REF, op->type);
    ref->target = view;
    return ref;
}

// ---- E11a/E11b: text, rendered exactly as the generated code's helpers write it ----

struct ctText { char* p; size_t n, cap; };
static void ctTextPut(struct ctText* b, const char* s, size_t n) {
    if (b->n + n + 1 > b->cap) {
        b->cap = (b->n + n + 1) * 2;
        char* np = MallocOrCrash(b->cap);
        if (b->n) memcpy(np, b->p, b->n);
        b->p = np;
    }
    memcpy(b->p + b->n, s, n);
    b->n += n;
}
static void ctTextStr(struct ctText* b, const char* s) { ctTextPut(b, s, strlen(s)); }

//nested text between quotes q, escaped the way a literal writes it - as __olang_rd_quote does
static void ctTextQuoted(struct ctText* b, struct ctVal** bytes, int n, char q) {
    ctTextPut(b, &q, 1);
    for (int i = 0; i < n; i++) {
        char c = (char)ctDeref(bytes[i])->i;
        char e = c == '\n' ? 'n' : c == '\t' ? 't' : c == '\r' ? 'r' : c == '\0' ? '0' : c == '\\' ? '\\' : c == q ? q : 0;
        if (e) { char esc[2] = { '\\', e }; ctTextPut(b, esc, 2); }
        else ctTextPut(b, &c, 1);
    }
    ctTextPut(b, &q, 1);
}

static bool ctRenderValue(struct ctState* st, struct ctText* b, struct ctVal* v, struct type t, int depth, bool row,
                          struct token tok);

//a type's name as written, without an instantiation's argument suffix
static void ctTypeName(struct type t, char* buf, size_t n) {
    int len = 0;
    while (len < t.name.len && t.name.ptr[len] != '$') len++;
    snprintf(buf, n, "%.*s", len, t.name.ptr);
}

static bool ctRenderFields(struct ctState* st, struct ctText* b, struct ctVal* v, struct type shape, int depth,
                           struct token tok) {
    for (int i = 0; i < shape.vars.len && i < v->n; i++) {
        if (i) ctTextStr(b, ", ");
        if (!ctRenderValue(st, b, v->elems[i], ((struct var*)ListGetIdx(&shape.vars, i))->type, depth, false, tok)) return false;
    }
    return true;
}

//rdBody's rules, for a value the evaluator holds
static bool ctRenderBody(struct ctState* st, struct ctText* b, struct ctVal* v, struct type t, int depth, bool row,
                         struct token tok) {
    bool marked = t.structMAlloc && (t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_ARRAY || t.bType == BASETYPE_CHOICE);
    if (marked) {
        if (!v || v->kind == CT_NULL) { ctTextStr(b, "null"); return true; }
        if (depth >= 8) { ctTextStr(b, "..."); return true; }
        struct type referent = t;
        referent.structMAlloc = false;
        return ctRenderValue(st, b, ctDeref(v), referent, depth + 1, false, tok);
    }
    v = ctDeref(v);
    char name[256];
    ctTypeName(t, name, sizeof(name));
    switch (t.bType) {
        case BASETYPE_ARRAY: {
            struct type elem = *t.arrElem;
            if (TypeIsChar(elem)) { ctTextQuoted(b, v->elems, v->n, '"'); return true; } //T29h
            if (!row) {
                struct type base0 = elem;
                while (base0.bType == BASETYPE_ARRAY && !base0.structMAlloc && !(base0.owner && base0.name.len)
                       && !TypeIsChar(*base0.arrElem)) base0 = *base0.arrElem;
                char spelled[600];
                RdSpellType(base0, spelled, sizeof(spelled));
                ctTextStr(b, spelled);
            }
            ctTextStr(b, "[");
            for (int i = 0; i < v->n; i++) {
                if (i) ctTextStr(b, ", ");
                if (!ctRenderValue(st, b, v->elems[i], elem, depth, true, tok)) return false;
            }
            ctTextStr(b, "]");
            return true;
        }
        case BASETYPE_STRUCT:
            if (!t.isTuple) ctTextStr(b, name);
            ctTextStr(b, "(");
            if (!ctRenderFields(st, b, v, t, depth, tok)) return false;
            ctTextStr(b, ")");
            return true;
        case BASETYPE_CHOICE: {
            struct var* c = ListGetIdx(&t.vars, (int)v->i);
            char word[600];
            snprintf(word, sizeof(word), "%s%s%.*s", name, name[0] ? "." : "", c->name.len, c->name.ptr);
            ctTextStr(b, word);
            if (ChoiceHasPayload(t) && c->type.vars.len > 0 && v->kind == CT_AGG) {
                ctTextStr(b, "(");
                if (!ctRenderFields(st, b, v, c->type, depth, tok)) return false;
                ctTextStr(b, ")");
            }
            return true;
        }
        case BASETYPE_FUNC: {
            //what it is, not what it holds: a function value its signature
            if (v->kind == CT_NULL) { ctTextStr(b, "null"); return true; }
            char spelled[2400];
            RdSpellType(t, spelled, sizeof(spelled));
            ctTextStr(b, spelled);
            return true;
        }
        default:
            return ctRenderValue(st, b, v, t, depth, false, tok);
    }
}

//rdPutValue's rules: a primitive inline - a nested byte quoted, a number as snprintf writes it - anything else
//through its body
//E11c: the text a type's own Str gives for v - called as the run time calls it, receiver as its parameter wants it
static bool ctRenderStr(struct ctState* st, struct ctText* b, struct var* m, struct ctVal* v, struct token tok) {
    struct token whyTok;
    const char* why = ctFuncWhy(m, &whyTok);
    if (why) { ctFail(st, whyTok, why); return false; }
    if (st->depth >= (ctRun ? CT_RUN_DEPTH_BUDGET : CT_DEPTH_BUDGET) || ctStackNearEnd()) {
        ctFail(st, tok, ctRun ? "it recurses deeper than -i allows" : "the computation recurses deeper than compile-time evaluation allows");
        return false;
    }
    struct var* p = ListGetIdx(&m->type.vars, 0);
    struct ctVal* node = ctNew(CT_INT, p->type);
    if (ctIsRef(p->type)) {
        if (v->kind == CT_REF) *node = *v;
        else { node->kind = CT_REF; node->target = v; }
    } else {
        *node = *ctCopy(ctDeref(v));
    }
    struct list locals = ListInit(sizeof(struct ctLocal));
    struct ctLocal l = { p->name, node };
    ListAdd(&locals, &l);
    struct list* saved = st->locals;
    struct var* savedFunc = st->func;
    st->locals = &locals;
    st->func = m;
    st->depth++;
    ctExecBlock(st, &m->codeBlock);
    st->depth--;
    st->locals = saved;
    st->func = savedFunc;
    if (st->flow != CF_RETURN || !st->ret) return false;
    st->flow = CF_NORMAL;
    struct ctVal* r = ctDeref(st->ret);
    st->ret = NULL;
    for (int k = 0; r && r->kind == CT_AGG && k < r->n; k++) { char c = (char)ctDeref(r->elems[k])->i; ctTextPut(b, &c, 1); }
    return true;
}

static bool ctRenderValue(struct ctState* st, struct ctText* b, struct ctVal* v, struct type t, int depth, bool row,
                          struct token tok) {
    if (!t.structMAlloc && SemanticStrOf(t)) return ctRenderStr(st, b, SemanticStrOf(t), v, tok);
    if (t.bType == BASETYPE_BOOL) { ctTextStr(b, ctDeref(v)->i ? "true" : "false"); return true; }
    if (TypeIsChar(t)) { struct ctVal* one[1] = { ctDeref(v) }; ctTextQuoted(b, one, 1, '\''); return true; }
    if (ctIsFloat(t) || ctIsInt(t)) {
        char num[64];
        //E11a: as the runtime does - the shortest text in the value's own type, and every NaN as "nan" (its sign is
        //unspecified when an operation made it, E33a)
        if (ctIsFloat(t)) FloatShortest(num, sizeof(num), isnan(ctDeref(v)->f) ? NAN : ctDeref(v)->f, ctFloatKind(t));
        else if (t.bType == BASETYPE_U64) snprintf(num, sizeof(num), "%llu", (unsigned long long)ctDeref(v)->i); //T4
        else snprintf(num, sizeof(num), "%lld", ctDeref(v)->i);
        ctTextStr(b, num);
        return true;
    }
    return ctRenderBody(st, b, v, t, depth, row, tok);
}

static void ctTextParts(struct operand* op, struct list* out) {
    if (op->opType == OPERATION_CONCAT) {
        ctTextParts(*(struct operand**)ListGetIdx(&op->args, 0), out);
        ctTextParts(*(struct operand**)ListGetIdx(&op->args, 1), out);
        return;
    }
    ListAdd(out, &op);
}

//"$x" or a join: every piece in order - a literal's bytes, a byte as its character, text as itself, a function
//named directly as its name and signature, anything else rendered (cgText's top-level rules)
static struct ctVal* ctText(struct ctState* st, struct operand* op) {
    struct list parts = ListInit(sizeof(struct operand*));
    ctTextParts(op, &parts);
    struct ctText b = {0};
    for (int i = 0; i < parts.len; i++) {
        struct operand* p = *(struct operand**)ListGetIdx(&parts, i);
        struct operand* in = p->opType == OPERATION_STR_OF ? *(struct operand**)ListGetIdx(&p->args, 0) : NULL;
        if (in && in->type.bType == BASETYPE_FUNC && in->opType == OPERATION_READ_VAR && in->readVar && in->readVar->isFuncDecl && !in->readVar->isLambda) {
            char sig[1200];
            RdSpellSig(in->type, sig, sizeof(sig));
            ctTextPut(&b, in->readVar->name.ptr, (size_t)in->readVar->name.len);
            ctTextStr(&b, sig);
            continue;
        }
        struct ctVal* v = ctEval(st, in ? in : p);
        if (!v) return NULL;
        struct type t = in ? in->type : p->type;
        bool viaStr = in && SemanticStrOf(t); //E11c: the type's own Str, at the top level too
        if (!in || (t.bType == BASETYPE_ARRAY && TypeIsChar(*t.arrElem) && !viaStr)) {
            struct ctVal* a = ctDeref(v);
            if (a->kind == CT_NULL) continue;
            for (int k = 0; k < a->n; k++) { char c = (char)ctDeref(a->elems[k])->i; ctTextPut(&b, &c, 1); }
        } else if (TypeIsChar(t) && !viaStr) {
            char c = (char)ctDeref(v)->i;
            ctTextPut(&b, &c, 1);
        } else if (!ctRenderValue(st, &b, v, t, 0, false, p->tok)) {
            return NULL;
        }
    }
    struct ctVal* a = ctNew(CT_AGG, op->type);
    a->n = (int)b.n;
    a->elems = MallocOrCrash(sizeof(struct ctVal*) * (b.n ? b.n : 1));
    for (size_t k = 0; k < b.n; k++) a->elems[k] = ctInt(*op->type.arrElem, (unsigned char)b.p[k]);
    return a;
}

//R20: a tried expression whose own check failed runs its clauses; an error from anywhere else passes through
static struct ctVal* ctEval(struct ctState* st, struct operand* op) {
    //E30: a chain's shared operand, evaluated once - looked for among this call's own only
    for (int i = st->chainLen - 1; i >= 0 && st->chain[i].depth == st->depth; i--) if (st->chain[i].op == op) return st->chain[i].v;
    struct ctVal* r = ctEvalOp(st, op);
    if (!r && op->isTried && st->flow == CF_ERROR && st->errCheckRoot == op)
        return ctHandleTry(st, op);
    return r;
}

static struct ctVal* ctEvalOp(struct ctState* st, struct operand* op) {
    if (!ctStep(st, op->tok)) return NULL;
    switch (op->opType) {
        case OPERATION_NONE:
            //what the checker leaves where an expression failed is a placeholder, not a value - deciding anything
            //from it would add a second, false error (S8a's "dead branch", say) to the real one
            if (!op->isLiteral && !op->isNullLiteral) return ctFail(st, op->tok, "it uses an expression that did not check");
            return ctLiteral(st, op);
        case OPERATION_READ_VAR: case OPERATION_MEMBER: case OPERATION_INDEX: {
            struct ctVal* node = ctLvalue(st, op, false);
            if (!node) return NULL; //a checked index's own failure is taken by ctEval
            return node;
        }
        case OPERATION_ZERO: { //D13c
            //T7c: an Array<T, N> whose elements' zero value a constructor gives - N copies of it
            if (op->args.len && op->type.bType == BASETYPE_ARRAY && op->type.arrLen) {
                struct ctVal* fill = ctEval(st, *(struct operand**)ListGetIdx(&op->args, 0));
                if (!fill) return NULL;
                struct ctVal* a = ctNew(CT_AGG, op->type);
                a->n = (int)op->type.arrLen->intLiteralVal;
                a->elems = MallocOrCrash(sizeof(struct ctVal*) * (size_t)(a->n ? a->n : 1));
                for (int i = 0; i < a->n; i++) a->elems[i] = ctCopy(ctDeref(fill));
                return a;
            }
            return ctZero(op->type);
        }
        case OPERATION_FUNCCALL: {
            struct ctVal* r = ctCall(st, op);
            if (!r && op->isTried && st->flow == CF_ERROR) {
                r = ctHandleTry(st, op);
                //S9a: what its own clauses did not take goes to the try it sits under, if any (a comprehension's Next)
                if (!r && st->flow == CF_ERROR && op->checkRoot) st->errCheckRoot = op->checkRoot;
            }
            return r;
        }
        case OPERATION_LEN: {
            //K1/T7c: an Array<T, N>'s length is N whatever holds it - read off its type, where reading what holds it would
            //do nothing (a variable, a field, an element): it need not be known
            struct operand* arr = *(struct operand**)ListGetIdx(&op->args, 0);
            if (arr->type.bType == BASETYPE_ARRAY && !arr->type.arrMalloc && arr->type.arrLen && ctReadsOnly(arr))
                return ctInt(op->type, arr->type.arrLen->intLiteralVal);
            struct ctVal* a = ctDeref(ctEval(st, arr));
            if (!a) return NULL;
            if (a->kind == CT_NULL) return ctInt(op->type, 0);
            return ctInt(op->type, a->n);
        }
        case OPERATION_NUMERIC_CONVERT: return ctConvert(st, op);
        case OPERATION_BITCAST: { //E33: the same bits, read as the other type - exactly the generated code's bitcast
            struct operand* src = *(struct operand**)ListGetIdx(&op->args, 0);
            struct ctVal* v = ctDeref(ctEval(st, src));
            if (!v) return NULL;
            if (v->kind == CT_FLOAT) {
                //an operation's NaN is some NaN, which one unspecified, and a signalling one may have been quieted on
                //its way here (E33a) - refused rather than guessed, as K1 refuses what is undefined; a running program
                //(-i) reads whichever this one is. A signalling NaN's quiet bit, its payload's top, is the double's
                //bit 51 whatever its type, the payload being held at the top of the double's
                if (isnan(v->f) && !ctRun) {
                    unsigned long long d;
                    memcpy(&d, &v->f, sizeof(d));
                    if (!v->nanExact) return ctFail(st, op->tok, "it reads the bits of a NaN an operation made, whose sign and payload are unspecified");
                    if (!(d & (1ULL << 51))) return ctFail(st, op->tok, "it reads the bits of a signalling NaN, which moving it may have quieted");
                }
                return ctInt(op->type, (long long)FloatBits(v->f, src->type.bType));
            }
            struct ctVal* r = ctNew(CT_FLOAT, op->type);
            r->f = FloatFromBits((unsigned long long)v->i, op->type.bType);
            r->nanExact = isnan(r->f);
            return r;
        }
        case OPERATION_NOMINAL_CONVERT: {
            struct ctVal* v = ctEval(st, *(struct operand**)ListGetIdx(&op->args, 0));
            if (!v) return NULL;
            v = ctCopy(v);
            v->type = op->type;
            return v;
        }
        case OPERATION_MATCH: { //S12b
            struct ctVal* r = NULL;
            ctRunMatch(st, ListGetIdx(&op->comprBody, 0), &r, op->type);
            return st->flow == CF_NORMAL ? r : NULL;
        }
        case OPERATION_COND: { //E28: only the chosen value is evaluated
            struct ctVal* c = ctEval(st, *(struct operand**)ListGetIdx(&op->args, 0));
            if (!c) return NULL;
            return ctFit(st, *(struct operand**)ListGetIdx(&op->args, ctDeref(c)->i ? 1 : 2), op->type);
        }
        case OPERATION_CMP_CHAIN: { //E30: each comparison in turn, the shared operand evaluated once
            struct ctVal* prev = NULL;
            bool all = true;
            for (int i = 0; i < op->args.len && all; i++) {
                struct operand* cmp = *(struct operand**)ListGetIdx(&op->args, i);
                struct operand* l = *(struct operand**)ListGetIdx(&op->chainOperands, i);
                struct operand* r = *(struct operand**)ListGetIdx(&op->chainOperands, i + 1);
                struct ctVal* lv = prev ? prev : ctEval(st, l);
                if (!lv) return NULL;
                struct ctVal* rv = ctEval(st, r);
                if (!rv) return NULL;
                if (st->chainLen + 2 > st->chainAlloc) {
                    st->chainAlloc = st->chainAlloc ? st->chainAlloc * 2 : 8;
                    st->chain = ReallocOrCrash(st->chain, sizeof(struct ctChainVal) * (size_t)st->chainAlloc);
                }
                st->chain[st->chainLen++] = (struct ctChainVal){ l, lv, st->depth };
                st->chain[st->chainLen++] = (struct ctChainVal){ r, rv, st->depth };
                struct ctVal* res = ctEval(st, cmp);
                st->chainLen -= 2;
                if (!res) return NULL;
                all = ctDeref(res)->i != 0;
                prev = rv;
            }
            return ctBool(all);
        }
        case OPERATION_SEQ: { //statements in the enclosing block, then the value
            for (int i = 0; i < op->comprBody.len && st->flow == CF_NORMAL; i++) ctExec(st, ListGetIdx(&op->comprBody, i));
            if (st->flow != CF_NORMAL) return NULL;
            if (!op->args.len) return ctNew(CT_INT, TypeVanilla(BASETYPE_VOID)); //E31: a "try x[i] = v" statement
            return ctEval(st, *(struct operand**)ListGetIdx(&op->args, 0));
        }
        case OPERATION_COMPREHENSION: { //E27: its loop run, each pushed element appended
            if (st->comprDepth == st->comprAlloc) {
                st->comprAlloc = st->comprAlloc ? st->comprAlloc * 2 : 8;
                st->compr = ReallocOrCrash(st->compr, sizeof(struct ctVal*) * (size_t)st->comprAlloc);
                st->comprCap = ReallocOrCrash(st->comprCap, sizeof(int) * (size_t)st->comprAlloc);
            }
            struct ctVal* a = ctNew(CT_AGG, op->type);
            a->n = 0;
            a->elems = MallocOrCrash(sizeof(struct ctVal*) * 8);
            st->compr[st->comprDepth] = a;
            st->comprCap[st->comprDepth] = 8;
            st->comprDepth++;
            ctExecBlock(st, &op->comprBody);
            st->comprDepth--;
            return st->flow == CF_NORMAL ? a : NULL;
        }
        case OPERATION_COMPR_RESERVE: { //E27/D14b: room for more elements than an array of them can have aborts
            struct ctVal* n = ctEval(st, *(struct operand**)ListGetIdx(&op->args, 0));
            if (!n) return NULL;
            struct type elem = *st->compr[st->comprDepth - 1]->type.arrElem;
            if ((unsigned long long)n->i > (unsigned long long)ArrayLengthLimit(TypeGetSize(elem))) {
                if (ctRun) ctRunAbort("array length out of range\n");
                return ctFail(st, op->tok, "it makes an array of a length out of range");
            }
            return ctNew(CT_INT, TypeVanilla(BASETYPE_VOID));
        }
        case OPERATION_COMPR_PUSH: {
            struct ctVal* a = st->compr[st->comprDepth - 1];
            struct ctVal* v = ctFit(st, *(struct operand**)ListGetIdx(&op->args, 0), *a->type.arrElem);
            if (!v) return NULL;
            int* cap = &st->comprCap[st->comprDepth - 1];
            if (a->n == *cap) {
                *cap *= 2;
                a->elems = ReallocOrCrash(a->elems, sizeof(struct ctVal*) * (size_t)*cap);
            }
            a->elems[a->n++] = ctIsRef(*a->type.arrElem) ? v : ctCopy(v);
            return ctNew(CT_INT, TypeVanilla(BASETYPE_VOID));
        }
        case OPERATION_SIZED_ARRAY_ALLOC: {
            struct ctVal* n = ctEval(st, *(struct operand**)ListGetIdx(&op->args, 0));
            if (!n) return NULL;
            //D14b: a negative length, or one whose byte count would not fit an I64, as the run time checks it
            bool bad = n->i < 0 || n->i > ArrayLengthLimit(TypeGetSize(*op->type.arrElem));
            if (bad && op->checkRoot) return ctCheckFail(st, op, "OUT_OF_BOUNDS"); //R20
            if (bad && ctRun) ctRunAbort("array length out of range\n");
            if (bad) return ctFail(st, op->tok, "it makes an array of a length out of range");
            if (n->i > INT_MAX) return ctFail(st, op->tok, "it makes an array longer than the evaluator holds");
            struct ctVal* a = ctNew(CT_AGG, op->type);
            a->n = (int)n->i;
            a->elems = MallocOrCrash(sizeof(struct ctVal*) * (size_t)(a->n ? a->n : 1));
            struct ctVal* fill = NULL;
            if (op->args.len > 1) { //T7: "Array<T>(n, v)"
                fill = ctEval(st, *(struct operand**)ListGetIdx(&op->args, 1));
                if (!fill) return NULL;
            }
            for (int i = 0; i < a->n; i++) a->elems[i] = fill ? ctCopy(fill) : ctZero(*op->type.arrElem);
            return a;
        }
        case OPERATION_NOT: {
            struct ctVal* v = ctEval(st, *(struct operand**)ListGetIdx(&op->args, 0));
            return v ? ctBool(!v->i) : NULL;
        }
        case OPERATION_BTWSE_INV: {
            struct ctVal* v = ctEval(st, *(struct operand**)ListGetIdx(&op->args, 0));
            return v ? ctInt(op->type, ~v->i) : NULL;
        }
        case OPERATION_MINUS: {
            struct ctVal* v = ctEval(st, *(struct operand**)ListGetIdx(&op->args, 0));
            if (!v) return NULL;
            if (op->checkRoot && ctIsInt(op->type)) { //R20
                ctWide x = ctExact(v);
                if (!ctFits(op->type, -x)) return ctCheckFail(st, op, "OVERFLOW");
            }
            return ctIsFloat(op->type) ? ctFloat(op->type, -v->f) : ctInt(op->type, (long long)(0ULL - (unsigned long long)v->i));
        }
        case OPERATION_PREFIX_INC:  return ctIncDec(st, op, true, true);
        case OPERATION_PREFIX_DEC:  return ctIncDec(st, op, true, false);
        case OPERATION_POSTFIX_INC: return ctIncDec(st, op, false, true);
        case OPERATION_POSTFIX_DEC: return ctIncDec(st, op, false, false);
        case OPERATION_MOD: case OPERATION_ADD: case OPERATION_SUB: case OPERATION_MUL: case OPERATION_DIV:
        case OPERATION_LST: case OPERATION_LSE: case OPERATION_GRT: case OPERATION_GRE:
        case OPERATION_EQ: case OPERATION_NEQ: case OPERATION_AND: case OPERATION_OR: case OPERATION_XOR:
        case OPERATION_BTSFT_L: case OPERATION_BTSFT_R:
        case OPERATION_BTWSE_AND: case OPERATION_BTWSE_OR: case OPERATION_BTWSE_XOR:
            return ctBinary(st, op);
        case OPERATION_ATOMIC_LOAD: case OPERATION_ATOMIC_STORE: case OPERATION_ATOMIC_ADD:
        case OPERATION_ATOMIC_SWAP: case OPERATION_ATOMIC_CAS: {
            if (!ctRun) return ctFail(st, op->tok, "it uses an atomic operation");
            //B3e/P9: no task runs beside it, so an atomic operation is the plain one
            struct ctVal* node = ctDeref(ctLvalue(st, *(struct operand**)ListGetIdx(&op->args, 0), op->opType != OPERATION_ATOMIC_LOAD));
            if (!node) return NULL;
            struct ctVal* a = op->args.len > 1 ? ctFit(st, *(struct operand**)ListGetIdx(&op->args, 1), node->type) : NULL;
            if (op->args.len > 1 && !a) return NULL;
            struct ctVal* b = op->args.len > 2 ? ctFit(st, *(struct operand**)ListGetIdx(&op->args, 2), node->type) : NULL;
            if (op->args.len > 2 && !b) return NULL;
            struct ctVal* old = ctInt(node->type, node->i);
            switch (op->opType) {
                case OPERATION_ATOMIC_LOAD: return old;
                case OPERATION_ATOMIC_STORE: node->i = ctWrap(node->type, ctDeref(a)->i); return ctNew(CT_INT, TypeVanilla(BASETYPE_VOID));
                case OPERATION_ATOMIC_ADD: //wraps (E6c), computed unsigned
                    node->i = ctWrap(node->type, (long long)((unsigned long long)node->i + (unsigned long long)ctDeref(a)->i));
                    return old;
                case OPERATION_ATOMIC_SWAP: node->i = ctWrap(node->type, ctDeref(a)->i); return old;
                default: if (node->i == ctDeref(a)->i) node->i = ctWrap(node->type, ctDeref(b)->i); return old;
            }
        }
        case OPERATION_SLICE: return ctSlice(st, op);
        case OPERATION_IS: case OPERATION_AS: { //E32
            struct ctVal* x = ctEval(st, *(struct operand**)ListGetIdx(&op->args, 0));
            if (!x) return NULL;
            bool isAs = op->opType == OPERATION_AS;
            if (op->castEnum) {
                struct ctVal* v = ctDeref(x);
                bool hit = v && v->kind != CT_NULL && v->i == op->castTag; //T17d: a null reference holds no case
                if (!isAs) return ctBool(hit);
                if (!hit) {
                    if (op->checkRoot) return ctCheckFail(st, op, "INVALID");
                    if (ctRun) ctRunAbort("'as' named what the value is not\n");
                    return ctFail(st, op->tok, "an 'as' that does not hold aborts the program");
                }
                if (!op->type.isTuple) return ctCopy(v->elems[0]);
                struct ctVal* t = ctNew(CT_AGG, op->type);
                t->n = v->n;
                t->elems = MallocOrCrash(sizeof(struct ctVal*) * (size_t)(v->n ? v->n : 1));
                for (int i = 0; i < v->n; i++) t->elems[i] = ctCopy(v->elems[i]);
                return t;
            }
            return ctFail(st, op->tok, "it uses an operation compile-time evaluation does not model");
        }
        case OPERATION_BOUNDS: { //E31: a derived TryAt/TrySlice's check
            struct ctVal* v = ctEval(st, *(struct operand**)ListGetIdx(&op->args, 0));
            struct ctVal* lo = v ? ctEval(st, *(struct operand**)ListGetIdx(&op->args, 1)) : NULL;
            struct ctVal* hi = lo ? ctEval(st, *(struct operand**)ListGetIdx(&op->args, 2)) : NULL;
            if (!hi) return NULL;
            long long x = ctDeref(v)->i, l = ctDeref(lo)->i, h = ctDeref(hi)->i;
            if (x < l || (op->isInclusive ? x > h : x >= h)) return ctCheckFail(st, op, "OUT_OF_BOUNDS");
            return v;
        }
        case OPERATION_STR_OF: case OPERATION_CONCAT: return ctText(st, op);
    }
    return ctFail(st, op->tok, "it uses an operation compile-time evaluation does not model");
}

//the value op gives when it lands in something of type dst - E12's conversions: a reference target takes the
//node itself (borrowing an lvalue, or a fresh node for a temporary), a value target takes an independent
//copy, and a numeric literal adapts to the target's numeric type
static struct ctVal* ctFit(struct ctState* st, struct operand* op, struct type dst) {
    //E31: a value whose type declares Call, where a function value is wanted - the instance it calls Call on is the
    //very one where it has storage (a reference, or an lvalue borrowed), else a copy, as the generated adapter's is
    if (dst.bType == BASETYPE_FUNC && op->type.bType != BASETYPE_FUNC && !op->isNullLiteral && SemanticCallMatches(op->type, dst)) {
        struct ctVal* inst;
        if (ctIsRef(op->type)) {
            inst = ctEval(st, op);
            if (!inst) return NULL;
            if (inst->kind == CT_NULL) return ctFail(st, op->tok, "it calls Call through a null reference");
        } else {
            struct ctVal* node = OperandIsLvalue(op) ? ctLvalue(st, op, false) : ctEval(st, op);
            if (!node) return NULL;
            inst = ctNew(CT_REF, op->type);
            inst->target = OperandIsLvalue(op) ? ctDeref(node) : ctCopy(ctDeref(node));
        }
        struct ctVal* f = ctNew(CT_FUNC, dst);
        f->fn = SemanticCallOf(op->type);
        f->callAdapter = true;
        f->n = 1;
        f->elems = MallocOrCrash(sizeof(struct ctVal*));
        f->elems[0] = inst;
        return f;
    }
    if (ctIsRef(dst)) {
        if (op->isNullLiteral) return ctNew(CT_NULL, dst);
        if (ctIsRef(op->type)) { //already a reference: the same node (repoint, S4a)
            return ctEval(st, op);
        }
        struct ctVal* node = OperandIsLvalue(op) ? ctLvalue(st, op, false) : ctEval(st, op);
        if (!node) return NULL;
        struct ctVal* r = ctNew(CT_REF, dst);
        r->target = OperandIsLvalue(op) ? node : ctCopy(node);
        return r;
    }
    struct ctVal* v = ctEval(st, op);
    if (!v) return NULL;
    v = ctDeref(v);
    //C2e: fixed storage (an inline field) takes an array of exactly its length - checked once per copy, and a mismatch
    //aborts, as the generated code checks it
    if (dst.bType == BASETYPE_ARRAY && !dst.arrMalloc && dst.arrLen && v->kind == CT_AGG
            && v->type.bType == BASETYPE_ARRAY && v->n != dst.arrLen->intLiteralVal) {
        if (ctRun) ctRunAbort("array length does not match its fixed storage\n");
        return ctFail(st, op->tok, "it copies an array of another length into fixed storage, which aborts at run time");
    }
    //a number is made afresh at its target's type, which is already the copy - no second one first
    if (ctIsInt(dst) && v->kind == CT_INT) return ctInt(dst, v->i);
    if (ctIsFloat(dst) && v->kind == CT_FLOAT && v->type.bType == dst.bType) return ctMoveFloat(v, dst); //E33
    if (ctIsFloat(dst) && (v->kind == CT_INT || v->kind == CT_FLOAT)) return ctFloat(dst, ctToFloat(v, dst));
    v = ctCopy(v);
    if (dst.bType != BASETYPE_VOID && v->kind == CT_AGG) v->type = dst;
    return v;
}

bool CtIsStaticLiteral(struct operand* op, struct type dst) {
    if (!(dst.bType == BASETYPE_ARRAY && dst.arrMalloc && dst.structMAlloc && !dst.refMut)) return false;
    if (op->opType == OPERATION_NOMINAL_CONVERT && op->args.len) op = *(struct operand**)ListGetIdx(&op->args, 0);
    if (!op->isLiteral || op->opType != OPERATION_NONE || op->type.bType != BASETYPE_ARRAY || op->type.arrMalloc
            || !op->type.arrLen) return false;
    if (op->tok.type == TOK_STR_LIT) return true;
    struct type et = *op->type.arrElem;
    bool scalar = (TypeIsNumeric(et) && !et.owner) || et.bType == BASETYPE_BOOL;
    if (!scalar || op->args.len != op->type.arrLen->intLiteralVal) return false;
    for (int i = 0; i < op->args.len; i++) { //every element constant, or the literal is built as usual
        struct operand* e = *(struct operand**)ListGetIdx(&op->args, i);
        if (!e->isLiteral || e->opType != OPERATION_NONE) return false;
    }
    return true;
}

//T25d/E10: a static literal at a call or a return - the one instance its site is, made the first time the site is
//reached by the code of one module (each module's object has its own constant for a site its code reaches - a
//parameter's default, written once, is reached from every calling module's code)
struct ctStaticLit { struct operand* op; struct semaModule* mod; struct ctVal* node; };
static struct list ctStaticLits;
static bool ctStaticLitsReady;

static struct ctVal* ctFitBoundary(struct ctState* st, struct operand* op, struct type dst) {
    if (!CtIsStaticLiteral(op, dst)) return ctFit(st, op, dst);
    if (!ctStaticLitsReady) { ctStaticLits = ListInit(sizeof(struct ctStaticLit)); ctStaticLitsReady = true; }
    struct operand* site = op->opType == OPERATION_NOMINAL_CONVERT ? *(struct operand**)ListGetIdx(&op->args, 0) : op;
    struct ctVal* node = NULL;
    for (int i = 0; i < ctStaticLits.len && !node; i++) {
        struct ctStaticLit* l = ListGetIdx(&ctStaticLits, i);
        //an evaluation not inside any module's code (an assert's condition, say) is in the module it is written in, which
        //is the module of whatever code of that site it meets
        if (l->op == site && (l->mod == st->mod || !l->mod || !st->mod)) node = l->node;
    }
    if (!node) {
        struct ctVal* r = ctFit(st, op, dst);
        if (!r) return NULL;
        node = r->target;
        struct ctStaticLit l = { site, st->mod, node };
        ListAdd(&ctStaticLits, &l);
    }
    struct ctVal* r = ctNew(CT_REF, dst);
    r->target = node;
    return r;
}

// ---- statements ----

static bool ctTruth(struct ctState* st, struct operand* op) {
    struct ctVal* v = ctEval(st, op);
    return v && v->i;
}

static void ctExec(struct ctState* st, struct statement* s);

//S19: one piece of a block's deferred code, run on a way out of the block. Whatever was leaving - a return and
//its value, a loop jump, an error in flight - is put aside while it runs and resumed after it: deferred code
//cannot leave itself (S19b), so it ends normally or stops the evaluation, and a stop stands.
static void ctRunDeferred(struct ctState* st, struct statement* d) {
    enum ctFlow flow = st->flow;
    struct ctVal* ret = st->ret;
    struct type errType = st->errType;
    long long errWord = st->errWord;
    struct operand* errCheckRoot = st->errCheckRoot;
    bool errBypass = st->errBypass;
    st->flow = CF_NORMAL;
    st->ret = NULL;
    st->errCheckRoot = NULL;
    st->errBypass = false;
    ctExecBlock(st, &d->block);
    if (st->flow == CF_FAIL) return;
    st->flow = flow;
    st->ret = ret;
    st->errType = errType;
    st->errWord = errWord;
    st->errCheckRoot = errCheckRoot;
    st->errBypass = errBypass;
}

static void ctExecBlock(struct ctState* st, struct list* block) {
    int mark = st->locals->len;
    struct list defers = {0}; //S19: the defers reached, in order - made on the first one
    for (int i = 0; i < block->len && st->flow == CF_NORMAL; i++) {
        struct statement* s = ListGetIdx(block, i);
        if (s->sType == STATEMENT_DEFER) {
            if (!defers.elemSize) defers = ListInit(sizeof(struct statement*));
            ListAdd(&defers, &s);
            continue;
        }
        ctExec(st, s);
    }
    //last registered first, before the block's locals go - deferred code reads them as they are now
    for (int i = defers.len - 1; i >= 0 && st->flow != CF_FAIL; i--) ctRunDeferred(st, *(struct statement**)ListGetIdx(&defers, i));
    if (defers.elemSize) ListDestroy(defers);
    st->locals->len = mark;
}

static void ctVarDecl(struct ctState* st, struct statement* s) {
    struct ctVal* v;
    if (s->fillValue) {
        struct ctVal* arr = s->op ? ctEval(st, s->op) : ctZero(s->var.type);
        if (!arr) return;
        struct ctVal* fill = ctFit(st, s->fillValue, *s->var.type.arrElem);
        if (!fill) return;
        for (int i = 0; i < arr->n; i++) arr->elems[i] = ctCopy(fill);
        v = arr;
    } else if (s->op) {
        v = ctFit(st, s->op, s->var.type);
        if (!v) return;
        if (!ctIsRef(s->var.type) && v->kind == CT_AGG) v = ctCopy(v); //anything else is copied into the node below
    } else {
        v = ctZero(s->var.type); //D13; a D13a uninitialized array has no value anyone may read first
    }
    struct ctVal* node = ctNew(CT_INT, s->var.type);
    *node = *v;
    ctDeclare(st, s->var.name, node);
}

//where a statement is, for a report - a statement with no operand of its own (a join) is where its first one is
static struct token ctStmtTok(struct statement* s) {
    if (s->op) return s->op->tok;
    if (s->var.tok.owner || !s->block.len) return s->var.tok;
    return ctStmtTok(ListGetIdx(&s->block, 0));
}

//S12-S14, S12b: as cgMatch lays it out - held value, alternatives, bindings, guard, then the chosen case's block, or
//in a match used as a value (out set) its value, fitted to want
static void ctRunMatch(struct ctState* st, struct statement* s, struct ctVal** out, struct type want) {
    int outer = st->locals->len;
    for (int i = 0; i < s->matchHold.len && st->flow == CF_NORMAL; i++) ctExec(st, ListGetIdx(&s->matchHold, i));
    for (int i = 0; i < s->matchCases.len && st->flow == CF_NORMAL; i++) {
        struct statement* c = ListGetIdx(&s->matchCases, i);
        int mark = st->locals->len;
        bool hit = false;
        for (int a = 0; a < c->caseAlts.len && !hit; a++) {
            struct caseAlt* alt = ListGetIdx(&c->caseAlts, a);
            struct ctVal* t = ctEval(st, alt->test);
            if (!t) { st->locals->len = outer; return; }
            if (!ctDeref(t)->i) continue;
            for (int b = 0; b < alt->binds.len; b++) {
                struct caseBind* cb = ListGetIdx(&alt->binds, b);
                struct ctVal* v = ctEval(st, cb->from);
                if (!v) { st->locals->len = outer; return; }
                ctDeclare(st, cb->v->name, ctCopy(v));
            }
            hit = true;
        }
        if (hit && c->caseGuard) {
            struct ctVal* g = ctEval(st, c->caseGuard);
            if (!g) { st->locals->len = outer; return; }
            hit = ctDeref(g)->i != 0;
        }
        if (!hit) { st->locals->len = mark; continue; }
        if (c->op && out) *out = ctFit(st, c->op, want);
        else ctExecBlock(st, &c->block);
        st->locals->len = outer;
        return;
    }
    if (st->flow == CF_NORMAL && s->hasNomatch) {
        if (s->nomatchValue && out) *out = ctFit(st, s->nomatchValue, want);
        else ctExecBlock(st, &s->nomatchBlock);
    } else if (st->flow == CF_NORMAL && out) { //S12b: covered by every case, so not reached - checked, as cgMatch checks it
        if (ctRun) ctRunAbort("reached unreachable code\n");
        ctFail(st, s->op ? s->op->tok : (struct token){0}, "it reaches unreachable code");
    }
    st->locals->len = outer;
}

static void ctExec(struct ctState* st, struct statement* s) {
    struct token tok = ctStmtTok(s);
    if (!ctStep(st, tok)) return;
    switch (s->sType) {
        case STATEMENT_VAR_DECL: ctVarDecl(st, s); return;
        case STATEMENT_ASSIGN: {
            //S4: left to right - the place, then the value (a compound one reading that same place), then the store
            struct ctVal* node = ctLvalue(st, s->target, true);
            if (!node) return;
            void* outerPlace = s->target->ctPlace;
            s->target->ctPlace = node;
            struct ctVal* v = ctFit(st, s->op, s->target->type);
            s->target->ctPlace = outerPlace;
            if (!v) return;
            ctAssign(node, v);
            return;
        }
        case STATEMENT_EXPR: ctEval(st, s->op); return;
        case STATEMENT_IF: {
            bool c = ctTruth(st, s->op);
            if (st->flow != CF_NORMAL) return;
            if (c) ctExecBlock(st, &s->block);
            else if (s->elseStmnt) {
                if (s->elseIsBlock) ctExecBlock(st, &s->elseStmnt->block);
                else ctExec(st, s->elseStmnt);
            }
            return;
        }
        case STATEMENT_FOR: {
            int mark = st->locals->len;
            struct statement decl = (struct statement){0};
            decl.sType = STATEMENT_VAR_DECL;
            decl.var = s->var;
            decl.op = s->forInit;
            if (s->forInit) ctVarDecl(st, &decl);
            while (st->flow == CF_NORMAL) {
                if (s->op && !ctTruth(st, s->op)) break;
                if (st->flow != CF_NORMAL) break;
                ctExecBlock(st, &s->block);
                if (st->flow == CF_BREAK) { if (!s->breakOuter) st->flow = CF_NORMAL; break; } //S9f: the run loop's break ends the loop around it too
                if (st->flow == CF_CONTINUE) st->flow = CF_NORMAL;
                if (st->flow != CF_NORMAL) break;
                if (s->forPost) ctExec(st, s->forPost);
            }
            st->locals->len = mark;
            return;
        }
        case STATEMENT_DO: {
            while (st->flow == CF_NORMAL) {
                ctExecBlock(st, &s->block);
                if (st->flow == CF_BREAK) { st->flow = CF_NORMAL; break; }
                if (st->flow == CF_CONTINUE) st->flow = CF_NORMAL;
                if (st->flow != CF_NORMAL) break;
                if (!ctTruth(st, s->op)) break;
            }
            return;
        }
        case STATEMENT_MATCH: ctRunMatch(st, s, NULL, (struct type){0}); return;
        case STATEMENT_RET:
            if (s->op) {
                //the value lands in the declared result as anything lands in a place of its type (E12): a reference
                //read out into a value result is a copy of what it names - returned as the reference itself, a caller
                //comparing it compared identities where the run time compares values - and a value built in the return
                //itself (a join, a constructor call) returned through a reference result is a reference to it, as the
                //run time builds it where the result lands
                struct type* rt = st->func && st->func->type.hasRetType ? st->func->type.retType : NULL;
                struct ctVal* v = rt ? ctFitBoundary(st, s->op, *rt) : ctEval(st, s->op);
                if (!v) return;
                st->ret = rt || ctIsRef(s->op->type) ? v : ctCopy(v);
            }
            st->flow = CF_RETURN;
            return;
        case STATEMENT_BREAK: st->flow = CF_BREAK; return;
        case STATEMENT_CONTINUE: st->flow = CF_CONTINUE; return;
        case STATEMENT_ASSERT:
            if (!ctTruth(st, s->op) && st->flow == CF_NORMAL) {
                if (ctRun) ctRunAbort("assertion failed\n");
                ctFail(st, tok, "an assertion in it fails");
            }
            return;
        case STATEMENT_ERROR:
            st->flow = CF_ERROR;
            st->errType = s->op->type;
            st->errWord = s->op->intLiteralVal;
            return;
        case STATEMENT_TRY_CATCH: {
            ctCall(st, s->op);
            if (st->flow != CF_ERROR || st->errBypass) return;
            for (int c = 0; c < s->catchClauses.len; c++) {
                struct catchClause* cc = ListGetIdx(&s->catchClauses, c);
                bool match = cc->catchAll;
                for (int i = 0; !match && i < cc->matches.len; i++) {
                    struct catchMatch* cm = ListGetIdx(&cc->matches, i);
                    match = TypeIsSame(cm->errType, st->errType) && (!cm->hasWord || cm->wordOrdinal == st->errWord);
                }
                if (!match) continue;
                st->flow = CF_NORMAL;
                ctExecBlock(st, &cc->block);
                return;
            }
            return; //no clause named it: it propagates
        }
        case STATEMENT_DONE: case STATEMENT_FAIL: case STATEMENT_ABORT: case STATEMENT_UNREACHABLE:
            if (ctRun) { //B3e/S16: the process ends, as the built program's does outside a test
                fflush(NULL);
                if (s->sType == STATEMENT_DONE) exit(0);
                if (s->sType == STATEMENT_FAIL) exit(1);
                ctRunAbort(s->sType == STATEMENT_ABORT ? "aborted\n" : "reached unreachable code\n");
            }
            ctFail(st, tok, "it ends the test or the process");
            return;
        case STATEMENT_DEFER: return; //S19: registered by the block it is in (ctExecBlock), and run on its way out
        case STATEMENT_JOIN: case STATEMENT_SPAWN:
            ctFail(st, tok, ctRun ? "it starts tasks, which -i does not run yet" : "it starts tasks");
            return;
        case STATEMENT_CASE:
            return;
    }
}

static bool ctEvaluateTop(struct operand* op, struct type want, struct ctVal** out, struct token* whyTok,
                          const char** why, bool* usedBuild, CtLocalFixer fixer, void* fixerCtx, bool globalInit);

bool CtEvaluate(struct operand* op, struct type want, struct ctVal** out, struct token* whyTok, const char** why,
                bool* usedBuild) {
    return ctEvaluateTop(op, want, out, whyTok, why, usedBuild, NULL, NULL, false);
}

bool CtEvaluateGlobal(struct var* v, struct ctVal** out) {
    struct ctState st = (struct ctState){0};
    struct list locals = ListInit(sizeof(struct ctLocal));
    st.locals = &locals;
    st.mod = v->owner;
    struct operand at = (struct operand){0};
    at.tok = v->tok;
    struct ctVal* val = ctReadGlobalAs(&st, &at, canonicalVar(v), true);
    ListDestroy(locals);
    if (!val || st.flow != CF_NORMAL) return false;
    *out = val;
    return true;
}

bool CtEvaluateIn(struct operand* op, struct type want, struct ctVal** out, struct token* whyTok, const char** why,
                  bool* usedBuild, CtLocalFixer fixer, void* fixerCtx) {
    return ctEvaluateTop(op, want, out, whyTok, why, usedBuild, fixer, fixerCtx, false);
}

static bool ctEvaluateTop(struct operand* op, struct type want, struct ctVal** out, struct token* whyTok,
                          const char** why, bool* usedBuild, CtLocalFixer fixer, void* fixerCtx, bool globalInit) {
    struct ctState st = (struct ctState){0};
    st.fixer = fixer;
    st.fixerCtx = fixerCtx;
    st.globalInit = globalInit;
    struct list locals = ListInit(sizeof(struct ctLocal));
    st.locals = &locals;
    struct ctVal* v = ctFit(&st, op, want);
    if (st.flow == CF_ERROR) ctFail(&st, op->tok, "it fails with an error no clause handles");
    if (st.flow == CF_BREAK || st.flow == CF_CONTINUE) ctFail(&st, op->tok, "it leaves a loop it is not in");
    if (st.flow != CF_NORMAL || !v) {
        if (whyTok) *whyTok = st.whyTok;
        if (why) *why = st.why ? st.why : "it does not produce a value";
        return false;
    }
    *out = v;
    if (usedBuild) *usedBuild = st.usedBuild;
    return true;
}

void CtReset(void) {
    ctGlobals = ListInit(sizeof(struct ctGlobal));
    ctGlobalsReady = true;
    ctStaticLits = ListInit(sizeof(struct ctStaticLit));
    ctStaticLitsReady = true;
    //what globals hold (ctOwned, ctWritable) is kept: the values a K2 pass baked are written out after later evaluations
    //started over, and a node is never freed, so no later node can be mistaken for one of them
    ctFactList = ListInit(sizeof(struct ctFacts));
    ctFactsReady = true;
}

bool CtIsZero(struct ctVal* v) {
    switch (v->kind) {
        case CT_NULL: return true;
        case CT_INT: case CT_BOOL: return v->i == 0;
        case CT_FLOAT: return v->f == 0 && !signbit(v->f);
        case CT_AGG:
            if (ctIsRef(v->type)) return false;
            if (v->type.bType == BASETYPE_CHOICE && v->i != 0) return false;
            if (v->type.bType == BASETYPE_ARRAY && v->type.arrMalloc) return v->n == 0; //an empty array is { 0, null }
            for (int i = 0; i < v->n; i++) if (!CtIsZero(v->elems[i])) return false;
            return true;
        default: return false;
    }
}

bool CtIsPlainData(struct ctVal* v) {
    if (v->kind == CT_REF) return false;
    if (v->kind == CT_NULL) return true; //null is all-zero bits (T2a)
    if (v->kind == CT_AGG) {
        if (ctIsRef(v->type)) return false;
        for (int i = 0; i < v->n; i++) if (!CtIsPlainData(v->elems[i])) return false;
    }
    return true;
}

// ---- X8: the C math library ----

//the functions of the C math library the language knows, each for F64 under its own name and for F32 with "f" after it,
//every parameter and the result of that one type. IEEE 754 requires the correctly rounded result of the exact ones, so
//every library, the hardware and LLVM's own folding give the same answer; the others are the C library's own
static const struct { const char* name; int arity; bool exact; } ctMathLib[] = {
    { "sqrt", 1, true }, { "fma", 3, true }, { "floor", 1, true }, { "ceil", 1, true }, { "trunc", 1, true },
    { "round", 1, true }, { "roundeven", 1, true }, { "fabs", 1, true }, { "copysign", 2, true },
    { "cbrt", 1, false }, { "exp", 1, false }, { "exp2", 1, false }, { "expm1", 1, false }, { "log", 1, false },
    { "log2", 1, false }, { "log10", 1, false }, { "log1p", 1, false }, { "pow", 2, false }, { "sin", 1, false },
    { "cos", 1, false }, { "tan", 1, false }, { "asin", 1, false }, { "acos", 1, false }, { "atan", 1, false },
    { "atan2", 2, false }, { "sinh", 1, false }, { "cosh", 1, false }, { "tanh", 1, false }, { "erf", 1, false },
    { "erfc", 1, false }, { "hypot", 2, false },
};

enum ctMathFn CtMathFn(struct var* f) {
    if (!f || f->type.bType != BASETYPE_FUNC || !f->type.isExtern || !f->type.hasRetType) return CT_MATH_NONE;
    enum baseType want = f->type.retType->bType;
    if (want != BASETYPE_FLOAT64 && want != BASETYPE_FLOAT32) return CT_MATH_NONE;
    for (size_t i = 0; i < sizeof(ctMathLib) / sizeof(ctMathLib[0]); i++) {
        int n = (int)strlen(ctMathLib[i].name);
        bool f32 = f->name.len == n + 1 && f->name.ptr[n] == 'f';
        if ((f->name.len != n && !f32) || strncmp(f->name.ptr, ctMathLib[i].name, (size_t)n)) continue;
        if (f32 != (want == BASETYPE_FLOAT32) || f->type.vars.len != ctMathLib[i].arity) return CT_MATH_NONE;
        for (int p = 0; p < f->type.vars.len; p++) {
            if (((struct var*)ListGetIdx(&f->type.vars, p))->type.bType != want) return CT_MATH_NONE;
        }
        return ctMathLib[i].exact ? CT_MATH_EXACT : CT_MATH_INEXACT;
    }
    return CT_MATH_NONE;
}

// ---- B3e: "-i", a whole program run by this evaluation ----

//X3: an extern called in this process, found among what the process has loaded - the C library the built
//program links against too, and libm on first need. A number is passed as itself; an array as a pointer to its
//first element, which here is a buffer filled from the array's elements and read back into them after the
//call, so a callee writing through it (read, say) is seen as it is at run time. Each prepared call is kept.
struct ctExternCall { struct var* f; void* sym; void (*rt)(void); ffi_cif cif; ffi_type** argTypes; };
static struct list ctExternCalls;
static bool ctExternReady;

//§11 X6: errno values, by the class "__olang_err" reports for them (std/os's OsError words, in order)
const struct osErrClass OsErrClasses[] = {
    { ENOENT, 1 }, { EEXIST, 2 }, { EACCES, 3 }, { EPERM, 3 }, { ENOTDIR, 4 }, { EISDIR, 5 }, { ENOTEMPTY, 6 },
};
const int OsErrClassCount = (int)(sizeof(OsErrClasses) / sizeof(OsErrClasses[0]));

//B3f/X6: the runtime's own functions live in the built program, not in this process, so -i has its own - the same
//contracts over the interpreted program's command line, called through libffi exactly as any extern is
static int ctArgc;
static char** ctArgv;
static int ctLastErrno; //what the last extern call left in errno, before the interpreter's own work could change it

static long long ctRtCopy(const char* s, unsigned char* buf, long long cap) {
    long long len = (long long)strlen(s);
    long long n = len < cap ? len : cap > 0 ? cap : 0;
    memcpy(buf, s, (size_t)n);
    return len;
}
static long long ctRtArgCount(void) { return ctArgc; }
static long long ctRtArg(long long i, unsigned char* buf, long long cap) {
    return i >= 0 && i < ctArgc ? ctRtCopy(ctArgv[i], buf, cap) : -1;
}
static long long ctRtEnv(const char* name, unsigned char* buf, long long cap) {
    const char* v = getenv(name);
    return v ? ctRtCopy(v, buf, cap) : -1;
}
static int ctRtErr(void) {
    for (int i = 0; i < OsErrClassCount; i++) if (OsErrClasses[i].errnoVal == ctLastErrno) return OsErrClasses[i].cls;
    return 0;
}
static int ctRtStat(const char* path, long long* out) {
    struct stat st;
    if (stat(path, &st) != 0) return -1;
    out[0] = S_ISREG(st.st_mode) ? 1 : S_ISDIR(st.st_mode) ? 2 : 0;
    out[1] = (long long)st.st_size;
    out[2] = (long long)st.st_mtim.tv_sec * 1000000000LL + (long long)st.st_mtim.tv_nsec;
    return 0;
}
static long long ctRtDir(const char* path, unsigned char* buf, long long cap) {
    DIR* d = opendir(path);
    if (!d) return -1;
    long long at = 0;
    struct dirent* e;
    while ((e = readdir(d))) {
        if (!strcmp(e->d_name, ".") || !strcmp(e->d_name, "..")) continue;
        long long n = (long long)strlen(e->d_name) + 1;
        if (at + n <= cap) memcpy(buf + at, e->d_name, (size_t)n);
        at += n;
    }
    closedir(d);
    return at;
}
static long long ctRtRealpath(const char* path, unsigned char* buf, long long cap) {
    char* r = realpath(path, NULL);
    if (!r) return -1;
    long long len = ctRtCopy(r, buf, cap);
    free(r);
    return len;
}
extern char** environ;
static int ctRtSpawn(const char* args, long long count, int in, int out, int err) {
    if (count < 1) { errno = EINVAL; return -1; }
    char** argv = MallocOrCrash(sizeof(char*) * (size_t)(count + 1));
    for (long long i = 0; i < count; i++) { argv[i] = (char*)args; args += strlen(args) + 1; }
    argv[count] = NULL;
    posix_spawn_file_actions_t fa;
    posix_spawn_file_actions_init(&fa);
    if (in >= 0) posix_spawn_file_actions_adddup2(&fa, in, 0);
    if (out >= 0) posix_spawn_file_actions_adddup2(&fa, out, 1);
    if (err >= 0) posix_spawn_file_actions_adddup2(&fa, err, 2);
    pid_t pid;
    int rc = posix_spawnp(&pid, argv[0], &fa, NULL, argv, environ);
    posix_spawn_file_actions_destroy(&fa);
    free(argv);
    if (rc != 0) { errno = rc; return -1; }
    return pid;
}
typedef void (*ctRtFn)(void);
static ctRtFn ctRuntimeSym(const char* name) {
    static const struct { const char* name; ctRtFn fn; } syms[] = {
        { "__olang_arg_count", (ctRtFn)ctRtArgCount }, { "__olang_arg", (ctRtFn)ctRtArg }, { "__olang_env", (ctRtFn)ctRtEnv },
        { "__olang_err", (ctRtFn)ctRtErr }, { "__olang_stat", (ctRtFn)ctRtStat }, { "__olang_dir", (ctRtFn)ctRtDir },
        { "__olang_realpath", (ctRtFn)ctRtRealpath }, { "__olang_spawn", (ctRtFn)ctRtSpawn },
    };
    for (size_t i = 0; i < sizeof(syms) / sizeof(syms[0]); i++) if (!strcmp(syms[i].name, name)) return syms[i].fn;
    return NULL;
}

static ffi_type* ctFfiType(enum baseType b) {
    const struct primInfo* p = PrimInfo(b);
    if (!p) return NULL;
    if (p->kind == 'f') return p->bits == 32 ? &ffi_type_float : p->bits == 64 ? &ffi_type_double : NULL;
    bool u = p->kind == 'u';
    switch (p->bits) {
        case 8: return u ? &ffi_type_uint8 : &ffi_type_sint8;
        case 16: return u ? &ffi_type_uint16 : &ffi_type_sint16;
        case 32: return u ? &ffi_type_uint32 : &ffi_type_sint32;
        case 64: return u ? &ffi_type_uint64 : &ffi_type_sint64;
        default: return NULL;
    }
}

//a number's bytes at `at`, as a value of primitive b lays them out
static void ctPutNum(unsigned char* at, enum baseType b, struct ctVal* v) {
    const struct primInfo* p = PrimInfo(b);
    if (p->kind == 'f') { unsigned long long u = FloatBits(ctAsF(v), b); memcpy(at, &u, (size_t)(p->bits / 8)); return; } //E33
    long long i = v->kind == CT_FLOAT ? (long long)v->f : v->i;
    memcpy(at, &i, (size_t)(p->bits / 8)); //little-endian: the low bytes are the narrower value
}

static void ctGetNum(const unsigned char* at, enum baseType b, struct ctVal* into) {
    const struct primInfo* p = PrimInfo(b);
    if (p->kind == 'f') { unsigned long long u = 0; memcpy(&u, at, (size_t)(p->bits / 8)); into->f = FloatFromBits(u, b); return; } //E33
    long long i = 0;
    memcpy(&i, at, (size_t)(p->bits / 8));
    into->i = ctWrap(into->type, i);
}

static struct ctExternCall* ctExternPrepare(struct ctState* st, struct operand* op, struct var* func) {
    if (!ctExternReady) { ctExternCalls = ListInit(sizeof(struct ctExternCall)); ctExternReady = true; }
    for (int i = 0; i < ctExternCalls.len; i++) {
        struct ctExternCall* c = ListGetIdx(&ctExternCalls, i);
        if (c->f == func) return c;
    }
    char name[256];
    snprintf(name, sizeof(name), "%.*s", func->name.len, func->name.ptr);
    ctRtFn own = ctRuntimeSym(name); //X6: the runtime's own, which this process provides itself
    void* sym = own ? NULL : dlsym(RTLD_DEFAULT, name);
    if (!sym && !own) {
        static void* libm;
        if (!libm) libm = dlopen("libm.so.6", RTLD_NOW | RTLD_GLOBAL);
        if (libm) sym = dlsym(libm, name);
    }
    if (!sym && !own) { ctFail(st, op->tok, "it calls an external function -i cannot find in this process"); return NULL; }
    int n = func->type.vars.len;
    ffi_type** at = MallocOrCrash(sizeof(ffi_type*) * (size_t)(n ? n : 1));
    for (int i = 0; i < n; i++) {
        struct type pt = ((struct var*)ListGetIdx(&func->type.vars, i))->type;
        at[i] = pt.bType == BASETYPE_ARRAY ? &ffi_type_pointer : ctFfiType(pt.bType);
        if (pt.bType == BASETYPE_ARRAY && !PrimInfo(pt.arrElem->bType)) at[i] = NULL; //X3: any number's bytes, F16 too
        if (!at[i]) { ctFail(st, op->tok, "it calls an external function with a parameter type -i cannot pass"); return NULL; }
    }
    ffi_type* rt = func->type.hasRetType ? ctFfiType(func->type.retType->bType) : &ffi_type_void;
    if (!rt) { ctFail(st, op->tok, "it calls an external function with a result type -i cannot receive"); return NULL; }
    struct ctExternCall c = { func, sym, own, {0}, at };
    if (ffi_prep_cif(&c.cif, FFI_DEFAULT_ABI, (unsigned)n, rt, at) != FFI_OK) {
        ctFail(st, op->tok, "it calls an external function -i cannot call");
        return NULL;
    }
    ListAdd(&ctExternCalls, &c);
    return ListGetIdx(&ctExternCalls, ctExternCalls.len - 1);
}

static struct ctVal* ctExtern(struct ctState* st, struct operand* op, struct var* func) {
    struct ctExternCall* c = ctExternPrepare(st, op, func);
    if (!c) return NULL;
    int n = func->type.vars.len;
    union ctArg { long long i; float f; double d; void* p; };
    union ctArg* store = MallocOrCrash(sizeof(union ctArg) * (size_t)(n ? n : 1));
    void** values = MallocOrCrash(sizeof(void*) * (size_t)(n ? n : 1));
    struct ctVal** arrays = MallocOrCrash(sizeof(struct ctVal*) * (size_t)(n ? n : 1));
    for (int i = 0; i < n; i++) {
        struct type pt = ((struct var*)ListGetIdx(&func->type.vars, i))->type;
        struct operand* a = *(struct operand**)ListGetIdx(&op->args, i);
        //X3: an array argument is the caller's own storage, not a copy of it - fitting it to the by-value
        //parameter type would copy, and what the callee writes would be lost
        struct ctVal* v = pt.bType == BASETYPE_ARRAY ? ctEval(st, a) : ctFit(st, a, pt);
        if (!v) return NULL;
        v = ctDeref(v);
        arrays[i] = NULL;
        if (pt.bType == BASETYPE_ARRAY) {
            if (v->kind == CT_NULL) { store[i].p = NULL; values[i] = &store[i]; continue; }
            enum baseType eb = pt.arrElem->bType;
            size_t w = (size_t)(PrimInfo(eb)->bits / 8);
            unsigned char* buf = MallocOrCrash(w * (size_t)(v->n ? v->n : 1));
            for (int k = 0; k < v->n; k++) ctPutNum(buf + w * (size_t)k, eb, ctDeref(v->elems[k]));
            store[i].p = buf;
            arrays[i] = v;
        } else if (PrimInfo(pt.bType)->kind == 'f' && PrimInfo(pt.bType)->bits == 32) {
            uint32_t u = (uint32_t)FloatBits(ctAsF(v), pt.bType); //E33: (float) would quiet a signalling NaN
            memcpy(&store[i].f, &u, 4);
        } else if (PrimInfo(pt.bType)->kind == 'f') {
            store[i].d = ctAsF(v);
        } else {
            store[i].i = v->i;
        }
        values[i] = &store[i];
    }
    union { ffi_arg a; ffi_sarg s; long long i; float f; double d; } rv;
    memset(&rv, 0, sizeof(rv));
    ffi_call(&c->cif, c->rt ? c->rt : FFI_FN(c->sym), &rv, values);
    ctLastErrno = errno; //X6: kept for "__olang_err" before anything here can overwrite it
    for (int i = 0; i < n; i++) {
        if (!arrays[i]) continue;
        struct type pt = ((struct var*)ListGetIdx(&func->type.vars, i))->type;
        enum baseType eb = pt.arrElem->bType;
        size_t w = (size_t)(PrimInfo(eb)->bits / 8);
        unsigned char* buf = store[i].p;
        for (int k = 0; k < arrays[i]->n; k++) ctGetNum(buf + w * (size_t)k, eb, ctDeref(arrays[i]->elems[k]));
        free(buf);
    }
    free(store);
    free(values);
    free(arrays);
    if (!func->type.hasRetType) return ctNew(CT_INT, TypeVanilla(BASETYPE_VOID));
    struct type rt = *func->type.retType;
    const struct primInfo* p = PrimInfo(rt.bType);
    if (p->kind == 'f') {
        struct ctVal* r = ctNew(CT_FLOAT, rt);
        r->f = rv.d;
        if (p->bits == 32) { //E33: its bits, a NaN's payload included - (double) would quiet a signalling NaN
            uint32_t u;
            memcpy(&u, &rv.f, 4);
            r->f = FloatFromBits(u, rt.bType);
        }
        return r;
    }
    //libffi widens a result narrower than a register to a whole ffi_arg
    long long i = p->bits == 64 ? rv.i : p->kind == 'u' ? (long long)rv.a : (long long)rv.s;
    return ctInt(rt, i);
}

//where an interpreted program stopped on something the built program leaves undefined, or -i does not run yet
static int ctRunStopped(struct ctState* st) {
    fflush(NULL);
    struct str f = st->whyTok.owner ? TokenGetFileName(st->whyTok.owner) : StrFromCStr("?");
    fprintf(stderr, "olang -i: %.*s:%d: %s\n", f.len, f.ptr, st->whyTok.lineNr, st->why ? st->why : "it cannot go on");
    return 1;
}

//B5: an error escaping main is named, as the built program names it
static int ctRunUnhandled(struct ctState* st) {
    fflush(NULL);
    struct type* generic = SemanticGenericErrorType();
    if (generic && TypeIsSame(st->errType, *generic)) fputs("unhandled error\n", stderr);
    else if (st->errWord >= 0 && st->errWord < st->errType.words.len) {
        struct token w = *(struct token*)ListGetIdx(&st->errType.words, (int)st->errWord);
        fprintf(stderr, "unhandled error: %.*s.%.*s\n", st->errType.name.len, st->errType.name.ptr, w.str.len, w.str.ptr);
    } else fputs("unhandled error\n", stderr);
    return 1;
}

static int ctRunMain(struct var* mainFunc) {
    struct ctState st = (struct ctState){0};
    struct list locals = ListInit(sizeof(struct ctLocal));
    st.locals = &locals;
    //B5a: every global, imports first - a mutable one set in place, an immutable one computed now, as at startup
    struct list order = SemanticInitOrder();
    for (int m = 0; m < order.len; m++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(&order, m);
        int count = mod->globalOrderSet ? mod->globalOrder.len : mod->vars.len; //B5a: each after what it reads
        for (int i = 0; i < count; i++) {
            struct var* v = mod->globalOrderSet ? *(struct var**)ListGetIdx(&mod->globalOrder, i) : (struct var*)ListGetIdx(&mod->vars, i);
            if ((v->type.bType == BASETYPE_FUNC && !v->isGlobalVar) || v->isFuncDecl || !v->initExpr) continue;
            if (v->mut) {
                struct ctVal* node = ctRunGlobal(v);
                st.globalInit = true; //K2c: what its own frame builds lands in the program's scope, never closed
                struct ctVal* val = ctFit(&st, v->initExpr, v->type);
                st.globalInit = false;
                if (!val) return st.flow == CF_FAIL ? ctRunStopped(&st) : ctRunUnhandled(&st);
                ctAssign(node, val);
            } else {
                struct operand at = (struct operand){0};
                at.tok = v->tok;
                if (!ctReadGlobal(&st, &at, v)) return ctRunStopped(&st);
            }
        }
    }
    struct operand call = (struct operand){0};
    call.opType = OPERATION_FUNCCALL;
    call.readVar = mainFunc;
    call.tok = mainFunc->tok;
    call.args = ListInit(sizeof(struct operand*));
    call.type = TypeVanilla(BASETYPE_VOID);
    ctCall(&st, &call);
    if (st.flow == CF_ERROR) return ctRunUnhandled(&st);
    if (st.flow == CF_FAIL) return ctRunStopped(&st);
    fflush(NULL);
    return 0;
}

struct ctRunJob { struct var* mainFunc; int status; };
static void* ctRunThread(void* p) {
    struct ctRunJob* j = p;
    j->status = ctRunMain(j->mainFunc);
    return NULL;
}

int CtRunProgram(struct var* mainFunc, int argc, char** argv) {
    ctRun = true;
    ctArgc = argc;
    ctArgv = argv;
    CtReset(); //globals start over: what analysis computed is not the running program's storage
    //the evaluation recurses on the C stack, a few frames per call written in the program, so it runs on a
    //thread whose stack is sized for CT_RUN_DEPTH_BUDGET calls - reserved, and touched only as it is used
    struct ctRunJob job = { mainFunc, 1 };
    pthread_attr_t attr;
    pthread_t t;
    pthread_attr_init(&attr);
    pthread_attr_setstacksize(&attr, CT_RUN_STACK);
    if (pthread_create(&t, &attr, ctRunThread, &job) != 0) ctRunThread(&job);
    else pthread_join(t, NULL);
    pthread_attr_destroy(&attr);
    ctRun = false;
    return job.status;
}
