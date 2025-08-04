#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "util.h"
#include "var.h"

struct var* VarAllocSetOrigin() {
    struct var* v = malloc(sizeof(struct var));
    CheckAllocPtr(v);
    v->origin = v;
    return v;
}

bool varCmpForList(void* name, void* elem) {
    struct str searchName = *(struct str*)name;
    struct str elemName = ((struct var*)elem)->name;
    return StrCmp(searchName, elemName);
}

struct var* VarGetList(struct list* l, struct str name) {
    return ListGetCmp(l, &name, varCmpForList);
}

void VarListAddSetOrigin(struct list* l, struct var v) {
    ListAdd(l, &v);
    struct var* vPtr = ListGetIdx(l, l->len -1);
    vPtr->origin = vPtr;
}
