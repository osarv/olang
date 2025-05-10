#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "error.h"
#include "var.h"

struct varList {
    int len;
    int cap;
    struct var* ptr;
};

struct var VarInit(struct str name, struct type t, struct token tok) {
    struct var v = (struct var){0};
    v.name = name;
    v.type = t;
    v.tok = tok;
    return v;
}

VarList VarListCreate() {
    VarList vl = malloc(sizeof(*vl));
    CheckAllocPtr(vl);
    *vl = (struct varList){0};
    return vl;
}

#define VAR_ALLOC_STEP_SIZE 100
void VarListAdd(VarList vl, struct var v) {
    if (vl->len >= vl->cap) {
        vl->cap += VAR_ALLOC_STEP_SIZE;
        vl->ptr = realloc(vl->ptr, sizeof(*(vl->ptr)) * vl->cap);
    }
    vl->ptr[vl->len] = v;
    vl->len++;
}

void VarListAddSetOrigin(VarList vl, struct var v) {
    VarListAdd(vl, v);
    vl->ptr[vl->len -1].origin = vl->ptr + vl->len -1;
}

bool VarListGet(VarList vl, struct str name, struct var* v) {
    for (int i = 0; i < vl->len; i++) {
        if (StrCmp(vl->ptr[i].name, name)) {
            *v = vl->ptr[i];
            return true;
        }
    }
    return false;
}

int VarListGetLen(VarList vl) {
    return vl->len;
}

struct var VarListGetIdx(VarList vl, int idx) {
    if (idx < 0 || idx >= vl->len) ErrorBugFound();
    return vl->ptr[idx];
}
