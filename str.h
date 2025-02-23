#ifndef STR_H
#define STR_H

#include "stdbool.h"

typedef struct strList* StrList;

struct str {
    char* ptr;
    int len;
};

struct str StrFromStackCStr(char* str);
char* StrGetAsCStr(struct str s);
struct str StrMerge(struct str head, struct str tail);
struct str StrSlice(struct str s, int start, int end);
bool StrCmp(struct str a, struct str b); //returns true on same and false on different
long long LongLongFromStr(struct str str);
StrList StrListCreate();
void StrListAdd(StrList sl, struct str s);
bool StrListGet(StrList sl, struct str pattern, struct str* s);

#endif //STR_H
