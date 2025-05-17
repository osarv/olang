#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "error.h"
#include "type.h"
#include "operation.h"

#define PTR_SIZE 8 //4 for 32bit
#define ARR_LEN_SIZE 8 //4 for 32bit
#define VOCAB_SIZE 4;

struct typeList {
    int len;
    int cap;
    struct type* ptr;
};

long long TypeGetSize(struct type t);

long long getArraySize(struct type t) {
    if (!t.arrMalloc) return PTR_SIZE;
    t.bType = t.arrBase;
    return 0;
}

long long getStructSize(struct type t) {
    if (!t.structMAlloc) return PTR_SIZE;
    long long size = 0;
    for (int i = 0; i < VarListGetLen(t.vars); i++) {
        size += TypeGetSize(VarListGetIdx(t.vars, i).type);
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

TypeList TypeListCreate() {
    TypeList tl = malloc(sizeof(*tl));
    CheckAllocPtr(tl);
    *tl = (struct typeList){0};
    return tl;
}

#define TYPE_ALLOC_STEP_SIZE 100
void TypeListAdd(TypeList tl, struct type t) {
    if (tl->len >= tl->cap) {
        tl->cap += TYPE_ALLOC_STEP_SIZE;
        tl->ptr = realloc(tl->ptr, sizeof(*(tl->ptr)) * tl->cap);
    }
    tl->ptr[tl->len] = t;
    tl->len++;
}

bool TypeListGet(TypeList tl, struct str name, struct type* t) {
    for (int i = 0; i < tl->len; i++) {
        if (StrCmp(tl->ptr[i].name, name)) {
            *t = tl->ptr[i];
            return true;
        }
    }
    return false;
}

struct type* TypeListGetAsPtr(TypeList tl, struct str name) {
    for (int i = 0; i < tl->len; i++) {
        if (StrCmp(tl->ptr[i].name, name)) {
            return tl->ptr + i;
        }
    }
    return NULL;
}

void TypeListUpdate(TypeList tl, struct type t) {
    for (int i = 0; i < tl->len; i++) {
        if (StrCmp(tl->ptr[i].name, t.name)) tl->ptr[i] = t;
    }
}

bool TypeIsByteArray(struct type t) {
    if (t.bType != BASETYPE_ARRAY) return false;
    if (t.arrBase != BASETYPE_BYTE) return false;
    return true;
}

