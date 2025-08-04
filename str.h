#ifndef STR_H
#define STR_H

#include "stdbool.h"
#include "list.h"

struct str {
    char* ptr;
    int len;
};

struct str StrFromCStr(char* str);
void StrDestroy(struct str s);
void StrAppendChar(struct str* s, char c);
void StrGetAsCStr(struct str s, char* buffer); //assumes buffer is at least length of s plus 1
char* StrGetAsCStrMalloc(struct str s);
struct str StrMerge(struct str head, struct str tail);
struct str StrSlice(struct str s, int start, int end);
bool StrCmp(struct str a, struct str b); //returns true on same and false on different
char CharFromStr(struct str s);
long long LongLongFromStr(struct str str);
double DoubleFromStr(struct str s);
struct str* StrGetList(struct list* l, struct str name);
void StrPrint(struct str s, FILE* stream);

#endif //STR_H
