#ifndef TYPE_H
#define TYPE_H

#include "token.h"
#include "str.h"
#include "list.h"

enum baseType {
    BASETYPE_BOOL,
    BASETYPE_BYTE,
    BASETYPE_INT32,
    BASETYPE_INT64,
    BASETYPE_FLOAT32,
    BASETYPE_FLOAT64,
    BASETYPE_ARRAY,
    BASETYPE_STRUCT,
    BASETYPE_VOCAB,
    BASETYPE_FUNC
};

struct type {
    int pcId; //set when added to a pcList as a typedef
    enum baseType bType;
    struct str name;
    struct token tok;
    enum baseType arrBase;
    bool placeholder;
    bool structMAlloc;
    bool arrMalloc;
    struct operand* arrLen; //for when the array is allocated
    int arrLvls;
    struct list vars; //for struct members and function arguments
    struct list rets; //for function return types
    struct list words; //for vocabulary types
};

#include "var.h"

long long TypeGetSize(struct type t);
struct type TypeVanilla(enum baseType bType);
struct type TypeString(struct operand* len);
struct type TypeFromType(struct str name, struct token tok, struct type tFrom);
bool TypeIsByteArray(struct type t);
bool TypeCmpForList(void* name, void* elem);

#endif //TYPE_H
