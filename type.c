#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "error.h"
#include "type.h"

struct typeList {
    int len;
    int cap;
    struct type* ptr;
};

struct baseType* BaseTypeEmpty() {
    struct baseType* bType = malloc(sizeof(*bType));
    CheckAllocPtr(bType);
    return bType;
}

struct type VanillaType(char* name, enum baseTypeVariant bTypeVariant) {
    struct strSlice str;
    str.ptr = strdup(name);
    CheckAllocPtr(str.ptr);
    str.len = strlen(str.ptr);

    struct type t = (struct type){};
    t.name = str;
    t.bType = BaseTypeEmpty();
    t.bType->bTypeVariant = bTypeVariant;
    return t;
}

struct type Type(struct strSlice name, struct token tok, struct baseType* bType) {
    struct type t;
    t.name = name;
    t.tok = tok;
    t.bType = bType;
    return t;
}

TypeList TypeListCreate() {
    TypeList vl = calloc(sizeof(*vl), 1);
    CheckAllocPtr(vl);
    return vl;
}

#define TYPE_ALLOC_STEP_SIZE 100
void TypeListAdd(TypeList vl, struct type v) {
    if (vl->len >= vl->cap) {
        vl->cap += TYPE_ALLOC_STEP_SIZE;
        vl->ptr = realloc(vl->ptr, sizeof(&(vl->ptr)) * vl->cap);
    }
    vl->ptr[vl->len] = v;
    vl->len++;
}

bool TypeListGet(TypeList vl, struct strSlice name, struct type* v) {
    for (int i = 0; i < vl->len; i++) {
        if (StrSliceCmp(vl->ptr[i].name, name)) {
            *v = vl->ptr[i];
            return true;
        }
    }
    return false;
}
