#ifndef OPERATION_H
#define OPERATION_H

enum operation {
    OPERATION_SET,
    OPERATION_ADD,
    OPERATION_SUB,
    OPERATION_MUL,
    OPERATION_DIV,
    OPERATION_FCALL
};

struct operandList {
    int len;
    int cap;
    struct operand* ptr;
};

struct operand {
    struct type t;
    struct operandList args;
    enum operation operationType;
    bool valKnown;

    //valid only of valKnown is true
    long long intVal;
    double floatVal;
    char* strVal;
    void* ptrVal;
};

#endif //OPERATION_H
