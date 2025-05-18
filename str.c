#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "str.h"
#include "error.h"

struct str StrFromStackCStr(char* str) {
    struct str s;
    s.ptr = strdup(str);
    CheckAllocPtr(s.ptr);
    s.len = strlen(str);
    return s;
}

void StrGetAsCStr(struct str s, char* buffer) { //assumes buffer is at least length of s plus 1
    for (int i = 0; i < s.len; i++) {
        buffer[i] = s.ptr[i];
    }
    buffer[s.len] = '\0';
}

char* StrGetAsCStrMalloc(struct str s) {
    char* str = malloc(sizeof(char) * s.len + 1);
    CheckAllocPtr(str);
    for (int i = 0; i < s.len; i++) {
        str[i] = s.ptr[i];
    }
    str[s.len] = '\0';
    return str;
}

struct str StrSlice(struct str s, int start, int end) {
    if (end > s.len) ErrorBugFound();
    if (start > end) ErrorBugFound();
    s.ptr += start;
    s.len = end - start;
    return s;
}

struct str StrMerge(struct str head, struct str tail) {
    head.len = (tail.ptr - head.ptr) + tail.len;
    return head;
}

bool StrCmp(struct str a, struct str b) { //returns true on same and false on different
    if (a.len != b.len) return false;
    for (int i = 0; i < a.len; i++) {
        if (a.ptr[i] != b.ptr[i]) return false;
    }
    return true;
}

char charFromEscapeStr(struct str s) {
    switch (s.ptr[2]) {
        case 'n': return '\n';
        case 't': return '\t';
    }
    return s.ptr[2];
}

char CharFromStr(struct str s) {
    if (s.ptr[1] == '\\') return charFromEscapeStr(s);
    else return s.ptr[1];
}

long long LongLongFromStr(struct str s) {
    char tmp[s.len + 1];
    tmp[s.len] = '\0';
    for (int i = 0; i < s.len; i++) {
        tmp[i] = s.ptr[i];
    }
    return atoll(tmp);
}

double DoubleFromStr(struct str s) {
    char tmp[s.len + 1];
    tmp[s.len] = '\0';
    for (int i = 0; i < s.len; i++) {
        tmp[i] = s.ptr[i];
    }
    return atof(tmp);
}

bool StrCmpForList(void* cmpStr, void* elem) {
    struct str cmpS= *(struct str*)cmpStr;
    struct str elemS = *(struct str*)elem;
    return StrCmp(cmpS, elemS);
}
