#ifndef STR_H
#define STR_H

#include "stdbool.h"

typedef struct strList* StrList;

struct str {
    char* ptr;
    int len;
};

struct str StrFromStackCStr(char* str);
void StrGetAsCStr(struct str s, char* buffer); //assumes buffer is at least length of s plus 1
struct str StrMerge(struct str head, struct str tail);
struct str StrSlice(struct str s, int start, int end);
bool StrCmp(struct str a, struct str b); //returns true on same and false on different
long long LongLongFromStr(struct str str);
StrList StrListCreate();
void StrListAdd(StrList sl, struct str s);
bool StrListGet(StrList sl, struct str pattern, struct str* s);

#endif //STR_H
