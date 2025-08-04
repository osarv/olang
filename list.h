#ifndef LIST_H
#define LIST_H

#include "stdbool.h"

//members may be read but not manipulated outside the functions
struct list {
    int elemSize;
    int len;
    int cap;
    int cursor;
    void* ptr;
};

struct list ListInit(int elemSize);
struct list ListSlice(struct list* l, int start, int end); //list slices may not be added to
void ListClear(struct list* l);
void ListDestroy(struct list l);
void ListAdd(struct list* l, void* elem);
void ListAddList(struct list* head, struct list tail);
void ListRetract(struct list* l, int newLen);
void* ListGetIdx(struct list* l, int idx);
void* ListGetCmp(struct list* l, void* cmpVal, bool(*cmpFunc)(void* cmpVal, void* listElem)); //returns NULL if l is NULL
void* ListPeek(struct list* l);
void* ListPrevious(struct list* l);
void* ListFeed(struct list* l);
void ListUnfeed(struct list* l);
void ListResetCursor(struct list* l);
void ListSetCursor(struct list* l, int cursor);

#endif //LIST_H
