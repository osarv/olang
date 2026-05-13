#ifndef LIST_H
#define LIST_H

#include "stdbool.h"

//members may be read but not manipulated outside the functions
struct list {
    int elemSize;
    int len;
    int cap;
    void* ptr;
};

struct list ListInit(int elemSize);
void ListDestroy(struct list l);
void ListAdd(struct list* l, void* elem);
void ListAddList(struct list* head, struct list tail);
void ListRetract(struct list* l, int newLen);
void* ListGetIdx(struct list* l, int idx);
void* ListGetCmp(struct list* l, void* cmpVal, bool(*cmpFunc)(void* cmpVal, void* listElem)); //returns NULL if l is NULL

#endif //LIST_H
