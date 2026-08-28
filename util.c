#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "util.h"
#include "color.h"
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
