#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "util.h"
#include "type.h"

#define PTR_SIZE 8 //4 for 32bit
#define VOCAB_SIZE 4
#define ERROR_SIZE 4

long long TypeGetSize(struct type t);

long long getArraySize(struct type t) {
    if (t.arrMalloc) return PTR_SIZE;
    return TypeGetSize(*t.arrElem);
}

long long getStructSize(struct type t) {
    if (t.structMAlloc) return PTR_SIZE;
    long long size = 0;
    for (int i = 0; i < t.vars.len; i++) {
        size += TypeGetSize((*(struct var*)ListGetIdx(&t.vars, i)).type);
    }
    return size;
}

long long TypeGetSize(struct type t) {
    switch (t.bType) {
        case BASETYPE_VOID: return 0;
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
        case BASETYPE_VOID: t.bType = BASETYPE_VOID; return t;
        case BASETYPE_BOOL: t.name.ptr = typeVanillaBoolStr; break;
        case BASETYPE_BYTE: t.name.ptr = typeVanillaByteStr; break;
        case BASETYPE_INT32: t.name.ptr = typeVanillaInt32Str; break;
        case BASETYPE_INT64: t.name.ptr = typeVanillaInt64Str; break;
        case BASETYPE_FLOAT32: t.name.ptr = typeVanillaFloat32Str; break;
        case BASETYPE_FLOAT64: t.name.ptr = typeVanillaFloat64Str; break;
        default: ErrorBugFound();
    }
    t.name.len = (int)strlen(t.name.ptr);
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

bool TypeIsNumeric(struct type t) {
    switch (t.bType) {
        case BASETYPE_BYTE: case BASETYPE_INT32: case BASETYPE_INT64:
        case BASETYPE_FLOAT32: case BASETYPE_FLOAT64:
            return true;
        default: return false;
    }
}

bool TypeIsInt(struct type t) {
    switch (t.bType) {
        case BASETYPE_BYTE: case BASETYPE_INT32: case BASETYPE_INT64: return true;
        default: return false;
    }
}

bool TypeIsFloat(struct type t) {
    switch (t.bType) {
        case BASETYPE_FLOAT32: case BASETYPE_FLOAT64: return true;
        default: return false;
    }
}

bool TypeIsSame(struct type a, struct type b) {
    if (a.bType != b.bType) return false;
    if (isTypeVanilla(a.bType)) return true;
    switch (a.bType) {
        case BASETYPE_ARRAY:
            if (a.arrMalloc != b.arrMalloc) return false;
            return TypeIsSame(*a.arrElem, *b.arrElem);
        case BASETYPE_FUNC: {
            if (a.vars.len != b.vars.len) return false;
            for (int i = 0; i < a.vars.len; i++) {
                struct type ta = (*(struct var*)ListGetIdx(&a.vars, i)).type;
                struct type tb = (*(struct var*)ListGetIdx(&b.vars, i)).type;
                if (!TypeIsSame(ta, tb)) return false;
            }
            if (a.hasRetType != b.hasRetType) return false;
            if (a.hasRetType && !TypeIsSame(*a.retType, *b.retType)) return false;
            return true;
        }
        //struct/vocab/error are always named declarations - identity is owner+name
        default:
            if (a.owner != b.owner) return false;
            return StrCmp(a.name, b.name);
    }
}

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
        case BASETYPE_VOCAB: return "vocab type";
        case BASETYPE_FUNC: return "func type";
        case BASETYPE_ERROR: return "error type";
        default: return "type";
    }
}
