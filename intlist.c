#include <stdlib.h>
#include <stdio.h>
#include "intlist.h"
#include "error.h"

#define IL_STEP_SIZE 100
void intListAdd(struct intList* il, int i) {
    if (il->len >= il->cap) {
        il->cap += IL_STEP_SIZE;
        il->ptr = realloc(il->ptr, sizeof(*(il->ptr)) * il->cap);
        CheckAllocPtr(il->ptr);
    }
    il->ptr[il->len] = i;
    il->len++;
}

int intListGetByIdx(struct intList* il, int idx) {
    if (idx >= il->len || idx < 0) ErrorBugFound();
    return il->ptr[idx];
}
