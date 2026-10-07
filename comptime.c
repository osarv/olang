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

#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <math.h>
#include "comptime.h"
#include "util.h"

struct var* canonicalVar(struct var* v);
bool OperandIsLvalue(struct operand* op);
bool StatementCatchCoversType(struct list* matches, struct type errType);
bool ChoiceHasPayload(struct type t);
void RdSpellType(struct type t, char* buf, size_t n);
void RdSpellInterface(struct type t, char* buf, size_t n);
void RdSpellSig(struct type f, char* buf, size_t n);

#define CT_STEP_BUDGET 20000000
#define CT_DEPTH_BUDGET 2000

enum ctFlow { CF_NORMAL, CF_RETURN, CF_BREAK, CF_CONTINUE, CF_ERROR, CF_FAIL };

struct ctLocal { struct str name; struct ctVal* node; };

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
    //K2c: evaluating a global's initializer. Everything its own frame builds lands in the program's scope,
    //which never closes (O1b), so a destructor there would never run at all - building one is no effect
    bool globalInit;
    //E27: the comprehensions being built, innermost last, each with how many elements its storage has room for
    struct ctVal* compr[64];
    int comprCap[64];
    int comprDepth;
};

bool SemanticIsBuildConst(struct var* v);

//why a function with a branch still being decided (S8b) is not evaluated: its body is not yet the program's
const char* CT_WHY_INCOMPLETE = "it calls a function one of whose branches is still being decided";

//immutable globals already evaluated, or being evaluated (a cycle is a failure, not a hang)
struct ctGlobal { struct var* v; struct ctVal* val; bool busy; bool usedBuild; };
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

//R20: does an exact integer result fit type t - two's complement for the signed types, 0..255 for Byte
static bool ctFits(struct type t, ctWide v) {
    if (t.bType == BASETYPE_BYTE) return v >= 0 && v <= 255;
    if (t.bType == BASETYPE_INT32) return v >= INT32_MIN && v <= INT32_MAX;
    return v >= INT64_MIN && v <= INT64_MAX;
}

//R20: a float result's checks - infinite from finite operands is OVERFLOW, NaN from non-NaN operands INVALID
static struct ctVal* ctCheckFloat(struct ctState* st, struct operand* op, struct type t, double x, double y,
                                  bool binary, double r) {
    if (t.bType == BASETYPE_FLOAT32) r = (double)(float)r;
    if (isinf(r) && isfinite(x) && (!binary || isfinite(y))) return ctCheckFail(st, op, "OVERFLOW");
    if (isnan(r) && !isnan(x) && (!binary || !isnan(y))) return ctCheckFail(st, op, "INVALID");
    return ctFloat(t, r);
}

static bool ctIsRef(struct type t) { return t.structMAlloc || t.bType == BASETYPE_INTERFACE; }

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
    if (a && b && a != b && a->kind == CT_AGG && b->kind == CT_AGG && a->type.bType == BASETYPE_ARRAY
        && b->type.bType == BASETYPE_ARRAY) return a->n == b->n && (a->n == 0 || a->elems == b->elems);
    return a == b;
}

//a fresh, independent copy: an aggregate's elements are copied, a reference keeps pointing where it did
static struct ctVal* ctCopy(struct ctVal* v) {
    struct ctVal* c = ctNew(v->kind, v->type);
    *c = *v;
    if (v->kind == CT_AGG) {
        c->elems = MallocOrCrash(sizeof(struct ctVal*) * (size_t)(v->n ? v->n : 1));
        for (int i = 0; i < v->n; i++) c->elems[i] = ctCopy(v->elems[i]);
    }
    return c;
}

//writes a value into an existing node, so every reference to that node sees it
static void ctAssign(struct ctVal* node, struct ctVal* v) {
    struct ctVal* c = ctCopy(v);
    *node = *c;
}

static long long ctWrap(struct type t, long long v) {
    switch (t.bType) {
        case BASETYPE_BYTE:  return (long long)(uint8_t)v;
        case BASETYPE_INT32: return (long long)(int32_t)v;
        case BASETYPE_BOOL:  return v != 0;
        default:             return v;
    }
}

static bool ctIsInt(struct type t) {
    return t.bType == BASETYPE_BYTE || t.bType == BASETYPE_INT32 || t.bType == BASETYPE_INT64;
}
static bool ctIsFloat(struct type t) { return t.bType == BASETYPE_FLOAT32 || t.bType == BASETYPE_FLOAT64; }

static struct ctVal* ctZero(struct type t) {
    if (ctIsRef(t) || t.bType == BASETYPE_FUNC) return ctNew(CT_NULL, t);
    if (ctIsFloat(t)) return ctNew(CT_FLOAT, t);
    if (t.bType == BASETYPE_BOOL) return ctNew(CT_BOOL, t);
    if (t.bType == BASETYPE_ARRAY) {
        struct ctVal* a = ctNew(CT_AGG, t);
        a->n = (!t.arrMalloc && t.arrLen) ? (int)t.arrLen->intLiteralVal : 0;
        a->elems = MallocOrCrash(sizeof(struct ctVal*) * (size_t)(a->n ? a->n : 1));
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
    v->f = t.bType == BASETYPE_FLOAT32 ? (double)(float)f : f;
    return v;
}

static struct ctVal* ctDeref(struct ctVal* v) {
    while (v && v->kind == CT_REF) v = v->target;
    return v;
}

static double ctAsF(struct ctVal* v) { return v->kind == CT_FLOAT ? v->f : (double)v->i; }

static struct ctVal* ctEval(struct ctState* st, struct operand* op);
static struct ctVal* ctFit(struct ctState* st, struct operand* op, struct type dst);
static void ctExecBlock(struct ctState* st, struct list* block);

static bool ctStep(struct ctState* st, struct token tok) {
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

static struct ctGlobal* ctGlobalEntry(struct var* v) {
    if (!ctGlobalsReady) { ctGlobals = ListInit(sizeof(struct ctGlobal)); ctGlobalsReady = true; }
    for (int i = 0; i < ctGlobals.len; i++) {
        struct ctGlobal* g = ListGetIdx(&ctGlobals, i);
        if (g->v == v) return g;
    }
    struct ctGlobal g = { v, NULL, false, false };
    ListAdd(&ctGlobals, &g);
    return ListGetIdx(&ctGlobals, ctGlobals.len - 1);
}

static struct ctVal* ctReadGlobal(struct ctState* st, struct operand* op, struct var* v) {
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
    if (g->val) { st->usedBuild = st->usedBuild || g->usedBuild; return g->val; }
    if (g->busy) return ctFail(st, op->tok, "these globals are defined in terms of each other");
    g->busy = true;
    struct ctState inner = (struct ctState){0};
    struct list locals = ListInit(sizeof(struct ctLocal));
    inner.locals = &locals;
    inner.steps = st->steps;
    struct ctVal* val = ctFit(&inner, v->initExpr, v->type);
    st->steps = inner.steps;
    g = ctGlobalEntry(v); //the list may have grown
    g->busy = false;
    if (inner.flow == CF_FAIL) { st->flow = CF_FAIL; st->why = inner.why; st->whyTok = inner.whyTok; return NULL; }
    if (inner.flow != CF_NORMAL || !val) return ctFail(st, op->tok, "its initializer does not produce a value");
    g->val = val;
    g->usedBuild = inner.usedBuild;
    st->usedBuild = st->usedBuild || inner.usedBuild;
    return val;
}

// ---- lvalues: the node an operand names ----

static struct ctVal* ctLvalue(struct ctState* st, struct operand* op, bool forWrite) {
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
            if (forWrite) return ctFail(st, op->tok, "it writes a global, which the running program would then not see written");
            return ctReadGlobal(st, op, canonicalVar(op->readVar));
        }
        case OPERATION_MEMBER: {
            struct operand* baseOp = *(struct operand**)ListGetIdx(&op->args, 0);
            //D8d: one call's results spread over a call's arguments - evaluated once, by the first
            struct ctVal* base = baseOp->isSpreadSource && op->spreadIndex > 0 ? baseOp->spreadVal
                                 : ctDeref(ctLvalue(st, baseOp, forWrite));
            if (baseOp->isSpreadSource && op->spreadIndex == 0) baseOp->spreadVal = base;
            if (!base) return NULL;
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
                if (st->flow == CF_ERROR && op->isTried) st->errBypass = true; //not this index's own failure
                return NULL;
            }
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
                long long x = a->i, y = b->i;
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
            int w = t.bType == BASETYPE_BYTE ? 8 : t.bType == BASETYPE_INT32 ? 32 : 64;
            ctWide x = t.bType == BASETYPE_BYTE ? (uint8_t)a->i : a->i;
            ctWide y = t.bType == BASETYPE_BYTE ? (uint8_t)b->i : b->i;
            switch (op->opType) {
                case OPERATION_ADD: if (!ctFits(t, x + y)) return ctCheckFail(st, op, "OVERFLOW"); break;
                case OPERATION_SUB: if (!ctFits(t, x - y)) return ctCheckFail(st, op, "OVERFLOW"); break;
                case OPERATION_MUL: if (!ctFits(t, x * y)) return ctCheckFail(st, op, "OVERFLOW"); break;
                case OPERATION_DIV: case OPERATION_MOD:
                    if (y == 0) return ctCheckFail(st, op, "DIVIDE_BY_ZERO");
                    if (t.bType != BASETYPE_BYTE && y == -1 && !ctFits(t, -x)) return ctCheckFail(st, op, "OVERFLOW");
                    break;
                case OPERATION_BTSFT_L: case OPERATION_BTSFT_R: {
                    //the amount in its own type: a negative one, or one past the width, is INVALID
                    long long n = bOp->type.bType == BASETYPE_BYTE ? (uint8_t)b->i : b->i;
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
    int bits = t.bType == BASETYPE_BYTE ? 8 : t.bType == BASETYPE_INT32 ? 32 : 64;
    unsigned long long ux = (unsigned long long)x, uy = (unsigned long long)y;
    switch (op->opType) {
        case OPERATION_ADD: return ctInt(t, (long long)(ux + uy));
        case OPERATION_SUB: return ctInt(t, (long long)(ux - uy));
        case OPERATION_MUL: return ctInt(t, (long long)(ux * uy));
        case OPERATION_DIV: case OPERATION_MOD: {
            //E6a: undefined at run time, so refused here rather than given a value the program never had
            if (y == 0) return ctFail(st, op->tok, "it divides by zero");
            long long minV = bits == 64 ? INT64_MIN : bits == 32 ? INT32_MIN : 0;
            if (t.bType != BASETYPE_BYTE && x == minV && y == -1) return ctFail(st, op->tok, "it divides the most negative value by -1, which overflows");
            if (t.bType == BASETYPE_BYTE) {
                unsigned long long bx = (uint8_t)x, by = (uint8_t)y;
                return ctInt(t, (long long)(op->opType == OPERATION_DIV ? bx / by : bx % by));
            }
            return ctInt(t, op->opType == OPERATION_DIV ? x / y : x % y);
        }
        case OPERATION_BTWSE_AND: return ctInt(t, x & y);
        case OPERATION_BTWSE_OR:  return ctInt(t, x | y);
        case OPERATION_BTWSE_XOR: case OPERATION_XOR: return ctInt(t, x ^ y);
        case OPERATION_BTSFT_L: case OPERATION_BTSFT_R: {
            //E8a: a count outside [0, width) is undefined at run time
            if (y < 0 || y >= bits) return ctFail(st, op->tok, "it shifts by a count outside the type's width");
            if (op->opType == OPERATION_BTSFT_L) return ctInt(t, (long long)(ux << y));
            if (t.bType == BASETYPE_BYTE) return ctInt(t, (long long)((uint8_t)x >> y));
            return ctInt(t, x >> y); //arithmetic for the signed types, as the generated code does
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

static struct ctVal* ctConvert(struct ctState* st, struct operand* op) {
    struct operand* src = *(struct operand**)ListGetIdx(&op->args, 0);
    struct ctVal* v = ctDeref(ctEval(st, src));
    if (!v) return NULL;
    struct type t = op->type;
    if (op->checkRoot) { //R20: a value the target cannot represent
        if (v->kind == CT_FLOAT && ctIsInt(t)) {
            if (!isfinite(v->f)) return ctCheckFail(st, op, "INVALID");
            double f = trunc(v->f);
            double lo = t.bType == BASETYPE_BYTE ? 0 : t.bType == BASETYPE_INT32 ? -2147483648.0 : -9223372036854775808.0;
            double hi = t.bType == BASETYPE_BYTE ? 256 : t.bType == BASETYPE_INT32 ? 2147483648.0 : 9223372036854775808.0;
            if (!(v->f >= lo && v->f < hi) || !(f >= lo && f < hi)) return ctCheckFail(st, op, "OVERFLOW");
        } else if (v->kind == CT_FLOAT && t.bType == BASETYPE_FLOAT32) {
            if (isfinite(v->f) && isinf((double)(float)v->f)) return ctCheckFail(st, op, "OVERFLOW");
        } else if (v->kind != CT_FLOAT && ctIsInt(t)) {
            ctWide x = src->type.bType == BASETYPE_BYTE ? (uint8_t)v->i : v->i;
            if (!ctFits(t, x)) return ctCheckFail(st, op, "OVERFLOW");
        }
    }
    if (ctIsFloat(t)) return ctFloat(t, ctAsF(v));
    if (ctIsInt(t)) {
        if (v->kind == CT_FLOAT) {
            //E26a: a float the target cannot represent is undefined at run time
            double f = trunc(v->f);
            double lo = t.bType == BASETYPE_BYTE ? 0 : t.bType == BASETYPE_INT32 ? -2147483648.0 : -9223372036854775808.0;
            double hi = t.bType == BASETYPE_BYTE ? 256 : t.bType == BASETYPE_INT32 ? 2147483648.0 : 9223372036854775808.0;
            if (!(f >= lo && f < hi)) return ctFail(st, op->tok, "it converts a float the target type cannot represent");
            return ctInt(t, (long long)f);
        }
        //an unsigned byte widens by zero-extending, as the generated code does
        return ctInt(t, src->type.bType == BASETYPE_BYTE ? (long long)(uint8_t)v->i : v->i);
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

static bool ctIsGlobal(struct var* v) { return v && v->owner && v->type.bType != BASETYPE_FUNC; }

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
            if (!f || (f->type.isExtern && !op->isIfaceDispatch)) { ctScanFail(sc, op->tok, "it calls an external function"); return; }
            //a call through a function value or an interface is evaluable exactly when the function it reaches
            //is - which only the evaluation knows, so it is decided there (ctCall), not here
            bool throughValue = (!f->owner && !op->isCtorCall) || op->isIfaceDispatch;
            for (int i = 0; i < op->args.len && !sc->why; i++) {
                struct operand* a = *(struct operand**)ListGetIdx(&op->args, i);
                //a global bound to a "mut &" parameter may be written through it
                if (i < f->type.vars.len) {
                    struct var* p = ListGetIdx(&f->type.vars, i);
                    if (p->mut && p->type.structMAlloc && OperandIsLvalue(a)) ctScanWrite(sc, a);
                }
                ctScanOp(sc, a);
            }
            if (sc->why || f->type.typeParams.len || throughValue) return;
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
            for (int i = 0; i < s->matchCases.len && !sc->why; i++) {
                struct statement* c = ListGetIdx(&s->matchCases, i);
                ctScanOp(sc, c->op);
                ctScanBlock(sc, &c->block);
            }
            ctScanBlock(sc, &s->nomatchBlock);
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

// ---- calls ----

//the call itself: parameters bound, body run. A reference parameter is bound to the argument's own node, so
//writing through a "mut &" parameter writes the caller's value - exactly E12c's borrow.
static struct ctVal* ctCall(struct ctState* st, struct operand* op) {
    struct var* func = op->readVar;
    if (op->isCtorCall && ctHasDestructor(op->type) && !(st->globalInit && st->depth == 0)) {
        return ctFail(st, op->tok, CT_WHY_DESTRUCTOR);
    }
    if (!func || (func->type.isExtern && !op->isIfaceDispatch)) return ctFail(st, op->tok, "it calls an external function");
    struct ctVal* through = NULL;
    struct ctVal* recv = NULL; //T31: a dispatch's receiver - the interface value - evaluated before the method is known
    if (op->isIfaceDispatch) {
        //the method the instance's own concrete type supplies, decided now (K1a), as for a function value
        struct operand* a0 = *(struct operand**)ListGetIdx(&op->args, 0);
        recv = ctFit(st, a0, ((struct var*)ListGetIdx(&func->type.vars, 0))->type);
        if (!recv) {
            if (st->flow == CF_ERROR) st->errBypass = true;
            return NULL;
        }
        if (recv->kind == CT_NULL) return ctFail(st, op->tok, "it calls a method through a null interface value");
        if (recv->kind != CT_REF || !recv->target) return ctFail(st, op->tok, "it calls through an interface value compile-time evaluation does not model");
        struct var* m = ListGetIdx(&op->ifaceType.vars, op->ifaceMethodIdx);
        struct var* impl = InterfaceMethodImpl(recv->target->type, m);
        if (!impl) return ctFail(st, op->tok, "it calls through an interface value compile-time evaluation does not model");
        func = canonicalVar(impl);
    } else if (!func->owner && !op->isCtorCall) {
        //a call through a function value: the function it names, decided now (K1a)
        struct ctVal* fv = op->callee ? ctEval(st, op->callee) : ctFindLocal(st, func->name); //E13b: computed
        if (!fv && op->callee) return NULL;
        if (fv) fv = ctDeref(fv);
        if (!fv || fv->kind == CT_NULL) return ctFail(st, op->tok, "it calls through a null function value");
        if (fv->kind != CT_FUNC) return ctFail(st, op->tok, "it calls through a function value compile-time evaluation does not model");
        func = canonicalVar(fv->fn);
        through = fv;
    }
    if (func->type.typeParams.len) return ctFail(st, op->tok, "it calls a generic that has no instantiation here");
    {
        //K3: a function that can never be evaluated is rejected before running any of it, with the
        //operation that stops it as the reason - the same answer whatever arguments reached it
        struct token whyTok;
        const char* why = ctFuncWhy(func, &whyTok);
        if (why) return ctFail(st, whyTok, why);
    }
    if (func->codeBlock.len == 0 && func->type.hasRetType) return ctFail(st, op->tok, "it calls a function whose body is not available");
    if (st->depth >= CT_DEPTH_BUDGET) return ctFail(st, op->tok, "the computation recurses deeper than compile-time evaluation allows");

    struct list locals = ListInit(sizeof(struct ctLocal));
    for (int i = 0; i < func->type.vars.len && i < op->args.len; i++) {
        struct var* p = ListGetIdx(&func->type.vars, i);
        struct operand* a = *(struct operand**)ListGetIdx(&op->args, i);
        //a dispatched method's receiver: the instance the interface names, or a copy for a by-value receiver
        struct ctVal* v = recv && i == 0 ? (ctIsRef(p->type) ? recv : recv->target) : ctFit(st, a, p->type);
        if (!v) {
            if (st->flow == CF_ERROR) st->errBypass = true; //from an argument, not from this call
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
    st->locals = &locals;
    st->func = func;
    st->depth++;
    ctExecBlock(st, &func->codeBlock);
    st->depth--;
    st->locals = saved;
    st->func = savedFunc;
    if (st->flow == CF_ERROR) { st->errBypass = false; st->errCheckRoot = NULL; } //this call's clauses see it
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
    struct ctVal* nv = ctIsFloat(node->type) ? ctFloat(node->type, node->f + (inc ? 1 : -1))
                                            : ctInt(node->type, node->i + (inc ? 1 : -1));
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
    if (!(l >= 0 && l <= h && h <= base->n)) {
        if (op->checkRoot) return ctCheckFail(st, op, "OUT_OF_BOUNDS");
        return ctFail(st, op->tok, "it slices out of range, which aborts at run time");
    }
    struct type vt = op->type;
    vt.structMAlloc = false;
    struct ctVal* view = ctNew(CT_AGG, vt);
    view->n = (int)(h - l);
    view->elems = base->elems + l;
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
    bool marked = t.structMAlloc && (t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_ARRAY);
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
            if (elem.bType == BASETYPE_BYTE) { ctTextQuoted(b, v->elems, v->n, '"'); return true; }
            if (!row) {
                struct type base0 = elem;
                while (base0.bType == BASETYPE_ARRAY && !base0.structMAlloc && !(base0.owner && base0.name.len)
                       && base0.arrElem->bType != BASETYPE_BYTE) base0 = *base0.arrElem;
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
        case BASETYPE_FUNC: case BASETYPE_INTERFACE: {
            //what it is, not what it holds: a function value its signature, an interface its name and methods
            if (v->kind == CT_NULL) { ctTextStr(b, "null"); return true; }
            char spelled[2400];
            if (t.bType == BASETYPE_FUNC) RdSpellType(t, spelled, sizeof(spelled));
            else RdSpellInterface(t, spelled, sizeof(spelled));
            ctTextStr(b, spelled);
            return true;
        }
        default:
            return ctRenderValue(st, b, v, t, depth, false, tok);
    }
}

//rdPutValue's rules: a primitive inline - a nested byte quoted, a number as snprintf writes it - anything else
//through its body
static bool ctRenderValue(struct ctState* st, struct ctText* b, struct ctVal* v, struct type t, int depth, bool row,
                          struct token tok) {
    if (t.bType == BASETYPE_BOOL) { ctTextStr(b, ctDeref(v)->i ? "true" : "false"); return true; }
    if (t.bType == BASETYPE_BYTE) { struct ctVal* one[1] = { ctDeref(v) }; ctTextQuoted(b, one, 1, '\''); return true; }
    if (ctIsFloat(t) || ctIsInt(t)) {
        char num[64];
        if (ctIsFloat(t)) snprintf(num, sizeof(num), "%.17g", ctDeref(v)->f);
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
        if (!in || (t.bType == BASETYPE_ARRAY && t.arrElem->bType == BASETYPE_BYTE)) {
            struct ctVal* a = ctDeref(v);
            if (a->kind == CT_NULL) continue;
            for (int k = 0; k < a->n; k++) { char c = (char)ctDeref(a->elems[k])->i; ctTextPut(&b, &c, 1); }
        } else if (t.bType == BASETYPE_BYTE) {
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
    struct ctVal* r = ctEvalOp(st, op);
    if (!r && op->isTried && op->checkRoot == op && st->flow == CF_ERROR && st->errCheckRoot == op)
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
        case OPERATION_FUNCCALL: {
            struct ctVal* r = ctCall(st, op);
            if (!r && op->isTried && st->flow == CF_ERROR) return ctHandleTry(st, op);
            return r;
        }
        case OPERATION_LEN: {
            struct ctVal* a = ctDeref(ctEval(st, *(struct operand**)ListGetIdx(&op->args, 0)));
            if (!a) return NULL;
            if (a->kind == CT_NULL) return ctInt(op->type, 0);
            return ctInt(op->type, a->n);
        }
        case OPERATION_NUMERIC_CONVERT: return ctConvert(st, op);
        case OPERATION_NOMINAL_CONVERT: {
            struct ctVal* v = ctEval(st, *(struct operand**)ListGetIdx(&op->args, 0));
            if (!v) return NULL;
            v = ctCopy(v);
            v->type = op->type;
            return v;
        }
        case OPERATION_COMPREHENSION: { //E27: its loop run, each pushed element appended
            if (st->comprDepth >= 64) return ctFail(st, op->tok, "comprehensions nest deeper than compile-time evaluation allows");
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
        case OPERATION_COMPR_RESERVE: return ctNew(CT_INT, TypeVanilla(BASETYPE_VOID));
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
            if (n->i < 0 && op->checkRoot) return ctCheckFail(st, op, "OUT_OF_BOUNDS"); //R20
            if (n->i < 0) return ctFail(st, op->tok, "it makes an array of negative length");
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
                ctWide x = op->type.bType == BASETYPE_BYTE ? (uint8_t)v->i : v->i;
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
        case OPERATION_ATOMIC_SWAP: case OPERATION_ATOMIC_CAS:
            return ctFail(st, op->tok, "it uses an atomic operation");
        case OPERATION_SLICE: return ctSlice(st, op);
        case OPERATION_STR_OF: case OPERATION_CONCAT: return ctText(st, op);
    }
    return ctFail(st, op->tok, "it uses an operation compile-time evaluation does not model");
}

//the value op gives when it lands in something of type dst - E12's conversions: a reference target takes the
//node itself (borrowing an lvalue, or a fresh node for a temporary), a value target takes an independent
//copy, and a numeric literal adapts to the target's numeric type
static struct ctVal* ctFit(struct ctState* st, struct operand* op, struct type dst) {
    if (ctIsRef(dst)) {
        if (op->isNullLiteral) return ctNew(CT_NULL, dst);
        if (ctIsRef(op->type)) { //already a reference: the same node (repoint, S4a)
            struct ctVal* v = ctEval(st, op);
            if (!v || dst.bType != BASETYPE_INTERFACE || v->kind != CT_REF) return v;
            v = ctCopy(v); //E12d: an interface value names the very instance the reference does
            v->type = dst;
            return v;
        }
        struct ctVal* node = OperandIsLvalue(op) ? ctLvalue(st, op, false) : ctEval(st, op);
        if (!node) return NULL;
        struct ctVal* r = ctNew(CT_REF, dst);
        r->target = OperandIsLvalue(op) ? node : ctCopy(node);
        return r;
    }
    struct ctVal* v = ctEval(st, op);
    if (!v) return NULL;
    v = ctCopy(ctDeref(v));
    if (ctIsInt(dst) && v->kind == CT_INT) return ctInt(dst, v->i);
    if (ctIsFloat(dst) && (v->kind == CT_INT || v->kind == CT_FLOAT)) return ctFloat(dst, ctAsF(v));
    if (dst.bType != BASETYPE_VOID && v->kind == CT_AGG) v->type = dst;
    return v;
}

// ---- statements ----

static bool ctTruth(struct ctState* st, struct operand* op) {
    struct ctVal* v = ctEval(st, op);
    return v && v->i;
}

static void ctExec(struct ctState* st, struct statement* s);

static void ctExecBlock(struct ctState* st, struct list* block) {
    int mark = st->locals->len;
    for (int i = 0; i < block->len && st->flow == CF_NORMAL; i++) ctExec(st, ListGetIdx(block, i));
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
        if (!ctIsRef(s->var.type)) v = ctCopy(v);
    } else {
        v = ctZero(s->var.type); //D13; a D13a uninitialized array has no value anyone may read first
    }
    struct ctVal* node = ctNew(CT_INT, s->var.type);
    *node = *v;
    ctDeclare(st, s->var.name, node);
}

static void ctExec(struct ctState* st, struct statement* s) {
    struct token tok = s->op ? s->op->tok : s->var.tok;
    if (!ctStep(st, tok)) return;
    switch (s->sType) {
        case STATEMENT_VAR_DECL: ctVarDecl(st, s); return;
        case STATEMENT_ASSIGN: {
            struct ctVal* node = ctLvalue(st, s->target, true);
            if (!node) return;
            struct ctVal* v = ctFit(st, s->op, s->target->type);
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
                if (st->flow == CF_BREAK) { st->flow = CF_NORMAL; break; }
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
        case STATEMENT_MATCH: {
            struct ctVal* v = ctDeref(ctEval(st, s->op));
            if (!v) return;
            for (int i = 0; i < s->matchCases.len; i++) {
                struct statement* c = ListGetIdx(&s->matchCases, i);
                bool hit;
                if (c->isChoiceCase) hit = v->i == c->caseTag;
                else {
                    struct ctVal* cv = ctDeref(ctEval(st, c->op));
                    if (!cv) return;
                    hit = ctDeepEqPublic(v, cv);
                }
                if (hit) {
                    //T17b: the payload's fields become locals of the arm
                    size_t mark = (size_t)st->locals->len;
                    for (int b = 0; c->isChoiceCase && b < c->caseBindings.len && v->kind == CT_AGG && b < v->n; b++) {
                        struct var* bv = *(struct var**)ListGetIdx(&c->caseBindings, b);
                        if (!bv) continue;
                        struct ctLocal l = { bv->name, ctCopy(v->elems[b]) };
                        ListAdd(st->locals, &l);
                    }
                    ctExecBlock(st, &c->block);
                    st->locals->len = (int)mark;
                    return;
                }
            }
            if (s->hasNomatch) ctExecBlock(st, &s->nomatchBlock);
            return;
        }
        case STATEMENT_RET:
            if (s->op) {
                struct ctVal* v = ctEval(st, s->op);
                if (!v) return;
                st->ret = ctIsRef(s->op->type) ? v : ctCopy(v);
            }
            st->flow = CF_RETURN;
            return;
        case STATEMENT_BREAK: st->flow = CF_BREAK; return;
        case STATEMENT_CONTINUE: st->flow = CF_CONTINUE; return;
        case STATEMENT_ASSERT:
            if (!ctTruth(st, s->op) && st->flow == CF_NORMAL) ctFail(st, tok, "an assertion in it fails");
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
            ctFail(st, tok, "it ends the test or the process");
            return;
        case STATEMENT_JOIN: case STATEMENT_SPAWN:
            ctFail(st, tok, "it starts tasks");
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

bool CtEvaluateGlobalInit(struct operand* op, struct type want, struct ctVal** out) {
    return ctEvaluateTop(op, want, out, NULL, NULL, NULL, NULL, NULL, true);
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
    ctFactList = ListInit(sizeof(struct ctFacts));
    ctFactsReady = true;
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
