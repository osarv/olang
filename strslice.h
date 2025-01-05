#ifndef STRSLICE_H
#define STRSLICE_H

#include "stdbool.h"

struct strSlice {
    char* ptr;
    int len;
};

struct strSlice StrSliceMerge(struct strSlice head, struct strSlice tail);
bool StrSliceCmp(struct strSlice a, struct strSlice b); //returns true on same and false on different

#endif //STRSLICE_H
