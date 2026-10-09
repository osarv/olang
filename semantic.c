#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <sys/stat.h>
#include <dirent.h>
#include <unistd.h>
#include <limits.h>
#include <ctype.h>
#include <math.h>
#include <errno.h>
#include <stdint.h>
#include "util.h"
#include "token.h"
#include "syntax.h"
#include "errmsg.h"
#include "semantic.h"
#include "comptime.h"

static struct list allModules; //list of struct semaModule*
static struct semaModule* rootModule;

//the bare error (see the report): a single, program-wide BASETYPE_ERROR singleton with no owning
//module and exactly one synthetic word, standing in for "an error occurred, no further detail is
//tracked." Represented as an ordinary error type (with one word) specifically so it needs zero special
//casing anywhere ordinal encoding (errorTypeOrdinal/errorCode in codegen.c), try/catch coverage
//(checkTrySuperset/StatementCatchCoversType), or propagation (cgPropagateError) already handle any
//declared error type generically - TypeIsSame's own owner+name identity check already treats every use
//of this one shared instance as the same type, since it's always the exact same struct, never per-module
//like a real declared error type. Initialized once, in SemanticAnalyzeFile, before any module is loaded.
static struct type bareErrorType;

struct type* SemanticGenericErrorType(void) {
    return &bareErrorType;
}

//R15: "?" alone is the default error - a function that can fail without saying how. One that names its errors
//fails with those and nothing else, so the default error is added only to an empty list
static void addDefaultError(struct list* errors) {
    if (errors->len != 0) return;
    struct type* d = &bareErrorType;
    ListAdd(errors, &d);
}

//R17: a bare "?" function lets any error through as its own unnamed failure
static bool funcIsBareFallible(struct var* f) {
    return f && f->type.errors.len == 1 && *(struct type**)ListGetIdx(&f->type.errors, 0) == &bareErrorType;
}

static int lambdaCounter; //D16: names lambdas and the closures spawned ones are held in
struct checkCtx;
struct operand* OperandPendingLambda(struct checkCtx* ctx, struct syntax* node);
void FinalizeLambda(struct operand* op, struct type* expected);
static void finalizeStmtLambdas(struct statement* st);
void lambdaInferResult(struct var* f, struct list* vals, struct token tok);
static void noteFuncValueUse(struct var* f, struct token tok);
static void checkFuncValueUses(void);
bool lambdaInferError(struct var* f, struct type* e);

bool TypeIsPermRef(struct type t);
bool OperandNamesExistingStorage(struct operand* op);
//T25b: at the top of a declaration, "mut" is the binding's and - for a reference - its permission's
static void declPermission(struct var* v) {
    if (v->mut && TypeIsPermRef(v->type)) v->type.refMut = true;
}

struct list* SemanticAllModules(void) {
    return &allModules;
}

//M19d: the prelude is every file of <std>/prelude, each its own module
static struct list preludeModules;
//B3: every module sees the prelude without importing it, so the prelude's files are among the sources every
//object was compiled against
struct list* SemanticPreludeModules(void) {
    return &preludeModules;
}

//B5a: imports before importers, which is a post-order walk of the import graph. allModules itself is in
//DISCOVERY order - a module is registered before its imports are loaded, which is what lets a cycle close -
//so it puts the root first, and initializing in that order ran a root's global initializers before the
//globals they read had been set. A cycle's members stay in whatever order the walk reaches them (B5a).
static void initOrderVisit(struct semaModule* m, struct list* seen, struct list* out) {
    for (int i = 0; i < seen->len; i++) if (*(struct semaModule**)ListGetIdx(seen, i) == m) return;
    ListAdd(seen, &m);
    for (int i = 0; i < m->imports.len; i++) {
        initOrderVisit(((struct semaImport*)ListGetIdx(&m->imports, i))->mod, seen, out);
    }
    ListAdd(out, &m);
}

struct list SemanticInitOrder(void) {
    struct list seen = ListInit(sizeof(struct semaModule*));
    struct list out = ListInit(sizeof(struct semaModule*));
    for (int i = 0; i < allModules.len; i++) initOrderVisit(*(struct semaModule**)ListGetIdx(&allModules, i), &seen, &out);
    return out;
}

// ---- struct type ----

#define PTR_SIZE 8 //4 for 32bit
#define CHOICE_SIZE 4
#define ERROR_SIZE 4

long long TypeGetSize(struct type t);

//x86_64 SysV natural alignment (the same rule LLVM's own default, non-packed struct layout follows for
//the "%m0.Name = type { ... }" aggregates codegen.c emits) - needed so getStructSize's own byte count
//(fed to @malloc/@__olang_scope_alloc for a heap-promoted struct) actually matches the real size LLVM
//lays that same aggregate out at, padding included. See the report for the heap-corruption bug this fixes.
long long TypeGetAlign(struct type t) {
    switch (t.bType) {
        //a type variable never survives to codegen (G16 substitutes it away), so being asked for its
        //size or alignment means something failed to instantiate - a bug here, not a bad program
        case BASETYPE_TYPEVAR: ErrorBugFound(); return 1;
        case BASETYPE_NULL: ErrorBugFound(); return 1; //T2a: retagged before anything asks its size
        case BASETYPE_VOID: return 1;
        case BASETYPE_BOOL: return 1;
        //T17: a payload-free choice is exactly the i32 ordinal it always was. One that carries a payload
        //is { i64 tag, [N x i8] }, and the i64 tag is what puts the payload at an 8-aligned offset - an
        //i32 tag would leave a pointer or an i64 inside a payload under-aligned.
        case BASETYPE_CHOICE: return t.structMAlloc ? PTR_SIZE : ChoiceHasPayload(t) ? 8 : 4; //T17d: a reference is a pointer
        case BASETYPE_ERROR: return 4;
        case BASETYPE_FUNC: return PTR_SIZE;
        case BASETYPE_INTERFACE: return PTR_SIZE; //"{ ptr itab, ptr data }" - two pointers, 8-aligned
        case BASETYPE_SCOPE: return PTR_SIZE;
        case BASETYPE_ARRAY:
            if (t.arrMalloc) return PTR_SIZE; //"{ i64, ptr }" slice - both 8-aligned
            if (t.structMAlloc) return PTR_SIZE; //compile-time-length "&"-heap reference - just a pointer
            return TypeGetAlign(*t.arrElem);
        case BASETYPE_STRUCT: {
            if (t.structMAlloc) return PTR_SIZE;
            long long maxAlign = 1;
            for (int i = 0; i < t.vars.len; i++) {
                long long a = TypeGetAlign((*(struct var*)ListGetIdx(&t.vars, i)).type);
                if (a > maxAlign) maxAlign = a;
            }
            return maxAlign;
        }
        default: if (PrimInfo(t.bType)) return PrimInfo(t.bType)->bits / 8; //T4
    }
    return 1; //unreachable
}

long long getArraySize(struct type t) {
    //a runtime-length array VALUE is the full "{ i64 len, ptr data }" slice (16 bytes), not just the pointer -
    //fixed here alongside the new compile-time-length-reference case below; a real pre-existing undersizing bug,
    //same class as getStructSize's own padding bug (see the report): nothing sized a struct's malloc off
    //this specific branch until a struct could actually embed a runtime-length-array field and get heap-promoted,
    //so it was invisible until now.
    if (t.arrMalloc) return 16;
    if (t.structMAlloc) return PTR_SIZE; //compile-time-length "&"-heap reference - just a pointer, size is on the type
    long long n = t.arrLen ? t.arrLen->intLiteralVal : 0;
    return TypeGetSize(*t.arrElem) * n;
}

//lays fields out in declaration order, padding each one up to its own alignment (never reordered - same
//as LLVM's own literal struct layout) and rounding the final size up to the whole struct's own alignment
//(the usual "tail padding" so an array of these still aligns every element) - see TypeGetAlign
long long getStructSize(struct type t) {
    if (t.structMAlloc) return PTR_SIZE;
    long long offset = 0;
    long long structAlign = 1;
    for (int i = 0; i < t.vars.len; i++) {
        struct type ft = (*(struct var*)ListGetIdx(&t.vars, i)).type;
        long long align = TypeGetAlign(ft);
        if (align > structAlign) structAlign = align;
        offset = (offset + align - 1) / align * align;
        offset += TypeGetSize(ft);
    }
    return (offset + structAlign - 1) / structAlign * structAlign;
}

long long ArrayLengthLimit(long long elemSize) { return elemSize > 0 ? LLONG_MAX / elemSize : LLONG_MAX; }

long long TypeGetSize(struct type t) {
    switch (t.bType) {
        case BASETYPE_TYPEVAR: ErrorBugFound(); return 0; //see TypeGetAlign
        case BASETYPE_NULL: ErrorBugFound(); return 0; //see TypeGetAlign
        case BASETYPE_VOID: return 0;
        case BASETYPE_BOOL: return 1;
        case BASETYPE_ARRAY: return getArraySize(t);
        case BASETYPE_STRUCT: return getStructSize(t);
        case BASETYPE_CHOICE: return t.structMAlloc ? PTR_SIZE : ChoiceHasPayload(t) ? 8 + ChoicePayloadSize(t) : CHOICE_SIZE;
        case BASETYPE_FUNC: return PTR_SIZE;
        case BASETYPE_INTERFACE: return 2 * PTR_SIZE; //T33: the (concrete type, instance) pair
        case BASETYPE_ERROR: return ERROR_SIZE;
        case BASETYPE_SCOPE: return PTR_SIZE;
        default: if (PrimInfo(t.bType)) return PrimInfo(t.bType)->bits / 8; //T4
    }
    return 0; //unreachable
}

static char* typeVanillaNullStr = "null"; //T2a
static char* typeVanillaBoolStr = "Bool";

//T4: the numeric primitives. Integers widen within signed and unsigned and from unsigned into a wider signed; floats
//F16 and BF16 into F32 into F64 (T6b) - NumericFlows reads it off this table
static const struct primInfo prims[] = {
    { BASETYPE_I8, "I8", 8, 'i', "i8" },       { BASETYPE_I16, "I16", 16, 'i', "i16" },
    { BASETYPE_INT32, "I32", 32, 'i', "i32" }, { BASETYPE_INT64, "I64", 64, 'i', "i64" },
    { BASETYPE_BYTE, "U8", 8, 'u', "i8" },     { BASETYPE_U16, "U16", 16, 'u', "i16" },
    { BASETYPE_U32, "U32", 32, 'u', "i32" },   { BASETYPE_U64, "U64", 64, 'u', "i64" },
    { BASETYPE_F16, "F16", 16, 'f', "half" },  { BASETYPE_BF16, "BF16", 16, 'f', "bfloat" },
    { BASETYPE_FLOAT32, "F32", 32, 'f', "float" }, { BASETYPE_FLOAT64, "F64", 64, 'f', "double" },
};

const struct primInfo* PrimInfo(enum baseType b) {
    for (size_t i = 0; i < sizeof(prims) / sizeof(prims[0]); i++) if (prims[i].b == b) return &prims[i];
    return NULL;
}

bool PrimByName(struct str name, enum baseType* out) {
    for (size_t i = 0; i < sizeof(prims) / sizeof(prims[0]); i++) {
        if (StrCmp(name, StrFromCStr((char*)prims[i].name))) { *out = prims[i].b; return true; }
    }
    return false;
}

//E33: v's bit pattern as float type b - F64's is v's own, the narrower types' v rounded to them (T4), except that a NaN
//keeps its sign and the top of its payload, as LLVM writes a narrower NaN in a double (MinifloatFrom)
unsigned long long FloatBits(double v, enum baseType b) {
    switch (b) {
        case BASETYPE_F16: return MinifloatFrom(v, 5, 10);
        case BASETYPE_BF16: return MinifloatFrom(v, 8, 7);
        case BASETYPE_FLOAT32: {
            if (isnan(v)) return MinifloatFrom(v, 8, 23); //(float)v would quiet a signalling NaN
            float f = (float)v;
            uint32_t u;
            memcpy(&u, &f, sizeof(u));
            return u;
        }
        default: {
            unsigned long long u;
            memcpy(&u, &v, sizeof(u));
            return u;
        }
    }
}

//E33: the value float type b's bit pattern denotes, held as FloatBits reads it back - exact, NaNs included
double FloatFromBits(unsigned long long bits, enum baseType b) {
    switch (b) {
        case BASETYPE_F16: return MinifloatTo((unsigned)bits & 0xFFFF, 5, 10);
        case BASETYPE_BF16: return MinifloatTo((unsigned)bits & 0xFFFF, 8, 7);
        case BASETYPE_FLOAT32: {
            uint32_t u = (uint32_t)bits;
            float f;
            memcpy(&f, &u, sizeof(f));
            if (isnan(f)) return MinifloatTo(u, 8, 23); //(double)f would quiet a signalling NaN
            return (double)f;
        }
        default: {
            double d;
            memcpy(&d, &bits, sizeof(d));
            return d;
        }
    }
}

bool TypeIsUnsigned(struct type t) { const struct primInfo* p = PrimInfo(t.bType); return p && p->kind == 'u'; }

struct type TypeVanilla(enum baseType bType) {
    struct type t = (struct type){0};
    switch (bType) {
        case BASETYPE_VOID: t.bType = BASETYPE_VOID; return t;
        case BASETYPE_NULL: t.name.ptr = typeVanillaNullStr; break; //T2a - the "null" literal's own type
        case BASETYPE_BOOL: t.name.ptr = typeVanillaBoolStr; break;
        default:
            if (!PrimInfo(bType)) ErrorBugFound();
            t.name.ptr = (char*)PrimInfo(bType)->name;
    }
    t.name.len = (int)strlen(t.name.ptr);
    t.bType = bType;
    return t;
}

bool isTypeVanilla(enum baseType bType) {
    switch (bType) {
        case BASETYPE_BOOL: return true;
        default: return PrimInfo(bType) != NULL;
    }
}

struct type TypeFromType(struct str name, struct token tok, struct type tFrom) {
    tFrom.name = name;
    tFrom.tok = tok;
    return tFrom;
}

bool TypeIsByteArray(struct type t) {
    if (t.bType != BASETYPE_ARRAY) return false;
    if (t.arrElem->bType != BASETYPE_BYTE) return false;
    return true;
}

bool typeCmpForList(void* name, void* elem) {
    struct str searchName = *(struct str*)name;
    struct str elemName = ((struct type*)elem)->name;
    return StrCmp(searchName, elemName);
}

struct type* TypeGetList(struct list* l, struct str name) {
    return ListGetCmp(l, &name, typeCmpForList);
}
bool isPublic(struct str name);
//T35b: a type named in module mod - its own, or else one the prelude exports, which every module sees without
//an import. The prelude never falls back to itself.
static struct list preludeTypeNames; //struct str: every prelude file's declared type names, scanned before parsing
static bool isPreludeModule(struct semaModule* mod) {
    for (int i = 0; i < preludeModules.len; i++) if (*(struct semaModule**)ListGetIdx(&preludeModules, i) == mod) return true;
    return false;
}
static struct type* preludeType(struct str name) {
    if (!isPublic(name)) return NULL;
    for (int i = 0; i < preludeModules.len; i++) {
        struct type* t = TypeGetList(&(*(struct semaModule**)ListGetIdx(&preludeModules, i))->types, name);
        if (t) return t;
    }
    return NULL;
}
struct type* typeNamed(struct semaModule* mod, struct str name) {
    struct type* t = TypeGetList(&mod->types, name);
    return t ? t : preludeType(name);
}

struct str strFromTok(struct token tok);
//T4: case-insensitive edit distance, for suggesting the type a misspelt name probably meant
static int nameDistance(struct str a, struct str b) {
    if (a.len > 40 || b.len > 40) return 99;
    int d[41][41];
    for (int i = 0; i <= a.len; i++) d[i][0] = i;
    for (int j = 0; j <= b.len; j++) d[0][j] = j;
    for (int i = 1; i <= a.len; i++) for (int j = 1; j <= b.len; j++) {
        int sub = d[i-1][j-1] + (tolower((unsigned char)a.ptr[i-1]) != tolower((unsigned char)b.ptr[j-1]));
        int del = d[i-1][j] + 1, ins = d[i][j-1] + 1;
        d[i][j] = sub < del ? (sub < ins ? sub : ins) : (del < ins ? del : ins);
    }
    return d[a.len][b.len];
}

static void considerName(struct str name, struct str cand, struct str* best, int* bestD) {
    int dist = nameDistance(name, cand);
    if (dist < *bestD) { *bestD = dist; *best = cand; }
}

//the name a misspelt one most likely meant: a number's name shortened to its letter and width (Int32 -> I32,
//Float64 -> F64, Uint8 -> U8), else the nearest type - declared, the prelude's or built in - or, withVars, global
static struct str suggestName(struct semaModule* mod, struct str name, bool withVars) {
    struct str best = {0};
    if (name.len >= 2 && isDigit(name.ptr[name.len -1])) {
        int k = name.len;
        while (k > 0 && isDigit(name.ptr[k -1])) k--;
        char buf[16];
        if (name.len - k < 8) {
            buf[0] = (char)toupper((unsigned char)name.ptr[0]);
            memcpy(buf + 1, name.ptr + k, name.len - k);
            buf[1 + name.len - k] = '\0';
            enum baseType pb;
            if (PrimByName(StrFromCStr(buf), &pb)) return StrFromCStr((char*)PrimInfo(pb)->name);
        }
    }
    if (StrCmp(name, StrFromCStr("Byte"))) return StrFromCStr("U8");
    int bestD = name.len <= 4 ? 2 : 3;
    for (size_t i = 0; i < sizeof(prims) / sizeof(prims[0]); i++) considerName(name, StrFromCStr((char*)prims[i].name), &best, &bestD);
    considerName(name, StrFromCStr("Bool"), &best, &bestD);
    considerName(name, StrFromCStr("Array"), &best, &bestD);
    if (mod) for (int i = 0; i < mod->types.len; i++) considerName(name, ((struct type*)ListGetIdx(&mod->types, i))->name, &best, &bestD);
    for (int i = 0; i < preludeTypeNames.len; i++) considerName(name, *(struct str*)ListGetIdx(&preludeTypeNames, i), &best, &bestD);
    if (withVars && mod) for (int i = 0; i < mod->vars.len; i++) {
        struct var* v = ListGetIdx(&mod->vars, i);
        if (v->name.len && v->name.ptr[0] != '$' && !memchr(v->name.ptr, '$', v->name.len)) considerName(name, v->name, &best, &bestD);
    }
    return best;
}

//"<what> 'Int32' - did you mean 'I32'?", or "<what> 'x' - <otherwise>"
static void reportUnknownName(struct semaModule* mod, struct token tok, const char* what, bool withVars, const char* otherwise) {
    struct str name = strFromTok(tok);
    struct str best = suggestName(mod, name, withVars);
    char msg[512];
    if (best.len) {
        bool number = PrimByName(best, &(enum baseType){0});
        snprintf(msg, sizeof(msg), "%s '%.*s' - did you mean '%.*s'?%s", what, name.len, name.ptr, best.len, best.ptr,
                 number ? " The numbers are I8 I16 I32 I64, U8 U16 U32 U64 and F16 BF16 F32 F64 (T4)" : "");
    } else {
        snprintf(msg, sizeof(msg), "%s '%.*s' - %s", what, name.len, name.ptr, otherwise);
    }
    ErrMsgSemantic(tok, msg);
}

static struct type unknownTypeStandIn(void) { struct type t = TypeVanilla(BASETYPE_INT32); t.unknown = true; return t; }
static struct operand* unknownPlaceholder(struct token tok);

static void reportUnknownType(struct semaModule* mod, struct token nameTok) {
    reportUnknownName(mod, nameTok, "unknown type", false,
                      "no type of this name is declared in this module or the prelude; another module's type is written 'alias.Name'");
}


bool TypeIsNumeric(struct type t) { return PrimInfo(t.bType) != NULL; }
bool TypeIsInt(struct type t) { const struct primInfo* p = PrimInfo(t.bType); return p && p->kind != 'f'; }
bool TypeIsFloat(struct type t) { const struct primInfo* p = PrimInfo(t.bType); return p && p->kind == 'f'; }

//T29: two types share a REPRESENTATION when they differ only in one of them being declared - which is
//exactly what makes converting between them free, emitting no instruction at all.
bool TypeIsSameRepr(struct type a, struct type b) {
    a.owner = NULL;
    a.name = (struct str){0};
    b.owner = NULL;
    b.name = (struct str){0};
    return TypeIsSame(a, b);
}

//T25b: identity with permission compared too - which it is at every level inside another type
static bool typeSameNested(struct type a, struct type b);

bool TypeIsSame(struct type a, struct type b) {
    if (a.bType != b.bType) return false;
    //T27: reference-shapedness is part of a type's identity. "Point" and "Point&" are different types - one
    //is an aggregate, the other a pointer to one - and converting between them is PROMOTION (E12/O6, see
    //typePromotesToReference), an assignability rule with a real allocation behind it, not a claim that the
    //two were the same type all along. Fusing the two used to make this leniency recurse into element
    //types, where no promotion exists: "Cell&[2]" (two pointers) type-checked against "Cell[2]" (two inline
    //Cells) and the pointers were read straight back as field data. The scope NAME on a marker stays out of
    //identity (T25) - that is an ownership claim, not a representation.
    //...except where the marker changes no representation: a runtime-length array (T11) is reference-shaped
    //unconditionally, so "byte[]" and "byte[]&" are both { len, ptr } and the marker carries nothing but a
    //scope name, which T25 keeps out of identity. Identity tracks representation, not annotation.
    if (a.structMAlloc != b.structMAlloc) return false;
    if (isTypeVanilla(a.bType)) {
        //T29: a DECLARED type is nominal even when its underlying shape is a primitive. "type Meters int32"
        //and "type Feet int32" are different types, and both differ from int32 - which is the entire point
        //of naming one, and what lets a method belong to it. Without this a named primitive was a
        //transparent alias: it had a name but no identity, so nothing could be attached to it and nothing
        //it was passed to could tell it apart. Confined to the vanilla branch deliberately: struct, choice
        //and error types already compare by owner+name below, and func/array/typevar have their own rules
        //that an owner check would wrongly override.
        bool aNamed = a.owner != NULL;
        bool bNamed = b.owner != NULL;
        if (aNamed != bNamed) return false;
        if (aNamed && (a.owner != b.owner || !StrCmp(a.name, b.name))) return false;
        return true;
    }
    switch (a.bType) {
        //two type variables are the same type only if they are the same variable. Only ever reached while
        //checking an uninstantiated generic's own declaration against itself; after instantiation (G16)
        //neither side is a variable any more.
        case BASETYPE_TYPEVAR: return StrCmp(a.name, b.name);
        case BASETYPE_ARRAY:
            //T29 reaches an array too. It was confined to the vanilla branch because "func/array/typevar
            //have their own rules that an owner check would wrongly override" - one sentence covering
            //three cases, and arrays were collateral: enabling it here breaks nothing in the corpus.
            //This is what lets "type String byte[]" have methods and satisfy interfaces while keeping the
            //same representation, so it still marshals to C and still indexes with "[]".
            if ((a.owner != NULL) != (b.owner != NULL)) return false;
            if (a.owner != NULL && (a.owner != b.owner || !StrCmp(a.name, b.name))) return false;
            if (a.arrMalloc != b.arrMalloc) return false;
            //a real, previously-latent bug fixed alongside the array-literal rework below: this never
            //compared the two fixed sizes at all, so e.g. "x mut int32[5] = <an int32[3] value>" silently
            //type-checked - a buffer over-read the moment cgStoreInto's by-ref load/store pair ran, reading
            //5 elements' worth out of a 3-element backing store. Both sides are fixed here (arrMalloc
            //already confirmed equal above and neither is a runtime-length slice), so arrLen is always populated.
            if (!a.arrMalloc && a.arrLen->intLiteralVal != b.arrLen->intLiteralVal) return false;
            return typeSameNested(*a.arrElem, *b.arrElem);
        case BASETYPE_FUNC: {
            if (a.vars.len != b.vars.len) return false;
            for (int i = 0; i < a.vars.len; i++) {
                struct var* va = ListGetIdx(&a.vars, i);
                struct var* vb = ListGetIdx(&b.vars, i);
                if (va->mut != vb->mut || !typeSameNested(va->type, vb->type)) return false;
            }
            if (a.hasRetType != b.hasRetType) return false;
            if (a.hasRetType && !typeSameNested(*a.retType, *b.retType)) return false;
            //T22: the same errors in the same order - a fallible call reports an error by its position
            if (a.errors.len != b.errors.len) return false;
            for (int i = 0; i < a.errors.len; i++) {
                if (!TypeIsSame(**(struct type**)ListGetIdx(&a.errors, i), **(struct type**)ListGetIdx(&b.errors, i))) return false;
            }
            return true;
        }
        //struct/choice/error are always named declarations - identity is owner+name
        default:
            //D8c: a multi-value result has no name; two are the same when their elements are
            if (a.isTuple || b.isTuple) {
                if (a.isTuple != b.isTuple || a.vars.len != b.vars.len) return false;
                for (int i = 0; i < a.vars.len; i++) {
                    if (!typeSameNested((*(struct var*)ListGetIdx(&a.vars, i)).type,
                                    (*(struct var*)ListGetIdx(&b.vars, i)).type)) return false;
                }
                return true;
            }
            if (a.owner != b.owner) return false;
            return StrCmp(a.name, b.name);
    }
}

static bool typeSameNested(struct type a, struct type b) {
    if (TypeIsPermRef(a) && TypeIsPermRef(b) && a.refMut != b.refMut) return false;
    return TypeIsSame(a, b);
}

//T25b: identity including the outermost permission - for what must be one type exactly, as a generic's
//arguments must be for two calls to share an instantiation
bool TypeIsSameStrict(struct type a, struct type b) { return typeSameNested(a, b); }

char* TypeDescribe(struct type t) {
    static char buf[256];
    if (t.name.len > 0 && t.name.len < (int)sizeof(buf)) {
        memcpy(buf, t.name.ptr, (size_t)t.name.len);
        buf[t.name.len] = '\0';
        return buf;
    }
    switch (t.bType) {
        case BASETYPE_ARRAY: return "array type";
        case BASETYPE_STRUCT: return "struct type";
        case BASETYPE_CHOICE: return "enum type";
        case BASETYPE_INTERFACE: return "trait";
        case BASETYPE_FUNC: return "func type";
        case BASETYPE_ERROR: return "error type";
        case BASETYPE_SCOPE: return "scope";
        default: return "type";
    }
}

// ---- struct var ----

struct var* VarAllocSetOrigin() {
    struct var* v = MallocOrCrash(sizeof(struct var));
    *v = (struct var){0};
    v->origin = v;
    return v;
}

bool varCmpForList(void* name, void* elem) {
    struct str searchName = *(struct str*)name;
    struct str elemName = ((struct var*)elem)->name;
    return StrCmp(searchName, elemName);
}

struct var* VarGetList(struct list* l, struct str name) {
    //M19: a method lives in its own namespace, keyed by its receiver type, and is reached only as
    //"x.f(...)". Hiding it from every by-name lookup is what makes that true everywhere at once - a plain
    //call, a function value, a global of the same name - rather than at each site that might find one.
    for (int i = 0; i < l->len; i++) {
        struct var* v = ListGetIdx(l, i);
        if (!v->isMethod && StrCmp(v->name, name)) return v;
    }
    return NULL;
}

void VarListAddSetOrigin(struct list* l, struct var v) {
    ListAdd(l, &v);
    struct var* vPtr = ListGetIdx(l, l->len -1);
    vPtr->origin = vPtr;
}

// ---- struct statement ----

void StatementAdd(struct list* codeBlock, struct statement s) {
    ListAdd(codeBlock, &s);
}

//true if every word of errType is covered by matches: either a whole-type match ("catch MyError") or,
//word by word, a specific-word match for each one ("catch MyError.A || MyError.B" when A/B are all of
//them). Shared below (which errors need declaring in the enclosing signature) and by codegen.c (whether
//a try/catch statement's propagate path is even reachable).
//the BuiltinError words the check being caught can actually produce - a checked index only OUT_OF_BOUNDS - so
//catching those is complete; 0 means every word of every type, as for a call
static unsigned builtinWordMask;
struct type* SemanticBuiltinErrorType(void);

bool StatementCatchCoversType(struct list* matches, struct type errType) {
    for (int i = 0; i < matches->len; i++) {
        struct catchMatch* cm = ListGetIdx(matches, i);
        if (!cm->hasWord && TypeIsSame(cm->errType, errType)) return true;
    }
    struct type* builtin = builtinWordMask ? SemanticBuiltinErrorType() : NULL;
    bool masked = builtin && TypeIsSame(errType, *builtin);
    for (int w = 0; w < errType.words.len; w++) {
        if (masked && !(builtinWordMask & (1u << w))) continue;
        bool covered = false;
        for (int i = 0; i < matches->len; i++) {
            struct catchMatch* cm = ListGetIdx(matches, i);
            if (cm->hasWord && cm->wordOrdinal == w && TypeIsSame(cm->errType, errType)) { covered = true; break; }
        }
        if (!covered) return false;
    }
    return true;
}

// ---- parse tree walking helpers ----

struct syntaxPart* partAt(struct syntax* s, int i) {
    return ListGetIdx(&s->parts, i);
}

struct syntax* partSntx(struct syntax* s, int i) {
    return partAt(s, i)->sntx;
}

struct syntax* firstPartOfType(struct syntax* s, enum syntaxType t) {
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = partAt(s, i);
        if (!p->isToken && p->sntx->type == t) return p->sntx;
    }
    return NULL;
}

struct list allPartsOfType(struct syntax* s, enum syntaxType t) {
    struct list result = ListInit(sizeof(struct syntax*));
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = partAt(s, i);
        if (!p->isToken && p->sntx->type == t) ListAdd(&result, &p->sntx);
    }
    return result;
}

//all direct !isToken children of s, in original parse order, regardless of type - used where an args list
//can mix item shapes (see buildArrLiteralLevel: each item is either a nested bracket group or a plain
//SNTX_EXPR), unlike allPartsOfType which only ever collects one uniform type.
struct list allSyntaxParts(struct syntax* s) {
    struct list result = ListInit(sizeof(struct syntax*));
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = partAt(s, i);
        if (!p->isToken) ListAdd(&result, &p->sntx);
    }
    return result;
}

bool hasTokOfType(struct syntax* s, enum tokenType t) {
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = partAt(s, i);
        if (p->isToken && p->tok.type == t) return true;
    }
    return false;
}

struct token firstTokOfType(struct syntax* s, enum tokenType t) {
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = partAt(s, i);
        if (p->isToken && p->tok.type == t) return p->tok;
    }
    ErrorBugFound();
    return (struct token){0};
}

//unlike firstTokOfType, doesn't care which token type it lands on and recurses into nested nodes - for
//pointing an error message at "wherever this subtree starts", when there's no single token guaranteed to
//exist as a direct child (e.g. a ret-type node, which - since the '?' marker moved to the error-list, see
//D8's own history - now wraps nothing but a type-expr, itself possibly several syntax levels deep)
struct token firstTokAnywhere(struct syntax* s) {
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = partAt(s, i);
        if (p->isToken) return p->tok;
        struct token found = firstTokAnywhere(p->sntx);
        if (found.type != TOK_NONE) return found;
    }
    return (struct token){0};
}

struct list allTokOfType(struct syntax* s, enum tokenType t) {
    struct list result = ListInit(sizeof(struct token));
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = partAt(s, i);
        if (p->isToken && p->tok.type == t) ListAdd(&result, &p->tok);
    }
    return result;
}

struct str strFromTok(struct token tok) {
    return Str(tok.str.ptr, tok.str.len);
}

// ---- visibility ----

bool isPublic(struct str name) {
    if (name.len <= 0) ErrorBugFound();
    char c = name.ptr[0];
    return c >= 'A' && c <= 'Z';
}

// ---- module loading ----

bool semaModuleCmpForList(void* name, void* elem) {
    struct str searchName = *(struct str*)name;
    struct semaModule* m = *(struct semaModule**)elem;
    return StrCmp(searchName, m->fileName);
}

struct semaModule* findLoadedModule(struct str fileName) {
    struct semaModule** slot = ListGetCmp(&allModules, &fileName, semaModuleCmpForList);
    return slot ? *slot : NULL;
}

struct semaModule* findImport(struct semaModule* mod, struct str alias);

//consulted by the parser (see TypeNameLookup in syntax.h) only to tell "Type{values}" (a struct literal)
//apart from "condition { block }" - never authoritative, semantic analysis proper (below) still does the
//real name resolution/visibility checks (including privacy - deliberately not checked here either, same
//as before this walked a chain at all). Safe to call mid-parse because declaredTypeNames is fully
//populated for this module *and* every module it imports before ParseSyntax ever runs - see
//semaLoadModule: each module scans its own top-level names before recursing into its imports, so even a
//cyclic import pair has both sides' names ready by the time either one's real parse starts.
//Walks aliasChain hop by hop via findImport, same as resolveAliasChain's own first-hop-through-however-
//many-more shape, minus the public/cycle enforcement (irrelevant here - this is only ever a "should I
//commit to literal syntax" guess, re-checked for real afterward). mod->imports, unlike declaredTypeNames,
//is only guaranteed complete for a module whose own semaLoadModule call has fully returned by the time
//this runs - true for every module reachable this way except one, narrow, accepted edge: a literal
//reached through a chain that passes through the *other* side of a raw import cycle's own further
//re-exports, mid-load, at the exact moment that side's own parse is what's currently running. Returns
//false there (same as an unrecognized alias), same honest "falls through to a parse error" fallback as
//every other not-yet-resolvable case already gets - not a silent misresolution.
bool isKnownTypeForParsing(void* ctxPtr, struct list aliasChain, struct str name) {
    struct semaModule* mod = ctxPtr;
    if (aliasChain.len == 0 && StrCmp(name, StrFromCStr("Array"))) return true; //T7: "Array<T>(n)"
    struct semaModule* target = mod;
    for (int i = 0; i < aliasChain.len; i++) {
        struct str* alias = ListGetIdx(&aliasChain, i);
        target = findImport(target, *alias);
        if (!target) return false;
    }
    for (int i = 0; i < target->declaredTypeNames.len; i++) {
        struct str* n = ListGetIdx(&target->declaredTypeNames, i);
        if (StrCmp(*n, name)) return true;
    }
    //M19d: the prelude's exported types are named bare in every module ("Pair<Int32, Int32>(1, 2)") - and inside the
    //prelude itself, whose files are parsed one after another, which is why they are scanned up front
    if (aliasChain.len == 0 && isPublic(name)) {
        for (int i = 0; i < preludeTypeNames.len; i++) {
            if (StrCmp(*(struct str*)ListGetIdx(&preludeTypeNames, i), name)) return true;
        }
    }
    return false;
}

// ---- M23: where an import points ----
//
//An import names a FILE, without its extension, in one of three forms told apart by shape alone:
//  "std/x"          a file of the standard library, found under OLANG_STD or <compiler>/../std
//  "host/owner/repo[@ref]/path"  a file in a remote repository, fetched once with git into OLANG_CACHE
//                   (default ~/.cache/olang) and read from there from then on - a host always has a dot
//  anything else    a file relative to the IMPORTING module's own directory, never the working directory:
//                   a module found in the cache or in std/ means its own neighbours. Inside std/ or a remote
//                   repository a relative import stays inside it.
//A directory is never a module (M1): it only groups files.

static char* heapCopy(const char* s) {
    char* r = MallocOrCrash(strlen(s) + 1);
    strcpy(r, s);
    return r;
}

static bool pathIsDir(const char* p) {
    struct stat st;
    return stat(p, &st) == 0 && S_ISDIR(st.st_mode);
}

static bool pathExists(const char* p) {
    struct stat st;
    return stat(p, &st) == 0;
}

static char* stdRoot(void) {
    char* env = getenv("OLANG_STD");
    if (env && *env) return env;
    static char buf[PATH_MAX];
    ssize_t n = readlink("/proc/self/exe", buf, sizeof(buf) - 16);
    if (n <= 0) return "std";
    buf[n] = '\0';
    char* slash = strrchr(buf, '/');
    if (slash) *slash = '\0';
    strcat(buf, "/../std");
    return buf;
}

//the directory relative imports of `mod` resolve against: its own file's
static char* moduleDir(struct semaModule* mod) {
    char buf[PATH_MAX];
    StrToCStr(mod->fileName, buf);
    char* slash = strrchr(buf, '/');
    if (!slash) return heapCopy(".");
    *slash = '\0';
    return heapCopy(buf[0] ? buf : "/");
}

static struct str lastPathElement(const char* p, bool dropExt) {
    const char* start = p;
    for (const char* c = p; *c; c++) if (*c == '/' && c[1]) start = c + 1;
    size_t len = strlen(start);
    while (len > 0 && start[len - 1] == '/') len--;
    if (dropExt && len > 6 && !strncmp(start + len - 6, ".olang", 6)) len -= 6;
    char* out = MallocOrCrash(len + 1);
    memcpy(out, start, len);
    out[len] = '\0';
    return StrFromCStr(out);
}

//M23b: the lock file - "olang.lock" beside the root module, one line per remote repository: its key
//(host/owner/repo[@ref]) and the commit the program is built from. A repository with a line is that commit and
//nothing else; one without is resolved to its ref's current commit, which is then written in. Deleting a line (or the
//file) is how a repository is updated. A git commit names its exact content, so it is its own checksum.
static char lockPath[PATH_MAX + 16];
static char lockLoadedFor[PATH_MAX + 16];
static struct list lockKeys;    //char*
static struct list lockCommits; //char*, index-aligned

static void lockLoad(void) {
    if (!strcmp(lockLoadedFor, lockPath)) return;
    snprintf(lockLoadedFor, sizeof(lockLoadedFor), "%s", lockPath);
    lockKeys = ListInit(sizeof(char*));
    lockCommits = ListInit(sizeof(char*));
    FILE* f = fopen(lockPath, "r");
    if (!f) return;
    char line[1024];
    while (fgets(line, sizeof(line), f)) {
        char k[512], c[128];
        if (line[0] == '#' || sscanf(line, "%511s %127s", k, c) != 2) continue;
        char* kc = heapCopy(k);
        char* cc = heapCopy(c);
        ListAdd(&lockKeys, &kc);
        ListAdd(&lockCommits, &cc);
    }
    fclose(f);
}

//M23c: "-u" - each repository the compilation reaches is resolved afresh, once, whatever its line says. Updated
//keys are recorded with the lock file they belong to, so another root's lock in the same run is its own.
static bool updateLocks;
static struct list lockUpdated; //char*: lock path, a newline, the key

void SemanticSetUpdate(bool on) { updateLocks = on; }

static bool lockUpdatedNow(const char* key, bool mark) {
    char k[PATH_MAX * 2 + 32];
    snprintf(k, sizeof(k), "%s\n%s", lockPath, key);
    if (!lockUpdated.elemSize) lockUpdated = ListInit(sizeof(char*));
    for (int i = 0; i < lockUpdated.len; i++) if (!strcmp(*(char**)ListGetIdx(&lockUpdated, i), k)) return true;
    if (mark) {
        char* kc = heapCopy(k);
        ListAdd(&lockUpdated, &kc);
    }
    return false;
}

static const char* lockFind(const char* key) {
    lockLoad();
    for (int i = 0; i < lockKeys.len; i++) {
        if (!strcmp(*(char**)ListGetIdx(&lockKeys, i), key)) return *(char**)ListGetIdx(&lockCommits, i);
    }
    return NULL;
}

//records key at commit - replacing the line it had, or adding one - and writes the whole file back, sorted, so it
//reads the same however it was built up. A line that already says commit is left alone, file and all.
static void lockSet(const char* key, const char* commit) {
    lockLoad();
    int at = -1;
    for (int i = 0; i < lockKeys.len && at < 0; i++) if (!strcmp(*(char**)ListGetIdx(&lockKeys, i), key)) at = i;
    if (at >= 0 && !strcmp(*(char**)ListGetIdx(&lockCommits, at), commit)) return;
    char* cc = heapCopy(commit);
    if (at >= 0) {
        *(char**)ListGetIdx(&lockCommits, at) = cc;
    } else {
        char* kc = heapCopy(key);
        ListAdd(&lockKeys, &kc);
        ListAdd(&lockCommits, &cc);
    }
    FILE* f = fopen(lockPath, "w");
    if (!f) return;
    fputs("# olang.lock - the commit each remote repository is built from (M23b). Delete a line to update that\n"
          "# repository, or build with -u to update every one the build reaches (M23c).\n", f);
    bool* done = MallocOrCrash(sizeof(bool) * (size_t)(lockKeys.len + 1));
    for (int i = 0; i < lockKeys.len; i++) done[i] = false;
    for (int n = 0; n < lockKeys.len; n++) {
        int best = -1;
        for (int i = 0; i < lockKeys.len; i++) {
            if (done[i]) continue;
            if (best < 0 || strcmp(*(char**)ListGetIdx(&lockKeys, i), *(char**)ListGetIdx(&lockKeys, best)) < 0) best = i;
        }
        done[best] = true;
        fprintf(f, "%s %s\n", *(char**)ListGetIdx(&lockKeys, best), *(char**)ListGetIdx(&lockCommits, best));
    }
    free(done);
    fclose(f);
}

//the commit a checked-out repository is at, or "" when it cannot be read
static void gitHead(const char* dir, char* out, size_t n) {
    out[0] = '\0';
    char cmd[PATH_MAX * 2 + 64];
    snprintf(cmd, sizeof(cmd), "git -C '%s' rev-parse HEAD 2>/dev/null", dir);
    FILE* p = popen(cmd, "r");
    if (!p) return;
    if (!fgets(out, (int)n, p)) out[0] = '\0';
    pclose(p);
    out[strcspn(out, "\n")] = '\0';
}

//M23a/M23b: host/owner/repo[@ref] at the commit the lock file names - or, with no line for it, at its ref's current
//commit, which is then locked. Kept in the cache by commit (OLANG_CACHE/host/owner/repo/<commit>), fetched once and
//read from there from then on, so a locked build needs no network. Returns the local repository directory.
static char* fetchRemote(const char* host, const char* owner, const char* repoAt, struct token tok) {
    char repo[256], ref[256] = "";
    snprintf(repo, sizeof(repo), "%s", repoAt);
    char* at = strchr(repo, '@');
    if (at) { snprintf(ref, sizeof(ref), "%s", at + 1); *at = '\0'; }
    char cache[PATH_MAX];
    char* env = getenv("OLANG_CACHE");
    if (env && *env) snprintf(cache, sizeof(cache), "%s", env);
    else snprintf(cache, sizeof(cache), "%s/.cache/olang", getenv("HOME") ? getenv("HOME") : ".");
    //OLANG_GIT_BASE replaces "https://" - for a mirror, or a local repository in tests
    char* base = getenv("OLANG_GIT_BASE");
    if (!base || !*base) base = "https://";
    char key[PATH_MAX], url[PATH_MAX], parent[PATH_MAX], dir[PATH_MAX], cmd[PATH_MAX * 16];
    bool fits = true; //a path too long to build is a fetch that cannot be made
    fits = fits && (size_t)snprintf(key, sizeof(key), "%s/%s/%s", host, owner, repoAt) < sizeof(key);
    fits = fits && (size_t)snprintf(url, sizeof(url), "%s%s/%s/%s", base, host, owner, repo) < sizeof(url);
    fits = fits && (size_t)snprintf(parent, sizeof(parent), "%s/%s/%s/%s", cache, host, owner, repo) < sizeof(parent);
    if (!fits) { ErrMsgSemantic(tok, IMPORT_FETCH_FAILED); return NULL; }
    const char* locked = lockFind(key);
    //M23c: under -u a locked line is set aside the first time its repository is reached
    char was[128] = "";
    if (locked && updateLocks && !lockUpdatedNow(key, false)) {
        snprintf(was, sizeof(was), "%s", locked);
        locked = NULL;
    }
    if (locked) {
        fits = fits && (size_t)snprintf(dir, sizeof(dir), "%s/%s", parent, locked) < sizeof(dir);
        if (pathIsDir(dir)) return heapCopy(dir);
        fprintf(stderr, "olang: fetching %s into %s at %.12s, as olang.lock says\n", key, cache, locked);
        //a shallow fetch of the one commit where the server allows it, else the whole history and a checkout
        fits = fits && (size_t)snprintf(cmd, sizeof(cmd), "mkdir -p '%s' && (git init -q '%s' && git -C '%s' fetch -q --depth 1 '%s' '%s' "
                 "&& git -C '%s' checkout -q FETCH_HEAD || (rm -rf '%s' && git clone -q '%s' '%s' && git -C '%s' "
                 "checkout -q '%s')) >/dev/null 2>&1", parent, dir, dir, url, locked, dir, dir, url, dir, dir, locked) < sizeof(cmd);
        char head[128];
        if (fits && system(cmd) == 0) gitHead(dir, head, sizeof(head));
        else head[0] = '\0';
        if (strcmp(head, locked) != 0) {
            fits = fits && (size_t)snprintf(cmd, sizeof(cmd), "rm -rf '%s'", dir) < sizeof(cmd);
            if (system(cmd) != 0) { /* nothing more to undo */ }
            ErrMsgSemantic(tok, IMPORT_LOCKED_FETCH_FAILED);
            return NULL;
        }
        return heapCopy(dir);
    }
    char tmp[PATH_MAX];
    fits = fits && (size_t)snprintf(tmp, sizeof(tmp), "%s/.fetch-%d", parent, (int)getpid()) < sizeof(tmp);
    fits = fits && (size_t)snprintf(cmd, sizeof(cmd), "mkdir -p '%s' && rm -rf '%s' && git clone --quiet --depth 1 %s%s%s '%s' '%s' 2>/dev/null",
             parent, tmp, ref[0] ? "--branch '" : "", ref, ref[0] ? "'" : "", url, tmp) < sizeof(cmd);
    fprintf(stderr, "olang: fetching %s into %s\n", key, cache);
    char head[128] = "";
    if (fits && system(cmd) == 0) gitHead(tmp, head, sizeof(head));
    if (!head[0]) {
        ErrMsgSemantic(tok, IMPORT_FETCH_FAILED);
        return NULL;
    }
    fits = fits && (size_t)snprintf(dir, sizeof(dir), "%s/%s", parent, head) < sizeof(dir);
    if (pathIsDir(dir)) snprintf(cmd, sizeof(cmd), "rm -rf '%s'", tmp);
    else snprintf(cmd, sizeof(cmd), "mv '%s' '%s'", tmp, dir);
    if (!fits || system(cmd) != 0 || !pathIsDir(dir)) {
        ErrMsgSemantic(tok, IMPORT_FETCH_FAILED);
        return NULL;
    }
    lockSet(key, head);
    if (updateLocks) {
        lockUpdatedNow(key, true);
        if (was[0] && strcmp(was, head)) fprintf(stderr, "olang: updated %s to %.12s (was %.12s)\n", key, head, was);
        else if (was[0]) fprintf(stderr, "olang: %s is already at %.12s\n", key, head);
    }
    return heapCopy(dir);
}

//collapses "." and ".." elements lexically, so one directory reached by two spellings prints one way
static char* normalizePath(const char* p) {
    char tmp[PATH_MAX * 2];
    snprintf(tmp, sizeof(tmp), "%s", p);
    char* parts[256];
    int n = 0;
    bool abs = p[0] == '/';
    for (char* t = strtok(tmp, "/"); t; t = strtok(NULL, "/")) {
        if (!strcmp(t, ".")) continue;
        if (!strcmp(t, "..") && n > 0 && strcmp(parts[n - 1], "..")) { n--; continue; }
        if (n < 256) parts[n++] = t;
    }
    char out[PATH_MAX * 2] = "";
    if (abs) strcat(out, "/");
    for (int i = 0; i < n; i++) {
        if (i) strncat(out, "/", sizeof(out) - strlen(out) - 1);
        strncat(out, parts[i], sizeof(out) - strlen(out) - 1);
    }
    return heapCopy(out[0] ? out : ".");
}

//M22a: a relative import's identity is the importer's with its last element replaced by the relative path -
//so "map" written in std/io is std/map, the same module "std/map" names, and each version of a remote
//repository has its own copy of what it imports relatively
static struct str relativeIdentity(struct semaModule* from, const char* spec) {
    char base[PATH_MAX * 2];
    StrToCStr(from->identity, base);
    char* sl = strrchr(base, '/');
    if (sl) *sl = '\0'; else base[0] = '\0';
    char joined[PATH_MAX * 3];
    snprintf(joined, sizeof(joined), "%s%s%s", base, base[0] ? "/" : "", spec);
    return StrFromCStr(normalizePath(joined));
}

static bool hasPrefixElems(const char* id, const char* prefix) {
    size_t n = strlen(prefix);
    return !strncmp(id, prefix, n) && id[n] == '/';
}

//the first n elements of a path ("example.com/me/tools@v1/x" with n 3 is "example.com/me/tools@v1")
static char* firstElems(const char* p, int n) {
    char* out = heapCopy(p);
    char* c = out;
    for (int i = 0; i < n && c; i++) { c = strchr(c, '/'); if (c && i < n - 1) c++; }
    if (c) *c = '\0';
    return out;
}

struct resolvedImport { char* path; struct str identity; };

static bool resolveImport(struct semaModule* from, struct str raw, struct token tok, struct resolvedImport* out) {
    char spec[PATH_MAX];
    StrToCStr(raw, spec);
    size_t len = strlen(spec);
    if (len >= 6 && !strcmp(spec + len - 6, ".olang")) { ErrMsgSemantic(tok, IMPORT_HAS_EXTENSION); return false; }
    char buf[PATH_MAX * 2];
    char* slash = strchr(spec, '/');
    size_t firstLen = slash ? (size_t)(slash - spec) : len;
    if (!strncmp(spec, "std/", 4)) {
        snprintf(buf, sizeof(buf), "%s/%s.olang", stdRoot(), spec + 4);
        out->path = normalizePath(buf);
        out->identity = StrFromCStr(normalizePath(spec));
        if (!hasPrefixElems(out->identity.ptr, "std")) { ErrMsgSemantic(tok, IMPORT_LEAVES_ROOT); return false; }
    } else if (memchr(spec, '.', firstLen) && firstLen != 1 && !(firstLen == 2 && spec[0] == '.' && spec[1] == '.')) {
        //host/owner/repo[@ref]/path - a host always has a dot, which a relative path's first element never does
        char* parts[64];
        int n = 0;
        char tmp[PATH_MAX];
        snprintf(tmp, sizeof(tmp), "%s", spec);
        for (char* t = strtok(tmp, "/"); t && n < 64; t = strtok(NULL, "/")) parts[n++] = t;
        if (n < 4) { ErrMsgSemantic(tok, IMPORT_REMOTE_NEEDS_FILE); return false; }
        char* repoDir = fetchRemote(parts[0], parts[1], parts[2], tok);
        if (!repoDir) return false;
        snprintf(buf, sizeof(buf), "%s", repoDir);
        for (int i = 3; i < n; i++) { strncat(buf, "/", sizeof(buf) - strlen(buf) - 1); strncat(buf, parts[i], sizeof(buf) - strlen(buf) - 1); }
        strncat(buf, ".olang", sizeof(buf) - strlen(buf) - 1);
        out->path = normalizePath(buf);
        out->identity = StrFromCStr(normalizePath(spec));
        if (!hasPrefixElems(out->identity.ptr, firstElems(spec, 3))) { ErrMsgSemantic(tok, IMPORT_LEAVES_ROOT); return false; }
    } else {
        char* rel = moduleDir(from);
        if (spec[0] == '/' || !strcmp(rel, ".")) snprintf(buf, sizeof(buf), "%s.olang", spec);
        else snprintf(buf, sizeof(buf), "%s/%s.olang", rel, spec);
        out->path = normalizePath(buf);
        out->identity = spec[0] == '/' ? lastPathElement(spec, false) : relativeIdentity(from, spec);
        //inside std or a remote repository, a relative import stays inside it
        char fromId[PATH_MAX];
        StrToCStr(from->identity, fromId);
        char* root = hasPrefixElems(fromId, "std") ? heapCopy("std")
                   : strchr(firstElems(fromId, 1), '.') && strchr(fromId, '/') ? firstElems(fromId, 3) : NULL;
        if (root && !hasPrefixElems(out->identity.ptr, root)) { ErrMsgSemantic(tok, IMPORT_LEAVES_ROOT); return false; }
    }
    if (!pathExists(out->path) || pathIsDir(out->path)) {
        ErrMsgSemantic(tok, IMPORT_FILE_NOT_FOUND);
        return false;
    }
    return true;
}

static struct semaModule* semaLoadModuleAt(char* path, struct str identity, struct token tok);

static int cmpCStr(const void* a, const void* b) { return strcmp(*(char* const*)a, *(char* const*)b); }

//every .olang file directly in a directory, in name order - the prelude's files (M19d)
static struct list olangFilesIn(const char* dir) {
    struct list files = ListInit(sizeof(char*));
    DIR* d = opendir(dir);
    if (!d) return files;
    struct dirent* e;
    while ((e = readdir(d))) {
        size_t n = strlen(e->d_name);
        if (n > 6 && !strcmp(e->d_name + n - 6, ".olang")) {
            char buf[PATH_MAX * 2];
            snprintf(buf, sizeof(buf), "%s/%s", dir, e->d_name);
            char* f = heapCopy(buf);
            ListAdd(&files, &f);
        }
    }
    closedir(d);
    qsort(files.ptr, (size_t)files.len, sizeof(char*), cmpCStr);
    return files;
}

struct semaModule* semaLoadModule(struct str fileName) {
    char buf[PATH_MAX];
    StrToCStr(fileName, buf);
    if (pathIsDir(buf)) {
        fprintf(stderr, "%s: a module is a file, never a directory (M1) - name the .olang file\n", buf);
        exit(EXIT_FAILURE);
    }
    //M22a: a root takes its identity from where it really is - its path from the working directory, or its
    //file name when outside it; a std module named directly ("olang -t std/list.olang") is the same module
    //its importers call "std/list", so it gets the identity - and the symbols and object names - they give it
    char canon[PATH_MAX], cwd[PATH_MAX], stdCanon[PATH_MAX];
    char* named = realpath(buf, canon) ? canon : buf;
    struct str identity = lastPathElement(named, true);
    size_t sl = realpath(stdRoot(), stdCanon) ? strlen(stdCanon) : 0;
    size_t cl = getcwd(cwd, sizeof(cwd)) ? strlen(cwd) : 0;
    const char* under = NULL;
    const char* prefix = "";
    if (sl && !strncmp(named, stdCanon, sl) && named[sl] == '/') { under = named + sl + 1; prefix = "std/"; }
    else if (cl && !strncmp(named, cwd, cl) && named[cl] == '/') under = named + cl + 1;
    if (under) {
        char id[PATH_MAX + 8];
        snprintf(id, sizeof(id), "%s%s", prefix, under);
        size_t n = strlen(id);
        if (n > 6 && !strcmp(id + n - 6, ".olang")) id[n - 6] = '\0';
        identity = StrFromCStr(heapCopy(id));
    }
    return semaLoadModuleAt(heapCopy(buf), identity, (struct token){0});
}

static struct semaModule* semaLoadModuleAt(char* path, struct str identity, struct token tok) {
    (void)tok;
    char canon[PATH_MAX];
    if (!realpath(path, canon)) snprintf(canon, sizeof(canon), "%s", path);
    for (int i = 0; i < allModules.len; i++) {
        struct semaModule* m = *(struct semaModule**)ListGetIdx(&allModules, i);
        char c[PATH_MAX];
        if (!strcmp(StrToCStr(m->canonical, c), canon)) return m;
    }

    struct semaModule* mod = MallocOrCrash(sizeof(struct semaModule));
    *mod = (struct semaModule){0};
    mod->fileName = StrFromCStr(path);
    mod->identity = identity;
    mod->canonical = StrFromCStr(heapCopy(canon));
    mod->types = ListInit(sizeof(struct type));
    mod->vars = ListInit(sizeof(struct var));
    mod->imports = ListInit(sizeof(struct semaImport));
    mod->tests = ListInit(sizeof(struct semaTest));
    mod->files = ListInit(sizeof(char*));
    ListAdd(&mod->files, &path);
    ListAdd(&allModules, &mod); //register before recursing, to break import cycles

    //the module is scanned before it is parsed: its own declared names - and those of every module it
    //imports - have to be known before the parser meets a type's name in an expression (see
    //isKnownTypeForParsing - this ordering is exactly what makes cyclic imports work)
    struct list tcs = ListInit(sizeof(TokenCtx));
    mod->declaredTypeNames = ListInit(sizeof(struct str));
    struct list scanned = ListInit(sizeof(struct scannedImport));
    TokenCtx tc0 = TokenizeFile(path);
    ListAdd(&tcs, &tc0);
    SyntaxSetConditionFiles(&tcs); //B9b: a top-level condition may read an immutable global of any file here
    //B10b: which -D names this module mentions at all - a superset of what it depends on, which is the safe
    //direction: at worst an object is rebuilt when a value it names only in a branch not taken changes
    mod->buildRefs = ListInit(sizeof(struct str));
    struct list* bcs = SyntaxBuildConsts();
    for (int f = 0; f < tcs.len; f++) {
        TokenCtx tc = *(TokenCtx*)ListGetIdx(&tcs, f);
        TokenSetCursor(tc, 0);
        for (struct token t = TokenFeed(tc); t.type != TOK_NONE; t = TokenFeed(tc)) {
            if (t.type != TOK_IDEN) continue;
            for (int b = 0; b < bcs->len; b++) {
                struct buildConst* bc = ListGetIdx(bcs, b);
                if (bc->builtin || !StrCmp(bc->name, t.str)) continue;
                bool have = false;
                for (int k = 0; k < mod->buildRefs.len; k++) have = have || StrCmp(*(struct str*)ListGetIdx(&mod->buildRefs, k), bc->name);
                if (!have) ListAdd(&mod->buildRefs, &bc->name);
            }
        }
        TokenSetCursor(tc, 0);
    }
    for (int f = 0; f < mod->files.len; f++) {
        TokenCtx tc = *(TokenCtx*)ListGetIdx(&tcs, f);
        struct scanResult scan = ScanTopLevelDecls(tc);
        ListAddList(&mod->declaredTypeNames, scan.typeNames);
        ListAddList(&scanned, scan.imports);
    }

    for (int i = 0; i < scanned.len; i++) {
        struct scannedImport* si = ListGetIdx(&scanned, i);
        if (!isValidAliasShape(si->alias)) { ErrMsgSemantic(si->aliasTok, INVALID_IMPLICIT_IMPORT_ALIAS); continue; }
        struct resolvedImport r;
        if (!resolveImport(mod, si->path, si->pathTok, &r)) continue;
        struct semaModule* target = semaLoadModuleAt(r.path, r.identity, si->pathTok);
        if (findImport(mod, si->alias)) { ErrMsgSemantic(si->aliasTok, IMPORT_ALIAS_CONFLICT); continue; } //M5
        struct semaImport imp = {0};
        imp.alias = si->alias;
        imp.aliasTok = si->aliasTok;
        imp.mod = target;
        ListAdd(&mod->imports, &imp);
    }

    mod->syn.decls = ListInit(sizeof(struct syntax));
    SyntaxSetConditionFiles(&tcs); //set again: loading the imports above set it to theirs
    for (int f = 0; f < tcs.len; f++) {
        struct syntaxModule sm = ParseSyntax(*(TokenCtx*)ListGetIdx(&tcs, f), mod, isKnownTypeForParsing);
        if (f == 0) mod->syn.tc = sm.tc;
        ListAddList(&mod->syn.decls, sm.decls);
    }
    return mod;
}

struct semaModule* findImport(struct semaModule* mod, struct str alias) {
    for (int i = 0; i < mod->imports.len; i++) {
        struct semaImport* imp = ListGetIdx(&mod->imports, i);
        if (StrCmp(imp->alias, alias)) return imp->mod;
    }
    return NULL;
}

//walks a chain of alias identifiers - all but the last "trailingCount" of idens - starting from mod's own
//import list, to find the module a trailing name should actually be resolved in. The first hop is always
//allowed (mod's own direct imports are always visible to mod itself, regardless of alias capitalization -
//that's not new, that's the status quo); every hop after that requires the alias being followed to be
//PUBLIC (capitalized) in the module that declares it, since it's being reached transitively, through
//re-export, not directly - see the report. Detects a cycle (the same module reached twice along this one
//walk, e.g. a genuine re-export loop) and rejects it, rather than looping or silently picking one
//occurrence. Returns mod itself, unchanged, when there are no alias hops at all (idens.len <= trailing
//Count - the ordinary, unqualified case, needing no lookup); returns NULL on any failure, having already
//reported the specific error (UNKNOWN_NAMESPACE/IMPORT_IS_PRIVATE/CYCLIC_IMPORT_REEXPORT).
struct semaModule* resolveAliasChain(struct semaModule* mod, struct list idens, int trailingCount) {
    struct semaModule* current = mod;
    int hops = idens.len - trailingCount;
    struct list visited = ListInit(sizeof(struct semaModule*));
    ListAdd(&visited, &current);
    for (int i = 0; i < hops; i++) {
        struct token aliasTok = *(struct token*)ListGetIdx(&idens, i);
        struct str aliasName = strFromTok(aliasTok);
        struct semaModule* next = findImport(current, aliasName);
        if (!next) { ErrMsgSemantic(aliasTok, UNKNOWN_NAMESPACE); return NULL; }
        if (i > 0 && !isPublic(aliasName)) { ErrMsgSemantic(aliasTok, IMPORT_IS_PRIVATE); return NULL; }
        for (int j = 0; j < visited.len; j++) {
            if (*(struct semaModule**)ListGetIdx(&visited, j) == next) {
                ErrMsgSemantic(aliasTok, CYCLIC_IMPORT_REEXPORT);
                return NULL;
            }
        }
        ListAdd(&visited, &next);
        current = next;
    }
    return current;
}

//catch's own "alias chain, then either a whole TYPE or a TYPE.word" ambiguity - an import alias and an
//error type live in different namespaces (mod->imports vs mod->types), so whenever an identifier COULD be
//read as a further alias hop, it's treated as one (the same "prefer the alias interpretation when
//ambiguous" rule the original, single-hop-only version of this disambiguation already used, just applied
//uniformly at every step instead of only the first - see the report). Greedily consumes hops until either
//an identifier isn't a real import in the current module (stopping there) or exactly one identifier is
//left (the walk can never consume its own final identifier - something has to remain to be the type/
//word). Whatever remains (1 or 2 identifiers) is the type, or type+word, to resolve in whatever module
//the walk stopped at - written to *outTrailingCount. More than 2 remaining after the walk stops early (an
//identifier that isn't a further alias, with more than a type/word pair still unconsumed) is a genuine
//error - there's no valid interpretation left. Same public/cycle checks as resolveAliasChain past the
//first hop.
struct semaModule* resolveCatchAliasChain(struct semaModule* mod, struct list idens, int* outTrailingCount) {
    struct semaModule* current = mod;
    struct list visited = ListInit(sizeof(struct semaModule*));
    ListAdd(&visited, &current);
    int i = 0;
    while (i < idens.len -1) {
        struct token aliasTok = *(struct token*)ListGetIdx(&idens, i);
        struct str aliasName = strFromTok(aliasTok);
        struct semaModule* next = findImport(current, aliasName);
        if (!next) break;
        if (i > 0 && !isPublic(aliasName)) { ErrMsgSemantic(aliasTok, IMPORT_IS_PRIVATE); return NULL; }
        for (int j = 0; j < visited.len; j++) {
            if (*(struct semaModule**)ListGetIdx(&visited, j) == next) {
                ErrMsgSemantic(aliasTok, CYCLIC_IMPORT_REEXPORT);
                return NULL;
            }
        }
        ListAdd(&visited, &next);
        current = next;
        i++;
    }
    if (idens.len - i > 2) {
        struct token tok = *(struct token*)ListGetIdx(&idens, i);
        ErrMsgSemantic(tok, UNKNOWN_NAMESPACE);
        return NULL;
    }
    *outTrailingCount = idens.len - i;
    return current;
}

//the set of modules reachable from mod via zero or more PUBLIC (capitalized-alias) import hops, including
//mod itself as the trivial base case - "everything mod makes visible to a module that imports it."
//Computed once and memoized (mod->publicClosure/publicClosureComputed - see semantic.h). Detects a genuine
//cycle in the public-reachability graph (a module publicly re-exporting something that eventually
//publicly re-exports it back) via mod->computingPublicClosure, the same re-entrancy-guard idiom
//resolveTypeDecl's own "resolving" flag already uses elsewhere in this file - reports
//CYCLIC_IMPORT_REEXPORT at the offending import's own token rather than recursing forever.
struct list computePublicClosure(struct semaModule* mod) {
    if (mod->publicClosureComputed) return mod->publicClosure;
    if (mod->computingPublicClosure) return ListInit(sizeof(struct semaModule*)); //cycle - caught below
    mod->computingPublicClosure = true;

    struct list closure = ListInit(sizeof(struct semaModule*));
    ListAdd(&closure, &mod);
    for (int i = 0; i < mod->imports.len; i++) {
        struct semaImport* imp = ListGetIdx(&mod->imports, i);
        if (!isPublic(imp->alias)) continue;
        if (imp->mod->computingPublicClosure) {
            ErrMsgSemantic(imp->aliasTok, CYCLIC_IMPORT_REEXPORT);
            continue;
        }
        struct list sub = computePublicClosure(imp->mod);
        for (int j = 0; j < sub.len; j++) {
            struct semaModule* m = *(struct semaModule**)ListGetIdx(&sub, j);
            bool already = false;
            for (int k = 0; k < closure.len; k++) {
                if (*(struct semaModule**)ListGetIdx(&closure, k) == m) { already = true; break; }
            }
            if (!already) ListAdd(&closure, &m);
        }
    }

    mod->computingPublicClosure = false;
    mod->publicClosureComputed = true;
    mod->publicClosure = closure;
    return closure;
}

//"reimporting the same file already imported (through a chain, or in general) is an error" - see the
//report. For every module's own DIRECT imports (regardless of alias case - a module's own imports are
//always visible to it, that's not new), the union of that one direct import's own module PLUS everything
//transitively PUBLIC-reachable through it (computePublicClosure, which already includes the direct
//import's own module as its base case) must never overlap with what any OTHER of that same module's own
//direct imports reaches - if it does, the same underlying file is reachable two different ways from one
//module, which is exactly what's rejected here. Run once, after every module in the whole program has
//finished loading - semaLoadModule's own recursion can leave an import's own module still mid-load if
//it's part of a raw import cycle, so this can't safely run inline during loading itself.
void checkDuplicateImportReachability(void) {
    for (int m = 0; m < allModules.len; m++) {
        struct semaModule* mod = *(struct semaModule**)ListGetIdx(&allModules, m);
        struct list seen = ListInit(sizeof(struct semaModule*));
        for (int i = 0; i < mod->imports.len; i++) {
            struct semaImport* imp = ListGetIdx(&mod->imports, i);
            struct list closure = computePublicClosure(imp->mod);
            for (int j = 0; j < closure.len; j++) {
                struct semaModule* reached = *(struct semaModule**)ListGetIdx(&closure, j);
                bool already = false;
                for (int k = 0; k < seen.len; k++) {
                    if (*(struct semaModule**)ListGetIdx(&seen, k) == reached) { already = true; break; }
                }
                if (already) ErrMsgSemantic(imp->aliasTok, DUPLICATE_IMPORT_REACHABILITY);
                else ListAdd(&seen, &reached);
            }
        }
    }
}

void resolveTypeDecl(struct type* t);

//resolves a possibly-namespaced error-type name node ("MyError" or "alias.MyError", from SNTX_NAME) to
//its declared error type - shared by function-signature error lists and (via its own disambiguation,
//see StatementCatchCoversType's caller) catch clauses. Reports its own errors and returns NULL on failure.
struct type* resolveErrorTypeName(struct semaModule* mod, struct syntax* nameNode) {
    struct list idens = allTokOfType(nameNode, TOK_IDEN);
    if (idens.len == 1) {
        struct token nameTok = *(struct token*)ListGetIdx(&idens, 0);
        struct type* errType = typeNamed(mod, strFromTok(nameTok));
        if (!errType || errType->bType != BASETYPE_ERROR) { ErrMsgSemantic(nameTok, UNKNOWN_ERROR); return NULL; }
        resolveTypeDecl(errType);
        return errType;
    }
    struct semaModule* target = resolveAliasChain(mod, idens, 1);
    if (!target) return NULL; //error already reported
    struct token nameTok = *(struct token*)ListGetIdx(&idens, idens.len -1);
    struct str name = strFromTok(nameTok);
    struct type* errType = TypeGetList(&target->types, name);
    if (!errType || errType->bType != BASETYPE_ERROR) { ErrMsgSemantic(nameTok, UNKNOWN_ERROR); return NULL; }
    if (!isPublic(name)) { ErrMsgSemantic(nameTok, TYPE_IS_PRIVATE); return NULL; }
    resolveTypeDecl(errType);
    return errType;
}
struct type* SemanticBuiltinType(struct str name);
void resolveTypeDecl(struct type* t);
static bool isPreludeModule(struct semaModule* mod);

//T29h: the prelude's Char - text's unit, "type Char extends U8" - resolved; plain U8 where there is no prelude
struct type SemanticCharType(void) {
    struct type* c = SemanticBuiltinType(StrFromCStr("Char"));
    if (!c) return TypeVanilla(BASETYPE_BYTE);
    resolveTypeDecl(c);
    return *c;
}

bool TypeIsChar(struct type t) {
    return t.bType == BASETYPE_BYTE && t.owner && StrCmp(t.name, StrFromCStr("Char")) && isPreludeModule(t.owner);
}

//T29c: text written in the program - a string literal, a "$" rendering or a join - is a String wherever one
//is wanted. It is a temporary with no type worth defending, as a literal is (T29a), and it is text by
//construction, so it adapts to the prelude's String the way a numeric literal adapts to a width
//S12b: the values a match used as one can give - each case's "=> v" and nomatch's, in order (a block gives none)
struct list SemanticMatchValues(struct operand* op) {
    struct list out = ListInit(sizeof(struct operand*));
    if (op->opType != OPERATION_MATCH || !op->comprBody.len) return out;
    struct statement* m = ListGetIdx(&op->comprBody, 0);
    for (int i = 0; i < m->matchCases.len; i++) {
        struct statement* c = ListGetIdx(&m->matchCases, i);
        if (c->op) ListAdd(&out, &c->op);
    }
    if (m->nomatchValue) ListAdd(&out, &m->nomatchValue);
    return out;
}

bool OperandIsWrittenText(struct operand* op) {
    if (op->opType == OPERATION_STR_OF || op->opType == OPERATION_CONCAT) return true;
    if (op->opType == OPERATION_MATCH) { //S12b: as a conditional's - written text when every value is
        struct list vs = SemanticMatchValues(op);
        for (int i = 0; i < vs.len; i++) if (!OperandIsWrittenText(*(struct operand**)ListGetIdx(&vs, i))) return false;
        return vs.len > 0;
    }
    //E28: a conditional choosing between two pieces of written text is written text
    if (op->opType == OPERATION_COND && op->args.len == 3) {
        return OperandIsWrittenText(*(struct operand**)ListGetIdx(&op->args, 1))
            && OperandIsWrittenText(*(struct operand**)ListGetIdx(&op->args, 2));
    }
    return op->isLiteral && op->type.bType == BASETYPE_ARRAY && !op->type.owner && op->type.arrElem
           && TypeIsChar(*op->type.arrElem) && op->opType == OPERATION_NONE && op->args.len == 0;
}

// ---- pass 1: collect top-level names ----

void checkNoAliasClash(struct semaModule* mod, struct str name, struct token tok);

void collectType(struct semaModule* mod, struct token nameTok, enum baseType bType) {
    struct str name = strFromTok(nameTok);
    if (TypeGetList(&mod->types, name)) { ErrMsgSemantic(nameTok, TYPE_NAME_IN_USE); return; } //own list only
    if (!isPreludeModule(mod) && SemanticBuiltinType(name)) ErrMsgSemantic(nameTok, BUILTIN_TYPE_REDECLARED); //still registered: later passes expect it
    if (StrCmp(name, StrFromCStr("Array"))) ErrMsgSemantic(nameTok, BUILTIN_TYPE_REDECLARED); //T7
    checkNoAliasClash(mod, name, nameTok); //M20
    struct type t = (struct type){0};
    t.owner = mod;
    t.bType = bType;
    t.name = name;
    t.tok = nameTok;
    t.placeholder = true;
    ListAdd(&mod->types, &t);
}

//M21: several FUNCTION declarations may share a name - one method per receiver type - and nothing else
//may. Which of the two a group actually is cannot be decided here (pass 1 has resolved no signature yet),
//so this enforces only the half the declaration keyword already settles; checkMethodOverloads does the
//rest once every signature is known.
static void rejectUnderscoreName(struct str name, struct token tok);
static struct var* buildConstVar(struct str name);
static struct semaModule* buildModule;
void collectVar(struct semaModule* mod, struct token nameTok, bool mut, bool isFuncDecl, bool isMethod) {
    struct str name = strFromTok(nameTok);
    rejectUnderscoreName(name, nameTok);
    //a method is not in the plain namespace at all, so neither the duplicate check nor M20's alias
    //reservation applies to it - "Det" the function and "m.Det()" the method are distinct by construction
    //reported, and then declared anyway: later passes look the declaration up, and the module's own
    //name shadows the constant for the rest of the check, so nothing downstream trips over a missing var
    if (!isMethod && mod != buildModule && buildConstVar(name)) ErrMsgSemantic(nameTok, BUILD_CONST_REDECLARED);
    if (!isMethod) {
        struct var* prev = VarGetList(&mod->vars, name);
        if (prev && !(isFuncDecl && prev->isFuncDecl)) { ErrMsgSemantic(nameTok, VAR_NAME_IN_USE); return; }
        if (!prev) checkNoAliasClash(mod, name, nameTok); //M20
    }
    struct var v = (struct var){0};
    v.isMethod = isMethod;
    v.owner = mod;
    v.name = name;
    v.tok = nameTok;
    v.mut = mut;
    v.isFuncDecl = isFuncDecl;
    v.type.placeholder = true;
    ListAdd(&mod->vars, &v);
}

//internal names for a constructor-bearing type's synthetic constructor/destructor "functions" - "$" is
//never producible by the tokenizer's identifier rule, so these can never collide with (or be typed as) a
//real user name, same idea as the mangled "@m0_name" global symbols codegen already produces
struct str internalCtorName(struct token typeNameTok) {
    char* buf = MallocOrCrash((size_t)typeNameTok.str.len + 8);
    int n = snprintf(buf, (size_t)typeNameTok.str.len + 8, "%.*s$ctor", typeNameTok.str.len, typeNameTok.str.ptr);
    return Str(buf, n);
}
struct str internalDtorName(struct token typeNameTok) {
    char* buf = MallocOrCrash((size_t)typeNameTok.str.len + 8);
    int n = snprintf(buf, (size_t)typeNameTok.str.len + 8, "%.*s$dtor", typeNameTok.str.len, typeNameTok.str.ptr);
    return Str(buf, n);
}

//M20: an import alias's name is reserved in the module that wrote the import - no type, function, global,
//local or parameter there may reuse it. Without this a name could mean two things at once and the tiebreak
//was silent: a local type named "matrix" quietly shadowed an import of the same name, so "matrix.New"
//resolved to one of them with no diagnostic at all. It matters more now that methods exist, since "m.f(x)"
//and "matrix.f(x)" share a shape - the rule is what makes the left of a dot mean exactly one thing.
bool nameIsImportAlias(struct semaModule* mod, struct str name) {
    for (int i = 0; i < mod->imports.len; i++) {
        struct semaImport* imp = ListGetIdx(&mod->imports, i);
        if (StrCmp(imp->alias, name)) return true;
    }
    return false;
}

void checkNoAliasClash(struct semaModule* mod, struct str name, struct token tok) {
    if (nameIsImportAlias(mod, name)) ErrMsgSemantic(tok, NAME_CLASHES_WITH_IMPORT);
}

void semaCollectNames(struct semaModule* mod) {
    for (int i = 0; i < mod->syn.decls.len; i++) {
        struct syntax* decl = ListGetIdx(&mod->syn.decls, i);
        struct syntax* actual = partSntx(decl, 0);
        switch (actual->type) {
            case SNTX_TYPE_DECL: {
                struct token nameTok = firstTokOfType(actual, TOK_IDEN);
                collectType(mod, nameTok, BASETYPE_VOID);
                //a constructor-bearing struct also needs its own synthetic constructor/destructor "var"
                //entries registered *now* (pass 1), while mod->vars can still safely grow - pass 2/3 take
                //stable pointers into this same list (via VarGetList) that a later ListAdd could otherwise
                //invalidate on reallocation. See the report.
                struct syntax* ctorNode = firstPartOfType(actual, SNTX_STRUCT_CTOR);
                if (!ctorNode && firstPartOfType(actual, SNTX_PRIM_CTOR)) { //T29d
                    struct var ctorV = (struct var){0};
                    ctorV.owner = mod;
                    ctorV.name = internalCtorName(nameTok);
                    ctorV.tok = nameTok;
                    ctorV.type.placeholder = true;
                    ListAdd(&mod->vars, &ctorV);
                }
                if (ctorNode) {
                    struct var ctorV = (struct var){0};
                    ctorV.owner = mod;
                    ctorV.name = internalCtorName(nameTok);
                    ctorV.tok = nameTok;
                    ctorV.type.placeholder = true;
                    ListAdd(&mod->vars, &ctorV);
                    if (firstPartOfType(ctorNode, SNTX_DESTRUCT)) {
                        struct var dtorV = (struct var){0};
                        dtorV.owner = mod;
                        dtorV.name = internalDtorName(nameTok);
                        dtorV.tok = nameTok;
                        dtorV.type.placeholder = true;
                        ListAdd(&mod->vars, &dtorV);
                    }
                }
                break;
            }
            case SNTX_ERROR_DECL:
                collectType(mod, firstTokOfType(actual, TOK_IDEN), BASETYPE_ERROR);
                break;
            case SNTX_FUNC_DEF:
            case SNTX_EXTERN_FUNC_DECL:
                collectVar(mod, firstTokOfType(actual, TOK_IDEN), false, true,
                           firstPartOfType(actual, SNTX_RECEIVER) != NULL);
                break;
            case SNTX_VAR_DECL:
                collectVar(mod, firstTokOfType(actual, TOK_IDEN), hasTokOfType(actual, TOK_MUT), false, false);
                break;
            case SNTX_IMPORT:
            case SNTX_TEST_DECL:
                break;
            default:
                ErrorBugFound();
        }
    }
}

// ---- pass 2: resolve type shapes and function signatures ----

struct type resolveTypeExpr(struct semaModule* mod, struct syntax* typeExprNode, struct list* scopeParams);
struct operand* buildParamDefault(struct semaModule* mod, struct syntax* defNode, struct type paramType);
void resolveTypeDecl(struct type* t);

//resolves a "&name" heap-indirection tag's optional scope name against scopeParams (the function
//parameters visible at this point in the signature/body being resolved, or NULL where none are - struct
//fields and globals, which have no such context; see the report). Bare "&" (no name token at all) is
//left as scopeParam == NULL, meaning "this value's own private/local scope".
//T7/D15: a declaration's type is what a program can write, and the only array type it can write is
//Array<T> - so ":=" from an array literal (laid out with its length known, T11) declares an Array<T>, whose
//later assignments may give it any length. Nested levels are references (T7a) and are kept as they are.
struct type declaredArrayType(struct type t) {
    if (t.bType != BASETYPE_ARRAY || t.structMAlloc || t.arrMalloc) return t;
    t.arrMalloc = true;
    t.arrLen = NULL;
    return t;
}

struct type TypeScope(void);

//O3: a scope variable is declared purely by APPEARING IN A SIGNATURE, so while one is being resolved a
//name not seen yet is not an error - it is the declaration. Everywhere else (a body's own var-decl, a
//match-case type, a literal's type arguments) the same "&name" must already name one of the enclosing
//signature's variables: a name appearing nowhere in the signature would leave a caller nothing to read
//and nothing to supply. A file-static flag rather than a threaded parameter because the one thing that
//would have to thread it - resolveTypeExpr - is reached from a dozen places that neither know nor care.

//O3: `scopeVars` is the enclosing signature's own list (of struct var*), growing in first-appearance
//order; NULL means there is no signature to name into at all (a global initializer, a test/destruct
//body), where a named tag has nothing it could refer to.
//O3c: "&x" says "lives where x lives" - x a variable visible where the tag is written: a parameter already
//resolved in the same signature, a constructor's parameter or earlier field, or, inside a body, a local. The
//tag is that variable's own scope: its scope variable (a reference parameter's implicit one, O4b), or the
//block it lives in. These say which variables a tag written here may name; set by whoever resolves types in
//those positions, and cleared after.
static struct list* scopeTagParams;     //struct var, by value
static struct list* scopeTagFields;     //struct var, by value
struct checkCtx;
static struct checkCtx* scopeTagBody;
static int scopeTagDepth;               //out: the block depth, when the named variable lives in a block
static bool scopeTagByVariable;         //out: the tag named a variable rather than a scope
struct var* scopeFindLocalByCtx(struct checkCtx* ctx, struct str name);
static struct var* scopeTagBodyFunc(void);

static struct var* scopeTagVariable(struct str name) {
    if (scopeTagBody) {
        struct var* l = scopeFindLocalByCtx(scopeTagBody, name);
        if (l) return l;
    }
    if (scopeTagParams) { struct var* p = VarGetList(scopeTagParams, name); if (p) return p; }
    if (scopeTagFields) { struct var* f = VarGetList(scopeTagFields, name); if (f) return f; }
    return NULL;
}

struct var* resolveScopeTag(struct syntax* markerNode, struct list* scopeVars) {
    scopeTagByVariable = false;
    scopeTagDepth = 0;
    //O26: "&return" - the result scope of the function whose body this is
    if (hasTokOfType(markerNode, TOK_RET)) {
        struct var* f = scopeTagBodyFunc();
        if (!f || !f->type.resultScope) {
            ErrMsgSemantic(firstTokOfType(markerNode, TOK_RET), RETURN_SCOPE_NONE);
            return NULL;
        }
        scopeTagByVariable = true;
        return f->type.resultScope;
    }
    struct list nameToks = allTokOfType(markerNode, TOK_IDEN);
    if (nameToks.len == 0) return NULL;
    struct token nameTok = *(struct token*)ListGetIdx(&nameToks, 0);
    struct str name = strFromTok(nameTok);
    (void)scopeVars;
    struct var* named = scopeTagVariable(name);
    if (named) {
        scopeTagByVariable = true;
        scopeTagDepth = named->type.scopeParam ? 0 : named->type.scopeDepth;
        return named->type.scopeParam;
    }
    ErrMsgSemantic(nameTok, UNKNOWN_SCOPE); //O4a: a scope has no name of its own
    return NULL;
}

//"<T>" - a type variable (G1). Carries its own name and nothing else; substituted for a real type when
//the enclosing generic is instantiated. Whether the name is legal (not shadowing a declared type, and
//actually declared by the enclosing generic) is checked by the caller, which knows the declaration it
//sits in - this only builds the type.
struct type TypeVar(struct str name, struct token tok) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_TYPEVAR;
    t.name = name;
    t.tok = tok;
    return t;
}

//one type variable bound to a concrete type - the result of inference (G9) or of an explicit type
//argument list (G8), and the input to substitution below
struct typeBinding {
    struct str name;
    struct type type;
};

struct type* bindingGet(struct list* bindings, struct str name) {
    for (int i = 0; i < bindings->len; i++) {
        struct typeBinding* b = ListGetIdx(bindings, i);
        if (StrCmp(b->name, name)) return &b->type;
    }
    return NULL;
}

//replaces every type variable in t with whatever it is bound to, recursively through arrays, function
//signatures and struct fields. This is the whole of G16's "with every type variable replaced by its
//argument" - the result contains no BASETYPE_TYPEVAR anywhere and is an ordinary type from that point on.
//An unbound variable is left as-is: the caller reports it (a signature mentioning a variable nothing
//could determine is G4's error, caught at the declaration, not silently substituted here).
struct type* instantiateType(struct type* generic, struct list* bindings); //G8a: re-applied below
static void assignImplicitParamScopes(struct type* ft);
static void finishResultScope(struct type* t, struct token tok);
void refreshStructSnapshots(struct type* t);

static bool typeIsDeclaredStruct(struct type t);
bool TypeIsGeneric(struct type t);
struct type TypeSubstitute(struct type t, struct list* bindings) {
    if (t.bType == BASETYPE_TYPEVAR) {
        struct type* bound = bindingGet(bindings, t.name);
        if (!bound) return t;
        struct type out = *bound;
        //the variable's own array suffixes and markers were applied to the VARIABLE, not to what it is
        //bound to, so they have already been folded into t by applyArraySuffixes/applyRefMarker; carry
        //the reference marker across so "<T>&" stays a reference once T is known
        if (t.structMAlloc) { //"<T>&": the marker, and with it the permission, are the variable's own (T25b)
            out.structMAlloc = true;
            out.scopeParam = t.scopeParam;
            out.scopeWritten = t.scopeWritten;
            out.scopeDepth = t.scopeDepth;
            out.refMut = t.refMut;
        }
        if (t.refMut) out.refMut = true; //T25b: "mut <T>" makes what T is bound to writable
        return out;
    }
    if (t.bType == BASETYPE_ARRAY) {
        struct type* elem = MallocOrCrash(sizeof(struct type));
        *elem = TypeSubstitute(*t.arrElem, bindings);
        t.arrElem = elem;
        return t;
    }
    //G8a: a generic applied to arguments substitutes through its ARGUMENTS and is then re-applied, so the
    //result is the real instantiation with the right name. Walking its fields instead would substitute the
    //right types under a name still derived from the old arguments.
    if ((t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_INTERFACE) && t.genericOrigin && t.typeArgs.len > 0) {
        struct list inner = ListInit(sizeof(struct typeBinding));
        bool changed = false;
        for (int i = 0; i < t.typeArgs.len && i < t.genericOrigin->typeParams.len; i++) {
            struct typeBinding b = (struct typeBinding){0};
            b.name = *(struct str*)ListGetIdx(&t.genericOrigin->typeParams, i);
            struct type before = *(struct type*)ListGetIdx(&t.typeArgs, i);
            b.type = TypeSubstitute(before, bindings);
            if (!TypeIsSame(before, b.type)) changed = true;
            ListAdd(&inner, &b);
        }
        if (!changed) return t;
        struct type out = *instantiateType(t.genericOrigin, &inner);
        //the marker belongs to this use of the type, not to the instantiation itself - and so does its permission
        out.structMAlloc = t.structMAlloc;
        out.scopeParam = t.scopeParam;
        out.scopeDepth = t.scopeDepth;
        out.refMut = t.refMut;
        return out;
    }
    //a declared struct that mentions no type variable is already what it is - and walking its fields
    //anyway would not terminate on a self-referential one
    if (typeIsDeclaredStruct(t) && !TypeIsGeneric(t)) return t;
    if (t.bType == BASETYPE_FUNC || t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_INTERFACE) {
        struct list out = ListInit(sizeof(struct var));
        for (int i = 0; i < t.vars.len; i++) {
            struct var v = *(struct var*)ListGetIdx(&t.vars, i);
            v.type = TypeSubstitute(v.type, bindings);
            ListAdd(&out, &v);
        }
        t.vars = out;
        if (t.bType == BASETYPE_FUNC && t.hasRetType) {
            struct type* ret = MallocOrCrash(sizeof(struct type));
            *ret = TypeSubstitute(*t.retType, bindings);
            t.retType = ret;
        }
        //a function VALUE type (a callback parameter's) whose parameter or result became a reference by
        //substitution passes its scope like any other (O4b, O13) - or a call through it would disagree with the
        //function it reaches about the hidden arguments. A declaration's own signature gets this at instantiation
        if (t.bType == BASETYPE_FUNC && t.structMAlloc) {
            struct list sv = ListInit(sizeof(struct var*));
            for (int i = 0; i < t.scopeVars.len; i++) ListAdd(&sv, ListGetIdx(&t.scopeVars, i));
            t.scopeVars = sv;
            assignImplicitParamScopes(&t);
            if (t.hasRetType && !t.resultScope) finishResultScope(&t, (struct token){0});
        }
        return t;
    }
    return t;
}

//true if t mentions any type variable at all, at any depth - i.e. "is this still generic?"
//a DECLARED struct's type variables are in its type arguments (an application, "Cell<T>") or are its own
//parameters (the generic declaration itself), never anything reachable only through its fields. Reading
//them there is what keeps every walker below finite on a self-referential type - "next Node<T>&" leads
//back to Node<T> - which refreshStructSnapshots makes a genuine cycle.
//a declared struct - or, since generic interfaces (T35a), a declared interface: both may be generic,
//carry their variables in typeArgs once applied, and are otherwise already what they are
static bool typeIsDeclaredStruct(struct type t) {
    return (t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_INTERFACE) && t.owner && t.name.len > 0;
}

bool TypeIsGeneric(struct type t) {
    if (t.bType == BASETYPE_TYPEVAR) return true;
    if (t.bType == BASETYPE_ARRAY) return TypeIsGeneric(*t.arrElem);
    if (typeIsDeclaredStruct(t)) {
        if (!t.genericOrigin) return t.typeParams.len > 0;
        for (int i = 0; i < t.typeArgs.len; i++) {
            if (TypeIsGeneric(*(struct type*)ListGetIdx(&t.typeArgs, i))) return true;
        }
        return false;
    }
    if (t.bType == BASETYPE_FUNC || t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_INTERFACE) {
        for (int i = 0; i < t.vars.len; i++) {
            if (TypeIsGeneric((*(struct var*)ListGetIdx(&t.vars, i)).type)) return true;
        }
        if (t.bType == BASETYPE_FUNC && t.hasRetType && TypeIsGeneric(*t.retType)) return true;
    }
    return false;
}

//collects every distinct type-variable name mentioned in t, in first-appearance order
void TypeCollectVars(struct type t, struct list* out) {
    if (t.bType == BASETYPE_TYPEVAR) {
        for (int i = 0; i < out->len; i++) {
            if (StrCmp(*(struct str*)ListGetIdx(out, i), t.name)) return;
        }
        ListAdd(out, &t.name);
        //G19: a variable named only in a constraint ("<I Iterator<<E>>>") is inferred through it
        if (t.varConstraint) TypeCollectVars(*t.varConstraint, out);
        return;
    }
    if (t.bType == BASETYPE_ARRAY) { TypeCollectVars(*t.arrElem, out); return; }
    if (typeIsDeclaredStruct(t)) {
        if (t.genericOrigin) {
            for (int i = 0; i < t.typeArgs.len; i++) TypeCollectVars(*(struct type*)ListGetIdx(&t.typeArgs, i), out);
            return;
        }
        for (int i = 0; i < t.typeParams.len; i++) {
            struct str pn = *(struct str*)ListGetIdx(&t.typeParams, i);
            bool seen = false;
            for (int j = 0; j < out->len; j++) if (StrCmp(*(struct str*)ListGetIdx(out, j), pn)) seen = true;
            if (!seen) ListAdd(out, &pn);
        }
        return;
    }
    if (t.bType == BASETYPE_FUNC || t.bType == BASETYPE_STRUCT) {
        for (int i = 0; i < t.vars.len; i++) TypeCollectVars((*(struct var*)ListGetIdx(&t.vars, i)).type, out);
        if (t.bType == BASETYPE_FUNC && t.hasRetType) TypeCollectVars(*t.retType, out);
    }
}

//structurally matches a declared (possibly generic) parameter type against a concrete argument type,
//binding each variable it meets (G9). Returns false on a genuine mismatch, including the case where one
//variable is reached twice with two different types - "max(a<T>, b<T>)" called with an int32 and a
//float64 is a real error, not a widening. Deliberately shallow about everything a type variable does NOT
//appear in: a non-generic parameter is checked by the ordinary OperandFitsType path afterwards, so this
//only has to be exact where a binding is actually being extracted.
static int numericTypeRank(struct type t);
static bool unifyThroughMethods(struct type iface, struct type concrete, struct list* bindings);
struct var* SemanticCallOf(struct type t);
bool TypeUnify(struct type param, struct type arg, struct list* bindings) {
    if (param.bType == BASETYPE_TYPEVAR) {
        struct type* bound = bindingGet(bindings, param.name);
        if (bound) return TypeIsSame(*bound, arg);
        struct typeBinding b = (struct typeBinding){0};
        b.name = param.name;
        b.type = arg;
        //"<T>&" marks the use of the variable, so T is the referent's type; a bare "<T>" given a reference
        //binds the reference itself (G11) - but never its scope's name, which belongs to the caller
        if (param.structMAlloc) b.type.structMAlloc = false;
        b.type.scopeParam = NULL;
        b.type.scopeDepth = 0;
        ListAdd(bindings, &b);
        return true;
    }
    if (!TypeIsGeneric(param)) return true; //nothing to bind here; ordinary fit-checking covers it
    //E31: a value whose type declares Call, reaching a function type, binds through Call's own signature
    if (param.bType == BASETYPE_FUNC && arg.bType != BASETYPE_FUNC && arg.bType != BASETYPE_TYPEVAR) {
        struct var* call = SemanticCallOf(arg);
        if (!call || call->type.bType != BASETYPE_FUNC || call->type.vars.len == 0) return false;
        struct type ft = call->type;
        ft.vars = ListInit(sizeof(struct var));
        for (int i = 1; i < call->type.vars.len; i++) ListAdd(&ft.vars, ListGetIdx(&call->type.vars, i));
        return TypeUnify(param, ft, bindings);
    }
    //G9c: a concrete type reaching a generic interface ("Source<<T>>&" given a ListIter<Int32>) binds through the
    //methods that satisfy it - each interface method's parameters and result against the concrete method's
    if (param.bType == BASETYPE_INTERFACE && arg.bType != BASETYPE_INTERFACE && arg.bType != BASETYPE_TYPEVAR) {
        return unifyThroughMethods(param, arg, bindings);
    }
    if (param.bType != arg.bType) return false;
    if (param.bType == BASETYPE_ARRAY) return TypeUnify(*param.arrElem, *arg.arrElem, bindings);
    //two applications of one generic unify through their arguments - see typeIsDeclaredStruct
    if (typeIsDeclaredStruct(param) && param.genericOrigin) {
        if (arg.genericOrigin != param.genericOrigin || arg.typeArgs.len != param.typeArgs.len) return false;
        for (int i = 0; i < param.typeArgs.len; i++) {
            if (!TypeUnify(*(struct type*)ListGetIdx(&param.typeArgs, i),
                           *(struct type*)ListGetIdx(&arg.typeArgs, i), bindings)) return false;
        }
        return true;
    }
    if (param.bType == BASETYPE_STRUCT || param.bType == BASETYPE_FUNC) {
        if (param.vars.len != arg.vars.len) return false;
        for (int i = 0; i < param.vars.len; i++) {
            struct type pt = (*(struct var*)ListGetIdx(&param.vars, i)).type;
            struct type at = (*(struct var*)ListGetIdx(&arg.vars, i)).type;
            if (!TypeUnify(pt, at, bindings)) return false;
        }
        //a callback's result binds too - "f fn(x <T>) <U>" is how a map reaches U
        if (param.bType == BASETYPE_FUNC && param.hasRetType) {
            if (!arg.hasRetType || !TypeUnify(*param.retType, *arg.retType, bindings)) return false;
        }
        return true;
    }
    return true;
}

//G19: every constrained occurrence of a type variable in t, into out (one BASETYPE_TYPEVAR per name); two
//occurrences constraining one name differently are an error
static void TypeCollectConstraints(struct type t, struct list* out) {
    if (t.bType == BASETYPE_TYPEVAR) {
        if (!t.varConstraint) return;
        for (int i = 0; i < out->len; i++) {
            struct type* o = ListGetIdx(out, i);
            if (!StrCmp(o->name, t.name)) continue;
            if (!TypeIsSame(*o->varConstraint, *t.varConstraint)) ErrMsgSemantic(t.tok, CONSTRAINT_DISAGREES);
            return;
        }
        ListAdd(out, &t);
        return;
    }
    if (t.bType == BASETYPE_ARRAY && t.arrElem) { TypeCollectConstraints(*t.arrElem, out); return; }
    if (typeIsDeclaredStruct(t)) {
        if (t.genericOrigin) for (int i = 0; i < t.typeArgs.len; i++) TypeCollectConstraints(*(struct type*)ListGetIdx(&t.typeArgs, i), out);
        return;
    }
    if (t.bType == BASETYPE_FUNC || t.bType == BASETYPE_STRUCT) {
        for (int i = 0; i < t.vars.len; i++) TypeCollectConstraints((*(struct var*)ListGetIdx(&t.vars, i)).type, out);
        if (t.bType == BASETYPE_FUNC && t.hasRetType) TypeCollectConstraints(*t.retType, out);
    }
}

//G19: binds what the constraints determine and checks each constrained variable's binding satisfies its
//interface, reporting at tok. A variable named only in a constraint is bound through the methods of the type
//its constrained variable is bound to (G9c). Returns false when a constraint is not met.
void RdSpellType(struct type t, char* buf, size_t n);
static bool unifyThroughMethods(struct type iface, struct type concrete, struct list* bindings);
bool TypeSatisfiesConstraint(struct type concrete, struct type iface, struct var** failed);
static bool checkTypeConstraints(struct list* constraints, struct list* bindings, struct token tok) {
    for (int i = 0; i < constraints->len; i++) {
        struct type* c = ListGetIdx(constraints, i);
        struct type* bound = bindingGet(bindings, c->name);
        if (bound && TypeIsGeneric(*c->varConstraint)) unifyThroughMethods(*c->varConstraint, *bound, bindings);
    }
    bool ok = true;
    for (int i = 0; i < constraints->len; i++) {
        struct type* c = ListGetIdx(constraints, i);
        struct type* bound = bindingGet(bindings, c->name);
        if (!bound || TypeIsGeneric(*bound)) continue; //still a pattern: checked where it is applied
        struct type want = TypeSubstitute(*c->varConstraint, bindings);
        if (TypeIsGeneric(want)) continue;
        struct var* missing = NULL;
        if (TypeSatisfiesConstraint(*bound, want, &missing)) continue;
        char tn[160], cn[160];
        RdSpellType(*bound, tn, sizeof(tn));
        struct type wantNamed = want.genericOrigin ? *want.genericOrigin : want;
        snprintf(cn, sizeof(cn), "%.*s", wantNamed.name.len, wantNamed.name.ptr);
        char* msg = MallocOrCrash(900);
        bool hash = missing && StrCmp(missing->name, StrFromCStr("Hash"));
        if (missing) snprintf(msg, 900, "%s does not satisfy the constraint %s on %.*s: it has no method %.*s that fits (G19)%s",
                              tn, cn, c->name.len, c->name.ptr, missing->name.len, missing->name.ptr,
                              hash ? ". The compiler supplies Hash only for a struct, enum or array value with no Eq of its "
                                     "own whose parts all have a hash (E10b) - declare 'Hash() I64', agreeing with '=='" : "");
        else snprintf(msg, 900, "%s does not satisfy the constraint %s on %.*s (G19)", tn, cn, c->name.len, c->name.ptr);
        ErrMsgSemantic(tok, msg);
        ok = false;
    }
    return ok;
}

// ---- generic instantiation (G16) ----

//one monomorphized copy of a generic function: the generic it came from, the type arguments it was
//instantiated with, and the ordinary non-generic var that was generated for it. Kept in one global list
//rather than per-module because a call can instantiate a generic declared in another module, and the
//copy has to live somewhere codegen will find it - it is added to the GENERIC's own module, so its
//mangled name is stable regardless of which module first triggered it.
//struct instantiation itself is declared in semantic.h, so codegen can walk the list
static struct list instantiations;
//monomorphized copies of generic STRUCT types (G10/G16), kept as struct type* so their addresses are
//stable: mod->types stores struct type BY VALUE, so adding to it during resolution would realloc and
//invalidate every pointer already handed out, exactly as for mod->vars.
static struct list typeInstantiations;
//the bindings of the instantiation whose body is being checked right now, or NULL outside one. A type
//variable written INSIDE a generic's body ("x mut <T> = a", or a "match <T>" operand) has to resolve to
//the concrete type that instantiation supplied - the body syntax still says "<T>", since it is the same
//syntax being checked again per instantiation (G16). Threaded as a static rather than through every
//type-resolution signature, and cleared on the way out so nothing outside an instantiation sees it.
static struct list* currentBindings;   //struct instantiation
//G8: the type parameters in scope while a declaration's own types are being resolved, so a bare IDEN
//inside a "type-args" list can name one - "Box<T> inside a declaration that declares T". For a generic
//TYPE that is its declared list, available before any field is resolved; for a FUNCTION there is no list
//(G3 makes the set whatever appears), so it is pre-scanned from the signature's own "<T>" occurrences.
//Resolving against a set fixed in advance is what keeps a misspelled type name an error rather than
//silently becoming a type variable.
static struct list* currentTypeParamNames;

//every name written as "<T>" anywhere under `node`, at any depth
static void collectTypeVarNames(struct syntax* node, struct list* out) {
    if (!node) return;
    if (node->type == SNTX_TYPE_VAR) {
        struct token t = firstTokOfType(node, TOK_IDEN);
        if (t.type != TOK_NONE) {
            struct str n = strFromTok(t);
            for (int i = 0; i < out->len; i++) if (StrCmp(*(struct str*)ListGetIdx(out, i), n)) return;
            ListAdd(out, &n);
        }
        return;
    }
    for (int i = 0; i < node->parts.len; i++) {
        struct syntaxPart* p = ListGetIdx(&node->parts, i);
        if (!p->isToken) collectTypeVarNames(p->sntx, out);
    }
}
static struct list pendingInstances; //int: indices into instantiations whose bodies are not yet checked
//the same idea for generic STRUCT types: a copy's constructor/destructor bodies are built from the
//generic's own field syntax against the copy's substituted types, and building one can instantiate
//further generics, so they queue here and drain alongside the function ones.
struct pendingTypeInst { struct type* spec; struct list bindings; };
static struct list pendingTypeInsts; //struct pendingTypeInst
void buildTypeBodies(struct semaModule* mod, struct type* t);

bool bindingsMatch(struct list* a, struct list* b) {
    if (a->len != b->len) return false;
    for (int i = 0; i < a->len; i++) {
        struct typeBinding* ba = ListGetIdx(a, i);
        struct type* bb = bindingGet(b, ba->name);
        if (!bb || !TypeIsSameStrict(ba->type, *bb)) return false; //T25b: Node& and mut Node& are two instantiations
    }
    return true;
}

//a short printable name for a type, used only to build a unique instantiation name below
//a heap copy of buf, as a struct str - the dynamic cases below outlive their own frame
//G16: this name IS an instantiation's identity, so it has to distinguish every type argument that is a
//DIFFERENT type. Two things used to collapse and both were real bugs. A struct contributed only its bare
//name, so two modules each declaring a "Point" - different types by owner+name - shared one instantiation
//of any generic over it, and the second module's uses were then rejected against the first's field list.
//And every array contributed the literal "arr", so "Box<int32[2]>" and "Box<int64[4]>" were one
//instantiation. Neither miscompiled, because the reuse always failed a later fit check, but both rejected
//correct programs with a diagnostic pointing somewhere else entirely.
static struct str modBaseName(struct semaModule* mod) {
    //M22a: a module's identity - its path - sanitized to what a symbol name may hold
    char* out = MallocOrCrash((size_t)mod->identity.len + 1);
    for (int i = 0; i < mod->identity.len; i++) {
        char c = mod->identity.ptr[i];
        out[i] = ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9') || c == '_') ? c : '_';
    }
    out[mod->identity.len] = '\0';
    return StrFromCStr(out);
}

//a growable text buffer: a type's spelling has no length limit, and one cut short would name a different type
struct sbuf { char* p; size_t len, cap; };
static void sbufAdd(struct sbuf* b, const char* s, size_t n) {
    if (b->len + n + 1 > b->cap) {
        b->cap = (b->len + n + 1) * 2;
        b->p = ReallocOrCrash(b->p, b->cap);
    }
    memcpy(b->p + b->len, s, n);
    b->len += n;
    b->p[b->len] = '\0';
}
static void sbufStr(struct sbuf* b, const char* s) { sbufAdd(b, s, strlen(s)); }
static void sbufS(struct sbuf* b, struct str s) { sbufAdd(b, s.ptr, (size_t)s.len); }
static struct str sbufTake(struct sbuf* b) {
    if (!b->p) sbufAdd(b, "", 0);
    return Str(b->p, (int)b->len);
}

//G16a: a type spelled as a symbol-safe name that tells apart every two types that are not the same type (T27) - an
//instantiation's name is its identity, so two different type arguments spelling alike would share one instantiation.
//A declared type is its module and name ("std_map.Node"; a generic one's instance "G-std_map.Box$I32-g"), a
//primitive its name; the rest are spelled by structure, each compound form bracketed so that what follows it can never
//be read as part of it: "A-" element "-n" (or "-<length>") "-e" an array, "F-" ... "-f" a function ("m-" a "mut"
//parameter, each parameter closed by "-p", the result in "R-" ... "-q", each error in "E-" ... "-x"), "T-" ... "-u" a
//tuple or an anonymous struct, "C-" ... "-d" an anonymous enum. A reference ends "-r", a writable one "-w" (T25b).
static void typeSpell(struct sbuf* b, struct type t) {
    if (t.unknown) {
        sbufStr(b, "unknown");
    } else if (PrimInfo(t.bType) && !t.owner) {
        sbufStr(b, PrimInfo(t.bType)->name); //T4
    } else if (t.bType == BASETYPE_BOOL && !t.owner) {
        sbufStr(b, "Bool");
    } else if (t.owner && t.name.len) {
        bool instance = memchr(t.name.ptr, '$', (size_t)t.name.len) != NULL;
        if (instance) sbufStr(b, "G-");
        sbufS(b, modBaseName(t.owner));
        sbufStr(b, ".");
        sbufS(b, t.name);
        if (instance) sbufStr(b, "-g");
    } else if (t.bType == BASETYPE_TYPEVAR) {
        sbufS(b, t.name);
    } else if (t.bType == BASETYPE_ARRAY) {
        sbufStr(b, "A-");
        if (t.arrElem) typeSpell(b, *t.arrElem);
        char len[32];
        snprintf(len, sizeof(len), "-%lld", t.arrLen ? t.arrLen->intLiteralVal : 0);
        sbufStr(b, t.arrMalloc ? "-n" : len);
        sbufStr(b, "-e");
    } else if (t.bType == BASETYPE_FUNC) {
        sbufStr(b, "F-");
        for (int i = 0; i < t.vars.len; i++) {
            struct var* v = ListGetIdx(&t.vars, i);
            if (v->mut) sbufStr(b, "m-");
            typeSpell(b, v->type);
            sbufStr(b, "-p");
        }
        if (t.hasRetType) {
            sbufStr(b, "R-");
            typeSpell(b, *t.retType);
            sbufStr(b, "-q");
        }
        for (int i = 0; i < t.errors.len; i++) {
            struct type* e = *(struct type**)ListGetIdx(&t.errors, i);
            sbufStr(b, "E-");
            if (e->owner && e->name.len) typeSpell(b, *e);
            else sbufStr(b, "default"); //R15: the default error, which has no name
            sbufStr(b, "-x");
        }
        sbufStr(b, "-f");
    } else if (t.bType == BASETYPE_CHOICE) {
        sbufStr(b, "C-");
        for (int i = 0; i < t.vars.len; i++) {
            struct var* c = ListGetIdx(&t.vars, i);
            sbufS(b, c->name);
            sbufStr(b, "-");
            struct type payload = c->type;
            payload.structMAlloc = false;
            typeSpell(b, payload);
            sbufStr(b, "-c");
        }
        sbufStr(b, "-d");
    } else if (t.bType == BASETYPE_STRUCT || t.isTuple) {
        sbufStr(b, "T-");
        for (int i = 0; i < t.vars.len; i++) {
            typeSpell(b, ((struct var*)ListGetIdx(&t.vars, i))->type);
            sbufStr(b, "-t");
        }
        sbufStr(b, "-u");
    } else {
        sbufStr(b, "t");
    }
    //reference-shapedness is part of identity (T27), and so is a reference's permission (T25b)
    if (t.structMAlloc) sbufStr(b, t.bType == BASETYPE_FUNC || !t.refMut ? "-r" : "-w");
}

struct str typeShortName(struct type t) {
    struct sbuf b = {0};
    typeSpell(&b, t);
    return sbufTake(&b);
}

//"max$I32", "pairUp$I32$U8" - one name per distinct type-argument set, in the generic's own declared parameter order,
//so the same arguments always produce the same name and different ones never do (G16a). It is mangled again by
//codegen under the owning module like any other name, and has no length limit.
struct str instantiationNameFor(struct str base, struct list* typeParams, struct list* bindings) {
    struct sbuf b = {0};
    sbufS(&b, base);
    for (int i = 0; i < typeParams->len; i++) {
        struct str pname = *(struct str*)ListGetIdx(typeParams, i);
        struct type* bound = bindingGet(bindings, pname);
        sbufStr(&b, "$");
        if (bound) typeSpell(&b, *bound);
        else sbufStr(&b, "x");
    }
    return sbufTake(&b);
}

struct str instantiationName(struct var* generic, struct list* bindings) {
    return instantiationNameFor(generic->name, &generic->type.typeParams, bindings);
}

//finds or creates the monomorphized copy of `generic` for `bindings` (G16). Identical type arguments
//always reuse one copy, so a generic called a hundred times with int32 is compiled once. A newly created
//one is queued rather than checked here: checking its body can discover further instantiations (a
//generic calling another generic), so the queue is drained to a fixed point after the main pass - see
//semaDrainInstantiations.
static void assignImplicitParamScopes(struct type* ft);
static void finishTypeVarResult(struct type* t, struct token tok);
//G17: how deeply a type nests other types - an array its element, an instance its arguments, a function its
//parameters and result. An instantiation needing arguments nested deeper than any program writes is one whose
//instantiations would never stop growing ("deep(Box<<T>>(x))", a "Grow<T>" holding a "Grow<Array<<T>>&>")
#define INSTANTIATION_DEPTH_LIMIT 48
static int typeNestingDepth(struct type t, int depth) {
    if (depth > INSTANTIATION_DEPTH_LIMIT) return depth;
    int d = 0;
    if (t.bType == BASETYPE_ARRAY && t.arrElem) d = typeNestingDepth(*t.arrElem, depth + 1);
    for (int i = 0; t.genericOrigin && i < t.typeArgs.len; i++) {
        int k = typeNestingDepth(*(struct type*)ListGetIdx(&t.typeArgs, i), depth + 1);
        if (k > d) d = k;
    }
    if (t.bType == BASETYPE_FUNC || t.isTuple) {
        for (int i = 0; i < t.vars.len; i++) {
            int k = typeNestingDepth(((struct var*)ListGetIdx(&t.vars, i))->type, depth + 1);
            if (k > d) d = k;
        }
        if (t.bType == BASETYPE_FUNC && t.hasRetType) {
            int k = typeNestingDepth(*t.retType, depth + 1);
            if (k > d) d = k;
        }
    }
    return d > depth ? d : depth;
}
static bool bindingsTooDeep(struct list* typeParams, struct list* bindings) {
    for (int i = 0; i < typeParams->len; i++) {
        struct type* b = bindingGet(bindings, *(struct str*)ListGetIdx(typeParams, i));
        if (b && typeNestingDepth(*b, 0) > INSTANTIATION_DEPTH_LIMIT) return true;
    }
    return false;
}
//G17: reported once, at the declaration of the generic whose instantiation first went too deep - the others
//growing with it (a generic instantiating another with its own argument) are the same cycle
static struct list unboundedReported;
static void reportUnbounded(struct token tok) {
    if (unboundedReported.len) return;
    if (!unboundedReported.elemSize) unboundedReported = ListInit(sizeof(struct token));
    ListAdd(&unboundedReported, &tok);
    ErrMsgSemantic(tok, UNBOUNDED_INSTANTIATION);
}

struct var* instantiateFunc(struct var* generic, struct list* bindings) {
    for (int i = 0; i < instantiations.len; i++) {
        struct instantiation* inst = ListGetIdx(&instantiations, i);
        if (inst->generic == generic && bindingsMatch(&inst->bindings, bindings)) return inst->specialized;
    }
    bool tooDeep = bindingsTooDeep(&generic->type.typeParams, bindings);
    if (tooDeep) reportUnbounded(generic->tok);
    struct var* spec = VarAllocSetOrigin();
    *spec = *generic;
    spec->name = instantiationName(generic, bindings);
    spec->type = TypeSubstitute(generic->type, bindings);
    spec->type.typeParams = ListInit(sizeof(struct str)); //the copy is not generic - that is the point
    //O4b/G11: a parameter written "<T>" became a reference where T is one, and is passed with its scope
    //like any other - the generic's own signature could not know to give it one
    spec->type.scopeVars = ListInit(sizeof(struct var*));
    for (int i = 0; i < generic->type.scopeVars.len; i++) ListAdd(&spec->type.scopeVars, ListGetIdx(&generic->type.scopeVars, i));
    assignImplicitParamScopes(&spec->type);
    //O14b: a result written as a type variable that became a reference, or a value holding references, is built in a
    //result scope as any such result is - which the generic's own signature could not know to give it. Left without
    //one, the result was taken for a temporary wherever it was put, though it is whatever the body returned
    if (spec->type.hasRetType && !spec->type.resultScope && TypeIsGeneric(*generic->type.retType))
        finishTypeVarResult(&spec->type, spec->tok);
    spec->origin = spec;
    spec->codeBlock = ListInit(sizeof(struct statement));

    struct instantiation inst = (struct instantiation){0};
    inst.generic = generic;
    inst.bindings = *bindings;
    inst.specialized = spec;
    ListAdd(&instantiations, &inst);
    int idx = instantiations.len -1;
    if (!tooDeep) ListAdd(&pendingInstances, &idx); //G17: its body would only instantiate a deeper one

    //deliberately NOT added to the owning module's own vars list: that list holds struct var BY VALUE, so
    //growing it during body checking would realloc its backing array and invalidate every struct var*
    //already handed out (every op->readVar, every parameter origin). The instantiation list holds
    //heap-allocated vars whose addresses are stable, and codegen walks it separately.
    return spec;
}

//finds or creates the monomorphized copy of a generic struct type for the given type arguments. The
//copy's NAME carries its arguments ("Pair$int32$int64"), which is what makes G10 fall out for free:
//struct identity is owner+name (TypeIsSame), so two instantiations are the same type exactly when their
//arguments are - no separate comparison needed. Codegen mangles that name like any other, so each copy
//gets its own LLVM aggregate.
//the finished declaration a struct- or enum-typed snapshot stands for: a declared type by owner+name, or an
//instantiation. NULL for an anonymous struct (a choice payload), which has no identity to look up.
static struct type* canonicalStructOf(struct type t) {
    //VOID: a snapshot of a declaration that had not yet learned what it was - read by value while being resolved
    if ((t.bType != BASETYPE_STRUCT && t.bType != BASETYPE_CHOICE && t.bType != BASETYPE_VOID) || !t.owner || !t.name.len) return NULL;
    struct type* c = TypeGetList(&t.owner->types, t.name);
    if (c) return c;
    for (int i = 0; i < typeInstantiations.len; i++) {
        struct type* inst = *(struct type**)ListGetIdx(&typeInstantiations, i);
        if (inst->owner == t.owner && StrCmp(inst->name, t.name)) return inst;
    }
    return NULL;
}

static void refreshTypeSnapshot(struct type* ft) {
    if (ft->bType == BASETYPE_ARRAY && ft->arrElem) {
        struct type* elem = MallocOrCrash(sizeof(struct type)); //never write through a shared element
        *elem = *ft->arrElem;
        refreshTypeSnapshot(elem);
        ft->arrElem = elem;
        return;
    }
    if (ft->unknown) return; //reported where it was written
    struct type* c = canonicalStructOf(*ft);
    if (!c || c->resolving || c->placeholder) return;
    //the marker and scope belong to this USE of the type, not to the declaration
    bool mAlloc = ft->structMAlloc;
    bool refMut = ft->refMut; //T25b: the permission belongs to the use too
    struct var* scopeParam = ft->scopeParam;
    int scopeDepth = ft->scopeDepth;
    *ft = *c;
    ft->structMAlloc = mAlloc;
    ft->refMut = refMut;
    ft->scopeParam = scopeParam;
    ft->scopeDepth = scopeDepth;
}

//a field whose type names a struct still being resolved - its own type, through "&", or one in a cycle
//with it - holds a SNAPSHOT taken mid-resolution, with only the fields declared before that point. So
//"a.next.v" worked where "a.next.next" was an unknown member. Run once a type is finished, this points
//every such field at the finished declaration; the finished one's own fields are refreshed in turn, so a
//chain of any length reads correctly.
//An enum's payloads are refreshed the same way: "type Node struct(e Expr) { e }" beside "Add(a Node&, b Node&)" is
//how an enum holds itself (T17), and the payload's Node used to stay the empty snapshot, so "a.e" was unknown. The
//cases' storage is shared by every copy of the enum's type, so refreshing the declaration's reaches them all.
void refreshStructSnapshots(struct type* t) {
    if (t->bType == BASETYPE_CHOICE) {
        for (int i = 0; i < t->vars.len; i++) {
            struct var* c = ListGetIdx(&t->vars, i);
            for (int k = 0; k < c->type.vars.len; k++) refreshTypeSnapshot(&((struct var*)ListGetIdx(&c->type.vars, k))->type);
        }
        return;
    }
    if (t->bType != BASETYPE_STRUCT) return;
    for (int i = 0; i < t->vars.len; i++) refreshTypeSnapshot(&((struct var*)ListGetIdx(&t->vars, i))->type);
    //a constructor's parameters were resolved beside the fields, so they hold the same snapshots
    if (t->hasCtor && t->ctorFunc) {
        for (int i = 0; i < t->ctorFunc->type.vars.len; i++) {
            refreshTypeSnapshot(&((struct var*)ListGetIdx(&t->ctorFunc->type.vars, i))->type);
        }
    }
}

//T17/T13: whether a value of type t holds a value of the declaration `target` - by value, never through a reference
//(or an array, whose elements are held through a pointer)
static bool typeHoldsByValue(struct type t, struct type* target, int depth) {
    if (depth > 64 || t.structMAlloc || t.unknown) return false;
    //an inline array (C2e) holds its elements in the value itself
    if (t.bType == BASETYPE_ARRAY) return !t.arrMalloc && t.arrElem && typeHoldsByValue(*t.arrElem, target, depth + 1);
    if (t.bType != BASETYPE_STRUCT && t.bType != BASETYPE_CHOICE) return false;
    if (t.owner && t.name.len && canonicalStructOf(t) == target) return true;
    for (int i = 0; i < t.vars.len; i++) {
        struct var* f = ListGetIdx(&t.vars, i);
        if (t.bType == BASETYPE_CHOICE) {
            for (int k = 0; k < f->type.vars.len; k++) {
                if (typeHoldsByValue(((struct var*)ListGetIdx(&f->type.vars, k))->type, target, depth + 1)) return true;
            }
        } else if (typeHoldsByValue(f->type, target, depth + 1)) return true;
    }
    return false;
}

//a struct or enum holding itself by value would be infinitely large. Reported at the field, which is then given a
//stand-in type so nothing after walks the cycle - it used to reach codegen as an unsized type (a struct) or, once an
//enum's snapshots were refreshed, recurse forever (an enum)
static void checkHoldsItself(struct type* t) {
    if (t->bType != BASETYPE_STRUCT && t->bType != BASETYPE_CHOICE) return;
    for (int i = 0; i < t->vars.len; i++) {
        struct var* f = ListGetIdx(&t->vars, i);
        int n = t->bType == BASETYPE_CHOICE ? f->type.vars.len : 1;
        for (int k = 0; k < n; k++) {
            struct var* fld = t->bType == BASETYPE_CHOICE ? ListGetIdx(&f->type.vars, k) : f;
            if (!typeHoldsByValue(fld->type, t, 0)) continue;
            ErrMsgSemantic(fld->tok, TYPE_HOLDS_ITSELF);
            fld->type = unknownTypeStandIn();
        }
    }
}

struct type* instantiateType(struct type* generic, struct list* bindings) {
    struct str name = instantiationNameFor(generic->name, &generic->typeParams, bindings);
    for (int i = 0; i < typeInstantiations.len; i++) {
        struct type* t = *(struct type**)ListGetIdx(&typeInstantiations, i);
        if (t->owner == generic->owner && StrCmp(t->name, name)) return t;
    }
    //registered BEFORE its fields are substituted, so a field naming this very instantiation - a generic
    //linked node's "next Node<T>&" - finds it here instead of instantiating it again, forever. What that
    //field receives is a snapshot of an unfinished type; refreshSelfSnapshots below completes it.
    struct type* spec = MallocOrCrash(sizeof(struct type));
    *spec = *generic;
    spec->name = name;
    spec->vars = ListInit(sizeof(struct var));
    ListAdd(&typeInstantiations, &spec);
    if (bindingsTooDeep(&generic->typeParams, bindings)) { //G17: its fields would only instantiate a deeper one
        reportUnbounded(generic->tok);
        spec->typeParams = ListInit(sizeof(struct str));
        spec->ctorFunc = NULL;
        spec->destructFunc = NULL;
        return spec;
    }
    *spec = TypeSubstitute(*generic, bindings);
    spec->name = name;
    //G8a: remember what this was applied from, and with what. TypeSubstitute needs both to re-derive the
    //name when an argument that was a type variable becomes concrete.
    spec->genericOrigin = generic;
    spec->typeArgs = ListInit(sizeof(struct type));
    bool argsStillGeneric = false;
    for (int i = 0; i < generic->typeParams.len; i++) {
        struct type* a = bindingGet(bindings, *(struct str*)ListGetIdx(&generic->typeParams, i));
        struct type at = a ? *a : TypeVanilla(BASETYPE_VOID);
        if (TypeIsGeneric(at)) argsStillGeneric = true;
        ListAdd(&spec->typeArgs, &at);
    }
    //an application whose arguments are not all known yet is still generic - it is a pattern, not a type
    //to emit. Keeping typeParams non-empty is what makes codegen skip it (G16) and what stops its
    //constructor being emitted with a field whose type is still a variable.
    spec->typeParams = argsStillGeneric ? generic->typeParams : ListInit(sizeof(struct str));
    refreshStructSnapshots(spec);

    //D13/D14a re-checked against the SUBSTITUTED field types. The generic's own declaration cannot answer
    //this: a "<T>[n]&s" field's element type is a type variable, and a type variable contains no reference,
    //so the check passed at declaration and nothing re-asked once T became a struct holding one. The
    //result was zero-filled storage full of null references in a language with no null - reachable, and a
    //segfault on the first read through one. Every rule that depends on what a type CONTAINS has to be
    //re-run per instantiation for the same reason; this is the one that had teeth.
    //a generic type's constructor is generic too, and has to be monomorphized alongside it - otherwise
    //"Vec<int32>(10)" would call a constructor whose parameters and fields still mention T
    if (generic->ctorFunc) {
        struct var* ctor = VarAllocSetOrigin();
        *ctor = *generic->ctorFunc;
        ctor->name = instantiationNameFor(generic->ctorFunc->name, &generic->typeParams, bindings);
        ctor->type = TypeSubstitute(generic->ctorFunc->type, bindings);
        ctor->type.typeParams = ListInit(sizeof(struct str));
        //the copy's own stable slot, never a snapshot of it: the destructor below is attached to *spec
        //after this point, and a by-value copy taken here would freeze the GENERIC's destructFunc into
        //the constructed value's type - registering the wrong (never-emitted) symbol at every
        //construction. Mirrors resolveStructCtorInto's own "the same stable slot" for the non-generic case.
        if (ctor->type.hasRetType) ctor->type.retType = spec;
        ctor->origin = ctor;
        spec->ctorFunc = ctor;
    }
    //and so is its destructor, for the same reason - its ".self" parameter is the generic type itself,
    //which every substituted field type has to follow (C7)
    if (generic->destructFunc) {
        struct var* dtor = VarAllocSetOrigin();
        *dtor = *generic->destructFunc;
        dtor->name = instantiationNameFor(generic->destructFunc->name, &generic->typeParams, bindings);
        dtor->type = TypeSubstitute(generic->destructFunc->type, bindings);
        dtor->type.typeParams = ListInit(sizeof(struct str));
        dtor->origin = dtor;
        spec->destructFunc = dtor;
        struct var* self = ListGetIdx(&dtor->type.vars, 0);
        self->type = *spec; //the copy's own layout, and the copy's own destructFunc - see the by-value
                            //snapshot in resolveStructCtorInto for why this identity matters
    }
    if (spec->ctorFunc) {
        struct pendingTypeInst p = (struct pendingTypeInst){0};
        p.spec = spec;
        p.bindings = *bindings;
        ListAdd(&pendingTypeInsts, &p);
    }
    return spec;
}

//base type a name resolves to, before any array suffixes on the reference are applied
struct type* SemanticBuiltinType(struct str name);
struct type TypeTuple(struct list* elems);
//T7: "Array<T>" - the one array type a program writes. It is built in rather than declared anywhere, and
//unlike a declared generic its argument may carry a bare reference marker ("Array<Point&>", an array of
//references), since an element reference always lives in its array's own scope
struct type builtinArrayType(struct semaModule* mod, struct syntax* argsNode, struct token nameTok, struct list* scopeParams) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_ARRAY;
    t.arrMalloc = true;
    t.tok = nameTok;
    t.arrElem = MallocOrCrash(sizeof(struct type));
    *t.arrElem = TypeVanilla(BASETYPE_INT32);
    if (!argsNode) { ErrMsgSemantic(nameTok, MISSING_TYPE_ARGS); return t; }
    struct list argNodes = allSyntaxParts(argsNode);
    if (argNodes.len != 1) { ErrMsgSemantic(firstTokAnywhere(argsNode), WRONG_TYPE_ARG_COUNT); return t; }
    *t.arrElem = resolveTypeExpr(mod, *(struct syntax**)ListGetIdx(&argNodes, 0), scopeParams);
    if (t.arrElem->scopeParam) ErrMsgSemantic(firstTokAnywhere(argsNode), NAMED_SCOPE_ON_ELEMENT);
    //T7a: an array's storage lives apart from the value naming it, so copying an array of arrays would copy
    //the inner arrays' names and share their storage - an element array is written as a reference
    if (t.arrElem->bType == BASETYPE_ARRAY && !t.arrElem->structMAlloc) ErrMsgSemantic(firstTokAnywhere(argsNode), ARRAY_NESTED_BY_VALUE);
    return t;
}
static struct type resolveTypeArg(struct semaModule* mod, struct syntax* node, struct list* scopeParams);

//G19: a constraint is an interface - anything else is reported, and no constraint applies
struct type resolveTypeExpr(struct semaModule* mod, struct syntax* typeExprNode, struct list* scopeParams);
static bool resolvingConstraint = false;
static struct type* resolveConstraint(struct semaModule* mod, struct syntax* node, struct list* scopeParams) {
    bool prev = resolvingConstraint;
    resolvingConstraint = true;
    struct type c = resolveTypeExpr(mod, node, scopeParams);
    resolvingConstraint = prev;
    if (c.bType != BASETYPE_INTERFACE) { ErrMsgSemantic(firstTokAnywhere(node), CONSTRAINT_NOT_INTERFACE); return NULL; }
    struct type* out = MallocOrCrash(sizeof(struct type));
    *out = c;
    return out;
}

struct type resolveTypeRefBase(struct semaModule* mod, struct syntax* refNode, struct list* scopeParams) {
    //a type-var head short-circuits every name lookup below: there is nothing to resolve, the variable
    //stands for whatever the instantiation supplies
    struct syntax* varNode = firstPartOfType(refNode, SNTX_TYPE_VAR);
    if (varNode) {
        struct token nameTok = firstTokOfType(varNode, TOK_IDEN);
        struct str vname = strFromTok(nameTok);
        //inside an instantiation, a type variable IS its bound type - see currentBindings
        if (currentBindings) {
            struct type* bound = bindingGet(currentBindings, vname);
            if (bound) return *bound;
        }
        struct type tv = TypeVar(vname, nameTok);
        struct syntax* cNode = firstPartOfType(varNode, SNTX_TYPE_EXPR);
        if (cNode) tv.varConstraint = resolveConstraint(mod, cNode, scopeParams);
        return tv;
    }
    (void)scopeParams; //no longer used to resolve a scope tag here - see applyRefMarker
    struct syntax* nameNode = firstPartOfType(refNode, SNTX_NAME);
    struct list idens = allTokOfType(nameNode, TOK_IDEN);
    struct token nameTok;
    struct type* found;

    if (idens.len == 1) {
        nameTok = *(struct token*)ListGetIdx(&idens, 0);
        struct str name = strFromTok(nameTok);
        //G8: a bare IDEN here may name a type parameter in scope rather than a declared type, which is
        //what lets one generic be written in terms of another. Checked before the declared-type lookup so
        //G8b: a type variable is written "<T>" everywhere, type arguments included - "Cell<<T>>" - so a bare
        //name is always a declared type. A bare name that happens to be a variable in scope is diagnosed
        //as such rather than as an unknown type, since that is the mistake it almost certainly is.
        bool namesVariable = currentBindings && bindingGet(currentBindings, name);
        for (int i = 0; !namesVariable && currentTypeParamNames && i < currentTypeParamNames->len; i++) {
            if (StrCmp(*(struct str*)ListGetIdx(currentTypeParamNames, i), name)) namesVariable = true;
        }
        if (namesVariable && !TypeGetList(&mod->types, name)) {
            ErrMsgSemantic(nameTok, TYPE_VAR_WRITTEN_BARE);
            return TypeVar(name, nameTok);
        }
        found = typeNamed(mod, name);
        if (!found && StrCmp(name, StrFromCStr("Array"))) {
            return builtinArrayType(mod, firstPartOfType(refNode, SNTX_TYPE_ARGS), nameTok, scopeParams);
        }
        if (!found) {
            if (StrCmp(name, StrFromCStr("Bool"))) { struct type v = TypeVanilla(BASETYPE_BOOL); v.tok = nameTok; return v; }
            enum baseType pb;
            if (PrimByName(name, &pb)) { struct type v = TypeVanilla(pb); v.tok = nameTok; return v; } //T4
            found = SemanticBuiltinType(name);
            if (!found) {
                reportUnknownType(mod, nameTok);
                return unknownTypeStandIn();
            }
        }
    } else {
        struct semaModule* target = resolveAliasChain(mod, idens, 1);
        if (!target) return TypeVanilla(BASETYPE_INT32); //error already reported
        nameTok = *(struct token*)ListGetIdx(&idens, idens.len -1);
        struct str name = strFromTok(nameTok);
        found = TypeGetList(&target->types, name);
        if (!found) { reportUnknownType(target, nameTok); return unknownTypeStandIn(); }
        if (!isPublic(name)) { ErrMsgSemantic(nameTok, TYPE_IS_PRIVATE); return TypeVanilla(BASETYPE_INT32); }
    }

    //eager resolution is skipped only when found is ALREADY mid-resolution right now (found->resolving) -
    //the genuine self-reference case ("next Node<>", or a mutual cycle through several types), where
    //forcing it here would either recurse straight back into itself or (since resolveTypeDecl's own
    //re-entrancy guard treats re-entering as an error) wrongly report STRUCT_NOT_YET_DEFINED for a
    //perfectly legitimate "&"-broken cycle. A "&"-indirect reference is a pointer, so it doesn't NEED its
    //target fully resolved to know its own size either way - but a fresh, not-yet-mid-resolution target
    //(including a cross-module one nothing else has referenced yet) is always safe, and needed, to resolve
    //eagerly right here.
    //A real bug found and fixed: this used to key off "does refNode carry a '&' marker at all"
    //(hasTokOfType(refNode, TOK_BTWSE_AND)) instead - a much blunter check that skipped eager resolution for
    //EVERY "&"-marked reference, self-referential or not. struct type is copied BY VALUE at "return
    //*found" below, not accessed through a pointer thereafter, so a reference that happened to be the
    //FIRST thing anywhere to mention its target type permanently baked in a still-placeholder snapshot
    //(empty .vars) into that one field/var/param's own type - never refreshed even after something else
    //later forced the canonical entry (found itself) to resolve for real. Invisible as long as every "&"
    //reference to a given type was preceded, somewhere in resolution order, by at least one OTHER,
    //non-"&" reference to the same type (which happened to be true of every existing test); surfaced by a
    //cross-module "&name"-tagged field ("box sh.WrappedPoint<hs>") whose target had no such earlier
    //reference anywhere - "h.box.inner" failed with "unknown struct member" because h.box's own snapshot
    //of WrappedPoint's type still had zero fields. found->resolving is the precise fact the old check was
    //really trying to approximate; using it directly fixes this with no loss of the self-reference safety
    //it was protecting.
    if (!found->resolving) resolveTypeDecl(found);

    //G8: a generic type is instantiated by writing its arguments, and is never valid without them. The
    //argument list is positional against the type's own declared parameter order (G7) - the reason a type
    //needs a declared list where a function, whose arguments are inferred, does not.
    struct syntax* argsNode = firstPartOfType(refNode, SNTX_TYPE_ARGS);
    if (found->typeParams.len == 0) {
        if (argsNode) ErrMsgSemantic(firstTokAnywhere(argsNode), TYPE_ARGS_ON_NON_GENERIC);
        return *found;
    }
    if (!argsNode) { ErrMsgSemantic(nameTok, MISSING_TYPE_ARGS); return *found; }
    struct list argNodes = allSyntaxParts(argsNode);
    if (argNodes.len != found->typeParams.len) {
        ErrMsgSemantic(firstTokAnywhere(argsNode), WRONG_TYPE_ARG_COUNT);
        return *found;
    }
    struct list bindings = ListInit(sizeof(struct typeBinding));
    for (int i = 0; i < argNodes.len; i++) {
        struct typeBinding b = (struct typeBinding){0};
        b.name = *(struct str*)ListGetIdx(&found->typeParams, i);
        //G11: a type argument may be a reference, written with a bare marker - wherever the instantiation
        //holds one, it lives in its container's scope (O5), as an array's element reference does. A marker
        //naming anything ("&x", "&return") would name a scope of whoever wrote it, inside generic code that
        //cannot see it (O11) - rejected as written, and the argument resolved with that marker's own
        //diagnostics muted, so the one real error stands alone
        b.type = resolveTypeArg(mod, *(struct syntax**)ListGetIdx(&argNodes, i), scopeParams);
        ListAdd(&bindings, &b);
    }
    checkTypeConstraints(&found->typeConstraints, &bindings, firstTokAnywhere(argsNode)); //G19
    return *instantiateType(found, &bindings);
}

//applies the trailing "&"/"&name" marker (if present on refNode at all) to t, marking it heap-indirect
//- t may be a struct or an array of anything by this point, since this runs AFTER applyArraySuffixes, so
//the marker governs the reference as a whole ("a reference to a [3]Point", not "an array of 3 Point
//references"). See resolveTypeRefBase for why *whether* a marker is present has to be known before that
//point (to avoid eagerly resolving a self-referential type), even though its *effect* is applied after.
//G11: whether a type argument's syntax writes a reference marker naming anything - "&x" or "&return"
static bool syntaxHasNamedMarker(struct syntax* s) {
    if (s->type == SNTX_REF_MARKER || s->type == SNTX_ELEM_REF_MARKER)
        return hasTokOfType(s, TOK_IDEN) || hasTokOfType(s, TOK_RET);
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = ListGetIdx(&s->parts, i);
        if (!p->isToken && syntaxHasNamedMarker(p->sntx)) return true;
    }
    return false;
}

struct type resolveTypeExpr(struct semaModule* mod, struct syntax* node, struct list* scopeParams);
static struct type resolveTypeArg(struct semaModule* mod, struct syntax* node, struct list* scopeParams) {
    if (!syntaxHasNamedMarker(node)) return resolveTypeExpr(mod, node, scopeParams);
    ErrMsgSemantic(firstTokAnywhere(node), TYPE_ARG_HAS_REFERENCE_MARKER);
    ErrMsgMuteStart();
    struct type t = resolveTypeExpr(mod, node, scopeParams);
    ErrMsgMuteEnd();
    t.scopeParam = NULL;
    t.scopeWritten = false;
    return t;
}

struct type applyRefMarker(struct type t, struct syntax* markerNode, struct list* scopeParams) {
    if (!markerNode) return t;
    //G11a: "<T>&" is a reference to whatever T is bound to - which must then be a struct, an enum or an array, checked where
    //the variable is bound
    //(a trait is reported as a trait - TRAIT_NOT_A_TYPE - not a second time here)
    if (t.bType != BASETYPE_STRUCT && t.bType != BASETYPE_ARRAY && t.bType != BASETYPE_TYPEVAR
            && t.bType != BASETYPE_VOID && t.bType != BASETYPE_INTERFACE && t.bType != BASETYPE_CHOICE) {
        ErrMsgSemantic(firstTokOfType(markerNode, TOK_BTWSE_AND), INVALID_REFERENCE_TARGET);
        return t;
    }
    t.structMAlloc = true;
    t.scopeParam = resolveScopeTag(markerNode, scopeParams);
    if (scopeTagByVariable && !t.scopeParam) { t.scopeDepth = scopeTagDepth; t.scopeWritten = true; } //O4a
    //a "&"-indirect reference may be grabbed while its (struct) target is still mid-resolution (see
    //resolveTypeRefBase) - its placeholder bType (still BASETYPE_VOID at that point) must not leak
    //through; only reachable with zero array suffixes, since applyArraySuffixes always produces a real
    //BASETYPE_ARRAY outer shell regardless of whether its element is still a placeholder
    if (t.bType == BASETYPE_VOID) t.bType = BASETYPE_STRUCT;
    return t;
}

//L10/L10a: the written value of an integer literal. Hex is detected by its own prefix rather than by
//handing strtoll base 0, which would also read a leading zero as octal and silently change what "0755"
//means. Hex goes through strtoull and is reinterpreted, so the full width is writable: 0xFFFFFFFFFFFFFFFF
//is -1 at int64 rather than saturating, which is the bit-pattern reading hex is written for.
//L10b: separators are for the reader only, so they come out before the value is parsed. In place, since
//every caller hands over a buffer it owns.
void stripDigitSeparators(char* buf) {
    char* w = buf;
    for (char* r = buf; *r; r++) if (*r != '_') *w++ = *r;
    *w = '\0';
}

//L10: a decimal literal is read as the unsigned value it writes, so one above I64's maximum is the bit pattern of a U64
//(T6a gives it that type); one beyond 64 bits sets *tooLarge rather than saturating, as strtoll did - which made
//"99999999999999999999999" quietly I64's maximum. A leading "-" (only a -D value has one, B10) reads a negative value.
long long parseIntLiteralChecked(char* buf, bool* tooLarge) {
    stripDigitSeparators(buf);
    *tooLarge = false;
    bool neg = buf[0] == '-';
    char* d = neg ? buf + 1 : buf;
    int base = 10;
    if (d[0] == '0' && (d[1] == 'x' || d[1] == 'X')) { base = 16; d += 2; }
    else if (d[0] == '0' && (d[1] == 'b' || d[1] == 'B')) { base = 2; d += 2; }
    errno = 0;
    unsigned long long u = strtoull(d, NULL, base);
    if (errno == ERANGE) *tooLarge = true;
    if (neg) {
        if (u > 9223372036854775808ULL) *tooLarge = true;
        return (long long)(0 - u);
    }
    return (long long)u;
}

long long parseIntLiteralText(char* buf) {
    bool tooLarge;
    return parseIntLiteralChecked(buf, &tooLarge);
}

//L10: is this literal's text decimal - not a hex or binary bit pattern (L10a/L10c)
static bool intLiteralIsDecimal(struct str text) {
    return !(text.len > 1 && text.ptr[0] == '0' && (text.ptr[1] == 'x' || text.ptr[1] == 'X' || text.ptr[1] == 'b'
                                                    || text.ptr[1] == 'B'));
}

//attempts to evaluate exprNode as a compile-time-constant integer literal (a bare TOK_INT_LIT, optionally
//negated by a single leading unary '-') - used for compile-time-length array sizes, which must be known at compile time
bool tryEvalConstIntExpr(struct syntax* s, long long* out) {
    bool negate = false;
    while (true) {
        if (s->type == SNTX_EXPR_PRIMARY) {
            if (s->parts.len != 1 || !partAt(s, 0)->isToken || partAt(s, 0)->tok.type != TOK_INT_LIT) return false;
            struct token tok = partAt(s, 0)->tok;
            char buf[tok.str.len +1];
            memcpy(buf, tok.str.ptr, (size_t)tok.str.len);
            buf[tok.str.len] = '\0';
            *out = parseIntLiteralText(buf);
            if (negate) *out = -*out;
            return true;
        }
        if (s->type == SNTX_EXPR_UNARY && s->parts.len == 2) {
            struct syntax* opNode = partSntx(s, 0);
            struct token opTok = partAt(opNode, 0)->tok;
            if (opTok.type != TOK_SUB || negate) return false; //only a single leading '-' is supported
            negate = true;
            s = partSntx(s, 1);
            continue;
        }
        if (s->parts.len != 1 || partAt(s, 0)->isToken) return false;
        s = partSntx(s, 0);
    }
}

//true if t is - or contains, at any depth through plain embedded array elements - a struct that declares
//a destructor but is not itself reference-shaped. Such a type is reference-only (C11): a destructor
//asserts an instance owns something releasable exactly once, which needs a well-defined instance count,
//and a value type (structurally compared, freely copied) has none. Stops at a reference: an already-"&"
//element/field is a separate instance with its own allocation and its own scope registration (O16), which
//is exactly the shape that IS allowed.
//THE single place that knows which types nest other types as VALUES: a struct's fields, an array's
//element type, a choice case's payload. Every predicate that has to look inside everything a value can
//hold goes through this, so a new kind of container is taught to the language once rather than in each
//walker independently.
//That is not hypothetical tidiness: when choice cases gained payloads, three separate walkers kept
//returning "nothing inside" for a choice, and two of those were safety checks. One shipped a zero-filled
//array of null references that matched a case and dereferenced cleanly to nothing; the other let a
//function return a reference into the scope that closed at the return. Both were found by hand, one at a
//time. With the containers enumerated once, adding the next one cannot miss a checker.
struct list TypeValueChildren(struct type t) {
    struct list out = ListInit(sizeof(struct type));
    //a REFERENCE to a struct or choice nests nothing as a value - its fields live in the referent, a
    //separate instance. Stopping here is also what terminates on a self-referential type, which is a
    //genuine cycle once its field snapshots are refreshed (refreshStructSnapshots).
    if ((t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_CHOICE) && t.structMAlloc) return out;
    if (t.bType == BASETYPE_ARRAY) {
        if (t.arrElem) ListAdd(&out, t.arrElem);
        return out;
    }
    if (t.bType == BASETYPE_STRUCT) {
        for (int i = 0; i < t.vars.len; i++) {
            struct type ft = (*(struct var*)ListGetIdx(&t.vars, i)).type;
            ListAdd(&out, &ft);
        }
        return out;
    }
    //T17: a choice's cases each carry a payload struct, and a value holds one of them. Which one is a
    //run-time fact, so a property that must hold of the value holds of EVERY case's payload.
    if (t.bType == BASETYPE_CHOICE) {
        for (int i = 0; i < t.vars.len; i++) {
            struct type pt = (*(struct var*)ListGetIdx(&t.vars, i)).type;
            ListAdd(&out, &pt);
        }
        return out;
    }
    return out;
}

//the walkers through TypeValueChildren stop at a reference, which ends a cycle through one; a type holding itself by
//value (T16) is reported, but a walk can meet it first - while an inline field's length is still being decided (C2e),
//say - so each is bounded too
#define VALUE_WALK_LIMIT 64

static bool typeHasBareDestructStructAt(struct type t, int depth) {
    if (depth > VALUE_WALK_LIMIT) return false;
    if (t.bType == BASETYPE_STRUCT) return t.hasDestruct && !t.structMAlloc;
    //always recurse into an array's element type, marker or not: a "&" on an array makes the array as a
    //whole reference-shaped ("a reference to a [3]Point"), never its elements individually - so a
    //"Handle[3]&s" is still three Handle *values* sharing one allocation, exactly what C11 forbids
    struct list kids = TypeValueChildren(t);
    for (int i = 0; i < kids.len; i++) {
        if (typeHasBareDestructStructAt(*(struct type*)ListGetIdx(&kids, i), depth + 1)) return true;
    }
    return false;
}
bool typeHasBareDestructStruct(struct type t) { return typeHasBareDestructStructAt(t, 0); }

struct type resolveTypeRef(struct semaModule* mod, struct syntax* refNode, struct list* scopeParams) {
    struct type base = resolveTypeRefBase(mod, refNode, scopeParams);
    //T24: a type carries at most one marker, so a second one is that position written twice - "Point&s&a" -
    //with one of the two scope tags necessarily discarded, and a discarded scope tag is a discarded claim
    if (firstPartOfType(refNode, SNTX_REF_MARKER)) {
        ErrMsgSemantic(firstTokAnywhere(refNode), DOUBLE_REFERENCE_MARKER);
    }
    struct type t = applyRefMarker(base, firstPartOfType(refNode, SNTX_ELEM_REF_MARKER), scopeParams);
    if (typeHasBareDestructStruct(t)) {
        ErrMsgSemantic(firstTokAnywhere(refNode), DESTRUCT_TYPE_MUST_BE_REFERENCE);
    }
    //T30: a trait is a constraint (G19) and nothing else - never the type of a value, a reference, a field, an element
    if (t.bType == BASETYPE_INTERFACE && !resolvingConstraint) ErrMsgSemantic(firstTokAnywhere(refNode), TRAIT_NOT_A_TYPE);
    return t;
}

//resolves a literal's base type name node ("MyError" or "alias.MyError", from SNTX_NAME) - the same
//lookup as resolveTypeRefBase, minus the "&" heap-indirect handling: a literal's own trailing "{...}"
//holds values, not the (always-empty) heap-indirection marker, and constructing a value always requires
//the type to be fully resolved (never the "grab it mid-resolution" trick <> exists for)
struct type resolveLiteralBaseType(struct semaModule* mod, struct syntax* nameNode) {
    struct list idens = allTokOfType(nameNode, TOK_IDEN);
    struct type* found;

    if (idens.len == 1) {
        struct token nameTok = *(struct token*)ListGetIdx(&idens, 0);
        struct str name = strFromTok(nameTok);
        found = typeNamed(mod, name);
        if (!found) {
            if (StrCmp(name, StrFromCStr("Bool"))) return TypeVanilla(BASETYPE_BOOL);
            enum baseType pb;
            if (PrimByName(name, &pb)) return TypeVanilla(pb); //T4
            reportUnknownType(mod, nameTok);
            return unknownTypeStandIn();
        }
    } else {
        struct semaModule* target = resolveAliasChain(mod, idens, 1);
        if (!target) return TypeVanilla(BASETYPE_INT32); //error already reported
        struct token nameTok = *(struct token*)ListGetIdx(&idens, idens.len -1);
        struct str name = strFromTok(nameTok);
        found = TypeGetList(&target->types, name);
        if (!found) { reportUnknownType(target, nameTok); return unknownTypeStandIn(); }
        if (!isPublic(name)) { ErrMsgSemantic(nameTok, TYPE_IS_PRIVATE); return TypeVanilla(BASETYPE_INT32); }
    }
    resolveTypeDecl(found);
    return *found;
}

//T17: a choice type is a closed set of named cases, of which a value holds exactly one. Each case becomes
//one entry in `vars`: its name, and a payload modelled as an anonymous STRUCT type built from the case's
//own parameter list (an empty struct when the case is a bare tag). Modelling the payload as a struct is
//what keeps this small - sizing, structural comparison, field access and codegen's aggregate handling all
//already work for structs, so almost nothing here is choice-specific.
//`words` is kept in step with `vars` because a case's ordinal is its position, and the ordinal is what a
//payload-free choice value still is at run time.
void resolveParamList(struct semaModule* mod, struct syntax* paramListNode, struct list* out, struct list* scopeVars);
static bool implicitParamScopes; //set while a signature's, constructor's or payload's parameters are resolved
long long TypeGetSize(struct type t);

struct type resolveChoiceBody(struct semaModule* mod, struct token nameTok, struct syntax* bodyNode) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_CHOICE;
    t.tok = nameTok;
    t.vars = ListInit(sizeof(struct var));
    t.words = ListInit(sizeof(struct token));
    //O3: a payload may carry a "&name" scope tag, and the name is declared by appearing - exactly as it is
    //in a function signature or a constructor's parameter list. The choice TYPE owns the list, so every
    //case's payload shares one namespace: two cases naming "&s" name the same variable, which is what lets
    //a caller bind it once at construction and have it mean the same thing whichever case is live.
    t.scopeVars = ListInit(sizeof(struct var*));
    //T17c/C2d: every reference in a payload lives where the enum value does - its instance scope, as a constructor's
    t.hereVar = VarAllocSetOrigin();
    t.hereVar->name = StrFromCStr("here");
    t.hereVar->isInstanceScope = true;
    struct list cases = allPartsOfType(bodyNode, SNTX_CHOICE_CASE);
    for (int i = 0; i < cases.len; i++) {
        struct syntax* c = *(struct syntax**)ListGetIdx(&cases, i);
        struct token nTok = firstTokOfType(c, TOK_IDEN);
        struct str name = strFromTok(nTok);
        if (VarGetList(&t.vars, name)) { ErrMsgSemantic(nTok, CHOICE_CASE_ALREADY_IN_USE); continue; }
        struct var v = (struct var){0};
        v.name = name;
        v.tok = nTok;
        v.type.bType = BASETYPE_STRUCT;
        v.type.tok = nTok;
        v.type.vars = ListInit(sizeof(struct var));
        struct syntax* params = firstPartOfType(c, SNTX_PARAM_LIST);
        bool prevImplicit = implicitParamScopes;
        implicitParamScopes = true; //T17c: a bare payload reference has its own scope, as a parameter does
        if (params) resolveParamList(mod, params, &v.type.vars, &t.scopeVars);
        implicitParamScopes = prevImplicit;
        ListAdd(&t.vars, &v);
        ListAdd(&t.words, &nTok);
    }
    return t;
}

//true when any case of this choice type carries a payload. A choice where none does is represented exactly
//as it always was - a bare i32 ordinal - so nothing about a payload-free choice changes.
bool ChoiceHasPayload(struct type t) {
    if (t.bType != BASETYPE_CHOICE) return false;
    for (int i = 0; i < t.vars.len; i++) {
        if ((*(struct var*)ListGetIdx(&t.vars, i)).type.vars.len > 0) return true;
    }
    return false;
}

//the payload buffer's size: the largest case's, since exactly one is live at a time. That is the whole
//space saving a choice has over a struct holding every alternative at once.
//the payload buffer's size: the largest case's, rounded up to whole 8-byte words. Held as words (T17) so that a
//copy is a few word moves rather than a byte at a time, which kept small functions taking an enum from being
//inlined; and rounded because the tag makes the whole value 8-aligned anyway - a 4-byte payload used to be
//counted as 12 bytes against LLVM's 16, an array of such values allocated short of its stride
long long ChoicePayloadSize(struct type t) {
    long long max = 0;
    for (int i = 0; i < t.vars.len; i++) {
        long long n = TypeGetSize((*(struct var*)ListGetIdx(&t.vars, i)).type);
        if (n > max) max = n;
    }
    return (max + 7) / 8 * 8;
}


//T30: a trait body is a list of method signatures and nothing else. Each becomes one entry in `vars`: the method's
//name, a BASETYPE_FUNC type holding its signature, and `mut` meaning "needs a mutable receiver". The receiver itself
//is not here - a trait says which calls a type admits, not how it takes them; T31's satisfaction check pairs the two.
struct type resolveFuncSig(struct semaModule* mod, struct syntax* sigNode);

struct type resolveInterfaceBody(struct semaModule* mod, struct token nameTok, struct syntax* bodyNode) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_INTERFACE;
    t.tok = nameTok;
    t.vars = ListInit(sizeof(struct var));
    struct list sigs = allPartsOfType(bodyNode, SNTX_METHOD_SIG);
    for (int i = 0; i < sigs.len; i++) {
        struct syntax* m = *(struct syntax**)ListGetIdx(&sigs, i);
        struct token mTok = firstTokOfType(m, TOK_IDEN);
        struct str name = strFromTok(mTok);
        if (VarGetList(&t.vars, name)) { ErrMsgSemantic(mTok, VAR_NAME_IN_USE); continue; }
        struct var v = (struct var){0};
        v.owner = mod; //M6: which module a private method name belongs to, and so who may supply it
        v.name = name;
        v.tok = mTok;
        v.mut = hasTokOfType(m, TOK_MUT); //"needs a mutable receiver", not "this entry is writable"
        v.type = resolveFuncSig(mod, firstPartOfType(m, SNTX_FUNC_SIG));
        //T35: a method signature may not be generic in a type of its own - a type satisfies a trait with one method
        //per name. T35a: a variable the TRAIT declares ("type Iterator<T> trait") is fixed per application.
        int own = 0;
        for (int k = 0; k < v.type.typeParams.len; k++) {
            struct str tp = *(struct str*)ListGetIdx(&v.type.typeParams, k);
            for (int q = 0; currentTypeParamNames && q < currentTypeParamNames->len; q++) {
                if (StrCmp(*(struct str*)ListGetIdx(currentTypeParamNames, q), tp)) { own++; break; }
            }
        }
        if (v.type.typeParams.len > own) ErrMsgSemantic(mTok, INTERFACE_METHOD_IS_GENERIC);
        v.type.typeParams = ListInit(sizeof(struct str));
        ListAdd(&t.vars, &v);
    }
    return t;
}

//"struct(params) errorList? { fields } destruct?" - mutates *t IN PLACE rather than building-then-copying
//(the way resolveChoiceBody does, via resolveTypeDecl's generic "*t = resolved" step)
//specifically so t->ctorFunc/t->destructFunc's own retType/self-param can point at t directly (the stable
//slot inside mod->types) instead of a temporary that's about to be overwritten - see the report.
void checkNoAliasClash(struct semaModule* mod, struct str name, struct token tok);

void resolveParamList(struct semaModule* mod, struct syntax* paramListNode, struct list* out,
                      struct list* scopeVars);
void declareScopeVars(struct list scopeDeclNodes, struct list* scopeVars);
void declareScopeVarsCheck(struct list scopeDeclNodes, struct list* scopeVars, struct list* varsA,
                           struct list* varsB, struct type* retType);
bool paramTypeNamesScope(struct type pt, struct var* sv);

struct type builtinArrayType(struct semaModule* mod, struct syntax* argsNode, struct token nameTok, struct list* scopeParams);
bool tryEvalConstIntExpr(struct syntax* s, long long* out);
//C2e: an "Array<T>(n)" constructor field is stored inline when n can be computed at compile time. The layout
//has to be settled before any body is checked while n may need checked bodies to compute, so - as B9c does
//for conditions - an attempt that meets an undecided n checks the program with that field in the arena,
//computes n afterwards, and the next attempt lays the field out with the answer. Keyed by where the field's
//name is written - file, line and name - which every attempt reads identically.
struct inlineDecision { struct str file; int line; struct str name; long long n; }; //n < 0: stays in the arena
static struct list inlineDecisions;
struct inlinePending { struct str file; int line; struct str name; struct operand* sizeOp; };
static struct list inlinePendings;

static struct inlineDecision* inlineDecisionFor(struct token tok) {
    struct str f = TokenGetFileName(tok.owner);
    for (int i = 0; i < inlineDecisions.len; i++) {
        struct inlineDecision* d = ListGetIdx(&inlineDecisions, i);
        if (d->line == tok.lineNr && StrCmp(d->name, tok.str) && StrCmp(d->file, f)) return d;
    }
    return NULL;
}

//"Array<T>(size[, fill])" as written, through any single-child wrapping: its type-args and size nodes
static bool syntaxIsArrayCtorCall(struct syntax* s, struct syntax** targs, struct syntax** size) {
    while (s && s->type != SNTX_EXPR_PRIMARY) {
        if (s->parts.len != 1 || partAt(s, 0)->isToken) return false;
        s = partSntx(s, 0);
    }
    if (!s) return false;
    struct syntax* name = firstPartOfType(s, SNTX_NAME);
    struct syntax* call = firstPartOfType(s, SNTX_EXPR_CALL);
    if (!name || !call || name->parts.len != 1) return false;
    if (!StrCmp(strFromTok(partAt(name, 0)->tok), StrFromCStr("Array"))) return false;
    *targs = firstPartOfType(call, SNTX_TYPE_ARGS);
    struct list args = allPartsOfType(firstPartOfType(call, SNTX_EXPR_ARGS), SNTX_EXPR);
    if (!*targs || args.len < 1 || args.len > 2) return false;
    *size = *(struct syntax**)ListGetIdx(&args, 0);
    return true;
}

static void resolveStructCtorIntoIn(struct semaModule* mod, struct type* t, struct syntax* ctorNode);
void resolveStructCtorInto(struct semaModule* mod, struct type* t, struct syntax* ctorNode) {
    //this runs lazily, in the middle of resolving something else - another type's fields, a signature - so
    //it leaves scope declaration as it found it: ending "off" made the type it was nested in reject its own
    //later "&s" (List's fields, when listChunk was first resolved from inside one of them)
    resolveStructCtorIntoIn(mod, t, ctorNode);
}

static void resolveStructCtorIntoIn(struct semaModule* mod, struct type* t, struct syntax* ctorNode) {
    t->bType = BASETYPE_STRUCT;
    t->hasCtor = true;
    t->hereVar = VarAllocSetOrigin();
    t->hereVar->name = StrFromCStr("here");
    t->hereVar->isInstanceScope = true;

    t->scopeVars = ListInit(sizeof(struct var*));
    t->scopeObligations = ListInit(sizeof(struct scopeObligation));
    struct list ctorScopeDecls = allPartsOfType(ctorNode, SNTX_SCOPE_DECL);
    declareScopeVars(ctorScopeDecls, &t->scopeVars);
    struct list ctorParams;
    //C2c/C2d: a bare reference parameter has its own scope, as a function's does (O4b) - a pun field carries
    //it, so the instance may refer into storage that outlives it
    bool prevImplicit = implicitParamScopes;
    implicitParamScopes = true;
    resolveParamList(mod, firstPartOfType(ctorNode, SNTX_PARAM_LIST), &ctorParams, &t->scopeVars);
    implicitParamScopes = prevImplicit;

    struct list ctorErrors = ListInit(sizeof(struct type*));
    struct syntax* errListNode = firstPartOfType(ctorNode, SNTX_ERROR_LIST);
    if (errListNode) {
        //each item is either an ordinary SNTX_NAME or the bare bare-error marker (SNTX_BARE_ERROR,
        //see the report) - allSyntaxParts, not allPartsOfType(..., SNTX_NAME), mirroring resolveFuncSig's
        //own identical fix
        struct list items = allSyntaxParts(errListNode);
        for (int i = 0; i < items.len; i++) {
            struct syntax* itemNode = *(struct syntax**)ListGetIdx(&items, i);
            struct type* errType = itemNode->type == SNTX_BARE_ERROR
                ? &bareErrorType : resolveErrorTypeName(mod, itemNode);
            if (!errType) continue;
            ListAdd(&ctorErrors, &errType);
        }
        addDefaultError(&ctorErrors);
    }

    t->vars = ListInit(sizeof(struct var));
    t->ctorFieldSyntax = ListInit(sizeof(struct syntax*));
    t->ctorBodySyntax = firstPartOfType(ctorNode, SNTX_CTOR_BODY);
    struct list fieldNodes = allPartsOfType(t->ctorBodySyntax, SNTX_CTOR_FIELD);
    for (int i = 0; i < fieldNodes.len; i++) {
        struct syntax* f = *(struct syntax**)ListGetIdx(&fieldNodes, i);
        struct token fieldNameTok = firstTokOfType(f, TOK_IDEN);
        struct str fieldName = strFromTok(fieldNameTok);
        if (VarGetList(&t->vars, fieldName)) { ErrMsgSemantic(fieldNameTok, VAR_NAME_IN_USE); continue; }

        struct syntax* typeExprNode = firstPartOfType(f, SNTX_TYPE_EXPR);
        struct var v = (struct var){0};
        v.name = fieldName;
        v.tok = fieldNameTok;
        v.mut = hasTokOfType(f, TOK_MUT);
        bool fieldDeclMut = v.mut; //T25b, applied once the type is known

        if (typeExprNode) {
            //explicit type - "= expr" is checked for real in pass 3 (needs ctor params in scope). No
            //initializer is fine: C4a makes a field an ordinary local of the constructor, so it follows D13
            //exactly - its zero value.
            struct list* prevTP = scopeTagParams;
            struct list* prevTF = scopeTagFields;
            scopeTagParams = &ctorParams; //O3c: a field may live where a parameter or an earlier field does
            scopeTagFields = &t->vars;
            v.type = resolveTypeExpr(mod, typeExprNode, &t->scopeVars);
            declPermission(&v); //T25b
            scopeTagParams = prevTP;
            scopeTagFields = prevTF;
        } else if (hasTokOfType(f, TOK_ASS_INFER)) {
            //":=" - type read off the (required-to-be-literal) rhs in pass 3, same as a global ":=" var
            v.type = (struct type){0};
        } else {
            //bare pun - must match one of the constructor's own parameters by name
            struct var* param = VarGetList(&ctorParams, fieldName);
            if (!param) { ErrMsgSemantic(fieldNameTok, CTOR_FIELD_NOT_INITIALIZED); continue; }
            v.type = param->type;
            //C2d: a pun of a bare reference parameter lives where the instance does - the parameter's own
            //scope is reached only by a field written "&p"
            if (v.type.scopeParam && v.type.scopeParam->isImplicitScope) v.type.scopeParam = NULL;
            v.punParam = param; //see struct var.punParam's own comment - lets OperandMember later tell
                                 //which of the base's own via-tagged scopeBinding entries belong to this
                                 //field specifically
            //T25c: a field written "mut" holds a writable reference, which a read-only parameter is not
            if (fieldDeclMut && TypeIsPermRef(v.type) && !v.type.refMut) ErrMsgSemantic(fieldNameTok, READ_ONLY_TO_WRITABLE);
        }
        //C2e: "m Array<T>(n)" written as a value field, with n computed at compile time, is n elements stored
        //in the instance itself
        struct syntax* arrTargs = NULL;
        struct syntax* arrSize = NULL;
        struct syntax* fieldRhs = firstPartOfType(f, SNTX_EXPR);
        bool valueArrayType = !typeExprNode || (v.type.bType == BASETYPE_ARRAY && v.type.arrMalloc && !v.type.structMAlloc);
        if (fieldRhs && valueArrayType && syntaxIsArrayCtorCall(fieldRhs, &arrTargs, &arrSize)) {
            long long n = -1;
            struct inlineDecision* d = inlineDecisionFor(fieldNameTok);
            bool known = tryEvalConstIntExpr(arrSize, &n);
            if (!known && d) { n = d->n; known = true; }
            if (known && n >= 0) {
                struct type rt = builtinArrayType(mod, arrTargs, fieldNameTok, &t->scopeVars);
                struct operand* lenOp = MallocOrCrash(sizeof(struct operand));
                *lenOp = (struct operand){0};
                lenOp->type = TypeVanilla(BASETYPE_INT64);
                lenOp->isLiteral = true;
                lenOp->intLiteralVal = n;
                v.type = rt;
                v.type.arrMalloc = false;
                v.type.arrLen = lenOp;
                v.inlineState = 1;
            } else if (!known) {
                v.inlineState = 2;
            } else {
                v.inlineState = 3; //decided: n cannot be computed, so the field stays in the arena
            }
        }
        ListAdd(&t->vars, &v);
        ListAdd(&t->ctorFieldSyntax, &f);
    }

    declareScopeVarsCheck(ctorScopeDecls, &t->scopeVars, &ctorParams, &t->vars, NULL);
    struct var* ctorFuncVar = VarGetList(&mod->vars, internalCtorName(t->tok));
    ctorFuncVar->owner = mod;
    ctorFuncVar->type.bType = BASETYPE_FUNC;
    ctorFuncVar->type.vars = ctorParams;
    //the constructor is the callable, so the call site reads its scope variables off the FUNC type -
    //copied once here, after every field type (C2c: a ctor's scope variables come from its parameters
    //AND its field types) has finished adding to the struct's own list
    ctorFuncVar->type.scopeVars = t->scopeVars;
    ctorFuncVar->type.scopeObligations = t->scopeObligations;
    ctorFuncVar->type.errors = ctorErrors;
    ctorFuncVar->type.hasRetType = true;
    ctorFuncVar->type.retType = t; //the same stable slot resolveTypeDecl was called with - never a copy
    ctorFuncVar->type.placeholder = false;
    t->ctorFunc = ctorFuncVar;

    struct syntax* destructNode = firstPartOfType(ctorNode, SNTX_DESTRUCT);
    if (destructNode) {
        t->hasDestruct = true;
        t->destructBlockSyntax = firstPartOfType(destructNode, SNTX_BLOCK);
        struct var* dtorFuncVar = VarGetList(&mod->vars, internalDtorName(t->tok));
        dtorFuncVar->owner = mod;
        dtorFuncVar->type.bType = BASETYPE_FUNC;
        dtorFuncVar->type.vars = ListInit(sizeof(struct var));
        dtorFuncVar->type.errors = ListInit(sizeof(struct type*));
        dtorFuncVar->type.placeholder = false;
        t->destructFunc = dtorFuncVar; //set before the snapshot below, not after - selfParam.type.destructFunc
                                        //must be this same var, so codegen can recognize ".self" as "the
                                        //instance this very destructor is already running on" and skip
                                        //re-destructing it (see cgRunLocalDestructors)
        struct var selfParam = (struct var){0};
        selfParam.name = StrFromCStr(".self");
        selfParam.tok = t->tok;
        selfParam.mut = false;
        selfParam.type = *t; //by-value snapshot - safe: bType/vars/name/owner/tok/hasDestruct/destructFunc
                              //are all already final on *t at this point
        ListAdd(&dtorFuncVar->type.vars, &selfParam);
    }
}

//the internal type of a SCOPE VARIABLE (O3) - the hidden pointer argument that carries one. It is not a
//type a program can write: there is no "scope" type and no scope value in the language, and nothing
//resolves the name. Codegen keys a scope variable's slot by it, which is what keeps scope names out of
//the namespace of values.
static char* typeScopeStr = "scope";

//D8c: the type a function returning several values returns - an anonymous struct whose fields are named
//by position, so every rule and every codegen path for structs applies to it unchanged
struct type TypeTuple(struct list* elems) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_STRUCT;
    t.isTuple = true;
    t.vars = ListInit(sizeof(struct var));
    for (int i = 0; i < elems->len; i++) {
        struct var v = (struct var){0};
        char* nm = MallocOrCrash(12);
        snprintf(nm, 12, "%d", i);
        v.name = StrFromCStr(nm);
        v.type = *(struct type*)ListGetIdx(elems, i);
        v.mut = true;
        ListAdd(&t.vars, &v);
    }
    return t;
}

struct type TypeScope(void) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_SCOPE;
    t.name = StrFromCStr(typeScopeStr);
    return t;
}

bool TypeHoldsReferences(struct type t);
bool RefNarrowingMatters(struct type t);
//O13: the implicit result scope of a signature, appended to its scope variables after every parameter's - so
//a scope argument, which binds the first variable no parameter names (E25), reaches it
static struct var* newResultScope(struct type* ft, struct token tok) {
    struct var* sv = VarAllocSetOrigin();
    sv->name = StrFromCStr("&result"); //no scope a program writes can be spelled this way
    sv->tok = tok;
    sv->type = TypeScope();
    sv->mayBeInitialized = true;
    sv->isImplicitScope = true;
    ListAdd(&ft->scopeVars, &sv);
    return sv;
}

bool paramTypeNamesScope(struct type pt, struct var* sv);
static bool scopeNamedByParam(struct type* ft, struct var* sv) {
    for (int i = 0; i < ft->vars.len; i++) {
        if (paramTypeNamesScope((*(struct var*)ListGetIdx(&ft->vars, i)).type, sv)) return true;
    }
    return false;
}

static void giveImplicitScope(struct var* p, struct list* scopeVars);
void resolveParamList(struct semaModule* mod, struct syntax* paramListNode, struct list* out,
                      struct list* scopeVars) {
    *out = ListInit(sizeof(struct var));
    struct list* prevTagParams = scopeTagParams;
    scopeTagParams = out; //O3c: a parameter's type may name an earlier parameter ("b N&a")
    struct list params = allPartsOfType(paramListNode, SNTX_PARAM);
    for (int i = 0; i < params.len; i++) {
        struct syntax* p = *(struct syntax**)ListGetIdx(&params, i);
        struct token nameTok = firstTokOfType(p, TOK_IDEN);
        struct str name = strFromTok(nameTok);
        rejectUnderscoreName(name, nameTok);
        if (VarGetList(out, name)) { ErrMsgSemantic(nameTok, VAR_NAME_IN_USE); continue; }
        checkNoAliasClash(mod, name, nameTok); //M20
        struct syntax* typeExprNode = firstPartOfType(p, SNTX_TYPE_EXPR);
        struct var v = (struct var){0};
        v.name = name;
        v.tok = nameTok;
        v.mut = hasTokOfType(p, TOK_MUT);
        //O3: a "&name" tag declares its scope variable by appearing, into the signature's own shared
        //scopeVars list - so order among parameters no longer matters, unlike the old scope-parameter form
        v.type = resolveTypeExpr(mod, typeExprNode, scopeVars);
        declPermission(&v); //T25b
        //D8a: an "= expr" default, built here in the DECLARING module's own context (a caller's context
        //would resolve a struct-literal's type name against the wrong module). Restricted to a literal,
        //so there is nothing call-site-dependent to get wrong - no allocation, no scope, no failure.
        //D9a: an array parameter must be a reference. A by-value one copies the caller's array at every
        //call, and a "mut" one would then be written where the caller can never see it - E12a's own
        //hazard, arising from the marker's ABSENCE rather than its presence. Tested on structMAlloc (the
        //explicit marker) rather than on reference-shapedness, since T11 makes a runtime-length array
        //reference-SHAPED without one and that is exactly the case this rule exists to stop being implicit.
        if (v.type.bType == BASETYPE_ARRAY && !v.type.structMAlloc) {
            ErrMsgSemantic(nameTok, ARRAY_PARAM_NOT_REFERENCE);
        }
        struct syntax* defNode = firstPartOfType(p, SNTX_EXPR);
        if (defNode) v.defaultVal = buildParamDefault(mod, defNode, v.type);
        if (implicitParamScopes) giveImplicitScope(&v, scopeVars); //O4b, at once, so a later parameter can name it
        ListAdd(out, &v);
    }
    scopeTagParams = prevTagParams;
    //D8b: defaults must be trailing, so that omitting arguments from the end is unambiguous
    bool seenDefault = false;
    for (int i = 0; i < out->len; i++) {
        struct var* v = ListGetIdx(out, i);
        if (v->defaultVal) { seenDefault = true; continue; }
        if (seenDefault) ErrMsgSemantic(v->tok, DEFAULT_NOT_TRAILING);
    }
}

static bool typeIsRefShaped(struct type t);
bool TypeIsNullable(struct type t); //T2a - defined beside OperandNullLiteral

//true if t, considered as a standalone returned value, is tied to a BARE (own) scope - a struct or
//compile-time-length array explicitly marked "&" (structMAlloc, no scopeParam), or a runtime-length array with no
//scopeParam at all (T11/O7: a runtime-length array is always reference-shaped, with or without an explicit
//marker, so an unmarked one is just as bare-scoped as an explicitly-"&"-marked struct/compile-time-length array) -
//exactly the shape that dangles if the function that allocated it hands it back by plain value, since
//its own "own" scope closes at the point that function returns.
static bool typeIsBareRefShaped(struct type t) {
    if (t.bType == BASETYPE_ARRAY && t.arrMalloc) return !t.scopeParam;
    if (t.bType == BASETYPE_FUNC) return t.structMAlloc && !t.scopeParam; //D16: a returned lambda is built
    if (!typeIsRefShaped(t)) return false;
    return t.structMAlloc && !t.scopeParam;
}

//true if t (or anything nested inside it, transitively, through plain/embedded fields/elements only)
//has a bare "&" (unnamed) heap-indirect field - the shape that dangles the instant a plain value
//containing it escapes via return, since there's no scope name anywhere in the signature it could have
//been tied to. Deliberately doesn't chase into a NAMED "&name" field's own pointee, nor into any
//field/element that's itself reference-shaped (bare or named): a bare one is the caller's own concern
//via typeIsBareRefShaped, a named one's lifetime is already an explicit, independently-checked fact
//tied to its own name, not something this returning function could be responsible for regardless of how
//it got here. Never infinite: a plain (non-"&") struct can never recursively embed itself (that's
//exactly what "&" exists to break), so any embedded chain through this function alone is guaranteed to
//bottom out.
//NOTE: this one keeps its own recursion rather than using TypeValueChildren, because it also has to STOP
//at a reference-shaped child (a named "&name" field's lifetime is that name's business, not this returning
//function's). Its container list must be kept in step with TypeValueChildren by hand - it is the only
//walker where that is still true.
bool structContainsBareScopeField(struct type t) {
    if ((t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_CHOICE) && t.structMAlloc) return false;
    if (t.bType == BASETYPE_ARRAY && !t.arrMalloc && t.structMAlloc) return false;
    if (t.bType == BASETYPE_ARRAY && !t.arrMalloc) return structContainsBareScopeField(*t.arrElem);
    //T17: a choice is a plain VALUE that can carry a reference inside a case's payload, so returning one
    //hands back whatever that payload points at - exactly the escape O13 exists to stop, and invisible
    //here until a choice could hold anything. Every case is checked, not just the live one: which case is
    //live is a run-time fact, and the rule is about the type.
    if (t.bType == BASETYPE_CHOICE) {
        for (int i = 0; i < t.vars.len; i++) {
            if (structContainsBareScopeField((*(struct var*)ListGetIdx(&t.vars, i)).type)) return true;
        }
        return false;
    }
    if (t.bType != BASETYPE_STRUCT) return false;
    for (int i = 0; i < t.vars.len; i++) {
        struct type ft = (*(struct var*)ListGetIdx(&t.vars, i)).type;
        if (typeIsBareRefShaped(ft)) return true;
        if ((ft.bType == BASETYPE_STRUCT || ft.bType == BASETYPE_ARRAY || ft.bType == BASETYPE_CHOICE)
                && !ft.structMAlloc && structContainsBareScopeField(ft)) return true;
    }
    return false;
}

//true if t, or anything nested inside it transitively through a chain of plain/embedded array
//O3: a scope is never declared - "fn f&s()" and "type T&s struct()" name nothing a signature could use, so
//each is an error saying what to write instead
void declareScopeVars(struct list scopeDeclNodes, struct list* scopeVars) {
    (void)scopeVars;
    for (int i = 0; i < scopeDeclNodes.len; i++) {
        ErrMsgSemantic(firstTokAnywhere(*(struct syntax**)ListGetIdx(&scopeDeclNodes, i)), SCOPE_DECL_REMOVED);
    }
}

void declareScopeVarsCheck(struct list scopeDeclNodes, struct list* scopeVars, struct list* varsA,
                           struct list* varsB, struct type* retType) {
    (void)scopeDeclNodes; (void)scopeVars; (void)varsA; (void)varsB; (void)retType;
}

//O4b: every parameter written with a bare reference marker is passed with the scope its referent lives in -
//an anonymous scope variable of its own, bound by the argument at each call exactly as a named one is. So a
//function may allocate into a reference parameter and store through it, and what it needs between two of them
//is an obligation its callers discharge. The hidden arguments follow the parameters' order - a variable at the
//first parameter naming or carrying it - so a method's receiver comes first, which is what lets a call through
//an interface line up with the method it reaches.

//O4b for one parameter: a bare reference gets its own anonymous scope variable, added to scopeVars
static void giveImplicitScope(struct var* p, struct list* scopeVars) {
    bool bareRef = p->type.structMAlloc && !p->type.scopeParam
                   && (p->type.bType == BASETYPE_STRUCT || p->type.bType == BASETYPE_ARRAY
                       || p->type.bType == BASETYPE_CHOICE
                       || p->type.bType == BASETYPE_FUNC || p->type.bType == BASETYPE_TYPEVAR); //G11a: "<T>&"
    if (!bareRef) return;
    struct var* sv = VarAllocSetOrigin();
    char* nm = MallocOrCrash((size_t)p->name.len + 2);
    nm[0] = '&';
    memcpy(nm + 1, p->name.ptr, (size_t)p->name.len);
    nm[p->name.len + 1] = '\0';
    sv->name = StrFromCStr(nm); //"&p": no scope a program writes can be spelled this way
    sv->tok = p->tok;
    sv->type = TypeScope();
    sv->mayBeInitialized = true;
    sv->isImplicitScope = true;
    p->type.scopeParam = sv;
    if (scopeVars) ListAdd(scopeVars, &sv);
}

static void assignImplicitParamScopes(struct type* ft) {
    struct list ordered = ListInit(sizeof(struct var*));
    for (int i = 0; i < ft->vars.len; i++) {
        struct var* p = ListGetIdx(&ft->vars, i);
        for (int j = 0; j < ft->scopeVars.len; j++) {
            struct var* sv = *(struct var**)ListGetIdx(&ft->scopeVars, j);
            bool have = false;
            for (int k = 0; k < ordered.len; k++) if (*(struct var**)ListGetIdx(&ordered, k) == sv) have = true;
            if (!have && paramTypeNamesScope(p->type, sv)) ListAdd(&ordered, &sv);
        }
        if (p->type.scopeParam || !p->type.structMAlloc) continue;
        giveImplicitScope(p, NULL);
        if (p->type.scopeParam) ListAdd(&ordered, &p->type.scopeParam);
    }
    for (int j = 0; j < ft->scopeVars.len; j++) {
        struct var* sv = *(struct var**)ListGetIdx(&ft->scopeVars, j);
        bool have = false;
        for (int k = 0; k < ordered.len; k++) if (*(struct var**)ListGetIdx(&ordered, k) == sv) have = true;
        if (!have) ListAdd(&ordered, &sv);
    }
    ft->scopeVars = ordered;
}

//O13: where a function's result lives, once its result type is known - for a signature, as it is resolved;
//for a lambda without a written result, at its first "return" (D16)
static void finishResultScope(struct type* t, struct token tok) {
    //T25b: a BUILT result is new storage only the caller holds, so it is writable, as a fresh value is; a result
    //borrowed from a parameter ("T&p") has the permission written on it
    if (TypeIsPermRef(*t->retType) && !t->retType->scopeParam) t->retType->refMut = true;
    if (t->retType->isTuple) {
        for (int i = 0; i < t->retType->vars.len; i++) {
            struct var* el = ListGetIdx(&t->retType->vars, i);
            if (TypeIsPermRef(el->type) && !el->type.scopeParam) el->type.refMut = true;
        }
    }
    //O13: a built result - a bare "&" on the result type, on any of several results, or a by-value result
    //holding references - is in the result scope, an implicit scope variable no parameter names, so it
    //follows the call's result (O18a) or is supplied by a scope argument (E25)
    if (typeIsBareRefShaped(*t->retType)) {
        t->resultScope = newResultScope(t, tok);
        t->retType->scopeParam = t->resultScope;
    } else if (t->retType->isTuple) {
        for (int i = 0; i < t->retType->vars.len; i++) {
            struct var* el = ListGetIdx(&t->retType->vars, i);
            if (typeIsBareRefShaped(el->type)) {
                if (!t->resultScope) t->resultScope = newResultScope(t, tok);
                el->type.scopeParam = t->resultScope;
            } else if ((structContainsBareScopeField(el->type) || TypeHoldsReferences(el->type)) && !t->resultScope) {
                t->resultScope = newResultScope(t, tok);
            }
        }
    } else if (!t->retType->structMAlloc
               && (structContainsBareScopeField(*t->retType) || TypeHoldsReferences(*t->retType))) {
        t->resultScope = newResultScope(t, tok);
    }
    //a scope written on the result that no parameter names is the result scope too (the named form)
    if (!t->resultScope && t->retType->scopeParam && !scopeNamedByParam(t, t->retType->scopeParam))
        t->resultScope = t->retType->scopeParam;
}

//O14b: finishResultScope for an instantiation's result that was a type variable - the same result scope, but with the
//permission the type argument was written with (a type variable's reference is as writable as its argument says, T25b)
static void finishTypeVarResult(struct type* t, struct token tok) {
    struct type* rt = t->retType;
    if (typeIsBareRefShaped(*rt)) {
        t->resultScope = newResultScope(t, tok);
        rt->scopeParam = t->resultScope;
    } else if (rt->isTuple) {
        for (int i = 0; i < rt->vars.len; i++) {
            struct var* el = ListGetIdx(&rt->vars, i);
            if (typeIsBareRefShaped(el->type)) {
                if (!t->resultScope) t->resultScope = newResultScope(t, tok);
                el->type.scopeParam = t->resultScope;
            } else if ((structContainsBareScopeField(el->type) || TypeHoldsReferences(el->type)) && !t->resultScope) {
                t->resultScope = newResultScope(t, tok);
            }
        }
    } else if (!rt->structMAlloc && (structContainsBareScopeField(*rt) || TypeHoldsReferences(*rt))) {
        t->resultScope = newResultScope(t, tok);
    }
    t->resultViaTypeVar = t->resultScope != NULL;
}

struct type resolveFuncSig(struct semaModule* mod, struct syntax* sigNode) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_FUNC;
    t.scopeVars = ListInit(sizeof(struct var*));
    t.scopeObligations = ListInit(sizeof(struct scopeObligation));
    struct list scopeDeclNodes = allPartsOfType(sigNode, SNTX_SCOPE_DECL);
    declareScopeVars(scopeDeclNodes, &t.scopeVars);
    //G8: every "<T>" anywhere in this signature is in scope for all of it, so "Box<T>" resolves wherever
    //it sits relative to the "<T>" that introduces T. G3 already treats a signature as one set, so
    //scoping this left-to-right would be the odd rule. Pre-scanned rather than read from t.typeParams,
    //which is not collected until every parameter type has been resolved - exactly when it is needed.
    struct list* prevTPN = currentTypeParamNames;
    struct list sigTypeVars = ListInit(sizeof(struct str));
    collectTypeVarNames(sigNode, &sigTypeVars);
    if (sigTypeVars.len > 0) currentTypeParamNames = &sigTypeVars;
    bool prevImplicit = implicitParamScopes;
    implicitParamScopes = true;
    resolveParamList(mod, firstPartOfType(sigNode, SNTX_PARAM_LIST), &t.vars, &t.scopeVars);
    implicitParamScopes = prevImplicit;
    assignImplicitParamScopes(&t);
    struct list* prevTagParams = scopeTagParams;
    scopeTagParams = &t.vars; //O3c: the result may name a parameter ("Node&l")

    t.errors = ListInit(sizeof(struct type*));
    struct syntax* errListNode = firstPartOfType(sigNode, SNTX_ERROR_LIST);
    if (errListNode) {
        //each item is either an ordinary SNTX_NAME (resolveErrorTypeName) or the bare bare-error
        //marker (SNTX_BARE_ERROR, see the report) - allSyntaxParts, not allPartsOfType(..., SNTX_NAME),
        //since this list can now genuinely mix both node shapes
        struct list items = allSyntaxParts(errListNode);
        for (int i = 0; i < items.len; i++) {
            struct syntax* itemNode = *(struct syntax**)ListGetIdx(&items, i);
            struct type* errType = itemNode->type == SNTX_BARE_ERROR
                ? &bareErrorType : resolveErrorTypeName(mod, itemNode);
            if (!errType) continue;
            ListAdd(&t.errors, &errType);
        }
        addDefaultError(&t.errors);
    }

    //G3: this function is generic exactly when a type variable appears anywhere in its signature - there
    //is no declaration list to consult, the set IS whatever appears. Collected from the parameters first
    //so first-appearance order is parameter order, then checked against the return type below.
    t.typeParams = ListInit(sizeof(struct str));
    for (int i = 0; i < t.vars.len; i++) TypeCollectVars((*(struct var*)ListGetIdx(&t.vars, i)).type, &t.typeParams);

    struct syntax* retTypeNode = firstPartOfType(sigNode, SNTX_RET_TYPE);
    if (retTypeNode) {
        t.hasRetType = true;
        t.retType = MallocOrCrash(sizeof(struct type));
        //O3: the ret-type declares scope variables by appearance too, into the same list - a name it
        //shares with a parameter is that same variable (unified, O17); one only it uses is supplied (O18)
        struct list retExprs = allPartsOfType(retTypeNode, SNTX_TYPE_EXPR);
        if (retExprs.len > 1) {
            //D8c: "(T1, T2, ...)" - several results, one anonymous tuple type
            struct list elems = ListInit(sizeof(struct type));
            for (int i = 0; i < retExprs.len; i++) {
                struct type e = resolveTypeExpr(mod, *(struct syntax**)ListGetIdx(&retExprs, i), &t.scopeVars);
                ListAdd(&elems, &e);
            }
            *t.retType = TypeTuple(&elems);
        } else {
            *t.retType = resolveTypeExpr(mod, firstPartOfType(retTypeNode, SNTX_TYPE_EXPR), &t.scopeVars);
        }
        //G4: a variable reachable only through the return type could never be determined at a call, since
        //inference matches arguments against parameters and nothing else. Reported here, at the
        //declaration, rather than at every call that fails to resolve it.
        struct list retVars = ListInit(sizeof(struct str));
        TypeCollectVars(*t.retType, &retVars);
        for (int i = 0; i < retVars.len; i++) {
            struct str v = *(struct str*)ListGetIdx(&retVars, i);
            bool inParams = false;
            for (int j = 0; j < t.typeParams.len; j++) {
                if (StrCmp(*(struct str*)ListGetIdx(&t.typeParams, j), v)) { inParams = true; break; }
            }
            //T35a: in a generic interface's method signature, the interface's own variable is fixed by the
            //instantiation, not inferred at a call
            for (int j = 0; !inParams && currentTypeParamNames && j < currentTypeParamNames->len; j++) {
                if (StrCmp(*(struct str*)ListGetIdx(currentTypeParamNames, j), v)) inParams = true;
            }
            if (!inParams) ErrMsgSemantic(firstTokAnywhere(retTypeNode), TYPE_VAR_NOT_INFERABLE);
        }
        finishResultScope(&t, firstTokAnywhere(retTypeNode));
    }
    declareScopeVarsCheck(scopeDeclNodes, &t.scopeVars, &t.vars, NULL, t.hasRetType ? t.retType : NULL);
    //G19: the constraints written on the signature's type variables
    t.typeConstraints = ListInit(sizeof(struct type));
    TypeCollectConstraints(t, &t.typeConstraints);
    currentTypeParamNames = prevTPN;
    scopeTagParams = prevTagParams;
    return t;
}

//true if t is one of the five numeric primitives (T5) - the base case of the §11 X2 restriction
static bool isNumericPrimitive(struct type t) { return TypeIsNumeric(t); }

//true if t is a valid "extern func" parameter/return type per X2: a numeric primitive itself, or a
//(compile-time-length or runtime-length) array whose element type is one - deliberately flat, not recursive, since X2 only
//ever allows "an array of one of those five", never an array of arrays
static bool isExternAllowedType(struct type t) {
    if (isNumericPrimitive(t)) return true;
    if (t.bType == BASETYPE_ARRAY) return isNumericPrimitive(*t.arrElem);
    return false;
}

//"IDEN type-expr" (COMMA ...)* - mirrors resolveParamList, but for SNTX_EXTERN_PARAM nodes (no "mut" to
//read) and with every param's type checked against the X2 restriction
void resolveExternParamList(struct semaModule* mod, struct syntax* paramListNode, struct list* out) {
    *out = ListInit(sizeof(struct var));
    struct list params = allPartsOfType(paramListNode, SNTX_EXTERN_PARAM);
    for (int i = 0; i < params.len; i++) {
        struct syntax* p = *(struct syntax**)ListGetIdx(&params, i);
        struct token nameTok = firstTokOfType(p, TOK_IDEN);
        struct str name = strFromTok(nameTok);
        if (VarGetList(out, name)) { ErrMsgSemantic(nameTok, VAR_NAME_IN_USE); continue; }
        struct syntax* typeExprNode = firstPartOfType(p, SNTX_TYPE_EXPR);
        struct var v = (struct var){0};
        v.name = name;
        v.tok = nameTok;
        //no scope params exist for an extern function - scope/"&" are never valid extern types anyway
        v.type = resolveTypeExpr(mod, typeExprNode, NULL);
        if (!isExternAllowedType(v.type)) ErrMsgSemantic(nameTok, EXTERN_TYPE_NOT_ALLOWED);
        ListAdd(out, &v);
    }
}

//resolves an "extern func" declaration's own signature (SNTX_EXTERN_FUNC_DECL node): its param list and
//optional return type, both restricted to X2's numeric-primitive-or-array-of-them types, and marks the
//result isExtern - never fallible (X4: t.errors is always left empty, never populated from any error-list,
//since an extern-func-decl has none)
struct type resolveExternFuncSig(struct semaModule* mod, struct syntax* declNode) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_FUNC;
    t.isExtern = true;
    resolveExternParamList(mod, firstPartOfType(declNode, SNTX_EXTERN_PARAM_LIST), &t.vars);
    t.errors = ListInit(sizeof(struct type*));

    struct syntax* retTypeNode = firstPartOfType(declNode, SNTX_RET_TYPE);
    if (retTypeNode) {
        t.hasRetType = true;
        t.retType = MallocOrCrash(sizeof(struct type));
        *t.retType = resolveTypeExpr(mod, firstPartOfType(retTypeNode, SNTX_TYPE_EXPR), NULL);
        //X3: unlike a param, a return type can never be an array - a raw pointer an external function
        //returns carries no length alongside it, so there's no sound way to rebuild a real "{ len, ptr }"
        //value from it (isExternAllowedType, deliberately scalar-only here, param-or-array-of-scalar there)
        if (!isNumericPrimitive(*t.retType)) {
            ErrMsgSemantic(firstTokAnywhere(retTypeNode), EXTERN_TYPE_NOT_ALLOWED);
        }
    }
    return t;
}

static struct type resolveTypeExprShape(struct semaModule* mod, struct syntax* typeExprNode, struct list* scopeParams);

//T25b: a reference whose permission a type can carry - every reference-shaped type but a function value, through
//which nothing is ever written
bool TypeIsPermRef(struct type t) {
    return t.bType != BASETYPE_FUNC && (t.structMAlloc);
}

static bool typeExprHasMut(struct syntax* typeExprNode) {
    for (int i = 0; i < typeExprNode->parts.len; i++) {
        struct syntaxPart* p = ListGetIdx(&typeExprNode->parts, i);
        if (p->isToken && p->tok.type == TOK_MUT) return true;
    }
    return false;
}

struct type resolveTypeExpr(struct semaModule* mod, struct syntax* typeExprNode, struct list* scopeParams) {
    struct type t = resolveTypeExprShape(mod, typeExprNode, scopeParams);
    if (typeExprHasMut(typeExprNode)) {
        //a type variable may be bound to a reference, which it then makes writable (G8a)
        if (TypeIsPermRef(t) || t.bType == BASETYPE_TYPEVAR) t.refMut = true;
        else ErrMsgSemantic(firstTokOfType(typeExprNode, TOK_MUT), MUT_ON_VALUE_TYPE);
    }
    return t;
}

static struct type resolveTypeExprShape(struct semaModule* mod, struct syntax* typeExprNode, struct list* scopeParams) {
    struct syntax* actual = partSntx(typeExprNode, 0);
    switch (actual->type) {
        case SNTX_CHOICE_BODY: return resolveChoiceBody(mod, (struct token){0}, actual);
        case SNTX_INTERFACE_BODY: return resolveInterfaceBody(mod, (struct token){0}, actual);
        //a func-type's own signature builds its own independent parameter list, so it gets no scopeParams
        //from the surrounding context - nothing outside it could resolve a scope tag against it anyway
        case SNTX_FUNC_TYPE: {
            struct type ft = resolveFuncSig(mod, firstPartOfType(actual, SNTX_FUNC_SIG));
            //G3 marks a function generic by the type variables appearing in its signature, which is right
            //for a DECLARATION and wrong for a function TYPE: a "<T>" written in a callback parameter's
            //type ("cmp func(a <T>, b <T>) bool") names the ENCLOSING declaration's own variable and
            //introduces nothing of its own - olang has no higher-rank polymorphism, so a function type is
            //never generic in its own right. Leaving the list populated made every call *through* such a
            //parameter look like a call to a generic needing its own inference, so a generic could take a
            //callback but never call it - which is the shape of every sort/find/map there is.
            ft.typeParams = ListInit(sizeof(struct str));
            ft.structMAlloc = true; //D16: a function value is reference-shaped
            return ft;
        }
        case SNTX_TYPE_REF: return resolveTypeRef(mod, actual, scopeParams);
        default: ErrorBugFound(); return TypeVanilla(BASETYPE_INT32);
    }
}

//T29d: a constructor for a declared primitive type - one parameter of the underlying type, which the body may
//check and change, and whose final value is the constructed value. It replaces the plain conversion as the way
//into the type; arithmetic still produces the type without running it. An ordinary function in every other
//respect, registered under the type's internal constructor name so "Percent(x)" reaches it.
static void resolvePrimCtor(struct semaModule* mod, struct type* t, struct syntax* node) {
    struct token at = firstTokAnywhere(node);
    if (!isTypeVanilla(t->bType) || t->bType == BASETYPE_VOID) { ErrMsgSemantic(at, PRIM_CTOR_NOT_PRIMITIVE); return; }
    struct var* f = VarGetList(&mod->vars, internalCtorName(t->tok));
    if (!f) return;
    f->owner = mod;
    f->type.bType = BASETYPE_FUNC;
    f->type.scopeVars = ListInit(sizeof(struct var*));
    f->type.scopeObligations = ListInit(sizeof(struct scopeObligation));
    resolveParamList(mod, firstPartOfType(node, SNTX_PARAM_LIST), &f->type.vars, &f->type.scopeVars);
    struct type underlying = TypeVanilla(t->bType);
    if (f->type.vars.len != 1 || !TypeIsSame((*(struct var*)ListGetIdx(&f->type.vars, 0)).type, underlying))
        ErrMsgSemantic(at, PRIM_CTOR_PARAM);
    f->type.errors = ListInit(sizeof(struct type*));
    struct syntax* errListNode = firstPartOfType(node, SNTX_ERROR_LIST);
    if (errListNode) {
        struct list items = allSyntaxParts(errListNode);
        for (int i = 0; i < items.len; i++) {
            struct syntax* itemNode = *(struct syntax**)ListGetIdx(&items, i);
            struct type* errType = itemNode->type == SNTX_BARE_ERROR ? &bareErrorType : resolveErrorTypeName(mod, itemNode);
            if (errType) ListAdd(&f->type.errors, &errType);
        }
        addDefaultError(&f->type.errors);
    }
    f->type.hasRetType = true;
    f->type.retType = t; //the type's own stable slot, as a struct constructor's is
    f->type.placeholder = false;
    t->hasCtor = true;
    t->ctorFunc = f;
    t->ctorBodySyntax = firstPartOfType(node, SNTX_BLOCK);
}

void resolveTypeDecl(struct type* t) {
    if (!t->placeholder) return;
    if (t->resolving) {
        ErrMsgSemantic(t->tok, STRUCT_NOT_YET_DEFINED);
        t->placeholder = false;
        return;
    }
    t->resolving = true;

    if (t->bType == BASETYPE_ERROR) {
        struct semaModule* owner = t->owner;
        //find the SNTX_ERROR_DECL that declared this type, by matching the name token
        for (int i = 0; i < owner->syn.decls.len; i++) {
            struct syntax* decl = ListGetIdx(&owner->syn.decls, i);
            struct syntax* actual = partSntx(decl, 0);
            if (actual->type != SNTX_ERROR_DECL) continue;
            struct list idens = allTokOfType(actual, TOK_IDEN);
            struct token declNameTok = *(struct token*)ListGetIdx(&idens, 0);
            if (!StrCmp(strFromTok(declNameTok), t->name)) continue;

            t->words = ListInit(sizeof(struct token));
            for (int j = 1; j < idens.len; j++) {
                struct token w = *(struct token*)ListGetIdx(&idens, j);
                for (int k = 1; k < j; k++) {
                    struct token other = *(struct token*)ListGetIdx(&idens, k);
                    if (StrCmp(strFromTok(w), strFromTok(other))) { ErrMsgSemantic(w, ERROR_WORD_ALREADY_IN_USE); break; }
                }
                ListAdd(&t->words, &w);
            }
            break;
        }
        t->placeholder = false;
        t->resolving = false;
        return;
    }

    //find the SNTX_TYPE_DECL that declared this named type
    struct semaModule* owner = t->owner;
    for (int i = 0; i < owner->syn.decls.len; i++) {
        struct syntax* decl = ListGetIdx(&owner->syn.decls, i);
        struct syntax* actual = partSntx(decl, 0);
        if (actual->type != SNTX_TYPE_DECL) continue;
        struct token declNameTok = firstTokOfType(actual, TOK_IDEN);
        if (!StrCmp(strFromTok(declNameTok), t->name)) continue;

        //G6: "type Vec<T> struct(...)" - the parameter list sits after the name and scopes over the whole
        //declaration. Its ORDER is what a type-argument list supplies positionally (G7), which is the
        //entire reason a type needs a declared list where a function (whose arguments are inferred) does
        //not. Captured before the body is resolved, so the body's own "<T>" references have something to
        //be checked against.
        struct list declaredParams = ListInit(sizeof(struct str));
        struct syntax* paramsNode = firstPartOfType(actual, SNTX_TYPE_PARAMS);
        struct list declaredConstraints = ListInit(sizeof(struct type));
        struct list constraintNodes = ListInit(sizeof(struct syntax*));
        if (paramsNode) {
            struct list items = allSyntaxParts(paramsNode);
            for (int i = 0; i < items.len; i++) {
                struct syntax* item = *(struct syntax**)ListGetIdx(&items, i);
                if (item->type == SNTX_TYPE_CONSTRAINT) continue; //G19: resolved below, once the names exist
                struct syntax* nextItem = i + 1 < items.len ? *(struct syntax**)ListGetIdx(&items, i + 1) : NULL;
                if (nextItem && nextItem->type == SNTX_TYPE_CONSTRAINT) ListAdd(&constraintNodes, &nextItem);
                else { struct syntax* none = NULL; ListAdd(&constraintNodes, &none); }
                struct token nameTok = firstTokAnywhere(item);
                struct str pname = strFromTok(nameTok);
                bool dup = false;
                for (int j = 0; j < declaredParams.len; j++) {
                    if (StrCmp(*(struct str*)ListGetIdx(&declaredParams, j), pname)) { dup = true; break; }
                }
                if (dup) { ErrMsgSemantic(nameTok, VAR_NAME_IN_USE); continue; }
                ListAdd(&declaredParams, &pname);
            }
        }

        //G8: this type's own parameters are in scope for everything it declares, so a field may be
        //written "Box<T>". The declared list is available here, before any field is resolved.
        struct list* prevTPN = currentTypeParamNames;
        if (declaredParams.len > 0) currentTypeParamNames = &declaredParams;
        //G19: each declared parameter's constraint, with the parameters in scope
        for (int i = 0; i < declaredParams.len && i < constraintNodes.len; i++) {
            struct syntax* cn = *(struct syntax**)ListGetIdx(&constraintNodes, i);
            if (!cn) continue;
            struct type tv = TypeVar(*(struct str*)ListGetIdx(&declaredParams, i), firstTokAnywhere(cn));
            tv.varConstraint = resolveConstraint(owner, firstPartOfType(cn, SNTX_TYPE_EXPR), NULL);
            if (tv.varConstraint) ListAdd(&declaredConstraints, &tv);
        }

        struct syntax* ctorNode = firstPartOfType(actual, SNTX_STRUCT_CTOR);
        //O3a: a scope declaration is only meaningful on a constructor-bearing type - a plain struct has no
        //signature for one to be bound at. The parser attaches them to whichever type node it built.
        if (!ctorNode) {
            struct syntax* teNode = firstPartOfType(actual, SNTX_TYPE_EXPR);
            struct list plainScopeDecls = teNode ? allPartsOfType(teNode, SNTX_SCOPE_DECL)
                                                 : ListInit(sizeof(struct syntax*));
            for (int i = 0; i < plainScopeDecls.len; i++) {
                ErrMsgSemantic(firstTokAnywhere(*(struct syntax**)ListGetIdx(&plainScopeDecls, i)),
                               SCOPE_DECL_ON_PLAIN_TYPE);
            }
        }
        if (ctorNode) {
            //mutates *t in place - see resolveStructCtorInto for why this can't go through the generic
            //build-then-copy path below
            //the parameters are the type's own before any field is resolved, so a field may name the type
            //itself - "next listChunk<T>&s" - which a generic linked node needs; set only afterwards, the
            //self-reference saw a type with no parameters and was rejected as taking none
            t->typeParams = declaredParams;
            t->typeConstraints = declaredConstraints;
            resolveStructCtorInto(owner, t, ctorNode);
            t->typeParams = declaredParams;
            t->typeConstraints = declaredConstraints;
            //a generic type's constructor and destructor are generic too - marked as such here (they are
            //ordinary vars in mod->vars, so without this both the pass-3 body builder and codegen would
            //treat them as ordinary functions and try to emit a body still mentioning type variables).
            //Their monomorphized copies are made by instantiateType and carry empty lists.
            if (declaredParams.len != 0) {
                t->ctorFunc->type.typeParams = declaredParams;
                t->ctorFunc->type.typeConstraints = declaredConstraints; //G19: checked where G10c infers them
                if (t->destructFunc) t->destructFunc->type.typeParams = declaredParams;
            }
            currentTypeParamNames = prevTPN;
            if (hasTokOfType(actual, TOK_EXTENDS)) ErrMsgSemantic(firstTokOfType(actual, TOK_EXTENDS), EXTENDS_NOT_BASE);
            break;
        }

        struct syntax* typeExprNode = firstPartOfType(actual, SNTX_TYPE_EXPR);
        //T17: an enum is known to be one before its payloads resolve, so one naming itself with "&" is reported as what
        //it is - a placeholder's kind used to read as a struct there, and "Add(a Expr&, b Expr&)" became a struct no
        //value could fit, reported at every use instead of at the declaration
        if (typeExprNode && partSntx(typeExprNode, 0)->type == SNTX_CHOICE_BODY) t->bType = BASETYPE_CHOICE;
        struct type resolved = resolveTypeExpr(owner, typeExprNode, NULL); //module-level, no function context
        struct str name = t->name;
        struct token tok = t->tok;
        struct semaModule* ownerSave = t->owner;
        *t = resolved;
        t->name = name;
        t->tok = tok;
        t->owner = ownerSave;
        t->typeParams = declaredParams;
        t->typeConstraints = declaredConstraints;
        //T29f: "extends" - only a declared number or array has a base whose methods and operators it can take
        if (hasTokOfType(actual, TOK_EXTENDS)) {
            if (TypeIsNumeric(*t) || t->bType == BASETYPE_ARRAY) t->extendsBase = true;
            else ErrMsgSemantic(firstTokOfType(actual, TOK_EXTENDS), EXTENDS_NOT_BASE);
        }
        struct syntax* primCtor = firstPartOfType(actual, SNTX_PRIM_CTOR);
        if (primCtor) resolvePrimCtor(owner, t, primCtor);
        currentTypeParamNames = prevTPN;
        break;
    }
    t->placeholder = false;
    t->resolving = false;
}

//M21: the type f is a method OF - its first parameter's type, when that type is one declared in f's own
//module (M19's coherence rule, the same test the method-call path makes). NULL for an ordinary function.
//Reference-shape is irrelevant here: "Sq" and "Sq&" name the same declared type, and a method may take
//either.
//M19: the receiver of a method - its parameter 0, which the receiver clause was spliced in as. A function
//is a method exactly when it was DECLARED with a receiver clause; nothing is inferred from a parameter's
//type any more. Inferring it was what made a method on a built-in impossible: every "func helper(n int32)"
//would have silently become a method on int32, and collided with every other.
struct type* SemanticMethodReceiver(struct var* f) {
    if (!f->isMethod || f->type.bType != BASETYPE_FUNC || f->type.isExtern) return NULL;
    if (f->type.vars.len < 1) return NULL;
    return &(*(struct var*)ListGetIdx(&f->type.vars, 0)).type;
}

bool typeIsSameModuloRefShape(struct type a, struct type b);

//M19: a built-in receiver is one no module declared - a primitive, or an unnamed array
static bool receiverIsBuiltin(struct type r) { return !(r.owner && r.name.len > 0); }

//E33: the float type a "<Float>FromBits" method name makes - "F64FromBits" makes an F64 - or NULL for any other name
static const struct primInfo* fromBitsTarget(struct str name) {
    for (size_t i = 0; i < sizeof(prims) / sizeof(prims[0]); i++) {
        int n = (int)strlen(prims[i].name);
        if (prims[i].kind == 'f' && name.len == n + 8 && !strncmp(name.ptr, prims[i].name, (size_t)n)
            && !strncmp(name.ptr + n, "FromBits", 8)) return &prims[i];
    }
    return NULL;
}

//E33: the bit-pattern methods the compiler supplies - "Bits()" on a float, giving the unsigned type of its width, and
//"F16FromBits()", "BF16FromBits()", "F32FromBits()", "F64FromBits()" on that unsigned type, giving the float. *out is
//what one gives; false when name is none of them for t. A declared type has them when it extends its base, as it has
//its base's other methods (T29f)
static bool suppliedBitsMethod(struct type t, struct str name, struct type* out) {
    const struct primInfo* p = PrimInfo(t.bType);
    if (!p || t.structMAlloc || !(receiverIsBuiltin(t) || t.extendsBase)) return false;
    if (p->kind == 'f') {
        if (!StrCmp(name, StrFromCStr("Bits"))) return false;
        for (size_t i = 0; i < sizeof(prims) / sizeof(prims[0]); i++) {
            if (prims[i].kind == 'u' && prims[i].bits == p->bits) { *out = TypeVanilla(prims[i].b); return true; }
        }
        return false;
    }
    const struct primInfo* f = fromBitsTarget(name);
    if (p->kind != 'u' || !f || f->bits != p->bits) return false;
    *out = TypeVanilla(f->b);
    return true;
}

//M19: does a method declared over built-in receiver `r` accept a receiver of type `recv`? An array matches
//by its ELEMENT - the length kind and the marker are E12's business at the call, which widens a "T[N]" to a
//"T[]&" exactly as it does for any argument - and a generic element ("<T>[]") matches every array. `exact`
//reports whether it matched without the generic, so an exact method can be preferred over a generic one.
static bool builtinReceiverMatches(struct type r, struct type recv, bool* exact) {
    *exact = false;
    if (!receiverIsBuiltin(recv)) return false;
    if (r.bType == BASETYPE_ARRAY && recv.bType == BASETYPE_ARRAY) {
        if (!r.arrElem || !recv.arrElem) return false;
        if (r.arrElem->bType == BASETYPE_TYPEVAR) return true;
        *exact = TypeIsSame(*r.arrElem, *recv.arrElem);
        return *exact;
    }
    *exact = typeIsSameModuloRefShape(r, recv);
    return *exact;
}

//M21: with several functions able to share a name, a declaration can no longer find its own var by name.
//The name TOKEN is unique - it is a position in this file's own token buffer - so the var pass 1 built
//from this very declaration is the one whose token starts in the same place. Falls back to the by-name
//lookup for a declaration pass 1 rejected outright, which created no var of its own.
struct var* varForDecl(struct semaModule* mod, struct token nameTok) {
    for (int i = 0; i < mod->vars.len; i++) {
        struct var* v = ListGetIdx(&mod->vars, i);
        if (v->tok.str.ptr == nameTok.str.ptr) return v;
    }
    return VarGetList(&mod->vars, strFromTok(nameTok));
}

//M19/M21: do two methods' receivers name the same type? Reference shape is not part of it - a method takes
//its receiver by value or by reference as it likes (T31/E12), and "(p Point)" and "(p Point&)" both declare
//a method of Point.
static bool sameReceiver(struct type a, struct type b) {
    if (receiverIsBuiltin(a) != receiverIsBuiltin(b)) return false;
    if (!receiverIsBuiltin(a)) return a.owner == b.owner && StrCmp(a.name, b.name);
    if (a.bType == BASETYPE_ARRAY && b.bType == BASETYPE_ARRAY) {
        if (!a.arrElem || !b.arrElem) return false;
        bool ga = a.arrElem->bType == BASETYPE_TYPEVAR, gb = b.arrElem->bType == BASETYPE_TYPEVAR;
        if (ga || gb) return ga && gb;
        return TypeIsSame(*a.arrElem, *b.arrElem);
    }
    return typeIsSameModuloRefShape(a, b);
}

//M19/M21: the declaration-side rules for one module. Methods live in a namespace of their own keyed by
//receiver, so a method and a plain function may share a name, two methods may share one when their
//receivers differ, and nothing else may share one at all. Run after signatures resolve, since a receiver's
//type is not known before.
static struct var* varGetMethodIn(struct semaModule* mod, struct str name, struct type recv);
static bool isDeclaredArray(struct type t);
static struct type underlyingArray(struct type t);

//E10a: whether a method named Eq has the shape "==" can call - one parameter of the receiver's own type in either
//shape, a Bool result. One that does not is reported where it is declared and never called by "==".
static bool eqWellShaped(struct var* m) {
    if (m->type.vars.len != 2 || !m->type.hasRetType || m->type.retType->isTuple
        || m->type.retType->bType != BASETYPE_BOOL) return false;
    struct type rb = ((struct var*)ListGetIdx(&m->type.vars, 0))->type, ob = ((struct var*)ListGetIdx(&m->type.vars, 1))->type;
    rb.structMAlloc = ob.structMAlloc = false;
    rb.refMut = ob.refMut = false;
    return TypeIsSame(rb, ob);
}

//E31: the operator methods, by capitalized name, with how many operands each takes besides the receiver and
//whether it gives a result. The same name with a lowercase first letter is the module's private operator.
struct operatorShape { const char* name; int operands; bool result; bool mayFail; bool mustFail; };
static const struct operatorShape operatorShapes[] = {
    {"Plus", 1, true, false, false}, {"Minus", 1, true, false, false}, {"Mul", 1, true, false, false},
    {"Div", 1, true, false, false}, {"Rem", 1, true, false, false}, {"MatMul", 1, true, false, false},
    {"Neg", 0, true, false, false}, {"Less", 1, true, false, false}, {"At", 1, true, false, false},
    {"SetAt", 2, false, false, false}, {"Slice", 2, true, false, false}, {"BitAnd", 1, true, false, false},
    {"BitOr", 1, true, false, false}, {"BitXor", 1, true, false, false}, {"ShiftLeft", 1, true, false, false},
    {"ShiftRight", 1, true, false, false}, {"BitNot", 0, true, false, false}, {"Inc", 0, true, false, false},
    {"Dec", 0, true, false, false}, {"Len", 0, true, false, false},
    {"Eq", 1, true, false, false}, {"Str", 0, true, false, false}, //E10a/E11c: what "==" and "$" consult
    //the checked forms, which "try" calls (TryAt and TrySlice are derived from At/Slice and Len when not declared)
    {"TryPlus", 1, true, true, true}, {"TryMinus", 1, true, true, true}, {"TryMul", 1, true, true, true},
    {"TryDiv", 1, true, true, true}, {"TryRem", 1, true, true, true}, {"TryMatMul", 1, true, true, true},
    {"TryNeg", 0, true, true, true}, {"TryAt", 1, true, true, true}, {"TrySetAt", 2, false, true, true},
    {"TrySlice", 2, true, true, true}, {"TryShiftLeft", 1, true, true, true}, {"TryShiftRight", 1, true, true, true},
    {"TryInc", 0, true, true, true}, {"TryDec", 0, true, true, true},
};

//a method named for an operator claims it, so it must have the operator's shape; and one operator may not be
//claimed twice on one type, by its public and its private name
static void checkOperatorMethod(struct semaModule* mod, struct var* a, struct type* ra) {
    for (size_t k = 0; k < sizeof(operatorShapes) / sizeof(operatorShapes[0]); k++) {
        const struct operatorShape* sh = &operatorShapes[k];
        size_t n = strlen(sh->name);
        if ((size_t)a->name.len != n || strncmp(a->name.ptr + 1, sh->name + 1, n - 1) != 0) continue;
        char c = a->name.ptr[0];
        bool pub = c == sh->name[0], priv = c == sh->name[0] - 'A' + 'a';
        if (!pub && !priv) continue;
        if (priv && !strcmp(sh->name, "Str")) continue; //E11c: only "Str" renders; a "str" is an ordinary method
        if (a->type.vars.len != sh->operands + 1) ErrMsgSemantic(a->tok, OPERATOR_ARITY);
        else if (sh->result && (!a->type.hasRetType || a->type.retType->isTuple)) ErrMsgSemantic(a->tok, OPERATOR_RESULT);
        else if (!sh->result && a->type.hasRetType) ErrMsgSemantic(a->tok, OPERATOR_SETAT_RESULT);
        else if (a->type.errors.len > 0 && !sh->mayFail) ErrMsgSemantic(a->tok, OPERATOR_FALLIBLE);
        else if (a->type.errors.len == 0 && sh->mustFail) ErrMsgSemantic(a->tok, TRY_OPERATOR_MUST_FAIL);
        else if (!strcmp(sh->name, "Less") && a->type.retType->bType != BASETYPE_BOOL) ErrMsgSemantic(a->tok, OPERATOR_LT_BOOL);
        else if (!strcmp(sh->name, "Len") && a->type.retType->bType != BASETYPE_INT64) ErrMsgSemantic(a->tok, LEN_SHAPE);
        else if (!strcmp(sh->name, "Eq") || !strcmp(sh->name, "Str")) {
            //E10a/E11c: a comparison or a rendering reads its operands and writes nothing
            struct var* recv = ListGetIdx(&a->type.vars, 0);
            bool writes = recv->mut || recv->type.refMut;
            if (!strcmp(sh->name, "Eq")) {
                struct var* o = ListGetIdx(&a->type.vars, 1);
                writes = writes || o->mut || o->type.refMut;
                if (!eqWellShaped(a)) ErrMsgSemantic(a->tok, EQ_SHAPE);
            } else if (!TypeIsByteArray(*a->type.retType)) {
                ErrMsgSemantic(a->tok, STR_SHAPE);
            }
            if (writes) ErrMsgSemantic(a->tok, EQ_STR_WRITES);
        }
        if (pub) {
            char low[24];
            snprintf(low, sizeof(low), "%s", sh->name);
            low[0] = (char)(low[0] - 'A' + 'a');
            if (varGetMethodIn(mod, StrFromCStr(low), *ra)) ErrMsgSemantic(a->tok, OPERATOR_BOTH_CASES);
        }
        return;
    }
}

//M19e: a type's own method meeting a default of a trait it satisfies is an override, which must have the default's
//signature - a same-named method with another one could not answer both. Looked for in the traits the type's module
//sees: its own, its imports', the prelude's. A default generic in a type of its own (Fold's U) is compared by arity.
static struct type* traitOfDefault(struct var* v);
struct var* VarGetMethod(struct semaModule* mod, struct str name, struct type recv);
static void checkDefaultClashesIn(struct semaModule* mod, struct var* a, struct type concrete, struct semaModule* im) {
    for (int i = 0; i < im->vars.len; i++) {
        struct var* d = ListGetIdx(&im->vars, i);
        if (!d->isMethod || !StrCmp(d->name, a->name) || d->type.bType != BASETYPE_FUNC) continue;
        struct type* tr = traitOfDefault(d);
        if (!tr) continue;
        if (im != mod && !isPublic(d->name)) continue;
        struct list b = ListInit(sizeof(struct typeBinding));
        if (TypeIsGeneric(*tr) && !unifyThroughMethods(*tr, concrete, &b)) continue;
        struct type trait = TypeIsGeneric(*tr) ? TypeSubstitute(*tr, &b) : *tr;
        if (TypeIsGeneric(trait) || !TypeSatisfiesConstraint(concrete, trait, NULL)) continue;
        //the default's signature with its receiver's variable and the trait's bound
        struct type* recvT = SemanticMethodReceiver(d);
        struct typeBinding self = (struct typeBinding){0};
        self.name = recvT->name;
        self.type = concrete;
        ListAdd(&b, &self);
        struct type full = TypeSubstitute(d->type, &b);
        if (TypeIsGeneric(full)) { //a family (Fold's U): the parameter count is what can be compared
            struct var* own = VarGetMethod(concrete.owner, a->name, concrete);
            if (own && own->type.vars.len != d->type.vars.len) { ErrMsgSemantic(a->tok, OVERRIDE_SIGNATURE_DIFFERS); return; }
            continue;
        }
        struct var asMethod = *d; //the default's signature without its receiver, as a trait method reads
        asMethod.type = full;
        asMethod.type.vars = ListInit(sizeof(struct var));
        for (int k = 1; k < full.vars.len; k++) ListAdd(&asMethod.type.vars, ListGetIdx(&full.vars, k));
        asMethod.mut = (*(struct var*)ListGetIdx(&d->type.vars, 0)).mut;
        bool fits = InterfaceMethodImpl(concrete, &asMethod) != NULL;
        if (!fits) { ErrMsgSemantic(a->tok, OVERRIDE_SIGNATURE_DIFFERS); return; }
    }
}

static void checkDefaultClashes(struct semaModule* mod) {
    for (int i = 0; i < mod->vars.len; i++) {
        struct var* a = ListGetIdx(&mod->vars, i);
        struct type* ra = a->isMethod ? SemanticMethodReceiver(a) : NULL;
        if (!ra || ra->bType == BASETYPE_INTERFACE || receiverIsBuiltin(*ra) || TypeIsGeneric(*ra)) continue;
        struct type concrete = *ra;
        concrete.structMAlloc = false;
        concrete.refMut = false;
        concrete.scopeParam = NULL;
        int errs = ErrMsgGetNErrors();
        checkDefaultClashesIn(mod, a, concrete, mod);
        for (int k = 0; k < mod->imports.len && ErrMsgGetNErrors() == errs; k++)
            checkDefaultClashesIn(mod, a, concrete, ((struct semaImport*)ListGetIdx(&mod->imports, k))->mod);
        for (int k = 0; k < preludeModules.len && ErrMsgGetNErrors() == errs; k++) {
            struct semaModule* pm = *(struct semaModule**)ListGetIdx(&preludeModules, k);
            if (pm != mod) checkDefaultClashesIn(mod, a, concrete, pm);
        }
    }
}

void checkMethodOverloads(struct semaModule* mod) {
    for (int i = 0; i < mod->vars.len; i++) {
        struct var* a = ListGetIdx(&mod->vars, i);
        struct type* ra = SemanticMethodReceiver(a);
        if (a->isMethod && ra) {
            //M19e: a default is declared in its trait's own module, and may not reuse a name the trait requires
            struct type* tr = traitOfDefault(a);
            if (tr) {
                struct type* origin = tr->genericOrigin ? tr->genericOrigin : tr;
                if (origin->owner != mod) { ErrMsgSemantic(a->tok, METHOD_ON_FOREIGN_TYPE); continue; }
                if (VarGetList(&tr->vars, a->name)) { ErrMsgSemantic(a->tok, METHOD_SHADOWS_INTERFACE_METHOD); continue; }
                continue;
            }
            //coherence: only the module declaring a type may give it methods, so no two modules disagree
            //about what "x.f" means - and a built-in type is declared by the language, whose methods are
            //the prelude's alone (M19d)
            if (!receiverIsBuiltin(*ra) && ra->owner != mod) { ErrMsgSemantic(a->tok, METHOD_ON_FOREIGN_TYPE); continue; }
            //T29e: an inherited array method is not overridden - a declared array type naming one is an error
            if (isDeclaredArray(*ra) && varGetMethodIn(mod, a->name, underlyingArray(*ra))) {
                ErrMsgSemantic(a->tok, METHOD_CLASHES_INHERITED);
                continue;
            }
            //E23/E33: nor is a method the compiler supplies - Len() on every array, a declared one included, and the
            //bit-pattern methods on a type extending a float or an unsigned integer. A declaration of one was
            //accepted and then never called, the supplied method answering every call
            struct type suppliedT;
            if (!receiverIsBuiltin(*ra) && ((ra->bType == BASETYPE_ARRAY && StrCmp(a->name, StrFromCStr("Len")))
                                            || suppliedBitsMethod(*ra, a->name, &suppliedT))) {
                ErrMsgSemantic(a->tok, METHOD_CLASHES_SUPPLIED);
                continue;
            }
            if (receiverIsBuiltin(*ra) && !isPreludeModule(mod)) { ErrMsgSemantic(a->tok, METHOD_ON_BUILTIN_TYPE); continue; }
            //E31: an operator method's shape - one operand besides the receiver (none for negation), a result,
            //no errors (an operator has nowhere to write "try"), and "<" answering with a Bool
            checkOperatorMethod(mod, a, ra);
        }
        for (int j = 0; j < i; j++) {
            struct var* b = ListGetIdx(&mod->vars, j);
            if (!StrCmp(a->name, b->name) || a->isMethod != b->isMethod) continue;
            if (!a->isMethod) { ErrMsgSemantic(a->tok, VAR_NAME_IN_USE); break; }
            struct type* rb = SemanticMethodReceiver(b);
            if (ra && rb && sameReceiver(*ra, *rb)) { ErrMsgSemantic(a->tok, DUPLICATE_METHOD_FOR_TYPE); break; }
        }
    }
}

//M19: whether mod declares a method called `name` - which is what turns a plain call's "unknown name" into
//the diagnostic that says how to call it
static bool moduleHasMethodNamed(struct semaModule* mod, struct str name) {
    for (int i = 0; i < mod->vars.len; i++) {
        struct var* v = ListGetIdx(&mod->vars, i);
        if (v->isMethod && StrCmp(v->name, name)) return true;
    }
    return false;
}

bool typeIsSameModuloRefShape(struct type a, struct type b); //G8a: used by MethodReceiverAccepts

//G8a: true when a method's first parameter `p0` accepts receiver `recv` - either the same declared type,
//or a still-generic application of the same generic, whose arguments the call's own inference resolves.
static bool isDeclaredArray(struct type t);
static struct type underlyingArray(struct type t);
bool MethodReceiverAccepts(struct type p0, struct type recv) {
    if (receiverIsBuiltin(p0)) {
        bool exact;
        if (isDeclaredArray(recv)) recv = underlyingArray(recv); //T29e: an inherited array method
        return builtinReceiverMatches(p0, recv, &exact);
    }
    if (typeIsSameModuloRefShape(p0, recv)) return true;
    return p0.genericOrigin && recv.genericOrigin && p0.genericOrigin == recv.genericOrigin
           && TypeIsGeneric(p0);
}

//M22: the module whose code is being checked or emitted - a function's own module, a generic's for its
//instantiations. A built-in's methods are visible there only if declared there or in a module it imports
//directly, which is the same answer in both passes because both set it from the same function's owner.
struct semaModule* SemanticMethodScope;
bool SemanticMethodAmbiguous; //set by the last VarGetMethod: two visible modules supplied the method


static struct var* varGetMethodIn(struct semaModule* mod, struct str name, struct type recv);

//T29e: a declared array type inherits the built-in array methods (prelude) - the array it is declared over -
//beside its own, so "s.Count(...)" works on a String as on any Array<Byte>
//T29f: ...when it extends that array - and a declared number extending its base inherits that number's methods
static bool isDeclaredArray(struct type t) {
    return t.extendsBase && (t.bType == BASETYPE_ARRAY || TypeIsNumeric(t)) && !receiverIsBuiltin(t);
}
static struct type underlyingArray(struct type t) {
    t.owner = NULL;
    t.name = (struct str){0};
    return t;
}

struct var* VarGetMethod(struct semaModule* mod, struct str name, struct type recv) {
    struct var* v = varGetMethodIn(mod, name, recv);
    if (!v && isDeclaredArray(recv)) v = varGetMethodIn(mod, name, underlyingArray(recv));
    return v;
}

static struct var* varGetMethodIn(struct semaModule* mod, struct str name, struct type recv) {
    SemanticMethodAmbiguous = false;
    //M19d: a built-in type's methods are the prelude's, visible everywhere; an exact receiver wins over a
    //generic one ("Byte[]&" over "<T>[]&"), as G8a has it
    if (receiverIsBuiltin(recv)) {
        struct var* generic = NULL;
        for (int m = 0; m < preludeModules.len; m++) {
        struct semaModule* pm = *(struct semaModule**)ListGetIdx(&preludeModules, m);
        for (int i = 0; i < pm->vars.len; i++) {
            struct var* v = ListGetIdx(&pm->vars, i);
            if (!v->isMethod || !StrCmp(v->name, name)) continue;
            struct type* r = SemanticMethodReceiver(v);
            bool exact = false;
            if (!r || !receiverIsBuiltin(*r) || !builtinReceiverMatches(*r, recv, &exact)) continue;
            if (exact) return v;
            if (!generic) generic = v;
        }
        }
        return generic;
    }
    if (recv.owner != mod) return NULL;
    for (int i = 0; i < mod->vars.len; i++) {
        struct var* v = ListGetIdx(&mod->vars, i);
        if (!StrCmp(v->name, name)) continue;
        struct type* r = SemanticMethodReceiver(v);
        if (r && r->owner == recv.owner && StrCmp(r->name, recv.name)) return v;
    }
    //G8a: a method declared over a still-generic application ("Atomic<T>") is a method of EVERY
    //application of that generic - which is what makes a generic type's methods writable once rather
    //than once per instantiation. Checked only after an exact match fails, so a method written for one
    //specific instantiation still wins for that instantiation and M21's overloading by receiver keeps
    //working: "Add(Atomic<int32>&)" and "Add(Atomic<int64>&)" remain two distinct methods.
    if (!recv.genericOrigin) return NULL;
    for (int i = 0; i < mod->vars.len; i++) {
        struct var* v = ListGetIdx(&mod->vars, i);
        if (!StrCmp(v->name, name)) continue;
        struct type* r = SemanticMethodReceiver(v);
        if (r && r->owner == recv.owner && r->genericOrigin == recv.genericOrigin && TypeIsGeneric(*r)) {
            return v;
        }
    }
    return NULL;
}

void semaResolveModule(struct semaModule* mod) {
    for (int i = 0; i < mod->types.len; i++) {
        struct type* t = ListGetIdx(&mod->types, i);
        resolveTypeDecl(t);
    }

    for (int i = 0; i < mod->syn.decls.len; i++) {
        struct syntax* decl = ListGetIdx(&mod->syn.decls, i);
        struct syntax* actual = partSntx(decl, 0);

        if (actual->type == SNTX_FUNC_DEF) {
            struct token nameTok = firstTokOfType(actual, TOK_IDEN);
            struct var* v = varForDecl(mod, nameTok);
            struct syntax* sigNode = firstPartOfType(actual, SNTX_FUNC_SIG);
            v->type = resolveFuncSig(mod, sigNode);
            //G16: kept here, in the SIGNATURE pass, and not where the body is checked - an instantiation
            //copies the generic var wholesale, so if the copy is made before the generic's own declaration
            //has been reached, bodySyntax is still NULL and the instantiation silently gets an empty body.
            //That produced a function returning a zero value with no diagnostic anywhere, for a generic
            //used before it is declared in the same file, or declared in an imported module whose bodies
            //are checked after the caller's. Signatures are resolved for every module before any body is
            //checked, so setting it here is early enough for both.
            v->bodySyntax = firstPartOfType(actual, SNTX_BLOCK);
            v->bodyIncomplete = firstPartOfType(actual, SNTX_BODY_INCOMPLETE) != NULL; //S8b
            v->type.owner = mod;
            v->type.tok = nameTok;
        } else if (actual->type == SNTX_EXTERN_FUNC_DECL) {
            struct token nameTok = firstTokOfType(actual, TOK_IDEN);
            struct var* v = varForDecl(mod, nameTok);
            v->type = resolveExternFuncSig(mod, actual);
            v->type.owner = mod;
            v->type.tok = nameTok;
        } else if (actual->type == SNTX_VAR_DECL) {
            struct token nameTok = firstTokOfType(actual, TOK_IDEN);
            struct var* v = VarGetList(&mod->vars, strFromTok(nameTok));
            struct syntax* typeExprNode = firstPartOfType(actual, SNTX_TYPE_EXPR);
            //":=" (no type node) is resolved later in semaCheckBodies instead, once the initializer
            //operand that its type gets read off exists
            if (typeExprNode) {
                v->type = resolveTypeExpr(mod, typeExprNode, NULL); //global, no function context
                declPermission(v); //T25b: "v mut Point&" is a writable global reference
            }
        }
    }
}

// ---- pass 3: check function bodies and global initializers ----

struct scope {
    struct list localPtrs; //list of struct var*
    struct scope* parent;
    struct var* lambda; //D16: this is a lambda's parameter scope - a variable found further out is captured
};

struct checkCtx {
    struct semaModule* mod;
    struct scope* scope;
    //P1: the innermost enclosing "join" block, or NULL outside one. The flag it points at is set by any
    //spawn that binds here, so an empty join can be reported; the depth is what a task's arguments must
    //outlive. Binding is LEXICAL - a fresh checkCtx per function means a callee's spawns never see this.
    bool* joinHasSpawn;
    int joinDepth;
    bool inLoop; //S11: true while checking a loop body, so break/continue can be rejected anywhere else.
                  //Deliberately not reset by a nested function - there are no nested functions - but it IS
                  //reset for a spawn block's tasks, which are calls, not bodies.
    int blockDepth; //O2: nesting depth of the block being checked; a body's own top level is 1. Stamped
                     //onto every bare "&" tag resolved here, so the lattice can order them (O2a).
    int bodyId; //S8b: the function or test body being checked - where a condition's locals are declared
    bool inTest; //S18c: checking a test block, which only a test build ever runs
    struct var* func; //current function (for return-type checking); NULL for global initializers AND for
                       //test { } blocks (which have no error union/return type of their own either)
    bool hasOwnScope; //true inside a function body or a test { } block - both are "own"'s valid range,
                       //even though only the former also sets func (see the field above); false for a
                       //global initializer, which has no enclosing scope at all
    struct syntax* incDecRoot; //S3a: the one expression an increment may be - a statement's whole expression
    bool buildingTarget; //E31: building an assignment's target - "x[i]" there may name only SetAt
    bool checkingTry; //E31: building what a "try" checks (not a written call's arguments, not a nested try) - an
                      //operator, index or slice on a declared type calls its Try form here
    bool allowFallibleCall; //true only while building the one primary node directly under a `try` -
                             //see buildTryExpr/buildTryCatchStmnt and buildPrimary's call branch
    struct var* destructSelfVar; //non-NULL only while checking a destruct{} body: a bare identifier that
                                  //isn't a real local but does name one of this var's own type's fields
                                  //resolves to member access on it instead of UNKNOWN_VAR - see buildPrimary
    bool inCtor; //true while checking a constructor's own body. Its synthetic ctorFunc does carry a
                  //ret-type (the struct being built), but that value is assembled by the compiler from the
                  //field bindings, never written by hand - so "return" is rejected outright (C13) rather
                  //than checked against it, which would otherwise be a way to hand back some other instance.
    bool inDefer; //S19b: checking deferred code, which runs while its block is being left and may only reach its
                  //own end - so no return, no error statement, no error a try lets through, and (with inLoop
                  //reset at the defer) no break or continue but those of a loop written inside it
};

struct scope scopePush(struct scope* parent) {
    struct scope s = {0};
    s.localPtrs = ListInit(sizeof(struct var*));
    s.parent = parent;
    return s;
}

struct var* scopeFindLocal(struct scope* sc, struct str name) {
    for (; sc; sc = sc->parent) {
        for (int i = 0; i < sc->localPtrs.len; i++) {
            struct var* v = *(struct var**)ListGetIdx(&sc->localPtrs, i);
            if (StrCmp(v->name, name)) return v;
        }
    }
    return NULL;
}

static struct var* lambdaCapture(struct var* L, struct var* outer, struct token tok);

//D16: a variable as code USES it - a variable found beyond a lambda's own scope is that lambda's capture of it
struct var* scopeFindUse(struct scope* sc, struct str name, struct token tok) {
    for (; sc; sc = sc->parent) {
        for (int i = 0; i < sc->localPtrs.len; i++) {
            struct var* v = *(struct var**)ListGetIdx(&sc->localPtrs, i);
            if (StrCmp(v->name, name)) return v;
        }
        if (sc->lambda) {
            struct var* outer = scopeFindUse(sc->parent, name, tok);
            return outer ? lambdaCapture(sc->lambda, outer, tok) : NULL;
        }
    }
    return NULL;
}

//D8c: "_" discards a value and names nothing, so nothing may be declared under it
static void rejectUnderscoreName(struct str name, struct token tok) {
    if (StrCmp(name, StrFromCStr("_"))) ErrMsgSemantic(tok, UNDERSCORE_NOT_A_NAME);
}

//D3a: no shadowing - a local or parameter may not reuse a name its module declares at the top level (a
//global or a function) or a build constant (B10). A module is the unit that keeps a namespace small enough
//to manage, so a name means one thing everywhere in it; and conditional compilation (S8b) can then read any
//name in a condition knowing whether it is a local or a global without knowing the scopes.
static void rejectShadowing(struct semaModule* mod, struct str name, struct token tok) {
    if (!mod || (name.len && name.ptr[0] == '$')) return;
    if (VarGetList(&mod->vars, name)) ErrMsgSemantic(tok, LOCAL_SHADOWS_GLOBAL);
    else if (buildConstVar(name)) ErrMsgSemantic(tok, LOCAL_SHADOWS_BUILD_CONST);
}

struct var* scopeDeclare(struct semaModule* mod, struct scope* sc, struct str name, struct token tok, struct type type, bool mut) {
    rejectUnderscoreName(name, tok);
    if (scopeFindLocal(sc, name)) ErrMsgSemantic(tok, VAR_NAME_IN_USE);
    rejectShadowing(mod, name, tok); //D3a
    if (mod) checkNoAliasClash(mod, name, tok); //M20
    struct var* v = VarAllocSetOrigin();
    v->name = name;
    v->tok = tok;
    v->type = type;
    v->mut = mut;
    v->mayBeInitialized = true;
    ListAdd(&sc->localPtrs, &v);
    return v;
}

struct var* lookupVar(struct checkCtx* ctx, struct token tok) {
    struct str name = strFromTok(tok);
    struct var* v = scopeFindUse(ctx->scope, name, tok);
    if (v) return v;
    v = VarGetList(&ctx->mod->vars, name);
    if (!v) v = buildConstVar(name); //B10: visible in every module by bare name
    if (!v) { reportUnknownName(ctx->mod, tok, "unknown name", true, "nothing of this name is declared here, in this module or in the prelude"); return NULL; }
    return v;
}

//resolves a possibly-namespaced call-target name node ("func" or "alias.func", from SNTX_NAME) to a var -
//the 1-identifier case is just lookupVar; the namespaced case looks up the target module directly and
//requires public visibility, mirroring resolveErrorTypeName
struct type* applyTypeArgsTo(struct checkCtx* ctx, struct type* found, struct syntax* argsNode, struct token errTok);

//"Type(args)"/"Type<args>(args)" - a constructor call. A generic type reaches its own monomorphized
//constructor through the instantiation, never through the generic's (whose parameters still mention type
//variables); a written argument list on a non-generic type, or a missing one on a generic, is an error
//applyTypeArgsTo reports for us.
struct var* ctorTargetFor(struct checkCtx* ctx, struct type* t, struct syntax* targsNode, struct token tok) {
    resolveTypeDecl(t);
    if (!t->hasCtor) return NULL;
    if (t->bType != BASETYPE_STRUCT) return t->ctorFunc; //T29d
    if (!targsNode) return t->ctorFunc; //G10c: a generic's own, its arguments inferred in OperandFuncCall
    struct type* spec = applyTypeArgsTo(ctx, t, targsNode, tok);
    return spec ? spec->ctorFunc : NULL;
}

struct var* resolveCallTarget(struct checkCtx* ctx, struct syntax* nameNode, struct syntax* targsNode) {
    struct list idens = allTokOfType(nameNode, TOK_IDEN);
    if (idens.len == 1) {
        struct token tok = *(struct token*)ListGetIdx(&idens, 0);
        struct str name = strFromTok(tok);
        struct var* v = scopeFindUse(ctx->scope, name, tok);
        if (v) return v;
        v = VarGetList(&ctx->mod->vars, name);
        if (v) return v;
        //not a var at all - "Type(args)" is legal exactly when Type declares a constructor; the synthetic
        //ctorFunc reuses every bit of ordinary call-site machinery from here on (arg checking, try/catch
        //coverage, codegen) with no dedicated call path of its own - see the report
        struct type* t = typeNamed(ctx->mod, name);
        if (t) {
            struct var* ctor = ctorTargetFor(ctx, t, targsNode, tok);
            if (ctor) return ctor;
            if (t->hasCtor) return NULL; //already reported
        }
        if (moduleHasMethodNamed(ctx->mod, name)) ErrMsgSemantic(tok, METHOD_CALLED_AS_FUNCTION);
        else reportUnknownName(ctx->mod, tok, "unknown function or type", true, "nothing of this name is declared here, in this module or in the prelude");
        return NULL;
    }

    struct semaModule* target = resolveAliasChain(ctx->mod, idens, 1);
    if (!target) return NULL; //error already reported
    struct token nameTok = *(struct token*)ListGetIdx(&idens, idens.len -1);
    struct str name = strFromTok(nameTok);
    struct var* v = VarGetList(&target->vars, name);
    if (v) {
        if (!isPublic(name)) { ErrMsgSemantic(nameTok, VAR_IS_PRIVATE); return NULL; }
        return v;
    }
    struct type* t = TypeGetList(&target->types, name);
    if (t) {
        resolveTypeDecl(t);
        if (t->hasCtor) {
            if (!isPublic(name)) { ErrMsgSemantic(nameTok, TYPE_IS_PRIVATE); return NULL; }
            return ctorTargetFor(ctx, t, targsNode, nameTok);
        }
    }
    ErrMsgSemantic(nameTok, moduleHasMethodNamed(target, name) ? METHOD_CALLED_AS_FUNCTION : UNKNOWN_VAR);
    return NULL;
}

// ---- operand construction & type checking ----
//
// unary/binary operators are dispatched through the two small tables below - one line per operator,
// the same "rules as data" idea as token.c's token table and syntax.c's grammar table, instead of a
// scattered switch/if chain. Everything else here (literals, calls, indexing, member access) doesn't
// have that repetitive one-of-many-operators shape, so it stays as plain, single-purpose functions.

struct operand* operandNew(struct token tok, enum operation opType, struct type type) {
    struct operand* op = MallocOrCrash(sizeof(struct operand));
    *op = (struct operand){0};
    op->tok = tok;
    op->opType = opType;
    op->type = type;
    op->args = ListInit(sizeof(struct operand*));
    op->scopeBindings = ListInit(sizeof(struct scopeBinding));
    return op;
}

bool OperandIsInt(struct operand* op) {
    return TypeIsInt(op->type);
}

bool OperandIsBool(struct operand* op) {
    return op->type.bType == BASETYPE_BOOL;
}

bool OperandIsNumeric(struct operand* op) {
    return TypeIsNumeric(op->type);
}

static bool typeIsRefShaped(struct type t) {
    return t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_CHOICE || (t.bType == BASETYPE_ARRAY && !t.arrMalloc);
}

//a function's own parameters get resolved into TWO distinct struct var instances that are never the same
//pointer: the type-level original (func->type.vars, built once during signature resolution - pass 2) and
//a fresh copy pushed into the local scope chain for body-checking (semaCheckBodies - pass 3, since a
//parameter is also an ordinary local as far as expression-building/scopeFindLocal is concerned). A type-
//level scope tag (a var-decl's declared type, a return type) always resolves against the former; a
//value-level read (lookupVar, e.g. an argument expression like "own"/"s" inside a call) always resolves
//against the latter. Comparing the two by raw identity - exactly what a call's own scope-binding map does
//when it captures an argument's readVar (see OperandFuncCall) - would incorrectly treat them as
//different scopes. semaCheckBodies sets each copy's own .origin to the type-level original it was copied
//from (the same field ordinary locals already use to track "where this declaration is stored" - see
//struct var's own comment in semantic.h), so canonicalVar resolves either shape back to the one, stable,
//type-level identity varIsOwnParam/scopeCanFlowInto compare against.
struct var* canonicalVar(struct var* v) {
    if (!v) return NULL;
    return v->origin ? v->origin : v;
}

//true if two struct scopeBinding.viaPath lists name the exact same stack of parameters, in the same
//order, element-wise canonicalized (see canonicalVar). Two empty paths are equal (both "unambiguous").
bool viaPathsEqual(struct list a, struct list b) {
    if (a.len != b.len) return false;
    for (int i = 0; i < a.len; i++) {
        struct var* pa = canonicalVar(*(struct var**)ListGetIdx(&a, i));
        struct var* pb = canonicalVar(*(struct var**)ListGetIdx(&b, i));
        if (pa != pb) return false;
    }
    return true;
}

//pushes param onto the front of path (the top of the stack), canonicalizing it first - see struct
//scopeBinding's own comment. Used by OperandFuncCall's bare-pun merge step: every entry merged from a
//non-scope argument's own map gets the CURRENT call's own parameter pushed on top, so the resulting path
//still remembers the entry's full history through however many nested calls it's passed through.
struct list viaPathPush(struct var* param, struct list path) {
    struct list result = ListInit(sizeof(struct var*));
    struct var* canonParam = canonicalVar(param);
    ListAdd(&result, &canonParam);
    ListAddList(&result, path);
    return result;
}

//pops the front element (the top of the stack) off path, returning what's left - the counterpart to
//viaPathPush, used by OperandMember's bare-pun carry-forward step once it's confirmed (by checking the
//front element - see the same call site) that THIS field is the one the top of the stack refers to.
//Never called on an empty path (callers check path.len first).
struct list viaPathPopFront(struct list path) {
    struct list result = ListInit(sizeof(struct var*));
    for (int i = 1; i < path.len; i++) {
        ListAdd(&result, ListGetIdx(&path, i));
    }
    return result;
}

//true if scopeVar is one of func's own scope variables (O3), by identity after canonicalization (see
//canonicalVar). func may be NULL (a global initializer or a test{} block, neither of which has a
//signature of its own) - always false there.
//is v one of func's ordinary (value) parameters? Used by O22 to name the parameter a container arrived
//through, which is what makes a derived obligation resolvable at a call site.
bool varIsParamOf(struct var* v, struct var* func) {
    if (!v || !func) return false;
    v = canonicalVar(v);
    for (int i = 0; i < func->type.vars.len; i++) {
        if (canonicalVar(ListGetIdx(&func->type.vars, i)) == v) return true;
    }
    return false;
}

bool varIsOwnParam(struct var* scopeVar, struct var* func) {
    if (!scopeVar || !func) return false;
    scopeVar = canonicalVar(scopeVar);
    for (int i = 0; i < func->type.scopeVars.len; i++) {
        if (canonicalVar(*(struct var**)ListGetIdx(&func->type.scopeVars, i)) == scopeVar) return true;
    }
    //O23a: a derived scope is one of the function's own, as far as relating it goes - bound before the call, like
    //any scope a caller passes, so it outlives every block of the body (O10a)
    for (int i = 0; i < func->type.derivedScopes.len; i++) {
        if (((struct derivedScope*)ListGetIdx(&func->type.derivedScopes, i))->sv == scopeVar) return true;
    }
    return false;
}

//O23a: func's derived scope for "where the argument for param bound its type's scope variable V", made on first use
struct var* derivedScopeVar(struct var* func, struct var* param, struct var* V) {
    param = canonicalVar(param);
    V = canonicalVar(V);
    for (int i = 0; i < func->type.derivedScopes.len; i++) {
        struct derivedScope* d = ListGetIdx(&func->type.derivedScopes, i);
        if (d->param == param && d->typeVar == V) return d->sv;
    }
    if (!func->type.derivedScopes.elemSize) func->type.derivedScopes = ListInit(sizeof(struct derivedScope));
    struct var* sv = VarAllocSetOrigin();
    struct str vn = V->name.len && V->name.ptr[0] == '&' ? Str(V->name.ptr + 1, V->name.len - 1) : V->name;
    char* nm = MallocOrCrash((size_t)(param->name.len + vn.len) + 3);
    snprintf(nm, (size_t)(param->name.len + vn.len) + 3, "&%.*s.%.*s", param->name.len, param->name.ptr, vn.len, vn.ptr);
    sv->name = StrFromCStr(nm); //"&it.of": no scope a program writes can be spelled this way
    sv->tok = param->tok;
    sv->type = TypeScope();
    sv->mayBeInitialized = true;
    sv->isImplicitScope = true;
    sv->derivedFrom = param;
    struct derivedScope d = { param, V, sv };
    ListAdd(&func->type.derivedScopes, &d);
    return sv;
}

//O23a: the derived scope sv of func, or NULL when it is not one
static struct derivedScope* derivedScopeOf(struct var* func, struct var* sv) {
    if (!func || !sv) return NULL;
    sv = canonicalVar(sv);
    for (int i = 0; i < func->type.derivedScopes.len; i++) {
        struct derivedScope* d = ListGetIdx(&func->type.derivedScopes, i);
        if (d->sv == sv) return d;
    }
    return NULL;
}

//codegen: the run-time scope standing for a scope variable. A derived scope has none of its own - nothing is ever
//built into one (C2d) - so a hidden argument naming one passes the scope of the parameter it was read through,
//which it outlives (O23); a value parameter's is the function's own scope.
struct var* SemanticRuntimeScope(struct var* sv, int* depth) {
    if (!sv || !sv->derivedFrom) return sv;
    struct var* p = sv->derivedFrom;
    if (p->type.structMAlloc && p->type.scopeParam) return p->type.scopeParam;
    *depth = 1;
    return NULL;
}

//a dedicated, never-otherwise-reachable "known ambiguous" scope identity - see resolveEffectiveScopeVar/
//foldScopeBindingsBranch/scopeCanFlowInto below. Never equal to any real function's own parameter (no
//function's own type.vars list can ever contain THIS specific instance), so distinguishing it from an
//ordinary foreign/untracked scope tag still matters even though scopeCanFlowInto now rejects both: "we
//never tried to trace this var, or found nothing" (an empty scopeBindings map - now correctly rejected as
//unverifiable, not allowed through) is still a different fact from "we traced it and found it can be more
//than one thing" (this sentinel, checked first, explicitly) - collapsing the two into one code path would
//obscure which one actually happened when reading the logic, even though both now produce the same
//outcome. Declared ahead of resolveEffectiveScopeVar (moved up from its original spot right before
//scopeCanFlowInto) since that function now also needs to return it directly.
struct var scopeAmbiguousStorage = {0};
struct var* SCOPE_AMBIGUOUS = &scopeAmbiguousStorage;

//resolves scopeVar to whatever it's *effectively* bound to from op's own perspective, one hop through
//op's own scopeBindings map (populated for a call operand by OperandFuncCall, for a member operand by
//OperandMember - which also composes a field's own *persisted* map through this same lookup, letting a
//chain of member accesses resolve through however many levels of nested constructor-bearing types it
//passes through, one hop at a time - see the "field of a field" entry in the report - and propagated onto
//a var, and so onto every later read of it, by buildVarDeclStmnt). Falls through to scopeVar unchanged
//when op carries no matching entry (the common case: nothing to substitute, either because op has no map
//at all or scopeVar isn't one of the keys it knows how to resolve). Canonicalizes both sides before
//comparing (see canonicalVar) since a stored key/value may be either a type-level scope param or a
//function/constructor body's own scope-chain copy of one, depending on which pass produced it.
//Deliberately ignores viaPath here: a generic caller (OperandFitsType, or either of OperandMember's own
//two non-carry-forward lookups) never knows which path it wants, so this matches typeParam alone across
//every entry regardless of viaPath. That's safe/correct as long as op's own map has at most one distinct
//boundTo per typeParam by the time it reaches here - true for everything except a raw, not-yet-filtered
//multi-argument call operand (see OperandFuncCall) or a not-yet-fully-popped bare-pun carry-forward result
//(see OperandMember), neither of which anything calls this on directly. If two entries for the same
//typeParam genuinely disagree anyway, returns SCOPE_AMBIGUOUS rather than silently picking one - the same
//"known ambiguous, not just untracked" distinction SCOPE_AMBIGUOUS exists for elsewhere.
struct var* resolveEffectiveScopeVar(struct operand* op, struct var* scopeVar) {
    if (!scopeVar) return NULL;
    struct var* canonScopeVar = canonicalVar(scopeVar);
    struct var* found = NULL;
    bool foundAny = false;
    for (int i = 0; i < op->scopeBindings.len; i++) {
        struct scopeBinding* b = ListGetIdx(&op->scopeBindings, i);
        if (canonicalVar(b->typeParam) != canonScopeVar) continue;
        struct var* bt = canonicalVar(b->boundTo);
        if (foundAny && bt != found) return SCOPE_AMBIGUOUS;
        found = bt;
        foundAny = true;
    }
    return foundAny ? found : scopeVar;
}

//resolveEffectiveScopeVar, with the block depth when the answer is one of this function's blocks (O2a): the depth
//the binding recorded, or - with no binding - the depth the operand's own type carries
struct var* resolveScopeWithDepth(struct operand* op, struct var* scopeVar, int* depth) {
    *depth = op->type.scopeDepth;
    if (!scopeVar) return NULL;
    struct var* r = resolveEffectiveScopeVar(op, scopeVar);
    if (r != canonicalVar(scopeVar) || r == NULL) {
        for (int i = 0; i < op->scopeBindings.len; i++) {
            struct scopeBinding* b = ListGetIdx(&op->scopeBindings, i);
            if (canonicalVar(b->typeParam) == canonicalVar(scopeVar)) { *depth = b->boundTo ? 0 : b->boundDepth; break; }
        }
    }
    return r;
}

//can a "&"-heap-indirect value tagged srcScope be safely stored into a slot tagged dstScope, from the
//perspective of func (the function currently being checked)? NULL means "bare <> - this function's own
//private scope". olang has no lifetime-bound syntax (no Rust-style "'a: 'b"), so only two relationships
//are ever provable: the exact same scope (trivially safe - covers own-into-own too), and a named scope
//flowing into a bare "&" slot (every scope RECEIVED as a parameter is guaranteed to outlive func's own
//private scope, by construction - own's scope closes when func itself returns, strictly before any scope
//its caller passed in could close - see the report). The reverse (own flowing into a named slot) is never
//safe, and two DIFFERENT named scopes are never provably comparable at all.
//Fails CLOSED, not open, outside func's own frame: a scope tag that isn't one of func's own declared
//parameters, and that the caller's own resolveEffectiveScopeVar call couldn't resolve into one either, is
//REJECTED - not silently allowed. An earlier version of this function treated that case as "unverifiable,
//so allow" on the theory that nothing currently expressible could actually exploit it; that theory was
//wrong (see the report on the array-index smuggling counterexample: a scope tag read back out through
//OPERATION_INDEX, which composes no scopeBindings at all, is untraceable and was silently accepted
//regardless of whether the two scopes involved actually agreed) - "can't prove it's safe" must reject, not
//optimistically pass, for a checker whose entire point is a compile-time safety proof. Every call site that
//could produce a target-side scope tag foreign to func's own frame (a callee's own parameter type, in an
//ordinary call or a constructor call - the two are the same code path) now resolves it through that call's
//own binding map first (OperandFuncCall), so the common, actually-sound cases don't spuriously reject; what
//still reaches this branch is either genuinely unsound or beyond what this checker can currently trace -
//both are correctly indistinguishable from here, and both are rejected. A SCOPE_AMBIGUOUS srcScope is
//handled first, above, for the same reason - "traced it and found two different things" is not
//"unverifiable" and must never fall through to any lenient default either.
//codegen's own entry point into the binding map a call operand carries (O17/O18): which of OUR scopes
//the callee's scope variable `sv` was bound to at this call. NULL means our own scope.
struct var* SemanticBoundScope(struct operand* callOp, struct var* sv) {
    struct var* bound = resolveEffectiveScopeVar(callOp, sv);
    return bound == SCOPE_AMBIGUOUS ? NULL : bound;
}

//O2d: the block depth the answer above means when it is NULL (our own scope). An argument-determined
//binding refers to where that argument's referent lives; anything else is the caller's own scope right
//here, which is the call's own block.
int SemanticBoundScopeDepth(struct operand* callOp, struct var* sv, int callDepth) {
    if (SemanticBoundScope(callOp, sv)) return 0; //a named scope resolves through its parameter, not a depth
    struct var* canon = canonicalVar(sv);
    for (int i = 0; i < callOp->scopeBindings.len; i++) {
        struct scopeBinding* b = ListGetIdx(&callOp->scopeBindings, i);
        if (canonicalVar(b->typeParam) != canon) continue;
        if (b->boundTo == NULL && b->boundDepth > 0) return b->boundDepth;
    }
    return callDepth;
}

//O10a: the order provable from one signature alone. NULL is "own". A name outlives itself; every scope
//variable outlives own, since scopes are strictly FILO (O1) and a variable is always bound to one that
//was already open when this function was entered. Nothing else is decided here.
//O10a, extended by O2a. The order is: inner block scopes < ... < outer block scopes < every scope
//variable of the signature (those belong to the caller, so they outlive the whole body). Two block
//scopes are compared by nesting depth, shallower outliving deeper; that is the only new fact, and it is
//what makes a value tagged to an inner block unable to escape it with no rule of its own.
bool scopeOutlives(struct var* func, struct var* longer, int longerDepth, struct var* shorter, int shorterDepth) {
    //Depth 0 means "not a block scope": only a local declaration stamps a real depth (>= 1), so a bare "&"
    //written on a parameter, a field, or a return type still reads exactly as it did before block scopes
    //existed. As a TARGET that means "accepts any scope" - a bare "&" parameter is the caller's instance
    //(O4a), and the callee's body is bracketed by the call, so every caller scope outlives it.
    if (longer == NULL && shorter == NULL) return shorterDepth == 0 || longerDepth <= shorterDepth;
    if (longer == shorter) return true;
    if (shorter == NULL) return varIsOwnParam(longer, func); //a signature's scope outlives any block
    return false;                                            //a block scope never outlives a named one (O10d)
}

//O10b: does func already require "longer outlives shorter", directly or through the transitive closure
//its obligation set is kept in?
bool scopeObligationHeld(struct var* func, struct var* longer, struct var* shorter) {
    if (!func) return false;
    for (int i = 0; i < func->type.scopeObligations.len; i++) {
        struct scopeObligation* o = ListGetIdx(&func->type.scopeObligations, i);
        if (o->shorterViaParam) continue; //O22: derived edges are matched by their own adder, not here
        if (canonicalVar(o->longer) == longer && canonicalVar(o->shorter) == shorter) return true;
    }
    return false;
}

//records "longer outlives shorter" as an obligation of func (O10b), keeping the set transitively closed
//so scopeObligationHeld above is a plain membership test. Both must be scope variables of func - a
//relation involving own is never deferrable (O10a decides it, or O10d rejects it).
//O10c: the statement being checked, recorded on every obligation it creates so that a call failing to
//discharge one can say which statement of the callee required it
static struct token obligationOrigin;

//O22: record "longer outlives <scopeVar of viaParam's own type>". Deliberately kept out of the transitive
//closure below: a derived reference is only meaningful against one specific parameter, so composing it
//with ordinary edges would produce relations that name nothing a caller could resolve.
void scopeObligationAddDerived(struct var* func, struct var* longer, struct var* shorter, struct var* viaParam,
                               bool exact) {
    if (!func) return;
    for (int i = 0; i < func->type.scopeObligations.len; i++) {
        struct scopeObligation* o = ListGetIdx(&func->type.scopeObligations, i);
        if (o->shorterViaParam == viaParam && canonicalVar(o->longer) == canonicalVar(longer)
                && canonicalVar(o->shorter) == canonicalVar(shorter)) return;
    }
    struct scopeObligation o = (struct scopeObligation){0};
    o.longer = longer;
    o.shorter = shorter;
    o.shorterViaParam = viaParam;
    o.exact = exact;
    o.origin = obligationOrigin;
    ListAdd(&func->type.scopeObligations, &o);
}

void scopeObligationAdd(struct var* func, struct var* longer, struct var* shorter) {
    if (scopeObligationHeld(func, longer, shorter)) return;
    struct scopeObligation o = (struct scopeObligation){0};
    o.longer = longer;
    o.shorter = shorter;
    o.origin = obligationOrigin;
    ListAdd(&func->type.scopeObligations, &o);
    //transitive closure: anything shorter already outlived by "shorter", and anything already outliving
    //"longer", compose across the edge just added. Re-entrant through scopeObligationAdd, terminating
    //because the pair space is this one signature's own finite scopeVars squared.
    struct list snapshot = func->type.scopeObligations;
    for (int i = 0; i < snapshot.len; i++) {
        struct scopeObligation* e = ListGetIdx(&snapshot, i);
        if (e->shorterViaParam) continue; //O22
        if (canonicalVar(e->longer) == shorter) scopeObligationAdd(func, longer, canonicalVar(e->shorter));
        if (canonicalVar(e->shorter) == longer) scopeObligationAdd(func, canonicalVar(e->longer), shorter);
    }
}

//O10: a value tagged srcScope may flow into a target tagged dstScope exactly when src outlives dst.
//Decided by O10a where it can be; otherwise, when BOTH sides are this function's own scope variables,
//recorded as an obligation on func and accepted here (O10b) - every caller then has to discharge it
//(O10c). An untraceable tag (O11) or a known-ambiguous one (O12) is neither, and still rejects.
bool paramTypeNamesScope(struct type pt, struct var* sv);

bool scopeCanFlowInto(struct var* func, struct var* srcScope, int srcDepth, struct var* dstScope, int dstDepth) {
    if (srcScope == SCOPE_AMBIGUOUS || dstScope == SCOPE_AMBIGUOUS) return false;
    srcScope = canonicalVar(srcScope);
    dstScope = canonicalVar(dstScope);
    if (scopeOutlives(func, srcScope, srcDepth, dstScope, dstDepth)) return true;
    //O10d: own can never outlive a scope variable, and no caller's binding could make it so - this is a
    //bug in the body, not something to defer. Reported by the caller of this function, which has the token.
    if (srcScope == NULL) return false;
    if (!varIsOwnParam(srcScope, func) || !varIsOwnParam(dstScope, func)) return false;
    if (scopeObligationHeld(func, srcScope, dstScope)) return true;
    scopeObligationAdd(func, srcScope, dstScope);
    return true;
}

enum typeFit {
    TYPE_FIT_OK,
    TYPE_FIT_MISMATCH,      //VALUE_TYPE_MISMATCH - structurally different types
    TYPE_FIT_NUMBER,        //T6b - two numeric types, the value's not flowing into the target's
    TYPE_FIT_LITERAL_EXPR,  //E4a: a literal-only expression whose value the target cannot hold ("b U8 = 200 + 100")
    TYPE_FIT_SCOPE_MISMATCH,//SCOPE_MAY_NOT_OUTLIVE_TARGET - structurally fine, scope-unsafe - see scopeCanFlowInto
    TYPE_FIT_SCOPE_OWN,     //O10d: own into a named scope. Rejected like the above, but told apart because
                             //no caller could ever satisfy it - the fix is in this body, not at a call site
    TYPE_FIT_ARRAY_SIZE_MISMATCH, //ARRAY_SIZE_MISMATCH - same element type, both compile-time-length, different sizes
    TYPE_FIT_LITERAL_RANGE, //LITERAL_NOT_REPRESENTABLE - numeric literal into a numeric target that can't hold it (T6)
    TYPE_FIT_ELEM_REF_SHAPE, //ELEM_REF_SHAPE_MISMATCH - same element type and length, elements differ in reference-shapedness
    TYPE_FIT_CTOR,          //T29d: a literal into a declared primitive type with a constructor
    TYPE_FIT_READ_ONLY      //T25c: a read-only reference where a writable one is wanted
};

__extension__ typedef __int128 litWide;

//T6: an integer literal's exact value - a U64's bit pattern read unsigned (only a literal-only expression, E4a, folds
//to one above I64's maximum), every other's as it is held
static litWide intLiteralExact(struct operand* lit) {
    return lit->type.bType == BASETYPE_U64 ? (litWide)(unsigned long long)lit->intLiteralVal : (litWide)lit->intLiteralVal;
}

//a numeric literal's value as a float - what it holds once it adapts to a float type
static double literalAsFloat(struct operand* lit) {
    return TypeIsFloat(lit->type) ? lit->floatLiteralVal : (double)intLiteralExact(lit);
}

//can an integer literal's value be represented in integer type `to`? an unsigned type's range starts at 0 (T4), so
//a negative literal never fits one, and 256 does not fit a U8
static bool intLiteralFitsIntType(litWide v, struct type to) {
    const struct primInfo* p = PrimInfo(to.bType);
    if (!p || p->kind == 'f') return false;
    if (p->kind == 'u') return v >= 0 && v < ((litWide)1 << p->bits);
    return v >= -((litWide)1 << (p->bits - 1)) && v < ((litWide)1 << (p->bits - 1));
}

//T6: a float value fits a float type unless, rounded to it as a conversion rounds, a finite value becomes an infinity -
//"f F32 = 1e39", "70000" into an F16. Rounding the other way, to zero or a subnormal, still fits. An infinity or a NaN
//already (a float division by zero, E6a) is a value of every float type.
static bool floatValueFitsType(double v, struct type to) {
    enum floatKind k = to.bType == BASETYPE_FLOAT32 ? FLOAT_KIND_F32 : to.bType == BASETYPE_F16 ? FLOAT_KIND_F16
                     : to.bType == BASETYPE_BF16 ? FLOAT_KIND_BF16 : FLOAT_KIND_F64;
    return !isfinite(v) || isfinite(FloatRoundTo(v, k));
}

//E4a: whether op is a literal-only expression - built only from numeric literals and the arithmetic, bitwise and shift
//operators (unary "-" and "~" included) - which adapts to a target as one literal does (T6). A tried one ("try (1 + 2)")
//is a checked computation in its literals' own types, not a literal (E15a), so it is not one.
static bool operandOnlyNumericLiterals(struct operand* op) {
    if (op->isLiteral) return TypeIsNumeric(op->type) && !op->isNullLiteral;
    if (op->isTried || op->checkRoot || op->catchClauses.len) return false;
    switch (op->opType) {
        case OPERATION_MINUS: case OPERATION_BTWSE_INV: case OPERATION_ADD: case OPERATION_SUB: case OPERATION_MUL:
        case OPERATION_DIV: case OPERATION_MOD: case OPERATION_BTSFT_L: case OPERATION_BTSFT_R:
        case OPERATION_BTWSE_AND: case OPERATION_BTWSE_OR: case OPERATION_BTWSE_XOR: break;
        default: return false;
    }
    for (int i = 0; i < op->args.len; i++) {
        if (!operandOnlyNumericLiterals(*(struct operand**)ListGetIdx(&op->args, i))) return false;
    }
    return op->args.len > 0;
}

//T6/E4a: may op be adapted as a literal - any literal, or a literal-only expression
static bool operandIsLiteralLike(struct operand* op) { return op->isLiteral || operandOnlyNumericLiterals(op); }

//E4a: what a literal-only expression is worth, computed while compiling - an integer exactly, never wrapped (E6c is
//the run time's arithmetic, not this), a float in F64 as its literals are (T6a)
struct litValue { bool isFloat; litWide i; double f; };
//E4a/E8a: literal-only shifts whose amount is past the shifted literal's width - an error unless something folds them
static struct list literalShifts;
enum litValueFail { LIT_VALUE_OK, LIT_VALUE_NONE, LIT_VALUE_ZERO_DIV };

//LIT_VALUE_NONE where it has no value any type could hold - an integer beyond 128 bits, a finite float computation
//reaching an infinity - and LIT_VALUE_ZERO_DIV for an integer divided by zero, which OperandBinary already reported.
//A float divided by zero is an infinity or a NaN (E6a), which are values; a NaN is the one LLVM folds 0.0 / 0.0 to.
static enum litValueFail literalExprValue(struct operand* op, struct litValue* out) {
    if (op->isLiteral) {
        out->isFloat = TypeIsFloat(op->type);
        if (out->isFloat) out->f = op->floatLiteralVal;
        else out->i = intLiteralExact(op);
        return LIT_VALUE_OK;
    }
    struct litValue a = {0}, b = {0};
    enum litValueFail r = literalExprValue(*(struct operand**)ListGetIdx(&op->args, 0), &a);
    if (r == LIT_VALUE_OK && op->args.len > 1) r = literalExprValue(*(struct operand**)ListGetIdx(&op->args, 1), &b);
    if (r != LIT_VALUE_OK) return r;
    enum operation o = op->opType;
    if (TypeIsFloat(op->type)) {
        double x = a.isFloat ? a.f : (double)a.i, y = b.isFloat ? b.f : (double)b.i, v;
        switch (o) {
            case OPERATION_MINUS: v = -x; break;
            case OPERATION_ADD: v = x + y; break;
            case OPERATION_SUB: v = x - y; break;
            case OPERATION_MUL: v = x * y; break;
            case OPERATION_DIV: v = x / y; break;
            default: return LIT_VALUE_NONE;
        }
        if (isinf(v) && isfinite(x) && (o == OPERATION_MINUS || isfinite(y)) && !(o == OPERATION_DIV && y == 0))
            return LIT_VALUE_NONE;
        out->isFloat = true;
        out->f = isnan(v) ? NAN : v;
        return LIT_VALUE_OK;
    }
    litWide x = a.i, y = b.i, v = 0;
    bool ovf = false;
    switch (o) {
        case OPERATION_MINUS: ovf = __builtin_sub_overflow((litWide)0, x, &v); break;
        case OPERATION_BTWSE_INV: v = ~x; break;
        case OPERATION_ADD: ovf = __builtin_add_overflow(x, y, &v); break;
        case OPERATION_SUB: ovf = __builtin_sub_overflow(x, y, &v); break;
        case OPERATION_MUL: ovf = __builtin_mul_overflow(x, y, &v); break;
        case OPERATION_DIV: case OPERATION_MOD:
            if (y == 0) return LIT_VALUE_ZERO_DIV;
            if (y == -1) { ovf = __builtin_sub_overflow((litWide)0, x, &v); if (o == OPERATION_MOD) { v = 0; ovf = false; } }
            else v = o == OPERATION_DIV ? x / y : x % y; //both truncate, as sdiv and srem do
            break;
        case OPERATION_BTSFT_L:
            if (y < 0) return LIT_VALUE_NONE; //E8a reported it
            if (x != 0 && y > 126) ovf = true;
            else if (x != 0) ovf = __builtin_mul_overflow(x, (litWide)1 << y, &v);
            break;
        case OPERATION_BTSFT_R:
            if (y < 0) return LIT_VALUE_NONE;
            v = y > 126 ? (x < 0 ? -1 : 0) : x >> y; //an exact value's shift: floor division by 2^y
            break;
        case OPERATION_BTWSE_AND: v = x & y; break;
        case OPERATION_BTWSE_OR: v = x | y; break;
        case OPERATION_BTWSE_XOR: v = x ^ y; break;
        default: return LIT_VALUE_NONE;
    }
    if (ovf) return LIT_VALUE_NONE;
    out->isFloat = false;
    out->i = v;
    return LIT_VALUE_OK;
}

//E4a: op, a literal-only expression, becomes - in place - the one literal holding its value, typed as that literal
//would be written (T6a: I32, else I64, else U64 for a value only it holds; F64 for a float). A value no literal can
//hold leaves op as it was.
static enum litValueFail literalExprFold(struct operand* op) {
    struct litValue v;
    enum litValueFail r = literalExprValue(op, &v);
    if (r != LIT_VALUE_OK) return r;
    struct operand* lit;
    if (v.isFloat) {
        lit = operandNew(op->tok, OPERATION_NONE, TypeVanilla(BASETYPE_FLOAT64));
        lit->floatLiteralVal = v.f;
    } else {
        struct type t = TypeVanilla(BASETYPE_INT32);
        if (!intLiteralFitsIntType(v.i, t)) t = TypeVanilla(BASETYPE_INT64);
        if (!intLiteralFitsIntType(v.i, t)) t = TypeVanilla(BASETYPE_U64);
        if (!intLiteralFitsIntType(v.i, t)) return LIT_VALUE_NONE;
        lit = operandNew(op->tok, OPERATION_NONE, t);
        lit->intLiteralVal = (long long)(unsigned long long)v.i;
    }
    lit->isLiteral = true;
    *op = *lit;
    return LIT_VALUE_OK;
}

//E4a: what a fold replaced - every node below saved, the tree op was before it became a literal - is gone from the
//program, so a check deferred to the end (a shift's amount, E8a) no longer applies to it
static void markFoldedAway(struct operand* saved) {
    for (int i = 0; i < saved->args.len; i++) {
        struct operand* a = *(struct operand**)ListGetIdx(&saved->args, i);
        a->litFoldedAway = true;
        markFoldedAway(a);
    }
}

//E4a/E8a: a literal-only shift past its literal's width that nothing folded is computed in that literal's own type at
//run time, which E8a leaves undefined - so it is the error a written shift amount always was
static void checkLiteralShifts(void) {
    for (int i = 0; i < literalShifts.len; i++) {
        struct operand* sh = *(struct operand**)ListGetIdx(&literalShifts, i);
        if (sh->litFoldedAway || (sh->opType != OPERATION_BTSFT_L && sh->opType != OPERATION_BTSFT_R)) continue;
        ErrMsgSemantic((*(struct operand**)ListGetIdx(&sh->args, 1))->tok, SHIFT_OUT_OF_RANGE_UNADAPTED);
    }
}

//true if numeric LITERAL `lit` may implicitly adapt to a `to`-typed target - the one exception T6 carves
//out of "no implicit conversion between distinct types." A literal has no fixed width/representation of
//its own yet (unlike an already-evaluated non-literal value, which does, and needs an actual runtime
//conversion instruction instead - see TypeName(x), the explicit conversion builtin, for that case), so
//the only question that matters is whether the value *written* is representable in `to`. That is
//deliberately not the same as "widens": the old rule allowed only byte/int32 -> int64, int -> float and
//float32 -> float64, which left `byte` unreachable by any integer literal at all - "x byte = 1",
//"buf[i] = 2" and "b == 1" were all type errors, and byte was writable only through an explicit byte(1)
//or a character literal (which is already typed byte, OperandCharLiteral). Representability is the real
//safety condition; direction never was. A float literal still never adapts to an integer type - that
//discards a fractional part rather than merely choosing a width, which is exactly what E26 is for. Nor does a
//value adapt to a float type it overflows: "f F32 = 1e39" would be an infinity nobody wrote.
bool numericLiteralFits(struct operand* lit, struct type to) {
    if (!TypeIsNumeric(lit->type) || !TypeIsNumeric(to)) return false;
    if (TypeIsFloat(lit->type)) return TypeIsFloat(to) && floatValueFitsType(lit->floatLiteralVal, to);
    if (TypeIsFloat(to)) return floatValueFitsType(literalAsFloat(lit), to);
    return intLiteralFitsIntType(intLiteralExact(lit), to);
}

//T6/E4a: op - a numeric literal, or a literal-only expression - adapts to numeric type `to` as one literal does: in
//place, when the value it has fits. Anything else, and a value that does not fit, leaves op as it was.
static bool operandAdaptLiteral(struct operand* op, struct type to) {
    if (!TypeIsNumeric(to) || !operandOnlyNumericLiterals(op)) return false;
    struct operand saved = *op;
    if (!op->isLiteral && literalExprFold(op) != LIT_VALUE_OK) return false;
    if (!numericLiteralFits(op, to)) { *op = saved; return false; }
    markFoldedAway(&saved);
    if (TypeIsFloat(to)) op->floatLiteralVal = literalAsFloat(op);
    op->type = to;
    return true;
}

//T6's ordering for the both-operands-are-literals case below: the narrower of two literal types adapts to
//the wider, so "'a' + 1" is int32 arithmetic rather than byte arithmetic that could wrap.
//every integer below every float; within each by width, a signed type above the unsigned one of its width
static int numericTypeRank(struct type t) {
    const struct primInfo* p = PrimInfo(t.bType);
    if (!p) return 0;
    return p->kind == 'f' ? 1000 + p->bits : p->bits * 2 + (p->kind == 'i');
}

//can op flow into a target-typed slot (assignment, initialization, argument passing)? a numeric
//literal may adapt per numericLiteralFits above; anything else must match exactly, unless
//explicitly converted via TypeName(x) - see OperandNumericConversion.
//func is the function currently being checked (NULL for a global initializer/test{} block) - only used for
//the scope-safety check below: when both target and op->type are ALREADY "&"-heap-indirect (an existing
//reference being passed/reassigned, not a fresh literal about to be promoted - see typeNeedsMallocPromotion
//in codegen.c, the codegen-side mirror of this same "already has a reference" condition), verify the
//source's scope is provably at least as long-lived as the target's own declared scope - see
//scopeCanFlowInto. A fresh, not-yet-referenced value (a literal) always starts life directly in the
//target's own scope at the point it's promoted, so there's nothing to check there at all. Returns a 3-way
//result rather than a bool specifically so callers can report SCOPE_MAY_NOT_OUTLIVE_TARGET instead of the
//much less helpful generic VALUE_TYPE_MISMATCH when that's what actually failed.
//E12: a compile-time-length array value may flow into a runtime-length target of the same element type -
//and, since T8a makes the length kind uniform across dimensions, that has to hold at EVERY dimension at
//once ("int32[2][2]" -> "int32[][]"), never only the outermost. Recurses so a nested literal reaches a
//fully runtime-length target; codegen promotes each row alongside (cgPromoteFixedToRuntimeLength).
bool arrayPromotesToRuntimeLength(struct type src, struct type dst) {
    if (src.bType != BASETYPE_ARRAY || dst.bType != BASETYPE_ARRAY) return false;
    if (src.arrMalloc || !dst.arrMalloc) return false;
    return TypeIsSame(*src.arrElem, *dst.arrElem) || arrayPromotesToRuntimeLength(*src.arrElem, *dst.arrElem);
}

//the same type but for reference-shapedness at THIS level - i.e. the exact difference promotion bridges,
//and the difference the element-shape diagnostic needs to name. Never recurses past the outermost level:
//below it, differing shapes are simply different types (TypeIsSame).
bool typeIsSameModuloRefShape(struct type a, struct type b) {
    a.structMAlloc = b.structMAlloc;
    return TypeIsSame(a, b);
}


//T31: the function the concrete type `concrete` supplies for trait method `m`, or NULL if it supplies none. This is
//M19's own lookup - the type's declaring module, by the method's name - so a trait is satisfied by exactly the methods
//the type already has, and the coherence rule that only a type's own module may give it methods carries over untouched.
struct var* InterfaceMethodImpl(struct type concrete, struct var* m) {
    if (concrete.bType == BASETYPE_INTERFACE) return NULL;
    struct var* f = VarGetMethod(concrete.owner, m->name, concrete);
    if (!f || f->type.bType != BASETYPE_FUNC || f->type.isExtern) return NULL;
    //T35a: a method of a GENERIC type ("fn (b mut Box<<T>>&) Next() <T> ? Exhausted") is generic over that
    //type's variables, which the concrete receiver fixes - so it names one function after all: the one
    //instantiated for this receiver. A method with type variables the receiver does not determine still
    //names a family and satisfies nothing.
    if (f->type.typeParams.len > 0) {
        struct list bindings = ListInit(sizeof(struct typeBinding));
        struct type p0 = (*(struct var*)ListGetIdx(&f->type.vars, 0)).type;
        if (!TypeUnify(p0, concrete, &bindings)) return NULL;
        for (int i = 0; i < f->type.typeParams.len; i++) {
            if (!bindingGet(&bindings, *(struct str*)ListGetIdx(&f->type.typeParams, i))) return NULL;
        }
        f = instantiateFunc(f, &bindings);
        if (!f) return NULL;
    }
    if (f->type.vars.len != m->type.vars.len +1) return NULL; //the receiver is the extra one
    struct var* recv = ListGetIdx(&f->type.vars, 0);
    //the receiver is this type, with E12's usual latitude about reference-shape: an interface value holds
    //T29b: a method over "T[]&" serves a compile-time-length "T[N]" too, exactly as E12 widens one at an ordinary call
    bool widens = recv->type.bType == BASETYPE_ARRAY && recv->type.arrMalloc && concrete.bType == BASETYPE_ARRAY
                  && !concrete.arrMalloc && concrete.arrElem && recv->type.arrElem
                  && TypeIsSame(*recv->type.arrElem, *concrete.arrElem);
    if (!widens && !typeIsSameModuloRefShape(recv->type, concrete)) return NULL;
    //D9's two axes: the trait declares "mut" when the method writes through to the value it is called on, so the
    //concrete receiver must be a mutable reference exactly then.
    bool recvWrites = recv->mut && recv->type.structMAlloc;
    if (recvWrites != m->mut) return NULL;
    for (int i = 0; i < m->type.vars.len; i++) {
        struct type want = (*(struct var*)ListGetIdx(&m->type.vars, i)).type;
        struct type got = (*(struct var*)ListGetIdx(&f->type.vars, i +1)).type;
        //the method is called directly, so an argument of the wanted type reaching a reference parameter is borrowed
        //as at any call (E12) - only the reference-shape may differ
        if (!TypeIsSame(want, got) && !typeIsSameModuloRefShape(want, got)) return NULL;
    }
    if (f->type.hasRetType != m->type.hasRetType) return NULL;
    if (m->type.hasRetType && !TypeIsSame(*f->type.retType, *m->type.retType)) return NULL;
    //the error lists must agree in order, as T31 states
    if (f->type.errors.len != m->type.errors.len) return NULL;
    for (int i = 0; i < m->type.errors.len; i++) {
        if (*(struct type**)ListGetIdx(&f->type.errors, i) != *(struct type**)ListGetIdx(&m->type.errors, i)) return NULL;
    }
    //M6: a private method name belongs to the module that wrote it, so only a type in THAT module can supply it - which
    //makes a trait with a private method a sealed one: no outside module's type can satisfy it
    if (!isPublic(m->name) && m->owner != f->owner) return NULL;
    return f;
}

//G9c: binds the variables in a generic interface application from the methods a concrete type supplies for it.
//Only the binding is done here; whether the concrete type then really satisfies the interface the
//substitution gives is the ordinary conversion's question, asked at the fit check.
static bool unifyThroughMethods(struct type iface, struct type concrete, struct list* bindings) {
    for (int i = 0; i < iface.vars.len; i++) {
        struct var* m = ListGetIdx(&iface.vars, i);
        if (m->type.bType != BASETYPE_FUNC) continue;
        struct var* f = VarGetMethod(concrete.owner, m->name, concrete);
        if (!f || f->type.bType != BASETYPE_FUNC || f->type.isExtern) return false;
        if (f->type.typeParams.len > 0) { //a generic type's method: the receiver fixes which instantiation
            struct list own = ListInit(sizeof(struct typeBinding));
            if (!TypeUnify((*(struct var*)ListGetIdx(&f->type.vars, 0)).type, concrete, &own)) return false;
            for (int j = 0; j < f->type.typeParams.len; j++) {
                if (!bindingGet(&own, *(struct str*)ListGetIdx(&f->type.typeParams, j))) return false;
            }
            f = instantiateFunc(f, &own);
            if (!f) return false;
        }
        if (f->type.vars.len != m->type.vars.len +1) return false;
        for (int j = 0; j < m->type.vars.len; j++) {
            if (!TypeUnify((*(struct var*)ListGetIdx(&m->type.vars, j)).type,
                           (*(struct var*)ListGetIdx(&f->type.vars, j +1)).type, bindings)) return false;
        }
        if (m->type.hasRetType) {
            if (!f->type.hasRetType || !TypeUnify(*m->type.retType, *f->type.retType, bindings)) return false;
        }
    }
    return true;
}

//T31: structural, implicit satisfaction - every method the interface declares, supplied by the concrete
//type's own module. On failure, *failed (when non-NULL) names the first method that is missing, which is
//what the diagnostic needs to say something more useful than "does not satisfy".


static bool typeAutoHashable(struct type t, int depth);
static bool autoHashMeets(struct type concrete, struct var* m) {
    return StrCmp(m->name, StrFromCStr("Hash")) && m->type.vars.len == 0 && m->type.errors.len == 0
           && m->type.hasRetType && m->type.retType->bType == BASETYPE_INT64 && typeAutoHashable(concrete, 0);
}

//T31/G19: does concrete satisfy trait iface - every method present, called directly. On failure, *failed (when
//non-NULL) names the first method missing, which is what the diagnostic needs to say.
bool TypeSatisfiesInterface(struct type concrete, struct type iface, struct var** failed) {
    if (iface.bType != BASETYPE_INTERFACE || concrete.bType == BASETYPE_INTERFACE) return false;
    for (int i = 0; i < iface.vars.len; i++) {
        struct var* m = ListGetIdx(&iface.vars, i);
        //E10b: a Hash the compiler supplies meets a trait's Hash
        if (!InterfaceMethodImpl(concrete, m) && !autoHashMeets(concrete, m)) {
            if (failed) *failed = m;
            return false;
        }
    }
    return true;
}


bool TypeSatisfiesConstraint(struct type concrete, struct type iface, struct var** failed) {
    return TypeSatisfiesInterface(concrete, iface, failed);
}

bool OperandIsLvalue(struct operand* op);

//the scope an lvalue's STORAGE belongs to, for the borrow check below. Three cases, and nothing else can
//reach here: a global outlives every scope (reported through outIsGlobal, since no scope variable names
//"forever"); a field or element reached through a reference-shaped base lives in whatever scope that base
//is tagged to - walking to the nearest such base is exact, because a bare "&" nested inside a larger value
//always inherits its container's scope (O5) - and everything else bottoms out at a local or a parameter,
//which lives in this function's own frame or arena, i.e. "own" (NULL).
struct var* lvalueStorageScope(struct operand* op, bool* outIsGlobal, int* outDepth) {
    *outIsGlobal = false;
    //O2a: a local's frame slot belongs to the block it was declared in, which its own type records
    //(buildVarDeclStmnt stamps it). A borrow of that local can be no longer-lived than that block.
    *outDepth = op->type.scopeDepth;
    //a reference-shaped operand already says where its storage is: that is what its own tag means. Reached
    //when slicing one ("buf byte[]&s" -> the slice lives in s, not in this function's own scope), and never
    //by the borrow check, which only ever asks about a value.
    if (op->type.structMAlloc) {
        //O20: a reference field or element with no scope of its own holds a referent living where its container
        //does - walked out to the first container whose scope is stated, as the fit check walks it. Taking the
        //slot's own empty tag read it as this function's scope, so "return g.cells[lo:hi]" was rejected
        if (!op->type.scopeParam && (op->opType == OPERATION_MEMBER || op->opType == OPERATION_INDEX)) {
            struct operand* b = op;
            while (b->opType == OPERATION_MEMBER || b->opType == OPERATION_INDEX) {
                b = *(struct operand**)ListGetIdx(&b->args, 0);
                if (b->type.structMAlloc && (b->type.scopeParam
                        || (b->opType != OPERATION_MEMBER && b->opType != OPERATION_INDEX))) break;
            }
            *outDepth = b->type.scopeDepth;
            if (b->type.structMAlloc) return resolveEffectiveScopeVar(b, b->type.scopeParam);
            if (b->opType == OPERATION_READ_VAR && b->readVar && b->readVar->owner) *outIsGlobal = true;
            return NULL;
        }
        return resolveEffectiveScopeVar(op, op->type.scopeParam);
    }
    while (op->opType == OPERATION_MEMBER || op->opType == OPERATION_INDEX) {
        struct operand* base = *(struct operand**)ListGetIdx(&op->args, 0);
        *outDepth = base->type.scopeDepth;
        if (base->type.structMAlloc) return resolveEffectiveScopeVar(base, base->type.scopeParam);
        op = base;
    }
    if (op->opType == OPERATION_READ_VAR && op->readVar && op->readVar->owner) *outIsGlobal = true;
    return NULL;
}

enum typeFit borrowLifetimeFits(struct var* func, struct operand* op, struct type target);

//E12: the two conversions between a value and a reference to it, at the OUTERMOST level only. Value into
//reference is promotion (O6) - allocate in the target's scope and point at it; reference into value is a
//copy out - load the aggregate. Both are assignability rules, not identity (T27): the types genuinely
//differ, and each conversion is a real thing codegen does at the point it happens. Outermost-level only
//because that is the only place codegen has either step (cgStoreInto/cgBoundaryValue) - there is no
//element-by-element or field-by-field conversion anywhere, which is exactly why folding this into
//TypeIsSame let "Cell&[2]" pass for "Cell[2]" with nothing to make the layouts agree. The copy-out
//direction is also how a callee takes its own copy of a "T[N]&" parameter, which D9a explicitly leaves as
//the way to do it: declare a local and assign, so the copy is written down where it happens.
bool typeConvertsBetweenValueAndReference(struct type src, struct type target) {
    if (src.structMAlloc == target.structMAlloc) return false;
    return typeIsSameModuloRefShape(src, target);
}

//E12c: taking a reference to an existing value borrows its storage rather than copying it, so the
//reference names the very instance the value is - which is what "&" means everywhere else. That makes it a
//lifetime claim, and the claim has to hold: storage in this function's own scope cannot satisfy a reference
//that outlives the function. Rejecting that is the point - "we didn't copy" is not the bug, handing
//scope-local storage to a longer-lived reference is. A temporary has no storage to borrow and is allocated
//in the target's scope instead, which is construction rather than copying, so it needs no check at all.
//Shared by both clauses that admit a value into a reference-shaped target, since both borrow.
enum typeFit borrowLifetimeFits(struct var* func, struct operand* op, struct type target) {
    if (!target.structMAlloc || op->type.structMAlloc || !OperandIsLvalue(op)) return TYPE_FIT_OK;
    bool isGlobal = false;
    int storageDepth = 0;
    struct var* storage = lvalueStorageScope(op, &isGlobal, &storageDepth);
    if (isGlobal || scopeCanFlowInto(func, storage, storageDepth, target.scopeParam, target.scopeDepth)) return TYPE_FIT_OK;
    //O10d: "own outlives <a scope variable>" is unsatisfiable by any binding, so it is a bug here rather
    //than an obligation to hand a caller - worth its own diagnostic
    if (!storage && target.scopeParam) return TYPE_FIT_SCOPE_OWN;
    return TYPE_FIT_SCOPE_MISMATCH;
}


static bool bindingIsLanding(struct operand* op, struct var* sv);
bool callIsLanding(struct operand* op);
void landCall(struct operand* op, struct var* dst, int depth);
static void landCallIn(struct operand* op, struct var* dst, int depth, bool program);
bool storageInProgram(struct operand* op);
bool valueRefsAdmitStores(struct type t);
bool OperandGivesWritable(struct operand* op);
static struct var* methodNamedOn(struct type t, const char* name);
//E31: the Call method a value of type t has (public, or private when the caller could use it - judged by the caller),
//when its parameters, result and errors are exactly fnType's
struct var* SemanticCallOf(struct type t) {
    struct var* m = methodNamedOn(t, "Call");
    return m ? m : methodNamedOn(t, "call");
}
bool SemanticCallMatches(struct type t, struct type fnType) {
    struct var* m = SemanticCallOf(t);
    if (!m || m->type.bType != BASETYPE_FUNC || m->type.typeParams.len) return false;
    if (m->type.vars.len != fnType.vars.len + 1) return false;
    //T22/T25b: compared as two function types are - each parameter's "mut" and its permission included, so a Call
    //writing through a parameter never stands for a function type promising to only read it
    for (int i = 0; i < fnType.vars.len; i++) {
        struct var* pm = ListGetIdx(&m->type.vars, i + 1);
        struct var* pf = ListGetIdx(&fnType.vars, i);
        if (pm->mut != pf->mut || !TypeIsSameStrict(pm->type, pf->type)) return false;
    }
    if (m->type.hasRetType != fnType.hasRetType) return false;
    if (m->type.hasRetType && !TypeIsSameStrict(*m->type.retType, *fnType.retType)) return false;
    if (m->type.errors.len != fnType.errors.len) return false;
    for (int i = 0; i < fnType.errors.len; i++) {
        if (!TypeIsSame(**(struct type**)ListGetIdx(&m->type.errors, i), **(struct type**)ListGetIdx(&fnType.errors, i))) return false;
    }
    return true;
}

static int numericFamilyRank(struct type t, int* family);
bool NumericFlows(struct type src, struct type dst, bool sameWidthToBase);
static void operandWidenInPlace(struct operand* op, struct type t);
//D13c: a zero value a constructor gives - the call, where it is needed, and what needs it (an array's fill, or not)
struct zeroRec { struct operand* call; struct token tok; bool forArray; };
static struct list zeroRecs;

//D13c: a value type with a constructor - its zero value is that constructor's, not zero bits
static bool typeHasZeroCtor(struct type t) {
    if (t.structMAlloc || t.isTuple || !t.ctorFunc || TypeIsGeneric(t)) return false;
    return t.bType == BASETYPE_STRUCT || (t.hasCtor && TypeIsNumeric(t));
}

struct operand* OperandFuncCall(struct checkCtx* ctx, struct var* func, struct list args, struct token tok,
                                struct list scopeArgNodes);
struct operand* OperandNullLiteral(struct token tok);
//D13c: the call giving t's zero value - its constructor on each parameter's default where declared, else that
//parameter's own zero (a nested constructor's, recursively). A fallible constructor is called as tried with a clause
//that cannot run: the call is evaluated while compiling, and one that fails makes the declaration an error.
static struct operand* zeroCtorCall(struct checkCtx* ctx, struct type t, struct token tok, int depth) {
    struct var* ctor = t.ctorFunc;
    struct list args = ListInit(sizeof(struct operand*));
    for (int i = 0; i < ctor->type.vars.len; i++) {
        struct var* p = ListGetIdx(&ctor->type.vars, i);
        struct operand* a;
        if (p->defaultVal) a = p->defaultVal;
        else if (typeHasZeroCtor(p->type) && depth < 8) a = zeroCtorCall(ctx, p->type, tok, depth + 1);
        else if (TypeIsNullable(p->type)) a = OperandNullLiteral(tok);
        else {
            a = operandNew(tok, OPERATION_ZERO, p->type);
            a->type.scopeDepth = ctx ? ctx->blockDepth : 0;
        }
        ListAdd(&args, &a);
    }
    ErrMsgMuteStart(); //what the zero arguments are is the compiler's choice, not something the program wrote
    struct operand* call = OperandFuncCall(ctx, ctor, args, tok, ListInit(sizeof(struct syntax*)));
    ErrMsgMuteEnd();
    if (ctor->type.errors.len > 0) {
        call->isTried = true;
        call->catchClauses = ListInit(sizeof(struct catchClause));
        struct catchClause cc = (struct catchClause){0};
        cc.tok = tok;
        cc.catchAll = true;
        cc.matches = ListInit(sizeof(struct catchMatch));
        cc.hasBlock = true;
        cc.block = ListInit(sizeof(struct statement));
        struct statement u = (struct statement){0};
        u.sType = STATEMENT_UNREACHABLE;
        ListAdd(&cc.block, &u);
        ListAdd(&call->catchClauses, &cc);
    }
    return call;
}

//D13c: where t's zero value is needed - the call giving it, recorded to be decided once the program has checked;
//NULL for a type whose zero value is zero bits by definition
static struct operand* zeroValueFor(struct checkCtx* ctx, struct type t, struct token tok, bool forArray) {
    if (!typeHasZeroCtor(t)) return NULL;
    struct operand* call = zeroCtorCall(ctx, t, tok, 0);
    struct zeroRec r = { call, tok, forArray };
    ListAdd(&zeroRecs, &r);
    return call;
}

bool RefExactScope(struct checkCtx* ctx, struct operand* op, bool asRef, struct var** outVar, int* outDepth,
                   bool* unnamed);

//O18c: where the references held by a value - a value local, or a value field of one - were put, when its ":=" call
//landed by its obligations in a scope variable (struct var.refsHome)
static bool valueRefsHome(struct operand* op, struct var** out) {
    while (op->opType == OPERATION_MEMBER && !op->type.structMAlloc) op = *(struct operand**)ListGetIdx(&op->args, 0);
    if (op->opType != OPERATION_READ_VAR || !op->readVar || op->type.structMAlloc) return false;
    struct var* v = canonicalVar(op->readVar);
    if (!v->refsHomeSet) return false;
    *out = v->refsHome;
    return true;
}
//T29d: a literal whose constructor runs while compiling, and the call that runs it
struct litCtorRec { struct operand* lit; struct operand* call; };
static struct list litCtorRecs;
enum typeFit OperandFitsType(struct var* func, struct operand* op, struct type target) {
    if (target.unknown || op->type.unknown) return TYPE_FIT_OK; //already reported as an unknown type
    if (target.bType == BASETYPE_INTERFACE) return TYPE_FIT_OK; //T30: reported where the trait was written as a type
    //E28: whichever value is chosen lands in the target, so each must fit it on its own - scopes included
    if (op->opType == OPERATION_COND && op->args.len == 3) {
        enum typeFit r = OperandFitsType(func, *(struct operand**)ListGetIdx(&op->args, 1), target);
        return r != TYPE_FIT_OK ? r : OperandFitsType(func, *(struct operand**)ListGetIdx(&op->args, 2), target);
    }
    if (op->opType == OPERATION_MATCH) { //S12b: the same, for each of a match's values
        struct list vs = SemanticMatchValues(op);
        for (int i = 0; i < vs.len; i++) {
            enum typeFit r = OperandFitsType(func, *(struct operand**)ListGetIdx(&vs, i), target);
            if (r != TYPE_FIT_OK) return r;
        }
        if (TypeIsNumeric(target) && TypeIsNumeric(op->type)) op->type = target; //its values adapted, or widened (T6b)
        return TYPE_FIT_OK;
    }
    FinalizeLambda(op, &target); //D16a: a lambda is checked against what it is written for
    //E4a: a literal-only expression is computed here, exactly, and then fits as the one literal holding its value
    //would - "b U8 = 1 + 2", "f F32 = 0.5 * 2.0"; it is an error only where that value does not fit (or has none)
    if (!op->isLiteral && TypeIsNumeric(target) && operandOnlyNumericLiterals(op)) {
        struct operand saved = *op;
        enum litValueFail why = literalExprFold(op);
        if (why == LIT_VALUE_ZERO_DIV) return TYPE_FIT_OK; //reported where the division was built (E6a)
        enum typeFit r = why == LIT_VALUE_OK ? OperandFitsType(func, op, target) : TYPE_FIT_LITERAL_EXPR;
        //judged by its value either way - one that does not fit, or has none, is that error, not also a shift's (E8a)
        markFoldedAway(&saved);
        if (r == TYPE_FIT_OK) return r;
        *op = saved;
        op->litFoldedAway = true;
        return r == TYPE_FIT_LITERAL_RANGE ? TYPE_FIT_LITERAL_EXPR : r;
    }
    //T25c: a read-only reference never becomes writable by being put somewhere
    if (TypeIsPermRef(target) && target.refMut && !OperandGivesWritable(op)) return TYPE_FIT_READ_ONLY;
    //...and an array LITERAL's elements adapt to the target's permission, as a numeric literal adapts to its type,
    //when every element may be written - they are the literal's own
    if (op->isLiteral && op->type.bType == BASETYPE_ARRAY && op->type.arrElem && target.bType == BASETYPE_ARRAY
            && target.arrElem && TypeIsPermRef(*target.arrElem) && TypeIsPermRef(*op->type.arrElem)
            && target.arrElem->refMut && !op->type.arrElem->refMut) {
        bool all = true;
        for (int i = 0; i < op->args.len && all; i++) all = OperandGivesWritable(*(struct operand**)ListGetIdx(&op->args, i));
        if (!all) return TYPE_FIT_READ_ONLY;
        struct type* e = MallocOrCrash(sizeof(struct type));
        *e = *op->type.arrElem;
        e->refMut = true;
        op->type.arrElem = e;
    }
    //T29d: a type with a constructor is entered through it - a literal does not slide in past its checks
    //T29d: a literal entering a type with a constructor runs it - while compiling, once the program has checked; the
    //literal then stands for the value the constructor gave, and one the constructor rejects is an error at it
    if (target.owner && target.hasCtor && target.bType != BASETYPE_STRUCT && op->isLiteral && !op->isNullLiteral
            && !op->type.owner && TypeIsNumeric(op->type) && TypeIsNumeric(target) && target.ctorFunc) {
        struct type base = TypeVanilla(target.bType);
        if (!TypeIsSame(op->type, base) && !numericLiteralFits(op, base)) return TYPE_FIT_LITERAL_RANGE;
        if (TypeIsFloat(base)) op->floatLiteralVal = literalAsFloat(op);
        if (!op->litCtorPending) {
            struct operand* arg = MallocOrCrash(sizeof(struct operand));
            *arg = *op;
            arg->type = base;
            struct type vt = target;
            vt.structMAlloc = false;
            vt.scopeParam = NULL;
            struct operand* call = operandNew(op->tok, OPERATION_FUNCCALL, vt);
            call->readVar = target.ctorFunc;
            ListAdd(&call->args, &arg);
            struct litCtorRec rec = { op, call };
            ListAdd(&litCtorRecs, &rec);
            op->litCtorPending = true;
        }
        op->type = target;
        return TYPE_FIT_OK;
    }
    //T29/T6: a LITERAL adapts to a declared type over an array, exactly as a numeric literal adapts to a
    //declared type over a number. A literal has no type worth defending - it is written right here, and
    //what it is written against is the only thing that says what it means - where a VALUE that already has
    //a type keeps it and needs "Name(x)" to change it. That is the same line T6 already draws, one level
    //out, and it is what makes "s mut String& = "hello"" read like ordinary code while still keeping a
    //bare "byte[]" and a "String" distinct everywhere it matters.
    if (target.owner && target.bType == BASETYPE_ARRAY && !op->type.owner
            && (op->isLiteral || OperandIsWrittenText(op))) {
        struct type underlying = target;
        underlying.owner = NULL;
        underlying.name = (struct str){0};
        enum typeFit asUnderlying = OperandFitsType(func, op, underlying);
        if (asUnderlying == TYPE_FIT_OK) {
            op->type.owner = target.owner; //adopt the name, exactly as a numeric literal adopts a width
            op->type.name = target.name;
            return TYPE_FIT_OK;
        }
    }
    //T29: a named type flows freely into its own UNDERLYING type, and never the other way. Going that way
    //discards a claim ("this is a Text") for one that says less ("these are bytes"), which is always safe;
    //the reverse would fabricate a claim the value never made, and is what "Name(x)" exists to write down.
    //The same asymmetry "int32(m)" already had for a named numeric - a Meters is usable as a number - just
    //with no conversion to spell for an array, since there is no "byte[](t)" syntax and no reason to want
    //one. It is what lets a "Text" be handed to any ordinary "byte[]&" function.
    //for an array the underlying type is its element type: E12's own conversions (a value borrowed as a
    //reference, a known length widened) then apply to the unnamed array exactly as they would anywhere
    //T29h: an array of a declared number with no constructor flows into an array of that number - the same bits, and
    //nothing to bypass - so text (Array<Char>, a String) reaches byte I/O (Array<U8>) as it is, a view or a copy
    if (target.bType == BASETYPE_ARRAY && !target.owner && op->type.bType == BASETYPE_ARRAY && target.arrElem
            && op->type.arrElem && op->type.arrElem->owner && !op->type.arrElem->hasCtor && !target.arrElem->owner
            && TypeIsNumeric(*op->type.arrElem) && op->type.arrElem->bType == target.arrElem->bType) {
        struct type saved = op->type;
        struct type v = op->type;
        v.owner = NULL;
        v.name = (struct str){0};
        v.extendsBase = false;
        v.arrElem = MallocOrCrash(sizeof(struct type));
        *v.arrElem = *target.arrElem;
        v.arrElem->refMut = op->type.arrElem->refMut;
        op->type = v;
        enum typeFit r = OperandFitsType(func, op, target);
        if (r != TYPE_FIT_OK) op->type = saved;
        return r;
    }
    bool sameUnderlyingArray = target.bType == BASETYPE_ARRAY && op->type.bType == BASETYPE_ARRAY
                               && target.arrElem && op->type.arrElem && TypeIsSame(*target.arrElem, *op->type.arrElem);
    if (!target.owner && op->type.owner && (TypeIsSameRepr(target, op->type) || sameUnderlyingArray)) {
        struct type asUnnamed = op->type;
        asUnnamed.owner = NULL;
        asUnnamed.name = (struct str){0};
        struct type saved = op->type;
        op->type = asUnnamed;
        enum typeFit r = OperandFitsType(func, op, target);
        if (r != TYPE_FIT_OK) op->type = saved;
        return r;
    }
    //T6b: a numeric value flows into a wider type of its own family - it becomes that widening, losing nothing
    if (!op->isLiteral && NumericFlows(op->type, target, false)) {
        operandWidenInPlace(op, target);
        return TYPE_FIT_OK;
    }
    {
        int fs = 0, fd = 0;
        if (!op->isLiteral && !TypeIsSame(target, op->type) && numericFamilyRank(op->type, &fs) >= 0
                && numericFamilyRank(target, &fd) >= 0 && !(op->type.owner && !target.owner && op->type.bType == target.bType))
            return TYPE_FIT_NUMBER;
    }
    if (TypeIsSame(target, op->type)) {
        //a struct or compile-time-length array is reference-shaped only when explicitly "&"-marked (structMAlloc) - a
        //plain/embedded value has no scope of its own to check at all. A runtime-length array is different: it's
        //always pointer-backed the moment it's arrMalloc, with or without an explicit marker (there's no
        //"embedded" shape for a runtime-known length to begin with - see the report), so its scope tag is
        //always meaningful to check, regardless of structMAlloc.
        //now that T27 makes reference-shapedness part of identity, reaching here means the two agree on it,
        //so testing the target alone is enough
        //E6b/E11a: a rendering and a concatenation are TEMPORARIES - they have no storage of their own to
        //borrow, so codegen builds them directly in the target's scope exactly as E12c builds a struct
        //literal there. Checking them as though they already lived somewhere reported "own cannot satisfy
        //a longer-lived scope" for every string-building function, which is the one shape they exist for.
        bool isFreshText = (op->opType == OPERATION_STR_OF || op->opType == OPERATION_CONCAT);
        //O18a: a call whose result's scope still follows the result is built wherever it lands
        bool landing = op->opType == OPERATION_FUNCCALL && op->type.scopeParam && bindingIsLanding(op, op->type.scopeParam);
        //D16: a function named as a value, and a lambda capturing no reference, are built where they land too
        bool isFnTemp = op->opType == OPERATION_READ_VAR && op->readVar && op->readVar->isFuncDecl && !op->lambdaHomeSet;
        bool needsScopeCheck = target.structMAlloc && !isFreshText && !landing && !isFnTemp;
        if (needsScopeCheck) {
            struct var* effectiveSrc = resolveEffectiveScopeVar(op, op->type.scopeParam);
            int srcDepth = op->type.scopeDepth;
            if (op->lambdaHomeSet) { effectiveSrc = op->lambdaHome; srcDepth = op->lambdaHomeDepth; } //D16c
            if (op->opType == OPERATION_FUNCCALL && op->resultRefined) { //O13c
                if (op->refinedUnnamed) return TYPE_FIT_OK; //the program's scope outlives every target
                effectiveSrc = op->refinedTo;
                srcDepth = op->refinedDepth;
            }
            //T17c/O5: a reference read out of a payload with "as" lives where the enum's payload does - the case's own
            //scope variable means nothing here. Where that is not known (a value parameter's payload) it reads as an
            //unnamed scope does, as a match binding of it would
            struct operand* asOp = op->opType == OPERATION_AS ? op : NULL;
            if (op->opType == OPERATION_MEMBER && (*(struct operand**)ListGetIdx(&op->args, 0))->opType == OPERATION_AS)
                asOp = *(struct operand**)ListGetIdx(&op->args, 0);
            if (asOp && asOp->castEnum) {
                struct var* pv;
                int pd;
                bool pu;
                if (!RefExactScope(NULL, op, true, &pv, &pd, &pu) || pu || pv == SCOPE_AMBIGUOUS) { pv = NULL; pd = 0; }
                effectiveSrc = pv;
                srcDepth = pd;
            }
            //O20: a reference slot with no scope name of its own - a field or element - holds a referent that
            //lives where its container does, so that is the scope read out of it. Taking the slot's own bare
            //tag at face value read it as this function's scope and rejected "cur = cur.left" outright.
            if (!asOp && !op->type.scopeParam && (op->opType == OPERATION_MEMBER || op->opType == OPERATION_INDEX)) {
                //...walking on through containers that are themselves such slots ("m.buckets[b]"), to the
                //first one whose scope is stated - a tag, or a variable
                struct operand* b = op;
                while (b->opType == OPERATION_MEMBER || b->opType == OPERATION_INDEX) {
                    b = *(struct operand**)ListGetIdx(&b->args, 0);
                    if (b->type.structMAlloc && (b->type.scopeParam
                            || (b->opType != OPERATION_MEMBER && b->opType != OPERATION_INDEX))) break;
                }
                if (b->opType == OPERATION_READ_VAR && b->readVar && b->readVar->owner && !b->type.structMAlloc) {
                    return TYPE_FIT_OK; //a field of a global value: its storage lives as long as the program
                }
                effectiveSrc = resolveEffectiveScopeVar(b, b->type.scopeParam);
                srcDepth = b->type.scopeDepth;
                struct var* home;
                if (!b->type.structMAlloc && valueRefsHome(b, &home)) { effectiveSrc = home; srcDepth = 0; } //O18c
            }
            if (!scopeCanFlowInto(func, effectiveSrc, srcDepth, target.scopeParam, target.scopeDepth)) {
                //O10d: "own outlives <a scope variable>" is unsatisfiable by any binding, so it is a bug
                //here rather than an obligation to hand a caller - worth its own diagnostic
                if (!effectiveSrc && target.scopeParam) return TYPE_FIT_SCOPE_OWN;
                return TYPE_FIT_SCOPE_MISMATCH;
            }
        }
        return TYPE_FIT_OK;
    }
    //a value and a reference to it are different types that convert into each other at this level - see
    //typeConvertsBetweenValueAndReference.
    if (typeConvertsBetweenValueAndReference(op->type, target)) return borrowLifetimeFits(func, op, target);
    //T2a: null fits any nullable type and carries no scope of its own - there is nothing for it to
    //outlive, so it flows into a target of any scope without a check.
    if (op->isNullLiteral) {
        if (!TypeIsNullable(target)) return TYPE_FIT_MISMATCH;
        op->type = target;
        return TYPE_FIT_OK;
    }
    //E31: a value whose type declares a Call matching a function type fits it - a function value calling that very
    //instance's Call, so the instance must outlive the target as a reference to it would
    if (target.bType == BASETYPE_FUNC && op->type.bType != BASETYPE_FUNC && SemanticCallMatches(op->type, target)) {
        //T25c: a Call writing its receiver writes the instance the function value holds - only one this place may write
        struct var* recv = ListGetIdx(&SemanticCallOf(op->type)->type.vars, 0);
        if (recv->mut && !OperandGivesWritable(op)) return TYPE_FIT_READ_ONLY;
        if (!op->type.structMAlloc && !OperandIsLvalue(op)) return TYPE_FIT_OK; //a temporary: built where it lands
        struct type asRef = op->type;
        asRef.structMAlloc = true;
        asRef.scopeParam = target.scopeParam;
        asRef.scopeDepth = target.scopeDepth;
        asRef.refMut = op->type.refMut;
        return op->type.structMAlloc ? TYPE_FIT_OK : borrowLifetimeFits(func, op, asRef);
    }
    if (op->isLiteral && numericLiteralFits(op, target)) {
        //every int-to-int adaptation and float32 -> float64 is pure reinterpretation: intLiteralVal is already
        //a 64-bit long long and floatLiteralVal is already a double, regardless of the literal's own
        //"logical" type, so only crossing from the int family into the float family needs an actual
        //value conversion. Was a real, pre-existing bug for the one case that already existed here
        //(int -> float): this used to only ever retag op->type, never touch floatLiteralVal, leaving it
        //at its zero-initialized default - cgFloatConst (codegen.c) reads floatLiteralVal once op->type
        //says float, so e.g. "x mut float32 = 5" silently produced 0.0. Invisible before now because
        //nothing in the existing test suite passed a bare int literal where a float was expected;
        //surfaced immediately by a mixed int/float array literal built while testing the array-literal
        //rework.
        if (TypeIsFloat(target)) op->floatLiteralVal = literalAsFloat(op);
        op->type = target;
        return TYPE_FIT_OK;
    }
    //C2e: an array whose length is known only at run time fits fixed storage of the same element type - its
    //length is checked once per copy, in codegen
    if (target.bType == BASETYPE_ARRAY && !target.arrMalloc && !target.structMAlloc && target.arrLen
            && op->type.bType == BASETYPE_ARRAY && op->type.arrMalloc && op->type.arrElem
            && TypeIsSame(*target.arrElem, *op->type.arrElem)) {
        return TYPE_FIT_OK;
    }
    //a compile-time-length array value - fresh literal or an already-existing one, either way - may flow into a
    //runtime-length ("T[]") target regardless of its own size: malloc-and-copy at the point it's promoted (see
    //typeNeedsRuntimeLengthPromotion/cgPromoteFixedToRuntimeLength in codegen.c). The array-sizing counterpart to
    //the "&"-reference malloc-promotion above - an orthogonal axis, not the same mechanism (see the
    //report). Unlike the int->float widening above, this is NOT gated on op->isLiteral: that gate exists
    //there because widening an int LITERAL is pure reinterpretation (no fixed representation yet to
    //convert from), whereas a non-literal int already has a concrete representation and would need an
    //actual runtime conversion instruction - a genuinely different, unimplemented mechanism. No such split
    //exists here: cgPromoteFixedToRuntimeLength only ever needs a source ADDRESS to copy from
    //(cgValue's by-ref convention already hands one back for any embedded array, literal or not), so a
    //plain variable already holding a compile-time-length array copies exactly the same way a fresh literal does -
    //codegen needed no changes at all, only this check relaxing to admit it.
    //a compile-time-length array reaching a runtime-length target. Into a runtime-length VALUE that is a
    //real conversion (the representations differ) and copies; into a runtime-length REFERENCE it is E12c's
    //borrow, keeping the pointer the array already has and materialising the length beside it, so it needs
    //the same lifetime check every other borrow does.
    if (arrayPromotesToRuntimeLength(op->type, target)) return borrowLifetimeFits(func, op, target);
    //both compile-time-length arrays of the same element type, but the sizes differ - report the more specific
    //ARRAY_SIZE_MISMATCH instead of the generic mismatch message. Not gated on op->isLiteral: this is just
    //as meaningful for an existing compile-time-length-array value as for a fresh literal. Previously reported as
    //WRONG_ARG_COUNT ("wrong number of arguments"), which was actively misleading - the argument count is
    //correct in the case that reaches this, it's the array's own length that differs - and made no sense
    //at all at the non-argument call site below (a var-decl/assignment).
    if (op->type.bType == BASETYPE_ARRAY && target.bType == BASETYPE_ARRAY
            && !op->type.arrMalloc && !target.arrMalloc && TypeIsSame(*op->type.arrElem, *target.arrElem)) {
        return TYPE_FIT_ARRAY_SIZE_MISMATCH;
    }
    //same element type and same length, but the elements disagree on reference-shapedness - the one thing
    //TypeIsSame is deliberately lenient about at the level it is asked, and must not be about elements (see
    //typeIsSameIncludingRefShape). Worth its own message: the generic mismatch names two types that print
    //almost identically, and the size-mismatch one above would be actively wrong here.
    if (op->type.bType == BASETYPE_ARRAY && target.bType == BASETYPE_ARRAY
            && op->type.arrMalloc == target.arrMalloc
            && op->type.arrElem->structMAlloc != target.arrElem->structMAlloc
            && typeIsSameModuloRefShape(*op->type.arrElem, *target.arrElem)) {
        return TYPE_FIT_ELEM_REF_SHAPE;
    }
    //a numeric literal that reached here against a numeric target failed T6 for exactly one reason: the
    //value written isn't representable in that type. Worth its own message - the generic mismatch names the
    //types, which is the least informative half of "x byte = 256".
    if (op->isLiteral && TypeIsNumeric(op->type) && TypeIsNumeric(target)) return TYPE_FIT_LITERAL_RANGE;
    return TYPE_FIT_MISMATCH;
}

//O4/O23: "own" arrived here two very different ways, and the remedy differs. A value this function
//actually allocated is own for good - no caller can change that, which is what O10d says. But a value
//read out of a PARAMETER is own only because the parameter's marker was written bare: the caller's
//storage provably outlives the call, and naming that parameter's scope ("p Thing&s") makes the same code
//legal. Telling the two apart is the difference between "you have a bug" and "add one token".
struct var* lvalueRootVar(struct operand* op);
bool varIsParamOf(struct var* v, struct var* func);

static bool ownCameFromBareRefParam(struct operand* op, struct var* func) {
    if (!func) return false;
    struct var* root = lvalueRootVar(op);
    if (!root || !varIsParamOf(root, func)) return false;
    return root->type.structMAlloc && !root->type.scopeParam;
}

static char* ownOutliveMsg(struct operand* op, struct var* func) {
    return ownCameFromBareRefParam(op, func) ? OWN_FROM_BARE_REF_PARAM : OWN_CANNOT_OUTLIVE;
}

void reportTypeFit(enum typeFit fit, struct token tok) {
    if (fit == TYPE_FIT_SCOPE_MISMATCH) ErrMsgSemantic(tok, SCOPE_MAY_NOT_OUTLIVE_TARGET);
    else if (fit == TYPE_FIT_SCOPE_OWN) ErrMsgSemantic(tok, OWN_CANNOT_OUTLIVE);
    else if (fit == TYPE_FIT_ARRAY_SIZE_MISMATCH) ErrMsgSemantic(tok, ARRAY_SIZE_MISMATCH);
    else if (fit == TYPE_FIT_LITERAL_RANGE) ErrMsgSemantic(tok, LITERAL_NOT_REPRESENTABLE);
    else if (fit == TYPE_FIT_ELEM_REF_SHAPE) ErrMsgSemantic(tok, ELEM_REF_SHAPE_MISMATCH);
    else if (fit == TYPE_FIT_MISMATCH) ErrMsgSemantic(tok, VALUE_TYPE_MISMATCH);
    else if (fit == TYPE_FIT_NUMBER) ErrMsgSemantic(tok, NUMBER_DOES_NOT_FLOW);
    else if (fit == TYPE_FIT_LITERAL_EXPR) ErrMsgSemantic(tok, LITERAL_EXPR_NOT_REPRESENTABLE);
    else if (fit == TYPE_FIT_CTOR) ErrMsgSemantic(tok, PRIM_CTOR_LITERAL);
    else if (fit == TYPE_FIT_READ_ONLY) ErrMsgSemantic(tok, READ_ONLY_TO_WRITABLE);
}

//D15: ":=" reads the declared type off the initializer, which is only legible when the type is written at
//the declaration - a literal, a constructor call (the type name is right there), or a SLICE, whose type is
//its base's element type with a runtime length: "s := a[1:3]" says as much about s as "s := int32[1,2,3]"
//does. An ordinary call is still rejected: its return type lives in another declaration entirely.
bool OperandTypeIsWrittenHere(struct operand* op) {
    //T2a: "null" is the one literal that writes no type at all - it adapts to whatever it meets, so there
    //is nothing for ":=" to read off it. "x := null" is rejected here rather than reaching codegen with a
    //BASETYPE_NULL variable, which is what it did until this line existed.
    if (op->isNullLiteral) return false;
    if (op->opType == OPERATION_READ_VAR && op->readVar && op->readVar->isLambda) return true; //D16: its signature
    //D15: any call, including a "try" one - its type is its callee's declared result, which the declaration
    //then carries. A call returning nothing has no type to give.
    if (op->opType == OPERATION_FUNCCALL) return op->type.bType != BASETYPE_VOID;
    //...and the calls the compiler supplies: an array's "Len()" (E23), a float's "Bits()" and its reverse (E33), and
    //the atomic builtins that give a value (P9), written as calls and typed as plainly - "n := a.Len()" was rejected
    //while "n := l.Len()" on a List compiled
    if (op->opType == OPERATION_LEN || op->opType == OPERATION_BITCAST) return true;
    if (op->opType >= OPERATION_ATOMIC_LOAD && op->opType <= OPERATION_ATOMIC_CAS) return op->type.bType != BASETYPE_VOID;
    //an expression with hidden locals ahead of it (holding an operand once) is what it ends with
    if (op->opType == OPERATION_SEQ && op->args.len)
        return OperandTypeIsWrittenHere(*(struct operand**)ListGetIdx(&op->args, op->args.len - 1));
    //E11a/E11b: a rendering or a join is always byte[], and the "$" or the quotes say so where it is written
    if (op->opType == OPERATION_STR_OF || op->opType == OPERATION_CONCAT) return true;
    if (op->opType == OPERATION_SIZED_ARRAY_ALLOC) return true; //T7: "Array<T>(n)" names its type
    if (op->opType == OPERATION_COMPREHENSION) return true; //E27: "Int32[...]" names its element type
    if (op->opType == OPERATION_AS) return true; //E32: "x as T" names its type
    if (op->opType == OPERATION_MATCH) { //S12b: when each value would, as a conditional's (E28)
        struct list vs = SemanticMatchValues(op);
        for (int i = 0; i < vs.len; i++) if (!OperandTypeIsWrittenHere(*(struct operand**)ListGetIdx(&vs, i))) return false;
        return vs.len > 0;
    }
    //E28: "x := a if c else b" - when each value would name its type for ":=" on its own
    if (op->opType == OPERATION_COND && op->args.len == 3) {
        return OperandTypeIsWrittenHere(*(struct operand**)ListGetIdx(&op->args, 1))
            && OperandTypeIsWrittenHere(*(struct operand**)ListGetIdx(&op->args, 2));
    }
    //a conversion names its type as plainly as a constructor call does - "String(bytes)", "Int64(n)"
    if (op->opType == OPERATION_NOMINAL_CONVERT || op->opType == OPERATION_NUMERIC_CONVERT || op->viaConversion) return true;
    //D15: a field read - its type is the field's declared one, as a call's is its callee's result, and it is how
    //a cursor starts: "c := l.head" takes the field's type and where its referent lives (O25a)
    if (op->opType == OPERATION_MEMBER) return true;
    //...and an element read, for the same reason: its type is the array's declared element type, and it is how
    //generic code holds an element - "t := a[i]" lives where the element does, whatever the element is
    if (op->opType == OPERATION_INDEX && !op->catchClauses.len) return true;
    return op->isLiteral || op->opType == OPERATION_SLICE;
}

//D15 + T29c: the type ":=" gives a declaration from its initializer - wherever ":=" appears (a local, a "for"
//initializer, a constructor field, a global). Written text is a String, as it is everywhere one is wanted
static struct type inferredDeclType(struct var* func, struct operand* rhs) {
    FinalizeLambda(rhs, NULL); //D16b
    if (!OperandTypeIsWrittenHere(rhs) && !rhs->type.unknown) ErrMsgSemantic(rhs->tok, TYPE_CANNOT_BE_INFERRED);
    struct type* textT = SemanticBuiltinType(StrFromCStr("String"));
    if (textT && OperandIsWrittenText(rhs)) {
        reportTypeFit(OperandFitsType(func, rhs, *textT), rhs->tok);
        return *textT;
    }
    return declaredArrayType(rhs->type);
}

bool OperandIsLvalue(struct operand* op) {
    if (op->catchClauses.len) return false; //R9b: "try a[i] catch default 0" is a value - on failure there is no element
    //a function named as a value (or a lambda) is no storage of anyone's - it is built where it lands, like any
    //temporary (D16)
    if (op->opType == OPERATION_READ_VAR && op->readVar && op->readVar->isFuncDecl) return false;
    return op->opType == OPERATION_READ_VAR || op->opType == OPERATION_INDEX || op->opType == OPERATION_MEMBER;
}

bool OperandIsMutableLvalue(struct operand* op);

//T25c: may a reference made from this operand be written through - a reference's own permission (shallow: the
//type it was read as), a value's own storage being writable when it is borrowed, or a fresh value
bool OperandGivesWritable(struct operand* op) {
    if (op->isNullLiteral || op->type.bType == BASETYPE_FUNC) return true;
    if (TypeIsPermRef(op->type)) {
        switch (op->opType) {
            case OPERATION_READ_VAR: case OPERATION_MEMBER: case OPERATION_INDEX: case OPERATION_FUNCCALL:
            case OPERATION_SLICE: case OPERATION_NOMINAL_CONVERT:
                return op->type.refMut;
            default: return true; //a fresh value
        }
    }
    if (OperandNamesExistingStorage(op)) return OperandIsMutableLvalue(op);
    return true;
}

//T25b: may what this base leads to be written - through a reference, its permission; a value, its own storage
static bool baseWritable(struct operand* b) {
    if (TypeIsPermRef(b->type)) return OperandGivesWritable(b);
    return OperandIsMutableLvalue(b);
}

//T25b: is this write refused because it goes through a read-only REFERENCE, rather than to an immutable variable
static bool writeBlockedByPermission(struct operand* op) {
    while (op->opType == OPERATION_MEMBER || op->opType == OPERATION_INDEX || op->opType == OPERATION_SLICE) {
        struct operand* b = *(struct operand**)ListGetIdx(&op->args, 0);
        if (TypeIsPermRef(b->type) && !OperandGivesWritable(b)) return true;
        op = b;
    }
    return false;
}

//E31: is this a write into a value a call gave back - "l[i].x = v" where l's At returns a copy - which no one else
//holds, so the write would be lost; said so rather than "variable is immutable", since no variable is involved
static bool writeIntoCallValue(struct operand* op) {
    while (op->opType == OPERATION_MEMBER || op->opType == OPERATION_INDEX || op->opType == OPERATION_SLICE) {
        struct operand* b = *(struct operand**)ListGetIdx(&op->args, 0);
        if (TypeIsPermRef(b->type)) return false;
        if (b->opType == OPERATION_FUNCCALL) return true;
        op = b;
    }
    return false;
}

bool OperandIsMutableLvalue(struct operand* op) {
    switch (op->opType) {
        case OPERATION_READ_VAR: return op->readVar->mut;
        case OPERATION_INDEX: return baseWritable(*(struct operand**)ListGetIdx(&op->args, 0));
        //C3: a field is mutable only if declared "mut" - checked here alongside the base's own
        //mutability, not instead of it, so writing through an immutable base stays rejected too. This used
        //to recurse on the base alone, which never consulted the field's own flag at all and so let every
        //field of a mutable variable be written regardless of how it was declared. A plain (T13) struct's
        //fields carry mut = true (there is no "mut" in that grammar at all), so they are unaffected.
        case OPERATION_MEMBER:
            return op->memberMut && baseWritable(*(struct operand**)ListGetIdx(&op->args, 0));
        //E16a: a slice is a borrow of its base's storage, so writing through it writes the base. It carries
        //the base's mutability for the same reason an index does - otherwise slicing would launder an
        //immutable array into a "mut T[]&" parameter, which is exactly the hole D9's two axes exist to
        //prevent, reachable by writing two characters.
        case OPERATION_SLICE:
            return baseWritable(*(struct operand**)ListGetIdx(&op->args, 0));
        default: return false;
    }
}

//an operand that NAMES storage the caller can already see, as opposed to a freshly built temporary. That is
//every lvalue, plus a slice: a slice is not assignable (so not an lvalue), but it borrows storage someone
//else owns, which is the property the "mut" check at a call boundary actually cares about.
bool OperandNamesExistingStorage(struct operand* op) {
    return OperandIsLvalue(op) || op->opType == OPERATION_SLICE;
}

struct operand* OperandReadVar(struct var* v, struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_READ_VAR, v->type);
    //D16: a function value is reference-shaped - it names what its captures live in - while a declaration's own
    //type is its signature
    if (v->isFuncDecl) op->type.structMAlloc = true;
    op->readVar = v;
    op->scopeBindings = v->scopeBindings; //propagated one hop at declaration time - see buildVarDeclStmnt
    return op;
}

void bindCtorHere(struct checkCtx* ctx, struct operand* call, struct var* func);
struct operand* OperandSizedArrayAlloc(struct operand* sizeOp, struct type t, struct token tok);
struct operand* buildExprFromSyntax(struct checkCtx* ctx, struct syntax* s);

//D8a: a default that is not a literal must be computable at compile time - judged once the whole program
//has checked, since evaluating it may run a constructor whose body is checked later
struct defaultRec { struct operand* op; struct type type; };
static struct list defaultRecs;


//D8a: builds a parameter's declared default. Deliberately checked in the DECLARING module's own context
//- a caller's context would resolve a type name against the wrong module. It must be computable at compile
//time (K1), so it has a value and no other behaviour - nothing it does can depend on which caller omitted
//it - which is why one operand can serve every call site.
struct operand* buildParamDefault(struct semaModule* mod, struct syntax* defNode, struct type paramType) {
    struct checkCtx dctx = {0};
    dctx.mod = mod;
    struct operand* def = buildExprFromSyntax(&dctx, defNode);
    reportTypeFit(OperandFitsType(NULL, def, paramType), def->tok);
    if (!def->isLiteral) ListAdd(&defaultRecs, &(struct defaultRec){def, paramType});
    return def;
}

//does this parameter's declared type carry `sv` as its scope tag, at its own level or any array level?
bool paramTypeNamesScope(struct type pt, struct var* sv) {
    for (struct type* c = &pt; c; c = (c->bType == BASETYPE_ARRAY) ? c->arrElem : NULL) {
        if (canonicalVar(c->scopeParam) == canonicalVar(sv)) return true;
    }
    return false;
}

//O17: only an argument that is ALREADY reference-shaped determines anything. One that is not is a plain
//value about to be promoted (O6) - the tag on its parameter says where it is about to be *allocated*,
//which is a binding to be supplied or defaulted, not a fact that can be read off the argument. Getting
//this wrong is what a whole class of the corpus caught: "WrappedPoint(Point{x, y})" has nothing to read.
bool scopeViaFallback(struct operand* op);
static bool bindingIsLanding(struct operand* callOp, struct var* sv);
bool argDeterminesScope(struct operand* arg) {
    if (!(arg->type.structMAlloc || (arg->type.bType == BASETYPE_ARRAY && arg->type.arrMalloc))) return false;
    //O18a: a call whose result is still landing has no storage yet - it is built where its parameter says
    if (arg->opType == OPERATION_FUNCCALL && arg->type.scopeParam && bindingIsLanding(arg, arg->type.scopeParam))
        return false;
    return true;
}

//the caller-side scope an already-reference-shaped argument actually lives in, from the calling
//context's own perspective: its own tag, resolved one hop through whatever map it carries. NULL is own.
struct var* argEffectiveScope(struct operand* arg) {
    struct var* tag = arg->type.scopeParam;
    if (!tag) return NULL;
    return resolveEffectiveScopeVar(arg, tag);
}

//E25: resolves a call's written scope argument in the CALLING function's own frame - one of the caller's
//own scope variables. Never a name from the callee's signature: that is a different function's, and
//nothing here could bind it. The caller's own scope is never written; it is what an omitted scope means
//(O18).
static int normDepth(int d);
struct var* resolveScopeArg(struct checkCtx* ctx, struct syntax* scopeArgNode, bool* ok, int* depth) {
    *ok = true;
    *depth = 0;
    if (hasTokOfType(scopeArgNode, TOK_RET)) { //O26: "f&return(...)" builds in this function's result scope
        if (ctx && ctx->func && ctx->func->type.resultScope && !ctx->inCtor) return ctx->func->type.resultScope;
        ErrMsgSemantic(firstTokOfType(scopeArgNode, TOK_RET), RETURN_SCOPE_NONE);
        *ok = false;
        return NULL;
    }
    struct list idens = allTokOfType(scopeArgNode, TOK_IDEN);
    struct token nameTok = *(struct token*)ListGetIdx(&idens, 0);
    struct str name = strFromTok(nameTok);
    //E25/O4a: a local or parameter of the caller - the result is built where it lives
    struct var* v = ctx && ctx->scope ? scopeFindUse(ctx->scope, name, nameTok) : NULL;
    if (v) {
        if (v->scopeUnnamed) { //O25: a global's referent - no function allocates into the program's scope
            ErrMsgSemantic(nameTok, SCOPE_ARG_PROGRAM);
            *ok = false;
            return NULL;
        }
        if (v->type.scopeParam && v->type.scopeParam->derivedFrom) { //O23a: a scope nothing is built into
            ErrMsgSemantic(nameTok, BUILD_THROUGH_UNKNOWN_SCOPE);
            *ok = false;
            return NULL;
        }
        if (v->type.scopeParam) return v->type.scopeParam;
        *depth = normDepth(v->type.scopeDepth);
        return NULL;
    }
    //a global's referent is in the program's scope, which no function allocates into (O25)
    if (ctx && VarGetList(&ctx->mod->vars, name)) ErrMsgSemantic(nameTok, SCOPE_ARG_PROGRAM);
    else ErrMsgSemantic(nameTok, SCOPE_ARG_UNKNOWN);
    *ok = false;
    return NULL;
}

//O17/O18: binds every scope variable of func to a scope of the CALLER's, recording each on op's own
//scopeBindings map. From there the existing machinery does the rest: the per-parameter fit check below
//resolves a callee's "&name" through this map before comparing, and a later read of this call's result
//resolves it the same way (see resolveEffectiveScopeVar).
struct var* lvalueRootVar(struct operand* op);
bool varIsParamOf(struct var* v, struct var* func);
void scopeObligationAddDerived(struct var* func, struct var* longer, struct var* shorter, struct var* viaParam,
                               bool exact);
bool RefExactScope(struct checkCtx* ctx, struct operand* op, bool asRef, struct var** outVar, int* outDepth,
                   bool* unnamed);
static bool sameExactScope(struct var* a, int da, struct var* b, int db);
bool TypeHoldsReferences(struct type t);

//E25: the scope variable a written scope argument binds - the first that no parameter names (one only the
//result or an O3a declaration has, which no argument could determine), or else the first
static int firstScopeVarIndex(struct var* func) {
    for (int i = 0; i < func->type.scopeVars.len; i++) {
        struct var* sv = *(struct var**)ListGetIdx(&func->type.scopeVars, i);
        bool named = false;
        for (int j = 0; j < func->type.vars.len && !named; j++) {
            named = paramTypeNamesScope((*(struct var*)ListGetIdx(&func->type.vars, j)).type, sv);
        }
        if (!named) return i;
    }
    //C2c: every scope of a constructor named by a parameter - a scope argument says where the instance lands
    if (func->type.hasRetType && func->type.retType->ctorFunc
            && canonicalVar(func->type.retType->ctorFunc) == canonicalVar(func)) return -1;
    return 0;
}

int SemanticBoundScopeDepth(struct operand* callOp, struct var* sv, int callDepth);
//hereDepth >= 0 marks the other kind of entry: an enum value built from existing storage (T17c/C2d), checked where
//it landed once the statement ends - or, never landed, against the block it was built in (hereDepth)
struct pendingDischarge { struct checkCtx* ctx; struct operand* op; struct var* func; struct list args;
                          struct token tok; int obligation; int hereDepth; };
static struct list pendingDischarges;
//a pending discharge outlives the statement-building frame that queued it - a match's holding context, say, which is
//gone by the time the statement ends - so it keeps its own copy of the context, never a pointer into a stack frame
static struct checkCtx* keepCtx(struct checkCtx* ctx) {
    if (!ctx) return NULL;
    struct checkCtx* kept = MallocOrCrash(sizeof(struct checkCtx));
    *kept = *ctx;
    return kept;
}
static void dischargeObligation(struct checkCtx* ctx, struct operand* op, struct var* func, struct list args,
                                struct token tok, struct scopeObligation* o);

static bool bindingIsLanding(struct operand* op, struct var* sv) {
    for (int i = 0; i < op->scopeBindings.len; i++) {
        struct scopeBinding* b = ListGetIdx(&op->scopeBindings, i);
        if (canonicalVar(b->typeParam) == canonicalVar(sv)) return b->landing;
    }
    return false;
}

bool SemanticBindingIsLanding(struct operand* callOp, struct var* sv) { return bindingIsLanding(callOp, sv); }

//O1b/O25: a scope variable a call bound to a caller scope the caller cannot name - a global's referent, the program's
//scope - which is where anything the callee builds into it has to go
bool SemanticBindingIsUnnamed(struct operand* callOp, struct var* sv) {
    for (int i = 0; i < callOp->scopeBindings.len; i++) {
        struct scopeBinding* b = ListGetIdx(&callOp->scopeBindings, i);
        if (canonicalVar(b->typeParam) == canonicalVar(sv)) return b->boundUnnamed && !b->landing;
    }
    return false;
}

//O18a: whether any of a call's scopes still follows its result
static bool opIsCtorCall(struct operand* op) {
    return op->opType == OPERATION_FUNCCALL && op->readVar && op->readVar->type.hasRetType
           && op->readVar->type.retType->bType == BASETYPE_STRUCT && op->readVar->type.retType->ctorFunc
           && canonicalVar(op->readVar->type.retType->ctorFunc) == canonicalVar(op->readVar);
}

bool RefExactScope(struct checkCtx* ctx, struct operand* op, bool asRef, struct var** outVar, int* outDepth,
                   bool* unnamed);
//codegen: where a reference operand's referent lives, from the function holding it - for a tag that belongs to
//a TYPE (a field written "&p"), resolved through the instance's bindings, or its container's scope where the
//binding stayed with whoever built it (O23). False when not even that is known.
bool SemanticReferentScope(struct var* func, struct operand* op, struct var** to, int* depth) {
    bool un = false;
    if (!RefExactScope(NULL, op, true, to, depth, &un) || un || *to == SCOPE_AMBIGUOUS) return false;
    if (*to && !varIsOwnParam(*to, func)) return false;
    return true;
}

bool SemanticLandedInProgram(struct operand* callOp) { return callOp->ctorLanded && callOp->landedInProgram; }

bool SemanticCtorLanding(struct operand* callOp, struct var** to, int* depth) {
    if (!callOp->ctorLanded) return false;
    *to = callOp->landedTo;
    *depth = callOp->landedDepth;
    return true;
}

//T17c/C2d: an enum value built with a payload - a constructor of its own, whose payload lives where it lands
static bool opIsEnumCtor(struct operand* op) {
    return op->opType == OPERATION_NONE && op->isLiteral && op->type.bType == BASETYPE_CHOICE && !op->type.structMAlloc
           && op->args.len > 0;
}

//an array literal - its elements live where it lands (O5, G11), so each of them lands there with it
static bool opIsArrayLiteral(struct operand* op) {
    return op->opType == OPERATION_NONE && op->isLiteral && op->type.bType == BASETYPE_ARRAY && op->args.len > 0
           && op->tok.type != TOK_STR_LIT;
}

bool callIsLanding(struct operand* op) {
    if (opIsArrayLiteral(op)) {
        for (int i = 0; i < op->args.len; i++) if (callIsLanding(*(struct operand**)ListGetIdx(&op->args, i))) return true;
        return false;
    }
    //E28/S12b: a conditional or a match lands where its value does - each value it can give
    if (op->opType == OPERATION_COND && op->args.len == 3)
        return callIsLanding(*(struct operand**)ListGetIdx(&op->args, 1)) || callIsLanding(*(struct operand**)ListGetIdx(&op->args, 2));
    if (op->opType == OPERATION_MATCH) {
        struct list vs = SemanticMatchValues(op);
        for (int i = 0; i < vs.len; i++) if (callIsLanding(*(struct operand**)ListGetIdx(&vs, i))) return true;
        return false;
    }
    //an enum case built with a payload binds its scopes as a call does (T17c), and lands as one
    if (op->opType != OPERATION_FUNCCALL && op->scopeBindings.len == 0) return false;
    if ((opIsCtorCall(op) || opIsEnumCtor(op)) && !op->ctorLanded) return true; //C2d: its instance follows it too
    for (int i = 0; i < op->scopeBindings.len; i++) {
        if (((struct scopeBinding*)ListGetIdx(&op->scopeBindings, i))->landing) return true;
    }
    return op->landsWith.len > 0;
}

//O18a: the call's result lands in (dst, depth) - every scope that followed it is bound there, and so is every
//call passed for a parameter whose scope followed it
//program: lands in the program's scope (O1b) - dst NULL, the binding marked as the scope this function cannot name
static void landCallIn(struct operand* op, struct var* dst, int depth, bool program) {
    if (dst && dst != SCOPE_AMBIGUOUS && dst->derivedFrom) { //O23a: nothing is built in a derived scope - where it is read
        dst = SemanticRuntimeScope(dst, &depth);                //through is where it would really be built
        if (dst) depth = 0;
    }
    if (op && opIsArrayLiteral(op)) {
        for (int i = 0; i < op->args.len; i++) landCallIn(*(struct operand**)ListGetIdx(&op->args, i), dst, depth, program);
        return;
    }
    if (op && op->opType == OPERATION_COND && op->args.len == 3) { //E28: whichever value is chosen lands there
        landCallIn(*(struct operand**)ListGetIdx(&op->args, 1), dst, depth, program);
        landCallIn(*(struct operand**)ListGetIdx(&op->args, 2), dst, depth, program);
        return;
    }
    if (op && op->opType == OPERATION_MATCH) { //S12b: the same, for each of a match's values
        struct list vs = SemanticMatchValues(op);
        for (int i = 0; i < vs.len; i++) landCallIn(*(struct operand**)ListGetIdx(&vs, i), dst, depth, program);
        return;
    }
    if (!op || (op->opType != OPERATION_FUNCCALL && op->scopeBindings.len == 0)) return;
    if ((opIsCtorCall(op) || opIsEnumCtor(op)) && !op->ctorLanded) {
        op->ctorLanded = true;
        op->landedTo = dst;
        op->landedDepth = depth;
        op->landedInProgram = program;
    }
    for (int i = 0; i < op->scopeBindings.len; i++) {
        struct scopeBinding* b = ListGetIdx(&op->scopeBindings, i);
        if (!b->landing) continue;
        b->boundTo = dst;
        b->boundDepth = depth;
        b->boundUnnamed = program;
        b->landing = false;
    }
    for (int i = 0; i < op->landsWith.len; i++)
        landCallIn(*(struct operand**)ListGetIdx(&op->landsWith, i), dst, depth, program);
    op->landsWith.len = 0;
}

void landCall(struct operand* op, struct var* dst, int depth) { landCallIn(op, dst, depth, false); }

//D8d: the call whose results an argument is one of, when it is one of several spread over a call's arguments
static struct operand* spreadSourceOf(struct operand* arg) {
    if (arg->opType != OPERATION_MEMBER) return NULL;
    struct operand* base = *(struct operand**)ListGetIdx(&arg->args, 0);
    return base->isSpreadSource ? base : NULL;
}

//WRONG_ARG_COUNT, or - where the arguments are one call's spread results (D8d) - the message saying so
void reportArgCount(struct list args, struct token tok) {
    struct operand* a0 = args.len ? *(struct operand**)ListGetIdx(&args, 0) : NULL;
    if (a0 && spreadSourceOf(a0)) ErrMsgSemantic(a0->tok, SPREAD_COUNT_MISMATCH);
    else ErrMsgSemantic(tok, WRONG_ARG_COUNT);
}

//E12c/O17: an argument that makes its own storage - rendered or joined text, "Array<T>(n)", a comprehension, a lambda
//capturing only values, null - which has no scope to read off it: the scope variable it is passed for is bound
//where such a value is built (O18a, O18b), and it is built there. The same set codegen builds where it lands.
static bool argIsFreshTemp(struct operand* op) {
    if (op->isNullLiteral) return true;
    if (op->opType == OPERATION_COND && op->args.len == 3)
        return argIsFreshTemp(*(struct operand**)ListGetIdx(&op->args, 1)) && argIsFreshTemp(*(struct operand**)ListGetIdx(&op->args, 2));
    if (op->opType == OPERATION_MATCH) {
        struct list vs = SemanticMatchValues(op);
        for (int i = 0; i < vs.len; i++) if (!argIsFreshTemp(*(struct operand**)ListGetIdx(&vs, i))) return false;
        return vs.len > 0;
    }
    if (op->opType == OPERATION_READ_VAR && op->readVar && op->readVar->isLambda)
        return op->readVar->lambdaCaptures.len && !op->lambdaHomeSet;
    return op->opType == OPERATION_STR_OF || op->opType == OPERATION_CONCAT
           || op->opType == OPERATION_SIZED_ARRAY_ALLOC || op->opType == OPERATION_COMPREHENSION;
}

//O23a: whether storing op somewhere builds it there - it has no storage of its own to borrow (E12c) - so that a place
//whose scope is a derived one, which nothing is built into, cannot take it
bool callIsLanding(struct operand* op);
bool RefExactScope(struct checkCtx* ctx, struct operand* op, bool asRef, struct var** outVar, int* outDepth,
                   bool* unnamed);
static bool operandIsTemporary(struct checkCtx* ctx, struct operand* op) {
    if (op->isNullLiteral) return false;
    if (callIsLanding(op) || argIsFreshTemp(op)) return true;
    bool asRef = op->type.structMAlloc;
    struct var* v;
    int d;
    bool u;
    return !((asRef || OperandIsLvalue(op)) && RefExactScope(ctx, op, asRef, &v, &d, &u));
}

static bool scopeIsDerived(struct var* sv) { return sv && sv != SCOPE_AMBIGUOUS && canonicalVar(sv)->derivedFrom; }

static struct scopeBinding* callBinding(struct operand* op, struct var* sv) {
    for (int i = 0; i < op->scopeBindings.len; i++) {
        struct scopeBinding* b = ListGetIdx(&op->scopeBindings, i);
        if (canonicalVar(b->typeParam) == canonicalVar(sv)) return b;
    }
    return NULL;
}

//whether a callee's scope variable is one its result names - the result scope, or a parameter's the result is
//borrowed from - so that where it is bound follows the result (O18a) and nothing else may move it
static bool varNamedByResult(struct var* func, struct var* sv) {
    if (!func->type.hasRetType) return false;
    if (func->type.resultScope && canonicalVar(func->type.resultScope) == canonicalVar(sv)) return true;
    struct type rt = *func->type.retType;
    if (paramTypeNamesScope(rt, sv)) return true;
    for (int i = 0; rt.isTuple && i < rt.vars.len; i++) {
        if (paramTypeNamesScope(((struct var*)ListGetIdx(&rt.vars, i))->type, sv)) return true;
    }
    return false;
}

//O23a: where reading a field tagged with its type's scope variable V would find the referent, for a value arg seen from
//the function holding it - the binding arg carries for V (made where the value was built and carried with it, O13c);
//for a parameter of that function, its derived scope; and otherwise the scope arg itself lives in, which the field's
//referent outlives (O23). False when not even that is known.
static bool instanceScopeOf(struct checkCtx* ctx, struct operand* arg, struct var* V, struct var** to, int* depth,
                            bool* unnamed) {
    *to = NULL;
    *depth = 0;
    *unnamed = false;
    for (int i = 0; i < arg->scopeBindings.len; i++) {
        struct scopeBinding* b = ListGetIdx(&arg->scopeBindings, i);
        if (canonicalVar(b->typeParam) != canonicalVar(V) || b->landing || b->boundTo == SCOPE_AMBIGUOUS) continue;
        if (b->viaPath.len) continue; //a nested argument's own value, not this one's
        *to = canonicalVar(b->boundTo);
        *depth = b->boundTo ? 0 : normDepth(b->boundDepth);
        *unnamed = b->boundUnnamed;
        return true;
    }
    struct var* pv = arg->opType == OPERATION_READ_VAR ? arg->readVar : NULL;
    if (pv && pv->paramOf && ctx && ctx->func == pv->paramOf) {
        *to = derivedScopeVar(pv->paramOf, pv, V);
        return true;
    }
    if (!ctx || !ctx->hasOwnScope) return false;
    return RefExactScope(ctx, arg, arg->type.structMAlloc, to, depth, unnamed) && *to != SCOPE_AMBIGUOUS;
}

//O10c/O23a: what one of a callee's scope variables is at this call, in the caller's scopes: the binding the call made
//(the caller's own block at the call, while still landing), or - for a derived scope - what the argument for its
//parameter carries for the variable (instanceScopeOf). False when nothing is known.
static bool calleeScopeAt(struct checkCtx* ctx, struct operand* op, struct var* func, struct list args, struct var* sv,
                          struct var** to, int* depth, bool* unnamed, bool* landing) {
    *to = NULL;
    *depth = 0;
    *unnamed = false;
    *landing = false;
    struct derivedScope* d = derivedScopeOf(func, sv);
    if (d) {
        for (int j = 0; j < func->type.vars.len && j < args.len; j++) {
            if (canonicalVar(ListGetIdx(&func->type.vars, j)) != d->param) continue;
            return instanceScopeOf(ctx, *(struct operand**)ListGetIdx(&args, j), d->typeVar, to, depth, unnamed);
        }
        return false;
    }
    struct scopeBinding* b = callBinding(op, sv);
    if (!b) return false;
    *landing = b->landing;
    *to = b->boundTo == SCOPE_AMBIGUOUS ? SCOPE_AMBIGUOUS : canonicalVar(b->boundTo);
    *depth = b->boundTo ? 0 : SemanticBoundScopeDepth(op, sv, ctx ? ctx->blockDepth : 0);
    *unnamed = b->boundUnnamed && !b->landing;
    return true;
}

//O18b: a scope variable no argument determined - what is passed for it is a temporary - which the callee requires to
//outlive one it knows is bound to that one, so the temporary is built where the obligation says it must live:
//"l.Push(Node(i))" builds the node where the list lives, not in the loop body the call stands in, which the list
//outlives. Never one the result names (where that is bound follows the result), and never into a scope no code
//allocates into: the program's (O25e), or a derived one (O23a), which stands for a scope this function does not have.
static void landByObligations(struct checkCtx* ctx, struct operand* op, struct var* func, struct list args) {
    for (bool changed = true; changed; ) {
        changed = false;
        for (int i = 0; i < func->type.scopeObligations.len; i++) {
            struct scopeObligation* o = ListGetIdx(&func->type.scopeObligations, i);
            if (o->shorterViaParam) continue;
            struct scopeBinding* lb = callBinding(op, o->longer);
            if (!lb || !lb->landing || varNamedByResult(func, lb->typeParam)) continue;
            struct var* to;
            int depth;
            bool un, landing;
            if (!calleeScopeAt(ctx, op, func, args, o->shorter, &to, &depth, &un, &landing) || landing || un
                    || to == SCOPE_AMBIGUOUS || (to && to->derivedFrom)) continue;
            lb->boundTo = to;
            lb->boundDepth = to ? 0 : depth;
            lb->landing = false;
            changed = true;
        }
    }
}

//O13c: the per-instance scope variables of a value of type t - its constructor's (one per reference parameter) and its
//instance scope - which a field written "&p" or a bare one is read at
static struct list perInstanceVars(struct type t) {
    struct list out = ListInit(sizeof(struct var*));
    if (t.bType != BASETYPE_STRUCT || !t.ctorFunc) return out;
    for (int i = 0; i < t.ctorFunc->type.scopeVars.len; i++) ListAdd(&out, ListGetIdx(&t.ctorFunc->type.scopeVars, i));
    if (t.hereVar) ListAdd(&out, &t.hereVar);
    return out;
}

//O13c: what a returned value's per-instance scope variables were bound to, where that is one of this function's own
//scopes other than its result scope, kept as the function's result bindings - only what every return agrees on
static void noteResultBindings(struct checkCtx* ctx, struct operand* val) {
    struct var* f = ctx->func;
    if (!f || ctx->inCtor || f->isLambda) return;
    //a borrowed result returned from a derived scope: the referent of a field of an argument
    struct type* rt = f->type.hasRetType ? f->type.retType : NULL;
    if (rt && rt->structMAlloc && rt->scopeParam && canonicalVar(rt->scopeParam) != canonicalVar(f->type.resultScope)) {
        struct var* rv = NULL;
        int rd;
        bool ru;
        bool asRef = val->type.structMAlloc;
        struct var* via = (asRef || OperandIsLvalue(val)) && RefExactScope(ctx, val, asRef, &rv, &rd, &ru) && !ru
                          && rv && rv != SCOPE_AMBIGUOUS && derivedScopeOf(f, rv) ? canonicalVar(rv) : NULL;
        if (!f->type.resultViaSeen) f->type.resultVia = via;
        else if (f->type.resultVia != via) f->type.resultVia = NULL;
        f->type.resultViaSeen = true;
    }
    struct list vars = perInstanceVars(val->type);
    struct list now = ListInit(sizeof(struct scopeBinding));
    for (int i = 0; i < vars.len; i++) {
        struct var* V = canonicalVar(*(struct var**)ListGetIdx(&vars, i));
        for (int k = 0; k < val->scopeBindings.len; k++) {
            struct scopeBinding* b = ListGetIdx(&val->scopeBindings, k);
            if (canonicalVar(b->typeParam) != V || b->viaPath.len || b->landing) continue;
            struct var* to = canonicalVar(b->boundTo);
            if (to && to != SCOPE_AMBIGUOUS && varIsOwnParam(to, f) && to != canonicalVar(f->type.resultScope)) {
                struct scopeBinding e = (struct scopeBinding){0};
                e.typeParam = V;
                e.boundTo = to;
                e.viaPath = ListInit(sizeof(struct var*));
                ListAdd(&now, &e);
            }
            break;
        }
    }
    if (!f->type.resultBindingsSeen) {
        f->type.resultBindings = now;
        f->type.resultBindingsSeen = true;
        return;
    }
    struct list kept = ListInit(sizeof(struct scopeBinding));
    for (int i = 0; i < f->type.resultBindings.len; i++) {
        struct scopeBinding* had = ListGetIdx(&f->type.resultBindings, i);
        for (int k = 0; k < now.len; k++) {
            struct scopeBinding* n = ListGetIdx(&now, k);
            if (n->typeParam == had->typeParam && n->boundTo == had->boundTo) { ListAdd(&kept, had); break; }
        }
    }
    f->type.resultBindings = kept;
}

//O13c: a call's result carries what its value's per-instance scope variables were bound to in the callee, translated
//to this call - so "it := l.Iter()" knows its iterator reads l's storage, as "it := ListIter(l)" would. Only from a
//callee whose body is wholly checked: a cycle's partial answer could still be withdrawn by a later return.
static void applyResultBindings(struct checkCtx* ctx, struct operand* op, struct var* func, struct list args) {
    if (func->bodyState != 2 || !ctx || !ctx->hasOwnScope) return;
    if (func->type.resultVia) {
        struct var* to;
        int depth;
        bool un, landing;
        if (calleeScopeAt(ctx, op, func, args, func->type.resultVia, &to, &depth, &un, &landing) && !landing
                && to != SCOPE_AMBIGUOUS) {
            op->resultRefined = true;
            op->refinedTo = to;
            op->refinedDepth = to ? 0 : depth;
            op->refinedUnnamed = un;
        }
    }
    for (int i = 0; i < func->type.resultBindings.len; i++) {
        struct scopeBinding* e = ListGetIdx(&func->type.resultBindings, i);
        bool have = false;
        for (int k = 0; k < op->scopeBindings.len && !have; k++) {
            struct scopeBinding* b = ListGetIdx(&op->scopeBindings, k);
            have = canonicalVar(b->typeParam) == e->typeParam && !b->viaPath.len;
        }
        struct var* to;
        int depth;
        bool un, landing;
        if (have || !calleeScopeAt(ctx, op, func, args, e->boundTo, &to, &depth, &un, &landing) || landing
                || to == SCOPE_AMBIGUOUS) continue;
        struct scopeBinding b = (struct scopeBinding){0};
        b.typeParam = e->typeParam;
        b.boundTo = to;
        b.boundDepth = to ? 0 : depth;
        b.boundUnnamed = un;
        b.viaPath = ListInit(sizeof(struct var*));
        ListAdd(&op->scopeBindings, &b);
    }
}

//O18c/O25a: a value local whose call landed by its obligations keeps that as the home of its references when it is one
//of this function's blocks - which borrowing the local agrees with (O17). Where it is a scope variable the local's
//references are read at its own block instead, an underestimate: borrowing hands over the storage's scope.
static bool landedInBlock(struct operand* rhs) {
    struct var* R = rhs->opType == OPERATION_FUNCCALL && rhs->readVar ? rhs->readVar->type.resultScope : NULL;
    return R && !bindingIsLanding(rhs, R) && !SemanticBoundScope(rhs, R);
}

//O18c: a ":=" local takes its initializer's scope (O25a), so a call whose result scope is still free to follow its
//result lands where its obligations say the result is to be outlived - the shortest of those scopes, which the
//local's own block never outlives: "w := it.Next()" then lives where the list it reads does, not in the loop body.
//False where nothing says so (the local's block, or the function's scope for a value, stays the answer), where two
//such scopes are not ordered here, and where one is a scope nothing is built into (the program's, a derived one).
static bool landDeclByObligations(struct checkCtx* ctx, struct operand* rhs) {
    if (!ctx->hasOwnScope || rhs->opType != OPERATION_FUNCCALL || !rhs->readVar) return false;
    struct var* func = rhs->readVar;
    struct var* R = func->type.resultScope;
    if (!R || !bindingIsLanding(rhs, R) || func->bodyState != 2) return false;
    bool found = false;
    struct var* best = NULL;
    int bestDepth = 0;
    for (int i = 0; i < func->type.scopeObligations.len; i++) {
        struct scopeObligation* o = ListGetIdx(&func->type.scopeObligations, i);
        if (o->shorterViaParam || canonicalVar(o->shorter) != canonicalVar(R) || canonicalVar(o->longer) == canonicalVar(R))
            continue;
        struct var* to;
        int d;
        bool un, landing;
        if (!calleeScopeAt(ctx, rhs, func, rhs->args, o->longer, &to, &d, &un, &landing) || landing || un
                || to == SCOPE_AMBIGUOUS || (to && to->derivedFrom)) return false;
        d = to ? 0 : normDepth(d);
        if (!found) { best = to; bestDepth = d; found = true; }
        else if (scopeOutlives(ctx->func, best, normDepth(bestDepth), to, normDepth(d))) { best = to; bestDepth = d; }
        else if (!scopeOutlives(ctx->func, to, normDepth(d), best, normDepth(bestDepth))) return false;
    }
    if (!found) return false;
    landCall(rhs, best, bestDepth);
    return true;
}

//O10c: every call, with how many of its callee's obligations it has been held to - a callee whose body was not wholly
//checked when the call was (a cycle, a call in a global initializer, a constructor whose body is built later) gains
//more, which dischargeLateObligations holds the call to once every body is checked
struct callRec { struct checkCtx* ctx; struct operand* op; struct var* func; struct list args; struct token tok;
                 int done; };
static struct list callRecs;

static void recordCall(struct checkCtx* ctx, struct operand* op, struct var* func, struct list args, struct token tok,
                       int done) {
    if (ErrMsgMuted()) return; //a muted probe is never run, and owes nothing
    struct checkCtx* kept = NULL;
    if (ctx) {
        kept = MallocOrCrash(sizeof(struct checkCtx));
        *kept = (struct checkCtx){0};
        kept->mod = ctx->mod;
        kept->func = ctx->func;
        kept->blockDepth = ctx->blockDepth;
        kept->hasOwnScope = ctx->hasOwnScope;
        kept->inCtor = ctx->inCtor;
        kept->inTest = ctx->inTest;
    }
    struct callRec r = { kept, op, func, args, tok, done };
    ListAdd(&callRecs, &r);
}

void bindCallScopeVars(struct checkCtx* ctx, struct operand* op, struct var* func, struct list args,
                       struct token tok, struct list scopeArgNodes) {
    bool instanceArg = scopeArgNodes.len > 0 && firstScopeVarIndex(func) < 0;
    if (scopeArgNodes.len > func->type.scopeVars.len && !instanceArg) ErrMsgSemantic(tok, SCOPE_ARG_NOT_ACCEPTED);
    for (int i = 0; i < func->type.scopeVars.len; i++) {
        struct var* sv = *(struct var**)ListGetIdx(&func->type.scopeVars, i);
        //O17: every already-reference-shaped argument whose parameter names this variable determines it,
        //and all of them must agree
        struct var* boundTo = NULL;
        int boundDepth = 0; //O2d - see struct scopeBinding
        bool unnamed = false; //O25
        bool determined = false;
        for (int j = 0; j < func->type.vars.len && j < args.len; j++) {
            struct type pt = (*(struct var*)ListGetIdx(&func->type.vars, j)).type;
            if (!paramTypeNamesScope(pt, sv)) continue;
            struct operand* arg = *(struct operand**)ListGetIdx(&args, j);
            //D8d: one result of a call still landing determines nothing - the call lands with the parameter (below)
            struct operand* src = spreadSourceOf(arg);
            if (src && callIsLanding(src)) continue;
            //E12c: storage the argument makes itself has no scope yet - it is built where the variable is bound
            if (argIsFreshTemp(arg)) continue;
            //E12c: a VALUE lvalue passed for a reference parameter is borrowed - the callee gets that very
            //storage, so its scope is where that storage is. Treating it as a temporary bound the variable to the
            //block the call is written in: "l.Push(i)" in a loop built the list's chunks in the loop's arena
            bool borrowed = !argDeterminesScope(arg) && OperandIsLvalue(arg) && ctx && ctx->hasOwnScope;
            if (!argDeterminesScope(arg) && !borrowed) continue;
            //O25: the argument's EXACT scope - a field read through a container is the container's scope,
            //not the slot's bare tag - and two arguments naming one variable must agree exactly, depth
            //included, or the callee would write one's allocations into the other's referent
            struct var* argScope = borrowed ? NULL : argEffectiveScope(arg);
            int argDepth = arg->type.scopeDepth;
            bool argUnnamed = false;
            if (ctx && ctx->hasOwnScope && !RefExactScope(ctx, arg, !borrowed, &argScope, &argDepth, &argUnnamed) && borrowed)
                continue;
            //O23a: nothing is built into a derived scope - a callee that may build into this variable (it can write
            //the parameter, or its borrowed result names it) is handed the scope the derived one was read through,
            //which is where such a build really lands and which the derived scope outlives (O23)
            {
                struct var* pv = ListGetIdx(&func->type.vars, j);
                bool mayBuild = pv->mut || (func->type.hasRetType && paramTypeNamesScope(*func->type.retType, sv));
                if (mayBuild && argScope && argScope != SCOPE_AMBIGUOUS && argScope->derivedFrom) {
                    argScope = SemanticRuntimeScope(argScope, &argDepth);
                    if (argScope) argDepth = 0;
                }
            }
            if (determined && (!sameExactScope(argScope, argDepth, boundTo, boundDepth) || argUnnamed != unnamed)) {
                ErrMsgSemantic(tok, SCOPE_ARGS_DISAGREE);
                boundTo = SCOPE_AMBIGUOUS;
                break;
            }
            //a scope this function cannot name may still be READ through a callee - but a callee holding
            //the variable may allocate into it and store the result through the reference, which would land
            //in the wrong scope wherever the referent can hold references
            bool results = func->type.hasRetType && paramTypeNamesScope(*func->type.retType, sv);
            if (argUnnamed && RefNarrowingMatters(pt)) ErrMsgSemantic(arg->tok, UNNAMED_SCOPE_BOUND);
            //C2d/O23: a callee may build into a parameter it can write, or into one its borrowed result names -
            //neither can be the right place for a field whose real scope is not known here
            if (RefNarrowingMatters(pt) && scopeViaFallback(arg)) {
                struct var* pv = ListGetIdx(&func->type.vars, j);
                if (pv->mut || results) ErrMsgSemantic(arg->tok, BUILD_THROUGH_UNKNOWN_SCOPE);
            }
            boundTo = argScope;
            boundDepth = argDepth;
            unnamed = argUnnamed;
            determined = true;
        }
        //O18: a written scope argument states a binding positionally over this signature's own scope
        //variables; it may restate what the arguments determined but never contradict it. Neither
        //determined nor written means the scope the result lands in (O18a), the caller's own until it does.
        bool written = false;
        if (scopeArgNodes.len > 0 && i == firstScopeVarIndex(func)) {
            bool ok = false;
            int wDepth = 0;
            struct var* w = resolveScopeArg(ctx, *(struct syntax**)ListGetIdx(&scopeArgNodes, 0), &ok, &wDepth);
            if (ok) {
                written = true;
                if (determined && !sameExactScope(w, wDepth, boundTo, boundDepth)) ErrMsgSemantic(tok, SCOPE_ARGS_DISAGREE);
                else { boundTo = w; boundDepth = wDepth; }
            }
        }
        struct scopeBinding b = (struct scopeBinding){0};
        b.typeParam = sv;
        b.boundTo = boundTo;
        b.boundDepth = boundDepth;
        b.boundUnnamed = unnamed;
        b.landing = !determined && !written;
        b.viaPath = ListInit(sizeof(struct var*));
        ListAdd(&op->scopeBindings, &b);
    }

    landByObligations(ctx, op, func, args);
    //O18a: a call passed for a parameter takes that parameter's binding as its destination - at once where
    //it is known, or along with this call's own result where it is itself still landing
    for (int j = 0; j < func->type.vars.len && j < args.len; j++) {
        struct operand* arg = *(struct operand**)ListGetIdx(&args, j);
        if (spreadSourceOf(arg)) arg = spreadSourceOf(arg); //D8d: its results land together, with the first
        struct var* psv = (*(struct var*)ListGetIdx(&func->type.vars, j)).type.scopeParam;
        //T17c: an enum value built for the parameter, and a conditional or match giving one, land as a call's result does
        bool lands = arg->opType == OPERATION_FUNCCALL || opIsEnumCtor(arg) || arg->opType == OPERATION_COND
                     || arg->opType == OPERATION_MATCH;
        if (!lands || !psv || !callIsLanding(arg)) continue;
        for (int k = 0; k < op->scopeBindings.len; k++) {
            struct scopeBinding* pb = ListGetIdx(&op->scopeBindings, k);
            if (canonicalVar(pb->typeParam) != canonicalVar(psv)) continue;
            if (pb->landing) {
                if (!op->landsWith.elemSize) op->landsWith = ListInit(sizeof(struct operand*));
                ListAdd(&op->landsWith, &arg);
            }
            else if (pb->boundTo != SCOPE_AMBIGUOUS) landCall(arg, pb->boundTo, pb->boundDepth);
            break;
        }
    }
    //C2c/E25: a scope argument on a constructor call puts the instance - and the temporaries built for it -
    //where the named variable lives
    if (instanceArg) {
        bool ok = false;
        int wDepth = 0;
        struct var* w = resolveScopeArg(ctx, *(struct syntax**)ListGetIdx(&scopeArgNodes, 0), &ok, &wDepth);
        if (ok) landCall(op, w, wDepth);
    }
    //O10c: every obligation func's own body recorded, translated through the bindings just made, must
    //hold in the caller - under its own O10a facts plus its own obligation set, which may grow here. One
    //touching a landing scope waits for the statement to end (O18a), when the result has landed.
    for (int i = 0; i < func->type.scopeObligations.len; i++) {
        struct scopeObligation* o = ListGetIdx(&func->type.scopeObligations, i);
        if (bindingIsLanding(op, o->longer) || (!o->shorterViaParam && bindingIsLanding(op, o->shorter))) {
            struct pendingDischarge pd = { keepCtx(ctx), op, func, args, tok, i, -1 };
            if (!ErrMsgMuted()) ListAdd(&pendingDischarges, &pd); //a muted probe's would be reported unmuted later
            continue;
        }
        dischargeObligation(ctx, op, func, args, tok, o);
    }
}

//O10c/O18b: the obligations a call was not held to when it was checked, because its callee's body was not yet wholly
//checked - to a fixed point, since holding one call to them can oblige its caller further (O10b), and so that
//caller's own calls. A temporary passed for a scope variable such an obligation binds is built where it says, as at
//the call (landByObligations); its landing is the only part of a call this can change, and only for a variable the
//result does not name, so nothing checked about the call's result is made stale.
static void landParamArgs(struct operand* op, struct var* func, struct list args, struct var* sv, struct var* to, int depth) {
    for (int j = 0; j < func->type.vars.len && j < args.len; j++) {
        if (!paramTypeNamesScope((*(struct var*)ListGetIdx(&func->type.vars, j)).type, sv)) continue;
        struct operand* arg = *(struct operand**)ListGetIdx(&args, j);
        for (int k = 0; k < op->landsWith.len; k++) {
            if (*(struct operand**)ListGetIdx(&op->landsWith, k) != arg) continue;
            for (int m = k + 1; m < op->landsWith.len; m++) *(struct operand**)ListGetIdx(&op->landsWith, m - 1) = *(struct operand**)ListGetIdx(&op->landsWith, m);
            op->landsWith.len--;
            break;
        }
        if (callIsLanding(arg)) landCall(arg, to, depth);
    }
}

static void dischargeLateObligations(void) {
    for (bool changed = true; changed; ) {
        changed = false;
        for (int i = 0; i < callRecs.len; i++) {
            struct callRec r = *(struct callRec*)ListGetIdx(&callRecs, i);
            int have = r.func->type.scopeObligations.len;
            if (r.done >= have) continue;
            ((struct callRec*)ListGetIdx(&callRecs, i))->done = have;
            changed = true;
            for (int k = r.done; k < have; k++) {
                struct scopeObligation o = *(struct scopeObligation*)ListGetIdx(&r.func->type.scopeObligations, k);
                if (!o.shorterViaParam) {
                    struct scopeBinding* lb = callBinding(r.op, o.longer);
                    struct var* to;
                    int depth;
                    bool un, landing;
                    if (lb && lb->landing && !varNamedByResult(r.func, lb->typeParam)
                            && calleeScopeAt(r.ctx, r.op, r.func, r.args, o.shorter, &to, &depth, &un, &landing) && !landing
                            && !un && to != SCOPE_AMBIGUOUS && !(to && to->derivedFrom)) {
                        lb->boundTo = to;
                        lb->boundDepth = to ? 0 : depth;
                        lb->landing = false;
                        landParamArgs(r.op, r.func, r.args, o.longer, to, lb->boundDepth);
                    }
                }
                struct token prev = obligationOrigin;
                obligationOrigin = r.tok;
                dischargeObligation(r.ctx, r.op, r.func, r.args, r.tok, &o);
                obligationOrigin = prev;
            }
        }
    }
}

//O10c: point a failed discharge at the statement in the callee that required it
static void obligationNote(struct scopeObligation* o) {
    if (o->origin.owner && o->origin.type != TOK_NONE) ErrMsgSemanticNote(o->origin, OBLIGATION_ORIGIN_NOTE);
}

//O10c for one obligation of func's, at the call op
static void dischargeObligation(struct checkCtx* ctx, struct operand* op, struct var* func, struct list args,
                                struct token tok, struct scopeObligation* o) {
    struct var* longer;
    int lDepth;
    bool lUnnamed, lLanding;
    if (!calleeScopeAt(ctx, op, func, args, o->longer, &longer, &lDepth, &lUnnamed, &lLanding)) {
        longer = canonicalVar(o->longer);
        lDepth = 0;
    }
    struct var* shorter;
    int sDepth = 0;
    bool sUnnamed = false;
    if (o->shorterViaParam) {
        //O22: the shorter side names a scope variable of one PARAMETER's own type. Resolve it against
        //the argument actually being passed for that parameter - which is where the binding lives,
        //made wherever that value was constructed. If this caller only has a parameter of its own
        //there too, nothing resolves and the relation is recorded again as its own derived
        //obligation, moving the question one frame up.
        int idx = -1;
        for (int j = 0; j < func->type.vars.len; j++) {
            if (canonicalVar(ListGetIdx(&func->type.vars, j)) == canonicalVar(o->shorterViaParam)) { idx = j; break; }
        }
        if (idx < 0 || idx >= args.len) return;
        struct operand* arg = *(struct operand**)ListGetIdx(&args, idx);
        shorter = resolveEffectiveScopeVar(arg, canonicalVar(o->shorter));
        if (shorter == canonicalVar(o->shorter)) {
            struct var* argRoot = lvalueRootVar(arg);
            struct var* callerFn = ctx ? ctx->func : NULL;
            if (callerFn && argRoot && varIsParamOf(argRoot, callerFn)) {
                scopeObligationAddDerived(callerFn, longer, canonicalVar(o->shorter), argRoot, o->exact);
                return;
            }
            ErrMsgSemantic(tok, SCOPE_OBLIGATION_UNMET);
            obligationNote(o);
            return;
        }
    } else {
        bool sLanding;
        if (!calleeScopeAt(ctx, op, func, args, o->shorter, &shorter, &sDepth, &sUnnamed, &sLanding)) {
            shorter = canonicalVar(o->shorter);
            sDepth = 0;
        }
    }
    //O2a: where a side binds to one of the caller's own blocks, WHICH block decides it - an argument
    //from an inner block does not outlive one from an outer block. The program's scope (a global's referent, O1b)
    //outlives every other and is outlived by nothing else.
    bool ok;
    if (lUnnamed || sUnnamed) ok = lUnnamed && (!o->exact || sUnnamed);
    else ok = o->exact ? sameExactScope(canonicalVar(longer), lDepth, canonicalVar(shorter), sDepth)
                       : scopeCanFlowInto(ctx ? ctx->func : NULL, longer, normDepth(lDepth), shorter, normDepth(sDepth));
    if (!ok) {
        ErrMsgSemantic(tok, o->exact ? REFERENCE_NARROWED : SCOPE_OBLIGATION_UNMET);
        obligationNote(o);
    }
}

//O18a: the obligations deferred until their call's result landed - discharged at the end of the statement
//(or field, or initializer) the call is in, by when every landing site in it has been resolved
void checkCtorHereFits(struct checkCtx* ctx, struct operand* val, struct var* dstVar, int dstDepth, struct token tok);
void flushPendingDischarges(void) {
    for (int i = 0; i < pendingDischarges.len; i++) {
        struct pendingDischarge* pd = ListGetIdx(&pendingDischarges, i);
        if (pd->hereDepth >= 0) {
            if (pd->op->hereChecked) continue;
            if (pd->op->ctorLanded) checkCtorHereFits(pd->ctx, pd->op, pd->op->landedTo, pd->op->landedDepth, pd->tok);
            else checkCtorHereFits(pd->ctx, pd->op, NULL, pd->hereDepth, pd->tok);
            continue;
        }
        dischargeObligation(pd->ctx, pd->op, pd->func, pd->args, pd->tok,
                            ListGetIdx(&pd->func->type.scopeObligations, pd->obligation));
    }
    pendingDischarges.len = 0;
}

static struct operand* spreadSourceOf(struct operand* arg);
void reportArgCount(struct list args, struct token tok);
static void ensureBodyChecked(struct var* func);
struct operand* OperandFuncCall(struct checkCtx* ctx, struct var* func, struct list args, struct token tok,
                                struct list scopeArgNodes) {
    struct var* callerFunc = ctx ? ctx->func : NULL;
    //G9: a call to a generic never writes its type arguments - each is inferred by matching the actual
    //argument types against the declared parameter types, which G4 guarantees reaches every variable.
    //Done before anything else here, so everything below (arity, fit checking, scope bindings, the return
    //type) sees an ordinary non-generic function: the instantiation IS one.
    if (func->type.typeParams.len != 0) {
        struct list bindings = ListInit(sizeof(struct typeBinding));
        struct list numBound = ListInit(sizeof(struct str)); //T6b: variables a numeric argument bound
        bool ok = args.len == func->type.vars.len;
        //G9a: a numeric literal has no type worth defending (T6), so it binds nothing while any other
        //argument can: every non-literal is unified first, and a literal reaching an already-bound
        //variable is then left to adapt at the fit check like any other literal. A variable reached ONLY
        //by literals takes the widest of their own types, by the same rank a binary operator uses - so
        //"Pick(v, 7)" with an int64 v instantiates at int64, and "Pick(1, 2.5)" at float64.
        for (int i = 0; ok && i < args.len; i++) {
            struct operand* arg = *(struct operand**)ListGetIdx(&args, i);
            struct type paramT = (*(struct var*)ListGetIdx(&func->type.vars, i)).type;
            if (operandOnlyNumericLiterals(arg) && paramT.bType == BASETYPE_TYPEVAR) continue; //E4a: one too
            if (arg->pendingLambda) continue; //D16a: once the others have fixed what it can take
            if (OperandIsWrittenText(arg) && paramT.bType == BASETYPE_TYPEVAR) continue; //G9a, below
            //G9b: a variable an earlier argument - a method's receiver, say - already bound is no longer
            //inferred from this one: the argument is checked against the bound type as in any call, so E12's
            //conversions apply ("m.Get(key)" borrows a String value for a String& key)
            if (paramT.bType == BASETYPE_TYPEVAR && bindingGet(&bindings, paramT.name)) {
                //T6b: a variable a number bound widens to a later number of its family that the first flows into -
                //"max(i32, i64)" is max at Int64, as "i32 + i64" is an Int64. Never one a receiver bound (G9b).
                bool byNumber = false;
                for (int k = 0; k < numBound.len && !byNumber; k++) byNumber = StrCmp(*(struct str*)ListGetIdx(&numBound, k), paramT.name);
                struct type* bt = bindingGet(&bindings, paramT.name);
                if (byNumber && !operandIsLiteralLike(arg) && NumericFlows(*bt, arg->type, true)) *bt = TypeVanilla(arg->type.bType);
                continue;
            }
            if (paramT.bType == BASETYPE_TYPEVAR && !operandIsLiteralLike(arg) && TypeIsNumeric(arg->type)) ListAdd(&numBound, &paramT.name);
            if (!TypeUnify(paramT, arg->type, &bindings)) ok = false;
        }
        //G9a: written text adapts as a numeric literal does - "m.Put("apple", 1)" on a Map<String&, Int32> is the
        //String& the receiver already bound, and the text is then built as a temporary for it. Reached only by
        //text, the variable is the text's own type.
        for (int i = 0; ok && i < args.len; i++) {
            struct operand* arg = *(struct operand**)ListGetIdx(&args, i);
            struct type paramT = (*(struct var*)ListGetIdx(&func->type.vars, i)).type;
            if (!(OperandIsWrittenText(arg) && paramT.bType == BASETYPE_TYPEVAR)) continue;
            //T29c: text is a String by type, so a variable only text reaches is String - "id("hi").Trim()"
            struct type* textT = SemanticBuiltinType(StrFromCStr("String"));
            struct type tt = arg->type;
            if (textT) { tt = *textT; tt.structMAlloc = false; }
            if (!bindingGet(&bindings, paramT.name) && !TypeUnify(paramT, tt, &bindings)) ok = false;
        }
        for (int i = 0; ok && i < args.len; i++) {
            struct operand* arg = *(struct operand**)ListGetIdx(&args, i);
            struct type paramT = (*(struct var*)ListGetIdx(&func->type.vars, i)).type;
            if (!(operandOnlyNumericLiterals(arg) && paramT.bType == BASETYPE_TYPEVAR)) continue;
            if (bindingGet(&bindings, paramT.name)) continue;
            struct type widest = arg->type;
            for (int j = i +1; j < args.len; j++) {
                struct operand* other = *(struct operand**)ListGetIdx(&args, j);
                struct type otherT = (*(struct var*)ListGetIdx(&func->type.vars, j)).type;
                if (operandOnlyNumericLiterals(other) && otherT.bType == BASETYPE_TYPEVAR
                    && StrCmp(otherT.name, paramT.name) && numericTypeRank(other->type) > numericTypeRank(widest)) {
                    widest = other->type;
                }
            }
            TypeUnify(paramT, widest, &bindings);
        }
        //G19/G9c: a variable named only in a constraint is bound through it as soon as the variable it constrains is -
        //before the lambdas, which take their parameters' types from what is bound ("it.Count(fn(x) { ... })")
        for (int i = 0; ok && i < func->type.typeConstraints.len; i++) {
            struct type* c = ListGetIdx(&func->type.typeConstraints, i);
            struct type* bound = bindingGet(&bindings, c->name);
            if (bound && c->varConstraint && TypeIsGeneric(*c->varConstraint)) unifyThroughMethods(*c->varConstraint, *bound, &bindings);
        }
        //D16a: a lambda takes what the other arguments fixed - its parameters' types - and its result then binds
        //what only it reaches
        for (int i = 0; ok && i < args.len; i++) {
            struct operand* arg = *(struct operand**)ListGetIdx(&args, i);
            if (!arg->pendingLambda) continue;
            struct type paramT = TypeSubstitute((*(struct var*)ListGetIdx(&func->type.vars, i)).type, &bindings);
            FinalizeLambda(arg, &paramT);
            if (!TypeUnify((*(struct var*)ListGetIdx(&func->type.vars, i)).type, arg->type, &bindings)) ok = false;
        }
        //G11a: a "<T>&" parameter takes a reference, so T must be bound to what can be one
        for (int i = 0; ok && i < func->type.vars.len; i++) {
            struct type pt = (*(struct var*)ListGetIdx(&func->type.vars, i)).type;
            if (pt.bType != BASETYPE_TYPEVAR || !pt.structMAlloc) continue;
            struct type* bt = bindingGet(&bindings, pt.name);
            if (bt && bt->bType != BASETYPE_STRUCT && bt->bType != BASETYPE_ARRAY && bt->bType != BASETYPE_CHOICE
                    && bt->bType != BASETYPE_TYPEVAR) {
                ErrMsgSemantic(tok, REF_TYPEVAR_NOT_AGGREGATE);
                ok = false;
            }
        }
        //G19: what the constraints bind, and whether each holds - reported here, at the call
        if (ok && !checkTypeConstraints(&func->type.typeConstraints, &bindings, tok)) {
            struct operand* bad = operandNew(tok, OPERATION_FUNCCALL, TypeVanilla(BASETYPE_INT32));
            bad->readVar = func;
            bad->args = args;
            return bad;
        }
        for (int i = 0; ok && i < func->type.typeParams.len; i++) {
            if (!bindingGet(&bindings, *(struct str*)ListGetIdx(&func->type.typeParams, i))) ok = false;
        }
        if (!ok) {
            struct operand* a0 = args.len ? *(struct operand**)ListGetIdx(&args, 0) : NULL;
            if (args.len != func->type.vars.len && a0 && spreadSourceOf(a0)) reportArgCount(args, tok); //D8d
            else ErrMsgSemantic(tok, func->type.hasRetType && func->type.retType->ctorFunc == func
                                     ? CTOR_TYPE_ARGS_NOT_INFERABLE : TYPE_ARGS_NOT_INFERABLE);
            struct operand* bad = operandNew(tok, OPERATION_FUNCCALL, TypeVanilla(BASETYPE_INT32));
            bad->readVar = func;
            bad->args = args;
            return bad;
        }
        //G10c: a generic type's constructor called with no written type arguments infers them as a generic
        //function's are inferred, and the call targets that instantiation's own constructor (G10a)
        if (func->type.hasRetType && func->type.retType->ctorFunc == func) {
            struct type* spec = instantiateType(func->type.retType, &bindings);
            func = spec->ctorFunc;
        } else func = instantiateFunc(func, &bindings);
    }
    struct type ret = func->type.hasRetType ? *func->type.retType : TypeVanilla(BASETYPE_VOID);
    struct operand* op = operandNew(tok, OPERATION_FUNCCALL, ret);
    op->readVar = func;
    op->args = args;

    //E14: the count is a range once parameters may declare defaults (D8a) - at least the undefaulted
    //ones, at most all of them. Every slot the caller left off, and every one written as the "default"
    //keyword (E14a), is filled in here with that parameter's own declared literal, so everything below
    //this point sees an ordinary, fully-populated argument list and needs no notion of defaults at all.
    int required = func->type.vars.len;
    while (required > 0 && (*(struct var*)ListGetIdx(&func->type.vars, required -1)).defaultVal) required--;
    if (args.len < required || args.len > func->type.vars.len) {
        reportArgCount(args, tok);
        return op;
    }
    for (int i = 0; i < func->type.vars.len; i++) {
        struct var* param = ListGetIdx(&func->type.vars, i);
        if (i >= args.len) { ListAdd(&args, &param->defaultVal); continue; }
        struct operand* a = *(struct operand**)ListGetIdx(&args, i);
        if (!a->isDefaultArg) continue;
        if (!param->defaultVal) { ErrMsgSemantic(a->tok, DEFAULT_ARG_NO_DEFAULT); return op; }
        *(struct operand**)ListGetIdx(&args, i) = param->defaultVal;
    }
    op->args = args;
    //records, for each of func's own scope variables, what this call site binds it to (O17/O18). Built
    //*before* the type-fit-checking loop
    //below (moved up from its original spot after it) - that loop needs it to resolve a later
    //parameter's own "&name" tag: by D9/O4, that tag can only ever name one of func's OWN earlier
    //parameters, never anything in the calling function's own frame, so comparing it against callerFunc's
    //own parameters directly (scopeCanFlowInto's ordinary "is this one of func's own params" test) would
    //always fail as unverifiable-and-therefore-rejected otherwise - see the report on why "unverifiable"
    //now means reject, not allow, and why that made this substitution load-bearing rather than optional.
    //Lets a later read of this call's own return value (or, one hop further, a var initialized from it)
    //resolve a scope tag that's one of func's own params back into something meaningful in the caller's
    //frame too - see resolveEffectiveScopeVar. Works identically whether func is an ordinary function or a
    //struct's synthetic constructor - both are just a BASETYPE_FUNC var, no special-casing needed here
    //either.
    //boundTo is stored canonicalized (see canonicalVar): this call may be checked inside a body where the
    //argument's own readVar is a scope-chain copy (an ordinary function/constructor's own parameter, read
    //back as a value - see canonicalVar's own comment), and when this map ends up *persisted* past this
    //one check (a constructor field's own scopeBindings - see semaCheckBodies/the "field of a field" entry
    //in the report), storing the type-level original is what makes it a portable, comparable key/value
    //for any later, unrelated caller's own resolveEffectiveScopeVar lookup.
    //O17: every scope variable named by some parameter's type binds to that argument's own effective
    //scope; all parameters naming the same variable must agree. O18: one named by no parameter is
    //supplied by the caller's scope argument, defaulting to the caller's own scope (NULL).
    ensureBodyChecked(func); //O10b: its obligations, before this call is held to them
    int obligedNow = func->type.scopeObligations.len;
    bindCallScopeVars(ctx, op, func, args, tok, scopeArgNodes);
    recordCall(ctx, op, func, args, tok, obligedNow); //O10c: to be held to any it gains later
    applyResultBindings(ctx, op, func, args); //O13c
    for (int i = 0; i < func->type.vars.len; i++) {
        struct var* param = ListGetIdx(&func->type.vars, i);
        struct operand* arg = *(struct operand**)ListGetIdx(&args, i);
        //a argument may itself already carry a real scopeBindings map (e.g. a fresh call
        //to another constructor, "WrappedPoint(s, ...)", passed as this argument) - merge it into op's own
        //map so a BARE-PUN field on the callee's own type (one that just forwards this parameter's value
        //unchanged, with no explicit initializer of its own to persist a map from - see
        //semaCheckBodies/OperandMember's own "carry base's map forward" step) can still resolve through it
        //later, via whatever this call's own result gets assigned/persisted onto. Every entry merged here
        //has THIS parameter (param, canonicalized) PUSHED onto whatever path it already carried (see
        //viaPathPush) - not overwritten - so a chain of nested bare-pun forwarding threads its full history
        //through, one push per call boundary crossed, and two DIFFERENT arguments that happen to be
        //instances of the exact same constructor-bearing type (the same typeParam key) never collide: they
        //end up as two separate entries whose paths differ at the position this push just added, not one
        //ambiguous merge. See struct scopeBinding's own comment and OperandMember's carry-forward step,
        //which POPS one frame at a time to consume this. A genuine conflict can still happen WITHIN one
        //argument's own already-merged map (two of ITS OWN entries ending up with the exact same resulting
        //(typeParam, path) pair) - marked SCOPE_AMBIGUOUS rather than silently keeping whichever was merged
        //first, same as everywhere else this sentinel is used.
        for (int j = 0; j < arg->scopeBindings.len; j++) {
            struct scopeBinding* e = ListGetIdx(&arg->scopeBindings, j);
            struct list pushedPath = viaPathPush(param, e->viaPath);
            struct scopeBinding* existing = NULL;
            for (int k = 0; k < op->scopeBindings.len; k++) {
                struct scopeBinding* have = ListGetIdx(&op->scopeBindings, k);
                if (canonicalVar(have->typeParam) == canonicalVar(e->typeParam)
                        && viaPathsEqual(have->viaPath, pushedPath)) { existing = have; break; }
            }
            if (existing) {
                if (canonicalVar(existing->boundTo) != canonicalVar(e->boundTo)) existing->boundTo = SCOPE_AMBIGUOUS;
            } else {
                struct scopeBinding nb = (struct scopeBinding){0};
                nb.typeParam = e->typeParam;
                nb.boundTo = e->boundTo;
                nb.viaPath = pushedPath;
                ListAdd(&op->scopeBindings, &nb);
            }
        }
    }
    for (int i = 0; i < args.len; i++) {
        struct operand* arg = *(struct operand**)ListGetIdx(&args, i);
        struct type paramType = (*(struct var*)ListGetIdx(&func->type.vars, i)).type;
        //a parameter's own "&name" tag names one of THIS SAME signature's earlier scope variables
        //(D9/O4), never anything in callerFunc's own frame - resolve it through this call's own
        //just-built binding map (above) before checking fit, so scopeCanFlowInto compares against what
        //was actually passed for it at this call, not the callee's own otherwise-foreign parameter
        //identity (never one of callerFunc's own params, so always unverifiable, and unverifiable now
        //means reject - see the report).
        if (paramType.scopeParam) paramType.scopeParam = resolveEffectiveScopeVar(op, paramType.scopeParam);
        reportTypeFit(OperandFitsType(callerFunc, arg, paramType), arg->tok);
        //E12a is gone: an lvalue argument now BORROWS the caller's instance (E12c) instead of being
        //copied into the parameter, so "&" reliably names what the caller passed - which is exactly the
        //property E12a used to secure by rejecting the case outright, at the cost of forcing every
        //passable array to be declared "&" up front. The lifetime half is checked by OperandFitsType
        //above, against paramType's already-resolved scope tag.
        //What remains is D9's other half: "mut" says whether the callee may write. Binding an IMMUTABLE
        //lvalue to a "mut &" parameter would launder that away - the callee writes through to something
        //the caller is not allowed to write itself. This was a real hole before E12a's removal, not one it
        //created: an already-reference argument was never checked either, so an immutable "p P&" parameter
        //passed straight into a "mut P&" one let the callee write it. A temporary is exempt - nothing else
        //can observe it, so there is no promise to break.
        //(now T25c: a "mut" reference parameter's type is writable, and the fit above refuses a read-only argument)
    }
    return op;
}

//"len(arr)" - unlike C, an olang array always carries its own length; this is the one sanctioned way to
//read it. Returns int32, matching the integer type used everywhere else in the language - an array
//length never needs int64's extra range in practice, and int32(len(arr)) is one call away for the rare
//case that does (see OperandNumericConversion below); the underlying runtime slice field is i64, so the
//runtime-length case truncates - see cgLen. Always evaluates arg (kept as this operand's own arg, for any side
//effects a more complex argument expression might have), but for a compile-time-known dimension
//(embedded, or a "&"-tagged compile-time-length reference) codegen emits the constant directly rather than
//computing anything at runtime - only a genuinely runtime-length ("T[]") array reads its length from the
//runtime slice.
//P9: one of the five atomic builtins. `kind` decides the arity and the result type; every one takes a
//mutable integer lvalue first, because atomicity is a property of a single machine word and the operation
//lowers to exactly one instruction with nowhere to put a conversion.
struct operand* OperandAtomic(struct list args, enum operation kind, struct token tok) {
    int want = (kind == OPERATION_ATOMIC_LOAD) ? 1 : (kind == OPERATION_ATOMIC_CAS ? 3 : 2);
    struct type resT = TypeVanilla(kind == OPERATION_ATOMIC_STORE ? BASETYPE_VOID : BASETYPE_INT32);
    if (args.len != want) {
        reportArgCount(args, tok);
        return operandNew(tok, OPERATION_NONE, resT);
    }
    struct operand* target = *(struct operand**)ListGetIdx(&args, 0);
    if (!TypeIsInt(target->type)) {
        ErrMsgSemantic(target->tok, ATOMIC_NOT_INTEGER);
        return operandNew(tok, OPERATION_NONE, resT);
    }
    //P9: atomicLoad only reads, so a read-only place serves - a flag set by one task is read by others through
    //read-only references
    if (!OperandIsLvalue(target) || (kind != OPERATION_ATOMIC_LOAD && !OperandIsMutableLvalue(target))) {
        ErrMsgSemantic(target->tok, kind == OPERATION_ATOMIC_LOAD ? ATOMIC_LOAD_NOT_LVALUE : ATOMIC_NOT_MUTABLE);
        return operandNew(tok, OPERATION_NONE, resT);
    }
    if (kind != OPERATION_ATOMIC_STORE) resT = target->type;
    struct operand* op = operandNew(tok, kind, resT);
    ListAdd(&op->args, &target);
    for (int i = 1; i < args.len; i++) {
        struct operand* v = *(struct operand**)ListGetIdx(&args, i);
        //a literal still adapts by representability, exactly as against any other same-type-requiring
        //position (T6); anything else must already be the target's type
        if (operandOnlyNumericLiterals(v)) reportTypeFit(OperandFitsType(NULL, v, target->type), v->tok);
        else if (!TypeIsSame(v->type, target->type)) ErrMsgSemantic(v->tok, ATOMIC_VALUE_TYPE);
        ListAdd(&op->args, &v);
    }
    return op;
}

//T10: "a.Len()" - every array's length, an Int64. Supplied by the compiler rather than declared, since the
//length lives in the array's representation where no olang code can reach it
struct operand* OperandLen(struct operand* arg, struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_LEN, TypeVanilla(BASETYPE_INT64));
    ListAdd(&op->args, &arg);
    return op;
}

//E33: "x.Bits()" and "u.F64FromBits()" - arg's bits read as type to, of the same width. Supplied by the compiler,
//since no other operation reaches a value's representation; a value made from a value, never a view of storage
static struct operand* OperandBitcast(struct operand* arg, struct type to, struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_BITCAST, to);
    ListAdd(&op->args, &arg);
    return op;
}

//peeks whether name is one of the five numeric primitive type names - never reports an error (unlike
//resolveLiteralBaseType, which assumes the caller already knows this position names a type); used only
//to decide whether "NAME(args)" should be treated as the explicit numeric-conversion builtin before
//falling through to the ordinary call-target lookup, the same way "len" is intercepted just above.
//Deliberately excludes "Bool" - not numeric (T5), nothing to convert to/from.
bool numericPrimitiveBaseType(struct str name, enum baseType* out) {
    return PrimByName(name, out); //T4
}

//"TypeName(x)" - the explicit numeric-conversion builtin (see the report): a real runtime instruction,
//unlike a numeric literal's own implicit widening (numericLiteralFits), which never needed one.
//Deliberately permissive about direction (widening AND narrowing both go through this one mechanism,
//never a separate "checked" vs "unchecked" pair) - explicit means the programmer already said what they
//want, the same trust this language already extends at every other system boundary (E16's own unchecked
//indexing, for one). Converting a type to itself is accepted as a harmless identity, not a redundant-use
//error - unlike REDUNDANT_ARRAY_SIZE, there's no second thing here that could disagree with it.
//T29: "Name(x)" where Name is a declared type over something that is not numeric - an array, most
//usefully. The two must share a representation, so this is purely a change of type: codegen emits nothing.
//It is what makes a nominal array type constructible at all; without it "type String byte[]" would have
//an identity and no way to produce a value of it.
struct operand* OperandSlice(struct operand* base, struct operand* lo, struct operand* hi, struct token tok);
struct operand* OperandNominalConversion(struct type target, struct operand* arg, struct token tok) {
    //"fits", not "is identical": a compile-time-length literal reaching a run-time-length named type is
    //E12's ordinary promotion, and a conversion should admit everything an assignment to the underlying
    //type would. Only the NAME is being changed here; whether the value can get there is E12's question.
    struct type underlying = target;
    underlying.owner = NULL;
    underlying.name = (struct str){0};
    //T29h: an array of a declared number and an array of its base share a representation too - "String(bytes)"
    bool sameElems = target.bType == BASETYPE_ARRAY && arg->type.bType == BASETYPE_ARRAY && target.arrElem
                     && arg->type.arrElem && target.arrMalloc == arg->type.arrMalloc
                     && target.structMAlloc == arg->type.structMAlloc && TypeIsSameRepr(*target.arrElem, *arg->type.arrElem);
    //...and what fits an array of the element's base fits too: "String(U8['a', 'b'])"
    struct type baseElems = underlying;
    if (underlying.bType == BASETYPE_ARRAY && underlying.arrElem && underlying.arrElem->owner && !underlying.arrElem->hasCtor
            && TypeIsNumeric(*underlying.arrElem)) {
        baseElems.arrElem = MallocOrCrash(sizeof(struct type));
        *baseElems.arrElem = TypeVanilla(underlying.arrElem->bType);
    }
    if (!TypeIsSameRepr(target, arg->type) && !sameElems
            && OperandFitsType(NULL, arg, underlying) != TYPE_FIT_OK
            && (baseElems.arrElem == underlying.arrElem || OperandFitsType(NULL, arg, baseElems) != TYPE_FIT_OK)) {
        ErrMsgSemantic(arg->tok, NOMINAL_CONVERT_MISMATCH);
    }
    //T29a: a conversion names its argument's storage - a variable, a field, an element or a slice read under the
    //declared type's name, so it may be written exactly as the argument may, and a borrow of it is checked against
    //how long that storage lives. Only a temporary argument makes the conversion a value of its own. An inline field
    //(C2e) is lent as a slice of it, as everywhere a run-time length is wanted.
    if (target.bType == BASETYPE_ARRAY && target.arrMalloc && target.arrElem && arg->type.bType == BASETYPE_ARRAY
            && arg->type.arrElem && (OperandIsLvalue(arg) || arg->opType == OPERATION_SLICE)) {
        if (!arg->type.arrMalloc) arg = OperandSlice(arg, NULL, NULL, tok);
        struct type t = target;
        t.structMAlloc = arg->type.structMAlloc;
        t.refMut = arg->type.refMut;
        t.scopeParam = arg->type.scopeParam;
        t.scopeDepth = arg->type.scopeDepth;
        t.scopeWritten = arg->type.scopeWritten;
        t.arrElem = MallocOrCrash(sizeof(struct type));
        *t.arrElem = *target.arrElem;
        t.arrElem->refMut = arg->type.arrElem->refMut;
        arg->type = t;
        arg->viaConversion = true;
        return arg;
    }
    struct operand* op = operandNew(tok, OPERATION_NOMINAL_CONVERT, target);
    ListAdd(&op->args, &arg);
    return op;
}

struct operand* OperandNumericConversion(struct type target, struct operand* arg, struct token tok) {
    if (!TypeIsNumeric(arg->type)) {
        ErrMsgSemantic(arg->tok, OPERATION_REQUIRES_NUMBER);
        return operandNew(tok, OPERATION_NONE, target); //shaped like a successful conversion would be,
                                                          //so a caller expecting `target` doesn't also
                                                          //cascade a second, misleading mismatch error
    }
    struct operand* op = operandNew(tok, OPERATION_NUMERIC_CONVERT, target);
    ListAdd(&op->args, &arg);
    return op;
}

struct operand* OperandIndex(struct operand* base, struct operand* index, struct token tok) {
    if (base->type.bType != BASETYPE_ARRAY) {
        //an unknown base was reported where it was written. Either way the index keeps its operands, so what walks an
        //lvalue's chain (its mutability, its scope) finds them and nothing reads past the end of an empty list
        if (!base->type.unknown) ErrMsgSemantic(tok, NOT_AN_ARRAY);
        struct operand* op = operandNew(tok, OPERATION_INDEX, unknownTypeStandIn());
        ListAdd(&op->args, &base);
        ListAdd(&op->args, &index);
        return op;
    }
    if (!TypeIsInt(index->type)) ErrMsgSemantic(index->tok, OPERATION_REQUIRES_INT);

    struct type elemT = *base->type.arrElem;
    elemT.scopeDepth = base->type.scopeDepth; //O2a/O20: an element lives where its container does
    struct operand* op = operandNew(tok, OPERATION_INDEX, elemT);
    ListAdd(&op->args, &base);
    ListAdd(&op->args, &index);
    //E16: an index is not checked at run time, but where the index and the length are BOTH compile-time
    //known there is nothing to defer - an out-of-range constant is an error at the point it is written
    //rather than undefined behaviour when it is reached. Free, and it covers every literal index into a
    //fixed-size array.
    if (index->isLiteral && !base->type.arrMalloc && base->type.arrLen) {
        long long n = base->type.arrLen->intLiteralVal;
        if (index->intLiteralVal < 0 || index->intLiteralVal >= n) {
            ErrMsgSemantic(index->tok, INDEX_OUT_OF_RANGE);
        }
    }
    return op;
}

//E16a: "a[lo:hi]" is a BORROW of a's own storage with the pointer and length adjusted - never a copy and
//never an allocation, which is what makes it cheap and what makes its lifetime someone else's. The result
//is therefore a runtime-length reference ("T[]&") tagged to the scope a's storage belongs to, exactly as
//E12c derives it for any other borrow: slicing a local yields an own-scoped reference, slicing a "&s"-
//tagged array yields an "&s" one. Both bounds are materialised here when omitted, so nothing downstream
//has to know they could be missing.
struct operand* OperandSlice(struct operand* base, struct operand* lo, struct operand* hi, struct token tok) {
    if (base->type.bType != BASETYPE_ARRAY) {
        if (!base->type.unknown) ErrMsgSemantic(tok, SLICE_REQUIRES_ARRAY);
        return unknownPlaceholder(tok); //not a slice with no base - nothing reads past what it has
    }
    if (!lo) {
        lo = operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
        lo->isLiteral = true;
        lo->intLiteralVal = 0;
    }
    if (!hi) hi = OperandLen(base, tok);
    if (!TypeIsInt(lo->type)) ErrMsgSemantic(lo->tok, OPERATION_REQUIRES_INT);
    if (!TypeIsInt(hi->type)) ErrMsgSemantic(hi->tok, OPERATION_REQUIRES_INT);

    struct type t = (struct type){0};
    t.bType = BASETYPE_ARRAY;
    t.arrElem = MallocOrCrash(sizeof(struct type));
    *t.arrElem = *base->type.arrElem;
    t.arrMalloc = true;   //a slice's length is a run-time value even when the array's was not
    t.structMAlloc = true; //and it is a reference: it names storage the base already owns
    //T29a: part of a declared array type is that type - a slice of a String is text
    t.owner = base->type.owner;
    t.name = base->type.name;
    bool isGlobal = false;
    int baseDepth = 0;
    t.scopeParam = lvalueStorageScope(base, &isGlobal, &baseDepth);
    t.scopeDepth = baseDepth; //O2a: a slice of a block-local names that block's storage
    t.refMut = TypeIsPermRef(base->type) ? OperandGivesWritable(base) : OperandIsMutableLvalue(base); //T25c

    struct operand* op = operandNew(tok, OPERATION_SLICE, t);
    ListAdd(&op->args, &base);
    ListAdd(&op->args, &lo);
    ListAdd(&op->args, &hi);
    return op;
}

//M6a: a member's own capitalization decides its visibility, exactly as a top-level declaration's does - a
//lowercase field is private to the module that declared its type. Without this an exported type exposed
//every field it had, so "exported" was all-or-nothing at the type and a struct could keep nothing to
//itself. referencingMod is the module doing the reading; NULL skips the check (no cross-module question
//can arise - a destructor reading its own fields, say).
//the scope a member/index access's own storage belongs to: the nearest enclosing reference's scope, or
//own when the chain bottoms out at a plain local.
static struct var* containerScopeOfOperand(struct operand* op, int* depth) {
    *depth = 0;
    while (op->opType == OPERATION_MEMBER || op->opType == OPERATION_INDEX) {
        if (op->type.structMAlloc) return resolveScopeWithDepth(op, op->type.scopeParam, depth);
        struct operand* base = *(struct operand**)ListGetIdx(&op->args, 0);
        if (base->type.structMAlloc) return resolveScopeWithDepth(base, base->type.scopeParam, depth);
        op = base;
    }
    if (op->type.structMAlloc) return resolveScopeWithDepth(op, op->type.scopeParam, depth);
    if (op->opType == OPERATION_READ_VAR && op->readVar && canonicalVar(op->readVar)->valueHomeSet) {
        *depth = canonicalVar(op->readVar)->valueHomeDepth;
        return canonicalVar(op->readVar)->valueHome; //O25a: a value local whose references live elsewhere
    }
    struct var* home;
    if (valueRefsHome(op, &home)) return home; //O18c
    *depth = op->type.scopeDepth;
    return NULL; //a plain local or parameter: own
}

//C2d/O23: whether op is, or is reached through, a field whose scope this function knows only as its container's - a
//"&p" field of a container that arrived as a parameter. Such a field may be read, walked and repointed, but nothing
//may be built through it: its referent may live longer than the container, and its real scope is not here.
bool scopeViaFallback(struct operand* op) {
    while (op->opType == OPERATION_MEMBER || op->opType == OPERATION_INDEX) {
        if (op->opType == OPERATION_MEMBER && op->type.scopeParam) {
            for (int i = 0; i < op->scopeBindings.len; i++) {
                struct scopeBinding* b = ListGetIdx(&op->scopeBindings, i);
                if (canonicalVar(b->typeParam) == canonicalVar(op->type.scopeParam)) {
                    if (b->containerFallback) return true;
                    break;
                }
            }
        }
        op = *(struct operand**)ListGetIdx(&op->args, 0);
    }
    return false;
}

struct operand* OperandMember(struct semaModule* referencingMod, struct operand* base, struct str member, struct token tok) {
    if (base->type.unknown) return unknownPlaceholder(tok); //an unknown name or type, reported where it is written
    if (base->type.bType != BASETYPE_STRUCT) {
        ErrMsgSemantic(tok, UNKNOWN_STRUCT_MEMBER);
        return operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
    }
    struct var* memberVar = VarGetList(&base->type.vars, member);
    if (!memberVar) {
        ErrMsgSemantic(tok, UNKNOWN_STRUCT_MEMBER);
        return operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
    }
    //M6a. Report and CARRY ON with the member's real type: the member exists and its type is known, only
    //its visibility is wrong, so recovering as int32 made every later check on the expression fail again
    //for a reason that was not the problem - "v.data[0]" reported the privacy error and then "operand is
    //not an array", which points at a non-problem. One error explains it; the rest were noise.
    if (referencingMod && base->type.owner && base->type.owner != referencingMod && !isPublic(member)) {
        ErrMsgSemantic(tok, MEMBER_IS_PRIVATE);
    }
    struct operand* op = operandNew(tok, OPERATION_MEMBER, memberVar->type);
    op->memberName = member;
    op->memberMut = memberVar->mut;
    ListAdd(&op->args, &base);
    //if this field carries a scope tag (only possible for a constructor-bearing type - see the report),
    //resolve it through base's own scopeBindings map one hop and record the (possibly still-foreign)
    //result under the same key, so a later OperandFitsType check on THIS member operand resolves it too -
    //see resolveEffectiveScopeVar. A no-op (empty map on op) when the field has no scope tag, or base
    //carries no relevant binding for it - the field's own raw, unresolved scope tag is what scopeCanFlowInto
    //sees in that case, correctly rejected as unverifiable rather than allowed through (see the report on
    //why "unverifiable" now means reject).
    if (memberVar->type.scopeParam) {
        struct scopeBinding b = (struct scopeBinding){0};
        b.typeParam = memberVar->type.scopeParam;
        int bd = 0;
        b.boundTo = resolveScopeWithDepth(base, memberVar->type.scopeParam, &bd);
        b.boundDepth = b.boundTo ? 0 : bd; //O2a: which block, where it is one - a field of a local bound in an inner block
        //O23: where that resolves to nothing - the container arrived as a parameter, so its binding stayed
        //with whoever constructed it - the field's scope falls back to the CONTAINER's. Every path that
        //can put a value in the field required that value to outlive the container's construction scope,
        //which in turn outlives wherever the container now sits, so the container's scope is an
        //UNDERESTIMATE and never a claim. Reading it as own instead - which is what a bare "&" parameter
        //means literally (O4) - throws that away and makes a field of a parameter unreadable for anything
        //that has to outlive the call.
        //This is only sound because O22 keeps the WRITE side precise: every write into the field is still
        //checked against the type's own scope variable, not against the container. Weakening both halves
        //to the container's scope was tried and costs per-field precision; weakening only the read costs
        //nothing, because an underestimate can never outlive what it names.
        //O23a: a field of a parameter's value reads at a scope of this function's own standing for the binding the
        //argument made - the container's scope is still what a caller falls back to where that is not known, but
        //the relations the body records are about the field, and every caller that does know resolves them exactly
        if (b.boundTo == memberVar->type.scopeParam) {
            struct var* pv = base->opType == OPERATION_READ_VAR ? base->readVar : NULL;
            if (pv && pv->paramOf) {
                b.boundTo = derivedScopeVar(pv->paramOf, pv, memberVar->type.scopeParam);
                b.boundDepth = 0;
            } else {
                b.boundTo = containerScopeOfOperand(base, &bd);
                b.boundDepth = b.boundTo ? 0 : bd;
            }
            b.containerFallback = true;
        }
        b.viaPath = ListInit(sizeof(struct var*)); //empty - already a unique key on its own, see the report
        ListAdd(&op->scopeBindings, &b);
    }
    //"field of a field": if this field's own declared type is itself constructor-bearing, memberVar's own
    //scopeBindings (persisted once, at THIS field's declaration - see semaCheckBodies's ctor-body-check,
    //which builds this field's own initializer expression the same way any other call is built, then saves
    //its resulting map here) records, in terms of the field's own type's *inner* ctor scope params, what
    //each was bound to at the point this field's value was originally constructed. Composing each entry
    //through base's own map (one more resolveEffectiveScopeVar hop) is what lets a further member access
    //on THIS operand (e.g. the ".leaf" in "o.mid.leaf") resolve correctly - the map on the "mid" operand
    //itself now carries an entry keyed by MID's own "s", not just OUTER's - see the report. A no-op (empty
    //loop) whenever the field's own type has no such map of its own, e.g. an ordinary plain struct field.
    //(this field itself is never a bare pun here - it has its own explicit initializer, or this loop would
    //be a no-op - so inner's own viaPath, if any, is carried forward UNCHANGED, not pushed/popped: it
    //records history from INSIDE this field's own initializer call, which a further member access on THIS
    //operand may still need intact to disambiguate something nested deeper within it.)
    for (int i = 0; i < memberVar->scopeBindings.len; i++) {
        struct scopeBinding* inner = ListGetIdx(&memberVar->scopeBindings, i);
        struct scopeBinding b = (struct scopeBinding){0};
        b.typeParam = inner->typeParam;
        int ibd = 0;
        b.boundTo = inner->boundTo ? resolveScopeWithDepth(base, inner->boundTo, &ibd) : NULL;
        b.boundDepth = b.boundTo ? 0 : (inner->boundTo ? ibd : 0);
        //C2d: built in the containing instance's scope - which, seen from here, is where base lives
        if (b.boundTo && b.boundTo != SCOPE_AMBIGUOUS && canonicalVar(b.boundTo)->isInstanceScope) {
            b.boundTo = containerScopeOfOperand(base, &ibd);
            b.boundDepth = b.boundTo ? 0 : ibd;
        }
        b.viaPath = inner->viaPath;
        ListAdd(&op->scopeBindings, &b);
    }
    //a BARE-PUN field (one whose value is literally a constructor parameter, forwarded unchanged - see
    //semaCheckBodies) has no initializer expression of its own to persist a map from, so memberVar's own
    //scopeBindings above is empty for it even when the field's own type is constructor-bearing - the
    //relevant substitution instead lives on base's own map already, merged in there by OperandFuncCall at
    //whatever call site actually constructed the value base now holds (see OperandFuncCall's own "merge a
    //non-scope argument's own map" step, which PUSHES rather than overwrites - see struct scopeBinding and
    //viaPathPush's own comments). An entry there is only carried forward here if it's either unambiguous
    //regardless of path (an EMPTY viaPath - e.g. base's own top-level scope-variable bindings, universal
    //to the whole instance) or if the TOP of its path names THIS field's own punned parameter
    //(memberVar->punParam, canonicalized) - an entry whose top names a DIFFERENT sibling parameter (e.g.
    //base's "right" field's own inner scope param, while accessing base's "left") must never leak across,
    //which is exactly the false accept viaPath exists to prevent. punParam is NULL for a non-bare-pun
    //field, which correctly narrows this to only the unambiguous empty-path entries for it (a field with
    //its own explicit initializer already got its own precise map above - nothing further to gain from
    //base's here, and every existing "already set above" case is still skipped exactly as before). A
    //matching non-empty path has its top frame POPPED (see viaPathPopFront) before being copied forward -
    //this ONE level of nesting has now been resolved, but any REMAINING frames stay intact for a further
    //member access on THIS operand to pop in turn, one hop at a time, however many levels deep the actual
    //nesting goes - this is what makes the whole mechanism recursive rather than bounded to one hop. A
    //genuine remaining conflict (two selected entries sharing both typeParam AND the same popped path, with
    //different boundTo - possible after two independently-nested chains happen to collapse to the same
    //remaining path) is marked SCOPE_AMBIGUOUS rather than silently keeping whichever was found first - but
    //ONLY among candidates this loop itself is introducing (preLoop3Count guards that): an entry already
    //set by the two loops above is strictly more specific than anything base can offer and must win
    //outright, exactly as before, never be overwritten to ambiguous by a stale/irrelevant base entry that
    //happens to share its key.
    struct var* punParam = canonicalVar(memberVar->punParam);
    int preLoop3Count = op->scopeBindings.len;
    for (int i = 0; i < base->scopeBindings.len; i++) {
        struct scopeBinding* e = ListGetIdx(&base->scopeBindings, i);
        bool universal = e->viaPath.len == 0;
        bool matchesThisField = !universal && punParam != NULL
            && canonicalVar(*(struct var**)ListGetIdx(&e->viaPath, 0)) == punParam;
        if (!universal && !matchesThisField) continue;
        struct list carriedPath = universal ? e->viaPath : viaPathPopFront(e->viaPath);

        bool moreSpecificAlready = false;
        struct scopeBinding* existing = NULL;
        for (int j = 0; j < op->scopeBindings.len; j++) {
            struct scopeBinding* have = ListGetIdx(&op->scopeBindings, j);
            if (canonicalVar(have->typeParam) != canonicalVar(e->typeParam)) continue;
            if (j < preLoop3Count) { moreSpecificAlready = true; break; }
            if (viaPathsEqual(have->viaPath, carriedPath)) { existing = have; break; }
        }
        if (moreSpecificAlready) continue;
        if (existing) {
            if (canonicalVar(existing->boundTo) != canonicalVar(e->boundTo)) existing->boundTo = SCOPE_AMBIGUOUS;
            continue;
        }
        struct scopeBinding b = (struct scopeBinding){0};
        b.typeParam = e->typeParam;
        b.boundTo = e->boundTo;
        b.viaPath = carriedPath;
        ListAdd(&op->scopeBindings, &b);
    }
    return op;
}

struct operand* incDec(struct operand* in, enum operation opType, struct token tok) {
    struct operand* op = operandNew(tok, opType, in->type);
    ListAdd(&op->args, &in);
    if (in->type.unknown) return op; //an unknown name, reported where it is written
    if (!OperandIsLvalue(in) || in->viaConversion) {
        ErrMsgSemantic(tok, NOT_AN_LVALUE);
        return op;
    }
    if (!OperandIsNumeric(in)) ErrMsgSemantic(tok, OPERATION_REQUIRES_NUMBER);
    if (!OperandIsMutableLvalue(in)) {
        struct var* root = lvalueRootVar(in);
        ErrMsgSemantic(tok, root && root->isCapture && (!root->type.structMAlloc || root->isBorrowedCapture) ? CAPTURE_READ_ONLY : writeBlockedByPermission(in) ? READ_ONLY_REF_WRITE : writeIntoCallValue(in) ? WRITE_INTO_CALL_VALUE : VAR_IMMUTABLE);
    }
    return op;
}

//what kind of operand an operator requires, beyond "must be the same type as the other side" - REQ_NONE
//means no kind restriction at all (only EQ/NEQ: any type is comparable, structs/arrays included - see
//cgDeepEq in codegen.c)
enum operandReq { REQ_NONE, REQ_BOOL, REQ_INT, REQ_NUMERIC };

bool operandMeetsReq(struct operand* op, enum operandReq req) {
    switch (req) {
        case REQ_BOOL: return OperandIsBool(op);
        case REQ_INT: return OperandIsInt(op);
        case REQ_NUMERIC: return OperandIsNumeric(op);
        default: return true; //REQ_NONE
    }
}

char* operandReqErrMsg(enum operandReq req) {
    switch (req) {
        case REQ_BOOL: return OPERATION_REQUIRES_BOOL;
        case REQ_INT: return OPERATION_REQUIRES_INT;
        case REQ_NUMERIC: return OPERATION_REQUIRES_NUMBER;
        default: ErrorBugFound(); return NULL; //REQ_NONE never fails a check, so never needs a message
    }
}

//unary operators: what kind of operand is required, and whether the result is bool (versus the operand's
//own type). Prefix/postfix INC/DEC aren't listed here - they additionally require a mutable lvalue, which
//doesn't fit this shape, so they stay handled by incDec() above.
struct unOpRule { enum operandReq require; bool resultBool; };
struct unOpRule unOpRules[] = {
    [OPERATION_NOT]       = {REQ_BOOL,    true},
    [OPERATION_BTWSE_INV] = {REQ_INT,     false},
    [OPERATION_MINUS]     = {REQ_NUMERIC, false},
};


//E11c: every type "$" renders through its own Str, with the method that does it - instantiated for that type when
//the type is generic. Filled as "$" operands are built; codegen and the evaluator read it.
struct strMethod { struct type t; struct var* m; };
static struct list strMethods = {0};

//E11c: t's own Str, instantiated for t when t's type is generic
static struct var* concreteStrMethod(struct type t) {
    struct var* f = VarGetMethod(t.owner, StrFromCStr("Str"), t);
    if (!f || f->type.bType != BASETYPE_FUNC || f->type.vars.len != 1) return NULL;
    if (f->type.typeParams.len > 0) {
        struct list bindings = ListInit(sizeof(struct typeBinding));
        struct type p0 = (*(struct var*)ListGetIdx(&f->type.vars, 0)).type;
        if (!TypeUnify(p0, t, &bindings)) return NULL;
        f = instantiateFunc(f, &bindings);
    }
    return f;
}

struct var* SemanticStrOf(struct type t) {
    t.structMAlloc = false;
    t.refMut = false;
    if (!t.owner) return NULL;
    for (int i = 0; i < strMethods.len; i++) {
        struct strMethod* e = ListGetIdx(&strMethods, i);
        if (TypeIsSame(e->t, t)) return e->m;
    }
    return NULL;
}

//E11c: records the Str of t and of every type a rendering of t reaches - its fields, elements, payloads, and what
//its references name - stopping at a type with a Str of its own, whose parts it renders itself
static void noteStrMethods(struct type t, struct list* seen) {
    if (seen->len > 256) return;
    struct type v = t;
    v.structMAlloc = false;
    v.refMut = false;
    v.scopeParam = NULL;
    v.scopeDepth = 0;
    if (v.bType == BASETYPE_INTERFACE || v.bType == BASETYPE_FUNC || v.bType == BASETYPE_TYPEVAR) return;
    for (int i = 0; i < seen->len; i++) if (TypeIsSame(*(struct type*)ListGetIdx(seen, i), v)) return;
    ListAdd(seen, &v);
    if (v.owner && !SemanticStrOf(v)) {
        struct var* m = concreteStrMethod(v);
        if (m) {
            if (!strMethods.elemSize) strMethods = ListInit(sizeof(struct strMethod));
            struct strMethod e = { v, m };
            ListAdd(&strMethods, &e);
            return;
        }
    } else if (v.owner && SemanticStrOf(v)) return;
    if (v.bType == BASETYPE_ARRAY && v.arrElem) noteStrMethods(*v.arrElem, seen);
    if (v.bType == BASETYPE_STRUCT || v.bType == BASETYPE_CHOICE) {
        for (int i = 0; i < v.vars.len; i++) {
            struct var* f = ListGetIdx(&v.vars, i);
            if (v.bType == BASETYPE_STRUCT) noteStrMethods(f->type, seen);
            else for (int k = 0; k < f->type.vars.len; k++) noteStrMethods(((struct var*)ListGetIdx(&f->type.vars, k))->type, seen);
        }
    }
}

//E11c: a Str must have no observable effect - it runs as often as building the text needs. Judged once the program
//has checked, since that needs every body it reaches.
static void checkStrPurity(void) {
    for (int i = 0; i < strMethods.len; i++) {
        struct strMethod* e = ListGetIdx(&strMethods, i);
        struct token where = e->m->tok;
        const char* why = CtWhyNotEvaluable(e->m, &where);
        if (!why) continue;
        char* msg = MallocOrCrash(512);
        snprintf(msg, 512, "Str must have no effect a program could observe - '$' calls it as often as building the "
                 "text needs (E11c) - but it cannot be evaluated at compile time: %s", why);
        ErrMsgSemantic(e->m->tok, msg);
        if (where.lineNr != e->m->tok.lineNr || where.owner != e->m->tok.owner) ErrMsgSemanticNote(where, "here");
    }
}

//E11a/E11b: what "$x" and a text join produce - a byte[] VALUE, a temporary built in the scope it lands in
static struct type textValueType(void) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_ARRAY;
    t.arrElem = MallocOrCrash(sizeof(struct type));
    *t.arrElem = SemanticCharType(); //T29h: text is Chars
    t.arrMalloc = true; //run-time length; no reference marker (structMAlloc) - it is a value
    return t;
}

//E11a: which operands "$" can render - every value. A declared type met again on its own path is fine: a
//reference back into it is cut off at run time (E11a's depth limit). A call's several results render too,
//as "(a, b)" - the one place they are taken whole (D8c). Only a call returning nothing has no rendering.
struct renderSeen { struct semaModule* owner; struct str name; };
static bool strOfRenderableIn(struct type t, struct list* seen) {
    if (TypeIsNumeric(t)) return true; //T4
    switch (t.bType) {
        case BASETYPE_BOOL: case BASETYPE_TYPEVAR: case BASETYPE_FUNC:
            return true;
        case BASETYPE_ARRAY: return t.arrElem && strOfRenderableIn(*t.arrElem, seen);
        case BASETYPE_STRUCT: case BASETYPE_CHOICE: {
            if (t.owner && t.name.len) {
                for (int i = 0; i < seen->len; i++) {
                    struct renderSeen* r = ListGetIdx(seen, i);
                    if (r->owner == t.owner && StrCmp(r->name, t.name)) return true;
                }
                struct renderSeen r = { t.owner, t.name };
                ListAdd(seen, &r);
            }
            for (int i = 0; i < t.vars.len; i++) {
                struct var* v = ListGetIdx(&t.vars, i);
                if (t.bType == BASETYPE_CHOICE && v->type.bType != BASETYPE_STRUCT) continue;
                if (!strOfRenderableIn(v->type, seen)) return false;
            }
            return true;
        }
        default: return false;
    }
}

static bool strOfRenderable(struct type t) {
    if (t.bType == BASETYPE_VOID) return false;
    struct list seen = ListInit(sizeof(struct renderSeen));
    bool ok = strOfRenderableIn(t, &seen);
    ListDestroy(seen);
    return ok;
}

struct operand* OperandUnary(struct operand* in, enum operation opType, struct token tok) {
    FinalizeLambda(in, NULL); //D16b: an operand has no expected type
    switch (opType) {
        case OPERATION_PREFIX_INC: case OPERATION_PREFIX_DEC:
        case OPERATION_POSTFIX_INC: case OPERATION_POSTFIX_DEC:
            return incDec(in, opType, tok);
        case OPERATION_STR_OF: {
            struct operand* op = operandNew(tok, OPERATION_STR_OF, textValueType());
            ListAdd(&op->args, &in);
            if (!strOfRenderable(in->type)) {
                ErrMsgSemantic(tok, STR_OF_UNSUPPORTED_TYPE);
            }
            struct list seen = ListInit(sizeof(struct type));
            noteStrMethods(in->type, &seen);
            return op;
        }
        case OPERATION_NOT: case OPERATION_BTWSE_INV: case OPERATION_MINUS: {
            //negating a numeric LITERAL directly (not a general expression) folds the sign into the
            //literal's own value at compile time instead of building a genuine runtime negation - a
            //real, pre-existing gap found while testing negative int64 literals specifically: "-5" never
            //widened into a wider numeric target (numericLiteralFits) the way a bare "5" already
            //did, nor counted as a literal for ":=" inference (E4/D15), since a unary-minus node was
            //never itself isLiteral regardless of what it wrapped - matching the same "literal,
            //optionally negated by one leading unary -" shape T8 already recognizes for a compile-time-
            //constant array size, just not extended to ordinary numeric literals until now.
            if (opType == OPERATION_MINUS && in->isLiteral && TypeIsNumeric(in->type)) {
                struct operand* op = operandNew(tok, OPERATION_NONE, in->type);
                op->isLiteral = true;
                if (TypeIsFloat(in->type)) op->floatLiteralVal = -in->floatLiteralVal;
                else if (in->type.bType == BASETYPE_U64) {
                    //a U64 literal (above I64's maximum, L10) negated: I64's minimum is the one such value with a negative
                    litWide v = -intLiteralExact(in);
                    if (!intLiteralFitsIntType(v, TypeVanilla(BASETYPE_INT64))) ErrMsgSemantic(tok, INT_LITERAL_TOO_LARGE);
                    op->type = TypeVanilla(BASETYPE_INT64);
                    op->intLiteralVal = (long long)v;
                } else op->intLiteralVal = (long long)(0ULL - (unsigned long long)in->intLiteralVal);
                return op;
            }
            struct unOpRule rule = unOpRules[opType];
            struct operand* op = operandNew(tok, opType, rule.resultBool ? TypeVanilla(BASETYPE_BOOL) : in->type);
            ListAdd(&op->args, &in);
            if (!operandMeetsReq(in, rule.require)) ErrMsgSemantic(tok, operandReqErrMsg(rule.require));
            return op;
        }
        default:
            ErrorBugFound();
            return NULL;
    }
}

//binary operators: what kind each operand must be, whether both sides must additionally be the same
//type, and whether the result is bool (versus operand a's own type - every arithmetic/bitwise/shift
//result follows a's type)
struct binOpRule { enum operandReq require; bool sameType; bool resultBool; };
struct binOpRule binOpRules[] = {
    [OPERATION_AND]       = {REQ_BOOL,    false, true},
    [OPERATION_OR]        = {REQ_BOOL,    false, true},
    [OPERATION_XOR]       = {REQ_BOOL,    false, true},
    [OPERATION_LST]       = {REQ_NUMERIC, true,  true},
    [OPERATION_LSE]       = {REQ_NUMERIC, true,  true},
    [OPERATION_GRT]       = {REQ_NUMERIC, true,  true},
    [OPERATION_GRE]       = {REQ_NUMERIC, true,  true},
    [OPERATION_EQ]        = {REQ_NONE,    true,  true},
    [OPERATION_NEQ]       = {REQ_NONE,    true,  true},
    [OPERATION_BTSFT_L]   = {REQ_INT,     false, false}, //shift amount doesn't need to match the shifted type
    [OPERATION_BTSFT_R]   = {REQ_INT,     false, false},
    [OPERATION_BTWSE_AND] = {REQ_INT,     true,  false},
    [OPERATION_BTWSE_OR]  = {REQ_INT,     true,  false},
    [OPERATION_BTWSE_XOR] = {REQ_INT,     true,  false},
    [OPERATION_MOD]       = {REQ_INT,     true,  false},
    [OPERATION_ADD]       = {REQ_NUMERIC, true,  false},
    [OPERATION_SUB]       = {REQ_NUMERIC, true,  false},
    [OPERATION_MUL]       = {REQ_NUMERIC, true,  false},
    [OPERATION_DIV]       = {REQ_NUMERIC, true,  false},
};

//T6b: a numeric type's family - 0 integers, 1 floats - and its width, or -1 for anything else
static int numericFamilyRank(struct type t, int* family) {
    const struct primInfo* p = t.structMAlloc ? NULL : PrimInfo(t.bType);
    if (!p) return -1;
    *family = p->kind == 'f';
    return p->bits;
}

//T6b: whether a value of primitive kind a flows losslessly into b - wider within signed or within unsigned, unsigned
//into a strictly wider signed, F16 and BF16 into F32 into F64 (F16 and BF16 each keep something the other loses)
static bool primFlows(enum baseType a, enum baseType b) {
    const struct primInfo* p = PrimInfo(a);
    const struct primInfo* q = PrimInfo(b);
    if (!p || !q || p->bits >= q->bits) return false;
    if (p->kind == 'f' || q->kind == 'f') return p->kind == 'f' && q->kind == 'f' && q->bits >= 32;
    return p->kind == q->kind || (p->kind == 'u' && q->kind == 'i');
}

//T6b: whether a value of src flows into dst implicitly - dst is a built-in numeric type src flows into losslessly,
//or src's own base when src is declared over it (T29). Never into a declared type: that is its constructor's (T29d).
bool NumericFlows(struct type src, struct type dst, bool sameWidthToBase) {
    if (dst.owner || src.structMAlloc || dst.structMAlloc) return false;
    if (sameWidthToBase && src.owner && src.bType == dst.bType && PrimInfo(src.bType)) return true;
    return primFlows(src.bType, dst.bType);
}

//T6b/R20: a "try (...)" moved by a widening keeps its checks - each one inside that names the old address as its
//root is pointed at the new one. Walks what markChecked walks, which is everything that can name a root.
static void retargetChecksStmts(struct list* stmts, struct operand* from, struct operand* to);
static void retargetChecks(struct operand* op, struct operand* from, struct operand* to) {
    if (!op) return;
    if (op->checkRoot == from) op->checkRoot = to;
    if (op->opType == OPERATION_SEQ || op->opType == OPERATION_COMPREHENSION) retargetChecksStmts(&op->comprBody, from, to);
    for (int i = 0; i < op->args.len; i++) retargetChecks(*(struct operand**)ListGetIdx(&op->args, i), from, to);
}
static void retargetChecksStmts(struct list* stmts, struct operand* from, struct operand* to) {
    for (int i = 0; i < stmts->len; i++) {
        struct statement* st = ListGetIdx(stmts, i);
        retargetChecks(st->target, from, to);
        retargetChecks(st->op, from, to);
        retargetChecks(st->fillValue, from, to);
        retargetChecks(st->forInit, from, to);
        if (st->forPost) {
            struct list one = ListInit(sizeof(struct statement));
            ListAdd(&one, st->forPost);
            retargetChecksStmts(&one, from, to);
        }
        retargetChecksStmts(&st->block, from, to);
        if (st->elseStmnt) {
            struct list one = ListInit(sizeof(struct statement));
            ListAdd(&one, st->elseStmnt);
            retargetChecksStmts(&one, from, to);
        }
    }
}

//T6b: op becomes the widening of itself to t, in place, so whatever holds it now holds the conversion. What op was
//moves to a new address, so a tried expression's checks are pointed there (R20) - left naming op, they named the
//conversion, which has no clauses, and a failing check was emitted as unreachable.
static void operandWidenInPlace(struct operand* op, struct type t) {
    struct operand* inner = MallocOrCrash(sizeof(struct operand));
    *inner = *op;
    if (inner->isTried) retargetChecks(inner, op, inner);
    struct type to = TypeVanilla(t.bType);
    to.scopeDepth = op->type.scopeDepth;
    struct operand* conv = OperandNumericConversion(to, inner, op->tok);
    *op = *conv;
}

struct operand* OperandBinary(struct operand* a, struct operand* b, enum operation opType, struct token tok) {
    //D16a: a lambda compared with a function value is written against that value's type
    FinalizeLambda(a, b->pendingLambda ? NULL : &b->type);
    FinalizeLambda(b, &a->type);
    if (a->type.isTuple || b->type.isTuple) { //D8c: several results are not one operand
        ErrMsgSemantic(tok, TUPLE_NOT_A_VALUE);
        return operandNew(tok, opType, TypeVanilla(BASETYPE_INT32));
    }
    struct binOpRule rule = binOpRules[opType];
    //a numeric literal on either side adapts to its non-literal sibling's type (numericLiteralFits -
    //the same rule already applied at an assignment-context target, OperandFitsType) before the sameType
    //check below ever runs. A real, pre-existing gap found while testing this: E6 already documented "an
    //integer literal operand widens to match a float32/float64 operand" for +-*/%% specifically, but no code
    //anywhere ever implemented it - "x mut float32 = 2.5; y mut float32 = x + 5" failed outright. Applied
    //uniformly to every sameType-requiring operator here, not just arithmetic: leaving comparisons out while
    //arithmetic got it would be a real, confusing inconsistency ("x + 5" compiling but "x == 5" not, for the
    //exact same x) that T6's own general "wherever a float type is expected" wording gives no reason to draw
    //a line at. Mutates the literal operand's own type/value in place - safe because nothing else has taken
    //a reference to it yet at this point in the tree.
    //T29c: written text beside a String value is a String, as it is wherever one is wanted - "u == \"cm\""
    struct type* textT = rule.sameType ? SemanticBuiltinType(StrFromCStr("String")) : NULL;
    if (textT) {
        struct type tv = *textT;
        tv.structMAlloc = false;
        if (OperandIsWrittenText(a) && !OperandIsWrittenText(b) && TypeIsSame(b->type, tv)) a = OperandNominalConversion(tv, a, a->tok);
        else if (OperandIsWrittenText(b) && !OperandIsWrittenText(a) && TypeIsSame(a->type, tv)) b = OperandNominalConversion(tv, b, b->tok);
    }
    //E4a: a literal-only expression ("1.0 / 3.0") adapts here as a literal does - "f32 < 1.0 / 3.0" compares F32s
    bool aLit = operandIsLiteralLike(a), bLit = operandIsLiteralLike(b), unfit = false;
    if (rule.sameType && aLit != bLit) {
        struct operand* lit = aLit ? a : b;
        struct operand* other = aLit ? b : a;
        //T2a: "p == null" - null adapts to its sibling exactly as a numeric literal does. Reference
        //equality is pointer identity (E10), so this compares against a null pointer and needs no
        //operator of its own.
        if (lit->isNullLiteral && TypeIsNullable(other->type)) lit->type = other->type;
        else if (TypeIsNumeric(other->type) && TypeIsNumeric(lit->type) && !operandAdaptLiteral(lit, other->type)) {
            //E6d: a value the other's type cannot hold meets it at the literal's own type (T6a), as two numbers meet
            //(T6b) - "b + 300" with b a U8 is an I32, b widened; a literal-only expression is the literal holding its
            //value. Where the other's type does not flow there, they do not meet.
            struct operand saved = *lit;
            enum litValueFail why = lit->isLiteral ? LIT_VALUE_OK : literalExprFold(lit);
            if (!saved.isLiteral && why == LIT_VALUE_OK) markFoldedAway(&saved);
            unfit = true;
            if (why == LIT_VALUE_NONE) ErrMsgSemantic(lit->tok, LITERAL_EXPR_NOT_REPRESENTABLE);
            else if (why == LIT_VALUE_OK && NumericFlows(other->type, lit->type, true)) {
                operandWidenInPlace(other, lit->type);
                unfit = false;
            } else if (why == LIT_VALUE_OK) ErrMsgSemantic(tok, LITERAL_DOES_NOT_MEET);
        }
    }
    //both sides literals of differing numeric types ("'a' + 1", "1 + 2.5"): neither has a representation to
    //preserve, so the narrower adapts to the wider (numericTypeRank) rather than the pair being rejected for
    //not matching. Adapting the WIDER one down instead would silently reintroduce the wrap this avoids -
    //byte arithmetic on "200 + 100" - so the direction here is not arbitrary. A literal-only expression is one of the
    //two as a literal is: "(1 + 2) * 0.5" is F64 arithmetic
    else if (rule.sameType && aLit && bLit && !TypeIsSame(a->type, b->type)
            && TypeIsNumeric(a->type) && TypeIsNumeric(b->type)) {
        struct operand* lit = numericTypeRank(a->type) < numericTypeRank(b->type) ? a : b;
        struct operand* other = lit == a ? b : a;
        operandAdaptLiteral(lit, other->type);
    }
    //T6b: two numeric values of one family meet at the wider - the narrower widened, losing nothing, so an Int32 and
    //an Int64 add as Int64s; a declared type meets its base as the base. Two that neither flows into stay an error.
    if (rule.sameType && !aLit && !bLit && !TypeIsSame(a->type, b->type)) {
        if (NumericFlows(a->type, b->type, true)) operandWidenInPlace(a, b->type);
        else if (NumericFlows(b->type, a->type, true)) operandWidenInPlace(b, a->type);
    }
    //E8a: a constant shift amount out of range is settled here too, same split - a literal-only one (E4a) as a literal
    struct litValue bv = {0};
    bool bConst = (opType == OPERATION_BTSFT_L || opType == OPERATION_BTSFT_R || opType == OPERATION_DIV
                   || opType == OPERATION_MOD) && TypeIsInt(b->type) && operandOnlyNumericLiterals(b)
                  && literalExprValue(b, &bv) == LIT_VALUE_OK;
    //...except a literal-only shift's amount past its width (E4a): such a shift is computed exactly where it adapts
    //("x I64 = 1 << 40"), so its amount is judged only if nothing folds it - at the end, by checkLiteralShifts
    bool deferShift = false;
    if ((opType == OPERATION_BTSFT_L || opType == OPERATION_BTSFT_R) && bConst && TypeIsInt(a->type)) {
        long long width = TypeGetSize(a->type) * 8;
        if (bv.i >= width && bv.i >= 0 && operandOnlyNumericLiterals(a)) deferShift = true;
        else if (bv.i < 0 || bv.i >= width) {
            ErrMsgSemantic(b->tok, SHIFT_OUT_OF_RANGE_LITERAL);
        }
    }
    //E6a: a constant zero divisor is settled here rather than left to abort at run time - the same split
    //E16 makes for a constant index and D14b for a constant array length. Only a literal, or a literal-only
    //expression (E4a): a divisor with a name in it is checked where it is evaluated.
    if ((opType == OPERATION_DIV || opType == OPERATION_MOD) && bConst && bv.i == 0) {
        ErrMsgSemantic(b->tok, DIVIDE_BY_ZERO_LITERAL);
    }
    struct operand* op = operandNew(tok, opType, rule.resultBool ? TypeVanilla(BASETYPE_BOOL) : a->type);
    ListAdd(&op->args, &a);
    ListAdd(&op->args, &b);
    if (deferShift) ListAdd(&literalShifts, &op);

    bool aOk = operandMeetsReq(a, rule.require);
    bool bOk = operandMeetsReq(b, rule.require);
    if (!aOk) ErrMsgSemantic(a->tok, operandReqErrMsg(rule.require));
    if (!bOk) ErrMsgSemantic(b->tok, operandReqErrMsg(rule.require));
    if (rule.sameType && aOk && bOk && !unfit && !TypeIsSame(a->type, b->type))
        ErrMsgSemantic(tok, TypeIsNumeric(a->type) && TypeIsNumeric(b->type) ? NUMBERS_DO_NOT_MEET : OPERANDS_NOT_SAME_TYPE);
    return op;
}

//T2a: which types a "null" can be. Exactly the types whose runtime value is (or begins with) a pointer
//nothing has been made to point at yet: a "&"-marked struct or compile-time-length array (one ptr), a
//runtime-length array ({ i64 len, ptr }, always pointer-backed per T11), and an interface ({ ptr itab,
//ptr data }, T32 reference-only). Null is all-zero bits in every one of them, which is what makes a
//zero-filled global containing references all-null for free and gives "len(null)" the answer 0.
bool TypeIsNullable(struct type t) {
    if (t.bType == BASETYPE_FUNC && t.structMAlloc) return true; //D16: a function value is a reference
    if (t.bType == BASETYPE_ARRAY && t.arrMalloc) return true;
    if ((t.bType == BASETYPE_STRUCT || t.bType == BASETYPE_ARRAY || t.bType == BASETYPE_CHOICE) && t.structMAlloc) return true;
    return false;
}

//T2a: "null" carries its own base type only until it meets a target, exactly as a numeric literal carries
//int32 only until it does. Both retags happen in OperandFitsType/OperandBinary, and isNullLiteral is what
//survives them so codegen knows to emit the adapted type's zero value.
struct operand* OperandNullLiteral(struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_NULL));
    op->isLiteral = true;
    op->isNullLiteral = true;
    return op;
}

struct operand* OperandBoolLiteral(struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_BOOL));
    op->isLiteral = true;
    op->intLiteralVal = !strncmp(tok.str.ptr, "true", (size_t)tok.str.len) ? 1 : 0;
    return op;
}

long long decodeCharBody(char* ptr, int len) {
    if (len == 0) return 0;
    if (ptr[0] != '\\') return ptr[0];
    if (len < 2) return 0;
    switch (ptr[1]) {
        case 'n': return '\n';
        case 't': return '\t';
        case 'r': return '\r';
        case '0': return '\0';
        case '\\': return '\\';
        case '\'': return '\'';
        case '"': return '"';
        default: return ptr[1];
    }
}

struct operand* OperandCharLiteral(struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, SemanticCharType()); //T29h: 'a' is a Char
    op->isLiteral = true;
    op->intLiteralVal = decodeCharBody(tok.str.ptr +1, tok.str.len -2);
    return op;
}

//T6a: an integer literal's own type is int32 when its value fits one and int64 otherwise. The fallback
//matters even though T6 no longer cares about the tag when adapting: without it a literal too large for
//int32 was tagged int32 anyway, so an int32 target matched it EXACTLY, skipped T6 entirely, and truncated
//it silently at codegen.
struct operand* OperandIntLiteralValue(struct token tok, long long value, bool u64);

//what an unknown name, already reported, stands for: of the stand-in type every check lets through, so the one
//misspelling is the one error - "nope[0] = 1" is not also "operand is not an array"
static struct operand* unknownPlaceholder(struct token tok) {
    struct operand* op = OperandIntLiteralValue(tok, 0, false);
    op->type = unknownTypeStandIn();
    return op;
}

struct operand* OperandIntLiteral(struct token tok) {
    char buf[tok.str.len +1];
    memcpy(buf, tok.str.ptr, (size_t)tok.str.len);
    buf[tok.str.len] = '\0';
    bool tooLarge;
    long long value = parseIntLiteralChecked(buf, &tooLarge);
    //L10/T6a: a decimal literal beyond 64 bits is an error, and one above I64's maximum is a U64 - the type E4a already
    //gives a literal-only expression folding to such a value. A hex or binary literal is a bit pattern (L10a): its
    //64 bits read as an I64, so 0xFFFFFFFFFFFFFFFF is -1
    if (tooLarge) ErrMsgSemantic(tok, INT_LITERAL_TOO_LARGE);
    return OperandIntLiteralValue(tok, value, !tooLarge && value < 0 && buf[0] != '-' && intLiteralIsDecimal(tok.str));
}

//an integer literal whose value is already known - a -D build constant's (B10) - typed as T6a types its literal: a U64
//where it is one (its bits in value), else I32 where it fits and I64 otherwise
struct operand* OperandIntLiteralValue(struct token tok, long long value, bool u64) {
    struct operand* op = operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
    op->isLiteral = true;
    op->intLiteralVal = value;
    if (u64) op->type = TypeVanilla(BASETYPE_U64);
    else if (!intLiteralFitsIntType(op->intLiteralVal, TypeVanilla(BASETYPE_INT32))) {
        op->type = TypeVanilla(BASETYPE_INT64);
    }
    return op;
}

//T6a: a float literal's own type is F64, as in C, Go and Rust - so "x := 0.1" and a generic "describe(0.1)" hold the
//double nearest 0.1, not the float nearest it. A typed target still adapts it (T6): "f F32 = 0.1" stays an F32.
struct operand* OperandFloatLiteral(struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_FLOAT64));
    op->isLiteral = true;
    char buf[tok.str.len +1];
    memcpy(buf, tok.str.ptr, (size_t)tok.str.len);
    buf[tok.str.len] = '\0';
    stripDigitSeparators(buf); //L10b
    op->floatLiteralVal = strtod(buf, NULL);
    //L12b: beyond F64's range a literal would be an infinity nobody wrote; below it, it rounds to zero or a subnormal
    if (isinf(op->floatLiteralVal)) ErrMsgSemantic(tok, FLOAT_LITERAL_OUT_OF_RANGE);
    return op;
}

//counts decoded bytes in a string literal body (each "\X" escape pair collapses to one byte)
long long decodeStringLen(char* ptr, int len) {
    long long n = 0;
    for (int i = 0; i < len; i++) {
        if (ptr[i] == '\\') i++;
        n++;
    }
    return n;
}

struct operand* OperandStringLiteral(struct token tok) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_ARRAY;
    t.arrElem = MallocOrCrash(sizeof(struct type));
    *t.arrElem = SemanticCharType(); //T29h: text is Chars
    t.arrMalloc = false;

    struct operand* lenOp = MallocOrCrash(sizeof(struct operand));
    *lenOp = (struct operand){0};
    lenOp->type = TypeVanilla(BASETYPE_INT64);
    lenOp->isLiteral = true;
    lenOp->intLiteralVal = decodeStringLen(tok.str.ptr +1, tok.str.len -2);
    t.arrLen = lenOp;

    struct operand* op = operandNew(tok, OPERATION_NONE, t);
    op->isLiteral = true;
    return op;
}

//"MyError.someWord" - errType must already be resolved (its words list populated); wordTok is checked
//against those words here since the grammar can't tell a valid member from a typo
struct operand* OperandErrorLiteral(struct type errType, struct token wordTok) {
    struct operand* op = operandNew(wordTok, OPERATION_NONE, errType);
    op->isLiteral = true;
    for (int i = 0; i < errType.words.len; i++) {
        struct token w = *(struct token*)ListGetIdx(&errType.words, i);
        if (StrCmp(w.str, wordTok.str)) {
            op->intLiteralVal = i;
            op->memberName = wordTok.str;
            return op;
        }
    }
    ErrMsgSemantic(wordTok, EXPECTED_ERROR_WORD);
    return op;
}

//"Type.WORD" - a choice value. intLiteralVal is the word's declared ordinal, same representation an error
//word already uses above - choice types communicate a fixed set and a selection from it, not a C-enum-
//style number: TypeIsNumeric/TypeIsInt (used to gate arithmetic/ordering operators) don't include
//BASETYPE_CHOICE, so those are already rejected for free once a value of this type exists at all -
//equality/inequality (REQ_NONE) and match/case (structural cgDeepEq, type-agnostic) already work
//generically for any type, including this one, with no choice-specific code needed there either.
struct list buildArgs(struct checkCtx* ctx, struct syntax* argsNode);
void rejectDefaultArgs(struct list args);
void bindCallScopeVars(struct checkCtx* ctx, struct operand* op, struct var* func, struct list args,
                       struct token tok, struct list scopeArgNodes);
struct var* resolveEffectiveScopeVar(struct operand* op, struct var* typeParam);

static void bindEnumHere(struct checkCtx* ctx, struct operand* op, struct var* synth);
struct operand* OperandChoiceValue(struct checkCtx* ctx, struct type choiceType, struct token wordTok,
                                   struct syntax* argsNode, struct list scopeArgNodes) {
    struct operand* op = operandNew(wordTok, OPERATION_NONE, choiceType);
    op->isLiteral = true;
    struct var* c = NULL;
    for (int i = 0; i < choiceType.vars.len; i++) {
        struct var* v = ListGetIdx(&choiceType.vars, i);
        if (StrCmp(v->name, strFromTok(wordTok))) { op->intLiteralVal = i; c = v; break; }
    }
    if (!c) { ErrMsgSemantic(wordTok, UNKNOWN_CHOICE_CASE); return op; }
    op->memberName = wordTok.str;
    //T17: the payload is checked exactly as a struct literal's fields are - same arity rule, same
    //assignability per field - because that is what it is. A case with no payload takes no arguments, and
    //writing some is the same mistake as giving a struct literal too many fields.
    struct list args = argsNode ? buildArgs(ctx, argsNode) : ListInit(sizeof(struct operand*));
    rejectDefaultArgs(args);
    if (args.len != c->type.vars.len) { reportArgCount(args, wordTok); return op; }
    //O17: a payload's "&name" tag names one of the CHOICE TYPE's own scope variables, never anything in
    //the constructing function's frame - so it is bound here from the arguments, exactly as a call binds a
    //callee's own scope variables, and resolved through that binding before any fit check. Without the
    //binding, "Val.Held(b)" where b is tagged to this function's own "&s" compares a foreign name against
    //the caller's frame, finds nothing, and rejects it as unverifiable. A synthetic func var carries the
    //two lists bindCallScopeVars reads; building one is cheaper than teaching it a second shape.
    struct var synth = (struct var){0};
    synth.type.bType = BASETYPE_FUNC;
    synth.type.vars = c->type.vars;
    synth.type.scopeVars = choiceType.scopeVars;
    synth.type.scopeObligations = ListInit(sizeof(struct scopeObligation));
    //O18: a scope variable no argument determined is supplied by a written scope argument, defaulting to
    //the caller's own scope. That is the only way to build a payload that is a FRESH value into a scope
    //outliving this function - an already-reference-shaped argument determines the tag by itself (O17).
    bindCallScopeVars(ctx, op, &synth, args, wordTok, (struct list){0});
    op->args = args;
    for (int i = 0; i < args.len; i++) {
        struct operand* a = *(struct operand**)ListGetIdx(&args, i);
        struct type want = (*(struct var*)ListGetIdx(&c->type.vars, i)).type;
        if (want.scopeParam) want.scopeParam = resolveEffectiveScopeVar(op, want.scopeParam);
        reportTypeFit(OperandFitsType(ctx ? ctx->func : NULL, a, want), a->tok);
    }
    //T17c/C2d: the payload lives where the value lands - existing storage stored in it held to that place
    if (ctx) bindEnumHere(ctx, op, &synth);
    //E25: a scope argument lands the value - and the temporaries built for its payload - where the named variable lives
    if (scopeArgNodes.len > 1) ErrMsgSemantic(wordTok, SCOPE_ARG_NOT_ACCEPTED);
    if (scopeArgNodes.len > 0 && ctx) {
        bool ok = false;
        int wDepth = 0;
        struct var* w = resolveScopeArg(ctx, *(struct syntax**)ListGetIdx(&scopeArgNodes, 0), &ok, &wDepth);
        if (ok) landCall(op, w, wDepth);
    }
    return op;
}


//"Point[1, 2]" - positional, in member-declaration order, each value checked the same way an assignment
//would check it. args becomes op->args (codegen reads the field values straight from there).
struct operand* OperandStructLiteral(struct var* callerFunc, struct type t, struct list args, struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, t);
    op->isLiteral = true;
    op->args = args;
    if (args.len != t.vars.len) { ErrMsgSemantic(tok, WRONG_ARG_COUNT); return op; }
    for (int i = 0; i < args.len; i++) {
        struct operand* arg = *(struct operand**)ListGetIdx(&args, i);
        struct type memberType = (*(struct var*)ListGetIdx(&t.vars, i)).type;
        reportTypeFit(OperandFitsType(callerFunc, arg, memberType), arg->tok);
    }
    return op;
}

//"int32[3][1, 2, 3]" (fixed - value count must match the declared size exactly) or "int32[][1, 2, 3]"
//(runtime-length - mallocd at runtime, see cgAggregateLiteral; length is just however many values given)
// ---- expressions ----

enum operation opFromTokType(enum tokenType t) {
    switch (t) {
        case TOK_MUL: return OPERATION_MUL;
        case TOK_DIV: return OPERATION_DIV;
        case TOK_MOD: return OPERATION_MOD;
        case TOK_ADD: return OPERATION_ADD;
        case TOK_SUB: return OPERATION_SUB;
        case TOK_BTSFT_L: return OPERATION_BTSFT_L;
        case TOK_BTSFT_R: return OPERATION_BTSFT_R;
        case TOK_LST: return OPERATION_LST;
        case TOK_LSE: return OPERATION_LSE;
        case TOK_GRT: return OPERATION_GRT;
        case TOK_GRE: return OPERATION_GRE;
        case TOK_EQ: return OPERATION_EQ;
        case TOK_NEQ: return OPERATION_NEQ;
        case TOK_BTWSE_AND: return OPERATION_BTWSE_AND;
        case TOK_BTWSE_XOR: return OPERATION_BTWSE_XOR;
        case TOK_BTWSE_OR: return OPERATION_BTWSE_OR;
        case TOK_AND: return OPERATION_AND;
        case TOK_XOR: return OPERATION_XOR;
        case TOK_OR: return OPERATION_OR;
        default: ErrorBugFound(); return OPERATION_NONE;
    }
}

enum operation prefixOpFromTok(enum tokenType t) {
    switch (t) {
        case TOK_NOT: return OPERATION_NOT;
        case TOK_SUB: return OPERATION_MINUS;
        case TOK_BTWSE_INV: return OPERATION_BTWSE_INV;
        case TOK_STR_OF: return OPERATION_STR_OF;
        case TOK_INC: return OPERATION_PREFIX_INC;
        case TOK_DEC: return OPERATION_PREFIX_DEC;
        default: ErrorBugFound(); return OPERATION_NONE;
    }
}

struct operand* buildExprFromSyntax(struct checkCtx* ctx, struct syntax* s);

static bool isOrderingTok(enum tokenType t) { return t == TOK_LST || t == TOK_LSE || t == TOK_GRT || t == TOK_GRE; }

//E31: the method an operator stands for, by its internal name, called on recv - with arg, or none for negation
static struct var* methodNamedOn(struct type t, const char* name);
static struct list* prebuiltMethodArgs;
struct operand* buildMethodCall(struct checkCtx* ctx, struct operand* recvOp, struct token mTok,
                                struct syntax* argsNode, struct list scopeArgNodes, bool* reported);
static struct operand* operatorCallArgs(struct checkCtx* ctx, struct operand* recv, struct list args, const char* name,
                                        struct token tok);
static struct operand* operatorCall(struct checkCtx* ctx, struct operand* recv, struct operand* arg, const char* name,
                                    struct token tok) {
    struct list args = ListInit(sizeof(struct operand*));
    if (arg) ListAdd(&args, &arg);
    return operatorCallArgs(ctx, recv, args, name, tok);
}

//E31: the method an operator calls on a value of type t - its capitalized name, or the same name with a lowercase
//first letter, which only the declaring module reaches. NULL when t declares neither.
static const char* operatorMethodName(struct checkCtx* ctx, struct type t, const char* capName) {
    if (methodNamedOn(t, capName)) return capName;
    char* low = MallocOrCrash(strlen(capName) + 1);
    strcpy(low, capName);
    low[0] = (char)(low[0] - 'A' + 'a');
    struct var* m = methodNamedOn(t, low);
    return m && m->owner == ctx->mod ? low : NULL;
}

//E10a: the Eq "==" on t calls, if t declares one of the right shape
static const char* eqMethodName(struct checkCtx* ctx, struct type t) {
    const char* n = operatorMethodName(ctx, t, "Eq");
    return n && eqWellShaped(methodNamedOn(t, n)) ? n : NULL;
}

static struct operand* operatorCallArgs(struct checkCtx* ctx, struct operand* recv, struct list args, const char* name,
                                        struct token tok) {
    struct token mTok = tok;
    mTok.type = TOK_IDEN;
    mTok.str = StrFromCStr((char*)name);
    struct list* prev = prebuiltMethodArgs;
    prebuiltMethodArgs = &args;
    bool reported = false;
    //a Try form is fallible, and only ever called for what a "try" checks (E31)
    bool prevAllow = ctx->allowFallibleCall;
    ctx->allowFallibleCall = (name[0] == 'T' || name[0] == 't') && name[1] == 'r' && name[2] == 'y'
                             && name[3] >= 'A' && name[3] <= 'Z';
    struct operand* call = buildMethodCall(ctx, recv, mTok, NULL, ListInit(sizeof(struct syntax*)), &reported);
    ctx->allowFallibleCall = prevAllow;
    prebuiltMethodArgs = prev;
    if (call && call->opType == OPERATION_FUNCCALL) call->isOperatorCall = true;
    return call;
}

//E31: the checked form of an operator on t - "TryX", or its private "tryX" - when t declares it
static const char* tryOperatorName(struct checkCtx* ctx, struct type t, const char* capName) {
    char* tn = MallocOrCrash(strlen(capName) + 4);
    sprintf(tn, "Try%s", capName);
    return operatorMethodName(ctx, t, tn);
}

//E31: the method an operator calls on t - under "try" (checkingTry) its checked form when declared. A type with only
//the checked form is reached only under "try".
static const char* operatorFor(struct checkCtx* ctx, struct type t, const char* capName, struct token tok) {
    const char* tn = tryOperatorName(ctx, t, capName);
    if (tn && ctx->checkingTry) return tn;
    const char* n = operatorMethodName(ctx, t, capName);
    if (!n && tn) ErrMsgSemantic(tok, ONLY_TRY_VARIANT);
    return n;
}

//E31: "a op b" written in the program - the operator method a's type declares for op, or the built-in operation.
//"<" is the one ordering a type declares: "a > b" is "b < a", "a <= b" is "not (b < a)", "a >= b" "not (a < b)".
//Where b becomes the receiver, a is still evaluated first: held in a hidden local unless it is a literal or a
//variable, or the operands are a chain's, which evaluates each once and in order itself (E30).
static struct var* holdInHidden(struct checkCtx* ctx, struct operand* x, struct token tok, const char* tag,
                                struct list* out);
//T29f: a declared number that does not extend its base
static bool notExtendedNumber(struct type t) {
    return t.owner && t.name.len > 0 && TypeIsNumeric(t) && !t.extendsBase && !t.structMAlloc;
}
static struct operand* buildEquality(struct checkCtx* ctx, struct operand* a, struct operand* b, struct token tok);
static struct operand* buildBinaryOp(struct checkCtx* ctx, struct operand* a, struct operand* b, struct token opTok,
                                     bool inChain) {
    //E10: "==" through Eq where the type declares one; "!=" is "not ==" always
    if (opTok.type == TOK_EQ) return buildEquality(ctx, a, b, opTok);
    if (opTok.type == TOK_NEQ) return OperandUnary(buildEquality(ctx, a, b, opTok), OPERATION_NOT, opTok);
    const char* capName = NULL;
    bool swap = false, negate = false;
    switch (opTok.type) {
        case TOK_ADD: capName = "Plus"; break;
        case TOK_SUB: capName = "Minus"; break;
        case TOK_MUL: capName = "Mul"; break;
        case TOK_DIV: capName = "Div"; break;
        case TOK_MOD: capName = "Rem"; break;
        case TOK_AT: capName = "MatMul"; break;
        case TOK_BTWSE_AND: capName = "BitAnd"; break;
        case TOK_BTWSE_OR: capName = "BitOr"; break;
        case TOK_BTWSE_XOR: capName = "BitXor"; break;
        case TOK_BTSFT_L: capName = "ShiftLeft"; break;
        case TOK_BTSFT_R: capName = "ShiftRight"; break;
        case TOK_LST: capName = "Less"; break;
        case TOK_GRT: capName = "Less"; swap = true; break;
        case TOK_LSE: capName = "Less"; swap = true; negate = true; break;
        case TOK_GRE: capName = "Less"; negate = true; break;
        default: break;
    }
    struct operand* recv = swap ? b : a;
    const char* name = capName ? operatorFor(ctx, recv->type, capName, opTok) : NULL;
    if (name) {
        struct operand* seq = NULL;
        struct operand* other = swap ? a : b;
        bool plain = operandIsLiteralLike(a) || a->isNullLiteral || a->opType == OPERATION_READ_VAR;
        if (swap && !inChain && !plain) {
            seq = operandNew(opTok, OPERATION_SEQ, TypeVanilla(BASETYPE_BOOL));
            seq->comprBody = ListInit(sizeof(struct statement));
            other = OperandReadVar(holdInHidden(ctx, a, opTok, "op", &seq->comprBody), opTok);
        }
        struct operand* call = operatorCall(ctx, recv, other, name, opTok);
        if (StrCmp(StrFromCStr((char*)capName), StrFromCStr("Less")) && !OperandIsBool(call)) ErrMsgSemantic(opTok, OPERATOR_LT_BOOL);
        struct operand* r = call;
        if (seq) { seq->type = call->type; ListAdd(&seq->args, &call); r = seq; }
        return negate ? OperandUnary(r, OPERATION_NOT, opTok) : r;
    }
    if (opTok.type == TOK_AT) { ErrMsgSemantic(opTok, OPERATOR_AT_UNDECLARED); return OperandIntLiteral(opTok); }
    //T29f: a declared number that does not extend its base has no built-in operator making a value of itself - two of
    //it is an error; beside a base value or a literal it reads as its base (T6b), and the result is the base's
    if (capName && strcmp(capName, "Less") != 0) {
        bool da = notExtendedNumber(a->type), db = notExtendedNumber(b->type);
        if ((da && TypeIsSame(a->type, b->type) && !b->isLiteral) || (db && TypeIsSame(a->type, b->type) && !a->isLiteral)) {
            ErrMsgSemantic(opTok, NOT_EXTENDED_OP);
        } else {
            if (da) operandWidenInPlace(a, TypeVanilla(a->type.bType));
            if (db) operandWidenInPlace(b, TypeVanilla(b->type.bType));
        }
    }
    return OperandBinary(a, b, opFromTokType(opTok.type), opTok);
}

static struct operand* buildBinaryOp(struct checkCtx* ctx, struct operand* a, struct operand* b, struct token opTok,
                                     bool inChain);
//E10/E10a: whether "==" on t calls an Eq somewhere - t's own, or one a part compared by value declares. A
//reference to a type with no Eq is compared by identity, so nothing behind it is reached.
static bool eqConsults(struct checkCtx* ctx, struct type t, int depth) {
    if (depth > 64) return false;
    struct type v = t;
    v.structMAlloc = false;
    v.refMut = false;
    if (v.bType == BASETYPE_INTERFACE || v.bType == BASETYPE_FUNC || v.bType == BASETYPE_TYPEVAR) return false;
    if (v.owner && eqMethodName(ctx, v)) return true;
    if (t.structMAlloc) return false;
    if (v.bType == BASETYPE_ARRAY) return v.arrElem && eqConsults(ctx, *v.arrElem, depth + 1);
    if (v.bType == BASETYPE_STRUCT) {
        for (int i = 0; i < v.vars.len; i++) {
            if (eqConsults(ctx, ((struct var*)ListGetIdx(&v.vars, i))->type, depth + 1)) return true;
        }
    }
    if (v.bType == BASETYPE_CHOICE) {
        for (int i = 0; i < v.vars.len; i++) {
            struct var* c = ListGetIdx(&v.vars, i);
            for (int k = 0; k < c->type.vars.len; k++) {
                if (eqConsults(ctx, ((struct var*)ListGetIdx(&c->type.vars, k))->type, depth + 1)) return true;
            }
        }
    }
    return false;
}

//x held once: itself when evaluating it twice is harmless (a literal, a variable), else a hidden local declared
//by a statement appended to seq's body
static struct operand* eqHold(struct checkCtx* ctx, struct operand* x, struct token tok, struct operand* seq) {
    if (operandIsLiteralLike(x) || x->isNullLiteral || x->opType == OPERATION_READ_VAR) return x;
    return OperandReadVar(holdInHidden(ctx, x, tok, "eq", &seq->comprBody), tok);
}

//E32: "x is C" / "x as C" on an enum value, for its case tag
static struct operand* enumIsAs(struct operand* x, int tag, bool isAs, struct token tok) {
    struct operand* op = operandNew(tok, isAs ? OPERATION_AS : OPERATION_IS, TypeVanilla(BASETYPE_BOOL));
    ListAdd(&op->args, &x);
    op->castEnum = true;
    op->castTag = tag;
    if (!isAs) return op;
    struct var* c = ListGetIdx(&x->type.vars, tag);
    if (c->type.vars.len == 1) op->type = ((struct var*)ListGetIdx(&c->type.vars, 0))->type;
    else {
        struct list ts = ListInit(sizeof(struct type));
        for (int i = 0; i < c->type.vars.len; i++) ListAdd(&ts, &((struct var*)ListGetIdx(&c->type.vars, i))->type);
        op->type = TypeTuple(&ts);
    }
    return op;
}

static struct operand* eqAnd(struct operand* acc, struct operand* next, struct token tok) {
    return acc ? OperandBinary(acc, next, OPERATION_AND, tok) : next;
}

//a call an "==" is lowered to, or - where it could not be built, an operand already reported (an undeclared name
//reached as the receiver) - a Bool standing in for it, so the comparison stays one error rather than a crash
static struct operand* eqCallOr(struct checkCtx* ctx, struct operand* call, struct token tok) {
    (void)ctx;
    if (call) return call;
    if (!ErrMsgGetNErrors()) ErrMsgSemantic(tok, EQ_SHAPE);
    return OperandBoolLiteral(tok);
}

//E10/E10a: "a == b" as the type says - a declared Eq called, null references kept away from it; a value's parts
//compared one by one where any of them consults an Eq; otherwise the built-in comparison
static struct operand* buildEquality(struct checkCtx* ctx, struct operand* a, struct operand* b, struct token tok) {
    //T29c: text written here is a String, so two pieces of it - or one beside a String - compare as text
    struct type* textT = SemanticBuiltinType(StrFromCStr("String"));
    if (textT && (OperandIsWrittenText(a) || OperandIsWrittenText(b))) {
        struct type tv = *textT;
        tv.structMAlloc = false;
        struct type ob = OperandIsWrittenText(a) ? b->type : a->type;
        ob.structMAlloc = false;
        ob.refMut = false;
        bool other = OperandIsWrittenText(a) && OperandIsWrittenText(b) ? true : TypeIsSame(ob, tv);
        if (other) {
            if (OperandIsWrittenText(a)) a = OperandNominalConversion(tv, a, a->tok);
            if (OperandIsWrittenText(b)) b = OperandNominalConversion(tv, b, b->tok);
        }
    }
    struct type t = (operandIsLiteralLike(a) || a->isNullLiteral) && !(operandIsLiteralLike(b) || b->isNullLiteral) ? b->type : a->type;
    if (a->isNullLiteral || b->isNullLiteral || a->type.isTuple || b->type.isTuple || !eqConsults(ctx, t, 0)) {
        return OperandBinary(a, b, OPERATION_EQ, tok);
    }
    struct operand* seq = operandNew(tok, OPERATION_SEQ, TypeVanilla(BASETYPE_BOOL));
    seq->comprBody = ListInit(sizeof(struct statement));
    struct type v = t;
    v.structMAlloc = false;
    v.refMut = false;
    struct operand* r = NULL;
    const char* eqName = v.owner ? eqMethodName(ctx, v) : NULL;
    if (eqName) {
        bool aNull = a->type.structMAlloc && !a->isLiteral, bNull = b->type.structMAlloc && !b->isLiteral;
        if (!aNull && !bNull) {
            r = eqCallOr(ctx, operatorCall(ctx, a, b, eqName, tok), tok);
        } else {
            //a null is equal to another null and to nothing else; Eq never sees one
            struct operand* ha = eqHold(ctx, a, tok, seq);
            struct operand* hb = eqHold(ctx, b, tok, seq);
            struct operand* anyNull = NULL;
            if (aNull) anyNull = OperandBinary(ha, OperandNullLiteral(tok), OPERATION_EQ, tok);
            if (bNull) {
                struct operand* bn = OperandBinary(hb, OperandNullLiteral(tok), OPERATION_EQ, tok);
                anyNull = anyNull ? OperandBinary(anyNull, bn, OPERATION_OR, tok) : bn;
            }
            struct operand* call = eqCallOr(ctx, operatorCall(ctx, ha, hb, eqName, tok), tok);
            if (aNull && bNull) {
                r = operandNew(tok, OPERATION_COND, TypeVanilla(BASETYPE_BOOL));
                struct operand* same = OperandBinary(ha, hb, OPERATION_EQ, tok);
                ListAdd(&r->args, &anyNull);
                ListAdd(&r->args, &same);
                ListAdd(&r->args, &call);
            } else {
                r = OperandBinary(OperandUnary(anyNull, OPERATION_NOT, tok), call, OPERATION_AND, tok);
            }
        }
    } else if (v.bType == BASETYPE_STRUCT) {
        struct operand* ha = eqHold(ctx, a, tok, seq);
        struct operand* hb = eqHold(ctx, b, tok, seq);
        for (int i = 0; i < v.vars.len; i++) {
            struct var* f = ListGetIdx(&v.vars, i);
            r = eqAnd(r, buildEquality(ctx, OperandMember(NULL, ha, f->name, tok), OperandMember(NULL, hb, f->name, tok), tok), tok);
        }
        if (!r) { r = OperandBoolLiteral(tok); r->intLiteralVal = 1; }
    } else if (v.bType == BASETYPE_ARRAY) {
        //element by element, through the prelude's "Equal" - "==" on each pair, so each consults its Eq
        struct list args = ListInit(sizeof(struct operand*));
        ListAdd(&args, &b);
        r = eqCallOr(ctx, operatorCallArgs(ctx, a, args, "Equal", tok), tok);
    } else if (v.bType == BASETYPE_CHOICE) {
        //the same case, and that case's payload equal - each case asked with "is", its payload read with "as"
        struct operand* ha = eqHold(ctx, a, tok, seq);
        struct operand* hb = eqHold(ctx, b, tok, seq);
        for (int i = 0; i < v.vars.len; i++) {
            struct var* c = ListGetIdx(&v.vars, i);
            struct operand* arm = OperandBinary(enumIsAs(ha, i, false, tok), enumIsAs(hb, i, false, tok), OPERATION_AND, tok);
            if (c->type.vars.len == 1) {
                arm = OperandBinary(arm, buildEquality(ctx, enumIsAs(ha, i, true, tok), enumIsAs(hb, i, true, tok), tok), OPERATION_AND, tok);
            } else if (c->type.vars.len > 1) {
                for (int k = 0; k < c->type.vars.len; k++) {
                    char* fn = MallocOrCrash(16);
                    snprintf(fn, 16, "%d", k);
                    struct operand* xa = OperandMember(NULL, enumIsAs(ha, i, true, tok), StrFromCStr(fn), tok);
                    struct operand* xb = OperandMember(NULL, enumIsAs(hb, i, true, tok), StrFromCStr(fn), tok);
                    arm = OperandBinary(arm, buildEquality(ctx, xa, xb, tok), OPERATION_AND, tok);
                }
            }
            r = r ? OperandBinary(r, arm, OPERATION_OR, tok) : arm;
        }
        if (!r) { r = OperandBoolLiteral(tok); r->intLiteralVal = 1; }
    } else {
        return OperandBinary(a, b, OPERATION_EQ, tok);
    }
    if (!OperandIsBool(r)) ErrMsgSemantic(tok, EQ_SHAPE);
    if (!seq->comprBody.len) return r;
    ListAdd(&seq->args, &r);
    return seq;
}

//E10b: whether a type's == comes from an Eq it declares - then only a Hash it declares can agree with it
static bool typeDeclaresEq(struct type v) { return methodNamedOn(v, "Eq") || methodNamedOn(v, "eq"); }

static struct type typeBare(struct type t) {
    t.structMAlloc = false;
    t.refMut = false;
    t.scopeParam = NULL;
    t.scopeDepth = 0;
    return t;
}

//E10b: whether a value of type t can be hashed in agreement with its "==": by a Hash its type declares, or one the
//compiler supplies from its parts. A reference hashes what it names only where "==" compares what it names - its
//type declares Eq; one compared by identity has no hash, since an address is not a value.
static bool typeHasHash(struct type t, int depth) {
    struct type v = typeBare(t);
    if (v.bType == BASETYPE_INTERFACE || v.bType == BASETYPE_FUNC || v.bType == BASETYPE_TYPEVAR) return false;
    bool declared = methodNamedOn(v, "Hash") != NULL;
    if (t.structMAlloc) return declared && typeDeclaresEq(v);
    return declared || typeAutoHashable(v, depth + 1);
}

//E10b: a struct, enum or array value with no Hash and no Eq of its own, every part of which has a hash
static bool typeAutoHashable(struct type t, int depth) {
    if (depth > 64 || t.structMAlloc) return false;
    struct type v = typeBare(t);
    if (methodNamedOn(v, "Hash") || typeDeclaresEq(v)) return false;
    if (v.bType == BASETYPE_ARRAY) return v.arrElem && typeHasHash(*v.arrElem, depth);
    if (v.bType == BASETYPE_STRUCT) {
        for (int i = 0; i < v.vars.len; i++) {
            if (!typeHasHash(((struct var*)ListGetIdx(&v.vars, i))->type, depth)) return false;
        }
        return true;
    }
    if (v.bType == BASETYPE_CHOICE) {
        for (int i = 0; i < v.vars.len; i++) {
            struct var* c = ListGetIdx(&v.vars, i);
            for (int k = 0; k < c->type.vars.len; k++) {
                if (!typeHasHash(((struct var*)ListGetIdx(&c->type.vars, k))->type, depth)) return false;
            }
        }
        return true;
    }
    return false;
}

static struct operand* int64Literal(long long v, struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_INT64));
    op->isLiteral = true;
    op->intLiteralVal = v;
    return op;
}

//acc * P + part, P the 64-bit FNV prime, so parts in another order hash differently (arithmetic wraps, E6c)
static struct operand* hashCombine(struct operand* acc, struct operand* part, struct token tok) {
    if (!acc) return part;
    return OperandBinary(OperandBinary(acc, int64Literal(1099511628211LL, tok), OPERATION_MUL, tok), part, OPERATION_ADD, tok);
}

//E10b: x.Hash() - a reference held once and kept away from Hash when null (a null hashes to 0, as Eq never sees one)
static bool hashNullGuarded = false;
static struct operand* hashOf(struct checkCtx* ctx, struct operand* x, struct token tok, struct operand* seq) {
    if (!x->type.structMAlloc) return operatorCallArgs(ctx, x, ListInit(sizeof(struct operand*)), "Hash", tok);
    struct operand* h = eqHold(ctx, x, tok, seq);
    hashNullGuarded = true;
    struct operand* call = operatorCallArgs(ctx, h, ListInit(sizeof(struct operand*)), "Hash", tok);
    hashNullGuarded = false;
    struct operand* r = operandNew(tok, OPERATION_COND, TypeVanilla(BASETYPE_INT64));
    struct operand* isNull = OperandBinary(h, OperandNullLiteral(tok), OPERATION_EQ, tok);
    struct operand* zero = int64Literal(0, tok);
    ListAdd(&r->args, &isNull);
    ListAdd(&r->args, &zero);
    ListAdd(&r->args, &call);
    return r;
}

static struct operand* seqResult(struct operand* seq, struct operand* r) {
    if (!seq->comprBody.len) return r;
    seq->type = r->type;
    ListAdd(&seq->args, &r);
    return seq;
}

//E10b: the Hash the compiler supplies for a value of an auto-hashable type - its parts' hashes combined in order;
//an enum's case number first, then the payload of the case it holds; an array's elements through the prelude
static struct operand* buildAutoHash(struct checkCtx* ctx, struct operand* x, struct token tok) {
    struct type v = typeBare(x->type);
    if (v.bType == BASETYPE_ARRAY) return operatorCallArgs(ctx, x, ListInit(sizeof(struct operand*)), "HashElements", tok);
    struct operand* seq = operandNew(tok, OPERATION_SEQ, TypeVanilla(BASETYPE_INT64));
    seq->comprBody = ListInit(sizeof(struct statement));
    struct operand* hx = eqHold(ctx, x, tok, seq);
    struct operand* r = NULL;
    if (v.bType == BASETYPE_STRUCT) {
        for (int i = 0; i < v.vars.len; i++) {
            struct var* f = ListGetIdx(&v.vars, i);
            r = hashCombine(r, hashOf(ctx, OperandMember(NULL, hx, f->name, tok), tok, seq), tok);
        }
        if (!r) r = int64Literal(0, tok);
        return seqResult(seq, r);
    }
    //an enum: the last case needs no test - if no earlier one holds, it does
    for (int i = v.vars.len - 1; i >= 0; i--) {
        struct var* c = ListGetIdx(&v.vars, i);
        struct operand* arm = int64Literal(i + 1, tok);
        //the case's own statements: a payload read with "as" is held only where that case holds
        struct operand* armSeq = operandNew(tok, OPERATION_SEQ, TypeVanilla(BASETYPE_INT64));
        armSeq->comprBody = ListInit(sizeof(struct statement));
        if (c->type.vars.len == 1) arm = hashCombine(arm, hashOf(ctx, enumIsAs(hx, i, true, tok), tok, armSeq), tok);
        for (int k = 0; c->type.vars.len > 1 && k < c->type.vars.len; k++) {
            char* fn = MallocOrCrash(16);
            snprintf(fn, 16, "%d", k);
            arm = hashCombine(arm, hashOf(ctx, OperandMember(NULL, enumIsAs(hx, i, true, tok), StrFromCStr(fn), tok), tok, armSeq), tok);
        }
        arm = seqResult(armSeq, arm);
        if (!r) { r = arm; continue; }
        struct operand* cond = operandNew(tok, OPERATION_COND, TypeVanilla(BASETYPE_INT64));
        struct operand* is = enumIsAs(hx, i, false, tok);
        ListAdd(&cond->args, &is);
        ListAdd(&cond->args, &arm);
        ListAdd(&cond->args, &r);
        r = cond;
    }
    if (!r) r = int64Literal(0, tok);
    return seqResult(seq, r);
}

//E30: "a < b <= c" - the comparisons joined by "and", each sharing its middle operand, which is built (and
//evaluated) once. Only the four ordering comparisons chain: "a == b == c" keeps meaning "(a == b) == c".
static struct operand* buildCmpChain(struct checkCtx* ctx, struct syntax* s) {
    struct list nodes = ListInit(sizeof(struct syntax*)); //the binary nodes, outermost first
    for (struct syntax* n = s; n->type == SNTX_EXPR_BINARY && n->parts.len == 3 && isOrderingTok(partAt(n, 1)->tok.type);
         n = partSntx(n, 0)) {
        ListAdd(&nodes, &n);
    }
    struct syntax* innermost = *(struct syntax**)ListGetIdx(&nodes, nodes.len - 1);
    struct operand* left = buildExprFromSyntax(ctx, partSntx(innermost, 0));
    struct operand* chain = operandNew(partAt(innermost, 1)->tok, OPERATION_CMP_CHAIN, TypeVanilla(BASETYPE_BOOL));
    chain->chainOperands = ListInit(sizeof(struct operand*));
    ListAdd(&chain->chainOperands, &left);
    for (int i = nodes.len - 1; i >= 0; i--) {
        struct syntax* n = *(struct syntax**)ListGetIdx(&nodes, i);
        struct token opTok = partAt(n, 1)->tok;
        struct operand* right = buildExprFromSyntax(ctx, partSntx(n, 2));
        struct operand* cmp = buildBinaryOp(ctx, left, right, opTok, true); //E31: a declared "<" chains too
        ListAdd(&chain->args, &cmp);
        ListAdd(&chain->chainOperands, &right);
        left = right;
    }
    return chain;
}

//can this operand's type give way to the other value's in "a if c else b" - a literal, text written here, null
static bool condAdapts(struct operand* op) { return operandIsLiteralLike(op) || op->isNullLiteral || OperandIsWrittenText(op); }

//E28: "a if c else b" - c decides which one is evaluated; both must have one type, a literal adapting to the other
static struct operand* buildCond(struct checkCtx* ctx, struct syntax* s) {
    struct operand* a = buildExprFromSyntax(ctx, partSntx(s, 0));
    struct token ifTok = partAt(s, 1)->tok;
    struct operand* c = buildExprFromSyntax(ctx, partSntx(s, 2));
    if (!OperandIsBool(c)) ErrMsgSemantic(c->tok, OPERATION_REQUIRES_BOOL);
    struct operand* b = buildExprFromSyntax(ctx, partSntx(s, 4));
    FinalizeLambda(a, b->pendingLambda ? NULL : &b->type);
    FinalizeLambda(b, &a->type);
    struct type t = a->type;
    if (!TypeIsSame(a->type, b->type)) {
        if (TypeIsNumeric(a->type) && TypeIsNumeric(b->type) && operandIsLiteralLike(a) && operandIsLiteralLike(b)) {
            t = numericTypeRank(a->type) >= numericTypeRank(b->type) ? a->type : b->type;
            OperandFitsType(ctx->func, a, t);
            OperandFitsType(ctx->func, b, t);
        } else if (condAdapts(b) && !(condAdapts(a) && operandIsLiteralLike(a) && !operandIsLiteralLike(b))
                   && OperandFitsType(ctx->func, b, a->type) == TYPE_FIT_OK) {
            t = a->type; //the adaptable value gives way - of two, a literal gives way to text built here
        } else if (condAdapts(a) && OperandFitsType(ctx->func, a, b->type) == TYPE_FIT_OK) {
            t = b->type;
        } else {
            ErrMsgSemantic(ifTok, COND_BRANCH_TYPES);
        }
    }
    struct operand* op = operandNew(ifTok, OPERATION_COND, t);
    ListAdd(&op->args, &c);
    ListAdd(&op->args, &a);
    ListAdd(&op->args, &b);
    return op;
}

//a hidden local holding x, declared by a statement appended to out - x evaluated where that statement runs. A
//reference keeps x's own scope; a global's initializer, which has no block, gives the local a scope of its own.
static int hiddenCounter = 0;
static bool adoptInitializerScope(struct checkCtx* ctx, struct type* t, struct operand* init, bool* unnamed);
struct statement buildVarDeclFromOperand(struct checkCtx* ctx, struct token nameTok, struct operand* rhs);
static struct var* holdInHidden(struct checkCtx* ctx, struct operand* x, struct token tok, const char* tag,
                                struct list* out) {
    char* nm = MallocOrCrash(32);
    snprintf(nm, 32, "$%s%d", tag, ++hiddenCounter);
    struct token ht = tok;
    ht.type = TOK_IDEN;
    ht.str = StrFromCStr(nm);
    //a reference is held exactly as "x := e" would hold it - in e's own scope, however e came to have it (a borrowed
    //result, "s.Trim()" on a local value, included), so holding it changes nothing about where it lives
    if (x->type.structMAlloc && ctx->scope) {
        struct statement d = buildVarDeclFromOperand(ctx, ht, x);
        struct var* hv = scopeFindLocal(ctx->scope, ht.str);
        if (hv) {
            ListAdd(out, &d);
            return hv;
        }
    }
    struct type dt = x->type;
    bool unnamed = false;
    if (!(dt.structMAlloc && adoptInitializerScope(ctx, &dt, x, &unnamed))) dt.scopeDepth = ctx->blockDepth;
    reportTypeFit(OperandFitsType(ctx->func, x, dt), x->tok);
    struct scope* sc = ctx->scope;
    if (!sc) { sc = MallocOrCrash(sizeof(struct scope)); *sc = scopePush(NULL); }
    struct var* hv = scopeDeclare(ctx->mod, sc, ht.str, ht, dt, true);
    hv->scopeUnnamed = unnamed;
    hv->scopeBindings = x->scopeBindings;
    struct statement d = (struct statement){0};
    d.sType = STATEMENT_VAR_DECL;
    d.var = *hv;
    d.op = x;
    ListAdd(out, &d);
    return hv;
}

//E29: "x in c" - c.Has(x), or c.Contains(x) when x is of the collection's own type (a contiguous run of it: a
//substring of text). x is evaluated first, as written: unless it is a literal or a variable, it is held in a hidden
//local ahead of the call, whose receiver would otherwise be evaluated before it.
static struct var* methodNamedOn(struct type t, const char* name);
struct operand* buildMethodCall(struct checkCtx* ctx, struct operand* recvOp, struct token mTok,
                                struct syntax* argsNode, struct list scopeArgNodes, bool* reported);
static struct list* prebuiltMethodArgs = NULL;
static struct operand* buildMembership(struct checkCtx* ctx, struct syntax* xNode, struct syntax* cNode,
                                       bool negated, struct token tok) {
    struct operand* x = buildExprFromSyntax(ctx, xNode);
    struct operand* c = buildExprFromSyntax(ctx, cNode);
    struct type ct = c->type;
    ct.structMAlloc = false;
    struct type xt = x->type;
    xt.structMAlloc = false;
    bool whole = TypeIsSame(xt, ct) || (OperandIsWrittenText(x) && ct.bType == BASETYPE_ARRAY && ct.arrElem
                                        && ct.arrElem->bType == BASETYPE_BYTE);
    const char* mName = whole ? "Contains" : "Has";
    if (!methodNamedOn(c->type, mName)) {
        ErrMsgSemantic(tok, MEMBERSHIP_NO_METHOD);
        return OperandBoolLiteral(tok);
    }
    struct operand* seq = NULL;
    struct operand* arg = x;
    bool plain = operandIsLiteralLike(x) || x->isNullLiteral || OperandIsWrittenText(x) || x->opType == OPERATION_READ_VAR;
    if (!plain) {
        seq = operandNew(tok, OPERATION_SEQ, TypeVanilla(BASETYPE_BOOL));
        seq->comprBody = ListInit(sizeof(struct statement));
        arg = OperandReadVar(holdInHidden(ctx, x, tok, "in", &seq->comprBody), tok);
    }
    struct token mTok = tok;
    mTok.type = TOK_IDEN;
    mTok.str = StrFromCStr((char*)mName);
    struct list args = ListInit(sizeof(struct operand*));
    ListAdd(&args, &arg);
    prebuiltMethodArgs = &args;
    bool reported = false;
    //a Has or Contains that can fail is reached under "try", which reaches through it as through an operator (E29)
    bool prevAllow = ctx->allowFallibleCall;
    ctx->allowFallibleCall = true;
    struct operand* call = buildMethodCall(ctx, c, mTok, NULL, ListInit(sizeof(struct syntax*)), &reported);
    ctx->allowFallibleCall = prevAllow;
    prebuiltMethodArgs = NULL;
    if (call->opType == OPERATION_FUNCCALL) {
        call->isOperatorCall = true;
        if (call->readVar && call->readVar->type.errors.len && !ctx->checkingTry) ErrMsgSemantic(tok, MEMBERSHIP_NEEDS_TRY);
    }
    if (!OperandIsBool(call)) ErrMsgSemantic(tok, MEMBERSHIP_NO_METHOD);
    struct operand* result = call;
    if (seq) { ListAdd(&seq->args, &call); result = seq; }
    return negated ? OperandUnary(result, OPERATION_NOT, tok) : result;
}

struct operand* buildBinChain(struct checkCtx* ctx, struct syntax* s) {
    if (s->type == SNTX_EXPR && !partAt(s, 0)->isToken && partSntx(s, 0)->type == SNTX_EXPR_COND) {
        return buildCond(ctx, partSntx(s, 0));
    }
    if (s->type == SNTX_EXPR_BINARY) {
        struct token opTok = partAt(s, s->parts.len - 2)->tok;
        if (opTok.type == TOK_IN) {
            return buildMembership(ctx, partSntx(s, 0), partSntx(s, s->parts.len - 1), s->parts.len == 4, opTok);
        }
        //E30: a comparison whose left operand is itself one, unparenthesized
        if (isOrderingTok(opTok.type) && partSntx(s, 0)->type == SNTX_EXPR_BINARY && partSntx(s, 0)->parts.len == 3
                && isOrderingTok(partAt(partSntx(s, 0), 1)->tok.type)) {
            return buildCmpChain(ctx, s);
        }
    }
    struct operand* result = buildExprFromSyntax(ctx, partSntx(s, 0));
    for (int i = 1; i < s->parts.len; i += 2) {
        struct token opTok = partAt(s, i)->tok;
        struct operand* rhs = buildExprFromSyntax(ctx, partSntx(s, i +1));
        result = buildBinaryOp(ctx, result, rhs, opTok, false);
    }
    return result;
}

//E11b: adjacent text pieces - one run-time concatenation of their byte arrays, built like any temporary
struct operand* buildText(struct checkCtx* ctx, struct syntax* s) {
    struct operand* result = NULL;
    for (int i = 0; i < s->parts.len; i++) {
        struct operand* p = buildExprFromSyntax(ctx, partSntx(s, i));
        if (!result) { result = p; continue; }
        struct operand* op = operandNew(p->tok, OPERATION_CONCAT, textValueType());
        ListAdd(&op->args, &result);
        ListAdd(&op->args, &p);
        result = op;
    }
    return result;
}

static char* unknownMethodMsg(struct operand* recv, struct token name);
static struct operand* buildIncDec(struct checkCtx* ctx, struct operand* target, bool inc, bool prefix, struct token tok);
struct operand* buildUnary(struct checkCtx* ctx, struct syntax* s) {
    int n = s->parts.len;
    struct operand* result = buildExprFromSyntax(ctx, partSntx(s, n -1)); //last part is EXPR_POSTFIX
    for (int i = n -2; i >= 0; i--) {
        struct syntax* opNode = partSntx(s, i); //SNTX_EXPR_UNARY_OP
        struct token opTok = partAt(opNode, 0)->tok;
        //E31: negation a type declares ("fn (v Vec2) -() Vec2")
        const char* negName = opTok.type == TOK_SUB ? operatorFor(ctx, result->type, "Neg", opTok)
                            : opTok.type == TOK_BTWSE_INV ? operatorMethodName(ctx, result->type, "BitNot") : NULL;
        if (negName) { result = operatorCall(ctx, result, NULL, negName, opTok); continue; }
        if ((opTok.type == TOK_SUB || opTok.type == TOK_BTWSE_INV) && notExtendedNumber(result->type)) ErrMsgSemantic(opTok, NOT_EXTENDED_OP); //T29f
        if (opTok.type == TOK_INC || opTok.type == TOK_DEC) {
            if (!(s == ctx->incDecRoot && n == 2)) ErrMsgSemantic(opTok, INCDEC_IN_EXPRESSION); //S3a
            struct operand* r = buildIncDec(ctx, result, opTok.type == TOK_INC, true, opTok);
            if (r) { result = r; continue; }
        }
        result = OperandUnary(result, prefixOpFromTok(opTok.type), opTok);
    }
    return result;
}

//"alias.SomeGlobal" - a bare cross-module VARIABLE read, no call - see the report. Previously unsupported:
//a bare TOK_IDEN primary can't gain a namespace at the grammar level without colliding with ordinary
//struct member access ("localVar.field"), so this is real semantic-level disambiguation, done here rather
//than in buildPrimary since it needs to see one postfix part ahead (whether a "." follows the identifier
//at all). Recognized only when: the base is a plain identifier; a local of that name doesn't already
//shadow it (mirrors resolveCallTarget's own precedence - an import and a var live in different
//namespaces, but a local always wins if both exist); it names a real import alias; and the very next
//postfix part is specifically a member access (not an index or inc/dec, neither of which make sense
//directly on a bare alias). Anything else falls through to the ordinary path unchanged. Returns NULL (not
//found/not applicable) rather than a placeholder operand, so the caller can tell "there was nothing here"
//from "there was, but it's private/unknown" (buildPostfix itself only calls this once it already knows a
//"." follows, so it commits to reporting an error rather than falling through on failure past that point).
//"alias...SomeGlobal" - a bare cross-module VARIABLE read, no call - see the report. Recognized only when
//the base is a plain identifier not shadowed by a real local (mirrors resolveAliasChain's own "your own
//first hop is always allowed" rule) that names a real import; from there, greedily consumes further
//".further" postfix parts as long as each one is ALSO a real (public, since every hop past the first is a
//re-export) import in the module reached so far - the same "prefer the alias interpretation when
//structurally possible" rule resolveCatchAliasChain already uses - stopping at the first identifier that
//isn't (or isn't a plain member access at all), which is the actual variable name to read. Writes how
//many of s's own postfix parts were consumed to *outConsumed so buildPostfix knows where to resume its
//own ordinary loop. Returns NULL (not found/not applicable) only when the very first hop fails, so the
//caller can tell "there was nothing here at all" from "there was, but it's private/unknown/cyclic" -
//anything past that first hop commits to reporting an error rather than falling through.
struct operand* tryBuildCrossModuleVarRead(struct checkCtx* ctx, struct syntax* s, int* outConsumed) {
    struct syntax* primaryNode = partSntx(s, 0);
    if (primaryNode->parts.len != 1 || !partAt(primaryNode, 0)->isToken) return NULL;
    struct token firstTok = partAt(primaryNode, 0)->tok;
    if (firstTok.type != TOK_IDEN) return NULL;
    if (s->parts.len < 2 || partAt(s, 1)->isToken || partAt(s, 1)->sntx->type != SNTX_EXPR_MEMBR) return NULL;
    if (scopeFindLocal(ctx->scope, strFromTok(firstTok))) return NULL;
    struct semaModule* target = findImport(ctx->mod, strFromTok(firstTok));
    if (!target) return NULL;

    struct semaModule* startMod = ctx->mod;
    struct list visited = ListInit(sizeof(struct semaModule*));
    ListAdd(&visited, &startMod);
    ListAdd(&visited, &target);

    //i is the next unexamined postfix part - index 0 (the primary) was already consumed above as the
    //first hop, so this starts at 1. The loop condition keeps at least one final part unconsumed (the
    //eventual variable name), so it checks part i itself, not i+1 - a bare "<" against parts.len -1.
    int i = 1;
    while (i < s->parts.len -1 && !partAt(s, i)->isToken && partAt(s, i)->sntx->type == SNTX_EXPR_MEMBR) {
        struct token nextTok = firstTokOfType(partAt(s, i)->sntx, TOK_IDEN);
        struct str nextName = strFromTok(nextTok);
        struct semaModule* next = findImport(target, nextName);
        if (!next) break;
        if (!isPublic(nextName)) { ErrMsgSemantic(nextTok, IMPORT_IS_PRIVATE); *outConsumed = i +1; return OperandIntLiteral(nextTok); }
        for (int j = 0; j < visited.len; j++) {
            if (*(struct semaModule**)ListGetIdx(&visited, j) == next) {
                ErrMsgSemantic(nextTok, CYCLIC_IMPORT_REEXPORT);
                *outConsumed = i +1;
                return OperandIntLiteral(nextTok);
            }
        }
        ListAdd(&visited, &next);
        target = next;
        i++;
    }

    struct token varTok = firstTokOfType(partAt(s, i)->sntx, TOK_IDEN);
    struct str name = strFromTok(varTok);
    struct var* v = VarGetList(&target->vars, name);
    *outConsumed = i +1;
    if (!v) { ErrMsgSemantic(varTok, UNKNOWN_VAR); return OperandIntLiteral(varTok); }
    if (!isPublic(name)) { ErrMsgSemantic(varTok, VAR_IS_PRIVATE); return OperandIntLiteral(varTok); }
    return OperandReadVar(v, varTok);
}

struct operand* buildMethodCall(struct checkCtx* ctx, struct operand* recvOp, struct token mTok,
                                struct syntax* argsNode, struct list scopeArgNodes, bool* reported);

//E13b: "e(args)" - a call through the function value e gives. It is an ordinary call whose target is a var of
//e's function type standing for the value, so arity, fit, scope binding and codegen's argument lowering are all
//the ordinary call's; the value itself is computed from e, before the arguments
static struct operand* buildValueCall(struct checkCtx* ctx, struct operand* callee, struct syntax* callNode, bool allowed) {
    struct token tok = firstTokOfType(callNode, TOK_PAREN_O);
    struct list args = buildArgs(ctx, firstPartOfType(callNode, SNTX_EXPR_ARGS));
    if (callee->type.bType != BASETYPE_FUNC) {
        //E31: "f(x)" on a value whose type declares Call
        const char* cn = operatorMethodName(ctx, callee->type, "Call");
        if (cn) {
            bool prevAllowed = ctx->allowFallibleCall;
            ctx->allowFallibleCall = allowed;
            struct operand* c = operatorCallArgs(ctx, callee, args, cn, tok);
            ctx->allowFallibleCall = prevAllowed;
            return c;
        }
        ErrMsgSemantic(tok, NOT_CALLABLE);
        return OperandIntLiteral(tok);
    }
    if (callee->type.errors.len > 0 && !allowed) ErrMsgSemantic(tok, UNHANDLED_FALLIBLE_CALL);
    struct var* fv = MallocOrCrash(sizeof(struct var));
    *fv = (struct var){0};
    fv->name = StrFromCStr("$callee");
    fv->tok = tok;
    fv->type = callee->type;
    struct operand* call = OperandFuncCall(ctx, fv, args, tok, ListInit(sizeof(struct syntax*)));
    call->callee = callee;
    return call;
}

//E31: "x++" / "x--" on a type that is not numeric - x = x.Inc() (Dec), a method the type may declare, or else
//x = x + 1 (x - 1) through its Plus (Minus), for a type whose Plus takes the literal one. A statement only (S3a).
//NULL when the type has neither, leaving the built-in form and its error.
struct statement buildAssignCore(struct checkCtx* ctx, struct operand* target, struct operand* rhs, struct token opTok);
static struct operand* buildIncDec(struct checkCtx* ctx, struct operand* target, bool inc, bool prefix, struct token tok) {
    if (target->type.bType == BASETYPE_TYPEVAR) return NULL;
    //under "try" (E31) a number's increment is "x = x + 1", which the try then checks for overflow
    bool num = TypeIsNumeric(target->type);
    //T29f: a declared number not extending its base increments only through an Inc or Plus of its own
    if (notExtendedNumber(target->type)) {
        if (!operatorFor(ctx, target->type, inc ? "Inc" : "Dec", tok) && !operatorFor(ctx, target->type, inc ? "Plus" : "Minus", tok)) {
            ErrMsgSemantic(tok, NOT_EXTENDED_OP);
            return NULL;
        }
        num = false;
    }
    if (num && !ctx->checkingTry) return NULL;
    const char* own = num ? NULL : operatorFor(ctx, target->type, inc ? "Inc" : "Dec", tok);
    const char* arith = own || num ? NULL : operatorFor(ctx, target->type, inc ? "Plus" : "Minus", tok);
    if (!own && !arith && !num) return NULL;
    struct operand* seq = operandNew(tok, OPERATION_SEQ, target->type);
    seq->isIncDec = true;
    seq->comprBody = ListInit(sizeof(struct statement));
    (void)prefix; //S3a: an increment has no value anyone reads, so the two forms are the same
    struct token one = tok;
    one.type = TOK_INT_LIT;
    one.str = StrFromCStr("1");
    struct operand* next = own ? operatorCall(ctx, target, NULL, own, tok)
                         : arith ? operatorCall(ctx, target, OperandIntLiteral(one), arith, tok)
                                 : OperandBinary(target, OperandIntLiteral(one), inc ? OPERATION_ADD : OPERATION_SUB, tok);
    struct token eq = tok;
    eq.type = TOK_ASS;
    eq.str = StrFromCStr("=");
    struct statement set = buildAssignCore(ctx, target, next, eq);
    ListAdd(&seq->comprBody, &set);
    ListAdd(&seq->args, &target);
    return seq;
}

//E32: "x is Enum.Case" / "x as Enum.Case" - on an enum value, "as" giving the case's payload: its one field, or
//several as several results. "as" that does not hold aborts, as an out-of-range slice does, or under "try" fails
//with BuiltinError.INVALID.
static struct list allTokOfTypeDeep(struct syntax* s, enum tokenType t) {
    struct list out = ListInit(sizeof(struct token));
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = partAt(s, i);
        if (p->isToken) { if (p->tok.type == t) ListAdd(&out, &p->tok); continue; }
        struct list sub = allTokOfTypeDeep(p->sntx, t);
        for (int k = 0; k < sub.len; k++) ListAdd(&out, ListGetIdx(&sub, k));
    }
    return out;
}

//the name a reference marker in a type carries ("&mask" in "Box.Val&mask"), or a TOK_NONE token
static struct token markerNameIn(struct syntax* t) {
    for (int i = 0; i < t->parts.len; i++) {
        struct syntaxPart* p = partAt(t, i);
        if (p->isToken) continue;
        if (p->sntx->type == SNTX_ELEM_REF_MARKER || p->sntx->type == SNTX_REF_MARKER) {
            struct token n = firstTokOfType(p->sntx, TOK_IDEN);
            if (n.type == TOK_IDEN) return n;
        } else {
            struct token n = markerNameIn(p->sntx);
            if (n.type == TOK_IDEN) return n;
        }
    }
    return (struct token){0};
}

struct operand* buildIsAs(struct checkCtx* ctx, struct syntax* s) {
    bool isAs = s->type == SNTX_EXPR_AS;
    struct token kw = firstTokOfType(s, isAs ? TOK_AS : TOK_IS);
    struct operand* x = buildExprFromSyntax(ctx, partSntx(s, 0));
    struct syntax* tNode = firstPartOfType(s, SNTX_TYPE_EXPR);
    struct operand* op = operandNew(kw, isAs ? OPERATION_AS : OPERATION_IS, TypeVanilla(BASETYPE_BOOL));
    ListAdd(&op->args, &x);
    //"b as Box.Val & mask": the type after is/as takes "&mask" as its reference marker, which says where a reference
    //lives - and no reference is made here. Said for what it is, since that reading is never what was meant
    struct token marked = markerNameIn(tNode);
    if (marked.type == TOK_IDEN) {
        char* msg = MallocOrCrash(512);
        snprintf(msg, 512, "'&%.*s' right after the type is read as part of it - a reference marker naming where '%.*s' "
                 "lives - not as the operator '&'; to apply '&' to the result, parenthesize: '(x %s T) & %.*s' (E32)",
                 marked.str.len, marked.str.ptr, marked.str.len, marked.str.ptr, isAs ? "as" : "is",
                 marked.str.len, marked.str.ptr);
        ErrMsgSemantic(marked, msg);
        if (isAs) op->type = unknownTypeStandIn(); //what it would have given is unknown - one error, not two
        return op;
    }
    struct type xt = x->type;
    if (xt.bType == BASETYPE_CHOICE) {
        struct list idens = allTokOfTypeDeep(tNode, TOK_IDEN);
        struct var* c = NULL;
        if (idens.len >= 2) {
            struct token caseTok = *(struct token*)ListGetIdx(&idens, idens.len - 1);
            struct token typeTok = *(struct token*)ListGetIdx(&idens, idens.len - 2);
            for (int i = 0; StrCmp(strFromTok(typeTok), xt.name) && i < xt.vars.len; i++) {
                struct var* v = ListGetIdx(&xt.vars, i);
                if (StrCmp(v->name, strFromTok(caseTok))) { op->castTag = i; c = v; }
            }
        }
        if (!c) {
            ErrMsgSemantic(firstTokAnywhere(tNode), AS_ENUM_CASE);
            if (isAs) op->type = unknownTypeStandIn();
            return op;
        }
        op->castEnum = true;
        if (!isAs) return op;
        if (c->type.vars.len == 0) { ErrMsgSemantic(kw, AS_NOTHING); return op; }
        if (c->type.vars.len == 1) op->type = ((struct var*)ListGetIdx(&c->type.vars, 0))->type;
        else {
            struct list ts = ListInit(sizeof(struct type));
            for (int i = 0; i < c->type.vars.len; i++) ListAdd(&ts, &((struct var*)ListGetIdx(&c->type.vars, i))->type);
            op->type = TypeTuple(&ts);
        }
        return op;
    }
    ErrMsgSemantic(kw, IS_AS_OPERAND);
    return op;
}

//E31: a derived check's operand: v once lo <= v < hi (<= hi when inclusive), failing with OUT_OF_BOUNDS
static struct operand* operandBounds(struct operand* v, struct operand* lo, struct operand* hi, bool inclusive,
                                     struct token tok) {
    struct operand* b = operandNew(tok, OPERATION_BOUNDS, v->type);
    ListAdd(&b->args, &v);
    ListAdd(&b->args, &lo);
    ListAdd(&b->args, &hi);
    b->isInclusive = inclusive;
    return b;
}

//x itself when reading it twice is harmless (a literal or a variable), else a hidden local holding it - which
//creates *seq on first use, whose statements run ahead of the expression
static struct operand* heldOnce(struct checkCtx* ctx, struct operand* x, struct token tok, const char* tag,
                                struct operand** seq) {
    if (operandIsLiteralLike(x) || x->isNullLiteral || x->opType == OPERATION_READ_VAR) return x;
    if (!*seq) {
        *seq = operandNew(tok, OPERATION_SEQ, x->type);
        (*seq)->comprBody = ListInit(sizeof(struct statement));
    }
    return OperandReadVar(holdInHidden(ctx, x, tok, tag, &(*seq)->comprBody), tok);
}

static struct operand* finishSeq(struct operand* seq, struct operand* call) {
    if (!seq) return call;
    seq->type = call->type;
    ListAdd(&seq->args, &call);
    return seq;
}

//an Int64 operand of a method's parameter k: a literal adapts to it, so the bounds check sees the type At takes
static struct operand* asParam(struct checkCtx* ctx, struct type t, const char* method, int k, struct operand* x) {
    struct var* m = methodNamedOn(t, method);
    if (!m || m->type.vars.len <= k) return x;
    struct type pt = ((struct var*)ListGetIdx(&m->type.vars, k))->type;
    if (operandIsLiteralLike(x) && TypeIsNumeric(pt)) reportTypeFit(OperandFitsType(ctx->func, x, pt), x->tok);
    return x;
}

//E31: "c[i]" on a declared type - At; under "try", TryAt when declared, else At after checking i against Len()
static struct operand* buildIndexCall(struct checkCtx* ctx, struct operand* base, struct operand* idx, struct token sq) {
    const char* atName = operatorFor(ctx, base->type, "At", sq);
    if (!atName) return OperandIntLiteral(sq);
    struct operand* seq = NULL;
    bool derived = ctx->checkingTry && strcmp(atName + 1, "ryAt") != 0;
    if (derived) {
        const char* lenName = operatorMethodName(ctx, base->type, "Len");
        if (!lenName) ErrMsgSemantic(sq, TRY_INDEX_NEEDS_LEN);
        else {
            base = heldOnce(ctx, base, sq, "col", &seq);
            idx = asParam(ctx, base->type, atName, 1, idx);
            struct operand* len = operatorCall(ctx, base, NULL, lenName, sq);
            idx = operandBounds(idx, OperandIntLiteral(sq), len, false, sq);
        }
    }
    struct operand* call = operatorCall(ctx, base, idx, atName, sq);
    if (!derived) call->isAtCall = true;
    return finishSeq(seq, call);
}

//E31: "c[lo:hi]" under "try" - TrySlice when declared, else Slice after checking 0 <= lo <= hi <= Len(). An absent
//bound is 0, or Len().
static struct operand* buildSliceCall(struct checkCtx* ctx, struct operand* base, struct operand* lo, struct operand* hi,
                                      struct token sq) {
    const char* slName = operatorFor(ctx, base->type, "Slice", sq);
    if (!slName) return OperandIntLiteral(sq);
    const char* lenName = operatorMethodName(ctx, base->type, "Len");
    struct operand* seq = NULL;
    bool derived = ctx->checkingTry && strcmp(slName + 1, "rySlice") != 0;
    if ((derived || !hi) && !lenName) {
        ErrMsgSemantic(sq, derived ? TRY_SLICE_NEEDS_LEN : SLICE_NEEDS_LEN);
        derived = false;
    }
    if (derived || !hi) base = heldOnce(ctx, base, sq, "col", &seq);
    if (!lo) lo = OperandIntLiteral(sq);
    if (derived) {
        lo = heldOnce(ctx, asParam(ctx, base->type, slName, 1, lo), sq, "lo", &seq);
        //an absent end is Len() itself, which the check then reads a second time
        struct operand* hiAgain = NULL;
        if (hi) hi = hiAgain = heldOnce(ctx, asParam(ctx, base->type, slName, 2, hi), sq, "hi", &seq);
        else {
            hi = operatorCall(ctx, base, NULL, lenName, sq);
            hiAgain = operatorCall(ctx, base, NULL, lenName, sq);
        }
        struct operand* len = operatorCall(ctx, base, NULL, lenName, sq);
        lo = operandBounds(lo, OperandIntLiteral(sq), hiAgain, true, sq);
        hi = operandBounds(hi, OperandIntLiteral(sq), len, true, sq);
    } else if (!hi) {
        hi = lenName ? operatorCall(ctx, base, NULL, lenName, sq) : OperandIntLiteral(sq);
    }
    struct list sargs = ListInit(sizeof(struct operand*));
    ListAdd(&sargs, &lo);
    ListAdd(&sargs, &hi);
    return finishSeq(seq, operatorCallArgs(ctx, base, sargs, slName, sq));
}

struct operand* buildPostfix(struct checkCtx* ctx, struct syntax* s) {
    bool asTarget = ctx->buildingTarget; //this postfix is an assignment's target, its last part the place written
    ctx->buildingTarget = false;
    //E13b: a "try" covers the chain's last call, not a call inside it
    struct syntaxPart* lastPart = partAt(s, s->parts.len - 1);
    bool allowLast = false;
    if (s->parts.len > 1 && !lastPart->isToken && lastPart->sntx->type == SNTX_EXPR_VALUE_CALL) {
        allowLast = ctx->allowFallibleCall;
        ctx->allowFallibleCall = false;
    }
    int consumed = 1;
    struct operand* crossModuleRead = tryBuildCrossModuleVarRead(ctx, s, &consumed);
    struct operand* result = crossModuleRead ? crossModuleRead : buildExprFromSyntax(ctx, partSntx(s, 0));
    int startIdx = crossModuleRead ? consumed : 1;
    for (int i = startIdx; i < s->parts.len; i++) {
        struct syntaxPart* p = partAt(s, i);
        if (p->isToken) {
            //S3a: an increment is a statement of its own, never part of an expression
            if (!(s == ctx->incDecRoot && i == s->parts.len - 1)) ErrMsgSemantic(p->tok, INCDEC_IN_EXPRESSION);
            struct operand* incDec = buildIncDec(ctx, result, p->tok.type == TOK_INC, false, p->tok); //E31
            if (incDec) result = incDec;
            else if (p->tok.type == TOK_INC) result = OperandUnary(result, OPERATION_POSTFIX_INC, p->tok);
            else result = OperandUnary(result, OPERATION_POSTFIX_DEC, p->tok);
        } else if (p->sntx->type == SNTX_EXPR_INDEX) {
            struct syntax* idxExprNode = firstPartOfType(p->sntx, SNTX_EXPR);
            struct operand* idx = buildExprFromSyntax(ctx, idxExprNode);
            //E31: "x[i]" on a type declaring At - or, under "try", TryAt
            struct token sq = firstTokOfType(p->sntx, TOK_SQUARE_O);
            bool hasAt = operatorMethodName(ctx, result->type, "At") || tryOperatorName(ctx, result->type, "At");
            bool hasSet = operatorMethodName(ctx, result->type, "SetAt") || tryOperatorName(ctx, result->type, "SetAt");
            if (result->type.bType != BASETYPE_ARRAY && hasAt) {
                result = buildIndexCall(ctx, result, idx, sq);
            } else if (result->type.bType != BASETYPE_ARRAY && hasSet) {
                //a type that only stores: "x[i]" is a place for SetAt, and nothing to read (E31)
                if (!(asTarget && i == s->parts.len - 1)) ErrMsgSemantic(sq, AT_UNDECLARED);
                struct operand* place = operandNew(sq, OPERATION_INDEX, TypeVanilla(BASETYPE_INT32));
                ListAdd(&place->args, &result);
                ListAdd(&place->args, &idx);
                place->isAtCall = true;
                result = place;
            } else result = OperandIndex(result, idx, sq);
        } else if (p->sntx->type == SNTX_EXPR_SLICE) {
            //either bound may be absent; the colon's own position is what says which side a present one
            //sits on (see parseExprIndex)
            struct syntax* loNode = NULL;
            struct syntax* hiNode = NULL;
            bool afterColon = false;
            for (int j = 0; j < p->sntx->parts.len; j++) {
                struct syntaxPart* q = partAt(p->sntx, j);
                if (q->isToken) { if (q->tok.type == TOK_COLON) afterColon = true; continue; }
                if (q->sntx->type != SNTX_EXPR) continue;
                if (afterColon) hiNode = q->sntx; else loNode = q->sntx;
            }
            struct operand* lo = loNode ? buildExprFromSyntax(ctx, loNode) : NULL;
            struct operand* hi = hiNode ? buildExprFromSyntax(ctx, hiNode) : NULL;
            struct token sq = firstTokOfType(p->sntx, TOK_SQUARE_O);
            //E31: "x[lo:hi]" on a type declaring Slice - an absent bound is 0, or the value's Len(); under "try", TrySlice
            if (result->type.bType != BASETYPE_ARRAY && !operatorMethodName(ctx, result->type, "Slice")
                && tryOperatorName(ctx, result->type, "Slice")) {
                result = buildSliceCall(ctx, result, lo, hi, sq);
                continue;
            }
            const char* slName = result->type.bType != BASETYPE_ARRAY ? operatorMethodName(ctx, result->type, "Slice") : NULL;
            if (slName && ctx->checkingTry) {
                result = buildSliceCall(ctx, result, lo, hi, sq);
                continue;
            }
            if (slName) {
                if (!lo) lo = OperandIntLiteral(sq);
                if (!hi) {
                    if (methodNamedOn(result->type, "Len")) hi = operatorCall(ctx, result, NULL, "Len", sq);
                    else { ErrMsgSemantic(sq, SLICE_NEEDS_LEN); hi = OperandIntLiteral(sq); }
                }
                struct list sargs = ListInit(sizeof(struct operand*));
                ListAdd(&sargs, &lo);
                ListAdd(&sargs, &hi);
                result = operatorCallArgs(ctx, result, sargs, slName, sq);
            } else result = OperandSlice(result, lo, hi, sq);
        } else if (p->sntx->type == SNTX_EXPR_VALUE_CALL) {
            result = buildValueCall(ctx, result, p->sntx, i == s->parts.len - 1 && allowLast);
        } else { //SNTX_EXPR_MEMBR
            struct token memberTok = firstTokOfType(p->sntx, TOK_IDEN);
            //M19/M19b: an argument list here makes this a METHOD call on whatever the chain has built so
            //far - "arr[i].Area()", "f(x).Size()". The call form built around an alias-chain name reaches
            //only plain identifiers, so this is the only way a method on an indexed or returned value is
            //written at all.
            struct syntax* argsNode = firstPartOfType(p->sntx, SNTX_EXPR_ARGS);
            if (argsNode) {
                bool mReported = false;
                struct operand* mc = buildMethodCall(ctx, result, memberTok, argsNode,
                                                     ListInit(sizeof(struct syntax*)), &mReported);
                if (mc) { result = mc; continue; }
                ErrMsgSemantic(memberTok, unknownMethodMsg(result, memberTok));
                result = OperandIntLiteral(memberTok);
                continue;
            }
            result = OperandMember(ctx->mod, result, strFromTok(memberTok), memberTok);
        }
    }
    return result;
}

struct list buildArgs(struct checkCtx* ctx, struct syntax* argsNode) {
    struct list result = ListInit(sizeof(struct operand*));
    struct list exprs = allPartsOfType(argsNode, SNTX_EXPR);
    for (int i = 0; i < exprs.len; i++) {
        struct syntax* e = *(struct syntax**)ListGetIdx(&exprs, i);
        bool prevChecking = ctx->checkingTry; //a written call's arguments are not what its "try" checks (R20)
        ctx->checkingTry = false;
        struct operand* op = buildExprFromSyntax(ctx, e);
        ctx->checkingTry = prevChecking;
        //D8d: a call returning several values, as the only argument, is its results as the arguments - "f(g())".
        //Each argument reads one result of the one evaluation, in order
        if (op->type.isTuple && exprs.len == 1) {
            op->isSpreadSource = true;
            for (int k = 0; k < op->type.vars.len; k++) {
                struct var* field = ListGetIdx(&op->type.vars, k);
                struct operand* part = OperandMember(ctx->mod, op, field->name, op->tok);
                part->spreadIndex = k;
                ListAdd(&result, &part);
            }
            return result;
        }
        if (op->type.isTuple) ErrMsgSemantic(op->tok, TUPLE_NOT_A_VALUE); //D8c
        ListAdd(&result, &op);
    }
    return result;
}

//E14a: "default" stands for a PARAMETER's declared value, so it means nothing in an argument list that
//isn't binding parameters - a struct literal's field list, or a builtin like len()/int32(). Called by
//each of those to reject it with a real message rather than letting a void marker operand flow onward.
void rejectDefaultArgs(struct list args) {
    for (int i = 0; i < args.len; i++) {
        struct operand* a = *(struct operand**)ListGetIdx(&args, i);
        if (a->isDefaultArg) ErrMsgSemantic(a->tok, DEFAULT_ARG_NOT_ALLOWED);
    }
}

//every error type a `try`'d call can produce must appear in the enclosing function's own declared error
//list, so an unhandled/uncaught error always has somewhere valid to propagate to. Required even for error
//types a catch clause fully handles, not just the ones that actually escape - see the report, this is a
//deliberate simplification (checking only the escaping subset would need catch-exhaustiveness analysis)
void checkTrySuperset(struct checkCtx* ctx, struct token tok, struct type calleeType) {
    if (ctx->inDefer) { ErrMsgSemantic(tok, DEFER_ERROR_ESCAPES); return; } //S19b
    if (!ctx->func) { ErrMsgSemantic(tok, TRY_OUTSIDE_FUNC); return; }
    if (funcIsBareFallible(ctx->func)) return; //R17: whatever fails here is this function's own failure
    for (int i = 0; i < calleeType.errors.len; i++) {
        struct type* e = *(struct type**)ListGetIdx(&calleeType.errors, i);
        bool found = false;
        for (int j = 0; j < ctx->func->type.errors.len; j++) {
            struct type* fe = *(struct type**)ListGetIdx(&ctx->func->type.errors, j);
            if (TypeIsSame(*e, *fe)) { found = true; break; }
        }
        if (!found && !lambdaInferError(ctx->func, e)) { ErrMsgSemantic(tok, TRY_ERROR_NOT_IN_SIGNATURE); return; }
    }
}

//"try f(...)" as a plain expression: propagates on error (checkTrySuperset), yields f's success value
static bool sameExactScope(struct var* a, int da, struct var* b, int db);

//R9a: where one result of a defaulted try lives, seen from THIS function - the scope its callee's scope
//variable was bound to at the call (O17/O18), or for an index/slice the scope its container's storage is
//in. False when it has none to report.
static bool tryResultScope(struct checkCtx* ctx, struct operand* callOp, struct type et, struct var** cv,
                           int* cd, bool* cu) {
    *cv = NULL; *cd = 0; *cu = false;
    if (callOp->opType != OPERATION_FUNCCALL) return RefExactScope(ctx, callOp, true, cv, cd, cu);
    struct var* sv = et.scopeParam;
    if (!sv) return false;
    struct var* r = resolveEffectiveScopeVar(callOp, sv);
    if (r == SCOPE_AMBIGUOUS) { *cu = true; return true; }
    *cv = r;
    *cd = r ? 0 : SemanticBoundScopeDepth(callOp, sv, ctx->blockDepth);
    for (int i = 0; i < callOp->scopeBindings.len; i++) {
        struct scopeBinding* b = ListGetIdx(&callOp->scopeBindings, i);
        if (canonicalVar(b->typeParam) == canonicalVar(sv) && b->boundUnnamed) *cu = true;
    }
    return true;
}

//R9a: "try X default d [, d2 ...]" - on failure the expression's value is the default, and nothing
//propagates, so the enclosing signature need cover nothing (as a catch that handles everything). One default
//per result, and several become the result tuple's struct literal, as "return a, b" builds one.
//A reference result follows the ordinary rules for putting a reference in a variable, and since tags are
//exact (O25) that means the default lives in EXACTLY the scope the result does - so the two paths agree and
//nothing needs merging. null has no scope and a temporary has none of its own (it is built where the result
//lives, E12c). Both are checked against the result type as seen from here - the callee's scope variables
//replaced by what the call bound them to - which is also what codegen allocates a temporary against.
//A by-value result that merely HOLDS references carries per-variable bindings that would all have to agree;
//not supported yet.
static struct operand* buildTryDefault(struct checkCtx* ctx, struct list* nodes, struct operand* callOp,
                                       struct type rt, struct token tok) {
    struct list vals = ListInit(sizeof(struct operand*));
    for (int i = 0; i < nodes->len; i++) {
        struct operand* d = buildExprFromSyntax(ctx, *(struct syntax**)ListGetIdx(nodes, i));
        ListAdd(&vals, &d);
    }
    int want = rt.isTuple ? rt.vars.len : 1;
    if (vals.len != want) { ErrMsgSemantic(tok, TRY_DEFAULT_COUNT); return NULL; }
    struct type view = rt;
    if (rt.isTuple) {
        view.vars = ListInit(sizeof(struct var));
        for (int i = 0; i < rt.vars.len; i++) ListAdd(&view.vars, ListGetIdx(&rt.vars, i));
    }
    for (int i = 0; i < vals.len; i++) {
        struct operand* d = *(struct operand**)ListGetIdx(&vals, i);
        struct type* et = rt.isTuple ? &((struct var*)ListGetIdx(&view.vars, i))->type : &view;
        if (d->type.isTuple) { ErrMsgSemantic(d->tok, TUPLE_NOT_A_VALUE); continue; }
        bool isRef = et->structMAlloc;
        if (!isRef && TypeHoldsReferences(*et)) {
            ErrMsgSemantic(d->tok, TRY_DEFAULT_HOLDS_REFERENCES);
            continue;
        }
        if (isRef) {
            struct var* cv;
            int cd;
            bool cu;
            if (tryResultScope(ctx, callOp, *et, &cv, &cd, &cu)) {
                et->scopeParam = cv;
                et->scopeDepth = cv ? 0 : cd;
            } else {
                cu = true;
            }
            if (!d->isNullLiteral) {
                struct var* dv;
                int dd;
                bool du;
                bool asRef = d->type.structMAlloc;
                bool stored = (asRef || OperandIsLvalue(d)) && RefExactScope(ctx, d, asRef, &dv, &dd, &du);
                if (stored ? (cu || du || !sameExactScope(cv, cd, dv, dd)) : cu) {
                    //a temporary needs a scope it can be built in, which an unnamed one is not (O24)
                    ErrMsgSemantic(d->tok, TRY_DEFAULT_SCOPE);
                    continue;
                }
            }
        }
        reportTypeFit(OperandFitsType(ctx->func, d, *et), d->tok);
    }
    callOp->tryDefaultType = view;
    return rt.isTuple ? OperandStructLiteral(ctx->func, view, vals, tok) : *(struct operand**)ListGetIdx(&vals, 0);
}

static bool blockLeavesValue(struct list* block);
static void buildCatchMatches(struct checkCtx* ctx, struct syntax* errListNode, struct list* errors,
                              struct list* out);
static void checkUncaughtPropagate(struct checkCtx* ctx, struct token tok, struct list* errors,
                                   struct list* matches);
struct list buildBlock(struct checkCtx* ctx, struct syntax* s);

//R9b: m names nothing an earlier clause did not already take
static bool catchMatchCovered(struct list* seen, struct catchMatch* m) {
    if (!m->hasWord) return StatementCatchCoversType(seen, m->errType);
    for (int i = 0; i < seen->len; i++) {
        struct catchMatch* e = ListGetIdx(seen, i);
        if (TypeIsSame(e->errType, m->errType) && (!e->hasWord || e->wordOrdinal == m->wordOrdinal)) return true;
    }
    return false;
}

//R9b: the catch clauses after a tried operand, in order. errors: what the operand can produce (struct type*:
//a call's declared errors, or the bare error alone for a checked index or slice). In value position (valuePos)
//each clause ends one of two ways - its block provably leaves (D10a, counting break and continue), or it
//gives the value with its own default - and never both, since a default after a block that always leaves
//could never be used. rt is the value's type there (NULL when there is none). In a statement a clause simply
//falls through to after the statement, and a default has nothing to give its value to. Whatever no clause
//names propagates, exactly as from a plain try - with or without defaults - so the only way to handle every
//error is to say so, with an item-less "catch".
static void buildCatchClauses(struct checkCtx* ctx, struct syntax* s, struct operand* callOp, struct list* errors,
                              bool valuePos, struct type* rt, struct token tok, struct list* out) {
    *out = ListInit(sizeof(struct catchClause));
    struct list nodes = allPartsOfType(s, SNTX_CATCH_CLAUSE);
    struct list seen = ListInit(sizeof(struct catchMatch));
    bool sawAll = false;
    for (int n = 0; n < nodes.len; n++) {
        struct syntax* cn = *(struct syntax**)ListGetIdx(&nodes, n);
        struct catchClause cc = (struct catchClause){0};
        cc.tok = firstTokOfType(cn, TOK_CATCH);
        cc.matches = ListInit(sizeof(struct catchMatch));
        if (sawAll) ErrMsgSemantic(cc.tok, CATCH_AFTER_CATCH_ALL);
        struct syntax* el = firstPartOfType(cn, SNTX_CATCH_ERR_LIST);
        if (!el) {
            cc.catchAll = true;
            sawAll = true;
        } else {
            buildCatchMatches(ctx, el, errors, &cc.matches);
            bool anyNew = false;
            for (int i = 0; i < cc.matches.len; i++) {
                if (!catchMatchCovered(&seen, ListGetIdx(&cc.matches, i))) anyNew = true;
            }
            if (cc.matches.len > 0 && !anyNew && !sawAll) ErrMsgSemantic(cc.tok, CATCH_CLAUSE_UNREACHABLE);
            for (int i = 0; i < cc.matches.len; i++) ListAdd(&seen, ListGetIdx(&cc.matches, i));
        }
        struct syntax* blk = firstPartOfType(cn, SNTX_BLOCK);
        if (blk) {
            cc.hasBlock = true;
            cc.block = buildBlock(ctx, blk);
        }
        bool hasDefault = hasTokOfType(cn, TOK_DEFAULT);
        if (!valuePos) {
            if (hasDefault) ErrMsgSemantic(firstTokOfType(cn, TOK_DEFAULT), DEFAULT_IN_CATCH_STATEMENT);
        } else {
            bool leaves = blk && blockLeavesValue(&cc.block);
            if (hasDefault && leaves) ErrMsgSemantic(firstTokOfType(cn, TOK_DEFAULT), TRY_DEFAULT_DEAD);
            if (!hasDefault && !leaves) ErrMsgSemantic(cc.tok, CATCH_VALUE_MUST_LEAVE);
            if (hasDefault && !leaves) {
                if (!rt) {
                    ErrMsgSemantic(cc.tok, TRY_DEFAULT_NO_VALUE);
                } else {
                    struct list dn = ListInit(sizeof(struct syntax*));
                    for (int i = 0; i < cn->parts.len; i++) {
                        struct syntaxPart* pt = partAt(cn, i);
                        if (!pt->isToken && pt->sntx->type != SNTX_CATCH_ERR_LIST && pt->sntx->type != SNTX_BLOCK) {
                            ListAdd(&dn, &pt->sntx);
                        }
                    }
                    cc.dflt = buildTryDefault(ctx, &dn, callOp, *rt, firstTokOfType(cn, TOK_DEFAULT));
                    if (cc.dflt) callOp->tryNeedsSlot = true;
                }
            }
        }
        ListAdd(out, &cc);
    }
    if (!sawAll) checkUncaughtPropagate(ctx, tok, errors, &seen);
}

//R20: marks every operation in a tried expression that can fail a check as checked by root, and returns the
//BuiltinError words they can produce. Not through a call (which has its own signature) or a nested try.
static unsigned markCheckedStmts(struct list* stmts, struct operand* root, struct list* errs);
//E31: an operator, index or slice a declared type implements is a call the compiler made, and is reached through as the
//built-in operation would be; one that is a Try form can fail, so it is checked by root too, its errors added to errs.
static unsigned markChecked(struct operand* op, struct operand* root, struct list* errs) {
    //a call with clauses of its own that is also under root (a comprehension's Next, S9a): root takes what they do not
    bool ownAndRoot = op && op->isTried && op->isOperatorCall && op->opType == OPERATION_FUNCCALL;
    if (!op || (op->opType == OPERATION_FUNCCALL && !op->isOperatorCall) || (op != root && !ownAndRoot && (op->isTried || op->checkRoot)))
        return 0;
    unsigned w = 0;
    //held operands, an increment; a comprehension's loop, whose own calls a "try" around it covers (S9e)
    if (op->opType == OPERATION_SEQ || op->opType == OPERATION_COMPREHENSION) w |= markCheckedStmts(&op->comprBody, root, errs);
    if (op->opType == OPERATION_FUNCCALL) {
        struct list* es = &op->readVar->type.errors;
        if (es->len) {
            if (op != root) op->checkRoot = root;
            for (int i = 0; i < es->len; i++) {
                struct type* e = *(struct type**)ListGetIdx(es, i);
                bool seen = false;
                for (int c = 0; ownAndRoot && c < op->catchClauses.len && !seen; c++) {
                    struct catchClause* cc = ListGetIdx(&op->catchClauses, c);
                    for (int m = 0; m < cc->matches.len && !seen; m++) {
                        struct catchMatch* cm = ListGetIdx(&cc->matches, m);
                        seen = !cm->hasWord && TypeIsSame(cm->errType, *e);
                    }
                }
                for (int k = 0; k < errs->len && !seen; k++) seen = TypeIsSame(**(struct type**)ListGetIdx(errs, k), *e);
                if (!seen) ListAdd(errs, &e);
            }
        }
        for (int i = 0; i < op->args.len; i++) w |= markChecked(*(struct operand**)ListGetIdx(&op->args, i), root, errs);
        return w;
    }
    unsigned dbz = 1u << SemanticBuiltinErrorWord("DIVIDE_BY_ZERO"), ovf = 1u << SemanticBuiltinErrorWord("OVERFLOW");
    unsigned inv = 1u << SemanticBuiltinErrorWord("INVALID"), oob = 1u << SemanticBuiltinErrorWord("OUT_OF_BOUNDS");
    struct type t = op->type;
    struct operand* a0 = op->args.len ? *(struct operand**)ListGetIdx(&op->args, 0) : NULL;
    bool isF = a0 && TypeIsFloat(a0->type);
    bool isInt = a0 && TypeIsNumeric(a0->type) && !isF;
    switch (op->opType) {
        case OPERATION_ADD: case OPERATION_SUB: case OPERATION_MUL:
            if (isInt) w = ovf; else if (isF) w = ovf | inv;
            break;
        case OPERATION_DIV:
            if (isInt) w = dbz | (TypeIsUnsigned(a0->type) ? 0 : ovf); else if (isF) w = dbz | ovf | inv;
            break;
        case OPERATION_MOD:
            if (isInt) w = dbz | (TypeIsUnsigned(a0->type) ? 0 : ovf);
            break;
        case OPERATION_MINUS: if (isInt) w = ovf; break;
        case OPERATION_BTSFT_L: case OPERATION_BTSFT_R: w = inv; break;
        case OPERATION_NUMERIC_CONVERT:
            //T4: whatever the target cannot hold of the source - nothing where the source flows into it (T6b); an integer
            //into a float overflows only into F16, whose range is small
            if (a0 && TypeIsFloat(a0->type) && !TypeIsFloat(t)) w = ovf | inv;
            else if (a0 && TypeIsNumeric(a0->type) && a0->type.bType != t.bType && !primFlows(a0->type.bType, t.bType))
                w = TypeIsFloat(t) && !TypeIsFloat(a0->type) ? (t.bType == BASETYPE_F16 ? ovf : 0) : ovf;
            break;
        case OPERATION_SIZED_ARRAY_ALLOC: case OPERATION_SLICE: case OPERATION_BOUNDS: w = oob; break;
        case OPERATION_AS: w = inv; break; //E32: the value is not what "as" names
        case OPERATION_INDEX: if (!op->noCheck) w = oob; break;
        default: break;
    }
    if (w) op->checkRoot = root;
    for (int i = 0; i < op->args.len; i++) w |= markChecked(*(struct operand**)ListGetIdx(&op->args, i), root, errs);
    return w;
}

//E31: whether a try's operand is, as written, a call - "try f(x)", "try a.b().c()" - whose own signature says what
//can fail; anything else is what "try" checks (R20), its operators calling their Try forms
static bool tryOperandIsWrittenCall(struct syntax* n) {
    if (!n) return false;
    if (n->type == SNTX_EXPR_POSTFIX && n->parts.len > 1) {
        struct syntaxPart* last = partAt(n, n->parts.len - 1);
        if (last->isToken) return false;
        if (last->sntx->type == SNTX_EXPR_VALUE_CALL) return true;
        return last->sntx->type == SNTX_EXPR_MEMBR && firstPartOfType(last->sntx, SNTX_EXPR_ARGS);
    }
    if (n->type == SNTX_EXPR_POSTFIX) return tryOperandIsWrittenCall(partSntx(n, 0));
    return n->type == SNTX_EXPR_PRIMARY && firstPartOfType(n, SNTX_EXPR_CALL);
}

struct operand* buildTryExpr(struct checkCtx* ctx, struct syntax* s) {
    struct token tok = firstTokOfType(s, TOK_TRY);
    bool prevAllow = ctx->allowFallibleCall, prevChecking = ctx->checkingTry;
    ctx->allowFallibleCall = true;
    struct syntax* operandNode = firstPartOfType(s, SNTX_EXPR_POSTFIX);
    if (!operandNode) operandNode = firstPartOfType(s, SNTX_EXPR_PRIMARY);
    ctx->checkingTry = !tryOperandIsWrittenCall(operandNode);
    struct operand* callOp = buildExprFromSyntax(ctx, operandNode);
    ctx->allowFallibleCall = prevAllow;
    ctx->checkingTry = prevChecking;
    bool hasClauses = firstPartOfType(s, SNTX_CATCH_CLAUSE) != NULL;
    //R9a's catch-everything shorthand, retired by R9b: a default belongs to a clause, and handling every
    //error is written as one - so what a default covers is always what is written to its left
    if (hasTokOfType(s, TOK_DEFAULT)) {
        ErrMsgSemantic(firstTokOfType(s, TOK_DEFAULT), TRY_DEFAULT_NEEDS_CATCH);
        callOp->isTried = true;
        return callOp;
    }

    //E16c: "try a[lo:hi]" makes the slice fallible instead of aborting on an out-of-range bound (E16b) - the
    //ordinary try expression, on the ordinary terms: it propagates, and the enclosing signature must cover
    //what it can produce. The error it produces is the BARE error (R16): out-of-range is one fact with no
    //further detail worth tracking, and reusing it means no new error type and no new machinery - "? error"
    //and "catch error { }" already compose with everything. A slice with no "try" keeps E16b's abort, so a
    //slice whose bounds provably hold costs nothing and forces no signature change on its caller.
    //E16d: "try a[i]" is the opt-IN to a bounds check, where E16c is a slice's opt-out of the abort. An
    //ordinary index is unchecked (E16), so "try" is what asks for the check at all - and it reports the
    //failure the same way a slice does, by propagating the bare error.
    struct list errors;
    struct type* rt;
    struct list opErrs = ListInit(sizeof(struct type*));
    bool writtenCall = callOp->opType == OPERATION_FUNCCALL && !callOp->isOperatorCall;
    unsigned checkWords = writtenCall ? 0 : markChecked(callOp, callOp, &opErrs);
    if (checkWords || opErrs.len) {
        //R20: "try a[i]", "try (a + b)" - the checks inside, each failing with a word of BuiltinError, and (E31) the
        //errors of the Try forms of a declared type's operators
        errors = ListInit(sizeof(struct type*));
        struct type* builtin = SemanticBuiltinErrorType();
        if (builtin && checkWords) ListAdd(&errors, &builtin);
        for (int i = 0; i < opErrs.len; i++) ListAdd(&errors, ListGetIdx(&opErrs, i));
        rt = &callOp->type;
    } else if (callOp->opType == OPERATION_FUNCCALL && callOp->readVar->type.errors.len > 0) {
        errors = callOp->readVar->type.errors;
        rt = callOp->readVar->type.hasRetType ? callOp->readVar->type.retType : NULL;
    } else {
        ErrMsgSemantic(tok, TRY_REQUIRES_FALLIBLE_CALL);
        return callOp;
    }
    callOp->isTried = true;
    if (hasClauses) {
        unsigned prevMask = builtinWordMask;
        if (checkWords) builtinWordMask = checkWords;
        buildCatchClauses(ctx, s, callOp, &errors, true, rt, tok, &callOp->catchClauses);
        builtinWordMask = prevMask;
    } else {
        struct type et = (struct type){0};
        et.errors = errors;
        checkTrySuperset(ctx, tok, et);
    }
    return callOp;
}

struct operand* buildArrLiteralLevel(struct checkCtx* ctx, struct type elemType, struct syntax* argsNode, struct token tok);

//one item of an array literal's own SNTX_ARR_LIT_ARGS - either a nested bracket group (recursed into with
//the same elemType, one array level deeper - see buildArrLiteralLevel) or a plain leaf expression.
struct operand* buildArrLiteralItem(struct checkCtx* ctx, struct type elemType, struct syntax* item) {
    //E21: there is no multi-dimensional array, so no nested literal - an array of arrays holds references
    if (item->type == SNTX_ARR_LIT_NESTED) {
        ErrMsgSemantic(firstTokOfType(item, TOK_SQUARE_O), NESTED_ARRAY_LITERAL);
        return operandNew(firstTokOfType(item, TOK_SQUARE_O), OPERATION_NONE, elemType);
    }
    return buildExprFromSyntax(ctx, item);
}

//builds one level of a (possibly nested) array literal - see the report. elemType is the one scalar
//element type stated explicitly at the very front of the whole literal (e.g. "Int32" in
//"int32[[1,2,3],[4,5,6]]"), threaded down unchanged through every level of recursion; a nested row never
//restates it. A leaf item (a plain value) is always checked against elemType directly - it's explicit and
//authoritative at every depth, so e.g. an int literal correctly widens to float32 here the same way it
//would anywhere else. A nested item has no restated type of its own, so instead the first row's own
//recursively-determined type becomes this level's element type, and every sibling row is checked against
//that - a differently-shaped or differently-sized sibling row surfaces as an ordinary type-fit error, the
//same machinery as any other mismatch, no separate "shape" check needed. Always self-describing (fixed
//size = however many items are given, at every level) regardless of what it's eventually checked against -
//see OperandFitsType for the one case that's context-dependent (a compile-time-length literal flowing into a runtime-length
//target).
struct operand* buildArrLiteralLevel(struct checkCtx* ctx, struct type elemType, struct syntax* argsNode, struct token tok) {
    struct list items = allSyntaxParts(argsNode);
    struct list builtArgs = ListInit(sizeof(struct operand*));
    for (int i = 0; i < items.len; i++) {
        struct syntax* item = *(struct syntax**)ListGetIdx(&items, i);
        struct operand* built = buildArrLiteralItem(ctx, elemType, item);
        ListAdd(&builtArgs, &built);
    }
    bool nested = items.len > 0 && (*(struct syntax**)ListGetIdx(&items, 0))->type == SNTX_ARR_LIT_NESTED;
    struct type levelElemT = nested ? (*(struct operand**)ListGetIdx(&builtArgs, 0))->type : elemType;
    for (int i = 0; i < builtArgs.len; i++) {
        struct operand* arg = *(struct operand**)ListGetIdx(&builtArgs, i);
        reportTypeFit(OperandFitsType(ctx->func, arg, levelElemT), arg->tok);
    }

    struct type t = (struct type){0};
    t.bType = BASETYPE_ARRAY;
    t.arrElem = MallocOrCrash(sizeof(struct type));
    *t.arrElem = levelElemT;
    t.arrMalloc = false;
    struct operand* lenOp = MallocOrCrash(sizeof(struct operand));
    *lenOp = (struct operand){0};
    lenOp->type = TypeVanilla(BASETYPE_INT64);
    lenOp->isLiteral = true;
    lenOp->intLiteralVal = builtArgs.len;
    t.arrLen = lenOp;

    struct operand* op = operandNew(tok, OPERATION_NONE, t);
    op->isLiteral = true;
    op->args = builtArgs;
    return op;
}

//applies a written type-argument list, if there is one: "Pair<int32, int64>{...}" and "Vec<int32>(...)"
//both name an instantiation, not the generic itself. Same instantiation path a type reference takes (G8),
//so every spelling of the same instantiated type is one type by identity (G10). errTok is only used to
//report a generic named with no arguments at all, which the caller's own node can point at better than
//this can.
struct type* applyTypeArgsTo(struct checkCtx* ctx, struct type* found, struct syntax* argsNode, struct token errTok) {
    if (found->typeParams.len == 0) {
        if (argsNode) ErrMsgSemantic(firstTokAnywhere(argsNode), TYPE_ARGS_ON_NON_GENERIC);
        return NULL;
    }
    if (!argsNode) { ErrMsgSemantic(errTok, MISSING_TYPE_ARGS); return NULL; }
    struct list argNodes = allSyntaxParts(argsNode);
    if (argNodes.len != found->typeParams.len) {
        ErrMsgSemantic(firstTokAnywhere(argsNode), WRONG_TYPE_ARG_COUNT);
        return NULL;
    }
    struct list* scopeParams = ctx->func ? &ctx->func->type.scopeVars : NULL;
    struct list bindings = ListInit(sizeof(struct typeBinding));
    for (int i = 0; i < argNodes.len; i++) {
        struct typeBinding b = (struct typeBinding){0};
        b.name = *(struct str*)ListGetIdx(&found->typeParams, i);
        b.type = resolveTypeArg(ctx->mod, *(struct syntax**)ListGetIdx(&argNodes, i), scopeParams); //G11, as above
        ListAdd(&bindings, &b);
    }
    checkTypeConstraints(&found->typeConstraints, &bindings, firstTokAnywhere(argsNode)); //G19
    return instantiateType(found, &bindings);
}

//the by-value wrapper the two literal forms want: they hold a resolved base type, not the stable slot
struct type applyTypeArgs(struct checkCtx* ctx, struct type base, struct syntax* argsNode, struct token errTok) {
    if (base.typeParams.len == 0) {
        if (argsNode) ErrMsgSemantic(firstTokAnywhere(argsNode), TYPE_ARGS_ON_NON_GENERIC);
        return base;
    }
    struct type* found = typeNamed(ctx->mod, base.name);
    if (!found) return base;
    struct type* spec = applyTypeArgsTo(ctx, found, argsNode, errTok);
    return spec ? *spec : base;
}

//"T[v1, ...]" - see buildArrLiteralLevel for how the type itself is determined (from resolveLiteralBaseType
//plus the argument list's own nesting/counts) and checked.
struct type builtinArrayType(struct semaModule* mod, struct syntax* argsNode, struct token nameTok, struct list* scopeParams);
//E27: see forInBody
struct comprSpec {
    struct syntax* elemNode;
    struct syntax* condNode;
    struct type elemType;
};
static struct comprSpec* comprActive = NULL;
struct operand* buildComprehension(struct checkCtx* ctx, struct type elemType, struct syntax* s,
                                   struct syntax* comprNode, struct token tok);
struct statement buildForInStmnt(struct checkCtx* ctx, struct syntax* s);
struct operand* buildArrayLiteralExpr(struct checkCtx* ctx, struct syntax* s) {
    struct syntax* nameNode = firstPartOfType(s, SNTX_NAME);
    struct token tok = firstTokOfType(s, TOK_SQUARE_O);
    struct list litIdens = allTokOfType(nameNode, TOK_IDEN);
    struct token litNameTok = *(struct token*)ListGetIdx(&litIdens, 0);
    struct type elemType = litIdens.len == 1 && StrCmp(strFromTok(litNameTok), StrFromCStr("Array"))
                               && !typeNamed(ctx->mod, strFromTok(litNameTok))
        ? builtinArrayType(ctx->mod, firstPartOfType(s, SNTX_TYPE_ARGS), litNameTok, NULL) //T7
        : applyTypeArgs(ctx, resolveLiteralBaseType(ctx->mod, nameNode),
                        firstPartOfType(s, SNTX_TYPE_ARGS), firstTokAnywhere(s));
    //"Handle&[...]" - the literal's element type carries its own reference marker, so each element is a
    //separately allocated instance rather than a value laid out inline in the array
    struct list* litScopeVars = ctx->func ? &ctx->func->type.scopeVars : NULL;
    elemType = applyRefMarker(elemType, firstPartOfType(s, SNTX_ELEM_REF_MARKER), litScopeVars);
    //an element is never itself a scope's name, only bare (T7), and an element array is a reference (T7a)
    if (elemType.scopeParam) ErrMsgSemantic(tok, NAMED_SCOPE_ON_ELEMENT);
    if (elemType.bType == BASETYPE_ARRAY && !elemType.structMAlloc) ErrMsgSemantic(tok, ARRAY_NESTED_BY_VALUE);
    //an error type has no constructible values at all - every element would fail to type-check anyway, but
    //an *empty* literal ("MathError[]") would otherwise slip through with nothing to check at all
    if (elemType.bType == BASETYPE_ERROR) {
        ErrMsgSemantic(tok, INVALID_ARRAY_LITERAL_TYPE);
        return operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
    }
    struct syntax* comprNode = firstPartOfType(s, SNTX_COMPREHENSION);
    if (comprNode) return buildComprehension(ctx, elemType, s, comprNode, tok);
    struct operand* lit = buildArrLiteralLevel(ctx, elemType, firstPartOfType(s, SNTX_ARR_LIT_ARGS), tok);
    return lit;
}

//E27: "T[elem for x in src if cond]" - a new array of every elem, built where it lands like "Array<T>(n)". The
//loop is S9a's own lowering, with "[if cond] push(elem)" for a body, so what may be walked, how a name is bound
//and every rule about scopes are for-in's. An element holding references is not admitted yet: where it lives
//would have to be the array's scope, which the lowering does not establish.
struct operand* buildComprehension(struct checkCtx* ctx, struct type elemType, struct syntax* s,
                                   struct syntax* comprNode, struct token tok) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_ARRAY;
    t.arrElem = MallocOrCrash(sizeof(struct type));
    *t.arrElem = elemType;
    t.arrMalloc = true;
    t.scopeDepth = ctx->blockDepth;
    struct operand* op = operandNew(tok, OPERATION_COMPREHENSION, t);
    if (elemType.structMAlloc || TypeHoldsReferences(elemType)) {
        ErrMsgSemantic(tok, COMPREHENSION_REFERENCE_ELEMENT);
        return op;
    }
    struct list items = allSyntaxParts(firstPartOfType(s, SNTX_ARR_LIT_ARGS));
    struct list exprs = allPartsOfType(comprNode, SNTX_EXPR);
    struct comprSpec spec = { *(struct syntax**)ListGetIdx(&items, 0),
                              hasTokOfType(comprNode, TOK_IF) ? *(struct syntax**)ListGetIdx(&exprs, exprs.len - 1) : NULL,
                              elemType };
    comprActive = &spec;
    struct statement loop = buildForInStmnt(ctx, comprNode);
    comprActive = NULL;
    op->comprBody = ListInit(sizeof(struct statement));
    ListAdd(&op->comprBody, &loop);
    return op;
}

//"Type{v1, v2, ...}" - the parser only ever produces this node when the name was already confirmed to be
//some known type (see nameIsKnownType in syntax.c), but that check can't tell struct/choice/error types
//apart - only a struct can actually be built this way, so that narrowing happens here instead.
//true if this type, at its own level or any array level within it, carries an explicit "&name" scope tag.
//Deliberately does NOT recurse into a struct's own members: a scope name is only ever resolvable against
//the constructor that declared it, so a nested struct's tags are that type's problem, not this one's -
//and not recursing is also what keeps a self-referential type from looping here.
bool typeHasNamedScopeTag(struct type t) {
    struct type* cur = &t;
    while (true) {
        if (cur->scopeParam) return true; //not gated on structMAlloc: a runtime-length array (T11) is
                                           //reference-shaped without a marker, and carries its tag here
        if (cur->bType != BASETYPE_ARRAY || !cur->arrElem) return false;
        cur = cur->arrElem;
    }
}

//"Type.WORD" - a choice value. Deliberately doesn't go through resolveLiteralBaseType: that function's own
//2-identifier case means "alias.TypeName" (a cross-module type reference), but here the shape means
//something different - "TypeName.word", always local (the parser only ever produces this node when the
//name's last-but-one identifier is a known type, reached through any alias chain - see
//trailingWordFollowsKnownType in
//syntax.c), so the first identifier is resolved directly against this module's own types instead.
struct operand* buildChoiceValueExpr(struct checkCtx* ctx, struct syntax* s) {
    struct syntax* nameNode = firstPartOfType(s, SNTX_NAME);
    struct list idens = allTokOfType(nameNode, TOK_IDEN);
    struct token typeTok = *(struct token*)ListGetIdx(&idens, idens.len -2);
    struct token wordTok = *(struct token*)ListGetIdx(&idens, idens.len -1);
    //M12: everything before the type is an alias chain, resolved exactly as it is for a cross-module error
    //type or struct literal - two trailing identifiers here (the type and its word) rather than one
    struct semaModule* target = resolveAliasChain(ctx->mod, idens, 2);
    if (!target) return operandNew(wordTok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
    bool crossModule = target != ctx->mod;
    struct type* t = TypeGetList(&target->types, strFromTok(typeTok));
    if (!t) {
        reportUnknownType(target, typeTok);
        return operandNew(wordTok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
    }
    if (crossModule && !isPublic(strFromTok(typeTok))) {
        ErrMsgSemantic(typeTok, TYPE_IS_PRIVATE);
        return operandNew(wordTok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
    }
    //M6a: and the WORD's own capitalization decides its visibility, as for a struct member or error word
    if (crossModule && !isPublic(strFromTok(wordTok))) {
        ErrMsgSemantic(wordTok, CHOICE_CASE_IS_PRIVATE);
        return operandNew(wordTok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
    }
    resolveTypeDecl(t);
    if (t->bType != BASETYPE_CHOICE) {
        ErrMsgSemantic(typeTok, INVALID_CHOICE_VALUE_TYPE);
        return operandNew(wordTok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
    }
    return OperandChoiceValue(ctx, *t, wordTok, firstPartOfType(s, SNTX_EXPR_ARGS),
                              allPartsOfType(s, SNTX_SCOPE_ARG));
}

//M19/M19e: builds "recvOp . name ( args )" as a method call, or returns NULL when `name` is not a method
//of the receiver's type - in which case the caller falls back to whatever else that syntax could be (a
//cross-module call, a plain member access). Shared by the two spellings that can reach a method: a name
//chain ("a.b.f()"), and a postfix member on any other expression ("arr[i].f()", "f(x).g()").
//*reported says this already emitted a diagnostic (or a real call), so the caller must not try again.
//M19e: a default - a method whose receiver is a type variable constrained by a trait - named name, of a trait recv's
//type satisfies, searched in mod, the modules mod imports and the prelude; *found counts the traits offering one (more
//than one is the caller's error)
static struct type* traitOfDefault(struct var* v) {
    struct type* r = SemanticMethodReceiver(v);
    if (!r || r->bType != BASETYPE_TYPEVAR || !r->varConstraint || r->varConstraint->bType != BASETYPE_INTERFACE) return NULL;
    return r->varConstraint;
}
static struct var* interfaceMethodIn(struct semaModule* m, struct type recv, struct str name, int* found, struct var* got) {
    for (int i = 0; i < m->vars.len; i++) {
        struct var* v = ListGetIdx(&m->vars, i);
        if (!v->isMethod || !StrCmp(v->name, name) || v == got) continue;
        struct type* tr = traitOfDefault(v);
        if (!tr) continue;
        struct type iface = *tr;
        if (TypeIsGeneric(iface)) {
            struct list b = ListInit(sizeof(struct typeBinding));
            if (!unifyThroughMethods(iface, recv, &b)) continue;
            iface = TypeSubstitute(iface, &b);
            if (TypeIsGeneric(iface)) continue;
        }
        if (!TypeSatisfiesConstraint(recv, iface, NULL)) continue;
        (*found)++;
        if (!got) got = v;
    }
    return got;
}

static struct var* interfaceMethodFor(struct semaModule* mod, struct type recv, struct str name, int* found) {
    *found = 0;
    struct var* got = interfaceMethodIn(mod, recv, name, found, NULL);
    for (int i = 0; i < mod->imports.len; i++) {
        struct semaModule* im = ((struct semaImport*)ListGetIdx(&mod->imports, i))->mod;
        if (im && im != mod) got = interfaceMethodIn(im, recv, name, found, got);
    }
    for (int i = 0; i < preludeModules.len; i++) {
        struct semaModule* pm = *(struct semaModule**)ListGetIdx(&preludeModules, i);
        if (pm != mod) got = interfaceMethodIn(pm, recv, name, found, got);
    }
    return got;
}

struct operand* buildMethodCall(struct checkCtx* ctx, struct operand* recvOp, struct token mTok,
                                struct syntax* argsNode, struct list scopeArgNodes, bool* reported) {
    *reported = false;
    struct type recvType = recvOp->type;
    struct str mName = strFromTok(mTok);
    //T30: a value of a trait's type was already reported where the type was written - nothing more to say here
    if (recvType.bType == BASETYPE_INTERFACE) { *reported = true; if (argsNode) buildArgs(ctx, argsNode); return OperandIntLiteral(mTok); }

    //T10: every array has "Len()", supplied by the compiler
    if (recvType.bType == BASETYPE_ARRAY && StrCmp(mName, StrFromCStr("Len"))) {
        *reported = true;
        if (prebuiltMethodArgs ? prebuiltMethodArgs->len != 0 : allPartsOfType(argsNode, SNTX_EXPR).len != 0) { ErrMsgSemantic(mTok, WRONG_ARG_COUNT); return OperandIntLiteral(mTok); }
        return OperandLen(recvOp, mTok);
    }
    //E33: a float's bit pattern, and a float from one - supplied by the compiler too
    struct type bitsT;
    if (suppliedBitsMethod(recvType, mName, &bitsT)) {
        *reported = true;
        if (prebuiltMethodArgs ? prebuiltMethodArgs->len != 0 : allPartsOfType(argsNode, SNTX_EXPR).len != 0) { ErrMsgSemantic(mTok, WRONG_ARG_COUNT); return OperandIntLiteral(mTok); }
        return OperandBitcast(recvOp, bitsT, mTok);
    }
    //a field always wins, and a method that shadows one is a name clash rather than a silent preference -
    //the whole point of the rule is that "x.f" has exactly one meaning
    if (recvType.bType == BASETYPE_STRUCT && VarGetList(&recvType.vars, mName)) {
        ErrMsgSemantic(mTok, METHOD_SHADOWS_FIELD);
        *reported = true;
        return OperandIntLiteral(mTok);
    }
    //T29c: a method on written text is looked up on String
    struct type* textT = SemanticBuiltinType(StrFromCStr("String"));
    if (textT && OperandIsWrittenText(recvOp)) recvType = *textT;
    struct var* m = VarGetMethod(recvType.owner, mName, recvType);
    if (!m && SemanticMethodAmbiguous) {
        ErrMsgSemantic(mTok, METHOD_AMBIGUOUS);
        *reported = true;
        return OperandIntLiteral(mTok);
    }
    //M19e: with no method of its own by this name, a default of a trait the type satisfies - one declared in this
    //module, a module it imports, or the prelude. It is a generic method: the call binds its receiver's variable to
    //this type and compiles it for it, as any generic call.
    bool viaInterface = false;
    if (!m) {
        int found = 0;
        m = interfaceMethodFor(ctx->mod, recvType, mName, &found);
        if (found > 1) {
            ErrMsgSemantic(mTok, METHOD_FROM_TWO_INTERFACES);
            *reported = true;
            return OperandIntLiteral(mTok);
        }
        viaInterface = m != NULL;
    }
    bool noArgs = prebuiltMethodArgs ? prebuiltMethodArgs->len == 0 : allPartsOfType(argsNode, SNTX_EXPR).len == 0;
    //E10b: a Hash the compiler supplies, for a value whose type has none and whose parts all hash
    if (!m && StrCmp(mName, StrFromCStr("Hash")) && typeAutoHashable(recvType, 0)) {
        *reported = true;
        if (!noArgs) { ErrMsgSemantic(mTok, WRONG_ARG_COUNT); return OperandIntLiteral(mTok); }
        return buildAutoHash(ctx, recvOp, mTok);
    }
    if (!m || m->type.bType != BASETYPE_FUNC || m->type.vars.len == 0) return NULL;
    //E10b: Hash on a reference never sees a null - a null hashes to 0
    if (!hashNullGuarded && recvType.structMAlloc && noArgs && StrCmp(mName, StrFromCStr("Hash")) && m->type.hasRetType
        && m->type.retType->bType == BASETYPE_INT64
        && !viaInterface) {
        *reported = true;
        struct operand* seq = operandNew(mTok, OPERATION_SEQ, TypeVanilla(BASETYPE_INT64));
        seq->comprBody = ListInit(sizeof(struct statement));
        return seqResult(seq, hashOf(ctx, recvOp, mTok, seq));
    }
    struct type p0 = (*(struct var*)ListGetIdx(&m->type.vars, 0)).type;
    if (!viaInterface && !MethodReceiverAccepts(p0, recvType)) return NULL;
    *reported = true;
    if (m->owner != ctx->mod && !isPublic(mName)) {
        ErrMsgSemantic(mTok, VAR_IS_PRIVATE);
        return OperandIntLiteral(mTok);
    }
    bool allowedM = ctx->allowFallibleCall;
    ctx->allowFallibleCall = false;
    struct list mArgs = prebuiltMethodArgs ? *prebuiltMethodArgs : buildArgs(ctx, argsNode); //E29
    ctx->allowFallibleCall = allowedM;
    struct list withRecv = ListInit(sizeof(struct operand*));
    ListAdd(&withRecv, &recvOp);
    for (int i = 0; i < mArgs.len; i++) ListAdd(&withRecv, ListGetIdx(&mArgs, i));
    if (m->type.errors.len > 0 && !allowedM) ErrMsgSemantic(mTok, UNHANDLED_FALLIBLE_CALL);
    struct operand* call = OperandFuncCall(ctx, m, withRecv, mTok, scopeArgNodes);
    //T29f: an array method a declared type inherits gives the declared type where it gives its receiver's own type -
    //a String's Filter is a String. Same representation, so only the type changes.
    if (recvType.bType == BASETYPE_ARRAY && isDeclaredArray(recvType) && receiverIsBuiltin(p0) && m->type.hasRetType
            && call->type.bType == BASETYPE_ARRAY && !call->type.owner) {
        struct type r = *m->type.retType, pr = p0;
        r.structMAlloc = pr.structMAlloc = false;
        r.refMut = pr.refMut = false;
        r.scopeParam = pr.scopeParam = NULL;
        if (TypeIsSame(r, pr)) {
            call->type.owner = recvType.owner;
            call->type.name = recvType.name;
            call->type.extendsBase = true;
        }
    }
    return call;
}


//M19/T29f: why no method was found - pointing at "extends" when the base has one by that name
static char* unknownMethodMsg(struct operand* recv, struct token name) {
    struct type t = recv->type;
    struct type supplied;
    if (t.owner && t.name.len && !t.extendsBase && (TypeIsNumeric(t) || t.bType == BASETYPE_ARRAY)) {
        struct type base = t;
        base.owner = NULL;
        base.name = (struct str){0};
        if (VarGetMethod(NULL, strFromTok(name), base) || suppliedBitsMethod(base, strFromTok(name), &supplied)) {
            return METHOD_NOT_INHERITED;
        }
    }
    if (TypeIsNumeric(t) && fromBitsTarget(strFromTok(name))) return FROM_BITS_RECEIVER; //E33: not that float's width
    return UNKNOWN_METHOD;
}

struct operand* buildMatchExpr(struct checkCtx* ctx, struct syntax* s);
struct operand* buildPrimary(struct checkCtx* ctx, struct syntax* s) {
    if (s->parts.len == 1 && partAt(s, 0)->isToken) {
        struct token tok = partAt(s, 0)->tok;
        switch (tok.type) {
            case TOK_BOOL_LIT: return OperandBoolLiteral(tok);
            case TOK_NULL_LIT: return OperandNullLiteral(tok);
            case TOK_INT_LIT: return OperandIntLiteral(tok);
            case TOK_FLOAT_LIT: return OperandFloatLiteral(tok);
            case TOK_CHAR_LIT: return OperandCharLiteral(tok);
            case TOK_STR_LIT: return OperandStringLiteral(tok);
            case TOK_IDEN: {
                //inside a destruct{} body only: a bare identifier that isn't a real local but does name
                //one of the instance's own fields reads as that field (no "self." prefix - see the
                //report), checked before the ordinary lookup below so a real local of the same name still
                //correctly shadows it
                if (ctx->destructSelfVar) {
                    struct str name = strFromTok(tok);
                    if (!scopeFindLocal(ctx->scope, name)) {
                        struct var* field = VarGetList(&ctx->destructSelfVar->type.vars, name);
                        if (field) return OperandMember(NULL, OperandReadVar(ctx->destructSelfVar, tok), name, tok);
                    }
                }
                struct var* v = lookupVar(ctx, tok);
                if (!v) return unknownPlaceholder(tok); //keeps checking the rest of the file
                if (v->isFuncDecl) noteFuncValueUse(v, tok); //T22a
                return OperandReadVar(v, tok);
            }
            default: ErrorBugFound(); return NULL;
        }
    }
    if (s->parts.len == 1 && !partAt(s, 0)->isToken && partSntx(s, 0)->type == SNTX_EXPR_TRY) {
        return buildTryExpr(ctx, partSntx(s, 0));
    }
    if (s->parts.len == 1 && !partAt(s, 0)->isToken && partSntx(s, 0)->type == SNTX_LAMBDA) {
        return OperandPendingLambda(ctx, partSntx(s, 0)); //D16: checked once its expected type is known
    }
    if (s->parts.len == 1 && !partAt(s, 0)->isToken && partSntx(s, 0)->type == SNTX_EXPR_MATCH) {
        return buildMatchExpr(ctx, partSntx(s, 0));
    }
    if (s->parts.len == 1 && !partAt(s, 0)->isToken && partSntx(s, 0)->type == SNTX_EXPR_LITERAL) {
        return buildArrayLiteralExpr(ctx, partSntx(s, 0));
    }
    if (s->parts.len == 1 && !partAt(s, 0)->isToken && partSntx(s, 0)->type == SNTX_EXPR_CHOICE_VALUE) {
        return buildChoiceValueExpr(ctx, partSntx(s, 0));
    }
    if (firstPartOfType(s, SNTX_EXPR_CALL)) { //NAME [SCOPE_ARG] EXPR_CALL - "f(...)", "a.f(...)", "f&s(...)"
        struct syntax* nameNode = firstPartOfType(s, SNTX_NAME);
        struct list nameIdens = allTokOfType(nameNode, TOK_IDEN);
        struct token nameTok = *(struct token*)ListGetIdx(&nameIdens, nameIdens.len -1);
        struct syntax* callNode = firstPartOfType(s, SNTX_EXPR_CALL);
        struct list scopeArgNodes = allPartsOfType(s, SNTX_SCOPE_ARG);
        if (firstPartOfType(s, SNTX_SCOPE_ARG) && nameIdens.len == 1
                && numericPrimitiveBaseType(strFromTok(nameTok), &(enum baseType){0})) {
            ErrMsgSemantic(nameTok, SCOPE_ARG_NOT_ACCEPTED);
        }
        //P9: the atomic builtins, intercepted before the normal lookup so no declaration can shadow them
        enum operation atomKind = OPERATION_NONE;
        if (nameIdens.len == 1) {
            struct str nm = strFromTok(nameTok);
            if (StrCmp(nm, StrFromCStr("atomicLoad"))) atomKind = OPERATION_ATOMIC_LOAD;
            else if (StrCmp(nm, StrFromCStr("atomicStore"))) atomKind = OPERATION_ATOMIC_STORE;
            else if (StrCmp(nm, StrFromCStr("atomicAdd"))) atomKind = OPERATION_ATOMIC_ADD;
            else if (StrCmp(nm, StrFromCStr("atomicSwap"))) atomKind = OPERATION_ATOMIC_SWAP;
            else if (StrCmp(nm, StrFromCStr("atomicCas"))) atomKind = OPERATION_ATOMIC_CAS;
        }
        //E10: "same(a, b)" - identity, whatever Eq says
        if (nameIdens.len == 1 && StrCmp(strFromTok(nameTok), StrFromCStr("same"))) {
            struct list sArgs = buildArgs(ctx, firstPartOfType(callNode, SNTX_EXPR_ARGS));
            rejectDefaultArgs(sArgs);
            if (sArgs.len != 2) { reportArgCount(sArgs, nameTok); return OperandBoolLiteral(nameTok); }
            struct operand* sa = *(struct operand**)ListGetIdx(&sArgs, 0);
            struct operand* sb = *(struct operand**)ListGetIdx(&sArgs, 1);
            bool idA = sa->isNullLiteral || sa->type.structMAlloc || sa->type.bType == BASETYPE_FUNC;
            bool idB = sb->isNullLiteral || sb->type.structMAlloc || sb->type.bType == BASETYPE_FUNC;
            if (!idA || !idB) { ErrMsgSemantic(nameTok, SAME_NOT_REFERENCE); return OperandBoolLiteral(nameTok); }
            return OperandBinary(sa, sb, OPERATION_EQ, nameTok);
        }
        if (atomKind != OPERATION_NONE) {
            bool allowedAt = ctx->allowFallibleCall;
            ctx->allowFallibleCall = false;
            struct list atArgs = buildArgs(ctx, firstPartOfType(callNode, SNTX_EXPR_ARGS));
            rejectDefaultArgs(atArgs);
            ctx->allowFallibleCall = allowedAt;
            return OperandAtomic(atArgs, atomKind, nameTok);
        }
        //"int32(x)" etc. - the explicit numeric-conversion builtin (see the report) - intercepted the
        //same way "len" is, before the normal var/constructor lookup: a primitive type name is never a
        //valid var/constructor target anyway (TypeGetList never finds a primitive - see
        //resolveLiteralBaseType), so this can never actually shadow a real declaration either way, but
        //checking here keeps the dispatch uniform with len's own established pattern.
        //T29: a DECLARED type whose underlying shape is numeric converts the same way a primitive name
        //does - "Meters(n)" is the way into a nominal type, and without it nominality would be a prison
        //you could leave (int32(m) already worked, since Meters IS numeric) but never enter.
        struct type* namedConv = NULL;
        if (nameIdens.len == 1) {
            struct type* cand = typeNamed(ctx->mod, strFromTok(nameTok));
            //numeric goes through the numeric path (it may genuinely change width); anything else with a
            //shared representation is a pure retype
            if (cand && ((isTypeVanilla(cand->bType) && TypeIsNumeric(*cand))
                         || cand->bType == BASETYPE_ARRAY)) namedConv = cand;
            if (cand) resolveTypeDecl(cand);
            if (cand && cand->hasCtor) namedConv = NULL; //T29d: its constructor is the way in
        }
        if (namedConv) {
            bool allowedNamed = ctx->allowFallibleCall;
            ctx->allowFallibleCall = false;
            struct list convArgs = buildArgs(ctx, firstPartOfType(callNode, SNTX_EXPR_ARGS));
            rejectDefaultArgs(convArgs);
            ctx->allowFallibleCall = allowedNamed;
            if (convArgs.len != 1) { reportArgCount(convArgs, nameTok); return OperandIntLiteral(nameTok); }
            struct operand* convArg = *(struct operand**)ListGetIdx(&convArgs, 0);
            if (namedConv->bType == BASETYPE_ARRAY) return OperandNominalConversion(*namedConv, convArg, nameTok);
            return OperandNumericConversion(*namedConv, convArg, nameTok);
        }
        enum baseType convTo;
        if (nameIdens.len == 1 && numericPrimitiveBaseType(strFromTok(nameTok), &convTo)) {
            bool allowedConv = ctx->allowFallibleCall;
            ctx->allowFallibleCall = false;
            struct list convArgs = buildArgs(ctx, firstPartOfType(callNode, SNTX_EXPR_ARGS));
            rejectDefaultArgs(convArgs);
            ctx->allowFallibleCall = allowedConv;
            if (convArgs.len != 1) { reportArgCount(convArgs, nameTok); return OperandIntLiteral(nameTok); }
            struct operand* convArg = *(struct operand**)ListGetIdx(&convArgs, 0);
            return OperandNumericConversion(TypeVanilla(convTo), convArg, nameTok);
        }
        //M19: "x.f(args)" is a METHOD call when x names a value in scope and f is a method declared for
        //x's type - in the type's own module for a declared type, anywhere for a built-in. The receiver is
        //an ordinary first argument once resolved, so every existing rule about it (D9's mut/&, E12's
        //conversions, the borrow and race checks) applies with no special case.
        struct token recvTok = *(struct token*)ListGetIdx(&nameIdens, 0);
        struct var* recvVar = nameIdens.len >= 2 ? scopeFindUse(ctx->scope, strFromTok(recvTok), recvTok) : NULL;
        //...or a global: one of this module's, a build constant ("TargetOs.Len()"), or another module's
        //exported one reached through its import aliases ("sh.Units.Len()"). M20 again keeps these apart: an
        //alias is never also a global's name in the module that wrote the import
        int recvStart = 1;
        if (!recvVar && nameIdens.len >= 2) {
            struct var* g = VarGetList(&ctx->mod->vars, strFromTok(recvTok));
            if (!g) g = buildConstVar(strFromTok(recvTok));
            if (g && g->type.bType != BASETYPE_FUNC) recvVar = g;
        }
        if (!recvVar && nameIdens.len >= 3) {
            struct semaModule* target = ctx->mod;
            int i = 0;
            while (i + 2 < nameIdens.len) {
                struct semaModule* next = findImport(target, strFromTok(*(struct token*)ListGetIdx(&nameIdens, i)));
                if (!next) break;
                target = next;
                i++;
            }
            struct token gTok = *(struct token*)ListGetIdx(&nameIdens, i);
            struct var* g = i > 0 ? VarGetList(&target->vars, strFromTok(gTok)) : NULL;
            if (g && g->type.bType != BASETYPE_FUNC && isPublic(g->name)) {
                recvVar = g;
                recvTok = gTok;
                recvStart = i + 1;
            }
        }
        //the receiver may be a member-access CHAIN and not just a plain name: "a.b.f()" is "f(a.b)"
        //wherever "a.b" names a value. M20's alias reservation is what makes that safe to even try - a
        //local named "a" means no import is called "a", so a leading local rules the whole chain out of
        //being a module path and there is nothing left to disambiguate against.
        //The chain is PROBED here, over types alone, building nothing and reporting nothing: a chain that
        //doesn't resolve simply isn't a method call, and the ordinary call path below owns the real
        //diagnostic for whatever the name turns out to be.
        struct type recvType = recvVar ? recvVar->type : (struct type){0};
        for (int i = recvStart; recvVar && i +1 < nameIdens.len; i++) {
            struct token fTok = *(struct token*)ListGetIdx(&nameIdens, i);
            struct var* f = recvType.bType == BASETYPE_STRUCT ? VarGetList(&recvType.vars, strFromTok(fTok)) : NULL;
            if (!f) { recvVar = NULL; break; }
            recvType = f->type;
        }
        if (recvVar) {
            //the chain has resolved to a value, so the lookup is the shared one - see buildMethodCall,
            //which this spelling and the postfix one ("arr[i].f()") both go through
            struct operand* recvOp = OperandReadVar(recvVar, recvTok);
            for (int i = recvStart; i +1 < nameIdens.len; i++) {
                struct token fTok = *(struct token*)ListGetIdx(&nameIdens, i);
                recvOp = OperandMember(ctx->mod, recvOp, strFromTok(fTok), fTok);
            }
            bool mReported = false;
            struct operand* mc = buildMethodCall(ctx, recvOp, nameTok,
                                                 firstPartOfType(callNode, SNTX_EXPR_ARGS), scopeArgNodes, &mReported);
            if (mc) return mc;
            //M20 means a value is never also an import alias, so there is no other reading to fall back to
            if (!mReported) ErrMsgSemantic(nameTok, unknownMethodMsg(recvOp, nameTok));
            buildArgs(ctx, firstPartOfType(callNode, SNTX_EXPR_ARGS));
            return OperandIntLiteral(nameTok);
        }
        //T7: "Array<T>(n)" / "Array<T>(n, v)" - n elements, each the element type's zero value or v
        if (nameIdens.len == 1 && StrCmp(strFromTok(nameTok), StrFromCStr("Array")) && !typeNamed(ctx->mod, strFromTok(nameTok))) {
            struct type at = builtinArrayType(ctx->mod, firstPartOfType(callNode, SNTX_TYPE_ARGS), nameTok, NULL);
            bool allowedArr = ctx->allowFallibleCall;
            ctx->allowFallibleCall = false;
            struct list aArgs = buildArgs(ctx, firstPartOfType(callNode, SNTX_EXPR_ARGS));
            rejectDefaultArgs(aArgs);
            ctx->allowFallibleCall = allowedArr;
            if (aArgs.len < 1 || aArgs.len > 2) { reportArgCount(aArgs, nameTok); return OperandIntLiteral(nameTok); }
            struct operand* sizeOp = *(struct operand**)ListGetIdx(&aArgs, 0);
            if (!OperandIsInt(sizeOp)) ErrMsgSemantic(sizeOp->tok, OPERATION_REQUIRES_INT);
            at.scopeDepth = ctx->blockDepth;
            struct operand* alloc = OperandSizedArrayAlloc(sizeOp, at, nameTok);
            if (aArgs.len == 2) {
                struct operand* fill = *(struct operand**)ListGetIdx(&aArgs, 1);
                reportTypeFit(OperandFitsType(ctx->func, fill, *at.arrElem), fill->tok);
                ListAdd(&alloc->args, &fill);
            } else {
                struct operand* zero = zeroValueFor(ctx, *at.arrElem, nameTok, true); //D13c: each element its zero
                if (zero) ListAdd(&alloc->args, &zero);
            }
            return alloc;
        }
        struct var* func = resolveCallTarget(ctx, nameNode, firstPartOfType(callNode, SNTX_TYPE_ARGS));
        //only the one primary directly under a `try` is allowed to be a fallible call - see buildTryExpr
        bool allowed = ctx->allowFallibleCall;
        ctx->allowFallibleCall = false;
        struct list args = buildArgs(ctx, firstPartOfType(callNode, SNTX_EXPR_ARGS));
        if (!func) return unknownPlaceholder(nameTok); //reported - and nothing after says so again
        if (func->type.bType != BASETYPE_FUNC) {
            //E31: "next()" on a variable whose type declares Call
            const char* cn = operatorMethodName(ctx, func->type, "Call");
            if (cn) {
                ctx->allowFallibleCall = allowed;
                struct operand* recv = OperandReadVar(func, nameTok);
                struct operand* c = operatorCallArgs(ctx, recv, args, cn, nameTok);
                ctx->allowFallibleCall = false;
                return c;
            }
            ErrMsgSemantic(nameTok, NOT_CALLABLE);
            return OperandIntLiteral(nameTok);
        }
        if (func->type.errors.len > 0 && !allowed) ErrMsgSemantic(nameTok, UNHANDLED_FALLIBLE_CALL);
        struct operand* call = OperandFuncCall(ctx, func, args, nameTok, scopeArgNodes);
        //a constructor is exactly the function a struct type points at as its own - true for an
        //instantiation's monomorphized constructor too, since that points at the instantiation
        if (call->readVar) func = call->readVar; //G10c: the instantiation's constructor, when inferred
        call->isCtorCall = func->type.hasRetType && func->type.retType->bType == BASETYPE_STRUCT
                           && func->type.retType->ctorFunc == func;
        if (call->isCtorCall) bindCtorHere(ctx, call, func);
        return call;
    }
    //parenthesized sub-expression: TOK_PAREN_O SNTX_EXPR TOK_PAREN_C
    return buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
}

struct operand* buildExprFromSyntax(struct checkCtx* ctx, struct syntax* s) {
    switch (s->type) {
        //SNTX_EXPR is always a single-child wrapper around whatever parseBinaryExpr actually built - a
        //degenerate 1-part "chain" itself when parts.len==1, so buildBinChain's own generic handling of
        //that shape (just recurse into part[0] and return it) covers both uniformly - see the report
        case SNTX_EXPR: case SNTX_EXPR_BINARY:
            return buildBinChain(ctx, s);
        //E14a: only ever reachable from a call's own argument list (parseExprArg builds it nowhere else).
        //OperandFuncCall replaces it with the parameter's declared default; every other consumer of an
        //argument list rejects it, so it can never reach codegen.
        case SNTX_EXPR_DEFAULT: {
            struct operand* op = operandNew(firstTokAnywhere(s), OPERATION_NONE, TypeVanilla(BASETYPE_VOID));
            op->isDefaultArg = true;
            return op;
        }
        case SNTX_EXPR_UNARY: return buildUnary(ctx, s);
        case SNTX_EXPR_IS: case SNTX_EXPR_AS: return buildIsAs(ctx, s);
        case SNTX_EXPR_TEXT: return buildText(ctx, s);
        case SNTX_EXPR_POSTFIX: return buildPostfix(ctx, s);
        case SNTX_EXPR_PRIMARY: return buildPrimary(ctx, s);
        default: ErrorBugFound(); return NULL;
    }
}

// ---- statements ----

struct statement buildStatement(struct checkCtx* ctx, struct syntax* s);
void buildStatementsInto(struct checkCtx* ctx, struct syntax* s, struct list* out);
static bool destructTargetName(struct syntax* t, struct token* out);
struct statement buildAssignCore(struct checkCtx* ctx, struct operand* target, struct operand* rhs, struct token opTok);
struct statement buildVarDeclFromOperand(struct checkCtx* ctx, struct token nameTok, struct operand* rhs);

struct list buildBlock(struct checkCtx* ctx, struct syntax* blockNode) {
    struct scope inner = scopePush(ctx->scope);
    struct checkCtx innerCtx = *ctx;
    innerCtx.scope = &inner;
    innerCtx.blockDepth = ctx->blockDepth + 1;
    innerCtx.checkingTry = false; //a lambda's or a clause's block is no part of what a "try" checks

    struct list result = ListInit(sizeof(struct statement));
    struct list stmts = allPartsOfType(blockNode, SNTX_STMNT);
    for (int i = 0; i < stmts.len; i++) {
        int from = result.len;
        buildStatementsInto(&innerCtx, *(struct syntax**)ListGetIdx(&stmts, i), &result);
        for (int k = from; k < result.len; k++) finalizeStmtLambdas(ListGetIdx(&result, k)); //D16b
    }
    return result;
}

//D8c: the name a ":=" destructuring target declares - a bare identifier and nothing else
static bool destructTargetName(struct syntax* t, struct token* out) {
    struct list toks = ListInit(sizeof(struct token));
    struct list stack = ListInit(sizeof(struct syntax*));
    ListAdd(&stack, &t);
    while (stack.len > 0) {
        struct syntax* n = *(struct syntax**)ListGetIdx(&stack, stack.len - 1);
        stack.len--;
        for (int i = 0; i < n->parts.len; i++) {
            struct syntaxPart* p = ListGetIdx(&n->parts, i);
            if (p->isToken) ListAdd(&toks, &p->tok);
            else ListAdd(&stack, &p->sntx);
        }
    }
    if (toks.len != 1) return false;
    *out = *(struct token*)ListGetIdx(&toks, 0);
    return out->type == TOK_IDEN;
}

//D8c: "a, b := f()" / "a, b = f()". Lowered to a hidden local holding the call's result, then one
//ordinary declaration or assignment per target reading its field - so every rule a declaration or an
//assignment has (fit, O25's exact scope, the binding a call made) applies per element with nothing new.
static int destructCounter;
//S4c: "t1, t2 = v1, v2" - every value evaluated, left to right, before any target is written, so "a, b = b, a"
//swaps; a value no write could change (a literal) is used where it stands, every other one held in a hidden local
//first. "t1, t2 := v1, v2" declares each name from its value, in order.
static struct var* holdInHidden(struct checkCtx* ctx, struct operand* x, struct token tok, const char* tag,
                                struct list* out);
static void buildParallel(struct checkCtx* ctx, struct list targets, struct list values, bool declare,
                          struct token opTok, struct list* out) {
    if (values.len != targets.len) { ErrMsgSemantic(opTok, ASSIGN_LIST_COUNT); return; }
    if (declare) {
        for (int i = 0; i < targets.len; i++) {
            struct syntax* t = *(struct syntax**)ListGetIdx(&targets, i);
            struct token nameTok;
            if (!destructTargetName(t, &nameTok)) { ErrMsgSemantic(firstTokAnywhere(t), DESTRUCT_DECLARES_NAMES); continue; }
            struct operand* v = buildExprFromSyntax(ctx, *(struct syntax**)ListGetIdx(&values, i));
            if (StrCmp(strFromTok(nameTok), StrFromCStr("_"))) continue;
            struct statement st = buildVarDeclFromOperand(ctx, nameTok, v);
            ListAdd(out, &st);
        }
        return;
    }
    struct list held = ListInit(sizeof(struct operand*));
    for (int i = 0; i < values.len; i++) {
        struct operand* v = buildExprFromSyntax(ctx, *(struct syntax**)ListGetIdx(&values, i));
        if (!(v->isLiteral || v->isNullLiteral)) v = OperandReadVar(holdInHidden(ctx, v, opTok, "par", out), opTok);
        ListAdd(&held, &v);
    }
    for (int i = 0; i < targets.len; i++) {
        struct syntax* t = *(struct syntax**)ListGetIdx(&targets, i);
        struct token nameTok;
        if (destructTargetName(t, &nameTok) && StrCmp(strFromTok(nameTok), StrFromCStr("_"))) continue;
        struct statement st = buildAssignCore(ctx, buildExprFromSyntax(ctx, t), *(struct operand**)ListGetIdx(&held, i), opTok);
        ListAdd(out, &st);
    }
}

static void buildDestruct(struct checkCtx* ctx, struct syntax* s, struct list* out) {
    struct list targets = allPartsOfType(s, SNTX_EXPR_POSTFIX);
    bool declare = hasTokOfType(s, TOK_ASS_INFER);
    struct token opTok = firstTokOfType(s, declare ? TOK_ASS_INFER : TOK_ASS);
    struct list values = allPartsOfType(s, SNTX_EXPR);
    if (values.len > 1) { buildParallel(ctx, targets, values, declare, opTok, out); return; }
    struct operand* rhs = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
    //a call returning several values, or (E32) an enum case's payload of several fields taken with "as"
    if (!rhs->type.isTuple || (rhs->opType != OPERATION_FUNCCALL && rhs->opType != OPERATION_AS)) {
        ErrMsgSemantic(rhs->tok, DESTRUCT_NEEDS_RESULTS);
        return;
    }
    if (rhs->type.vars.len != targets.len) { ErrMsgSemantic(opTok, DESTRUCT_COUNT_MISMATCH); return; }
    char* nm = MallocOrCrash(24);
    snprintf(nm, 24, "$results%d", destructCounter++); //"$" cannot begin an identifier, so this never collides
    struct type ht = rhs->type;
    ht.scopeDepth = ctx->blockDepth;
    struct var* hv = scopeDeclare(ctx->mod, ctx->scope, StrFromCStr(nm), opTok, ht, true);
    hv->scopeBindings = rhs->scopeBindings;
    struct statement hold = (struct statement){0};
    hold.sType = STATEMENT_VAR_DECL;
    hold.var = *hv;
    hold.op = rhs;
    ListAdd(out, &hold);
    for (int i = 0; i < targets.len; i++) {
        struct syntax* t = *(struct syntax**)ListGetIdx(&targets, i);
        struct token nameTok;
        bool isName = destructTargetName(t, &nameTok);
        if (isName && StrCmp(strFromTok(nameTok), StrFromCStr("_"))) continue; //discarded
        struct var* field = ListGetIdx(&hv->type.vars, i);
        struct operand* elem = OperandMember(ctx->mod, OperandReadVar(hv, opTok), field->name, opTok);
        struct statement st;
        if (declare) {
            if (!isName) { ErrMsgSemantic(firstTokAnywhere(t), DESTRUCT_DECLARES_NAMES); continue; }
            //T7b: the result was built where these locals live, and nothing reads the hidden one again - so
            //an array result is taken, not copied
            elem->isMoveSource = true;
            st = buildVarDeclFromOperand(ctx, nameTok, elem);
        } else {
            st = buildAssignCore(ctx, buildExprFromSyntax(ctx, t), elem, opTok);
        }
        ListAdd(out, &st);
    }
}

static void noteLocalCond(struct checkCtx* ctx, struct syntax* condNode, struct operand* op);

//D16b: a lambda that met no expected type anywhere in its statement is checked on its own signature - the
//safety net under the places that give one (a fit, a call, an operator, ":=")
static void finalizeOpLambdas(struct operand* op) {
    if (!op) return;
    if (op->pendingLambda) FinalizeLambda(op, NULL);
    finalizeOpLambdas(op->callee); //E13b
    //E27: a comprehension's own element and filter were finalized as its loop was built
    for (int i = 0; i < op->args.len; i++) finalizeOpLambdas(*(struct operand**)ListGetIdx(&op->args, i));
    for (int i = 0; i < op->catchClauses.len; i++) finalizeOpLambdas(((struct catchClause*)ListGetIdx(&op->catchClauses, i))->dflt);
    if (op->opType == OPERATION_MATCH) for (int i = 0; i < op->comprBody.len; i++) finalizeStmtLambdas(ListGetIdx(&op->comprBody, i));
}
static void finalizeStmtLambdas(struct statement* st) {
    finalizeOpLambdas(st->op);
    finalizeOpLambdas(st->target);
    finalizeOpLambdas(st->fillValue);
    finalizeOpLambdas(st->forInit);
    for (int i = 0; i < st->spawnTargets.len; i++) finalizeOpLambdas(*(struct operand**)ListGetIdx(&st->spawnTargets, i));
    //S12-S13e: what a match evaluates outside its blocks - each case's tests, guard and value
    for (int i = 0; i < st->matchCases.len; i++) {
        struct statement* c = ListGetIdx(&st->matchCases, i);
        for (int a = 0; a < c->caseAlts.len; a++) finalizeOpLambdas(((struct caseAlt*)ListGetIdx(&c->caseAlts, a))->test);
        finalizeOpLambdas(c->caseGuard);
        finalizeOpLambdas(c->op);
    }
    finalizeOpLambdas(st->nomatchValue);
}

void buildStatementsInto(struct checkCtx* ctx, struct syntax* s, struct list* out) {
    struct syntax* actual = partSntx(s, 0);
    if (actual->type == SNTX_STMNT_UNDECIDED) {
        //S8b: this attempt skipped its branches; its condition is still checked here, in its own scope, so
        //a later attempt can decide it
        struct syntax* condNode = firstPartOfType(actual, SNTX_EXPR);
        if (condNode) {
            int errs = ErrMsgGetNErrors();
            struct operand* cond = buildExprFromSyntax(ctx, condNode);
            noteLocalCond(ctx, condNode, ErrMsgGetNErrors() == errs ? cond : NULL);
        }
        return;
    }
    if (actual->type == SNTX_STMNT_CHOSEN) {
        //S8b: the branch the build chose, as a block of its own (a scope, as the if's block was), or nothing.
        //An "if" on a literal true is what D10a and codegen already treat as a block that always runs.
        struct syntax* blockNode = firstPartOfType(actual, SNTX_BLOCK);
        if (!blockNode) return;
        struct token kw = firstTokOfType(actual, TOK_IF);
        struct token t = kw;
        t.type = TOK_BOOL_LIT;
        t.str = StrFromCStr("true");
        struct statement stmt = (struct statement){0};
        stmt.sType = STATEMENT_IF;
        stmt.op = OperandBoolLiteral(t);
        stmt.block = buildBlock(ctx, blockNode);
        stmt.line = kw.lineNr;
        if (kw.owner) stmt.file = TokenGetFileName(kw.owner);
        ListAdd(out, &stmt);
        return;
    }
    if (actual->type == SNTX_VAR_DECLS) { //D12b: one declaration per name, in order
        for (int i = 0; i < actual->parts.len; i++) {
            struct syntax* one = newNode(SNTX_STMNT);
            addSntx(one, partSntx(actual, i));
            buildStatementsInto(ctx, one, out);
        }
        return;
    }
    if (actual->type == SNTX_STMNT_DESTRUCT) {
        int from = out->len;
        buildDestruct(ctx, actual, out);
        struct token t = firstTokAnywhere(actual);
        for (int i = from; i < out->len; i++) {
            ((struct statement*)ListGetIdx(out, i))->line = t.lineNr;
            if (t.owner) ((struct statement*)ListGetIdx(out, i))->file = TokenGetFileName(t.owner);
        }
        return;
    }
    struct statement stmt = buildStatement(ctx, s);
    ListAdd(out, &stmt);
}

//"T[expr]" (expr not constant), no initializer - a runtime-length array of expr zero-valued elements, arena-
//allocated (own by default, or the declared type's own "&name" tag - see the report). sizeOp is the
//already-checked-integer size expression; t is the declared type (see resolveRuntimeSizedArrayDeclType).
struct operand* OperandSizedArrayAlloc(struct operand* sizeOp, struct type t, struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_SIZED_ARRAY_ALLOC, t);
    ListAdd(&op->args, &sizeOp);
    return op;
}

// ---- O25: a reference never narrows ----
//
//A reference's tag is EXACT: the scope its referent was allocated in, never merely one it outlives.
//Narrowing - letting a reference flow into a shorter-tagged slot - is sound for reading and not for
//writing, because anything written through the reference is allocated "into the target's scope" (E12c)
//and stored where the referent actually lives. "a mut N& = p; a.next = N(5)" put the new node in this
//function's arena and hung it off the caller's list. So a local takes the exact scope of what initializes
//it, and every other place a tag could change requires the same scope.

//the block depth a NULL ("own") scope means, normalised: 0 and 1 are both the body's own arena
static int normDepth(int d) { return d < 1 ? 1 : d; }

static bool sameExactScope(struct var* a, int da, struct var* b, int db) {
    if (canonicalVar(a) != canonicalVar(b)) return false;
    return a != NULL || normDepth(da) == normDepth(db);
}

//true when a value of this type can hold a reference - a field, element or payload that is one. Only
//then does a narrowed tag matter: writing through a reference to plain data allocates nothing and stores
//no reference, so there is nothing for a wrong scope to be wrong about.
static bool typeHoldsReferencesAt(struct type t, int depth) {
    if (depth > VALUE_WALK_LIMIT) return false;
    t.structMAlloc = false;
    struct list kids = TypeValueChildren(t);
    for (int i = 0; i < kids.len; i++) {
        struct type k = *(struct type*)ListGetIdx(&kids, i);
        if (k.structMAlloc) return true;
        if (typeHoldsReferencesAt(k, depth + 1)) return true;
    }
    return false;
}
bool TypeHoldsReferences(struct type t) { return typeHoldsReferencesAt(t, 0); }

//O25: whether a write through a reference of type t can store a reference where its referent lives - into a slot it
//may write (a "mut" field through a writable reference, an element of a writable array), or through a writable
//reference reached from it at any depth. Only then does a narrowed scope matter: what such a store builds is built in
//the reference's scope and kept where the referent really is. Through anything else - an enum, whose payloads are
//never assigned, a read-only reference - nothing is ever stored, so a reference that merely outlives where it is put
//serves exactly as well as an exact one. A value (not a reference) answers as TypeHoldsReferences does.
struct narrowSeen { struct semaModule* owner; struct str name; bool writable; };
static bool valueAdmitsStores(struct type v, bool writable, struct list* seen, int depth);
static bool refAdmitsStores(struct type t, struct list* seen, int depth) {
    struct type v = t;
    v.structMAlloc = false;
    return valueAdmitsStores(v, t.refMut, seen, depth);
}
static bool partAdmitsStores(struct type p, bool writable, struct list* seen, int depth) {
    bool holds = p.structMAlloc || (p.bType == BASETYPE_ARRAY && p.arrMalloc) || TypeHoldsReferences(p);
    if (writable && holds) return true; //the slot itself may be written, with references in what is written
    if (p.structMAlloc) return refAdmitsStores(p, seen, depth + 1);
    return valueAdmitsStores(p, writable, seen, depth + 1);
}
static bool valueAdmitsStores(struct type v, bool writable, struct list* seen, int depth) {
    if (depth > 64 || v.bType == BASETYPE_TYPEVAR) return true; //a pattern, not a type: assume the worst
    if (v.unknown) return false;
    if (v.owner && v.name.len && (v.bType == BASETYPE_STRUCT || v.bType == BASETYPE_CHOICE)) {
        for (int i = 0; i < seen->len; i++) {
            struct narrowSeen* n = ListGetIdx(seen, i);
            if (n->owner == v.owner && StrCmp(n->name, v.name) && (n->writable || !writable)) return false;
        }
        struct narrowSeen n = { v.owner, v.name, writable };
        ListAdd(seen, &n);
    }
    switch (v.bType) {
        case BASETYPE_ARRAY: return v.arrElem && partAdmitsStores(*v.arrElem, writable, seen, depth);
        case BASETYPE_STRUCT:
            for (int i = 0; i < v.vars.len; i++) {
                struct var* f = ListGetIdx(&v.vars, i);
                if (partAdmitsStores(f->type, writable && f->mut, seen, depth)) return true;
            }
            return false;
        case BASETYPE_CHOICE: //T17: a payload is never assigned - only what its references let through
            for (int i = 0; i < v.vars.len; i++) {
                struct var* c = ListGetIdx(&v.vars, i);
                for (int k = 0; k < c->type.vars.len; k++) {
                    if (partAdmitsStores(((struct var*)ListGetIdx(&c->type.vars, k))->type, false, seen, depth)) return true;
                }
            }
            return false;
        default: return false; //a number, a function value (nothing is written through one, D16d)
    }
}
bool RefNarrowingMatters(struct type t) {
    if (!t.structMAlloc) return TypeHoldsReferences(t);
    struct list seen = ListInit(sizeof(struct narrowSeen));
    return refAdmitsStores(t, &seen, 0);
}

//O25h: whether a reference a value of type t holds - directly, or inside a value it holds - can be stored through
static bool valueRefsAdmitStoresAt(struct type t, int depth) {
    if (depth > VALUE_WALK_LIMIT) return false;
    t.structMAlloc = false;
    struct list kids = TypeValueChildren(t);
    for (int i = 0; i < kids.len; i++) {
        struct type k = *(struct type*)ListGetIdx(&kids, i);
        if (k.structMAlloc ? RefNarrowingMatters(k) : valueRefsAdmitStoresAt(k, depth + 1)) return true;
    }
    return false;
}
bool valueRefsAdmitStores(struct type t) { return valueRefsAdmitStoresAt(t, 0); }

bool varIsParamOf(struct var* v, struct var* func);

//O25: where the referent of a reference-shaped operand (asRef), or the storage of a value lvalue (!asRef),
//exactly lives: a scope variable of this function, or one of its own block scopes (NULL at a depth).
//*unnamed says it is a caller's scope this function has no name for - a bare "&" parameter's (O4a) or a
//global's - which is fine to read from and nameable for nothing. False for a value with no storage yet (a
//temporary, null): it has no scope to adopt, and is allocated wherever it lands.
//T17c/O5: where a reference read out of an enum's payload lives. From an enum held BY REFERENCE, exactly where the
//referent does: a reference was stored into a payload there only in that scope, or - for plain data - one outliving
//it (O25c), so the container's scope is exact or an underestimate, never a claim. From one held by value, where the
//value's own binding of the case's scope variable says (the argument's scope, or where a temporary was built), and
//nowhere this function can name when no binding is known - a value parameter, built by the caller. A payload that is
//itself a value (a by-value struct holding references) lives where the enum does, in either case.
static bool payloadExactScope(struct checkCtx* ctx, struct operand* asOp, struct var* fieldScope, bool asRef,
                              struct var** outVar, int* outDepth, bool* unnamed) {
    struct operand* x = *(struct operand**)ListGetIdx(&asOp->args, 0);
    if (x->type.structMAlloc || !asRef || !fieldScope) return RefExactScope(ctx, x, x->type.structMAlloc, outVar, outDepth, unnamed);
    for (int i = 0; i < x->scopeBindings.len; i++) {
        struct scopeBinding* b = ListGetIdx(&x->scopeBindings, i);
        if (canonicalVar(b->typeParam) != canonicalVar(fieldScope) || b->landing) continue;
        if (b->boundTo == SCOPE_AMBIGUOUS || b->containerFallback) { *unnamed = true; return true; }
        *outVar = b->boundTo;
        *outDepth = b->boundTo ? 0 : b->boundDepth;
        *unnamed = b->boundUnnamed;
        return true;
    }
    *unnamed = true;
    return true;
}

bool RefExactScope(struct checkCtx* ctx, struct operand* op, bool asRef, struct var** outVar, int* outDepth,
                   bool* unnamed) {
    *outVar = NULL;
    *outDepth = 0;
    *unnamed = false;
    if (op->isNullLiteral) return false;
    //D16: a function named as a value, or a lambda, has no storage to adopt - it is built where it lands - unless
    //it captured references, when it lives where they do (D16c)
    if (op->opType == OPERATION_READ_VAR && op->readVar && op->readVar->isFuncDecl) {
        if (!op->lambdaHomeSet) return false;
        *outVar = op->lambdaHome;
        *outDepth = op->lambdaHomeDepth;
        return true;
    }
    //T17c/O5: a payload read with "as" - its one field, or one of several
    struct operand* asOp = op->opType == OPERATION_AS ? op : NULL;
    if (op->opType == OPERATION_MEMBER) {
        struct operand* b = *(struct operand**)ListGetIdx(&op->args, 0);
        if (b->opType == OPERATION_AS) asOp = b;
    }
    if (asOp && asOp->castEnum) return payloadExactScope(ctx, asOp, asRef ? op->type.scopeParam : NULL, asRef, outVar,
                                                         outDepth, unnamed);
    if (op->opType == OPERATION_MEMBER || op->opType == OPERATION_INDEX) {
        //a named field tag is its own scope, resolved through the container's binding (O22) - at the block it names
        if (asRef && op->type.scopeParam) {
            int d = 0;
            struct var* r = resolveScopeWithDepth(op, op->type.scopeParam, &d);
            if (r == SCOPE_AMBIGUOUS) { *unnamed = true; return true; }
            *outVar = r;
            *outDepth = r ? 0 : d;
            return true;
        }
        //a bare slot lives wherever its container's storage does - and a reference in one of a value, where that
        //value's references were put (O18c)
        struct operand* base = *(struct operand**)ListGetIdx(&op->args, 0);
        if (asRef && valueRefsHome(base, outVar)) return true;
        return RefExactScope(ctx, base, base->type.structMAlloc, outVar, outDepth, unnamed);
    }
    if (op->opType == OPERATION_SLICE) {
        struct operand* base = *(struct operand**)ListGetIdx(&op->args, 0);
        return RefExactScope(ctx, base, base->type.structMAlloc, outVar, outDepth, unnamed);
    }
    if (op->opType == OPERATION_READ_VAR && op->readVar) {
        struct var* v = canonicalVar(op->readVar);
        if (v->owner) { *unnamed = true; return true; } //a global
        bool isParam = ctx && ctx->func && varIsParamOf(v, ctx->func);
        if (!asRef && v->valueHomeSet) { *outVar = v->valueHome; *outDepth = v->valueHomeDepth; return true; } //O25a
        if (!asRef) { *outDepth = isParam ? 1 : op->type.scopeDepth; return true; } //a by-value slot is ours
        if (op->type.scopeParam) {
            struct var* r = resolveEffectiveScopeVar(op, op->type.scopeParam);
            if (r == SCOPE_AMBIGUOUS) { *unnamed = true; return true; }
            *outVar = r;
            *outDepth = r ? 0 : op->type.scopeDepth;
            *unnamed = op->readVar->scopeUnnamed || v->scopeUnnamed;
            return true;
        }
        if (isParam) { *unnamed = true; return true; } //O4a: a bare "&" parameter's scope is the caller's
        *outDepth = op->type.scopeDepth;
        *unnamed = op->readVar->scopeUnnamed || v->scopeUnnamed;
        return true;
    }
    if (asRef && op->opType == OPERATION_FUNCCALL && op->resultRefined) { //O13c
        *outVar = op->refinedTo;
        *outDepth = op->refinedDepth;
        *unnamed = op->refinedUnnamed;
        return true;
    }
    if (asRef && op->opType == OPERATION_FUNCCALL && op->type.scopeParam) {
        struct var* sv = op->type.scopeParam;
        if (bindingIsLanding(op, sv)) return false; //O18a: built where it lands - a temporary, nothing to adopt
        struct var* r = resolveEffectiveScopeVar(op, sv);
        if (r == SCOPE_AMBIGUOUS) { *unnamed = true; return true; }
        *outVar = r;
        *outDepth = r ? 0 : SemanticBoundScopeDepth(op, sv, ctx ? ctx->blockDepth : 0);
        for (int i = 0; i < op->scopeBindings.len; i++) {
            struct scopeBinding* b = ListGetIdx(&op->scopeBindings, i);
            if (canonicalVar(b->typeParam) == canonicalVar(sv) && b->boundUnnamed) *unnamed = true;
        }
        return true;
    }
    return false;
}

//O25: a reference local takes its initializer's exact scope instead of the block it is declared in, so a
//cursor declared in an inner block over an outer structure ("for c mut N& = a, ...") is exactly as scoped
//as what it walks. Returns whether it adopted; a temporary, null or no initializer adopts nothing and is
//allocated where the declaration is. A written "&name" is not overridden - it must already be exact.
static bool adoptInitializerScope(struct checkCtx* ctx, struct type* declType, struct operand* rhs, bool* unnamed) {
    *unnamed = false;
    if (!ctx->hasOwnScope || !rhs || !declType->structMAlloc) return false;
    bool asRef = rhs->type.structMAlloc;
    if (!asRef && !OperandIsLvalue(rhs)) return false;
    struct var* sv;
    int sd;
    bool un;
    if (!RefExactScope(ctx, rhs, asRef, &sv, &sd, &un)) return false;
    if (declType->scopeParam || declType->scopeWritten) {
        int dd = declType->scopeWritten ? declType->scopeDepth : 0;
        //D16c: nothing is ever written THROUGH a function value, so it need only outlive where it is put
        if (declType->bType == BASETYPE_FUNC) {
            if (!un && !scopeCanFlowInto(ctx->func, sv, normDepth(sd), canonicalVar(declType->scopeParam), normDepth(dd)))
                ErrMsgSemantic(rhs->tok, NESTED_SLOT_OUTLIVES_VALUE);
            return false;
        }
        if (un || !sameExactScope(canonicalVar(declType->scopeParam), dd, sv, sd)) {
            ErrMsgSemantic(rhs->tok, REFERENCE_NARROWED);
        }
        return false;
    }
    declType->scopeParam = sv;
    declType->scopeDepth = sd;
    *unnamed = un;
    return true;
}

//C2d: a constructor parameter whose reference names no scope fills the instance, so it means the scope the
//instance lands in. An argument with no storage of its own is simply built there. One that already lives
//somewhere is stored as it is, and the instance must not outlive it - so the call records that scope as a
//binding of the instance-scope variable, and wherever the result lands is checked against it
//(checkCtorHereFits). All such arguments must live in one scope, as arguments determining one scope
//variable must (O17).
static bool sameExactScope(struct var* a, int da, struct var* b, int db);
static bool scopeNamedByField(struct type* t, struct var* sv) {
    for (int i = 0; i < t->vars.len; i++) {
        struct var* f = ListGetIdx(&t->vars, i);
        if (f->type.scopeParam && canonicalVar(f->type.scopeParam) == canonicalVar(sv)) return true;
    }
    return false;
}

static void bindHereFrom(struct checkCtx* ctx, struct operand* call, struct var* func, struct var* here,
                         struct type* namedBy);
void bindCtorHere(struct checkCtx* ctx, struct operand* call, struct var* func) {
    bindHereFrom(ctx, call, func, func->type.retType->hereVar, func->type.retType);
}

//T17c/C2d: an enum value built with a payload - its instance scope bound from the existing storage stored in it, held
//to wherever it lands once the statement ends, or to the block it is built in where nothing lands it
static void bindEnumHere(struct checkCtx* ctx, struct operand* op, struct var* synth) {
    int before = op->scopeBindings.len;
    bindHereFrom(ctx, op, synth, op->type.hereVar, NULL);
    if (op->scopeBindings.len == before) return;
    struct pendingDischarge pd = { keepCtx(ctx), op, NULL, (struct list){0}, op->tok, 0, normDepth(ctx->blockDepth) };
    ListAdd(&pendingDischarges, &pd);
}

static void bindHereFrom(struct checkCtx* ctx, struct operand* call, struct var* func, struct var* here,
                         struct type* namedBy) {
    if (!here || !ctx || !ctx->hasOwnScope) return;
    bool determined = false, bu = false, exact = false, allViaField = true;
    struct var* bv = NULL;
    int bd = 0;
    struct list cands = ListInit(sizeof(struct var*));
    struct list candExact = ListInit(sizeof(bool));
    for (int j = 0; j < func->type.vars.len && j < call->args.len; j++) {
        struct type pt = (*(struct var*)ListGetIdx(&func->type.vars, j)).type;
        bool refLike = pt.structMAlloc || (pt.bType == BASETYPE_ARRAY && pt.arrMalloc);
        //a bare parameter has an implicit scope of its own (C2c), but what it fills lives in the instance
        if ((pt.scopeParam && !pt.scopeParam->isImplicitScope) || !refLike) continue;
        //C2d: a parameter a field names ("&p") keeps its own scope in that field, so it is held against the instance
        //only to outlive it, never exactly - an instance may refer into longer-lived storage (a cursor, a view), not
        //into shorter-lived storage, or reading the field after that storage's scope closed would follow a dangling
        //reference (O23 rests on it)
        bool viaField = namedBy && pt.scopeParam && scopeNamedByField(namedBy, pt.scopeParam);
        struct operand* arg = *(struct operand**)ListGetIdx(&call->args, j);
        bool asRef = arg->type.structMAlloc;
        if (!asRef && !OperandNamesExistingStorage(arg)) continue; //a temporary: built where the instance lands
        struct var* sv;
        int sd;
        bool su;
        if (!RefExactScope(ctx, arg, asRef, &sv, &sd, &su)) continue;
        allViaField = allViaField && viaField;
        if (determined && (su != bu || (!su && !sameExactScope(sv, sd, bv, bd)))) {
            //neither stored reference needs its exact scope (O25): the instance must merely outlive neither, so the
            //shorter-lived of the two is what it is held to, where the two are ordered here (a block within a block,
            //a block within a scope variable's, anything within the program's)
            if (!exact && (viaField || !RefNarrowingMatters(pt)) && bv != SCOPE_AMBIGUOUS && sv != SCOPE_AMBIGUOUS) {
                if (su) continue;
                if (bu || scopeOutlives(ctx->func, bv, normDepth(bd), sv, normDepth(sd))) {
                    bv = sv;
                    bd = sd;
                    bu = false;
                    continue;
                }
                if (scopeOutlives(ctx->func, sv, normDepth(sd), bv, normDepth(bd))) continue;
            }
            //two of this function's scope variables: the instance must not outlive either, so both are kept
            //and wherever it lands is checked against each (O13b's candidates) - which is what lets a
            //node be built from a key in one scope and a link in another
            bool bothVars = !su && !bu && sv && bv && sv != SCOPE_AMBIGUOUS && varIsOwnParam(canonicalVar(sv), ctx->func)
                            && (bv == SCOPE_AMBIGUOUS || varIsOwnParam(canonicalVar(bv), ctx->func));
            if (!bothVars) {
                ErrMsgSemantic(arg->tok, namedBy ? SCOPE_ARGS_DISAGREE : ENUM_ARGS_DISAGREE);
                return;
            }
            if (bv != SCOPE_AMBIGUOUS) {
                cands = ListInit(sizeof(struct var*));
                ListAdd(&cands, &bv);
                ListAdd(&candExact, &exact);
                bv = SCOPE_AMBIGUOUS;
            }
            ListAdd(&cands, &sv);
            bool ex = !viaField && RefNarrowingMatters(pt);
            ListAdd(&candExact, &ex);
            continue;
        }
        determined = true;
        bv = sv;
        bd = sd;
        bu = su;
        if (!viaField && RefNarrowingMatters(pt)) exact = true;
    }
    if (!determined) return;
    struct scopeBinding b = (struct scopeBinding){0};
    b.typeParam = here;
    b.boundTo = bv;
    b.boundDepth = bd;
    b.boundUnnamed = bu;
    b.needExact = exact;
    b.viaFieldOnly = allViaField;
    b.candidates = cands;
    b.candidateExact = candExact;
    b.viaPath = ListInit(sizeof(struct var*));
    ListAdd(&call->scopeBindings, &b);
}

//C2d: a constructed value landing in (dstVar, dstDepth) - NULL at a depth being one of this function's own
//block scopes - may not outlive the storage its constructor call stored by reference
void checkCtorHereFits(struct checkCtx* ctx, struct operand* val, struct var* dstVar, int dstDepth, struct token tok) {
    //E28/S12b: a conditional or a match puts whichever value it gives there
    if (val->opType == OPERATION_COND && val->args.len == 3) {
        checkCtorHereFits(ctx, *(struct operand**)ListGetIdx(&val->args, 1), dstVar, dstDepth, tok);
        checkCtorHereFits(ctx, *(struct operand**)ListGetIdx(&val->args, 2), dstVar, dstDepth, tok);
        return;
    }
    if (val->opType == OPERATION_MATCH) {
        struct list vs = SemanticMatchValues(val);
        for (int i = 0; i < vs.len; i++) checkCtorHereFits(ctx, *(struct operand**)ListGetIdx(&vs, i), dstVar, dstDepth, tok);
        return;
    }
    if (opIsArrayLiteral(val) && val->type.arrElem && val->type.arrElem->bType == BASETYPE_CHOICE) { //its elements, there
        for (int i = 0; i < val->args.len; i++) checkCtorHereFits(ctx, *(struct operand**)ListGetIdx(&val->args, i), dstVar, dstDepth, tok);
        return;
    }
    bool isEnum = val->type.bType == BASETYPE_CHOICE && !val->type.structMAlloc; //T17c: an enum's payload is its fields
    if (!ctx || !ctx->hasOwnScope || (val->type.bType != BASETYPE_STRUCT && !isEnum) || !val->type.hereVar) return;
    val->hereChecked = true;
    for (int i = 0; i < val->scopeBindings.len; i++) {
        struct scopeBinding* b = ListGetIdx(&val->scopeBindings, i);
        if (canonicalVar(b->typeParam) != canonicalVar(val->type.hereVar)) continue;
        bool ok;
        if (b->boundTo == SCOPE_AMBIGUOUS) {
            //several scopes, from O13b or from several arguments: the instance must suit every one of them
            ok = b->candidates.len > 0;
            for (int k = 0; ok && k < b->candidates.len; k++) {
                struct var* c = *(struct var**)ListGetIdx(&b->candidates, k);
                bool ex = k < b->candidateExact.len ? *(bool*)ListGetIdx(&b->candidateExact, k) : b->needExact;
                ok = c && (ex ? (sameExactScope(c, 0, dstVar, dstDepth)
                                 || (dstVar && dstVar != SCOPE_AMBIGUOUS && varIsOwnParam(canonicalVar(c), ctx->func)
                                     && varIsOwnParam(canonicalVar(dstVar), ctx->func)
                                     && scopeCanFlowInto(ctx->func, c, 1, dstVar, 1) && scopeCanFlowInto(ctx->func, dstVar, 1, c, 1)))
                              : scopeCanFlowInto(ctx->func, c, 1, dstVar, normDepth(dstDepth)));
            }
        }
        //a caller's scope this function cannot name outlives every scope of this function, and nothing else
        else if (b->boundUnnamed) ok = !dstVar && !b->needExact;
        else if (b->needExact) ok = sameExactScope(b->boundTo, b->boundDepth, dstVar, dstDepth);
        else ok = scopeCanFlowInto(ctx->func, b->boundTo, normDepth(b->boundDepth), dstVar, normDepth(dstDepth));
        if (!ok) ErrMsgSemantic(tok, isEnum ? ENUM_ARG_OUTLIVED : b->viaFieldOnly ? CTOR_FIELD_ARG_OUTLIVED : CTOR_ARG_OUTLIVED);
    }
}

//a local declared from an already-built value, as ":=" declares one - used by destructuring (D8c)
static void valueHomeOf(struct checkCtx* ctx, struct operand* rhs, struct var* v);
static void refsHomeOf(struct operand* rhs, struct var* v);
struct statement buildVarDeclFromOperand(struct checkCtx* ctx, struct token nameTok, struct operand* rhs) {
    struct type declType = rhs->type;
    declType.scopeParam = NULL; //writes no tag: takes the value's exact scope (O25a)
    declType.scopeWritten = false;
    bool landedByOblig = landDeclByObligations(ctx, rhs); //O18c
    bool unnamedScope = false;
    if (!adoptInitializerScope(ctx, &declType, rhs, &unnamedScope)) declType.scopeDepth = ctx->blockDepth;
    struct var* v = scopeDeclare(ctx->mod, ctx->scope, strFromTok(nameTok), nameTok, declType, true);
    v->scopeUnnamed = unnamedScope;
    if (landedByOblig && !declType.structMAlloc && TypeHoldsReferences(declType)) {
        if (landedInBlock(rhs)) valueHomeOf(ctx, rhs, v);
        else refsHomeOf(rhs, v);
    }
    v->scopeBindings = rhs->scopeBindings;
    checkCtorHereFits(ctx, rhs, declType.scopeParam, declType.scopeDepth, nameTok);
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_VAR_DECL;
    stmt.var = *v;
    stmt.op = rhs;
    return stmt;
}

//O26: the function whose body a "&return" is written in - none in a constructor, whose result is its instance
static struct var* scopeTagBodyFunc(void) {
    return scopeTagBody && !scopeTagBody->inCtor ? scopeTagBody->func : NULL;
}

struct var* scopeFindLocalByCtx(struct checkCtx* ctx, struct str name) {
    return ctx && ctx->scope ? scopeFindUse(ctx->scope, name, (struct token){0}) : NULL;
}

//O18c: a value local whose call landed by its obligations in a scope variable - where its references were put
static void refsHomeOf(struct operand* rhs, struct var* v) {
    struct var* R = rhs->readVar->type.resultScope;
    struct var* to = SemanticBoundScope(rhs, R);
    if (!to || to == SCOPE_AMBIGUOUS) return;
    v->refsHomeSet = true;
    v->refsHome = canonicalVar(to);
}

//O25a: where a value built by rhs - a constructor's instance, a by-value result - put its references: where the
//call landed, or the callee's result scope as bound at it. Left unset (the function's own scope) otherwise.
static void valueHomeOf(struct checkCtx* ctx, struct operand* rhs, struct var* v) {
    if (rhs->ctorLanded) {
        v->valueHomeSet = true;
        v->valueHome = rhs->landedTo;
        v->valueHomeDepth = rhs->landedTo ? 0 : normDepth(rhs->landedDepth);
        return;
    }
    struct var* f = rhs->opType == OPERATION_FUNCCALL ? rhs->readVar : NULL;
    if (f && f->type.resultScope && !bindingIsLanding(rhs, f->type.resultScope)) {
        v->valueHomeSet = true;
        v->valueHome = SemanticBoundScope(rhs, f->type.resultScope);
        v->valueHomeDepth = v->valueHome ? 0 : normDepth(SemanticBoundScopeDepth(rhs, f->type.resultScope, ctx->blockDepth));
    }
}

//O25a: a local's type says where it lives - a bare "&" is its block - and an initializer never changes that.
//Marked as written, so an initializer that already lives somewhere is checked against it, not adopted.
static void bareLocalLivesInBlock(struct checkCtx* ctx, struct type* t) {
    if (!ctx->hasOwnScope || !t->structMAlloc || t->scopeParam || t->scopeWritten) return;
    t->scopeWritten = true;
    t->scopeDepth = ctx->blockDepth;
}

struct statement buildVarDeclStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct token nameTok = firstTokOfType(s, TOK_IDEN);
    bool mut = true; //D11: a local is always mutable; "mut" is meaningful on globals, parameters and fields
    //D11a: so writing it on a local says nothing, and a keyword that says nothing is worse than none - a
    //reader takes its absence to mean "immutable", which it never did
    if (ctx->hasOwnScope && hasTokOfType(s, TOK_MUT)) ErrMsgSemantic(firstTokOfType(s, TOK_MUT), MUT_ON_LOCAL);
    struct syntax* exprNode = firstPartOfType(s, SNTX_EXPR);
    struct syntax* typeExprNode = firstPartOfType(s, SNTX_TYPE_EXPR);
    //ctx->func is NULL for a global initializer, which has no parameter list to tag a "&name" against
    struct list* scopeParams = ctx->func ? &ctx->func->type.scopeVars : NULL;

    struct type declType;
    struct operand* rhs;
    struct operand* fillValue = NULL;
    bool landedByOblig = false;
    if (!exprNode) {
        //D13: no initializer - the type's zero value, which for anything reference-shaped is null (T2a)
        scopeTagBody = ctx; //O3c: "&x" may name a local or parameter
        declType = resolveTypeExpr(ctx->mod, typeExprNode, scopeParams);
        scopeTagBody = NULL;
        bareLocalLivesInBlock(ctx, &declType);
        if (TypeIsPermRef(declType)) declType.refMut = true; //T25b: a local's own reference is writable
        rhs = zeroValueFor(ctx, declType, firstTokAnywhere(s), false); //D13c
    } else {
        rhs = buildExprFromSyntax(ctx, exprNode);
        if (typeExprNode) {
            scopeTagBody = ctx; //O3c
            declType = resolveTypeExpr(ctx->mod, typeExprNode, scopeParams);
            scopeTagBody = NULL;
            bareLocalLivesInBlock(ctx, &declType);
            //T25b: a local's own reference is writable - unless what initializes it is read-only, which it then is
            if (TypeIsPermRef(declType)) declType.refMut = OperandGivesWritable(rhs);
            //O23a: a local naming where a derived scope's referent lives may hold what lives there, never what is new
            if (scopeIsDerived(declType.scopeParam) && ctx->hasOwnScope && operandIsTemporary(ctx, rhs))
                ErrMsgSemantic(rhs->tok, BUILD_THROUGH_UNKNOWN_SCOPE);
            if (declType.scopeParam || declType.scopeWritten) //O18a: built where it is declared
                landCall(rhs, declType.scopeParam, declType.scopeWritten ? declType.scopeDepth : 0);
            reportTypeFit(OperandFitsType(ctx->func, rhs, declType), rhs->tok);
        } else { // ":=" - type read straight off the initializer (D15)
            declType = inferredDeclType(ctx->func, rhs);
            //":=" writes no scope tag, so the local is a bare "&" one and takes its initializer's exact
            //scope (O25a) - the initializer's own tag may be a callee's scope variable, meaningless here
            declType.scopeParam = NULL;
            declType.scopeWritten = false;
            landedByOblig = landDeclByObligations(ctx, rhs); //O18c
        }
    }

    //O2/O2a: the local's storage belongs to the block it is declared in, and a bare "&" in its type names
    //that same block's scope. Stamped here, on the one path every local declaration goes through, so a
    //later read of it carries the depth with its type.
    if (rhs && rhs->type.isTuple) ErrMsgSemantic(rhs->tok, TUPLE_NOT_A_VALUE); //D8c: destructure it instead
    bool homeChecked = false;
    //C2d/O23: a local holding such a field's referent would claim a scope it does not really have
    if (rhs && ctx->hasOwnScope && declType.structMAlloc && RefNarrowingMatters(declType) && scopeViaFallback(rhs))
        ErrMsgSemantic(rhs->tok, BUILD_THROUGH_UNKNOWN_SCOPE);
    //O18a: a by-value result holding references, landing in a value local, is built in the local's own block - as the
    //local is - so a loop body's value is reclaimed with the iteration; a copy of it out of that block is checked
    //where it is made (O25h)
    if (rhs && !declType.structMAlloc && TypeHoldsReferences(declType) && callIsLanding(rhs) && ctx->hasOwnScope
            && !landedByOblig)
        landCall(rhs, NULL, normDepth(ctx->blockDepth));
    bool unnamedScope = false;
    if (!homeChecked && (fillValue || !adoptInitializerScope(ctx, &declType, rhs, &unnamedScope))
            && !declType.scopeWritten)
        declType.scopeDepth = ctx->blockDepth;
    struct var* v = scopeDeclare(ctx->mod, ctx->scope, strFromTok(nameTok), nameTok, declType, mut);
    v->scopeUnnamed = unnamedScope;
    //O25a: "x := e" takes e's scope - for a value holding references, where e's references were built
    if (rhs && !typeExprNode && !declType.structMAlloc && TypeHoldsReferences(declType) && ctx->hasOwnScope
            && (!landedByOblig || landedInBlock(rhs)))
        valueHomeOf(ctx, rhs, v);
    else if (rhs && landedByOblig && !declType.structMAlloc && TypeHoldsReferences(declType) && ctx->hasOwnScope)
        refsHomeOf(rhs, v);
    //O25h: a value holding references copied from one that already lives somewhere keeps its references where they
    //are, whatever the declaration writes - its own storage is still its block
    else if (rhs && typeExprNode && !declType.structMAlloc && TypeHoldsReferences(declType) && ctx->hasOwnScope
             && !rhs->type.structMAlloc && OperandIsLvalue(rhs)) {
        struct var* hv;
        int hd;
        bool hu;
        if (RefExactScope(ctx, rhs, false, &hv, &hd, &hu) && !hu && hv != SCOPE_AMBIGUOUS) {
            v->valueHomeSet = true;
            v->valueHome = hv;
            v->valueHomeDepth = hv ? 0 : normDepth(hd);
        }
    }
    //O1b: a local taking what lives in the program's scope - a global's referent, a global value's references
    if (rhs && (declType.structMAlloc ? unnamedScope : TypeHoldsReferences(declType)) && storageInProgram(rhs))
        v->inProgram = true;
    //propagated one hop, so a later read of v (OperandReadVar) can still resolve a scope tag that's one of
    //rhs's own callee's scope params - see resolveEffectiveScopeVar. rhs is NULL for a zero-filled fixed
    //array (nothing to propagate - v->scopeBindings just stays at its zero-initialized default).
    if (rhs) v->scopeBindings = rhs->scopeBindings;
    if (rhs) checkCtorHereFits(ctx, rhs, declType.scopeParam, declType.scopeDepth, nameTok);
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_VAR_DECL;
    stmt.var = *v;
    stmt.op = rhs;
    stmt.fillValue = fillValue; //D15c - see cgVarDecl
    return stmt;
}

enum operation compoundOpFromAssignTok(enum tokenType t, bool* isCompound) {
    *isCompound = true;
    switch (t) {
        case TOK_ASS: *isCompound = false; return OPERATION_NONE;
        case TOK_ASS_ADD: return OPERATION_ADD;
        case TOK_ASS_SUB: return OPERATION_SUB;
        case TOK_ASS_MUL: return OPERATION_MUL;
        case TOK_ASS_DIV: return OPERATION_DIV;
        case TOK_ASS_MOD: return OPERATION_MOD;
        case TOK_ASS_BTSFT_L: return OPERATION_BTSFT_L;
        case TOK_ASS_BTSFT_R: return OPERATION_BTSFT_R;
        case TOK_ASS_BTWSE_AND: return OPERATION_BTWSE_AND;
        case TOK_ASS_BTWSE_OR: return OPERATION_BTWSE_OR;
        case TOK_ASS_BTWSE_XOR: return OPERATION_BTWSE_XOR;
        default: ErrorBugFound(); return OPERATION_NONE;
    }
}

//O5: a bare "&" slot reached THROUGH a reference-shaped container - "dst.field", "dst[i]" where dst is
//itself a reference - lives in the CONTAINER's scope, not in this function's. O25 now states that as the
//slot's exact scope (RefExactScope), and judges every store into it there.
void checkBoundScopesOutlive(struct operand* val, struct type t, struct token tok, char* msg);

//the scope the enclosing reference-shaped container is tagged to, for a target reached through one.
//*found says whether there was such a container at all.
static struct var* containerScopeOf(struct operand* target, bool* found) {
    *found = false;
    struct operand* op = target;
    while (op->opType == OPERATION_MEMBER || op->opType == OPERATION_INDEX) {
        struct operand* base = *(struct operand**)ListGetIdx(&op->args, 0);
        if (base->type.structMAlloc) {
            *found = true;
            return resolveEffectiveScopeVar(base, base->type.scopeParam);
        }
        op = base;
    }
    return NULL;
}



struct var* lvalueRootVar(struct operand* op);

struct statement buildAssignCore(struct checkCtx* ctx, struct operand* target, struct operand* rhs, struct token opTok);

struct statement buildAssignStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct syntax* lhsNode = firstPartOfType(s, SNTX_EXPR_POSTFIX);
    //a target is a place, not a read: "x[i]" there is SetAt's business, which "try" reaches in buildSetAt (E31)
    bool prevChecking = ctx->checkingTry;
    ctx->checkingTry = false;
    ctx->buildingTarget = true;
    struct operand* target = buildExprFromSyntax(ctx, lhsNode);
    ctx->buildingTarget = false;
    ctx->checkingTry = prevChecking;
    struct syntax* opNode = firstPartOfType(s, SNTX_ASSIGN_OP);
    struct token opTok = partAt(opNode, 0)->tok;
    struct operand* rhs = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
    return buildAssignCore(ctx, target, rhs, opTok);
}

//every check an assignment gets, on operands already built - shared by a written assignment and by each
//target of a destructuring one (D8c)
//E31: "x[i] = v" on a type declaring At is x.SetAt(i, v); "x[i] op= v" is x.SetAt(i, x.At(i) op v), with x and i
//held in hidden locals so each is evaluated once
static struct operand* buildBinaryOp(struct checkCtx* ctx, struct operand* a, struct operand* b, struct token opTok,
                                     bool inChain);
static struct statement buildSetAt(struct checkCtx* ctx, struct operand* target, struct operand* rhs, struct token opTok) {
    struct operand* base = *(struct operand**)ListGetIdx(&target->args, 0);
    struct operand* idx = *(struct operand**)ListGetIdx(&target->args, 1);
    //under "try" (E31): TrySetAt when declared, else SetAt after checking i against Len()
    const char* setName = operatorFor(ctx, base->type, "SetAt", opTok);
    if (!setName) {
        if (!tryOperatorName(ctx, base->type, "SetAt")) ErrMsgSemantic(opTok, SETAT_UNDECLARED);
        return (struct statement){0};
    }
    bool derived = ctx->checkingTry && strcmp(setName + 1, "rySetAt") != 0;
    const char* lenName = derived ? operatorMethodName(ctx, base->type, "Len") : NULL;
    if (derived && !lenName) { ErrMsgSemantic(opTok, TRY_SETAT_NEEDS_LEN); derived = false; }
    bool isCompound = false;
    enum operation compoundOp = compoundOpFromAssignTok(opTok.type, &isCompound);
    struct list pre = ListInit(sizeof(struct statement));
    struct operand* value = rhs;
    if (isCompound || derived) {
        if (!(base->opType == OPERATION_READ_VAR)) base = OperandReadVar(holdInHidden(ctx, base, opTok, "base", &pre), opTok);
        if (!(idx->isLiteral || idx->opType == OPERATION_READ_VAR)) idx = OperandReadVar(holdInHidden(ctx, idx, opTok, "idx", &pre), opTok);
    }
    if (isCompound) {
        //"x[i] += v" reads x[i] first, through At
        const char* atName = operatorMethodName(ctx, base->type, "At");
        if (!atName && !(ctx->checkingTry && tryOperatorName(ctx, base->type, "At"))) {
            ErrMsgSemantic(opTok, AT_UNDECLARED);
            return (struct statement){0};
        }
        struct operand* cur = ctx->checkingTry ? buildIndexCall(ctx, base, idx, opTok) : operatorCall(ctx, base, idx, atName, opTok);
        if (!cur) return (struct statement){0}; //reported
        struct token binTok = opTok;
        switch (compoundOp) {
            case OPERATION_ADD: binTok.type = TOK_ADD; break;
            case OPERATION_SUB: binTok.type = TOK_SUB; break;
            case OPERATION_MUL: binTok.type = TOK_MUL; break;
            case OPERATION_DIV: binTok.type = TOK_DIV; break;
            case OPERATION_MOD: binTok.type = TOK_MOD; break;
            case OPERATION_BTWSE_AND: binTok.type = TOK_BTWSE_AND; break;
            case OPERATION_BTWSE_OR: binTok.type = TOK_BTWSE_OR; break;
            case OPERATION_BTWSE_XOR: binTok.type = TOK_BTWSE_XOR; break;
            case OPERATION_BTSFT_L: binTok.type = TOK_BTSFT_L; break;
            case OPERATION_BTSFT_R: binTok.type = TOK_BTSFT_R; break;
            default: binTok.type = TOK_NONE; break;
        }
        value = binTok.type != TOK_NONE ? buildBinaryOp(ctx, cur, rhs, binTok, false) : OperandBinary(cur, rhs, compoundOp, opTok);
    }
    if (derived) {
        idx = asParam(ctx, base->type, setName, 1, idx);
        idx = operandBounds(idx, OperandIntLiteral(opTok), operatorCall(ctx, base, NULL, lenName, opTok), false, opTok);
    }
    struct list args = ListInit(sizeof(struct operand*));
    ListAdd(&args, &idx);
    ListAdd(&args, &value);
    struct statement call = (struct statement){0};
    call.sType = STATEMENT_EXPR;
    call.op = operatorCallArgs(ctx, base, args, setName, opTok);
    if (pre.len == 0) return call;
    ListAdd(&pre, &call);
    struct token t = opTok;
    t.type = TOK_BOOL_LIT;
    t.str = StrFromCStr("true");
    struct statement wrap = (struct statement){0};
    wrap.sType = STATEMENT_IF;
    wrap.op = OperandBoolLiteral(t);
    wrap.block = pre;
    return wrap;
}

struct statement buildAssignCore(struct checkCtx* ctx, struct operand* target, struct operand* rhs, struct token opTok) {
    if (target->isAtCall) return buildSetAt(ctx, target, rhs, opTok);
    if (rhs->type.isTuple) ErrMsgSemantic(rhs->tok, TUPLE_NOT_A_VALUE);
    if (target->type.unknown) {} //an unknown name, reported where it is written
    else if (!OperandIsLvalue(target) || target->viaConversion) ErrMsgSemantic(target->tok, NOT_AN_LVALUE);
    else if (!OperandIsMutableLvalue(target)) {
        struct var* root = lvalueRootVar(target);
        ErrMsgSemantic(target->tok, root && root->isCapture && (!root->type.structMAlloc || root->isBorrowedCapture) ? CAPTURE_READ_ONLY : writeBlockedByPermission(target) ? READ_ONLY_REF_WRITE : writeIntoCallValue(target) ? WRITE_INTO_CALL_VALUE : VAR_IMMUTABLE);
    }

    bool isCompound;
    enum operation compoundOp = compoundOpFromAssignTok(opTok.type, &isCompound);
    struct operand* value = rhs;
    if (isCompound) {
        //E31: "v += w" is "v = v + w", through the operator v's type declares when it declares one
        const char* cap = NULL;
        switch (compoundOp) {
            case OPERATION_ADD: cap = "Plus"; break;
            case OPERATION_SUB: cap = "Minus"; break;
            case OPERATION_MUL: cap = "Mul"; break;
            case OPERATION_DIV: cap = "Div"; break;
            case OPERATION_MOD: cap = "Rem"; break;
            case OPERATION_BTWSE_AND: cap = "BitAnd"; break;
            case OPERATION_BTWSE_OR: cap = "BitOr"; break;
            case OPERATION_BTWSE_XOR: cap = "BitXor"; break;
            case OPERATION_BTSFT_L: cap = "ShiftLeft"; break;
            case OPERATION_BTSFT_R: cap = "ShiftRight"; break;
            default: break;
        }
        //S4: the place is evaluated once - the read inside the value is a copy of the target that reads the place the
        //statement computed, rather than the target itself, which evaluated its index twice and which the meeting rule
        //(T6b) could rewrite into a conversion in place, leaving the statement storing through a non-place
        struct operand* cur = operandNew(target->tok, OPERATION_NONE, target->type);
        *cur = *target;
        //its own lists, so nothing done to one reaches the other
        if (target->args.elemSize) { cur->args = ListInit(target->args.elemSize); ListAddList(&cur->args, target->args); }
        if (target->scopeBindings.elemSize) {
            cur->scopeBindings = ListInit(target->scopeBindings.elemSize);
            ListAddList(&cur->scopeBindings, target->scopeBindings);
        }
        cur->placeOf = target;
        const char* nm = cap ? operatorFor(ctx, target->type, cap, opTok) : NULL;
        if (nm) value = operatorCall(ctx, cur, rhs, nm, opTok);
        else value = OperandBinary(cur, rhs, compoundOp, opTok);
        //"b += x" is "b = b + x", so the sum must fit b as an assignment's value does - with "x" an I32 and "b" a U8
        //the sum is an I32 (T6b) and does not
        reportTypeFit(OperandFitsType(ctx->func, value, target->type), opTok);
    }
    else {
        //a target's own "&name" tag may name a scope variable of the TYPE it is a field of, never anything
        //in this function's frame - so it has to be resolved through the target's own binding map before
        //being compared, exactly as a call resolves a parameter's tag through the call's bindings
        //(OperandFuncCall does this and the assignment path never did). Without it, writing a value back
        //into a field of a locally-constructed container was rejected even though the construction had
        //bound that very scope to the value's own.
        struct type targetType = target->type;
        if (targetType.scopeParam) {
            targetType.scopeParam = resolveEffectiveScopeVar(target, targetType.scopeParam);
        }
        //O23a: nothing is built in a derived scope - a target living in one may be repointed at what lives there only
        if (ctx->hasOwnScope && (target->type.structMAlloc || TypeHoldsReferences(target->type)) && !scopeViaFallback(target)) {
            struct var* dv;
            int dd;
            bool du;
            if (RefExactScope(ctx, target, target->type.structMAlloc, &dv, &dd, &du) && !du && scopeIsDerived(dv)
                    && operandIsTemporary(ctx, rhs))
                ErrMsgSemantic(opTok, BUILD_THROUGH_UNKNOWN_SCOPE);
        }
        //O18a: a call whose result's scope follows the result is built where the target's referent lives
        //- or, for a value holding references, where the target's own storage is (O18a)
        struct var* troot = lvalueRootVar(target);
        bool intoGlobal = troot && troot->owner && (target->type.structMAlloc || TypeHoldsReferences(target->type));
        if (callIsLanding(rhs) && ctx->hasOwnScope && (target->type.structMAlloc || TypeHoldsReferences(target->type))) {
            struct var* lv;
            int ld;
            bool lu;
            if (intoGlobal) landCallIn(rhs, NULL, 0, true); //O1b: a global's referent lives in the program's scope
            else if (RefExactScope(ctx, target, target->type.structMAlloc, &lv, &ld, &lu) && !lu && lv != SCOPE_AMBIGUOUS)
                landCall(rhs, lv, ld);
        }
        //O1b: a global, and everything reached from it, lives in the program's scope - which nothing a function holds
        //outlives, so what is stored there is built there or already lives there
        if (intoGlobal && ctx->hasOwnScope && !rhs->isNullLiteral && (rhs->type.structMAlloc || OperandIsLvalue(rhs))
                && !storageInProgram(rhs))
            ErrMsgSemantic(rhs->tok, GLOBAL_HOLDS_SHORTER);
        //O22: the target's tag may still be a scope variable of the TYPE it is a field of - resolution
        //found no binding because the container arrived as a parameter and was built somewhere else. This
        //body cannot decide the relation and cannot name it in its own signature, so it records a DERIVED
        //obligation against the parameter the container came through. The caller can discharge it: it
        //holds that binding on the very argument it is about to pass. Where even that caller only has a
        //parameter, it records its own derived obligation and the question moves up, terminating at
        //whoever constructed the container - exactly how O10c already terminates.
        //This is what keeps "o.held = b" writable without weakening what a READ of that field promises.
        //A binding recorded at construction cannot go stale either, which is the worry that motivates
        //forgetting it: every write into the field is checked against that same scope variable, so no
        //write that would falsify it is admitted in the first place.
        struct var* derivedVia = NULL;
        if (targetType.scopeParam && !varIsOwnParam(targetType.scopeParam, ctx->func)
                && targetType.scopeParam != SCOPE_AMBIGUOUS) {
            struct var* root = lvalueRootVar(target);
            if (root && ctx->func && varIsParamOf(root, ctx->func)) derivedVia = root;
        }
        if (derivedVia) {
            bool srcGlobal = false;
            int srcDepthD = 0;
            struct var* srcScope = lvalueStorageScope(rhs, &srcGlobal, &srcDepthD);
            if (!srcGlobal) {
                //own can satisfy no named scope - but say which kind of own this is (see ownOutliveMsg)
                if (!srcScope) ErrMsgSemantic(opTok, ownOutliveMsg(rhs, ctx->func));
                else scopeObligationAddDerived(ctx->func, srcScope, targetType.scopeParam, derivedVia,
                                               RefNarrowingMatters(target->type));
            }
            targetType.scopeParam = NULL; //checked by the obligation above, not by the generic fit below
        }
        reportTypeFit(OperandFitsType(ctx->func, rhs, targetType), opTok);
        //C2d: an instance assigned lands where the target's storage, or its referent, lives
        int errsBeforeHere = ErrMsgGetNErrors();
        {
            struct var* hv;
            int hd;
            bool hu;
            if (ctx->hasOwnScope && RefExactScope(ctx, target, target->type.structMAlloc, &hv, &hd, &hu)) {
                if (hu) hv = SCOPE_AMBIGUOUS;
                checkCtorHereFits(ctx, rhs, hv, hd, opTok);
            }
        }
        bool hereReported = ErrMsgGetNErrors() != errsBeforeHere;
        //O25: a reference never narrows. Every reference-shaped target has an exact scope (RefExactScope),
        //and what is stored into it must match that scope - or, for a slot inside a container whose
        //referent holds no references, merely outlive it, since nothing can be written through such a
        //reference that a wrong scope would misplace.
        bool rhsAsRef = rhs->type.structMAlloc;
        struct var* rv = NULL;
        int rd = 0;
        bool ru = false;
        bool rhsExisting = ctx->hasOwnScope && (rhsAsRef || OperandIsLvalue(rhs))
                           && RefExactScope(ctx, rhs, rhsAsRef, &rv, &rd, &ru);
        if (ctx->hasOwnScope && !rhsExisting && !rhs->isNullLiteral
                && (target->type.structMAlloc || TypeHoldsReferences(target->type)) && scopeViaFallback(target))
            ErrMsgSemantic(opTok, BUILD_THROUGH_UNKNOWN_SCOPE);
        if (ctx->hasOwnScope && target->opType == OPERATION_READ_VAR && rhsExisting && RefNarrowingMatters(target->type)
                && scopeViaFallback(rhs))
            ErrMsgSemantic(opTok, BUILD_THROUGH_UNKNOWN_SCOPE);
        if (ctx->hasOwnScope && target->type.structMAlloc && !derivedVia) {
            struct var* tv;
            int td;
            bool tu;
            bool inSlot = target->opType == OPERATION_MEMBER || target->opType == OPERATION_INDEX;
            if (RefExactScope(ctx, target, true, &tv, &td, &tu) && rhsExisting && !tu) {
                bool mustMatch = target->type.bType != BASETYPE_FUNC //D16c: a function value need only outlive
                                 && (!inSlot || RefNarrowingMatters(target->type));
                if (mustMatch) {
                    //two different scope variables of this function: the scopes must be one, which the body
                    //cannot decide - so it is an obligation both ways, and each caller binds them equal
                    bool bothOwnVars = !ru && tv && rv && tv != SCOPE_AMBIGUOUS && rv != SCOPE_AMBIGUOUS
                                       && varIsOwnParam(canonicalVar(tv), ctx->func) && varIsOwnParam(canonicalVar(rv), ctx->func);
                    if (bothOwnVars && canonicalVar(tv) != canonicalVar(rv)) {
                        if (!scopeCanFlowInto(ctx->func, rv, 0, tv, 0) || !scopeCanFlowInto(ctx->func, tv, 0, rv, 0)) {
                            ErrMsgSemantic(opTok, REFERENCE_NARROWED);
                        }
                    } else if (ru || !sameExactScope(tv, td, rv, rd)) ErrMsgSemantic(opTok, REFERENCE_NARROWED);
                } else if (ru || !scopeCanFlowInto(ctx->func, rv, normDepth(rd), tv, normDepth(td))) {
                    ErrMsgSemantic(opTok, NESTED_SLOT_OUTLIVES_VALUE);
                }
            }
        }
        //O25h: a value holding references keeps them where it was built, so a copy of one goes only where that outlives
        //- and exactly there where a store through one of them could misplace what it builds (O25g)
        if (ctx->hasOwnScope && !target->type.structMAlloc && TypeHoldsReferences(target->type)
                && !rhs->type.structMAlloc && OperandIsLvalue(rhs) && !intoGlobal && !hereReported) {
            struct var* hv;
            struct var* tv;
            int hd, td;
            bool hu, tu;
            if (RefExactScope(ctx, rhs, false, &hv, &hd, &hu) && RefExactScope(ctx, target, false, &tv, &td, &tu)
                    && !hu && !tu && hv != SCOPE_AMBIGUOUS && tv != SCOPE_AMBIGUOUS) {
                bool ok = valueRefsAdmitStores(target->type) ? sameExactScope(hv, hd, tv, td)
                          : scopeCanFlowInto(ctx->func, hv, normDepth(hd), tv, normDepth(td));
                if (!ok) ErrMsgSemantic(opTok, VALUE_REFS_OUTLIVED);
            }
        }
        //O20: a value stored into a slot inside a reference-shaped container must outlive that CONTAINER,
        //not merely this function. Checking only for "bound to own" caught the case where the short-lived
        //reference was created right here, and missed the one where it arrived as a "&s" parameter while
        //the container was tagged "&t": nothing related s to t, so a caller could pass its own local and
        //have it stored somewhere that outlives the call. That was a real use-after-free.
        //scopeCanFlowInto decides it where it can and records an obligation where it cannot (O10b), so a
        //relation between two of this signature's own scope variables is deferred to the caller rather
        //than rejected - which is what keeps the safe uses of this shape writable.
        bool inContainer = false;
        struct var* containerScope = containerScopeOf(target, &inContainer);
        //O2a: where the container is itself a block-local, its slot's depth is what the stored value must
        //outlive - the same comparison, one level out from the slot being written
        int containerDepth = target->type.scopeDepth;
        //O24: writing into a field or element of a container that arrived as a BARE "&" parameter. A bare
        //marker means own (O4) - this function's own scope - but the container is the caller's, so "own"
        //is not where its storage is; it is merely the shortest thing this body can name. Every write then
        //resolves against the wrong scope, and for a TEMPORARY that is not a checking error but a real
        //one: E12c allocates it into "the target's scope", which came out as this function's own arena,
        //so the pointer stored into the caller's container dangles the instant this function returns.
        //Verified exactly that way - the value survived until the arena was churned, then did not.
        //Naming the parameter's scope fixes it outright, because a named scope is passed as a hidden
        //argument and the allocation lands in the caller's arena, so the rule is "name it", not "don't".
        //only a slot that HOLDS a reference is at risk: a scalar or plain value written into a container
        //parameter needs no scope at all, so "buf[0] = '0'" through a "mut byte[]&" is unaffected.
        bool slotNeedsScope = target->type.structMAlloc || rhs->type.scopeVars.len > 0;
        //O25 generalises it to anything whose exact scope this function cannot name - a local that
        //adopted a bare parameter's scope, or a global - since the hazard is the missing name, not the
        //parameter
        if (inContainer && slotNeedsScope && ctx->hasOwnScope) {
            struct operand* cont = target;
            while (cont->opType == OPERATION_MEMBER || cont->opType == OPERATION_INDEX) {
                cont = *(struct operand**)ListGetIdx(&cont->args, 0);
                if (cont->type.structMAlloc) break;
            }
            struct var* cv;
            int cd;
            bool cu = false;
            RefExactScope(ctx, cont, cont->type.structMAlloc, &cv, &cd, &cu);
            if (cu && !intoGlobal) ErrMsgSemantic(opTok, BARE_REF_PARAM_CONTAINER_WRITE); //O1b: a global's is the program's
        }
        if (inContainer) {
            //a container in one of this function's scope variables outlives everything of its own; one in a
            //block of its own is judged by depth, below
            if (containerScope) checkBoundScopesOutlive(rhs, rhs->type, opTok, NESTED_SLOT_OUTLIVES_VALUE);
            for (int i = 0; i < rhs->type.scopeVars.len; i++) {
                struct var* sv = canonicalVar(*(struct var**)ListGetIdx(&rhs->type.scopeVars, i));
                for (int j = 0; j < rhs->scopeBindings.len; j++) {
                    struct scopeBinding* b = ListGetIdx(&rhs->scopeBindings, j);
                    if (canonicalVar(b->typeParam) != sv) continue;
                    int bd = b->boundDepth ? b->boundDepth : rhs->type.scopeDepth;
                    if (b->boundTo == SCOPE_AMBIGUOUS) {
                        //O13b: a meet holds where every candidate does; one with no name is a block of ours,
                        //taken at the innermost open one since its depth was not kept
                        bool ok = b->candidates.len > 0;
                        for (int k = 0; ok && k < b->candidates.len; k++) {
                            struct var* c = *(struct var**)ListGetIdx(&b->candidates, k);
                            ok = scopeCanFlowInto(ctx->func, c, c ? 0 : ctx->blockDepth, containerScope, containerDepth);
                        }
                        if (!ok) ErrMsgSemantic(opTok, NESTED_SLOT_OUTLIVES_VALUE);
                    } else if (!b->landing && !scopeCanFlowInto(ctx->func, b->boundTo, normDepth(bd),
                                                               containerScope, containerDepth)) {
                        ErrMsgSemantic(opTok, NESTED_SLOT_OUTLIVES_VALUE);
                    }
                    break;
                }
            }
            //a value that simply IS a reference is judged against the slot's exact scope above (O25)
        }
    }

    //a plain "x = y" (never a compound op - +=/etc. never apply to a scope-relevant struct/array type) re-
    //binds x's own tracked scope identity to whatever y's was, the same propagation buildVarDeclStmnt
    //already does at declaration time - closes the "stale binding after reassignment" half of the static
    //checker's reassignment-tracking gap (see the report): before this, a var's scopeBindings were only
    //ever set once, at its own declaration, so a later plain reassignment left it silently stale. Only a
    //bare local read as the assignment target has a var to re-bind at all - "x.field = y"/"x[i] = y" leave
    //x's own binding alone, same as before (this doesn't attempt to track *field-level* reassignment).
    if (!isCompound && target->opType == OPERATION_READ_VAR) {
        target->readVar->scopeBindings = value->scopeBindings;
    }

    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_ASSIGN;
    stmt.target = target;
    stmt.op = value;
    return stmt;
}

//S3: an expression is only a statement if evaluating it can actually DO something. In olang that is a
//short, closed list - a call (a "try f()" propagating one included: buildTryExpr returns the call itself,
//marked isTried) and the four increment/decrement forms, which are expressions by grammar (E1) but reach
//statement position through here. Everything else - "n", "x == y", "a + 1" - computes a value and
//discards it, which is dead code by construction and, far more often, a typo for the assignment or
//declaration that was meant ("x == y" for "x = y", a bare name for a var-decl).
static bool exprCanStandAsStatement(struct operand* op) {
    switch (op->opType) {
        case OPERATION_FUNCCALL:
        case OPERATION_PREFIX_INC: case OPERATION_PREFIX_DEC:
        case OPERATION_POSTFIX_INC: case OPERATION_POSTFIX_DEC:
            return true;
        case OPERATION_SEQ: return op->isIncDec; //E31: an increment a type declares
        //P9: every atomic builtin writes its target, which is exactly S3's own criterion. "atomicStore"
        //has no value at all, and the other four are routinely wanted for the write rather than the value
        //they return - a discarded "atomicAdd" is a counter bump, not dead code.
        case OPERATION_ATOMIC_LOAD: //...except this one, which only reads
            return false;
        case OPERATION_ATOMIC_STORE: case OPERATION_ATOMIC_ADD:
        case OPERATION_ATOMIC_SWAP: case OPERATION_ATOMIC_CAS:
            return true;
        default:
            return false;
    }
}

struct statement buildExprStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct syntax* e = firstPartOfType(s, SNTX_EXPR);
    struct syntax* prevRoot = ctx->incDecRoot;
    //the node the whole expression is, past any single-child wrappers the parser leaves around it
    struct syntax* root = e;
    while (root && root->parts.len == 1 && !partAt(root, 0)->isToken) root = partSntx(root, 0);
    ctx->incDecRoot = root;
    struct operand* op = buildExprFromSyntax(ctx, e);
    ctx->incDecRoot = prevRoot;
    if (!exprCanStandAsStatement(op) && !op->type.unknown) ErrMsgSemantic(op->tok, EXPR_NOT_A_STATEMENT);
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_EXPR;
    stmt.op = op;
    return stmt;
}

// ---- flow-sensitive scope-binding tracking across branches (if/match/for/do) - see the report on
// extending the static scope checker's reassignment-tracking past straight-line code. buildAssignStmnt
// above closes the straight-line half (a plain "x = y" re-binds x's own scopeBindings immediately); the
// helpers below close the branching half, which needs a real merge instead of just an in-place update,
// since two branches can each reassign the same var to something DIFFERENT - accepting whichever branch
// happened to be checked last (as a naive in-place update would) risks a false REJECTION of sound code
// (a var correctly bound in the branch that actually runs, but compared against a check that only ever
// sees the OTHER branch's leftover state) - the same class of mistake the varIsOwnParam identity-duality
// bug earlier this session already proved is worse than an imprecise, honest "unknown".

//one var's own scopeBindings, captured at a point in time - a shallow copy (the var's own scopeBindings
//list is only ever reassigned wholesale, never mutated in place, so aliasing its backing array here is
//safe - see buildVarDeclStmnt/buildAssignStmnt, the only two places a var's own field is ever written).
struct scopeVarSnapshot {
    struct var* v;
    struct list bindings;
};

//captures every var currently reachable from sc's own scope chain (not just its own directly-owned
//locals - every enclosing scope too, up to the function's own parameters), so a branching construct can
//restore to this exact starting point before checking each alternative, and compare their outcomes
//afterward.
struct list snapshotScopeBindings(struct scope* sc) {
    struct list result = ListInit(sizeof(struct scopeVarSnapshot));
    for (; sc; sc = sc->parent) {
        for (int i = 0; i < sc->localPtrs.len; i++) {
            struct var* v = *(struct var**)ListGetIdx(&sc->localPtrs, i);
            struct scopeVarSnapshot snap = (struct scopeVarSnapshot){0};
            snap.v = v;
            snap.bindings = v->scopeBindings;
            ListAdd(&result, &snap);
        }
    }
    return result;
}

//writes every var captured by snap back to its own recorded scopeBindings - used both to reset to a
//common baseline before checking the next alternative branch, and to commit a final merged result once
//every branch has been checked.
void applyScopeBindingsSnapshot(struct list* snap) {
    for (int i = 0; i < snap->len; i++) {
        struct scopeVarSnapshot* s = ListGetIdx(snap, i);
        s->v->scopeBindings = s->bindings;
    }
}

//true if two scopeBindings lists carry the same set of (typeParam, viaPath, boundTo) triples, order-
//independent, typeParam/boundTo canonicalized (see canonicalVar) and viaPath compared via viaPathsEqual,
//since either list may hold a type-level original or a function/constructor body's own scope-chain copy of
//one, depending on which pass produced it. viaPath is part of the match, not just typeParam/boundTo: a var
//whose own map holds two path-tagged entries for the same typeParam (see struct scopeBinding's own comment
//- a call merging two same-typed bare-pun arguments) could otherwise look "equal" across two branches that
//actually swapped which parameter each boundTo flowed through - matching as SETS while actually disagreeing
//on which path leads where, a real false-accept risk once a bare-pun field access later filters by that
//exact path.
bool scopeBindingsEqual(struct list a, struct list b) {
    if (a.len != b.len) return false;
    for (int i = 0; i < a.len; i++) {
        struct scopeBinding* ba = ListGetIdx(&a, i);
        bool found = false;
        for (int j = 0; j < b.len; j++) {
            struct scopeBinding* bb = ListGetIdx(&b, j);
            if (canonicalVar(ba->typeParam) == canonicalVar(bb->typeParam)
                    && viaPathsEqual(ba->viaPath, bb->viaPath)
                    && canonicalVar(ba->boundTo) == canonicalVar(bb->boundTo)) {
                found = true;
                break;
            }
        }
        if (!found) return false;
    }
    return true;
}

//folds next's own outcome into acc (both snapshots of the same var set, taken from the same starting
//baseline): a var whose recorded bindings agree between the two is left alone in acc; a var that disagrees
//has every key either side ever tracked for it marked SCOPE_AMBIGUOUS - deliberately NOT reset to plain
//empty/never-tracked, which would collapse a definite "we know this can be more than one thing" fact into
//the weaker "we just never tracked this at all" one and undo the whole point of tracking this in the first
//place (see SCOPE_AMBIGUOUS's own comment - both are now rejected by scopeCanFlowInto either way, but the
//distinction is still worth preserving for anyone reading the logic later). Call once
//per branch beyond the first to fold an arbitrary number of alternatives (if/else, or match's N cases plus
//an implicit/explicit "nothing matched" possibility) into one final, honestly-merged result. Monotonic by
//construction: once a key is marked ambiguous, every later fold that touches it rebuilds from acc's own
//(already-ambiguous) entry first, so it can never be "un-marked" by a later branch that happens to agree
//with some earlier, already-superseded value.
//the shortest-lived of what the two arms bound this key to. "own" (NULL) is the shortest scope nameable
//inside a function (O10a), so it wins against anything; a key one arm never tracked at all is likewise own
//as far as this function can tell. Two different named scopes have no order known here, which is O10b's
//whole subject, so they meet at "ambiguous" and are rejected by whoever consumes the binding.
//whether the other arm has a binding for mine's key at all
static bool bindingTracked(struct scopeBinding* mine, struct scopeVarSnapshot* other) {
    if (!other) return false;
    for (int i = 0; i < other->bindings.len; i++) {
        struct scopeBinding* o = ListGetIdx(&other->bindings, i);
        if (canonicalVar(o->typeParam) == canonicalVar(mine->typeParam) && viaPathsEqual(o->viaPath, mine->viaPath)) return true;
    }
    return false;
}

static struct var* bindingMeet(struct scopeBinding* mine, struct scopeVarSnapshot* other) {
    if (!other) return NULL;
    for (int i = 0; i < other->bindings.len; i++) {
        struct scopeBinding* o = ListGetIdx(&other->bindings, i);
        if (canonicalVar(o->typeParam) != canonicalVar(mine->typeParam)) continue;
        if (!viaPathsEqual(o->viaPath, mine->viaPath)) continue;
        if (o->boundTo == mine->boundTo) return o->boundTo;
        if (o->boundTo == NULL || mine->boundTo == NULL) return NULL; //own is shortest: it wins
        return SCOPE_AMBIGUOUS;
    }
    return NULL; //the other arm never tracked this key - nothing longer-lived can be claimed
}

//the candidate scopes behind a meet that produced no single name: everything either arm bound this key to,
//plus anything an earlier merge had already accumulated. A consumer must hold for all of them.
static struct list bindingCandidates(struct scopeBinding* mine, struct scopeVarSnapshot* other) {
    struct list out = ListInit(sizeof(struct var*));
    if (mine->candidates.len > 0) {
        for (int i = 0; i < mine->candidates.len; i++) ListAdd(&out, ListGetIdx(&mine->candidates, i));
    } else if (mine->boundTo != SCOPE_AMBIGUOUS) {
        ListAdd(&out, &mine->boundTo);
    }
    if (!other) return out;
    for (int i = 0; i < other->bindings.len; i++) {
        struct scopeBinding* o = ListGetIdx(&other->bindings, i);
        if (canonicalVar(o->typeParam) != canonicalVar(mine->typeParam)) continue;
        if (!viaPathsEqual(o->viaPath, mine->viaPath)) continue;
        if (o->candidates.len > 0) {
            for (int j = 0; j < o->candidates.len; j++) ListAdd(&out, ListGetIdx(&o->candidates, j));
        } else if (o->boundTo != SCOPE_AMBIGUOUS) {
            ListAdd(&out, &o->boundTo);
        }
        break;
    }
    return out;
}

void foldScopeBindingsBranch(struct list* acc, struct list* next) {
    for (int i = 0; i < acc->len; i++) {
        struct scopeVarSnapshot* a = ListGetIdx(acc, i);
        struct scopeVarSnapshot* n = NULL;
        for (int j = 0; j < next->len; j++) {
            struct scopeVarSnapshot* cand = ListGetIdx(next, j);
            if (cand->v == a->v) { n = cand; break; }
        }
        if (n && scopeBindingsEqual(a->bindings, n->bindings)) continue;

        //keyed by (typeParam, viaPath) - see scopeBindingsEqual's own comment on why viaPath has to be
        //part of the key here too, not just typeParam.
        //O13b: where the arms disagree, the merged value is valid for the SHORTEST of what they claim -
        //that is the honest meet, and it is computable exactly when one of the arms said "own": O10a
        //already orders every named scope above own, so own wins outright. Recording own rather than
        //"ambiguous" is both sounder-looking and strictly more useful, since the merged value can still
        //flow anywhere an own-scoped one may. Two DIFFERENT named scopes have no locally known order -
        //that is precisely what O10b defers to the caller - so those stay ambiguous, and ambiguous is
        //rejected wherever a binding is consumed.
        struct list ambiguous = ListInit(sizeof(struct scopeBinding));
        for (int j = 0; j < a->bindings.len; j++) {
            struct scopeBinding* e = ListGetIdx(&a->bindings, j);
            //C2d: an instance-scope binding is a constraint, and an arm without one imposes none - so the
            //merge keeps the arm that has it, exactly as it was
            //C2c: so is an implicit parameter scope - the arm without one holds null, or a value built elsewhere
            if ((canonicalVar(e->typeParam)->isInstanceScope || canonicalVar(e->typeParam)->isImplicitScope)
                    && !bindingTracked(e, n)) {
                ListAdd(&ambiguous, e);
                continue;
            }
            struct scopeBinding amb = (struct scopeBinding){0};
            amb.typeParam = e->typeParam;
            amb.viaPath = e->viaPath;
            amb.boundTo = bindingMeet(e, n);
            amb.needExact = e->needExact;
            if (amb.boundTo == SCOPE_AMBIGUOUS) amb.candidates = bindingCandidates(e, n);
            ListAdd(&ambiguous, &amb);
        }
        if (n) {
            for (int j = 0; j < n->bindings.len; j++) {
                struct scopeBinding* e = ListGetIdx(&n->bindings, j);
                bool already = false;
                for (int k = 0; k < ambiguous.len; k++) {
                    struct scopeBinding* have = ListGetIdx(&ambiguous, k);
                    if (canonicalVar(have->typeParam) == canonicalVar(e->typeParam)
                            && viaPathsEqual(have->viaPath, e->viaPath)) { already = true; break; }
                }
                if (already) continue;
                if (canonicalVar(e->typeParam)->isInstanceScope || canonicalVar(e->typeParam)->isImplicitScope) {
                    ListAdd(&ambiguous, e); //C2d/C2c, as above
                    continue;
                }
                struct scopeBinding amb = (struct scopeBinding){0};
                amb.typeParam = e->typeParam;
                amb.viaPath = e->viaPath;
                amb.boundTo = SCOPE_AMBIGUOUS;
                ListAdd(&ambiguous, &amb);
            }
        }
        a->bindings = ambiguous;
    }
}

//S8a: is this condition fixed before the program runs - built only from literals, operators, build
//constants (B10) and immutable globals whose initializers are themselves such - and does it depend on a
//build constant? A call is not followed: its body may not be checked yet at this point, so a condition
//reaching one is simply not judged.
static bool condIsConstant(struct operand* op, bool* build, int depth) {
    if (!op || depth > 64) return false;
    switch (op->opType) {
        case OPERATION_NONE: return op->isLiteral && op->args.len == 0;
        case OPERATION_READ_VAR: {
            struct var* v = canonicalVar(op->readVar);
            if (!v || !v->owner || v->type.bType == BASETYPE_FUNC || v->mut) return false;
            if (v->owner == buildModule) { *build = true; return true; }
            return v->initExpr && condIsConstant(v->initExpr, build, depth + 1);
        }
        case OPERATION_NOT: case OPERATION_MINUS: case OPERATION_BTWSE_INV:
        case OPERATION_NUMERIC_CONVERT: case OPERATION_NOMINAL_CONVERT:
        case OPERATION_MOD: case OPERATION_ADD: case OPERATION_SUB: case OPERATION_MUL: case OPERATION_DIV:
        case OPERATION_LST: case OPERATION_LSE: case OPERATION_GRT: case OPERATION_GRE:
        case OPERATION_EQ: case OPERATION_NEQ: case OPERATION_AND: case OPERATION_OR: case OPERATION_XOR:
        case OPERATION_BTSFT_L: case OPERATION_BTSFT_R:
        case OPERATION_BTWSE_AND: case OPERATION_BTWSE_OR: case OPERATION_BTWSE_XOR:
            for (int i = 0; i < op->args.len; i++) {
                if (!condIsConstant(*(struct operand**)ListGetIdx(&op->args, i), build, depth + 1)) return false;
            }
            return true;
        default: return false;
    }
}

// ---- S8b: locals that provably hold one value ----

//by id: body id is at index id - 1 - a module of thousands of local ifs looks one up per if
struct bodyRec { bool ended; struct list stmts; };
static struct list bodyRecs;
static int nextBodyId;

static int bodyBegin(void) {
    if (nextBodyId == 0) bodyRecs = ListInit(sizeof(struct bodyRec));
    struct bodyRec r = (struct bodyRec){0};
    ListAdd(&bodyRecs, &r);
    return ++nextBodyId;
}

static void bodyEnd(int id, struct list stmts) {
    struct bodyRec* r = ListGetIdx(&bodyRecs, id - 1);
    if (r->ended) return; //the first recorded is the one kept
    r->ended = true;
    r->stmts = stmts;
}

static struct list* bodyStmts(int id) {
    if (id <= 0 || id > bodyRecs.len) return NULL;
    struct bodyRec* r = ListGetIdx(&bodyRecs, id - 1);
    return r->ended ? &r->stmts : NULL;
}

//the checked condition of a queued local if, recorded where it is checked - in its own function's scope
static void noteLocalCond(struct checkCtx* ctx, struct syntax* condNode, struct operand* op) {
    struct pendingCond* p = SyntaxPendingFor(condNode);
    if (p && p->local) { p->op = op; p->bodyId = ctx->bodyId; }
}

//a plain scalar value: nothing but its own name can reach it - there is no reference to a primitive - so a
//direct write is the only way its value can change
static bool scalarType(struct type t) {
    if (t.structMAlloc) return false;
    switch (t.bType) {
        case BASETYPE_BOOL: return true;
        case BASETYPE_CHOICE: return !ChoiceHasPayload(t);
        default: return TypeIsNumeric(t);
    }
}

static struct var* lvalueRoot(struct operand* op) {
    while (op && (op->opType == OPERATION_MEMBER || op->opType == OPERATION_INDEX)) op = *(struct operand**)ListGetIdx(&op->args, 0);
    return op && op->opType == OPERATION_READ_VAR ? canonicalVar(op->readVar) : NULL;
}

static bool stmtsWrite(struct list* stmts, struct var* v);
static struct statement* stmtsFindDecl(struct list* stmts, struct var* v);

static bool opWrites(struct operand* op, struct var* v) {
    if (!op) return false;
    switch (op->opType) {
        case OPERATION_PREFIX_INC: case OPERATION_PREFIX_DEC: case OPERATION_POSTFIX_INC: case OPERATION_POSTFIX_DEC:
        case OPERATION_ATOMIC_STORE: case OPERATION_ATOMIC_ADD: case OPERATION_ATOMIC_SWAP: case OPERATION_ATOMIC_CAS:
            if (lvalueRoot(*(struct operand**)ListGetIdx(&op->args, 0)) == v) return true;
            break;
        default: break;
    }
    if (opWrites(op->callee, v)) return true; //E13b
    if (stmtsWrite(&op->comprBody, v)) return true; //E27
    for (int i = 0; i < op->args.len; i++) if (opWrites(*(struct operand**)ListGetIdx(&op->args, i), v)) return true;
    for (int c = 0; c < op->catchClauses.len; c++) {
        struct catchClause* cc = ListGetIdx(&op->catchClauses, c);
        if (stmtsWrite(&cc->block, v) || opWrites(cc->dflt, v)) return true;
    }
    return false;
}

static bool stmtWrites(struct statement* s, struct var* v) {
    if (s->sType == STATEMENT_ASSIGN && lvalueRoot(s->target) == v) return true;
    for (int i = 0; i < s->spawnTargets.len; i++) {
        struct operand* t = *(struct operand**)ListGetIdx(&s->spawnTargets, i);
        if (t && lvalueRoot(t) == v) return true;
    }
    if (opWrites(s->op, v) || opWrites(s->target, v) || opWrites(s->fillValue, v) || opWrites(s->forInit, v)) return true;
    if (s->forPost && stmtWrites(s->forPost, v)) return true;
    if (stmtsWrite(&s->block, v) || stmtsWrite(&s->nomatchBlock, v)) return true;
    if (s->elseStmnt && stmtWrites(s->elseStmnt, v)) return true;
    for (int i = 0; i < s->matchCases.len; i++) if (stmtWrites(ListGetIdx(&s->matchCases, i), v)) return true;
    if (stmtsWrite(&s->matchHold, v) || opWrites(s->caseGuard, v) || opWrites(s->nomatchValue, v)) return true;
    for (int i = 0; i < s->caseAlts.len; i++) if (opWrites(((struct caseAlt*)ListGetIdx(&s->caseAlts, i))->test, v)) return true;
    for (int c = 0; c < s->catchClauses.len; c++) {
        struct catchClause* cc = ListGetIdx(&s->catchClauses, c);
        if (stmtsWrite(&cc->block, v)) return true;
    }
    return false;
}

static bool stmtsWrite(struct list* stmts, struct var* v) {
    for (int i = 0; i < stmts->len; i++) if (stmtWrites(ListGetIdx(stmts, i), v)) return true;
    return false;
}

static struct statement* stmtFindDecl(struct statement* s, struct var* v) {
    if (s->sType == STATEMENT_VAR_DECL && StrCmp(s->var.name, v->name) && s->var.tok.str.ptr == v->tok.str.ptr) return s;
    struct statement* r;
    if ((r = stmtsFindDecl(&s->block, v)) || (r = stmtsFindDecl(&s->nomatchBlock, v))) return r;
    if (s->elseStmnt && (r = stmtFindDecl(s->elseStmnt, v))) return r;
    for (int i = 0; i < s->matchCases.len; i++) if ((r = stmtFindDecl(ListGetIdx(&s->matchCases, i), v))) return r;
    if ((r = stmtsFindDecl(&s->matchHold, v))) return r;
    for (int c = 0; c < s->catchClauses.len; c++) {
        struct catchClause* cc = ListGetIdx(&s->catchClauses, c);
        if ((r = stmtsFindDecl(&cc->block, v))) return r;
    }
    return NULL;
}

static struct statement* stmtsFindDecl(struct list* stmts, struct var* v) {
    for (int i = 0; i < stmts->len; i++) {
        struct statement* r = stmtFindDecl(ListGetIdx(stmts, i), v);
        if (r) return r;
    }
    return NULL;
}

//CtLocalFixer: the initializer that fixes a local's value everywhere in its body - a plain scalar declared
//with one and written nowhere after, so wherever it can be read it holds that initializer's value
//answers remembered for the attempt - finding a local's declaration and every write to it walks its whole body, and
//a body of thousands of ifs or asserts asks about one local for each (fixedCacheReset clears it as bodies are rebuilt)
struct fixedCacheSlot { struct list* body; struct var* v; struct operand* init; };
static struct fixedCacheSlot* fixedCache;
static int fixedCacheCap, fixedCacheLen;

static void fixedCacheReset(void) {
    if (fixedCacheCap) memset(fixedCache, 0, sizeof(*fixedCache) * (size_t)fixedCacheCap);
    fixedCacheLen = 0;
}

static unsigned fixedCacheHash(struct list* body, struct var* v) {
    return (unsigned)((((uintptr_t)body >> 4) * 31u + ((uintptr_t)v >> 4)) * 2654435761u);
}

static struct fixedCacheSlot* fixedCacheFind(struct list* body, struct var* v) {
    if (!fixedCacheCap) return NULL;
    unsigned m = (unsigned)fixedCacheCap - 1;
    for (unsigned k = fixedCacheHash(body, v) & m; fixedCache[k].v; k = (k + 1) & m) {
        if (fixedCache[k].body == body && fixedCache[k].v == v) return &fixedCache[k];
    }
    return NULL;
}

static void fixedCachePut(struct list* body, struct var* v, struct operand* init) {
    if ((fixedCacheLen + 1) * 2 > fixedCacheCap) {
        struct fixedCacheSlot* old = fixedCache;
        int oldCap = fixedCacheCap;
        fixedCacheCap = fixedCacheCap ? fixedCacheCap * 2 : 256;
        fixedCache = MallocOrCrash(sizeof(*fixedCache) * (size_t)fixedCacheCap);
        memset(fixedCache, 0, sizeof(*fixedCache) * (size_t)fixedCacheCap);
        fixedCacheLen = 0;
        for (int i = 0; i < oldCap; i++) if (old[i].v) fixedCachePut(old[i].body, old[i].v, old[i].init);
        free(old);
    }
    unsigned m = (unsigned)fixedCacheCap - 1;
    unsigned k = fixedCacheHash(body, v) & m;
    while (fixedCache[k].v) k = (k + 1) & m;
    fixedCache[k] = (struct fixedCacheSlot){ body, v, init };
    fixedCacheLen++;
}

static struct operand* fixedLocalInit(struct var* local, void* ctx) {
    struct list* body = ctx;
    struct var* v = canonicalVar(local);
    if (!body || !scalarType(v->type)) return NULL;
    struct fixedCacheSlot* known = fixedCacheFind(body, v);
    if (known) return known->init;
    struct statement* decl = stmtsFindDecl(body, v);
    struct operand* init = decl && decl->op && !decl->fillValue && !stmtsWrite(body, v) ? decl->op : NULL;
    fixedCachePut(body, v, init);
    return init;
}

struct statement buildIfStmnt(struct checkCtx* ctx, struct syntax* s) {
    int errs = ErrMsgGetNErrors();
    struct operand* cond = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
    if (!OperandIsBool(cond)) ErrMsgSemantic(cond->tok, OPERATION_REQUIRES_BOOL);
    //S8b: decided, if it can be, after this attempt - but one that does not check is the running program's, so the
    //attempt that follows reports what is wrong with it rather than deciding it from a value it cannot have
    noteLocalCond(ctx, firstPartOfType(s, SNTX_EXPR), ErrMsgGetNErrors() == errs ? cond : NULL);
    //S8a: a condition that is the same on every build decides nothing - one of the branches is dead code,
    //which is far more often a mistake than an intention. One that depends on a build constant is
    //configuration (S8b).
    bool dependsOnBuild = false;
    if (firstPartOfType(s, SNTX_COND_DEAD)) {
        ErrMsgSemantic(cond->tok, IF_CONDITION_CONSTANT); //found fixed by compile-time evaluation (S8b)
    } else if (OperandIsBool(cond) && condIsConstant(cond, &dependsOnBuild, 0) && !dependsOnBuild) {
        ErrMsgSemantic(cond->tok, IF_CONDITION_CONSTANT);
    }

    struct list blocks = allPartsOfType(s, SNTX_BLOCK);
    struct syntax* thenBlockNode = *(struct syntax**)ListGetIdx(&blocks, 0);

    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_IF;
    stmt.op = cond;

    //see the flow-sensitive scope-binding tracking block above: baseline is the starting point both
    //branches are checked against (restored before the second, so it doesn't see the first's leftover
    //mutations), and the two outcomes are folded into one honest result once both are known.
    struct list baseline = snapshotScopeBindings(ctx->scope);
    stmt.block = buildBlock(ctx, thenBlockNode);
    struct list afterThen = snapshotScopeBindings(ctx->scope);
    applyScopeBindingsSnapshot(&baseline);

    struct syntax* elseIfNode = firstPartOfType(s, SNTX_STMNT_IF);
    struct list afterElse;
    if (blocks.len == 2) {
        struct syntax* elseBlockNode = *(struct syntax**)ListGetIdx(&blocks, 1);
        stmt.elseStmnt = MallocOrCrash(sizeof(struct statement));
        *stmt.elseStmnt = (struct statement){0};
        stmt.elseStmnt->sType = STATEMENT_IF; //bare-block wrapper, condition unused
        stmt.elseStmnt->block = buildBlock(ctx, elseBlockNode);
        stmt.elseIsBlock = true;
        afterElse = snapshotScopeBindings(ctx->scope);
    } else if (elseIfNode) {
        stmt.elseStmnt = MallocOrCrash(sizeof(struct statement));
        //recurses through this same snapshot/merge logic for its own nested branches first, so by the
        //time this returns, the vars already reflect that whole "else if..." chain's own merged outcome -
        //composes correctly through an arbitrary chain with no extra plumbing needed here.
        *stmt.elseStmnt = buildIfStmnt(ctx, elseIfNode);
        afterElse = snapshotScopeBindings(ctx->scope);
    } else {
        afterElse = baseline; //no else at all - the implicit "nothing happened" path
    }

    foldScopeBindingsBranch(&afterThen, &afterElse);
    applyScopeBindingsSnapshot(&afterThen);
    return stmt;
}

//S9: "for { }" and "for cond { }" - a loop with no variable of its own and no post clause, and for the
//first no condition either
static struct statement buildForBareStmnt(struct checkCtx* innerCtx, struct syntax* s) {
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_FOR;
    struct syntax* condNode = firstPartOfType(s, SNTX_EXPR);
    struct list baseline = snapshotScopeBindings(innerCtx->scope);
    innerCtx->inLoop = true;
    if (condNode) {
        stmt.op = buildExprFromSyntax(innerCtx, condNode);
        if (!OperandIsBool(stmt.op)) ErrMsgSemantic(stmt.op->tok, OPERATION_REQUIRES_BOOL);
    }
    stmt.block = buildBlock(innerCtx, firstPartOfType(s, SNTX_BLOCK));
    struct list after = snapshotScopeBindings(innerCtx->scope);
    foldScopeBindingsBranch(&baseline, &after);
    applyScopeBindingsSnapshot(&baseline);
    return stmt;
}

//E27: what a comprehension's loop does with each value instead of running a block - set by
//buildComprehension, taken (and cleared) by buildForInStmnt before it builds anything, so a comprehension
//written inside the source, the element or the filter starts afresh

static struct statement comprOpStmt(enum operation kind, struct operand* arg, struct token at) {
    struct operand* op = operandNew(at, kind, TypeVanilla(BASETYPE_VOID));
    ListAdd(&op->args, &arg);
    struct statement st = (struct statement){0};
    st.sType = STATEMENT_EXPR;
    st.op = op;
    return st;
}

//a loop's body: the program's own block, or for a comprehension "[if cond] push(elem)"
static void finalizeOpLambdas(struct operand* op);
static struct list forInBody(struct checkCtx* ctx, struct syntax* s, struct comprSpec* spec, struct token kw) {
    if (!spec) return buildBlock(ctx, firstPartOfType(s, SNTX_BLOCK));
    struct list out = ListInit(sizeof(struct statement));
    struct operand* elem = buildExprFromSyntax(ctx, spec->elemNode);
    reportTypeFit(OperandFitsType(ctx->func, elem, spec->elemType), elem->tok);
    finalizeOpLambdas(elem);
    struct statement push = comprOpStmt(OPERATION_COMPR_PUSH, elem, kw);
    if (!spec->condNode) { ListAdd(&out, &push); return out; }
    struct operand* cond = buildExprFromSyntax(ctx, spec->condNode);
    if (!OperandIsBool(cond)) ErrMsgSemantic(cond->tok, OPERATION_REQUIRES_BOOL);
    finalizeOpLambdas(cond);
    struct statement st = (struct statement){0};
    st.sType = STATEMENT_IF;
    st.op = cond;
    st.block = ListInit(sizeof(struct statement));
    ListAdd(&st.block, &push);
    ListAdd(&out, &st);
    return out;
}

//S9a: a token standing for a name the loop introduces itself - "$" cannot begin an identifier, so it never
//collides with one the program writes
static int forInCounter = 0;
static struct token forInHiddenTok(struct token at, const char* what) {
    char* nm = MallocOrCrash(32);
    snprintf(nm, 32, "$for%s%d", what, forInCounter);
    struct token t = at;
    t.type = TOK_IDEN;
    t.str = StrFromCStr(nm);
    return t;
}

//S9a: does a value of type t have a method called name taking nothing but its receiver
static struct var* forInMethod(struct type t, char* name) {
    if (t.bType == BASETYPE_INTERFACE) {
        for (int i = 0; i < t.vars.len; i++) {
            struct var* m = ListGetIdx(&t.vars, i);
            if (StrCmp(m->name, StrFromCStr(name)) && m->type.vars.len == 0) return m;
        }
        return NULL;
    }
    struct var* m = VarGetMethod(t.owner, StrFromCStr(name), t);
    if (!m || m->type.bType != BASETYPE_FUNC || m->type.vars.len != 1) return NULL;
    if (!MethodReceiverAccepts((*(struct var*)ListGetIdx(&m->type.vars, 0)).type, t)) return NULL;
    return m;
}

//E29: a method a value of type t has under this name, of any arity
static struct var* methodNamedOn(struct type t, const char* name) {
    if (t.bType == BASETYPE_INTERFACE) {
        for (int i = 0; i < t.vars.len; i++) {
            struct var* m = ListGetIdx(&t.vars, i);
            if (StrCmp(m->name, StrFromCStr((char*)name))) return m;
        }
        return NULL;
    }
    struct var* m = VarGetMethod(t.owner, StrFromCStr((char*)name), t);
    if (!m || m->type.bType != BASETYPE_FUNC || m->type.vars.len < 1) return NULL;
    if (!MethodReceiverAccepts((*(struct var*)ListGetIdx(&m->type.vars, 0)).type, t)) return NULL;
    return m;
}

//"recv.name()" built exactly as the program would have written it
static struct operand* forInCall(struct checkCtx* ctx, struct operand* recv, struct token at, char* name) {
    struct syntax noArgs = (struct syntax){ SNTX_EXPR_ARGS, ListInit(sizeof(struct syntaxPart)) };
    struct token mTok = at;
    mTok.type = TOK_IDEN;
    mTok.str = StrFromCStr(name);
    bool reported = false;
    return buildMethodCall(ctx, recv, mTok, &noArgs, ListInit(sizeof(struct syntax*)), &reported);
}

//S9b: pieces of the range lowering - a hidden local of a given type, a literal, an assignment, an if
static struct var* rangeLocal(struct checkCtx* ctx, struct list* out, struct token kw, char* tag, struct type t,
                              struct operand* init) {
    struct token nt = forInHiddenTok(kw, tag);
    struct type dt = t;
    dt.scopeDepth = ctx->blockDepth;
    reportTypeFit(OperandFitsType(ctx->func, init, dt), init->tok);
    struct var* v = scopeDeclare(ctx->mod, ctx->scope, nt.str, nt, dt, true);
    struct statement d = (struct statement){0};
    d.sType = STATEMENT_VAR_DECL;
    d.var = *v;
    d.op = init;
    ListAdd(out, &d);
    return v;
}

static struct operand* rangeLit(struct token kw, char* text) {
    struct token t = kw;
    t.type = TOK_INT_LIT;
    t.str = StrFromCStr(text);
    return OperandIntLiteral(t);
}

static struct operand* rangeRead(struct var* v, struct token kw) { return OperandReadVar(v, kw); }

static void rangeSet(struct checkCtx* ctx, struct list* out, struct var* v, struct operand* rhs, struct token kw) {
    struct token eq = kw;
    eq.type = TOK_ASS;
    eq.str = StrFromCStr("=");
    struct statement a = buildAssignCore(ctx, OperandReadVar(v, kw), rhs, eq);
    ListAdd(out, &a);
}

static struct statement rangeIf(struct operand* cond, struct list block) {
    struct statement st = (struct statement){0};
    st.sType = STATEMENT_IF;
    st.op = cond;
    st.block = block;
    return st;
}

//S9b: "for i in range end" / "range start, end [, step]" - start (default 0, included) up to end (excluded), step
//(default 1) apart. Nothing runs unless start is below end and step is positive. Lowered to a count worked
//out once before the first iteration and a counted loop, so it costs what the three-clause form does:
//  n = start < end and step > 0 ? ceil((end - start) / step) : 0,   value(c) = start + step * c
static struct statement buildForRangeStmnt(struct checkCtx* ctx, struct syntax* s, struct syntax* rangeNode,
                                           struct token kw, struct token* idxTok, struct token elemTok,
                                           struct comprSpec* spec) {
    struct scope wrapScope = scopePush(ctx->scope);
    struct checkCtx w = *ctx;
    w.scope = &wrapScope;
    w.blockDepth = ctx->blockDepth + 1;
    struct list pre = ListInit(sizeof(struct statement));

    struct list argNodes = allPartsOfType(rangeNode, SNTX_EXPR);
    struct operand* args[3] = { NULL, NULL, NULL };
    for (int i = 0; i < argNodes.len; i++) args[i] = buildExprFromSyntax(&w, *(struct syntax**)ListGetIdx(&argNodes, i));
    //the range's type: the first argument that is not a literal decides it, and literals adapt to it (T6);
    //literals alone make it the widest of their own types
    struct type T = TypeVanilla(BASETYPE_INT32);
    bool fixed = false;
    for (int i = 0; i < argNodes.len; i++) {
        if (!TypeIsInt(args[i]->type)) { ErrMsgSemantic(args[i]->tok, RANGE_NEEDS_INTEGERS); return (struct statement){0}; }
        if (!operandIsLiteralLike(args[i]) && !fixed) { T = args[i]->type; fixed = true; }
        if (!fixed && numericTypeRank(args[i]->type) > numericTypeRank(T)) T = args[i]->type;
    }
    T.scopeParam = NULL;
    T.structMAlloc = false;
    struct litValue step = {0};
    if (args[2] && operandOnlyNumericLiterals(args[2]) && literalExprValue(args[2], &step) == LIT_VALUE_OK && step.i <= 0)
        ErrMsgSemantic(args[2]->tok, RANGE_ZERO_STEP);

    //evaluated once, in the order written
    //one argument is the end; two or three are start, end [, step]
    struct var* vStart = rangeLocal(&w, &pre, kw, "Start", T, args[1] ? args[0] : rangeLit(kw, "0"));
    struct var* vEnd = rangeLocal(&w, &pre, kw, "End", T, args[1] ? args[1] : args[0]);
    struct var* vStep = rangeLocal(&w, &pre, kw, "Step", T, args[2] ? args[2] : rangeLit(kw, "1"));
    //n = start < end and step > 0 ? ceil((end - start) / step) : 0
    struct var* vN = rangeLocal(&w, &pre, kw, "N", T, rangeLit(kw, "0"));
    {
        struct list b = ListInit(sizeof(struct statement));
        struct operand* span = OperandBinary(rangeRead(vEnd, kw), rangeRead(vStart, kw), OPERATION_SUB, kw);
        struct operand* num = OperandBinary(OperandBinary(span, rangeRead(vStep, kw), OPERATION_ADD, kw),
                                            rangeLit(kw, "1"), OPERATION_SUB, kw);
        rangeSet(&w, &b, vN, OperandBinary(num, rangeRead(vStep, kw), OPERATION_DIV, kw), kw);
        struct operand* runs = OperandBinary(OperandBinary(rangeRead(vStart, kw), rangeRead(vEnd, kw), OPERATION_LST, kw),
                                             OperandBinary(rangeRead(vStep, kw), rangeLit(kw, "0"), OPERATION_GRT, kw),
                                             OPERATION_AND, kw);
        struct statement st = rangeIf(runs, b);
        ListAdd(&pre, &st);
    }
    //E27: a comprehension over a range holds at most its count
    if (spec) {
        struct statement r = comprOpStmt(OPERATION_COMPR_RESERVE,
                                         OperandNumericConversion(TypeVanilla(BASETYPE_INT64), rangeRead(vN, kw), kw), kw);
        ListAdd(&pre, &r);
    }

    //the counted loop
    struct scope loopScope = scopePush(w.scope);
    struct checkCtx l = w;
    l.scope = &loopScope;
    struct statement loop = (struct statement){0};
    loop.sType = STATEMENT_FOR;
    struct token ct = forInHiddenTok(kw, "C");
    struct type cT = T;
    cT.scopeDepth = l.blockDepth;
    struct var* vC = scopeDeclare(l.mod, l.scope, ct.str, ct, cT, true);
    loop.var = *vC;
    loop.forInit = rangeLit(kw, "0");
    loop.op = OperandBinary(rangeRead(vC, kw), rangeRead(vN, kw), OPERATION_LST, kw);
    loop.forPost = MallocOrCrash(sizeof(struct statement));
    *loop.forPost = (struct statement){0};
    loop.forPost->sType = STATEMENT_EXPR;
    loop.forPost->op = OperandUnary(rangeRead(vC, kw), OPERATION_POSTFIX_INC, kw);

    struct list baseline = snapshotScopeBindings(l.scope);
    l.inLoop = true;
    struct list body = ListInit(sizeof(struct statement));
    if (idxTok) { struct statement d = buildVarDeclFromOperand(&l, *idxTok, rangeRead(vC, kw)); ListAdd(&body, &d); }
    struct operand* stepped = OperandBinary(rangeRead(vStep, kw), rangeRead(vC, kw), OPERATION_MUL, kw);
    struct statement d = buildVarDeclFromOperand(&l, elemTok, OperandBinary(rangeRead(vStart, kw), stepped, OPERATION_ADD, kw));
    ListAdd(&body, &d);
    struct list user = forInBody(&l, s, spec, kw);
    for (int i = 0; i < user.len; i++) ListAdd(&body, ListGetIdx(&user, i));
    loop.block = body;
    struct list after = snapshotScopeBindings(l.scope);
    foldScopeBindingsBranch(&baseline, &after);
    applyScopeBindingsSnapshot(&baseline);
    loop.line = kw.lineNr;
    if (kw.owner) loop.file = TokenGetFileName(kw.owner);
    ListAdd(&pre, &loop);

    struct token t = kw;
    t.type = TOK_BOOL_LIT;
    t.str = StrFromCStr("true");
    return rangeIf(OperandBoolLiteral(t), pre);
}

//S9e: a "break" or "continue" in a for-in's catch clause that would leave a loop the clause is not inside - the
//clause runs once the loop has ended, so it could only mean an enclosing loop, which the lowering cannot reach
static struct token clauseLoopExit(struct syntax* n) {
    for (int i = 0; i < n->parts.len; i++) {
        struct syntaxPart* p = partAt(n, i);
        if (p->isToken) continue;
        enum syntaxType t = p->sntx->type;
        if (t == SNTX_STMNT_BREAK || t == SNTX_STMNT_CONTINUE) return firstTokAnywhere(p->sntx);
        if (t == SNTX_STMNT_FOR || t == SNTX_STMNT_FOR_IN || t == SNTX_STMNT_DO || t == SNTX_LAMBDA) continue;
        struct token r = clauseLoopExit(p->sntx);
        if (r.type != TOK_NONE) return r;
    }
    return (struct token){0};
}

//S9e: what a for-in calls by itself - the source, Iter(), Next(), TryAt() - when it can fail. Under "in try" each such
//call is tried with the loop's catch clauses, every clause ending by leaving the loop (a "break" appended), so an error
//ends the loop and what follows it runs; unnamed errors propagate. Without "try" a fallible one is an error.
struct forInTry {
    bool on;              //"in try" was written
    bool inExpr;          //a comprehension inside a "try": its calls are that try's to check, as an operator's are
    bool isCompr;         //a comprehension's loop, which has no clauses of its own
    struct syntax* s;     //the for-in, whose clauses these are
    struct list errors;   //every error the loop's own calls can produce (struct type*)
    struct list calls;    //the fallible calls (struct operand*), clauses attached once all are known
    struct checkCtx ctxs[8]; //each call's context, for building its clauses where the call is
    struct token kw;
};

//handled: an error the loop takes itself - Next's Exhausted, which ends it (S9a) - and so not one "try" must cover
static void forInTryNote(struct forInTry* ft, struct checkCtx* ctx, struct operand* call, struct type* handled) {
    if (!call || call->opType != OPERATION_FUNCCALL || !call->readVar) return;
    struct list* es = &call->readVar->type.errors;
    int rest = 0;
    for (int i = 0; i < es->len; i++) rest += !(handled && TypeIsSame(**(struct type**)ListGetIdx(es, i), *handled));
    if (!rest) return;
    if (!ft->on) { ErrMsgSemantic(ft->kw, ft->isCompr ? COMPR_NEEDS_TRY : FOR_IN_NEEDS_TRY); return; }
    if (ft->inExpr) { call->isOperatorCall = true; return; }
    if (ft->calls.len >= 8) return;
    call->isTried = true;
    for (int i = 0; i < es->len; i++) {
        struct type* e = *(struct type**)ListGetIdx(es, i);
        if (handled && TypeIsSame(*e, *handled)) continue;
        bool seen = false;
        for (int k = 0; k < ft->errors.len && !seen; k++) seen = TypeIsSame(**(struct type**)ListGetIdx(&ft->errors, k), *e);
        if (!seen) ListAdd(&ft->errors, &e);
    }
    ft->ctxs[ft->calls.len] = *ctx;
    ListAdd(&ft->calls, &call);
}

static void forInTryFinish(struct forInTry* ft) {
    if (!ft->on || ft->inExpr) return;
    if (!ft->calls.len) { ErrMsgSemantic(ft->kw, FOR_IN_TRY_NOTHING); return; }
    bool hasClauses = firstPartOfType(ft->s, SNTX_CATCH_CLAUSE) != NULL;
    struct token bad = (struct token){0};
    for (int i = 0; hasClauses && i < ft->s->parts.len && bad.type == TOK_NONE; i++) {
        struct syntaxPart* p = partAt(ft->s, i);
        if (!p->isToken && p->sntx->type == SNTX_CATCH_CLAUSE) bad = clauseLoopExit(p->sntx);
    }
    if (bad.type != TOK_NONE) ErrMsgSemantic(bad, FOR_IN_CLAUSE_LOOP_EXIT);
    for (int c = 0; c < ft->calls.len; c++) {
        struct operand* call = *(struct operand**)ListGetIdx(&ft->calls, c);
        struct checkCtx* cctx = &ft->ctxs[c];
        if (!hasClauses) {
            if (c == 0) {
                struct type et = (struct type){0};
                et.errors = ft->errors;
                checkTrySuperset(cctx, ft->kw, et);
            }
            continue;
        }
        //built once per call, each in its own place - a clause's block is code, emitted where the call is; reported once
        if (c > 0) ErrMsgMuteStart();
        cctx->inLoop = true;
        buildCatchClauses(cctx, ft->s, call, &ft->errors, false, NULL, ft->kw, &call->catchClauses);
        if (c > 0) ErrMsgMuteEnd();
        for (int k = 0; k < call->catchClauses.len; k++) {
            struct catchClause* cc = ListGetIdx(&call->catchClauses, k);
            if (!cc->hasBlock) { cc->hasBlock = true; cc->block = ListInit(sizeof(struct statement)); }
            struct statement brk = (struct statement){0};
            brk.sType = STATEMENT_BREAK;
            ListAdd(&cc->block, &brk);
        }
    }
}

//S9a: "for x in a" / "for i, x in a". Lowered, in a block of its own, to what the program could have written:
//for an array, a borrow of it and a counted loop whose body starts by copying out element i; for an
//iterator (a type with "mut Next() T ? Exhausted"), or a value whose "Iter()" returns one, a hidden iterator
//and a loop whose body starts by asking it for the next value and leaving when there is none. So every rule -
//borrowing, scope containment, mutability, unwinding - applies to it with nothing loop-specific added.
struct statement buildForInStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct comprSpec* spec = comprActive;
    comprActive = NULL;
    forInCounter++;
    struct token kw = firstTokOfType(s, TOK_FOR);
    struct list names = ListInit(sizeof(struct token));
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = partAt(s, i);
        if (p->isToken && p->tok.type == TOK_IDEN) ListAdd(&names, &p->tok);
    }
    struct token* idxTok = names.len == 2 ? ListGetIdx(&names, 0) : NULL;
    struct token elemTok = *(struct token*)ListGetIdx(&names, names.len - 1);
    //E29: a name already in scope makes this a declaration error, never a membership test - said so plainly
    for (int i = 0; i < names.len; i++) {
        struct token nt = *(struct token*)ListGetIdx(&names, i);
        if (scopeFindLocal(ctx->scope, strFromTok(nt)) || VarGetList(&ctx->mod->vars, strFromTok(nt))) {
            ErrMsgSemantic(nt, FOR_IN_NAME_EXISTS);
            return (struct statement){0};
        }
    }
    struct syntax* rangeNode = firstPartOfType(s, SNTX_RANGE);
    struct type* exhaustedT = SemanticBuiltinType(StrFromCStr("Exhausted"));
    struct operand* nextCall = NULL;
    struct forInTry ft = (struct forInTry){0};
    ft.on = hasTokOfType(s, TOK_TRY);
    ft.inExpr = spec && ctx->checkingTry; //S9e: "try T[e for x in c]"
    ft.isCompr = spec != NULL;
    if (ft.inExpr) ft.on = true;
    ft.s = s;
    ft.kw = kw;
    ft.errors = ListInit(sizeof(struct type*));
    ft.calls = ListInit(sizeof(struct operand*));
    if (rangeNode && ft.on) ErrMsgSemantic(firstTokOfType(s, TOK_TRY), FOR_IN_TRY_NOTHING);
    if (rangeNode) return buildForRangeStmnt(ctx, s, rangeNode, kw, idxTok, elemTok, spec);

    //the block the whole lowering lives in, so its hidden names end with the loop
    struct scope wrapScope = scopePush(ctx->scope);
    struct checkCtx wctx = *ctx;
    wctx.scope = &wrapScope;
    wctx.blockDepth = ctx->blockDepth + 1;
    struct list pre = ListInit(sizeof(struct statement));

    //S9e: what the loop calls by itself may fail - checked below, under "in try" or as an error
    wctx.allowFallibleCall = true;
    struct operand* src = buildExprFromSyntax(&wctx, firstPartOfType(s, SNTX_EXPR));
    wctx.allowFallibleCall = false;
    forInTryNote(&ft, &wctx, src, NULL);
    bool isArray = src->type.bType == BASETYPE_ARRAY;
    bool indexable = false; //S9d: walked through At and Len
    const char* atName = NULL;
    const char* lenName = NULL;
    struct var* arr = NULL;
    struct var* iter = NULL;
    struct var* nextM = NULL;
    if (isArray) {
        //held as a run-time-length reference: an lvalue is borrowed, never copied (E12c)
        struct type refT = (struct type){0};
        refT.bType = BASETYPE_ARRAY;
        refT.arrElem = src->type.arrElem;
        refT.arrMalloc = true;
        refT.structMAlloc = true;
        reportTypeFit(OperandFitsType(ctx->func, src, refT), src->tok);
        bool unnamed = false;
        if (!adoptInitializerScope(&wctx, &refT, src, &unnamed)) refT.scopeDepth = wctx.blockDepth;
        struct token at = forInHiddenTok(kw, "Arr");
        arr = scopeDeclare(wctx.mod, wctx.scope, at.str, at, refT, true);
        arr->scopeUnnamed = unnamed;
        arr->scopeBindings = src->scopeBindings;
        struct statement d = (struct statement){0};
        d.sType = STATEMENT_VAR_DECL;
        d.var = *arr;
        d.op = src;
        ListAdd(&pre, &d);
        //E27: a comprehension over an array holds at most its length
        if (spec) {
            struct statement r = comprOpStmt(OPERATION_COMPR_RESERVE, OperandLen(OperandReadVar(arr, kw), kw), kw);
            ListAdd(&pre, &r);
        }
    } else if (!forInMethod(src->type, "Next") && !forInMethod(src->type, "Iter")
               && (operatorMethodName(&wctx, src->type, "At") || tryOperatorName(&wctx, src->type, "At"))
               && operatorMethodName(&wctx, src->type, "Len")) {
        //S9d: a type with At and Len - and neither a Next nor an Iter of its own, either of which says how it wants
        //to be walked (a List walked by position would work out each element's chunk again, where its iterator
        //holds the chunk it is in) - is walked as an array is: a counted loop over
        //positions 0 to Len()-1, each element At(i), Len() read every iteration. The collection is borrowed
        //(E12c), never copied, so writes through it in the body are seen.
        indexable = true;
        //a type with only TryAt, the checked form, is walked through it - which "in try" then covers (S9e)
        atName = operatorMethodName(&wctx, src->type, "At");
        if (!atName) atName = tryOperatorName(&wctx, src->type, "At");
        lenName = operatorMethodName(&wctx, src->type, "Len");
        struct type refT = src->type;
        refT.structMAlloc = true;
        bool unnamed = false;
        if (!adoptInitializerScope(&wctx, &refT, src, &unnamed)) refT.scopeDepth = wctx.blockDepth;
        reportTypeFit(OperandFitsType(ctx->func, src, refT), src->tok);
        struct token ct = forInHiddenTok(kw, "Col");
        arr = scopeDeclare(wctx.mod, wctx.scope, ct.str, ct, refT, true);
        arr->scopeUnnamed = unnamed;
        arr->scopeBindings = src->scopeBindings;
        struct statement d = (struct statement){0};
        d.sType = STATEMENT_VAR_DECL;
        d.var = *arr;
        d.op = src;
        ListAdd(&pre, &d);
    } else {
        //T35a: anything that satisfies the built-in Iterator<T> for some T - the T read off its Next(), and
        //then checked by ordinary satisfaction, so a Next() without a mutable receiver does not qualify
        struct operand* itOp = src;
        //S9c: an ITERABLE - no Next() of its own, but an Iter() handing out a fresh iterator - is walked
        //through that iterator, so the collection keeps no position and every loop gets its own
        if (!forInMethod(src->type, "Next") && forInMethod(src->type, "Iter")) {
            wctx.allowFallibleCall = true;
            itOp = forInCall(&wctx, src, kw, "Iter");
            wctx.allowFallibleCall = false;
            forInTryNote(&ft, &wctx, itOp, NULL);
            src = itOp;
        }
        nextM = forInMethod(src->type, "Next");
        struct type* rt = nextM && nextM->type.hasRetType ? nextM->type.retType : NULL;
        //a generic Next() (a method of a generic iterator type) declares its result in terms of the type's
        //variables; what this receiver's call returns is the instantiated type, so it is read off that call
        if (nextM && nextM->type.typeParams.len > 0) {
            ErrMsgMuteStart();
            int pendingBefore = pendingDischarges.len;
            wctx.allowFallibleCall = true;
            struct operand* probe = forInCall(&wctx, src, kw, "Next");
            wctx.allowFallibleCall = false;
            pendingDischarges.len = pendingBefore; //a probe is never run, so nothing it would oblige is owed (O18a)
            ErrMsgMuteEnd();
            rt = &probe->type;
        }
        //S9a: Next gives the following value, and fails with Exhausted once there are none
        bool ends = false;
        for (int i = 0; nextM && exhaustedT && i < nextM->type.errors.len; i++)
            ends = ends || TypeIsSame(**(struct type**)ListGetIdx(&nextM->type.errors, i), *exhaustedT);
        bool ok = nextM && rt && !rt->isTuple && ends;
        //S9e: a Next that can fail some other way too is not Iterator<T>'s, so its shape is what is checked - a
        //writable receiver, as Iterator<T> asks
        if (ok && nextM->type.errors.len > 1) {
            struct var* r0 = nextM->type.vars.len ? ListGetIdx(&nextM->type.vars, 0) : NULL;
            ok = r0 && (r0->mut || r0->type.refMut);
        } else if (ok && src->type.bType != BASETYPE_INTERFACE) {
            struct list b = ListInit(sizeof(struct typeBinding));
            struct typeBinding tb = (struct typeBinding){0};
            tb.name = StrFromCStr("T");
            tb.type = *rt;
            ListAdd(&b, &tb);
            struct type* iterT = instantiateType(SemanticBuiltinType(StrFromCStr("Iterator")), &b);
            struct type concrete = src->type;
            ok = TypeSatisfiesInterface(concrete, *iterT, NULL);
        }
        if (!ok) {
            ErrMsgSemantic(src->tok, FOR_IN_NOT_ITERABLE);
            return (struct statement){0};
        }
        struct statement d = buildVarDeclFromOperand(&wctx, forInHiddenTok(kw, "It"), itOp);
        iter = scopeFindLocal(wctx.scope, d.var.name);
        ListAdd(&pre, &d);
    }

    //the loop itself, in its own scope
    struct scope loopScope = scopePush(wctx.scope);
    struct checkCtx lctx = wctx;
    lctx.scope = &loopScope;
    struct statement loop = (struct statement){0};
    loop.sType = STATEMENT_FOR;
    struct var* counter = NULL;
    if (isArray || indexable || idxTok) {
        struct token zero = kw;
        zero.type = TOK_INT_LIT;
        zero.str = StrFromCStr("0");
        struct token ct = forInHiddenTok(kw, "I");
        //an index ranges over a length, which is an Int64 (T10)
        struct type it64 = TypeVanilla(BASETYPE_INT64);
        it64.scopeDepth = lctx.blockDepth;
        counter = scopeDeclare(lctx.mod, lctx.scope, ct.str, ct, it64, true);
        loop.var = *counter;
        loop.forInit = OperandIntLiteral(zero);
        loop.forInit->type = TypeVanilla(BASETYPE_INT64);
        loop.forPost = MallocOrCrash(sizeof(struct statement));
        *loop.forPost = (struct statement){0};
        loop.forPost->sType = STATEMENT_EXPR;
        loop.forPost->op = OperandUnary(OperandReadVar(counter, kw), OPERATION_POSTFIX_INC, kw);
    }
    if (isArray) {
        loop.op = OperandBinary(OperandReadVar(counter, kw), OperandLen(OperandReadVar(arr, kw), kw),
                                OPERATION_LST, kw);
    } else if (indexable) {
        struct operand* n = operatorCall(&lctx, OperandReadVar(arr, kw), NULL, lenName, kw);
        loop.op = OperandBinary(OperandReadVar(counter, kw), n, OPERATION_LST, kw);
    }

    struct list baseline = snapshotScopeBindings(lctx.scope);
    lctx.inLoop = true;
    //the body starts with what the loop hands it; the program's own statements follow
    struct list body = ListInit(sizeof(struct statement));
    if (isArray || indexable) {
        if (idxTok) { struct statement d = buildVarDeclFromOperand(&lctx, *idxTok, OperandReadVar(counter, kw)); ListAdd(&body, &d); }
        struct operand* elem = indexable ? operatorCall(&lctx, OperandReadVar(arr, kw), OperandReadVar(counter, kw), atName, kw)
                                         : OperandIndex(OperandReadVar(arr, kw), OperandReadVar(counter, kw), kw);
        if (!indexable) elem->noCheck = true;
        if (indexable) forInTryNote(&ft, &lctx, elem, NULL);
        struct statement d = buildVarDeclFromOperand(&lctx, elemTok, elem);
        ListAdd(&body, &d);
    } else {
        lctx.allowFallibleCall = true;
        struct operand* call = forInCall(&lctx, OperandReadVar(iter, kw), kw, "Next");
        lctx.allowFallibleCall = false;
        forInTryNote(&ft, &lctx, call, exhaustedT);
        call->isTried = true;
        nextCall = call;
        struct statement d = buildVarDeclFromOperand(&lctx, elemTok, call);
        ListAdd(&body, &d);
        if (idxTok) { struct statement di = buildVarDeclFromOperand(&lctx, *idxTok, OperandReadVar(counter, kw)); ListAdd(&body, &di); }
    }
    struct list user = forInBody(&lctx, s, spec, kw);
    for (int i = 0; i < user.len; i++) ListAdd(&body, ListGetIdx(&user, i));
    loop.block = body;
    forInTryFinish(&ft);
    if (nextCall && nextCall->opType == OPERATION_FUNCCALL) {
        //S9a: running out ends the loop - Next's Exhausted taken first, by a clause of the loop's own
        struct catchClause end = (struct catchClause){0};
        end.tok = kw;
        end.matches = ListInit(sizeof(struct catchMatch));
        struct catchMatch em = (struct catchMatch){0};
        em.errType = *exhaustedT;
        ListAdd(&end.matches, &em);
        end.hasBlock = true;
        end.block = ListInit(sizeof(struct statement));
        struct statement brk = (struct statement){0};
        brk.sType = STATEMENT_BREAK;
        ListAdd(&end.block, &brk);
        struct list cs = ListInit(sizeof(struct catchClause));
        ListAdd(&cs, &end);
        for (int i = 0; i < nextCall->catchClauses.len; i++) ListAdd(&cs, ListGetIdx(&nextCall->catchClauses, i));
        nextCall->catchClauses = cs;
    }
    struct list after = snapshotScopeBindings(lctx.scope);
    foldScopeBindingsBranch(&baseline, &after);
    applyScopeBindingsSnapshot(&baseline);
    loop.line = kw.lineNr;
    if (kw.owner) loop.file = TokenGetFileName(kw.owner);
    ListAdd(&pre, &loop);

    struct token t = kw;
    t.type = TOK_BOOL_LIT;
    t.str = StrFromCStr("true");
    struct statement wrap = (struct statement){0};
    wrap.sType = STATEMENT_IF;
    wrap.op = OperandBoolLiteral(t);
    wrap.block = pre;
    if (ft.on && ft.calls.len && firstPartOfType(s, SNTX_CATCH_CLAUSE)) {
        //S9e: the block runs once, as a loop, so a clause's "break" ends it whether the call was ahead of the loop
        //or inside it - the inner loop's own end then reaches this one's
        struct statement brk = (struct statement){0};
        brk.sType = STATEMENT_BREAK;
        ListAdd(&wrap.block, &brk);
        wrap.sType = STATEMENT_FOR;
        wrap.op = NULL;
    }
    return wrap;
}

struct statement buildForStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct scope inner = scopePush(ctx->scope);
    struct checkCtx innerCtx = *ctx;
    innerCtx.scope = &inner;

    struct syntax* initNode = firstPartOfType(s, SNTX_FOR_INIT);
    if (!initNode) return buildForBareStmnt(&innerCtx, s); //S9: "for { }" or "for cond { }"
    struct token nameTok = firstTokOfType(initNode, TOK_IDEN);
    bool mut = true; //D11: a local is always mutable
    if (hasTokOfType(initNode, TOK_MUT)) ErrMsgSemantic(firstTokOfType(initNode, TOK_MUT), MUT_ON_LOCAL); //D11a
    struct operand* initVal = buildExprFromSyntax(&innerCtx, firstPartOfType(initNode, SNTX_EXPR));

    struct syntax* typeExprNode = firstPartOfType(initNode, SNTX_TYPE_EXPR);
    struct type declType;
    if (typeExprNode) {
        scopeTagBody = &innerCtx; //O4a
        declType = resolveTypeExpr(ctx->mod, typeExprNode, ctx->func ? &ctx->func->type.scopeVars : NULL);
        scopeTagBody = NULL;
        bareLocalLivesInBlock(&innerCtx, &declType);
        if (TypeIsPermRef(declType)) declType.refMut = OperandGivesWritable(initVal); //T25b
        if (declType.scopeParam || declType.scopeWritten) landCall(initVal, declType.scopeParam, declType.scopeWritten ? declType.scopeDepth : 0);
        reportTypeFit(OperandFitsType(ctx->func, initVal, declType), initVal->tok);
    } else { // ":=" - type read straight off the (required-to-be-literal) initializer
        declType = inferredDeclType(ctx->func, initVal);
        declType.scopeParam = NULL; //as in buildVarDeclStmnt's ":="
    }
    bool loopUnnamed = false;
    if (!adoptInitializerScope(&innerCtx, &declType, initVal, &loopUnnamed)) declType.scopeDepth = innerCtx.blockDepth;
    struct var* loopVar = scopeDeclare(innerCtx.mod, innerCtx.scope, strFromTok(nameTok), nameTok, declType, mut);
    loopVar->scopeUnnamed = loopUnnamed;
    loopVar->scopeBindings = initVal->scopeBindings; //see buildVarDeclStmnt's identical propagation

    struct list exprs = allPartsOfType(s, SNTX_EXPR);
    struct operand* cond = buildExprFromSyntax(&innerCtx, *(struct syntax**)ListGetIdx(&exprs, 0));
    if (!OperandIsBool(cond)) ErrMsgSemantic(cond->tok, OPERATION_REQUIRES_BOOL);
    struct syntax* postNode = firstPartOfType(s, SNTX_STMNT_ASSIGN);
    if (!postNode) postNode = firstPartOfType(s, SNTX_STMNT_EXPR);

    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_FOR;
    stmt.var = *loopVar;
    stmt.op = cond;
    stmt.forInit = initVal;
    //a var reassigned inside a loop body can, in general, end up different across different iterations -
    //this checker only ever walks the body once (no fixpoint iteration), so rather than trust whatever
    //that single walk happened to leave behind, ANY reassignment observed during it kills that var's own
    //tracked binding outright (reusing foldScopeBindingsBranch against its own unchanged starting point -
    //see the flow-sensitive scope-binding tracking block above). Safe and conservative, never unsound.
    struct list baseline = snapshotScopeBindings(innerCtx.scope);
    innerCtx.inLoop = true; //S11
    stmt.block = buildBlock(&innerCtx, firstPartOfType(s, SNTX_BLOCK));
    //the post clause runs after the body, so it is checked after it - which also puts a reassignment it
    //makes ("c = c.next") inside the window the binding snapshot below treats as the loop's own
    stmt.forPost = MallocOrCrash(sizeof(struct statement));
    *stmt.forPost = postNode->type == SNTX_STMNT_ASSIGN ? buildAssignStmnt(&innerCtx, postNode)
                                                       : buildExprStmnt(&innerCtx, postNode);
    struct list after = snapshotScopeBindings(innerCtx.scope);
    foldScopeBindingsBranch(&baseline, &after);
    applyScopeBindingsSnapshot(&baseline);
    return stmt;
}

struct statement buildDoStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_DO;
    //same "any reassignment kills it" treatment as buildForStmnt above, same reasoning.
    struct list baseline = snapshotScopeBindings(ctx->scope);
    struct checkCtx loopCtx = *ctx;
    loopCtx.inLoop = true; //S11
    stmt.block = buildBlock(&loopCtx, firstPartOfType(s, SNTX_BLOCK));
    struct list after = snapshotScopeBindings(ctx->scope);
    foldScopeBindingsBranch(&baseline, &after);
    applyScopeBindingsSnapshot(&baseline);
    stmt.op = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
    if (!OperandIsBool(stmt.op)) ErrMsgSemantic(stmt.op->tok, OPERATION_REQUIRES_BOOL);
    return stmt;
}

// ---- S12-S14: match ----
//
//A value match is lowered to tests the checker builds from operands the program could nearly have written: each
//case alternative is a Bool over the matched value - held once (S13) - asking "x is E.C" of each enum position and
//"x == v" of each value position, with every payload field read through "x as E.C" (E32) once its case is known.
//Codegen and the evaluator run those operands, so a pattern means the same thing in both with no pattern logic of
//their own; what is left to them is the order: alternatives, then that alternative's bindings, then the guard.

//S13: a case value fits the value it is compared with as "==" would compare them - the same type, a literal adapting
//to it (T6) - a literal-only expression too (E4a) - written text against text (T29c), null against a reference (T2a)
static bool caseValueFits(struct checkCtx* ctx, struct operand* val, struct type t) {
    if (val->type.unknown || t.unknown) return true;
    if (val->isNullLiteral) return TypeIsNullable(t);
    if (operandIsLiteralLike(val) && !val->type.owner && TypeIsNumeric(val->type) && TypeIsNumeric(t)) { //E4a too
        return OperandFitsType(ctx->func, val, typeBare(t)) == TYPE_FIT_OK;
    }
    struct type mb = t, vb = val->type;
    mb.structMAlloc = vb.structMAlloc = mb.refMut = vb.refMut = false;
    bool viaEq = t.bType != BASETYPE_CHOICE && eqConsults(ctx, t, 0)
                 && (TypeIsSame(vb, mb) || (OperandIsWrittenText(val) && TypeIsByteArray(mb)));
    return viaEq || TypeIsSame(val->type, t);
}

//a fresh copy of a pattern path - a read of the held value, "as" and member reads over it - so no operand is shared
//between the places that evaluate it
static struct operand* patPath(struct operand* at) {
    struct operand* c = MallocOrCrash(sizeof(struct operand));
    *c = *at;
    if (at->opType == OPERATION_AS || at->opType == OPERATION_MEMBER) {
        c->args = ListInit(sizeof(struct operand*));
        struct operand* base = patPath(*(struct operand**)ListGetIdx(&at->args, 0));
        ListAdd(&c->args, &base);
    }
    return c;
}

static struct operand* patAnd(struct operand* acc, struct operand* t, struct token tok) {
    return acc ? OperandBinary(acc, t, OPERATION_AND, tok) : t;
}

static struct var* caseBindingNamed(struct statement* clause, struct str name) {
    for (int i = 0; i < clause->caseBindings.len; i++) {
        struct var* v = *(struct var**)ListGetIdx(&clause->caseBindings, i);
        if (v && StrCmp(v->name, name)) return v;
    }
    return NULL;
}

//S13b: one name in a payload pattern. The first alternative declares the clause's local; every later one must bind
//the same names, each with the same type (S13c), and fills those. A reference keeps no scope variable of the case's
//signature (O4b), which means nothing here: where it lives is the matched value's business, which the clause cannot
//name - so the binding reads, walks and passes it on, and nothing is built into it (as through a borrowed field, C2d)
static void patBind(struct checkCtx* ctx, struct token tok, struct operand* at, struct type t, struct statement* clause,
                    struct caseAlt* alt, int altIdx, struct list* bound) {
    struct str name = strFromTok(tok);
    if (StrCmp(name, StrFromCStr("_"))) return;
    bool refLike = t.structMAlloc || (t.bType == BASETYPE_ARRAY && t.arrMalloc);
    bool unnamed = true;
    if (refLike) {
        //T17c/O5: it lives where the payload's reference does - exactly the enum's own scope when the enum is held by
        //reference, so a tree of them can be walked and passed on (payloadExactScope)
        struct var* sv = NULL;
        int sd = 0;
        if (!at || !ctx->hasOwnScope || !RefExactScope(ctx, at, true, &sv, &sd, &unnamed) || sv == SCOPE_AMBIGUOUS)
            unnamed = true;
        t.scopeParam = unnamed ? NULL : sv;
        t.scopeWritten = false;
        t.scopeDepth = unnamed || sv ? 0 : sd;
    }
    struct var* v = NULL;
    if (altIdx == 0) {
        v = scopeDeclare(ctx->mod, ctx->scope, name, tok, t, false);
        if (!v) return;
        v->mayBeInitialized = true;
        if (refLike && unnamed) v->scopeUnnamed = true;
        ListAdd(&clause->caseBindings, &v);
    } else {
        v = caseBindingNamed(clause, name);
        //a name reported here still counts as bound, so the one mistake is one error and not a second at the alternative
        if (!v) { ErrMsgSemantic(tok, CASE_ALT_BINDINGS); ListAdd(bound, &v); return; }
        for (int i = 0; i < bound->len; i++) {
            if (*(struct var**)ListGetIdx(bound, i) == v) { ErrMsgSemantic(tok, VAR_NAME_IN_USE); return; }
        }
        if (!t.unknown && !v->type.unknown && !TypeIsSame(v->type, t)) { ErrMsgSemantic(tok, CASE_ALT_BINDING_TYPE); ListAdd(bound, &v); return; }
    }
    ListAdd(bound, &v);
    if (!at) return;
    struct caseBind b = { v, at };
    ListAdd(&alt->binds, &b);
}

//S13b/S13d: a pattern at one position - "at" reads the value there (NULL once an error above made it unreadable, so
//the names below are still declared and the clause's block still checks), t its type. Its tests are added to *test.
//Returns whether the position matches whatever is there - nothing below it but names and "_".
static bool buildPatternAt(struct checkCtx* ctx, struct syntax* p, struct operand* at, struct type t,
                           struct statement* clause, struct caseAlt* alt, int altIdx, struct list* bound,
                           struct operand** test) {
    if (p->type == SNTX_PAT_BIND) {
        patBind(ctx, firstTokOfType(p, TOK_IDEN), at, t, clause, alt, altIdx, bound);
        return true;
    }
    if (p->type == SNTX_PAT_VALUE) {
        struct operand* val = buildExprFromSyntax(ctx, firstPartOfType(p, SNTX_EXPR));
        if (!caseValueFits(ctx, val, t)) { ErrMsgSemantic(val->tok, MATCH_CASE_TYPE_MISMATCH); return false; }
        if (at) *test = patAnd(*test, buildEquality(ctx, at, val, val->tok), val->tok);
        return false;
    }
    //SNTX_CASE_PATTERN: "[alias.]Type.Case [(sub, ...)]"
    struct list idens = allTokOfType(firstPartOfType(p, SNTX_NAME), TOK_IDEN);
    struct token caseTok = *(struct token*)ListGetIdx(&idens, idens.len - 1);
    struct token typeTok = *(struct token*)ListGetIdx(&idens, idens.len - 2);
    struct list subs = ListInit(sizeof(struct syntax*));
    for (int i = 0; i < p->parts.len; i++) {
        struct syntaxPart* part = partAt(p, i);
        if (!part->isToken && part->sntx->type != SNTX_NAME) ListAdd(&subs, &part->sntx);
    }
    bool hasList = hasTokOfType(p, TOK_PAREN_O);
    struct var* c = NULL;
    int tag = -1;
    if (at && !t.unknown) {
        if (t.bType != BASETYPE_CHOICE || !StrCmp(strFromTok(typeTok), t.name)) ErrMsgSemantic(typeTok, PATTERN_TYPE_MISMATCH);
        else {
            for (int i = 0; i < t.vars.len && !c; i++) {
                struct var* v = ListGetIdx(&t.vars, i);
                if (StrCmp(v->name, strFromTok(caseTok))) { c = v; tag = i; }
            }
            if (!c) ErrMsgSemantic(caseTok, UNKNOWN_CHOICE_CASE);
            else if (hasList && subs.len != c->type.vars.len) { ErrMsgSemantic(caseTok, CHOICE_PATTERN_ARITY); c = NULL; }
        }
    }
    if (c) *test = patAnd(*test, enumIsAs(at, tag, false, caseTok), caseTok);
    bool irrefutable = true;
    for (int k = 0; k < subs.len; k++) {
        struct syntax* sub = *(struct syntax**)ListGetIdx(&subs, k);
        struct operand* subAt = NULL;
        struct type ft = unknownTypeStandIn();
        if (c) {
            ft = ((struct var*)ListGetIdx(&c->type.vars, k))->type;
            subAt = enumIsAs(patPath(at), tag, true, caseTok);
            subAt->noCheck = true; //its case was just tested
            if (c->type.vars.len > 1) {
                char* fn = MallocOrCrash(16);
                snprintf(fn, 16, "%d", k);
                subAt = OperandMember(NULL, subAt, StrFromCStr(fn), caseTok);
            }
        }
        if (!buildPatternAt(ctx, sub, subAt, ft, clause, alt, altIdx, bound, test)) irrefutable = false;
    }
    if (alt && at && c && at->opType == OPERATION_READ_VAR && irrefutable) alt->coversTag = tag;
    return false; //a case is one of several
}

//S12b: a case's or nomatch's body - its block, or in a match used as a value its "=> v" (a block there must leave,
//as a catch clause's in value position does, R9b)
static bool blockLeavesValue(struct list* block);
static void buildCaseBody(struct checkCtx* ctx, struct syntax* s, bool asValue, struct list* block, struct operand** value) {
    struct syntax* valueNode = firstPartOfType(s, SNTX_CASE_VALUE);
    if (valueNode) {
        if (!asValue) ErrMsgSemantic(firstTokOfType(valueNode, TOK_ARROW), MATCH_ARROW_IN_STATEMENT);
        *value = buildExprFromSyntax(ctx, firstPartOfType(valueNode, SNTX_EXPR));
        *block = ListInit(sizeof(struct statement));
        return;
    }
    struct syntax* b = firstPartOfType(s, SNTX_BLOCK);
    *block = buildBlock(ctx, b);
    if (asValue && !blockLeavesValue(block)) ErrMsgSemantic(firstTokAnywhere(b), MATCH_VALUE_BLOCK_STAYS);
}

//S13-S13e: "case alt {, alt} [if guard] body". The clause's bindings live in a scope of its own, visible to the
//guard and the body and nowhere else
struct statement buildCaseStmnt(struct checkCtx* ctx, struct syntax* s, struct operand* subject, bool asValue) {
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_CASE;
    stmt.caseAlts = ListInit(sizeof(struct caseAlt));
    stmt.caseBindings = ListInit(sizeof(struct var*));
    struct scope armScope = scopePush(ctx->scope);
    struct scope* saved = ctx->scope;
    ctx->scope = &armScope;
    int altIdx = 0;
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* part = partAt(s, i);
        if (part->isToken || (part->sntx->type != SNTX_CASE_PATTERN && part->sntx->type != SNTX_EXPR)) continue;
        struct caseAlt alt = (struct caseAlt){0};
        alt.binds = ListInit(sizeof(struct caseBind));
        alt.coversTag = -1;
        struct list bound = ListInit(sizeof(struct var*));
        struct token altTok = firstTokAnywhere(part->sntx);
        if (part->sntx->type == SNTX_CASE_PATTERN) {
            buildPatternAt(ctx, part->sntx, subject ? patPath(subject) : NULL,
                           subject ? subject->type : unknownTypeStandIn(), &stmt, &alt, altIdx, &bound, &alt.test);
        } else {
            struct operand* val = buildExprFromSyntax(ctx, part->sntx);
            if (subject && !caseValueFits(ctx, val, subject->type)) ErrMsgSemantic(val->tok, MATCH_CASE_TYPE_MISMATCH);
            else if (subject) alt.test = buildEquality(ctx, patPath(subject), val, val->tok);
        }
        //S13c: a later alternative binds every name the first one did
        if (altIdx > 0 && bound.len != stmt.caseBindings.len) ErrMsgSemantic(altTok, CASE_ALT_BINDINGS);
        if (!alt.test) { alt.test = OperandBoolLiteral(altTok); alt.test->intLiteralVal = 0; alt.coversTag = -1; }
        ListAdd(&stmt.caseAlts, &alt);
        altIdx++;
    }
    struct syntax* guard = firstPartOfType(s, SNTX_CASE_GUARD);
    if (guard) {
        stmt.caseGuard = buildExprFromSyntax(ctx, firstPartOfType(guard, SNTX_EXPR));
        if (!OperandIsBool(stmt.caseGuard)) ErrMsgSemantic(stmt.caseGuard->tok, CASE_GUARD_NOT_BOOL);
    }
    buildCaseBody(ctx, s, asValue, &stmt.block, &stmt.op);
    ctx->scope = saved;
    return stmt;
}

//the selected arm is spliced in as an "if true { ... }" with no else: there is nothing to branch on at
//run time (the selection already happened), and an always-true condition costs nothing once LLVM folds
//it. Cheaper than adding a STATEMENT_BLOCK kind that codegen would have to learn.
struct operand* typeMatchAlwaysTrue(struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_BOOL));
    op->isLiteral = true;
    op->intLiteralVal = 1;
    return op;
}

//an "if true { }" with an empty body - the shape a type match collapses to when nothing was selected
//and a diagnostic was already reported, so the rest of the body still gets checked
struct statement buildEmptyIfStmnt(struct checkCtx* ctx, struct token tok) {
    (void)ctx;
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_IF;
    stmt.op = typeMatchAlwaysTrue(tok);
    stmt.block = ListInit(sizeof(struct statement));
    return stmt;
}

//G13-G15: "match <T> { case int32 { ... } ... }". Resolved when the enclosing generic is instantiated,
//not at run time - there is no comparison and no branch in the generated code, only the selected arm's
//statements. G14 needs no separate mechanism: the operand's type variable already resolves to the bound
//type inside an instantiation (see currentBindings), so a value declared with that variable's type IS a
//value of the concrete type throughout the selected block. Unselected arms are never built at all, which
//is what lets each of them be valid for only its own type.
//Unlike a value match (S13) this is exhaustiveness-checked (G15): falling through silently would compile
//a generic that does nothing for some of its instantiations.
//S12b: a type match used as a value is a match of one case that always holds - the selected arm's
static struct statement typeMatchValueArm(struct checkCtx* ctx, struct syntax* arm, struct token tok) {
    struct statement m = (struct statement){0};
    m.sType = STATEMENT_MATCH;
    m.matchHold = ListInit(sizeof(struct statement));
    m.matchCases = ListInit(sizeof(struct statement));
    if (!arm) return m;
    struct statement c = (struct statement){0};
    c.sType = STATEMENT_CASE;
    c.caseAlts = ListInit(sizeof(struct caseAlt));
    c.caseBindings = ListInit(sizeof(struct var*));
    struct caseAlt a = (struct caseAlt){0};
    a.binds = ListInit(sizeof(struct caseBind));
    a.coversTag = -1;
    a.test = typeMatchAlwaysTrue(tok);
    ListAdd(&c.caseAlts, &a);
    buildCaseBody(ctx, arm, true, &c.block, &c.op);
    ListAdd(&m.matchCases, &c);
    return m;
}

struct statement buildTypeMatchStmnt(struct checkCtx* ctx, struct syntax* s, struct syntax* varNode, bool asValue) {
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_MATCH;
    struct token opTok = firstTokAnywhere(varNode);
    //the operand is a bare SNTX_TYPE_VAR, not wrapped in a SNTX_TYPE_EXPR, so it is resolved directly
    //against the instantiation's own bindings rather than through the general type-expression path
    struct str vname = strFromTok(firstTokOfType(varNode, TOK_IDEN));
    struct type* bound = currentBindings ? bindingGet(currentBindings, vname) : NULL;
    if (!bound) { ErrMsgSemantic(opTok, UNKNOWN_TYPE_VAR); return buildEmptyIfStmnt(ctx, opTok); }
    struct type operandT = *bound;

    struct list cases = allPartsOfType(s, SNTX_STMNT_CASE);
    for (int i = 0; i < cases.len; i++) {
        struct syntax* c = *(struct syntax**)ListGetIdx(&cases, i);
        //S13e: the arm is chosen while compiling, so there is nothing at run time for a guard to decide
        struct syntax* guard = firstPartOfType(c, SNTX_CASE_GUARD);
        if (guard) ErrMsgSemantic(firstTokOfType(guard, TOK_IF), TYPE_MATCH_GUARD);
        //S13c: "case I32, I64 { }" - any one of the types selects the arm
        struct list caseTypeNodes = allPartsOfType(c, SNTX_TYPE_EXPR);
        bool hit = false;
        for (int k = 0; k < caseTypeNodes.len && !hit; k++) {
            struct type caseT = resolveTypeExpr(ctx->mod, *(struct syntax**)ListGetIdx(&caseTypeNodes, k),
                                                ctx->func ? &ctx->func->type.scopeVars : NULL);
            hit = TypeIsSame(operandT, caseT);
        }
        if (!hit) continue;
        if (asValue) return typeMatchValueArm(ctx, c, opTok);
        //selected: this arm's block IS the statement, spliced in place of the match itself
        stmt.sType = STATEMENT_IF;
        stmt.op = typeMatchAlwaysTrue(opTok);
        struct operand* none = NULL;
        buildCaseBody(ctx, c, false, &stmt.block, &none);
        return stmt;
    }
    struct syntax* nomatchNode = firstPartOfType(s, SNTX_STMNT_NOMATCH);
    if (nomatchNode) {
        if (asValue) return typeMatchValueArm(ctx, nomatchNode, opTok);
        stmt.sType = STATEMENT_IF;
        stmt.op = typeMatchAlwaysTrue(opTok);
        struct operand* none = NULL;
        buildCaseBody(ctx, nomatchNode, false, &stmt.block, &none);
        return stmt;
    }
    ErrMsgSemantic(opTok, TYPE_MATCH_NOT_EXHAUSTIVE);
    if (asValue) return typeMatchValueArm(ctx, NULL, opTok);
    return buildEmptyIfStmnt(ctx, opTok);
}

static struct list allTokOfTypeDeep(struct syntax* s, enum tokenType t);
struct operand* typeMatchAlwaysTrue(struct token tok);

//S12-S14, and S12b when asValue: a match used as a value builds the same statement, its cases giving values
static struct statement buildMatchCore(struct checkCtx* ctx, struct syntax* s, bool asValue);
struct statement buildMatchStmnt(struct checkCtx* ctx, struct syntax* s) { return buildMatchCore(ctx, s, false); }

//S12b: one type for every value a match gives - a literal, written text or null adapting to the others' (E28)
static bool condAdapts(struct operand* op);
static struct type matchValueType(struct checkCtx* ctx, struct list* vals) {
    if (!vals->len) return unknownTypeStandIn();
    struct operand* anchor = NULL;
    for (int pass = 0; pass < 3 && !anchor; pass++) {
        for (int i = 0; i < vals->len && !anchor; i++) {
            struct operand* v = *(struct operand**)ListGetIdx(vals, i);
            if (v->pendingLambda) continue;
            if (pass == 0 && condAdapts(v)) continue;
            if (pass == 1 && v->isLiteral) continue; //of adaptable ones, a literal gives way to text built here
            anchor = v;
        }
    }
    if (!anchor) {
        anchor = *(struct operand**)ListGetIdx(vals, 0);
        FinalizeLambda(anchor, NULL);
    }
    struct type t = anchor->type;
    //text written in each case is a String (T29c), whatever its length - two literals of two lengths are two array types
    struct type* textT = SemanticBuiltinType(StrFromCStr("String"));
    bool allText = textT != NULL;
    for (int i = 0; allText && i < vals->len; i++) allText = OperandIsWrittenText(*(struct operand**)ListGetIdx(vals, i));
    if (allText) t = *textT;
    bool numLits = true;
    for (int i = 0; i < vals->len; i++) {
        struct operand* v = *(struct operand**)ListGetIdx(vals, i);
        if (!(v->isLiteral && TypeIsNumeric(v->type))) numLits = false;
    }
    for (int i = 0; numLits && i < vals->len; i++) { //only literals: the widest, as two literals in "a if c else b"
        struct type vt = (*(struct operand**)ListGetIdx(vals, i))->type;
        if (numericTypeRank(vt) > numericTypeRank(t)) t = vt;
    }
    bool bad = false;
    for (int i = 0; i < vals->len; i++) {
        struct operand* v = *(struct operand**)ListGetIdx(vals, i);
        FinalizeLambda(v, &t);
        if (v->type.unknown || t.unknown || TypeIsSame(v->type, t)) continue;
        if ((condAdapts(v) || numLits || allText) && OperandFitsType(ctx->func, v, t) == TYPE_FIT_OK) continue;
        ErrMsgSemantic(v->tok, MATCH_VALUE_TYPES);
        bad = true;
    }
    return bad ? unknownTypeStandIn() : t; //reported - what it lands in is not asked again
}

//S12b: "match x { case P => v ... }" - a match used as a value
struct operand* buildMatchExpr(struct checkCtx* ctx, struct syntax* s) {
    struct statement m = buildMatchCore(ctx, s, true);
    struct operand* op = operandNew(firstTokOfType(s, TOK_MATCH), OPERATION_MATCH, TypeVanilla(BASETYPE_VOID));
    op->comprBody = ListInit(sizeof(struct statement));
    ListAdd(&op->comprBody, &m);
    struct list vals = SemanticMatchValues(op);
    op->type = matchValueType(ctx, &vals);
    return op;
}

static struct statement buildMatchCore(struct checkCtx* ctx, struct syntax* s, bool asValue) {
    struct syntax* varNode = firstPartOfType(s, SNTX_TYPE_VAR);
    if (varNode) return buildTypeMatchStmnt(ctx, s, varNode, asValue);
    struct operand* matched = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_MATCH;
    stmt.matchHold = ListInit(sizeof(struct statement));
    //S13: the matched value is evaluated once - held in a hidden local the tests then read, unless it is a local
    //already, which nothing between two tests can change: a guard or a case value is an expression, so it writes a
    //local only by lending it to a "mut &" parameter, which only a struct or an array can be (E12c). The local is in
    //a scope of the match's own and needs no block - no arena, no cost when nothing is held.
    struct scope holdScope = scopePush(ctx->scope);
    struct checkCtx hctx = *ctx;
    hctx.scope = &holdScope;
    ctx = &hctx;
    bool local = matched->opType == OPERATION_READ_VAR && matched->readVar && !matched->readVar->owner;
    bool lendable = !matched->type.structMAlloc
                    && (matched->type.bType == BASETYPE_STRUCT || matched->type.bType == BASETYPE_ARRAY);
    if (!(local && !lendable) && !matched->type.unknown && matched->type.bType != BASETYPE_VOID) {
        matched = OperandReadVar(holdInHidden(ctx, matched, matched->tok, "match", &stmt.matchHold), matched->tok);
    }
    stmt.op = matched;

    //N-way version of the same fold buildIfStmnt does for two branches - see the flow-sensitive scope-
    //binding tracking block above. baseline is the reset point before each case; merged accumulates the
    //running fold (an independent snapshot, not aliased to baseline - folding into it must never disturb
    //the reset point the next case is about to be checked against).
    struct list baseline = snapshotScopeBindings(ctx->scope);
    struct list merged = snapshotScopeBindings(ctx->scope);

    stmt.matchCases = ListInit(sizeof(struct statement));
    struct list cases = allPartsOfType(s, SNTX_STMNT_CASE);
    for (int i = 0; i < cases.len; i++) {
        struct syntax* c = *(struct syntax**)ListGetIdx(&cases, i);
        struct statement caseStmt = buildCaseStmnt(ctx, c, matched->type.bType == BASETYPE_VOID ? NULL : matched, asValue);
        ListAdd(&stmt.matchCases, &caseStmt);
        struct list afterCase = snapshotScopeBindings(ctx->scope);
        foldScopeBindingsBranch(&merged, &afterCase);
        applyScopeBindingsSnapshot(&baseline);
    }

    struct syntax* nomatchNode = firstPartOfType(s, SNTX_STMNT_NOMATCH);
    if (nomatchNode) {
        stmt.hasNomatch = true;
        buildCaseBody(ctx, nomatchNode, asValue, &stmt.nomatchBlock, &stmt.nomatchValue);
        struct list afterNomatch = snapshotScopeBindings(ctx->scope);
        foldScopeBindingsBranch(&merged, &afterNomatch);
        applyScopeBindingsSnapshot(&baseline);
    }
    //S13a: a match over an enum type must cover every case, or say it does not with "nomatch". This is the one type
    //where exhaustiveness is decidable and worth deciding: the set of cases is closed and written in one declaration,
    //so the compiler can read it - unlike an integer, whose "cases" are not enumerable in any useful sense. It is what
    //makes adding a case to an enum tell you every place that now has to handle it, which is most of the reason to
    //declare one. A case covers what it matches whatever the payload holds, and only when it has no guard (S13e):
    //a nested pattern, a value in the payload or a guard may let the value through to the next case.
    if (matched->type.bType == BASETYPE_CHOICE && !stmt.hasNomatch) {
        for (int i = 0; i < matched->type.vars.len; i++) {
            bool covered = false;
            for (int j = 0; j < stmt.matchCases.len && !covered; j++) {
                struct statement* cs = ListGetIdx(&stmt.matchCases, j);
                for (int k = 0; !cs->caseGuard && k < cs->caseAlts.len && !covered; k++) {
                    covered = ((struct caseAlt*)ListGetIdx(&cs->caseAlts, k))->coversTag == i;
                }
            }
            if (!covered) { ErrMsgSemantic(matched->tok, MATCH_NOT_EXHAUSTIVE); break; }
        }
    }
    //S12b: a match used as a value gives one on every path - only an enum's cases can be known to be covered
    if (asValue && !stmt.hasNomatch && matched->type.bType != BASETYPE_CHOICE && !matched->type.unknown) {
        ErrMsgSemantic(firstTokOfType(s, TOK_MATCH), MATCH_VALUE_NEEDS_NOMATCH);
    }
    //beyond that, this checker doesn't attempt exhaustiveness analysis, so "no case matched" is always
    //folded in as a live possibility (via merged's own initial "unchanged" value) - conservative, never
    //unsound, matching the same "no else" treatment buildIfStmnt gives a bare "if" with nothing to run.
    applyScopeBindingsSnapshot(&merged);
    return stmt;
}

//O13, generalised past a tag written in the return type itself: a returned value whose TYPE declares scope
//variables (a choice with a tagged payload, a constructor-bearing struct with a tagged field) carries
//whatever those were bound to where it was built. If one of them was bound to THIS function's own scope,
//the value hands a reference to storage that dies at the return - the same escape O13 rejects when the
//tag is written on the return type, arriving instead through a binding the signature never mentions.
//Only an explicitly recorded binding is judged. A returned value with no map - a parameter passed
//straight back out - says nothing about its own scopes here, and its bindings belong to whoever built it;
//treating "no entry" as "own" would reject every pass-through function. That leaves a known gap rather
//than a silent claim: see the report.
void checkBoundScopesOutlive(struct operand* val, struct type t, struct token tok, char* msg) {
    for (int i = 0; i < t.scopeVars.len; i++) {
        struct var* sv = canonicalVar(*(struct var**)ListGetIdx(&t.scopeVars, i));
        for (int j = 0; j < val->scopeBindings.len; j++) {
            struct scopeBinding* b = ListGetIdx(&val->scopeBindings, j);
            if (canonicalVar(b->typeParam) != sv) continue;
            //NULL means "this function's own scope", which dies here. A meet with no single name keeps its
            //candidates instead (O13b), and the question distributes over them: the merged value outlives
            //the target exactly when every candidate does. Only a candidate list that is empty - nothing
            //was traced at all - is unverifiable.
            if (b->boundTo == SCOPE_AMBIGUOUS) {
                if (b->candidates.len == 0) ErrMsgSemantic(tok, msg);
                for (int k = 0; k < b->candidates.len; k++) {
                    if (*(struct var**)ListGetIdx(&b->candidates, k) == NULL) ErrMsgSemantic(tok, msg);
                }
            } else if (b->boundTo == NULL) ErrMsgSemantic(tok, msg);
            break;
        }
    }
}

void checkReturnedScopeBindings(struct operand* val, struct type retType, struct token tok) {
    checkBoundScopesOutlive(val, retType, tok, RETURNED_VALUE_BOUND_TO_OWN);
}

//O14: a built result is in the result scope, so a reference into a parameter's data cannot be one - it is a
//borrowed result, and the error says how to write that. True when it reported.
static bool checkBuiltResult(struct checkCtx* ctx, struct operand* v, struct type et) {
    struct var* rs = ctx->func ? ctx->func->type.resultScope : NULL;
    if (!rs || !et.structMAlloc || canonicalVar(et.scopeParam) != canonicalVar(rs)) return false;
    bool asRef = v->type.structMAlloc;
    struct var* sv;
    int sd;
    bool un;
    if (!(asRef || OperandIsLvalue(v)) || !RefExactScope(ctx, v, asRef, &sv, &sd, &un)) return false;
    if (un || !sv || sv == SCOPE_AMBIGUOUS || canonicalVar(sv) == canonicalVar(rs)) return false;
    if (!varIsOwnParam(canonicalVar(sv), ctx->func)) return false;
    //O14a: a function value is never written through (D16d), so returning one from a parameter needs no borrowed
    //form - only that the parameter's value outlives where the result lands, which every call then checks (O10b)
    if (et.bType == BASETYPE_FUNC) {
        scopeObligationAdd(ctx->func, canonicalVar(sv), canonicalVar(rs));
        return false;
    }
    //O14b: nor has a result written as a type variable a borrowed form to write - "<T>&l" names a reference to what T
    //is. So it returns existing storage by obligation: the storage outlives where the result lands, exactly where
    //something can be stored through it (O25g), and every call checks that once the result has landed
    if (ctx->func->type.resultViaTypeVar) {
        scopeObligationAdd(ctx->func, canonicalVar(sv), canonicalVar(rs));
        if (RefNarrowingMatters(et)) scopeObligationAdd(ctx->func, canonicalVar(rs), canonicalVar(sv));
        return false;
    }
    ErrMsgSemantic(v->tok, RETURN_BORROW_AS_BUILT);
    return true;
}

//O14b: a type-variable result returning storage in one of this function's scopes has been made equal to the result
//scope by obligation (checkBuiltResult) - each call then lands the result there, so the scope is not narrowed
static bool typeVarResultObliged(struct checkCtx* ctx, struct var* rv, bool ru) {
    return ctx->func && ctx->func->type.resultViaTypeVar && !ru && rv && rv != SCOPE_AMBIGUOUS
           && varIsOwnParam(canonicalVar(rv), ctx->func);
}

struct statement buildRetStmnt(struct checkCtx* ctx, struct syntax* s) {
    if (ctx->inDefer) { //S19b: what it would return is beside the point - it may not leave at all
        ErrMsgSemantic(firstTokOfType(s, TOK_RET), DEFER_RETURNS);
        return (struct statement){.sType = STATEMENT_RET};
    }
    struct list exprNodes = allPartsOfType(s, SNTX_EXPR);
    struct syntax* exprNode = exprNodes.len > 0 ? *(struct syntax**)ListGetIdx(&exprNodes, 0) : NULL;
    struct operand* val = exprNode ? buildExprFromSyntax(ctx, exprNode) : NULL;
    struct token tok = firstTokOfType(s, TOK_RET);
    //D8c: "return a, b" builds the function's several results - as the struct literal of its result tuple,
    //so each value is fit-checked against its own result type exactly as a field is. "return f()" of a call
    //returning the same results passes them on whole.
    if (exprNodes.len > 1) {
        struct list vals = ListInit(sizeof(struct operand*));
        ListAdd(&vals, &val);
        for (int i = 1; i < exprNodes.len; i++) {
            struct operand* v = buildExprFromSyntax(ctx, *(struct syntax**)ListGetIdx(&exprNodes, i));
            ListAdd(&vals, &v);
        }
        lambdaInferResult(ctx->func, &vals, tok); //D16b
        struct type rt = ctx->func && ctx->func->type.hasRetType ? *ctx->func->type.retType : TypeVanilla(BASETYPE_VOID);
        if (!rt.isTuple || rt.vars.len != vals.len) {
            ErrMsgSemantic(tok, RETURN_COUNT_MISMATCH);
        } else {
            for (int i = 0; i < vals.len; i++) {
                struct operand* v = *(struct operand**)ListGetIdx(&vals, i);
                if (v->type.isTuple) ErrMsgSemantic(v->tok, TUPLE_NOT_A_VALUE);
                //O25d, per result
                struct type et = (*(struct var*)ListGetIdx(&rt.vars, i)).type;
                //O18a: each result lands where it lives - its own scope, or the result scope
                struct var* home = et.scopeParam ? et.scopeParam
                                                 : (TypeHoldsReferences(et) ? ctx->func->type.resultScope : NULL);
                if (home) landCall(v, home, 0);
                if (checkBuiltResult(ctx, v, et)) continue;
                struct var* rv;
                int rd;
                bool ru;
                bool asRef = v->type.structMAlloc;
                if (et.structMAlloc && RefNarrowingMatters(et) && (asRef || OperandIsLvalue(v))
                        && RefExactScope(ctx, v, asRef, &rv, &rd, &ru)
                        && (ru || canonicalVar(rv) != canonicalVar(et.scopeParam)) && !typeVarResultObliged(ctx, rv, ru)) {
                    ErrMsgSemantic(v->tok, REFERENCE_NARROWED);
                }
                checkReturnedScopeBindings(v, et, v->tok);
            }
            val = OperandStructLiteral(ctx->func, rt, vals, tok);
        }
        struct statement stmt = (struct statement){0};
        stmt.sType = STATEMENT_RET;
        stmt.op = val;
        return stmt;
    }
    if (ctx->func && ctx->func->inferRet) { //D16b: the first "return" fixes the result - or that there is none
        struct list one = ListInit(sizeof(struct operand*));
        if (val) {
            FinalizeLambda(val, NULL);
            ListAdd(&one, &val);
        }
        lambdaInferResult(ctx->func, &one, tok);
    }
    if (val && val->type.isTuple && !(ctx->func && ctx->func->type.hasRetType
                                     && TypeIsSame(val->type, *ctx->func->type.retType))) {
        ErrMsgSemantic(val->tok, TUPLE_NOT_A_VALUE);
    }
    if (val && !val->type.isTuple && ctx->func && ctx->func->type.hasRetType && ctx->func->type.retType->isTuple) {
        ErrMsgSemantic(tok, RETURN_COUNT_MISMATCH);
        struct statement stmt = (struct statement){0};
        stmt.sType = STATEMENT_RET;
        stmt.op = val;
        return stmt;
    }

    if (ctx->inCtor) ErrMsgSemantic(tok, RETURN_IN_CTOR);
    else if (ctx->inTest && !ctx->func) ErrMsgSemantic(tok, RETURN_IN_TEST); //S15: a test is not a function
    else if (val && ctx->func && !ctx->func->type.hasRetType) ErrMsgSemantic(tok, RETURN_VALUE_IN_VOID_FUNC);
    else if (!val && ctx->func && ctx->func->type.hasRetType) ErrMsgSemantic(tok, RETURN_MISSING_VALUE);
    else if (val && ctx->func && ctx->func->type.hasRetType) {
        //O18a: a call whose result's scope follows the result is built in the scope the return type names
        struct var* resultHome = ctx->func->type.retType->scopeParam ? ctx->func->type.retType->scopeParam
                                                                     : ctx->func->type.resultScope;
        if (resultHome) landCall(val, resultHome, 0);
        if (checkBuiltResult(ctx, val, *ctx->func->type.retType)) {
            struct statement stmt = (struct statement){0};
            stmt.sType = STATEMENT_RET;
            stmt.op = val;
            return stmt;
        }
        enum typeFit fit = OperandFitsType(ctx->func, val, *ctx->func->type.retType);
        //every other outcome reads as it does at any fit site. This used to list four of them and drop the
        //rest, so a returned value that failed to satisfy an interface - or a literal out of range, or an
        //element of the wrong reference shape - was accepted silently and reached codegen
        if (fit == TYPE_FIT_SCOPE_OWN) ErrMsgSemantic(val->tok, ownOutliveMsg(val, ctx->func));
        else if (fit == TYPE_FIT_MISMATCH) ErrMsgSemantic(val->tok, RETURN_TYPE_MISMATCH);
        else reportTypeFit(fit, val->tok);
        checkReturnedScopeBindings(val, *ctx->func->type.retType, val->tok);
        noteResultBindings(ctx, val); //O13c
        //C2d: a returned instance lands in the scope the return type names; a by-value one cannot hold an
        //unnamed-scope reference at all (O14)
        if (resultHome) checkCtorHereFits(ctx, val, resultHome, 0, val->tok);
        //O25: a returned reference to something that can hold references keeps its exact scope, so the
        //caller's writes through it land where its referent lives
        struct type rt = *ctx->func->type.retType;
        struct var* rv;
        int rd;
        bool ru;
        bool asRef = val->type.structMAlloc;
        if (rt.structMAlloc && RefNarrowingMatters(rt) && (asRef || OperandIsLvalue(val))
                && RefExactScope(ctx, val, asRef, &rv, &rd, &ru)
                && (ru || canonicalVar(rv) != canonicalVar(rt.scopeParam)) && !typeVarResultObliged(ctx, rv, ru)) {
            ErrMsgSemantic(val->tok, REFERENCE_NARROWED);
        }
    }

    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_RET;
    stmt.op = val;
    return stmt;
}

struct statement buildErrorStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct token tok = firstTokOfType(s, TOK_ERROR);
    struct list idens = allTokOfType(s, TOK_IDEN);

    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_ERROR;

    if (ctx->inDefer) { ErrMsgSemantic(tok, DEFER_ERROR_ESCAPES); return stmt; } //S19b
    if (!ctx->func) { ErrMsgSemantic(tok, ERROR_STMNT_OUTSIDE_FUNC); return stmt; }

    //bare "error" - the bare error (see the report on §7.6 R16), no TYPE.word operand at all;
    //parseStmntError's own bare-form grammar guarantees idens is empty exactly when this is the case
    if (idens.len == 0) {
        lambdaInferError(ctx->func, &bareErrorType); //D16b
        bool declared = false;
        for (int i = 0; i < ctx->func->type.errors.len; i++) {
            if (*(struct type**)ListGetIdx(&ctx->func->type.errors, i) == &bareErrorType) {
                declared = true;
                break;
            }
        }
        if (!declared) { ErrMsgSemantic(tok, ctx->func->type.errors.len ? PLAIN_ERROR_NAMED_SIG : ERROR_NOT_DECLARED_IN_SIG); return stmt; }
        stmt.op = OperandErrorLiteral(bareErrorType, tok);
        return stmt;
    }

    //"alias...TYPE.word" - originating a foreign module's own error type directly, not just declaring/
    //catching one already reachable through a signature - see the report. Always ends in exactly
    //"TYPE.word" (parseStmntError's own grammar guarantees this), so every identifier before the last two
    //is unambiguously an alias hop - no disambiguation needed, unlike a catch clause.
    struct semaModule* target = resolveAliasChain(ctx->mod, idens, 2);
    if (!target) return stmt; //error already reported
    bool crossModule = target != ctx->mod;
    struct token errTypeTok = *(struct token*)ListGetIdx(&idens, idens.len -2);
    struct token wordTok = *(struct token*)ListGetIdx(&idens, idens.len -1);

    struct type* errType = crossModule ? TypeGetList(&target->types, strFromTok(errTypeTok))
                                       : typeNamed(target, strFromTok(errTypeTok));
    if (!errType || errType->bType != BASETYPE_ERROR) { ErrMsgSemantic(errTypeTok, UNKNOWN_ERROR); return stmt; }
    if (crossModule && !isPublic(strFromTok(errTypeTok))) { ErrMsgSemantic(errTypeTok, TYPE_IS_PRIVATE); return stmt; }
    //M6a: the WORD's own capitalization decides its visibility too, not just the type's - an exported error
    //type may keep some of its words to itself, the same way an exported struct keeps some of its fields
    if (crossModule && !isPublic(strFromTok(wordTok))) { ErrMsgSemantic(wordTok, ERROR_WORD_IS_PRIVATE); return stmt; }
    resolveTypeDecl(errType);

    lambdaInferError(ctx->func, errType); //D16b
    bool declared = false;
    for (int i = 0; i < ctx->func->type.errors.len; i++) {
        if (*(struct type**)ListGetIdx(&ctx->func->type.errors, i) == errType) { declared = true; break; }
    }
    if (!declared) { ErrMsgSemantic(errTypeTok, ERROR_NOT_DECLARED_IN_SIG); return stmt; }

    stmt.op = OperandErrorLiteral(*errType, wordTok);
    return stmt;
}

//the variable an lvalue ultimately names, walking member/index/slice hops. P3 reasons about roots because
//handing a task "v.field" hands it v: the task can reach the whole container through it.
struct var* lvalueRootVar(struct operand* op) {
    while (op->opType == OPERATION_MEMBER || op->opType == OPERATION_INDEX || op->opType == OPERATION_SLICE) {
        op = *(struct operand**)ListGetIdx(&op->args, 0);
    }
    return op->opType == OPERATION_READ_VAR ? canonicalVar(op->readVar) : NULL;
}

//O1b: whether what op names lives in the program's scope - for a reference its referent, for a value what it holds:
//a global, a slot reached from one with no scope of its own, a local that took such a thing, or a call's result that
//was built or borrowed there. False where that is not known.
bool storageInProgram(struct operand* op) {
    switch (op->opType) {
        case OPERATION_READ_VAR:
            if (!op->readVar || op->readVar->isFuncDecl) return false;
            return canonicalVar(op->readVar)->owner != NULL || canonicalVar(op->readVar)->inProgram || op->readVar->inProgram;
        case OPERATION_MEMBER: case OPERATION_INDEX: case OPERATION_SLICE: case OPERATION_AS:
            if (op->opType == OPERATION_MEMBER && op->type.structMAlloc && op->type.scopeParam) {
                for (int i = 0; i < op->scopeBindings.len; i++) {
                    struct scopeBinding* b = ListGetIdx(&op->scopeBindings, i);
                    if (canonicalVar(b->typeParam) == canonicalVar(op->type.scopeParam) && !b->containerFallback)
                        return b->boundUnnamed && !b->landing;
                }
            }
            return op->args.len && storageInProgram(*(struct operand**)ListGetIdx(&op->args, 0));
        case OPERATION_FUNCCALL: {
            struct var* f = op->readVar;
            if (!f || !f->type.hasRetType) return false;
            if (opIsCtorCall(op)) return op->landedInProgram;
            struct var* sv = f->type.retType->scopeParam ? f->type.retType->scopeParam : f->type.resultScope;
            return sv && SemanticBindingIsUnnamed(op, sv);
        }
        default: return false;
    }
}

//P1: "spawn { f(a)  g(b) }" - each statement in the block is one task, and the block's end is the join.
//The lifetime half needs no new rule at all: a task's arguments are borrows of the spawner's storage
//(E12c), and the spawner provably outlives every task because it cannot leave the block until they finish.
//P3 is the only new check, and it is cheap for exactly the reason each task is a CALL rather than a body -
//the set of things a task can reach is its argument list, written down in the statement, so exclusivity is
//decided by reading the block instead of analysing the function the way a general borrow checker must.
//P1: "join { ... }" is an ordinary block - any statements at all - that waits at its end for every task
//spawned directly inside it. It is the only thing that waits, so a spawn needs one and a join with no
//spawn of its own is pointless rather than harmless.
struct statement buildJoinStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct token tok = firstTokOfType(s, TOK_JOIN);
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_JOIN;

    bool hasSpawn = false;
    struct checkCtx joinCtx = *ctx;
    joinCtx.joinHasSpawn = &hasSpawn;
    joinCtx.joinDepth = ctx->blockDepth + 1; //the block buildBlock is about to open
    stmt.block = buildBlock(&joinCtx, firstPartOfType(s, SNTX_BLOCK));
    if (!hasSpawn) ErrMsgSemantic(tok, JOIN_WITHOUT_SPAWN);
    return stmt;
}

//S19: "defer { ... }" - the deferred code is checked here, where it is written, as a block nested in the
//defer's own: it sees exactly the names declared before it, and every scope rule treats it as code of that
//block, which it is - it runs before the block's scope closes. What it may not do is leave (S19b): it runs
//while the block is being left, so it starts no loop jump of its own, returns nothing and lets no error out.
//A spawn in it needs a join in it too (P1a): it runs on every way out of its block, so no join outside it is
//certain to be the one that waits.
struct statement buildDeferStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_DEFER;
    struct checkCtx dctx = *ctx;
    dctx.inDefer = true;
    dctx.inLoop = false;
    dctx.joinHasSpawn = NULL;
    stmt.block = buildBlock(&dctx, firstPartOfType(s, SNTX_BLOCK));
    return stmt;
}

struct statement buildSpawnStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct token tok = firstTokOfType(s, TOK_SPAWN);
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_SPAWN;

    //P1g: "spawn TARGET = CALL", told from the plain form by the target's node type (parseStmntSpawn);
    //D8c: "spawn a, b = CALL" binds each of several results, "_" discarding one
    stmt.spawnTargets = ListInit(sizeof(struct operand*));
    struct list targetNodes = allPartsOfType(s, SNTX_EXPR_POSTFIX);
    for (int i = 0; i < targetNodes.len; i++) {
        struct syntax* tn = *(struct syntax**)ListGetIdx(&targetNodes, i);
        struct token nameTok;
        struct operand* t = NULL;
        if (!(destructTargetName(tn, &nameTok) && StrCmp(strFromTok(nameTok), StrFromCStr("_")))) {
            t = buildExprFromSyntax(ctx, tn);
            if (!OperandIsLvalue(t) || t->viaConversion) ErrMsgSemantic(t->tok, NOT_AN_LVALUE);
            else if (!OperandIsMutableLvalue(t)) ErrMsgSemantic(t->tok, VAR_IMMUTABLE);
        }
        ListAdd(&stmt.spawnTargets, &t);
    }

    bool prevAllow = ctx->allowFallibleCall;
    ctx->allowFallibleCall = true; //fallibility is rejected below with a message of its own
    struct operand* call = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
    ctx->allowFallibleCall = prevAllow;
    //D16e: "spawn fn() { ... }" - a task running the lambda's body. Its closure is held by a hidden local built
    //in the JOIN block's scope, so it lasts as long as the task can run, and the task is a call through it
    struct statement taskDecl = (struct statement){0};
    bool lambdaTask = false;
    if (call && call->pendingLambda) {
        FinalizeLambda(call, NULL);
        if (call->readVar && call->readVar->type.vars.len) ErrMsgSemantic(call->tok, SPAWN_LAMBDA_PARAMS);
        if (ctx->joinHasSpawn && call->readVar) {
            struct type dt = call->type;
            if (call->lambdaHomeSet) {
                dt.scopeParam = call->lambdaHome;
                dt.scopeDepth = call->lambdaHomeDepth;
            } else {
                dt.scopeWritten = true;
                dt.scopeDepth = ctx->joinDepth;
            }
            char nm[32];
            snprintf(nm, sizeof(nm), "$task%d", ++lambdaCounter);
            struct var* tv = scopeDeclare(ctx->mod, ctx->scope, StrFromCStr(heapCopy(nm)), tok, dt, true);
            taskDecl.sType = STATEMENT_VAR_DECL;
            taskDecl.var = *tv;
            taskDecl.op = call;
            taskDecl.line = tok.lineNr;
            if (tok.owner) taskDecl.file = TokenGetFileName(tok.owner);
            call = OperandFuncCall(ctx, tv, ListInit(sizeof(struct operand*)), call->tok, ListInit(sizeof(struct syntax*)));
            lambdaTask = true;
        }
    }
    stmt.op = call;

    if (!ctx->joinHasSpawn) { ErrMsgSemantic(tok, ctx->inDefer ? SPAWN_IN_DEFER : SPAWN_OUTSIDE_JOIN); return stmt; }
    *ctx->joinHasSpawn = true;

    if (!call || call->opType != OPERATION_FUNCCALL || !call->readVar) {
        ErrMsgSemantic(tok, SPAWN_REQUIRES_CALL);
        return stmt;
    }
    //P4: an error raised on another thread has nowhere to propagate to - the join carries no value, and
    //the spawner is not at the call site any more
    if (call->readVar->type.errors.len != 0) {
        ErrMsgSemantic(call->tok, SPAWN_CALLEE_FALLIBLE);
        return stmt;
    }
    //P2: the task runs until the join, so everything it was handed has to still be there then. An
    //argument declared in a block NESTED inside the join closes first - the same containment question O10
    //asks everywhere else, here against the join block's own depth.
    for (int i = 0; i < call->args.len; i++) {
        struct operand* arg = *(struct operand**)ListGetIdx(&call->args, i);
        if (!arg->type.structMAlloc && !arg->type.arrMalloc) continue;
        if (arg->type.scopeParam) continue; //a named scope outlives this body entirely
        struct var* root = lvalueRootVar(arg);
        if (!root || root->owner) continue; //a temporary, or a global: neither is block-scoped
        if (arg->type.scopeDepth > ctx->joinDepth) ErrMsgSemantic(arg->tok, SPAWN_ARG_TOO_SHORT);
    }
    //...and so has the function value it calls: a lambda's closure lives where its local does (D16d)
    struct var* fv = call->readVar;
    if (fv && !fv->owner && fv->type.bType == BASETYPE_FUNC && !fv->type.scopeParam
            && normDepth(fv->type.scopeDepth) > ctx->joinDepth) {
        ErrMsgSemantic(call->tok, SPAWN_FUNC_TOO_SHORT);
    }
    //P1g: the result is stored when the call returns, which is somewhere between the spawn and the join -
    //so the target has to still be there then, on exactly the terms an argument does. The store is a
    //plain one on the task's thread, with no caller frame left to run a conversion in, so the types must
    //agree outright rather than merely be assignable.
    if (stmt.spawnTargets.len > 0) {
        struct type rt = call->readVar->type.hasRetType ? *call->readVar->type.retType : TypeVanilla(BASETYPE_VOID);
        int results = rt.isTuple ? rt.vars.len : (call->readVar->type.hasRetType ? 1 : 0);
        if (results == 0) ErrMsgSemantic(tok, SPAWN_RESULT_VOID);
        else if (results != stmt.spawnTargets.len) ErrMsgSemantic(tok, DESTRUCT_COUNT_MISMATCH);
        bool fits = true;
        for (int i = 0; results == stmt.spawnTargets.len && i < results; i++) {
            struct operand* t = *(struct operand**)ListGetIdx(&stmt.spawnTargets, i);
            if (!t) continue;
            struct type want = rt.isTuple ? (*(struct var*)ListGetIdx(&rt.vars, i)).type : rt;
            if (!TypeIsSame(t->type, want)) { ErrMsgSemantic(t->tok, SPAWN_RESULT_TYPE); fits = false; }
            if (!OperandIsMutableLvalue(t)) fits = false;
            struct var* troot = lvalueRootVar(t);
            if (troot && !troot->owner && !t->type.scopeParam && t->type.scopeDepth > ctx->joinDepth) {
                ErrMsgSemantic(t->tok, SPAWN_RESULT_TOO_SHORT);
            }
        }
        //O18a/P1g: the result is stored into its target as an assignment's value is - so a result built where it lands
        //is built where the target is, and one that already lives somewhere must suit the target as an assignment's
        //would (O25, O1b). Several targets share one result scope: it lands where they all are, or nowhere
        if (fits && results == stmt.spawnTargets.len && ctx->hasOwnScope) {
            struct operand* t0 = *(struct operand**)ListGetIdx(&stmt.spawnTargets, 0);
            struct token asTok = tok;
            asTok.type = TOK_ASS; //checked as the plain assignment it is (no compound form exists, P1g)
            if (results == 1 && t0) buildAssignCore(ctx, t0, call, asTok);
            else if (callIsLanding(call)) {
                struct var* lv = NULL;
                int ld = 0;
                bool have = false, agree = true, program = false;
                for (int i = 0; i < results; i++) {
                    struct operand* t = *(struct operand**)ListGetIdx(&stmt.spawnTargets, i);
                    if (!t || !(t->type.structMAlloc || TypeHoldsReferences(t->type))) continue;
                    struct var* troot = lvalueRootVar(t);
                    struct var* v;
                    int d;
                    bool u;
                    if (troot && troot->owner) program = true;
                    else if (!RefExactScope(ctx, t, t->type.structMAlloc, &v, &d, &u) || u || v == SCOPE_AMBIGUOUS) agree = false;
                    else if (!have) { lv = v; ld = d; have = true; }
                    else if (!sameExactScope(lv, ld, v, d)) agree = false;
                }
                if (program && !have && agree) landCallIn(call, NULL, 0, true);
                else if (have && agree && !program) landCall(call, lv, ld);
                else if (have || program) ErrMsgSemantic(tok, SPAWN_RESULTS_DISAGREE);
            }
        }
    }
    if (lambdaTask) { //the closure, then the task - one block, run as written
        struct statement blk = (struct statement){0};
        blk.sType = STATEMENT_IF;
        struct token t = tok;
        t.type = TOK_BOOL_LIT;
        t.str = StrFromCStr("true");
        blk.op = OperandBoolLiteral(t);
        blk.block = ListInit(sizeof(struct statement));
        ListAdd(&blk.block, &taskDecl);
        ListAdd(&blk.block, &stmt);
        blk.line = tok.lineNr;
        blk.file = taskDecl.file;
        return blk;
    }
    return stmt;
}

//D10a: does control definitely leave this block, rather than running off its end? A conservative,
//purely structural answer - no dataflow, no constant folding - so it says "no" for some bodies that in
//fact always return, which is exactly what "unreachable" is for.
static bool blockAlwaysExits(struct list* block);

//R9b: a catch block in value position "leaves" by any jump out of the expression, which break and continue
//are as well - the D10a question counts them for this and only this
static bool exitsCountLoopJumps;

static bool stmntAlwaysExits(struct statement* s) {
    switch (s->sType) {
        case STATEMENT_BREAK: case STATEMENT_CONTINUE: return exitsCountLoopJumps;
        //every way out of a function body: a return, an error (which returns), and the four that end the
        //test or the process outright
        case STATEMENT_RET: case STATEMENT_ERROR:
        case STATEMENT_DONE: case STATEMENT_FAIL:
        case STATEMENT_ABORT: case STATEMENT_UNREACHABLE:
            return true;
        case STATEMENT_IF:
            //G15: a selected "match <T>" arm collapses to an "if" whose condition is a literal true, with
            //no else - the arm IS the statement. Such an if always runs its block, so it exits when the
            //block does. Reading the condition rather than special-casing type matches also covers a
            //hand-written "if true { return 1 }", which is the same fact.
            if (s->op && s->op->isLiteral && s->op->type.bType == BASETYPE_BOOL && s->op->intLiteralVal) {
                return blockAlwaysExits(&s->block);
            }
            //an "if" with no else has a path that falls through by construction
            if (!s->elseStmnt) return false;
            if (!blockAlwaysExits(&s->block)) return false;
            return s->elseIsBlock ? blockAlwaysExits(&s->elseStmnt->block) : stmntAlwaysExits(s->elseStmnt);
        case STATEMENT_MATCH: {
            for (int i = 0; i < s->matchCases.len; i++) {
                struct statement* c = ListGetIdx(&s->matchCases, i);
                if (!blockAlwaysExits(&c->block)) return false;
            }
            if (s->hasNomatch) return blockAlwaysExits(&s->nomatchBlock);
            //S13a exhaustiveness-checks a choice match with no "nomatch", so one that compiled covers
            //every case - which is the fact this rule needs and which nothing used before
            return s->op && s->op->type.bType == BASETYPE_CHOICE;
        }
        //a loop is never counted, even a "do" whose body always returns: with break (S11) the body
        //exiting is not the same as the loop exiting, and proving otherwise needs a reachability pass
        //this rule deliberately does not have. Write "unreachable" after an infinite loop.
        default: return false;
    }
}

static bool blockAlwaysExits(struct list* block) {
    for (int i = 0; i < block->len; i++) {
        if (stmntAlwaysExits(ListGetIdx(block, i))) return true;
    }
    return false;
}

// ---- D16: lambdas ----
//
//A lambda is checked as a hidden function of its own - a name no program can write, owned by the module it is
//written in and emitted with the function around it (codegen's lambdaHost). Its signature may leave parts out,
//to be taken from the function type it is passed as (D16a), so it is built as a placeholder first and checked
//where that type is known: an argument's parameter, a declaration's written type, an assignment's target, a
//return's result. Without one, its written signature and its body say everything (D16b).

struct pendingLambda { struct syntax* node; struct checkCtx ctx; };
static struct list allLambdas; //struct var*
static struct list funcValueUses; //struct funcValueUse - T22a, checked once every body is
struct funcValueUse { struct var* f; struct token tok; };

struct list* SemanticAllLambdas(void) { return &allLambdas; }

static void noteFuncValueUse(struct var* f, struct token tok) {
    struct funcValueUse u = { f, tok };
    ListAdd(&funcValueUses, &u);
}

//T22a: a function carrying a scope obligation cannot be a value - a call through one discharges nothing
static void checkFuncValueUses(void) {
    for (int i = 0; i < funcValueUses.len; i++) {
        struct funcValueUse* u = ListGetIdx(&funcValueUses, i);
        if (canonicalVar(u->f)->type.scopeObligations.len > 0) ErrMsgSemantic(u->tok, FUNC_VALUE_HAS_OBLIGATIONS);
    }
}

struct operand* OperandPendingLambda(struct checkCtx* ctx, struct syntax* node) {
    struct pendingLambda* pl = MallocOrCrash(sizeof(struct pendingLambda));
    pl->node = node;
    pl->ctx = *ctx;
    struct type ft = (struct type){0};
    ft.bType = BASETYPE_FUNC;
    ft.vars = ListInit(sizeof(struct var));
    ft.scopeVars = ListInit(sizeof(struct var*));
    ft.errors = ListInit(sizeof(struct type*));
    ft.typeParams = ListInit(sizeof(struct str));
    ft.scopeObligations = ListInit(sizeof(struct scopeObligation));
    struct operand* op = operandNew(firstTokOfType(node, TOK_FUNC), OPERATION_NONE, ft);
    op->pendingLambda = pl;
    return op;
}

//a type taken from the expected signature, made the lambda's own: its scope variables are the lambda's, given
//afresh (O4b, O13), never the expected type's
static struct type lambdaOwnType(struct type t) {
    t.scopeParam = NULL;
    t.scopeWritten = false;
    if (t.isTuple) {
        struct list vars = ListInit(sizeof(struct var));
        for (int i = 0; i < t.vars.len; i++) {
            struct var v = *(struct var*)ListGetIdx(&t.vars, i);
            v.type.scopeParam = NULL;
            v.type.scopeWritten = false;
            ListAdd(&vars, &v);
        }
        t.vars = vars;
    }
    return t;
}

//D16c: a lambda's own copy of a variable from the body around it, made the first time the body uses it. A value is
//copied and read-only; a reference keeps naming its instance, writable through when the variable was, and gets
//an implicit scope of its own as a reference parameter does (O4b) - bound, when the lambda is made, to the scope
//the captured reference lives in
static struct var* lambdaCapture(struct var* L, struct var* outer, struct token tok) {
    for (int i = 0; i < L->lambdaCaptures.len; i++) {
        struct lambdaCapture* c = ListGetIdx(&L->lambdaCaptures, i);
        if (canonicalVar(c->outer) == canonicalVar(outer)) return c->inner;
    }
    struct var* inner = VarAllocSetOrigin();
    inner->name = outer->name;
    inner->tok = outer->tok;
    inner->type = outer->type;
    inner->mayBeInitialized = true;
    inner->isCapture = true;
    bool isRef = inner->type.structMAlloc;
    //D16c: an array is never copied implicitly (D9a), so a value array - text included - is BORROWED, as passing
    //it to a "&" parameter would borrow it (E12c): the lambda's copy is a read-only reference to the variable's
    //own storage, and the lambda lives no longer than that storage (D16d)
    bool borrowed = !isRef && inner->type.bType == BASETYPE_ARRAY;
    if (borrowed) { inner->type.structMAlloc = true; inner->isBorrowedCapture = true; }
    else if (!isRef && TypeHoldsReferences(inner->type)) ErrMsgSemantic(tok, CAPTURE_HOLDS_REFERENCES);
    (void)tok;
    inner->mut = isRef && outer->mut;
    isRef = isRef || borrowed;
    if (isRef) {
        inner->type.scopeParam = NULL;
        inner->type.scopeWritten = false;
        inner->type.scopeDepth = 0;
        giveImplicitScope(inner, &L->type.scopeVars);
        if (inner->type.scopeParam) inner->type.scopeParam->isCaptureScope = true;
    }
    struct lambdaCapture c = { outer, inner };
    ListAdd(&L->lambdaCaptures, &c);
    return inner;
}

//D16b: the result a lambda's first "return" gives it
static bool lambdaValueType(struct var* f, struct operand* v, struct type* out) {
    if (v->isNullLiteral || v->type.isTuple || v->type.bType == BASETYPE_VOID) return false;
    struct type* textT = SemanticBuiltinType(StrFromCStr("String"));
    if (textT && OperandIsWrittenText(v)) { *out = *textT; return true; }
    struct type t = declaredArrayType(v->type);
    //a reference into one of the lambda's own parameters is a borrowed result; anything else is built (O13)
    if (t.scopeParam && !varIsOwnParam(canonicalVar(t.scopeParam), f)) t.scopeParam = NULL;
    t.scopeWritten = false;
    *out = t;
    return true;
}

//D16b: fixes an inferring lambda's result at its first "return" - one value, several, or none
void lambdaInferResult(struct var* f, struct list* vals, struct token tok) {
    if (!f || !f->inferRet || f->type.hasRetType) return;
    f->inferRet = false;
    if (!vals || vals->len == 0) return;
    struct type rt;
    if (vals->len == 1) {
        if (!lambdaValueType(f, *(struct operand**)ListGetIdx(vals, 0), &rt)) { ErrMsgSemantic(tok, LAMBDA_RESULT_UNINFERABLE); return; }
    } else {
        struct list elems = ListInit(sizeof(struct type));
        for (int i = 0; i < vals->len; i++) {
            struct type e;
            if (!lambdaValueType(f, *(struct operand**)ListGetIdx(vals, i), &e)) { ErrMsgSemantic(tok, LAMBDA_RESULT_UNINFERABLE); return; }
            ListAdd(&elems, &e);
        }
        rt = TypeTuple(&elems);
    }
    f->type.hasRetType = true;
    f->type.retType = MallocOrCrash(sizeof(struct type));
    *f->type.retType = rt;
    finishResultScope(&f->type, tok);
}

//D16b: an inferring lambda takes on an error it lets through. False where it cannot - a function naming its
//errors cannot also fail with the default error, which then reports as it would anywhere else
bool lambdaInferError(struct var* f, struct type* e) {
    if (!f || !f->inferErrs) return false;
    for (int i = 0; i < f->type.errors.len; i++) {
        if (TypeIsSame(**(struct type**)ListGetIdx(&f->type.errors, i), *e)) return true;
    }
    if (e == &bareErrorType ? f->type.errors.len != 0 : funcIsBareFallible(f)) return false;
    ListAdd(&f->type.errors, &e);
    return true;
}

void FinalizeLambda(struct operand* op, struct type* expected) {
    struct pendingLambda* pl = op->pendingLambda;
    if (!pl) return;
    op->pendingLambda = NULL;
    struct checkCtx* octx = &pl->ctx;
    struct syntax* node = pl->node;
    struct syntax* sig = firstPartOfType(node, SNTX_FUNC_SIG);
    struct token kw = firstTokOfType(node, TOK_FUNC);
    struct type* exp = expected && expected->bType == BASETYPE_FUNC ? expected : NULL;

    struct type t = op->type;
    struct list params = allPartsOfType(firstPartOfType(sig, SNTX_PARAM_LIST), SNTX_PARAM);
    bool arityBad = exp && exp->vars.len != params.len;
    if (arityBad) { ErrMsgSemantic(kw, LAMBDA_ARITY); exp = NULL; }
    for (int i = 0; i < params.len; i++) {
        struct syntax* p = *(struct syntax**)ListGetIdx(&params, i);
        struct token nameTok = firstTokOfType(p, TOK_IDEN);
        struct var v = (struct var){0};
        v.name = strFromTok(nameTok);
        v.tok = nameTok;
        rejectUnderscoreName(v.name, nameTok);
        if (VarGetList(&t.vars, v.name) || scopeFindLocal(octx->scope, v.name)) ErrMsgSemantic(nameTok, VAR_NAME_IN_USE);
        v.mut = hasTokOfType(p, TOK_MUT);
        struct var* ep = exp ? ListGetIdx(&exp->vars, i) : NULL;
        struct syntax* typeNode = firstPartOfType(p, SNTX_TYPE_EXPR);
        if (typeNode) {
            v.type = resolveTypeExpr(octx->mod, typeNode, &t.scopeVars);
            declPermission(&v); //T25b
            if (ep && !TypeIsGeneric(ep->type) && !TypeIsSame(v.type, ep->type)) {
                ErrMsgSemantic(nameTok, LAMBDA_SIG_MISMATCH);
                v.type = lambdaOwnType(ep->type); //reported once, here - not again where the lambda lands
            }
        } else if (ep && !TypeIsGeneric(ep->type)) {
            v.type = lambdaOwnType(ep->type);
        } else {
            if (!arityBad) ErrMsgSemantic(nameTok, LAMBDA_PARAM_UNTYPED);
            v.type = TypeVanilla(BASETYPE_INT32);
        }
        if (ep) {
            if (v.mut && !ep->mut) ErrMsgSemantic(nameTok, LAMBDA_SIG_MISMATCH);
            if (!typeNode) v.mut = ep->mut;
        }
        if (v.type.bType == BASETYPE_ARRAY && !v.type.structMAlloc) ErrMsgSemantic(nameTok, ARRAY_PARAM_NOT_REFERENCE); //D9a
        giveImplicitScope(&v, &t.scopeVars); //O4b
        ListAdd(&t.vars, &v);
    }

    struct var* L = VarAllocSetOrigin();
    char nm[48];
    snprintf(nm, sizeof(nm), "lambda$%d", ++lambdaCounter);
    L->name = StrFromCStr(heapCopy(nm));
    L->tok = kw;
    L->owner = octx->mod;
    L->isFuncDecl = true;
    L->isLambda = true;
    L->lambdaHost = octx->func;
    L->lambdaInTest = octx->inTest;
    L->mayBeInitialized = true;
    L->lambdaCaptures = ListInit(sizeof(struct lambdaCapture));

    struct syntax* retNode = firstPartOfType(sig, SNTX_RET_TYPE);
    if (retNode) {
        t.hasRetType = true;
        t.retType = MallocOrCrash(sizeof(struct type));
        struct list retExprs = allPartsOfType(retNode, SNTX_TYPE_EXPR);
        if (retExprs.len > 1) {
            struct list elems = ListInit(sizeof(struct type));
            for (int i = 0; i < retExprs.len; i++) {
                struct type e = resolveTypeExpr(octx->mod, *(struct syntax**)ListGetIdx(&retExprs, i), &t.scopeVars);
                ListAdd(&elems, &e);
            }
            *t.retType = TypeTuple(&elems);
        } else {
            *t.retType = resolveTypeExpr(octx->mod, firstPartOfType(retNode, SNTX_TYPE_EXPR), &t.scopeVars);
        }
        finishResultScope(&t, kw);
        if (exp && exp->hasRetType && !TypeIsGeneric(*exp->retType) && !TypeIsSame(*t.retType, *exp->retType)) {
            ErrMsgSemantic(kw, LAMBDA_SIG_MISMATCH);
            *t.retType = lambdaOwnType(*exp->retType);
        }
        if (exp && !exp->hasRetType) ErrMsgSemantic(kw, LAMBDA_SIG_MISMATCH);
    } else if (exp && exp->hasRetType && !TypeIsGeneric(*exp->retType)) {
        t.hasRetType = true;
        t.retType = MallocOrCrash(sizeof(struct type));
        *t.retType = lambdaOwnType(*exp->retType);
        finishResultScope(&t, kw);
    } else if (!exp || exp->hasRetType) {
        L->inferRet = true; //D16b: from the body - or, against a generic result, to bind it (G9)
    }

    struct syntax* errNode = firstPartOfType(sig, SNTX_ERROR_LIST);
    if (errNode) {
        struct list items = allSyntaxParts(errNode);
        for (int i = 0; i < items.len; i++) {
            struct type* errType = resolveErrorTypeName(octx->mod, *(struct syntax**)ListGetIdx(&items, i));
            if (errType) ListAdd(&t.errors, &errType);
        }
        addDefaultError(&t.errors);
        if (exp) {
            bool same = exp->errors.len == t.errors.len;
            for (int i = 0; same && i < t.errors.len; i++) {
                same = TypeIsSame(**(struct type**)ListGetIdx(&t.errors, i), **(struct type**)ListGetIdx(&exp->errors, i));
            }
            if (!same) {
                ErrMsgSemantic(kw, LAMBDA_SIG_MISMATCH);
                t.errors = ListInit(sizeof(struct type*));
                for (int i = 0; i < exp->errors.len; i++) ListAdd(&t.errors, ListGetIdx(&exp->errors, i));
            }
        }
    } else if (exp) {
        for (int i = 0; i < exp->errors.len; i++) ListAdd(&t.errors, ListGetIdx(&exp->errors, i));
    } else {
        L->inferErrs = true;
    }
    L->type = t;

    //the body, checked as a function's is - inside the body around it, whose variables it captures (D16c)
    struct scope fnScope = scopePush(octx->scope);
    fnScope.lambda = L;
    for (int p = 0; p < L->type.vars.len; p++) {
        struct var* param = ListGetIdx(&L->type.vars, p);
        rejectShadowing(octx->mod, param->name, param->tok); //D3a
        struct var* local = VarAllocSetOrigin();
        *local = *param;
        local->origin = param;
        local->mayBeInitialized = true;
        ListAdd(&fnScope.localPtrs, &local);
    }
    struct checkCtx c = {0};
    c.mod = octx->mod;
    c.scope = &fnScope;
    c.func = L;
    c.hasOwnScope = true;
    c.inTest = octx->inTest;
    c.bodyId = bodyBegin();
    struct list savedDischarges = pendingDischarges; //the enclosing statement's, discharged when it ends
    pendingDischarges = ListInit(sizeof(struct pendingDischarge));
    int errsBefore = ErrMsgGetNErrors();
    L->codeBlock = buildBlock(&c, firstPartOfType(node, SNTX_BLOCK));
    pendingDischarges = savedDischarges;
    bodyEnd(c.bodyId, L->codeBlock);
    L->bodyHadErrors = ErrMsgGetNErrors() != errsBefore;
    if (L->type.hasRetType && !blockAlwaysExits(&L->codeBlock)) ErrMsgSemantic(kw, MISSING_RETURN); //D10a
    L->inferRet = false;
    L->inferErrs = false;
    ListAdd(&allLambdas, &L);

    op->opType = OPERATION_READ_VAR;
    op->readVar = L;
    op->type = L->type;
    op->type.structMAlloc = true; //D16: a function value
    //a capture's scope is the lambda's own business, never part of its type as a value
    op->type.scopeVars = ListInit(sizeof(struct var*));
    for (int i = 0; i < L->type.scopeVars.len; i++) {
        struct var* sv = *(struct var**)ListGetIdx(&L->type.scopeVars, i);
        if (!sv->isCaptureScope) ListAdd(&op->type.scopeVars, &sv);
    }
    //D16c: the captured values, read where the lambda is made, and each captured reference's scope bound from
    //what it captured - as a call binds a reference parameter's (O17)
    if (L->lambdaCaptures.len) {
        struct list caps = ListInit(sizeof(struct operand*));
        struct list inners = ListInit(sizeof(struct var));
        struct list capScopes = ListInit(sizeof(struct var*));
        for (int i = 0; i < L->lambdaCaptures.len; i++) {
            struct lambdaCapture* c = ListGetIdx(&L->lambdaCaptures, i);
            struct operand* r = OperandReadVar(c->outer, kw);
            ListAdd(&caps, &r);
            ListAdd(&inners, c->inner);
            if (c->inner->type.scopeParam) ListAdd(&capScopes, &c->inner->type.scopeParam);
        }
        struct var synth = (struct var){0};
        synth.type.bType = BASETYPE_FUNC;
        synth.type.vars = inners;
        synth.type.scopeVars = capScopes;
        synth.type.scopeObligations = ListInit(sizeof(struct scopeObligation));
        bindCallScopeVars(octx, op, &synth, caps, kw, ListInit(sizeof(struct syntax*)));
        op->args = caps;
        //D16c: a lambda holding references lives where they do, so the rules for references decide where it may
        //go: their one scope, or - when they live in several - the innermost of those blocks, else this block
        bool any = false, agree = true, allBlocks = true;
        struct var* hv = NULL;
        int hd = 0;
        for (int i = 0; i < caps.len; i++) {
            struct operand* r = *(struct operand**)ListGetIdx(&caps, i);
            struct var* in = ((struct lambdaCapture*)ListGetIdx(&L->lambdaCaptures, i))->inner;
            if (!in->type.structMAlloc) continue;
            bool asRef = r->type.structMAlloc; //else a borrowed array
            struct var* sv;
            int sd;
            bool su;
            if (!RefExactScope(octx, r, asRef, &sv, &sd, &su) || su) continue; //a global's referent outlives all
            if (scopeIsDerived(sv)) { //O23a: the closure is built, and nothing is built in a derived scope
                sv = SemanticRuntimeScope(sv, &sd);
                if (sv) sd = 0;
            }
            if (!any) { any = true; hv = sv; hd = sd; }
            else if (!sameExactScope(hv, hd, sv, sd)) agree = false;
            if (sv) allBlocks = false;
            else if (normDepth(sd) > normDepth(hd)) hd = sd;
        }
        if (any) {
            op->lambdaHomeSet = true;
            op->lambdaHome = agree ? hv : NULL;
            op->lambdaHomeDepth = agree ? hd : allBlocks ? hd : octx->blockDepth;
        }
    }
    noteFuncValueUse(L, kw);
}

static bool blockLeavesValue(struct list* block) {
    exitsCountLoopJumps = true;
    bool r = blockAlwaysExits(block);
    exitsCountLoopJumps = false;
    return r;
}

//S11: valid only inside a loop body. The rule is about the enclosing LOOP, not the enclosing block, so
//nesting an if/match/try inside the body changes nothing - ctx->inLoop is simply inherited by buildBlock.
struct statement buildBreakStmnt(struct checkCtx* ctx, struct syntax* s, enum statementType kind) {
    if (!ctx->inLoop) ErrMsgSemantic(firstTokOfType(s, kind == STATEMENT_BREAK ? TOK_BREAK : TOK_CONTINUE),
                                     ctx->inDefer ? DEFER_LOOP_JUMP : BREAK_OUTSIDE_LOOP); //S19b
    return (struct statement){.sType = kind};
}

//S16c/S16d: no operand and nothing to check - the difference between them is entirely what they claim,
//which is why both exist: "abort" says stop now, "unreachable" says control was never supposed to be here.
struct statement buildAbortLikeStmnt(struct checkCtx* ctx, struct syntax* s, enum statementType kind) {
    (void)ctx; (void)s;
    return (struct statement){.sType = kind};
}

struct statement buildDoneStmnt(struct checkCtx* ctx, struct syntax* s) {
    (void)ctx; (void)s;
    return (struct statement){.sType = STATEMENT_DONE};
}

//"assert EXPR" - a statement, not a function call (see the report); reuses the exact same condition-check
//every if/do-while condition already goes through
//S18c: every assert, with the body it is in, checked at compile time once the program has checked cleanly
struct assertRec { struct operand* op; int bodyId; bool inTest; };
static struct list assertRecs;

struct statement buildAssertStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct operand* cond = buildExprFromSyntax(ctx, firstPartOfType(s, SNTX_EXPR));
    if (!OperandIsBool(cond)) ErrMsgSemantic(cond->tok, OPERATION_REQUIRES_BOOL);
    struct assertRec r = { cond, ctx->bodyId, ctx->inTest };
    ListAdd(&assertRecs, &r);
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_ASSERT;
    stmt.op = cond;
    return stmt;
}

struct statement buildFailStmnt(struct checkCtx* ctx, struct syntax* s) {
    (void)ctx; (void)s;
    return (struct statement){.sType = STATEMENT_FAIL};
}

//"try f(...) catch A || B.word { ... }" - pure control flow, the caught error is never bound to a value.
//An error not fully caught here propagates per the normal try rules (see StatementCatchCoversType below)
//the catch items of one clause, resolved against what callOp can produce - shared by the statement form
//and a catch in value position (R9b)
static void buildCatchMatches(struct checkCtx* ctx, struct syntax* errListNode, struct list* errors,
                              struct list* out) {
    //each item is either an ordinary SNTX_CATCH_ERR or the bare bare-error marker (SNTX_BARE_ERROR,
    //see the report) - allSyntaxParts, not allPartsOfType(..., SNTX_CATCH_ERR), since this list can now
    //genuinely mix both node shapes
    struct list matchNodes = allSyntaxParts(errListNode);
    for (int i = 0; i < matchNodes.len; i++) {
        struct syntax* m = *(struct syntax**)ListGetIdx(&matchNodes, i);

        //the bare error - matches only itself, never a further ".word" (it has no addressable word of
        //its own - parseCatchErr's own grammar guarantees this shape never carries one)
        if (m->type == SNTX_BARE_ERROR) {
            struct token genericTok = firstTokOfType(m, TOK_ERROR);
            bool produces = false;
            for (int j = 0; j < errors->len; j++) {
                struct type* e = *(struct type**)ListGetIdx(errors, j);
                if (e == &bareErrorType) { produces = true; break; }
            }
            if (!produces) { ErrMsgSemantic(genericTok, CATCH_ERROR_NOT_PRODUCED_BY_CALL); continue; }
            struct catchMatch cm = (struct catchMatch){0};
            cm.errType = bareErrorType;
            ListAdd(out, &cm);
            continue;
        }

        struct list idens = allTokOfType(m, TOK_IDEN);

        //an alias chain of any length (possibly zero), then either a whole TYPE or a TYPE.word - see
        //resolveCatchAliasChain for how the trailing shape and where the alias chain ends are
        //disambiguated (an import alias and an error type live in different namespaces, so whichever
        //interpretation is possible at each step is the intended one).
        int trailingCount = 0;
        struct semaModule* target = resolveCatchAliasChain(ctx->mod, idens, &trailingCount);
        if (!target) continue; //error already reported
        bool crossModule = target != ctx->mod;
        struct token typeTok = *(struct token*)ListGetIdx(&idens, idens.len - trailingCount);
        bool hasWordTok = trailingCount == 2;
        struct token wordTok = hasWordTok ? *(struct token*)ListGetIdx(&idens, idens.len -1) : (struct token){0};

        struct type* errType = crossModule ? TypeGetList(&target->types, strFromTok(typeTok))
                                           : typeNamed(target, strFromTok(typeTok));
        if (!errType || errType->bType != BASETYPE_ERROR) { ErrMsgSemantic(typeTok, UNKNOWN_ERROR); continue; }
        if (crossModule && !isPublic(strFromTok(typeTok))) { ErrMsgSemantic(typeTok, TYPE_IS_PRIVATE); continue; }
        //M6a, same as the "error T.word" statement above: a lowercase word is the declaring module's own
        if (crossModule && hasWordTok && !isPublic(strFromTok(wordTok))) {
            ErrMsgSemantic(wordTok, ERROR_WORD_IS_PRIVATE);
            continue;
        }
        resolveTypeDecl(errType);

        bool produces = false;
        for (int j = 0; j < errors->len; j++) {
            struct type* e = *(struct type**)ListGetIdx(errors, j);
            if (TypeIsSame(*e, *errType)) { produces = true; break; }
        }
        if (!produces) { ErrMsgSemantic(typeTok, CATCH_ERROR_NOT_PRODUCED_BY_CALL); continue; }

        struct catchMatch cm = (struct catchMatch){0};
        cm.errType = *errType;
        if (hasWordTok) {
            long long wordIdx = -1;
            for (int w = 0; w < errType->words.len; w++) {
                struct token wt = *(struct token*)ListGetIdx(&errType->words, w);
                if (StrCmp(strFromTok(wt), strFromTok(wordTok))) { wordIdx = w; break; }
            }
            if (wordIdx < 0) { ErrMsgSemantic(wordTok, EXPECTED_ERROR_WORD); continue; }
            cm.hasWord = true;
            cm.wordOrdinal = wordIdx;
        }
        ListAdd(out, &cm);
    }
}

static void checkUncaughtPropagate(struct checkCtx* ctx, struct token tok, struct list* errors,
                                   struct list* matches) {
    //only an error type that ISN'T fully caught here needs to be declared in the enclosing function's own
    //signature - one that's fully caught can never actually escape, so it doesn't need anywhere to
    //propagate to (this also means try/catch can be used inside a test block, which has no error union of
    //its own, as long as every possible error is caught locally)
    for (int i = 0; i < errors->len; i++) {
        struct type* e = *(struct type**)ListGetIdx(errors, i);
        if (StatementCatchCoversType(matches, *e)) continue;
        if (ctx->inDefer) { ErrMsgSemantic(tok, DEFER_ERROR_ESCAPES); return; } //S19b
        if (!ctx->func) { ErrMsgSemantic(tok, TRY_OUTSIDE_FUNC); return; }
        bool found = false;
        for (int j = 0; j < ctx->func->type.errors.len; j++) {
            struct type* fe = *(struct type**)ListGetIdx(&ctx->func->type.errors, j);
            if (TypeIsSame(*e, *fe)) { found = true; break; }
        }
        if (!found && !lambdaInferError(ctx->func, e)) { ErrMsgSemantic(tok, TRY_ERROR_NOT_IN_SIGNATURE); return; }
    }

}

//R20/E31: marks every check in statements built under "try" by root, as markChecked does for an expression
static unsigned markCheckedStmts(struct list* stmts, struct operand* root, struct list* errs) {
    unsigned w = 0;
    for (int i = 0; i < stmts->len; i++) {
        struct statement* st = ListGetIdx(stmts, i);
        w |= markChecked(st->target, root, errs) | markChecked(st->op, root, errs) | markChecked(st->fillValue, root, errs);
        w |= markChecked(st->forInit, root, errs);
        if (st->forPost) {
            struct list one = ListInit(sizeof(struct statement));
            ListAdd(&one, st->forPost);
            w |= markCheckedStmts(&one, root, errs);
        }
        w |= markCheckedStmts(&st->block, root, errs);
        if (st->elseStmnt) {
            struct list one = ListInit(sizeof(struct statement));
            ListAdd(&one, st->elseStmnt);
            w |= markCheckedStmts(&one, root, errs);
        }
    }
    return w;
}

//E31: "try x[i] = v", "try x[i] op= v", "try x++" - the statement checked as "try (...)" checks an expression: the
//store (TrySetAt, or SetAt after a check against Len(); an array's bounds), the value, and an operator it implies
//(the Try forms, or the built-in checks). An error a clause takes continues after the statement.
struct statement buildTryStoreStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct token tok = firstTokOfType(s, TOK_TRY);
    struct syntax* inner = partSntx(s, 1);
    struct operand* root = operandNew(tok, OPERATION_SEQ, TypeVanilla(BASETYPE_VOID));
    root->comprBody = ListInit(sizeof(struct statement));
    root->isTryStmt = true;
    bool prevChecking = ctx->checkingTry;
    ctx->checkingTry = true;
    struct statement st;
    if (inner->type == SNTX_STMNT_ASSIGN) st = buildAssignStmnt(ctx, inner);
    else {
        struct syntax* prevRoot = ctx->incDecRoot;
        struct syntax* n = inner;
        while (n->parts.len == 1 && !partAt(n, 0)->isToken) n = partSntx(n, 0);
        ctx->incDecRoot = n;
        st = (struct statement){0};
        st.sType = STATEMENT_EXPR;
        st.op = buildExprFromSyntax(ctx, inner);
        ctx->incDecRoot = prevRoot;
    }
    ctx->checkingTry = prevChecking;
    //a hidden-locals wrapper ("if true { ... }") is flattened, so a clause's jump to after the statement leaves no
    //block of its own behind
    if (st.sType == STATEMENT_IF && !st.elseStmnt && st.op && st.op->isLiteral && st.op->opType == OPERATION_NONE
            && !st.op->isNullLiteral && st.block.len) {
        for (int i = 0; i < st.block.len; i++) ListAdd(&root->comprBody, ListGetIdx(&st.block, i));
    } else ListAdd(&root->comprBody, &st);
    struct list opErrs = ListInit(sizeof(struct type*));
    unsigned w = markCheckedStmts(&root->comprBody, root, &opErrs);
    struct statement out = (struct statement){0};
    out.sType = STATEMENT_EXPR;
    out.op = root;
    if (!w && !opErrs.len) { ErrMsgSemantic(tok, TRY_REQUIRES_FALLIBLE_CALL); return out; }
    struct list errors = ListInit(sizeof(struct type*));
    struct type* builtin = SemanticBuiltinErrorType();
    if (builtin && w) ListAdd(&errors, &builtin);
    for (int i = 0; i < opErrs.len; i++) ListAdd(&errors, ListGetIdx(&opErrs, i));
    root->isTried = true;
    if (firstPartOfType(s, SNTX_CATCH_CLAUSE)) {
        unsigned prevMask = builtinWordMask;
        if (w) builtinWordMask = w;
        buildCatchClauses(ctx, s, root, &errors, false, NULL, tok, &root->catchClauses);
        builtinWordMask = prevMask;
    } else {
        struct type et = (struct type){0};
        et.errors = errors;
        checkTrySuperset(ctx, tok, et);
    }
    return out;
}

struct statement buildTryCatchStmnt(struct checkCtx* ctx, struct syntax* s) {
    struct token tok = firstTokOfType(s, TOK_TRY);
    //parseStmntTryCatch takes a POSTFIX expression (so "try a[lo:hi] catch" reaches here at all rather than
    //stopping at the bare name); the PRIMARY fallback is for nothing in particular now, but costs nothing
    //and keeps this independent of which node shape the parser happened to build.
    struct syntax* primaryNode = firstPartOfType(s, SNTX_EXPR_POSTFIX);
    if (!primaryNode) primaryNode = firstPartOfType(s, SNTX_EXPR_PRIMARY);
    struct statement stmt = (struct statement){0};
    stmt.sType = STATEMENT_TRY_CATCH;

    bool prevAllow = ctx->allowFallibleCall, prevChecking = ctx->checkingTry;
    ctx->allowFallibleCall = true;
    ctx->checkingTry = !tryOperandIsWrittenCall(primaryNode);
    struct operand* callOp = buildExprFromSyntax(ctx, primaryNode);
    ctx->allowFallibleCall = prevAllow;
    ctx->checkingTry = prevChecking;
    stmt.op = callOp;

    //the catch-STATEMENT form handles a fallible call. A tried slice (E16c) is deliberately not accepted
    //here: this form discards the value it guarded, which for a call is the point (control flow only, C7)
    //and for a slice leaves nothing behind but the bounds check - so the slice would have to be written
    //again to be used. Propagate it instead ("s := try a[lo:hi]") and catch at the call site, which is
    //where a value and its handling can meet.
    if (callOp->opType == OPERATION_SLICE) {
        ErrMsgSemantic(tok, TRY_CATCH_ON_SLICE);
        return stmt;
    }
    if (callOp->opType != OPERATION_FUNCCALL || callOp->readVar->type.errors.len == 0) {
        ErrMsgSemantic(tok, TRY_REQUIRES_FALLIBLE_CALL);
        return stmt;
    }

    buildCatchClauses(ctx, s, callOp, &callOp->readVar->type.errors, false, NULL, tok, &stmt.catchClauses);
    return stmt;
}

static struct statement buildStatementInner(struct checkCtx* ctx, struct syntax* s);

void flushPendingDischarges(void);
struct statement buildStatement(struct checkCtx* ctx, struct syntax* s) {
    struct token t = firstTokAnywhere(partSntx(s, 0));
    struct token prevOrigin = obligationOrigin;
    obligationOrigin = t;
    struct statement st = buildStatementInner(ctx, s);
    flushPendingDischarges(); //O18a: every landing site in the statement is resolved by now
    obligationOrigin = prevOrigin;
    st.line = t.lineNr;
    if (t.owner) st.file = TokenGetFileName(t.owner);
    return st;
}

static struct statement buildStatementInner(struct checkCtx* ctx, struct syntax* s) {
    struct syntax* actual = partSntx(s, 0);
    switch (actual->type) {
        case SNTX_VAR_DECL: return buildVarDeclStmnt(ctx, actual);
        case SNTX_STMNT_ASSIGN: return buildAssignStmnt(ctx, actual);
        case SNTX_STMNT_IF: return buildIfStmnt(ctx, actual);
        case SNTX_STMNT_FOR: return buildForStmnt(ctx, actual);
        case SNTX_STMNT_FOR_IN: return buildForInStmnt(ctx, actual);
        case SNTX_STMNT_DO: return buildDoStmnt(ctx, actual);
        case SNTX_STMNT_MATCH: return buildMatchStmnt(ctx, actual);
        case SNTX_STMNT_RET: return buildRetStmnt(ctx, actual);
        case SNTX_STMNT_JOIN: return buildJoinStmnt(ctx, actual);
        case SNTX_STMNT_SPAWN: return buildSpawnStmnt(ctx, actual);
        case SNTX_STMNT_DEFER: return buildDeferStmnt(ctx, actual);
        case SNTX_STMNT_BREAK: return buildBreakStmnt(ctx, actual, STATEMENT_BREAK);
        case SNTX_STMNT_CONTINUE: return buildBreakStmnt(ctx, actual, STATEMENT_CONTINUE);
        case SNTX_STMNT_ABORT: return buildAbortLikeStmnt(ctx, actual, STATEMENT_ABORT);
        case SNTX_STMNT_UNREACHABLE: return buildAbortLikeStmnt(ctx, actual, STATEMENT_UNREACHABLE);
        case SNTX_STMNT_DONE: return buildDoneStmnt(ctx, actual);
        case SNTX_STMNT_FAIL: return buildFailStmnt(ctx, actual);
        case SNTX_STMNT_ASSERT: return buildAssertStmnt(ctx, actual);
        case SNTX_STMNT_ERROR: return buildErrorStmnt(ctx, actual);
        case SNTX_STMNT_TRY_CATCH: return buildTryCatchStmnt(ctx, actual);
        case SNTX_STMNT_TRY_STORE: return buildTryStoreStmnt(ctx, actual);
        case SNTX_STMNT_EXPR: return buildExprStmnt(ctx, actual);
        default: ErrorBugFound(); return (struct statement){0};
    }
}

//checks one monomorphized copy's body: the same syntax the generic declared, against the copy's own
//substituted parameter types (G16). Identical to the ordinary function-body path in semaCheckBodies -
//that is the whole point, the copy is not special in any way once its types are concrete.
static void checkInstantiationBodyIn(struct instantiation* inst, struct var* spec);
void checkInstantiationBody(struct instantiation* inst) {
    struct var* spec = inst->specialized;
    if (!spec->bodySyntax || spec->bodyState) return; //O10b: checked already, on demand (ensureBodyChecked)
    spec->bodyState = 1;
    struct semaModule* savedScope = SemanticMethodScope;
    SemanticMethodScope = inst->generic->type.owner; //M22: the generic's code sees the generic's imports
    checkInstantiationBodyIn(inst, spec);
    SemanticMethodScope = savedScope;
    spec->bodyState = 2;
}

static void checkInstantiationBodyIn(struct instantiation* inst, struct var* spec) {
    struct scope fnScope = scopePush(NULL);
    for (int p = 0; p < spec->type.vars.len; p++) {
        struct var* param = ListGetIdx(&spec->type.vars, p);
        rejectShadowing(inst->generic->type.owner, param->name, param->tok); //D3a
        struct var* local = VarAllocSetOrigin();
        *local = *param;
        local->origin = param;
        local->mayBeInitialized = true;
        local->paramOf = spec; //O23a
        ListAdd(&fnScope.localPtrs, &local);
    }
    struct checkCtx ctx = {0};
    ctx.mod = inst->generic->type.owner;
    ctx.scope = &fnScope;
    ctx.func = spec;
    ctx.hasOwnScope = true;
    ctx.bodyId = bodyBegin(); //S8b
    struct list* savedBindings = currentBindings;
    //a copy of the list header, not a pointer into inst: inst lives in the instantiations list, which
    //reallocates when this body instantiates something new - and the bindings were then read from freed memory
    struct list bindings = inst->bindings;
    currentBindings = &bindings;
    spec->codeBlock = buildBlock(&ctx, spec->bodySyntax);
    bodyEnd(ctx.bodyId, spec->codeBlock);
    if (spec->type.hasRetType && !blockAlwaysExits(&spec->codeBlock)) { //D10a, per instantiation (G18)
        ErrMsgSemantic(spec->tok, MISSING_RETURN);
    }
    currentBindings = savedBindings; //restored, not nulled: instantiations can nest
}

//drains the instantiation queue to a fixed point. Checking one copy's body can create more (a generic
//calling another generic, or itself with different arguments), so this is a worklist rather than one
//pass. G17's termination guarantee is what stops it: a generic whose instantiation needs an
//ever-growing set of further instantiations is rejected, here, by a depth cap.
struct list* SemanticAllInstantiations(void) { return &instantiations; }
struct list* SemanticAllTypeInstantiations(void) { return &typeInstantiations; }

bool SemanticHasPendingInstantiations(void) {
    return pendingInstances.len != 0 || pendingTypeInsts.len != 0;
}

void semaDrainInstantiations(void) {
    int rounds = 0;
    while (pendingInstances.len != 0) {
        if (++rounds > 1000) { //G17 - implementation-defined depth
            struct instantiation* inst = ListGetIdx(&instantiations, *(int*)ListGetIdx(&pendingInstances, 0));
            ErrMsgSemantic(inst->generic->tok, UNBOUNDED_INSTANTIATION);
            return;
        }
        struct list batch = pendingInstances;
        pendingInstances = ListInit(sizeof(int));
        for (int i = 0; i < batch.len; i++) {
            checkInstantiationBody(ListGetIdx(&instantiations, *(int*)ListGetIdx(&batch, i)));
        }
    }
}

//the same drain for generic struct types. Separate loop, same fixed-point shape: building one copy's
//constructor body can instantiate further generics, of either kind.
void drainTypeInstantiations(void) {
    int rounds = 0;
    while (pendingTypeInsts.len != 0) {
        if (++rounds > 1000) { //G17 - implementation-defined depth, same cap as the function case
            struct pendingTypeInst* p = ListGetIdx(&pendingTypeInsts, 0);
            ErrMsgSemantic(p->spec->tok, UNBOUNDED_INSTANTIATION);
            return;
        }
        struct list batch = pendingTypeInsts;
        pendingTypeInsts = ListInit(sizeof(struct pendingTypeInst));
        for (int i = 0; i < batch.len; i++) {
            struct pendingTypeInst* p = ListGetIdx(&batch, i);
            struct list* saved = currentBindings;
            currentBindings = &p->bindings;
            buildTypeBodies(p->spec->owner, p->spec);
            currentBindings = saved; //restored, not nulled: instantiations can nest
        }
    }
}

//builds a struct type's constructor body (a single "return Type{f1, f2, ...}" - see the report for why
//this needs no dedicated codegen of its own) and its destructor body, if it declares one. Factored out of
//semaCheckBodies so an instantiation of a generic type can run the very same construction against its own
//substituted field/parameter types (G16) - the copy is not special, it just needs its body built too.
//T29d: the body is checked like any function's; "return" is rejected as in any constructor, and the parameter's
//final value, as the type, is what it returns
static void buildPrimCtorBody(struct semaModule* mod, struct type* t) {
    struct var* f = t->ctorFunc;
    if (!f || f->type.vars.len != 1) return;
    struct scope fnScope = scopePush(NULL);
    struct var* param = ListGetIdx(&f->type.vars, 0);
    rejectShadowing(mod, param->name, param->tok);
    struct var* local = VarAllocSetOrigin();
    *local = *param;
    local->origin = param;
    local->mayBeInitialized = true;
    ListAdd(&fnScope.localPtrs, &local);
    struct checkCtx ctx = {0};
    ctx.mod = mod;
    ctx.scope = &fnScope;
    ctx.func = f;
    ctx.hasOwnScope = true;
    ctx.inCtor = true;
    ctx.bodyId = bodyBegin();
    f->codeBlock = buildBlock(&ctx, t->ctorBodySyntax);
    bodyEnd(ctx.bodyId, f->codeBlock);
    struct operand* val = OperandReadVar(local, param->tok);
    val->type = *t;
    struct statement ret = (struct statement){0};
    ret.sType = STATEMENT_RET;
    ret.op = val;
    StatementAdd(&f->codeBlock, ret);
}

static void buildTypeBodiesIn(struct semaModule* mod, struct type* t);
void buildTypeBodies(struct semaModule* mod, struct type* t) {
    struct semaModule* savedScope = SemanticMethodScope;
    SemanticMethodScope = mod;
    buildTypeBodiesIn(mod, t);
    SemanticMethodScope = savedScope;
}

static void buildTypeBodiesIn(struct semaModule* mod, struct type* t) {
    //---- constructor body: a single "return Type{field1, field2, ...}" - see the report for why
    //this needs no dedicated codegen of its own (cgFunction/cgRet/OperandStructLiteral's existing
    //aggregate-literal codegen already do everything this needs) ----
    struct scope ctorScope = scopePush(NULL);
    for (int p = 0; p < t->ctorFunc->type.vars.len; p++) {
        struct var* param = ListGetIdx(&t->ctorFunc->type.vars, p);
        rejectShadowing(mod, param->name, param->tok); //D3a
        struct var* local = VarAllocSetOrigin();
        *local = *param;
        local->origin = param; //canonicalVar traces this copy back to the type-level original
        local->mayBeInitialized = true;
        //D9, same as the function-body case above: a constructor parameter is immutable unless
        //declared "mut"
        ListAdd(&ctorScope.localPtrs, &local);
    }
    struct checkCtx cctx = {0};
    cctx.mod = mod;
    cctx.scope = &ctorScope;
    cctx.func = t->ctorFunc;
    cctx.hasOwnScope = true;

    cctx.inCtor = true;
    t->ctorFunc->codeBlock = ListInit(sizeof(struct statement));

    //the constructor's body, walked in TEXTUAL order: a field declaration and an ordinary statement are
    //both just items here, and a statement's position relative to the fields around it is what decides
    //when it runs (C12). A field additionally declares a local of its own name, so everything after it -
    //a later field's initializer, an "if ... error" check - can read the value it just computed; the
    //instance is assembled from those locals once the body completes normally (C6).
    struct list fieldArgs = ListInit(sizeof(struct operand*));
    struct list bodyParts = allSyntaxParts(t->ctorBodySyntax);
    int fieldIdx = 0;
    for (int b = 0; b < bodyParts.len; b++) {
        struct syntax* part = *(struct syntax**)ListGetIdx(&bodyParts, b);
        if (part->type != SNTX_CTOR_FIELD) {
            struct list built = ListInit(sizeof(struct statement));
            buildStatementsInto(&cctx, part, &built);
            for (int k = 0; k < built.len; k++) StatementAdd(&t->ctorFunc->codeBlock, *(struct statement*)ListGetIdx(&built, k));
            continue;
        }
        //a field pass 2 rejected outright (a duplicate name) never made it into t->vars, so it has no
        //slot to fill here either - the error is already reported, just don't run off the end
        if (fieldIdx >= t->vars.len) continue;
        struct var* field = ListGetIdx(&t->vars, fieldIdx);
        struct syntax* f = *(struct syntax**)ListGetIdx(&t->ctorFieldSyntax, fieldIdx);
        fieldIdx++;
        struct syntax* typeExprNode = firstPartOfType(f, SNTX_TYPE_EXPR);
        struct syntax* rhsNode = firstPartOfType(f, SNTX_EXPR);
        bool isPun = !typeExprNode && !rhsNode;
        //C4a: a field is an ordinary local of the constructor, so this chain is buildVarDeclStmnt's,
        //applied to the same three rules - D13's zero value, D13a's uninitialized declared-size array,
        //D13b's element fill. The only thing a field does that a local does not is outlive the call.
        struct operand* fieldOp;
        struct operand* fillValue = NULL;
        if (rhsNode && field->inlineState == 1) {
            //C2e: stored inline - the allocation the call would make is the field's own storage, zeroed or
            //filled in place
            struct operand* alloc = buildExprFromSyntax(&cctx, rhsNode);
            fieldOp = NULL;
            if (alloc->opType == OPERATION_SIZED_ARRAY_ALLOC && alloc->args.len > 1) fillValue = *(struct operand**)ListGetIdx(&alloc->args, 1);
        } else if (rhsNode) {
            fieldOp = buildExprFromSyntax(&cctx, rhsNode);
            if (field->inlineState == 2 && fieldOp->opType == OPERATION_SIZED_ARRAY_ALLOC) {
                struct inlinePending ip = { TokenGetFileName(field->tok.owner), field->tok.lineNr, field->name,
                                            *(struct operand**)ListGetIdx(&fieldOp->args, 0) };
                ListAdd(&inlinePendings, &ip);
            }
            if (typeExprNode) {
                reportTypeFit(OperandFitsType(cctx.func, fieldOp, field->type), fieldOp->tok);
            } else { // ":=" - type read straight off the rhs (D15)
                field->type = inferredDeclType(cctx.func, fieldOp);
                //T25b: the field's own "mut" is its permission; a writable field cannot hold a read-only reference
                if (TypeIsPermRef(field->type)) {
                    if (field->mut && !OperandGivesWritable(fieldOp)) ErrMsgSemantic(fieldOp->tok, READ_ONLY_TO_WRITABLE);
                    field->type.refMut = field->mut;
                }
            }
        } else if (typeExprNode) {
            fieldOp = zeroValueFor(&cctx, field->type, field->tok, false); //D13/D13a/D13c - see cgVarDecl
        } else {
            //bare pun - already resolved against a same-named parameter's type in pass 2
            struct var* param = scopeFindLocal(&ctorScope, field->name);
            fieldOp = param ? OperandReadVar(param, field->tok) : operandNew(field->tok, OPERATION_NONE, field->type);
        }
        //persisted once, at this field's own declaration, so any later caller's "instance.field"
        //access (OperandMember) can compose through it - see the "field of a field" entry in the
        //report. Empty (the common case) whenever fieldOp itself carries no map - an ordinary
        //field whose own type isn't constructor-bearing, or one with no scope variables.
        field->scopeBindings = fieldOp ? fieldOp->scopeBindings : (struct list){0};
        //C2d/O18a: what the initializer built with nothing to determine it lands in the instance - recorded as
        //such for a later "instance.field.x" to resolve, on a copy, since codegen reads the call's own
        if (fieldOp && fieldOp->scopeBindings.len > 0) {
            struct list landed = ListInit(sizeof(struct scopeBinding));
            for (int k = 0; k < fieldOp->scopeBindings.len; k++) {
                struct scopeBinding e = *(struct scopeBinding*)ListGetIdx(&fieldOp->scopeBindings, k);
                if (e.landing) { e.landing = false; e.boundTo = field->type.scopeParam ? field->type.scopeParam : t->hereVar; }
                ListAdd(&landed, &e);
            }
            field->scopeBindings = landed;
        }
        //a bare pun declares no local of its own: the same-named parameter already carries both the name
        //and the value, and re-declaring it would collide with it (VAR_NAME_IN_USE) for no gain
        if (!isPun) {
            struct var* local = scopeDeclare(mod, &ctorScope, field->name, field->tok, field->type, true);
            local->scopeBindings = field->scopeBindings;
            struct statement decl = (struct statement){0};
            decl.sType = STATEMENT_VAR_DECL;
            decl.var = *local;
            decl.op = fieldOp;
            decl.fillValue = fillValue;
            decl.ctorField = true;
            decl.zeroFill = field->inlineState == 1 && !fillValue;
            StatementAdd(&t->ctorFunc->codeBlock, decl);
            fieldOp = OperandReadVar(local, field->tok);
        }
        //T7a: a field holding an array by value would be shared, not copied, when the instance is
        if (field->type.bType == BASETYPE_ARRAY && field->type.arrMalloc && !field->type.structMAlloc
                && field->inlineState != 2) {
            ErrMsgSemantic(field->tok, field->inlineState == 0 ? ARRAY_NESTED_BY_VALUE : ARRAY_FIELD_SIZE_NOT_COMPUTED);
        }
        ListAdd(&fieldArgs, &fieldOp);
    }
    struct operand* built = OperandStructLiteral(cctx.func, *t, fieldArgs, t->tok);
    struct statement retStmt = (struct statement){0};
    retStmt.sType = STATEMENT_RET;
    retStmt.op = built;
    StatementAdd(&t->ctorFunc->codeBlock, retStmt);

    //---- destructor body: no error union of its own (ctx.func stays NULL, same as a test{}
    //block) - a fallible call inside must be fully caught right here, since a destructor can never
    //propagate a failure to anyone (see the report) ----
    if (t->hasDestruct) {
        struct scope dtorScope = scopePush(NULL);
        struct var* selfParam = ListGetIdx(&t->destructFunc->type.vars, 0);
        struct var* selfLocal = VarAllocSetOrigin();
        *selfLocal = *selfParam;
        selfLocal->origin = selfParam; //canonicalVar traces this copy back to the type-level original
        selfLocal->mayBeInitialized = true;
        selfLocal->mut = true;
        ListAdd(&dtorScope.localPtrs, &selfLocal);

        struct checkCtx dctx = {0};
        dctx.mod = mod;
        dctx.scope = &dtorScope;
        dctx.hasOwnScope = true;
        dctx.destructSelfVar = selfLocal;
        t->destructFunc->codeBlock = buildBlock(&dctx, t->destructBlockSyntax);
        //C7a: a destructor that does nothing is not a destructor - reference-only is not what it is for
        if (t->destructFunc->codeBlock.len == 0) ErrMsgSemantic(firstTokAnywhere(t->destructBlockSyntax), EMPTY_DESTRUCTOR);
    }
}

//a global's initializer, built in a pass of its own - after every signature is resolved, before any body
//is checked, imports first. It has to come that early because a global's TYPE can depend on it: ":="
//reads the type off it, and "T[] = <literal>" adopts the literal's length (D15) exactly as a local does.
//Built while its own module's bodies were checked, it came too late for a body in another module that
//read the global first - which saw a length-less "T[]" - and the length was never adopted at all, so the
//global stayed runtime-length and its initializer tried to allocate from a scope no global has.
void semaBuildGlobalInits(struct semaModule* mod) {
    SemanticMethodScope = mod;
    for (int i = 0; i < mod->syn.decls.len; i++) {
        struct syntax* decl = ListGetIdx(&mod->syn.decls, i);
        struct syntax* actual = partSntx(decl, 0);
        if (actual->type != SNTX_VAR_DECL) continue;
        struct token nameTok = firstTokOfType(actual, TOK_IDEN);
        struct var* v = VarGetList(&mod->vars, strFromTok(nameTok));
        struct checkCtx ctx = {0};
        ctx.mod = mod;
        struct syntax* exprNode = firstPartOfType(actual, SNTX_EXPR);
        //D15a: a global with no initializer is its type's zero value, which is exactly what
        //emitGlobalDecls already emits for every global - real BSS, so there is nothing to do here and
        //nothing to pay for. A global array is therefore zero-filled where a LOCAL one is left
        //uninitialized (D15b): the zeroing is the loader's, not a memset this program runs, so there is no
        //cost to remove. Anything reference-shaped within it is null (T2a), which is what makes this
        //legal at all - D13 used to reject it, on the grounds that a zero-filled reference was an
        //invisible dangling pointer with no way to test it.
        if (!exprNode) {
            v->initExpr = zeroValueFor(&ctx, v->type, nameTok, false); //D13c: a constructor's zero value, if not zero bits
            continue;
        }
        struct operand* rhs = buildExprFromSyntax(&ctx, exprNode);
        if (firstPartOfType(actual, SNTX_TYPE_EXPR)) {
            if (v->type.bType == BASETYPE_ARRAY && !v->type.arrMalloc && rhs->isLiteral) {
                ErrMsgSemantic(rhs->tok, REDUNDANT_ARRAY_SIZE);
            }
            reportTypeFit(OperandFitsType(ctx.func, rhs, v->type), rhs->tok);
        } else { // ":=" - type read straight off the initializer
            v->type = inferredDeclType(ctx.func, rhs);
            //O1b: a global lives in the program's own scope - never in a callee's result scope, which is
            //meaningless outside the call (and crashed code generation when the global was set at startup)
            v->type.scopeParam = NULL;
            v->type.scopeWritten = false;
        }
        v->initExpr = rhs;
    }
}

//O10b: set once function bodies are being checked - before that, global initializers are being built, and a body
//checked then could read a global whose own type is not finished
static bool bodiesPhase;
static void checkFuncBody(struct semaModule* mod, struct var* func);
void semaCheckBodies(struct semaModule* mod) {
    bodiesPhase = true;
    SemanticMethodScope = mod;
    for (int i = 0; i < mod->syn.decls.len; i++) {
        struct syntax* decl = ListGetIdx(&mod->syn.decls, i);
        struct syntax* actual = partSntx(decl, 0);

        if (actual->type == SNTX_VAR_DECL) continue; //built earlier, by semaBuildGlobalInits
        if (actual->type == SNTX_TEST_DECL) {
            struct checkCtx ctx = {0};
            ctx.mod = mod;
            ctx.hasOwnScope = true;
            ctx.bodyId = bodyBegin(); //S8b
            ctx.inTest = true;
            struct semaTest test = (struct semaTest){0};
            struct token descTok = firstTokOfType(actual, TOK_STR_LIT);
            test.description = Str(descTok.str.ptr +1, descTok.str.len -2);
            test.codeBlock = buildBlock(&ctx, firstPartOfType(actual, SNTX_BLOCK));
            bodyEnd(ctx.bodyId, test.codeBlock);
            ListAdd(&mod->tests, &test);
            continue;
        }
        if (actual->type == SNTX_TYPE_DECL) {
            struct token nameTok = firstTokOfType(actual, TOK_IDEN);
            struct type* t = typeNamed(mod, strFromTok(nameTok));
            if (!t->hasCtor) continue;
            if (t->bType != BASETYPE_STRUCT) { buildPrimCtorBody(mod, t); continue; } //T29d
            //G16, same rule the function case below states in full: an uninstantiated generic's body is
            //never built as written. buildTypeBodies runs once per instantiation instead.
            if (t->typeParams.len != 0) continue;
            buildTypeBodies(mod, t);
            continue;
        }
        if (actual->type != SNTX_FUNC_DEF) continue;

        struct token nameTok = firstTokOfType(actual, TOK_IDEN);
        struct var* func = varForDecl(mod, nameTok);

        //G16: an uninstantiated generic's body is never checked as written - its parameter types are type
        //variables with no size, no fields and no operations, so almost anything the body does would
        //either crash the checker or produce a meaningless diagnostic. The body is checked once per
        //instantiation instead, against real types, exactly as if it had been written out by hand.
        //bodySyntax is set in semaResolveModule, not here - see the comment there for why the timing
        //matters
        if (func->type.typeParams.len != 0) continue;
        checkFuncBody(mod, func);
    }
}

//one function's body, once (O10b): in declaration order from semaCheckBodies, or out of order from a call reaching a
//function whose body is not checked yet (ensureBodyChecked), since its obligations are part of its signature
static void checkFuncBody(struct semaModule* mod, struct var* func) {
    if (func->bodyState) return;
    func->bodyState = 1;
    {
        struct scope fnScope = scopePush(NULL);
        for (int p = 0; p < func->type.vars.len; p++) {
            struct var* param = ListGetIdx(&func->type.vars, p);
            rejectShadowing(mod, param->name, param->tok); //D3a: a parameter is a local of the body
            struct var* local = VarAllocSetOrigin();
            *local = *param;
            local->origin = param; //canonicalVar traces this copy back to the type-level original
            local->mayBeInitialized = true;
            local->paramOf = func; //O23a
            //D9: a parameter is immutable unless declared "mut" - unlike an ordinary local (D11), where
            //"mut" is accepted but has no effect. This used to force mut = true for parameters too, which
            //made D9 unenforced: any parameter was assignable regardless of how it was declared.
            ListAdd(&fnScope.localPtrs, &local);
        }

        struct checkCtx ctx = {0};
        ctx.mod = mod;
        ctx.scope = &fnScope;
        ctx.func = func;
        ctx.hasOwnScope = true;
        ctx.bodyId = bodyBegin(); //S8b
        int errsBefore = ErrMsgGetNErrors();
        func->codeBlock = buildBlock(&ctx, func->bodySyntax);
        bodyEnd(ctx.bodyId, func->codeBlock);
        func->bodyHadErrors = ErrMsgGetNErrors() != errsBefore; //K3
        //D10a: a declared result type has to be produced on every path. Falling off the end used to
        //return a silently zero value - 0, an all-zero struct, or a null reference.
        if (func->type.hasRetType && !blockAlwaysExits(&func->codeBlock)) {
            ErrMsgSemantic(func->tok, MISSING_RETURN);
        }
    }
    func->bodyState = 2;
}

//O10b: a call checks what its callee's body requires of it (the obligations), which is known once that body has been
//checked. Bodies are checked in declaration order, module by module, and instantiations after all of them - so a call
//to a function declared later, in a module checked later, or to an instantiation, checks the callee's body first,
//here. A function being checked further up this chain (a cycle) is left as it is: its obligation set is still
//growing, and the calls that saw only part of it are re-checked once every body is (dischargeLateObligations).
//What a body check reads and leaves in globals is put aside around it, since this runs in the middle of the
//caller's own statement.
static int onDemandDepth;
static void ensureBodyChecked(struct var* func) {
    //never under muted errors: a probe's call is never run, and a body checked there would have its own errors
    //swallowed for good - it is checked at its first real call, or with the others
    if (!bodiesPhase || !func || func->bodyState || onDemandDepth >= 48 || ErrMsgMuted()) return;
    if (func->type.isExtern || func->isLambda || func->type.typeParams.len || !func->bodySyntax) return;
    struct instantiation inst = (struct instantiation){0};
    bool isInst = false;
    for (int i = 0; i < instantiations.len && !isInst; i++) {
        struct instantiation* in = ListGetIdx(&instantiations, i);
        if (in->specialized == func) { inst = *in; isInst = true; }
    }
    if (!isInst && (!func->owner || !func->type.owner)) return;
    struct list* savedBindings = currentBindings;
    struct list* savedTypeParamNames = currentTypeParamNames;
    struct semaModule* savedMethodScope = SemanticMethodScope;
    struct list savedPending = pendingDischarges;
    struct token savedOrigin = obligationOrigin;
    struct list* savedPrebuilt = prebuiltMethodArgs;
    struct comprSpec* savedCompr = comprActive;
    bool savedHashNull = hashNullGuarded, savedExits = exitsCountLoopJumps, savedConstraint = resolvingConstraint;
    bool savedImplicit = implicitParamScopes, savedByVar = scopeTagByVariable;
    struct list* savedTagParams = scopeTagParams;
    struct list* savedTagFields = scopeTagFields;
    struct checkCtx* savedTagBody = scopeTagBody;
    int savedTagDepth = scopeTagDepth;
    pendingDischarges = ListInit(sizeof(struct pendingDischarge));
    currentBindings = NULL;
    currentTypeParamNames = NULL;
    prebuiltMethodArgs = NULL;
    comprActive = NULL;
    hashNullGuarded = exitsCountLoopJumps = resolvingConstraint = implicitParamScopes = scopeTagByVariable = false;
    scopeTagParams = scopeTagFields = NULL;
    scopeTagBody = NULL;
    onDemandDepth++;
    if (isInst) checkInstantiationBody(&inst);
    else {
        SemanticMethodScope = func->type.owner;
        checkFuncBody(func->type.owner, func);
    }
    onDemandDepth--;
    currentBindings = savedBindings;
    currentTypeParamNames = savedTypeParamNames;
    SemanticMethodScope = savedMethodScope;
    pendingDischarges = savedPending;
    obligationOrigin = savedOrigin;
    prebuiltMethodArgs = savedPrebuilt;
    comprActive = savedCompr;
    hashNullGuarded = savedHashNull;
    exitsCountLoopJumps = savedExits;
    resolvingConstraint = savedConstraint;
    implicitParamScopes = savedImplicit;
    scopeTagByVariable = savedByVar;
    scopeTagParams = savedTagParams;
    scopeTagFields = savedTagFields;
    scopeTagBody = savedTagBody;
    scopeTagDepth = savedTagDepth;
}

// ---- entry point ----

//B10: the build constants, as a module of their own - first in the list, so its globals are set before
//any other module's (B5a), with no source and one immutable global per constant. Every module sees them
//by bare name (lookupVar's last resort); they are ordinary globals in every other respect, which is what
//makes a text constant borrowable and a numeric one typed exactly as its literal would be.

static struct semaModule* makeBuildModule(void) {
    struct semaModule* mod = MallocOrCrash(sizeof(struct semaModule));
    *mod = (struct semaModule){0};
    mod->fileName = StrFromCStr("<build constants>");
    mod->identity = StrFromCStr("olang_build");
    mod->canonical = mod->fileName;
    mod->types = ListInit(sizeof(struct type));
    mod->vars = ListInit(sizeof(struct var));
    mod->imports = ListInit(sizeof(struct semaImport));
    mod->tests = ListInit(sizeof(struct semaTest));
    mod->files = ListInit(sizeof(char*));
    mod->declaredTypeNames = ListInit(sizeof(struct str));
    mod->syn.decls = ListInit(sizeof(struct syntax));
    ListAdd(&allModules, &mod);
    struct list* bcs = SyntaxBuildConsts();
    for (int i = 0; i < bcs->len; i++) {
        struct buildConst* b = ListGetIdx(bcs, i);
        struct token tok = (struct token){0};
        tok.str = b->text;
        tok.lineNr = 0;
        struct operand* init;
        switch (b->kind) {
            case BUILD_BOOL:
                tok.type = TOK_BOOL_LIT;
                tok.str = StrFromCStr(b->i ? "true" : "false");
                init = OperandBoolLiteral(tok);
                break;
            case BUILD_INT:
                tok.type = TOK_INT_LIT;
                init = OperandIntLiteralValue(tok, b->i, b->u64); //the value -D gave, read once (B10)
                break;
            case BUILD_FLOAT:
                tok.type = TOK_FLOAT_LIT;
                init = OperandFloatLiteral(tok);
                break;
            default: {
                //a string literal token carries its quotes and escapes, which codegen decodes
                char* q = MallocOrCrash((size_t)b->text.len * 2 + 3);
                int n = 0;
                q[n++] = '"';
                for (int c = 0; c < b->text.len; c++) {
                    char ch = b->text.ptr[c];
                    if (ch == '"' || ch == '\\') q[n++] = '\\';
                    q[n++] = ch;
                }
                q[n++] = '"';
                tok.type = TOK_STR_LIT;
                tok.str = Str(q, n);
                init = OperandStringLiteral(tok);
            }
        }
        struct var v = (struct var){0};
        v.owner = mod;
        v.name = b->name;
        struct token nameTok = (struct token){0};
        nameTok.type = TOK_IDEN;
        nameTok.str = b->name;
        v.tok = nameTok;
        v.mut = false;
        v.type = init->type;
        v.initExpr = init;
        v.mayBeInitialized = true;
        ListAdd(&mod->vars, &v);
    }
    return mod;
}


//T35b: a type every module sees without declaring or importing it - one the prelude exports
struct type* SemanticBuiltinType(struct str name) {
    return preludeType(name);
}

//BuiltinError (prelude): what a check written with "try" fails with, and which word, by name
struct type* SemanticBuiltinErrorType(void) { return SemanticBuiltinType(StrFromCStr("BuiltinError")); }
int SemanticBuiltinErrorWord(char* word) {
    struct type* t = SemanticBuiltinErrorType();
    for (int i = 0; t && i < t->words.len; i++) {
        if (StrCmp(strFromTok(*(struct token*)ListGetIdx(&t->words, i)), StrFromCStr(word))) return i;
    }
    return 0;
}


static struct var* buildConstVar(struct str name) {
    return buildModule ? VarGetList(&buildModule->vars, name) : NULL;
}

bool SemanticIsBuildConst(struct var* v) { return v && buildModule && v->owner == buildModule; }

static struct semaModule* analyzeOnce(char* fileName, bool requireMain) {
    int errsAtStart = ErrMsgGetNErrors();
    nextBodyId = 0; //S8b: every attempt rebuilds every body
    fixedCacheReset();
    bodiesPhase = false; //O10b
    assertRecs = ListInit(sizeof(struct assertRec)); //S18c
    defaultRecs = ListInit(sizeof(struct defaultRec)); //D8a
    litCtorRecs = ListInit(sizeof(struct litCtorRec)); //T29d
    literalShifts = ListInit(sizeof(struct operand*)); //E4a
    zeroRecs = ListInit(sizeof(struct zeroRec)); //D13c
    inlinePendings = ListInit(sizeof(struct inlinePending)); //C2e
    pendingDischarges = ListInit(sizeof(struct pendingDischarge)); //O18a
    callRecs = ListInit(sizeof(struct callRec)); //O10c
    bareErrorType = (struct type){0};
    bareErrorType.bType = BASETYPE_ERROR;
    bareErrorType.name = StrFromCStr("error");
    bareErrorType.words = ListInit(sizeof(struct token));
    struct token bareErrorWord = (struct token){0};
    bareErrorWord.type = TOK_IDEN;
    bareErrorWord.str = StrFromCStr("error");
    ListAdd(&bareErrorType.words, &bareErrorWord);

    instantiations = ListInit(sizeof(struct instantiation));
    allLambdas = ListInit(sizeof(struct var*)); //D16
    strMethods = ListInit(sizeof(struct strMethod)); //E11c
    funcValueUses = ListInit(sizeof(struct funcValueUse)); //T22a
    typeInstantiations = ListInit(sizeof(struct type*));
    unboundedReported = ListInit(sizeof(struct token)); //G17
    pendingInstances = ListInit(sizeof(int));
    pendingTypeInsts = ListInit(sizeof(struct pendingTypeInst));
    allModules = ListInit(sizeof(struct semaModule*));
    buildModule = makeBuildModule();
    //T35b: the prelude - ordinary olang in <std>/prelude, part of every program. Loaded first, so its
    //names are collected before any module that might try to reuse one
    preludeModules = ListInit(sizeof(struct semaModule*));
    char preludePath[PATH_MAX + 16];
    snprintf(preludePath, sizeof(preludePath), "%s/prelude", stdRoot());
    struct list pfiles = olangFilesIn(preludePath);
    //every prelude file's type names, before any of them is parsed: they name each other's types (Iterator's Map
    //builds a List), and they are parsed one after another
    preludeTypeNames = ListInit(sizeof(struct str));
    for (int i = 0; i < pfiles.len; i++) {
        TokenCtx ptc = TokenizeFile(*(char**)ListGetIdx(&pfiles, i));
        struct scanResult ps = ScanTopLevelDecls(ptc);
        ListAddList(&preludeTypeNames, ps.typeNames);
    }
    for (int i = 0; i < pfiles.len; i++) {
        struct semaModule* pm = semaLoadModule(StrFromCStr(*(char**)ListGetIdx(&pfiles, i)));
        ListAdd(&preludeModules, &pm);
    }
    //M23b: the lock file sits beside the root module
    {
        char rd[PATH_MAX];
        snprintf(rd, sizeof(rd), "%s", fileName);
        char* sl = strrchr(rd, '/');
        if (sl) *sl = '\0'; else snprintf(rd, sizeof(rd), ".");
        snprintf(lockPath, sizeof(lockPath), "%s/olang.lock", rd);
    }
    rootModule = semaLoadModule(StrFromCStr(fileName));
    checkDuplicateImportReachability();

    for (int i = 0; i < allModules.len; i++) semaCollectNames(*(struct semaModule**)ListGetIdx(&allModules, i));
    for (int i = 0; i < allModules.len; i++) semaResolveModule(*(struct semaModule**)ListGetIdx(&allModules, i));
    for (int i = 0; i < allModules.len; i++) {
        struct semaModule* m = *(struct semaModule**)ListGetIdx(&allModules, i);
        for (int j = 0; j < m->types.len; j++) refreshStructSnapshots(ListGetIdx(&m->types, j));
    }
    for (int i = 0; i < allModules.len; i++) {
        struct semaModule* m = *(struct semaModule**)ListGetIdx(&allModules, i);
        for (int j = 0; j < m->types.len; j++) checkHoldsItself(ListGetIdx(&m->types, j));
    }
    //M21: "is a method" is a fact about a resolved first parameter, so a name shared by several
    //declarations can only be judged once every signature in every module exists
    for (int i = 0; i < allModules.len; i++) checkMethodOverloads(*(struct semaModule**)ListGetIdx(&allModules, i));
    for (int i = 0; i < allModules.len; i++) checkDefaultClashes(*(struct semaModule**)ListGetIdx(&allModules, i)); //M19e
    //B10/T29c: a text build constant is a String, as written text is wherever its type is read off it. The build
    //module is made before the prelude, so its literal was built with U8 elements and no String to be: it is built
    //again from its token now that Char and String exist (an array is only ever a text constant here)
    for (int i = 0; i < buildModule->vars.len; i++) {
        struct var* bv = ListGetIdx(&buildModule->vars, i);
        if (!bv->initExpr || bv->type.bType != BASETYPE_ARRAY) continue;
        bv->initExpr = OperandStringLiteral(bv->initExpr->tok);
        bv->type = inferredDeclType(NULL, bv->initExpr);
    }
    struct list inits = SemanticInitOrder();
    for (int i = 0; i < inits.len; i++) semaBuildGlobalInits(*(struct semaModule**)ListGetIdx(&inits, i));
    for (int i = 0; i < allModules.len; i++) semaCheckBodies(*(struct semaModule**)ListGetIdx(&allModules, i));
    //every instantiation discovered while checking those bodies, plus everything those discover in turn
    //one fixed point over both queues, not two in sequence: a function copy's body can instantiate a
    //generic type and a type copy's constructor body can call a generic function, in either order
    while (SemanticHasPendingInstantiations()) {
        semaDrainInstantiations();
        drainTypeInstantiations();
    }
    dischargeLateObligations(); //O10c: every body's obligations are known now
    checkFuncValueUses(); //T22a: and final
    checkLiteralShifts(); //E4a/E8a: every literal-only expression that adapts has been folded now
    if (ErrMsgGetNErrors() == errsAtStart) checkStrPurity();

    //K2: every immutable global whose initializer can be computed now is - its value becomes the global's
    //data, and nothing is left to run at startup. Only once the program has checked cleanly: evaluation
    //runs the checked program, and a program with errors has parts that were never checked.
    if (ErrMsgGetNErrors() == errsAtStart) {
        CtReset();
        //T29d: a literal entering a type with a constructor stands for what the constructor makes of it - decided
        //first, since a global baked or an assert decided below may read it
        for (int i = 0; i < litCtorRecs.len; i++) {
            struct litCtorRec* r = ListGetIdx(&litCtorRecs, i);
            struct ctVal* val = NULL;
            struct token whyTok = (struct token){0};
            const char* why = NULL;
            if (CtEvaluate(r->call, r->call->type, &val, &whyTok, &why, NULL)) {
                if (TypeIsFloat(r->lit->type)) r->lit->floatLiteralVal = val->f;
                else r->lit->intLiteralVal = val->i;
                continue;
            }
            char buf[1024];
            snprintf(buf, sizeof(buf), LITERAL_CTOR_FAILS ": %s", why ? why : "it cannot be evaluated");
            char* msg = MallocOrCrash(strlen(buf) + 1);
            strcpy(msg, buf);
            ErrMsgSemantic(r->lit->tok, msg);
        }
        //D13c: each zero value a constructor gives - all zero bits (nothing then runs), something else (the
        //constructor runs, being pure), or none: a declaration of a type without one needs a value
        for (int i = 0; i < zeroRecs.len; i++) {
            struct zeroRec* r = ListGetIdx(&zeroRecs, i);
            struct ctVal* val = NULL;
            struct token whyTok = (struct token){0};
            const char* why = NULL;
            //judged without the clause that stands in for a failure at run time, so a failing constructor is reported
            //as itself rather than as that clause's "unreachable"
            bool tried = r->call->isTried;
            struct list clauses = r->call->catchClauses;
            r->call->isTried = false;
            r->call->catchClauses = ListInit(sizeof(struct catchClause));
            bool ok = CtEvaluate(r->call, r->call->type, &val, &whyTok, &why, NULL);
            r->call->isTried = tried;
            r->call->catchClauses = clauses;
            if (ok) {
                if (CtIsZero(val)) r->call->zeroBits = true;
                else if (r->forArray && !CtIsPlainData(val)) ErrMsgSemantic(r->tok, ZERO_VALUE_SHARED);
                continue;
            }
            char buf[1024];
            snprintf(buf, sizeof(buf), ZERO_VALUE_NONE ": %s", why ? why : "it cannot be evaluated");
            char* msg = MallocOrCrash(strlen(buf) + 1);
            strcpy(msg, buf);
            ErrMsgSemantic(r->tok, msg);
        }
        CtReset();
        struct list order = SemanticInitOrder();
        for (int m = 0; m < order.len; m++) {
            struct semaModule* mod = *(struct semaModule**)ListGetIdx(&order, m);
            for (int i = 0; i < mod->vars.len; i++) {
                struct var* v = ListGetIdx(&mod->vars, i);
                if (v->type.bType == BASETYPE_FUNC || !v->initExpr || v->mut || v->isMethod) continue;
                struct ctVal* val;
                if (CtEvaluateGlobalInit(v->initExpr, v->type, &val)) {
                    if (CtIsPlainData(val)) v->constVal = val;
                    else v->bakeVal = val; //K2a
                }
            }
        }
        //C2e: an "Array<T>(n)" field whose n was undecided this attempt - computed now, laid out next attempt
        for (int i = 0; i < inlinePendings.len; i++) {
            struct inlinePending* p = ListGetIdx(&inlinePendings, i);
            struct ctVal* val = NULL;
            struct inlineDecision d = { p->file, p->line, p->name, -1 };
            if (CtEvaluate(p->sizeOp, TypeVanilla(BASETYPE_INT64), &val, NULL, NULL, NULL) && val->i >= 0) d.n = val->i;
            ListAdd(&inlineDecisions, &d);
        }
        //D8a: every default that is not a literal must be computable now
        for (int i = 0; i < defaultRecs.len; i++) {
            struct defaultRec* r = ListGetIdx(&defaultRecs, i);
            struct ctVal* val = NULL;
            struct token whyTok = (struct token){0};
            const char* why = NULL;
            if (CtEvaluate(r->op, r->type, &val, &whyTok, &why, NULL)) continue;
            char buf[1024];
            struct str f = TokenGetFileName(whyTok.owner);
            if (f.len) snprintf(buf, sizeof(buf), DEFAULT_NOT_COMPUTABLE ": %s (%.*s:%d)", why, f.len, f.ptr, whyTok.lineNr);
            else snprintf(buf, sizeof(buf), DEFAULT_NOT_COMPUTABLE ": %s", why);
            char* msg = MallocOrCrash(strlen(buf) + 1);
            strcpy(msg, buf);
            ErrMsgSemantic(r->op->tok, msg);
        }
        //S18c: an assert whose condition can be evaluated here is checked here - false is a compile-time
        //error at the assert, true needs no run-time check. Its locals count when they are fixed (S8c).
        //an assert in a test block is never run outside a test build, so only a test build judges it - in
        //any other, a test's "assert TestBuild" would be a compile error about code that never runs
        struct var* tb = buildConstVar(StrFromCStr("TestBuild"));
        bool testBuild = tb && tb->initExpr && tb->initExpr->intLiteralVal;
        for (int i = 0; i < assertRecs.len; i++) {
            struct assertRec* r = ListGetIdx(&assertRecs, i);
            if (!OperandIsBool(r->op) || (r->inTest && !testBuild)) continue;
            struct ctVal* v = NULL;
            if (!CtEvaluateIn(r->op, TypeVanilla(BASETYPE_BOOL), &v, NULL, NULL, NULL,
                              fixedLocalInit, bodyStmts(r->bodyId))) continue;
            if (v->i) r->op->ctProven = true;
            else ErrMsgSemantic(r->op->tok, ASSERT_FALSE_AT_COMPILE_TIME);
        }
    }

    if (requireMain) {
        struct var* mainFunc = VarGetList(&rootModule->vars, StrFromCStr("main"));
        //a syntax error may have hidden main - one that did not parse - so it is reported missing only when none was
        if (!mainFunc || mainFunc->type.bType != BASETYPE_FUNC) { if (!ErrMsgGetNSyntaxErrors()) ErrMsgFile(rootModule->fileName, MAIN_FUNC_NOT_FOUND); }
        //main is either "nothing" (success, exit 0) or one of its declared errors (exit 1, printed to
        //stderr) - no other success type is meaningful as a process exit code, so none is allowed
        else if (mainFunc->type.vars.len != 0 || mainFunc->type.hasRetType || mainFunc->type.errors.len == 0) {
            ErrMsgFile(rootModule->fileName, INVALID_MAIN_SIGNATURE);
        }
    }
    return rootModule;
}

//B9c: decides, by compile-time evaluation (K1), each top-level condition the token evaluator could not -
//against the attempt just made, in which every such condition's branches were left out. The condition is
//checked as an ordinary bool expression in its module; anything it reaches that did not check cleanly in
//that attempt - most often a name declared only inside a branch still being decided - makes it undecidable,
//since a value computed from it would be a guess.
//returns whether the attempt just made has to be redone: a top-level condition always changes what is
//compiled once decided; a local one only when it turned out decided or dead, or when its branches were
//skipped, or when it could not be decided yet because something it calls is itself still incomplete
static bool decidePendingConditions(void) {
    CtReset();
    bool again = false;
    ErrMsgMuteStart(); //deciding reports nothing - the attempt that follows reports whatever is real
    struct list* pending = SyntaxPendingConditions();
    for (int i = 0; i < pending->len; i++) {
        struct pendingCond* p = ListGetIdx(pending, i);
        struct semaModule* mod = p->mod;
        SemanticMethodScope = mod;
        if (p->local) {
            //S8b: the condition as the checker built it in its own function, where the if is; a local it
            //reads counts when its value is provably fixed (fixedLocalInit). Anything that stops it being
            //evaluated makes it an ordinary runtime if - a skipped one is then parsed as one next attempt,
            //where any real error in it is reported in place
            enum condDecisionKind kind = COND_RUNTIME;
            bool value = false, incomplete = false;
            struct operand* op = p->op;
            if (op && op->type.bType == BASETYPE_BOOL) {
                struct ctVal* v = NULL;
                const char* why = NULL;
                bool usedBuild = false;
                if (CtEvaluateIn(op, TypeVanilla(BASETYPE_BOOL), &v, NULL, &why, &usedBuild,
                                 fixedLocalInit, bodyStmts(p->bodyId))) {
                    kind = usedBuild ? COND_VALUE : COND_DEAD;
                    value = v->i != 0;
                } else if (why == CT_WHY_INCOMPLETE) {
                    incomplete = true;
                }
            }
            if (incomplete) { again = true; continue; } //decided once what it calls is complete
            SyntaxDecideLocalCondition(p->file, p->at, kind, value);
            if (p->skipped || kind != COND_RUNTIME) again = true;
            continue;
        }
        struct checkCtx ctx = {0};
        ctx.mod = mod;
        int before = ErrMsgGetNErrors();
        struct operand* op = buildExprFromSyntax(&ctx, p->cond);
        while (SemanticHasPendingInstantiations()) {
            semaDrainInstantiations();
            drainTypeInstantiations();
        }
        again = true;
        char* err = NULL;
        struct ctVal* val = NULL;
        if (ErrMsgGetNErrors() != before) {
            err = BUILD_COND_UNSEEN;
        } else if (op->type.bType != BASETYPE_BOOL) {
            err = BUILD_COND_NOT_BOOL;
        } else {
            struct token whyTok = (struct token){0};
            const char* why = NULL;
            if (!CtEvaluate(op, TypeVanilla(BASETYPE_BOOL), &val, &whyTok, &why, NULL)) {
                char buf[1024];
                struct str f = TokenGetFileName(whyTok.owner);
                if (f.len) snprintf(buf, sizeof(buf), "this top-level condition cannot be decided at compile time: %s (%.*s:%d) (B9c)", why, f.len, f.ptr, whyTok.lineNr);
                else snprintf(buf, sizeof(buf), "this top-level condition cannot be decided at compile time: %s (B9c)", why);
                err = MallocOrCrash(strlen(buf) + 1);
                strcpy(err, buf);
            }
        }
        SyntaxDecideCondition(p->file, p->at, !err && val && val->i, err);
    }
    ErrMsgMuteEnd();
    return again;
}

struct semaModule* SemanticAnalyzeFile(char* fileName, bool requireMain) {
    SyntaxResetConditionDecisions();
    inlineDecisions = ListInit(sizeof(struct inlineDecision)); //C2e
    for (int attempt = 0; ; attempt++) {
        SyntaxClearPendingConditions();
        ErrMsgBufferStart();
        int decidedBefore = inlineDecisions.len;
        struct semaModule* root = analyzeOnce(fileName, requireMain);
        //C2e: a field size computed this attempt changes a layout, so the program is checked again with it
        bool layoutChanged = inlineDecisions.len > decidedBefore;
        struct list* pending = SyntaxPendingConditions();
        if (pending->len == 0 && !layoutChanged) { ErrMsgBufferFlush(); return root; }
        //each attempt decides the conditions it met, and a decided branch can hold further ones - bounded,
        //since a chain this deep is conditions deciding each other rather than configuration
        if (attempt >= 8) {
            ErrMsgBufferDiscard();
            if (pending->len) ErrMsgSemantic(((struct pendingCond*)ListGetIdx(pending, 0))->tok, BUILD_COND_TOO_DEEP);
            return root;
        }
        //S8b: an attempt whose local conditions all turned out runtime - already parsed as ordinary ifs - is
        //the final one, so a program with no compile-time conditions pays for no second attempt
        bool decided = pending->len && decidePendingConditions();
        if (!decided && !layoutChanged) { ErrMsgBufferFlush(); return root; }
        ErrMsgBufferDiscard();
    }
}
