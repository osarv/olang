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

VarList VarListCreate() {
    VarList vl = calloc(sizeof(*vl), 1);
    CheckAllocPtr(vl);
    return vl;
}

#define VAR_ALLOC_STEP_SIZE 100
void VarListAdd(VarList vl, struct var v) {
    if (vl->len >= vl->cap) {
        vl->cap += VAR_ALLOC_STEP_SIZE;
        vl->ptr = realloc(vl->ptr, sizeof(&(vl->ptr)) * vl->cap);
    }
    vl->ptr[vl->len] = v;
    vl->len++;
}

bool VarListGet(VarList vl, char* name, struct var* v) {
    for (int i = 0; i < vl->len; i++) {
        if (strcmp(vl->ptr[i].name, name)) {
            *v = vl->ptr[i];
            return true;
        }
    }
    return false;
}
