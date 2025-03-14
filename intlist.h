#ifndef INTLIST_H
#define INTLIST_H

struct intList {
    int cap;
    int len;
    int* ptr;
};

void intListAdd(struct intList* il, int i);
int intListGetByIdx(struct intList* il, int idx);

#endif //INTLIST_H
