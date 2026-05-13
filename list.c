#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "list.h"
#include "util.h"

struct list ListInit(int elemSize) {
    struct list l = (struct list){0};
    l.elemSize = elemSize;
    return l;
}

void ListDestroy(struct list l) {
    if (l.ptr) free(l.ptr);
}

#define LIST_ALLOC_STEP_SIZE 100
void ListAdd(struct list* l, void* elem) {
    if (l->elemSize == 0) ErrorBugFound();
    if (l->len >= l->cap) {
        if (l->ptr && l->cap == 0) ErrorBugFound(); //tried to add to slice
        l->cap += LIST_ALLOC_STEP_SIZE;
        l->ptr = ReallocOrCrash(l->ptr, l->elemSize * l->cap);
    }
    memcpy((char*)l->ptr + l->len * l->elemSize, elem, l->elemSize);
    l->len++;
}

void ListAddList(struct list* head, struct list tail) {
    if (head->elemSize != tail.elemSize) ErrorBugFound();
    for (int i = 0; i < tail.len; i++) {
        ListAdd(head, &tail.ptr + i * tail.elemSize);
    }
}

void ListRetract(struct list* l, int newLen) {
    if (newLen > l->len) ErrorBugFound();
    l->len = newLen;
}

void* ListGetIdx(struct list* l, int idx) {
    if (idx >= l->len) ErrorBugFound();
    return (char*)l->ptr + idx * l->elemSize;
}

void* ListGetCmp(struct list* l, void* cmpVal, bool(*cmpFunc)(void* cmpVal, void* listElem)) { //returns NULL if l is NULL
    if (!l) return NULL;
    for (int i = 0; i < l->len; i++) {
        void* listElem = (char*)l->ptr + l->elemSize * i;
        if (cmpFunc(cmpVal, listElem)) return listElem;
    }
    return NULL;
}
