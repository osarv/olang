#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "error.h"
#include "var.h"

struct var* VarAlloc() {
    struct var* v = malloc(sizeof(*v));
    CheckAllocPtr(v);
    *v = (struct var){0};
    return v;
}

struct var VarInit(struct str name, struct type t, struct token tok) {
    struct var v = (struct var){0};
    v.name = name;
    v.type = t;
    v.tok = tok;
    return v;
}

bool VarCmpForList(void* name, void* elem) {
    struct str searchName = *(struct str*)name;
    struct str elemName = ((struct var*)elem)->name;
    return StrCmp(searchName, elemName);
}
