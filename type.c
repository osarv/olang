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

struct type TypeVanilla(char* name, enum baseTypeVariant bTypeVariant) {
    struct str str;
    str.ptr = strdup(name);
    CheckAllocPtr(str.ptr);
    str.len = strlen(str.ptr);

    struct type t = (struct type){};
    t.name = str;
    t.bType = BaseTypeEmpty();
    t.bType->bTypeVariant = bTypeVariant;
    return t;
}

struct type TypeFromBaseType(struct str name, struct token tok, struct baseType* bType) {
    struct type t;
    t.name = name;
    t.tok = tok;
    t.bType = bType;
    return t;
}

TypeList TypeListCreate() {
    TypeList tl = calloc(sizeof(*tl), 1);
    CheckAllocPtr(tl);
    return tl;
}

#define TYPE_ALLOC_STEP_SIZE 100
void TypeListAdd(TypeList tl, struct type t) {
    if (tl->len >= tl->cap) {
        tl->cap += TYPE_ALLOC_STEP_SIZE;
        tl->ptr = realloc(tl->ptr, sizeof(&(tl->ptr)) * tl->cap);
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
