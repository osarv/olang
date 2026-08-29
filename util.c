#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "util.h"
#include "token.h"

struct str Str(char* ptr, int len) {
    struct str s;
    s.ptr = ptr;
    s.len = len;
    return s;
}

struct str StrFromCStr(char* cStr) {
    struct str s;
    s.ptr = cStr;
    s.len = strlen(cStr);
    return s;
}

char* StrToCStr(struct str s, char* buf) {
    memcpy(buf, s.ptr, s.len);
    buf[s.len] = '\0';
    return buf;
}

void StrPrint(struct str s, FILE* stream) {
    fwrite(s.ptr, 1, s.len, stream);
}

bool StrCmp(struct str a, struct str b) {
    if (a.len != b.len) return false;
    return !strncmp(a.ptr, b.ptr, a.len);
}

void CheckAllocPtr(void* ptr) {
    if (!ptr) {
        fputs(COLOR_FG_RED "ERROR: " COLOR_RESET "memory allocation failed\n", stderr);
        exit(EXIT_FAILURE);
    }
}

void* MallocOrCrash(size_t size) {
    void* ptr = malloc(size);
    CheckAllocPtr(ptr);
    return ptr;
}

void* CallocOrCrash(size_t size) {
    void* ptr = calloc(size, 1);
    CheckAllocPtr(ptr);
    return ptr;
}

void* ReallocOrCrash(void* oldPtr, size_t size) {
    void* ptr = realloc(oldPtr, size);
    CheckAllocPtr(ptr);
    return ptr;
}

void ErrorBugFound() {
    fputs(COLOR_FG_RED "ERROR: bug found\n" COLOR_RESET, stderr);
    exit(EXIT_FAILURE);
}

struct list ListInit(int elemSize) {
    struct list l = (struct list){0};
    l.elemSize = elemSize;
    return l;
}

void ListDestroy(struct list l) {
    if (l.ptr) free(l.ptr);
}

#define LIST_ALLOC_MIN_CAP 16
void ListAdd(struct list* l, void* elem) {
    if (l->elemSize == 0) ErrorBugFound();
    if (l->len >= l->cap) {
        if (l->ptr && l->cap == 0) ErrorBugFound(); //tried to add to slice
        l->cap = l->cap ? l->cap * 2 : LIST_ALLOC_MIN_CAP; //geometric growth: amortized O(1) per add
        l->ptr = ReallocOrCrash(l->ptr, l->elemSize * l->cap);
    }
    memcpy((char*)l->ptr + l->len * l->elemSize, elem, l->elemSize);
    l->len++;
}

void ListAddList(struct list* head, struct list tail) {
    if (head->elemSize != tail.elemSize) ErrorBugFound();
    for (int i = 0; i < tail.len; i++) {
        ListAdd(head, (char*)tail.ptr + i * tail.elemSize);
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
