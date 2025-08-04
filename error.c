#include <stdlib.h>
#include <stdio.h>
#include "error.h"

bool errCmpForList(void* name, void* elem) {
    struct str searchName = *(struct str*)name;
    struct str elemName = ((struct error*)elem)->name;
    return StrCmp(searchName, elemName);
}

struct error* ErrorGetList(struct list* l, struct str name) {
    return ListGetCmp(l, &name, errCmpForList);
}
