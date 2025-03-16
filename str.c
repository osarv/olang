#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "str.h"
#include "error.h"

struct strList {
    int len;
    int cap;
    struct str* ptr;
};

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

long long LongLongFromStr(struct str str) {
    char tmp[str.len + 1];
    tmp[str.len] = '\0';
    for (int i = 0; i < str.len; i++) {
        tmp[i] = str.ptr[i];
    }
    return atoll(tmp);
}

StrList StrListCreate() {
    StrList sl = malloc(sizeof(*sl));
    CheckAllocPtr(sl);
    *sl = (struct strList){0};
    return sl;
}

#define STR_ALLOC_STEP_SIZE 100
void StrListAdd(StrList sl, struct str s) {
    if (sl->len >= sl->cap) {
        sl->cap += STR_ALLOC_STEP_SIZE;
        sl->ptr = realloc(sl->ptr, sizeof(*(sl->ptr)) * sl->cap);
    }
    sl->ptr[sl->len] = s;
    sl->len++;
}

bool StrListGet(StrList sl, struct str pattern, struct str* s) {
    for (int i = 0; i < sl->len; i++) {
        if (StrCmp(sl->ptr[i], pattern)) {
            *s = sl->ptr[i];
            return true;
        }
    }
    return false;
}
