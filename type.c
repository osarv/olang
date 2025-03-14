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

struct type TypeVanilla(char* name, enum baseType bType) {
    struct str str;
    str.ptr = strdup(name);
    CheckAllocPtr(str.ptr);
    str.len = strlen(str.ptr);

    struct type t = (struct type){0};
    t.name = str;
    t.bType = bType;
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
