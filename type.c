#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "util.h"
#include "type.h"
#include "operation.h"

#define PTR_SIZE 8 //4 for 32bit
#define ARR_LEN_SIZE 8 //4 for 32bit
#define VOCAB_SIZE 4;
#define ERROR_SIZE 4;

long long TypeGetSize(struct type t);

long long getArraySize(struct type t) {
    if (!t.arrMalloc) return PTR_SIZE;
    t.bType = t.arrBase;
    return 0;
}

long long getStructSize(struct type t) {
    if (!t.structMAlloc) return PTR_SIZE;
    long long size = 0;
    for (int i = 0; i < t.vars.len; i++) {
        size += TypeGetSize((*(struct var*)ListGetIdx(&t.vars, i)).type);
    }
    return size;
}

long long TypeGetSize(struct type t) {
    switch (t.bType) {
        case BASETYPE_BOOL: return 1;
        case BASETYPE_BYTE: return 1;
        case BASETYPE_INT32: return 4;
        case BASETYPE_INT64: return 8;
        case BASETYPE_FLOAT32: return 4;
        case BASETYPE_FLOAT64: return 8;
        case BASETYPE_ARRAY: return getArraySize(t);
        case BASETYPE_STRUCT: return getStructSize(t);
        case BASETYPE_VOCAB: return VOCAB_SIZE;
        case BASETYPE_FUNC: return PTR_SIZE;
        case BASETYPE_ERROR: return ERROR_SIZE;
    }
    return 0; //unreachable
}

static char* typeVanillaBoolStr = "bool";
static char* typeVanillaByteStr = "byte";
static char* typeVanillaInt32Str = "int32";
static char* typeVanillaInt64Str = "int64";
static char* typeVanillaFloat32Str = "float32";
static char* typeVanillaFloat64Str = "float64";

struct type TypeVanilla(enum baseType bType) {
    struct type t = (struct type){0};
    switch (bType) {
        case BASETYPE_BOOL: t.name.ptr = typeVanillaBoolStr; break;
        case BASETYPE_BYTE: t.name.ptr = typeVanillaByteStr; break;
        case BASETYPE_INT32: t.name.ptr = typeVanillaInt32Str; break;
        case BASETYPE_INT64: t.name.ptr = typeVanillaInt64Str; break;
        case BASETYPE_FLOAT32: t.name.ptr = typeVanillaFloat32Str; break;
        case BASETYPE_FLOAT64: t.name.ptr = typeVanillaFloat64Str; break;
        default: ErrorBugFound();
    }
    t.name.len = strlen(t.name.ptr);
    t.bType = bType;
    return t;
}

bool isTypeVanilla(enum baseType bType) {
    switch (bType) {
        case BASETYPE_BOOL: return true;
        case BASETYPE_BYTE: return true;
        case BASETYPE_INT32: return true;
        case BASETYPE_INT64: return true;
        case BASETYPE_FLOAT32: return true;
        case BASETYPE_FLOAT64: return true;
        default: return false;
    }
}

struct type TypeString(struct operand* len) {
    struct type t = (struct type){0};
    t.name.ptr = typeVanillaByteStr;
    t.name.len = strlen(t.name.ptr);
    t.bType = BASETYPE_ARRAY;
    t.arrBase = BASETYPE_BYTE;
    t.arrMalloc = true;
    t.arrLen = len;
    return t;
}

struct type TypeFromType(struct str name, struct token tok, struct type tFrom) {
    tFrom.name = name;
    tFrom.tok = tok;
    return tFrom;
}

bool TypeIsByteArray(struct type t) {
    if (t.bType != BASETYPE_ARRAY) return false;
    if (t.arrBase != BASETYPE_BYTE) return false;
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

bool IsSameType(struct type a, struct type b) {
    if (isTypeVanilla(a.bType) && a.bType == b.bType) return true;
    if (a.owner != b.owner) return false;
    if (StrCmp(a.name, b.name)) return true;
    return false;
}
