#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include "str.h"
#include "error.h"

struct strList {
    int len;
    int cap;
    struct str* ptr;
};

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
    StrList sl = calloc(sizeof(*sl), 1);
    CheckAllocPtr(sl);
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
