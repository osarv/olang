#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "list.h"
#include "util.h"
#include "token.h"

struct list ListInit(int elemSize) {
    struct list l = (struct list){0};
    l.elemSize = elemSize;
    return l;
}

struct list ListInitToken() {
    struct list l = (struct list){0};
    l.elemSize = sizeof(struct token);
    return l;
}

struct list ListSlice(struct list* l, int start, int end) { //list slices must not be added to
    struct list lSlice;
    lSlice.elemSize = l->elemSize;
    lSlice.len = end - start;
    lSlice.cap = 0;
    lSlice.cursor = 0;
    lSlice.ptr = (char*)l->ptr + start * l->elemSize;
    return lSlice;
}

void ListClear(struct list* l) {
    l->len = 0;
}

void ListDestroy(struct list l) {
    if (l.ptr) free(l.ptr);
}

void listCopyElem(void* ptr, void* elem, int elemSize) {
    for (int i = 0; i < elemSize; i++) {
        ((char*)ptr)[i] = ((char*)elem)[i];
    }
}

#define LIST_ALLOC_STEP_SIZE 100
void ListAdd(struct list* l, void* elem) {
    if (l->elemSize == 0) ErrorBugFound();
    if (l->len >= l->cap) {
        if (l->ptr && l->cap == 0) ErrorBugFound(); //tried to add to slice
        l->cap += LIST_ALLOC_STEP_SIZE;
        l->ptr = realloc(l->ptr, l->elemSize * l->cap);
        CheckAllocPtr(l->ptr);
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

void* ListPeek(struct list* l) {
    if (l->cursor < 0 || l->cursor >= l->len) return NULL;
    return (char*)l->ptr + l->elemSize * l->cursor;
}

void* ListPrevious(struct list* l) {
    if (l->cursor <= 0 || l->cursor > l->len) return NULL;
    return (char*)l->ptr + l->elemSize * (l->cursor - 1);
}

void* ListFeed(struct list* l) {
    void* ret = ListPeek(l);
    l->cursor++;
    return ret;
}

void ListUnfeed(struct list* l) {
    l->cursor--;
}

void ListResetCursor(struct list* l) {
    l->cursor = 0;
}

void ListSetCursor(struct list* l, int cursor) {
    l->cursor = cursor;
}
