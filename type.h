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
    BASETYPE_FUNC,
    BASETYPE_ERROR,
};

struct type {
    struct parserContext* owner;
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
    struct list words; //for vocabs and errors
    struct list retType; //max=1; holds return type for func
    struct list errors;
    bool hasError;
};

#include "var.h"

long long TypeGetSize(struct type t);
struct type TypeVanilla(enum baseType bType);
struct type TypeString(struct operand* len);
struct type TypeFromType(struct str name, struct token tok, struct type tFrom);
bool TypeIsByteArray(struct type t);
struct type* TypeGetList(struct list* l, struct str name);
bool IsSameType(struct type a, struct type b);

#endif //TYPE_H
