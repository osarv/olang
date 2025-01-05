#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include "strslice.h"

struct strSlice StrSlice(char* str, int start, int end) {
    struct strSlice slice;
    slice.ptr = str + start;
    slice.len = end - start;
    return slice;
}

struct strSlice StrSliceMerge(struct strSlice head, struct strSlice tail) {
    head.len = (tail.ptr - head.ptr) + tail.len;
    return head;
}

bool StrSliceCmp(struct strSlice a, struct strSlice b) { //returns true on same and false on different
    if (a.len != b.len) return false;
    for (int i = 0; i < a.len; i++) {
        if (a.ptr[i] != b.ptr[i]) return false;
    }
    return true;
}
