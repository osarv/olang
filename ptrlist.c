#include <stdlib.h>
#include <stdio.h>
#include "error.h"
#include "ptrlist.h"

#define PTR_ALLOC_STEP_SIZE 100
void PtrListAdd(struct ptrList* list, void* ptr) {
    if (list->len >= list->cap) {
        list->cap += PTR_ALLOC_STEP_SIZE;
        list->ptr = realloc(list->ptr, sizeof(*(list->ptr)) * list->cap);
        CheckAllocPtr(list->ptr);
    }
    list->ptr[list->len] = ptr;
    list->len++;
}

void* PtrListGetByIdx(struct ptrList* list, int idx) {
    if (idx >= list->len || idx < 0) ErrorBugFound();
    return list->ptr[idx];
}
