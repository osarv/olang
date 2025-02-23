#ifndef PTRLIST_H
#define PTRLIST_H

struct ptrList {
    int cap;
    int len;
    void** ptr;
};

void PtrListAdd(struct ptrList* list, void* ptr);
void* PtrListGetByIdx(struct ptrList* list, int idx);

#endif //PTRLIST_H
