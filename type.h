#ifndef TYPE_H
#define TYPE_H

#include "token.h"
#include "str.h"
#include "ptrlist.h"

typedef struct typeList* TypeList;

enum baseType {
    BASETYPE_INT32,
    BASETYPE_INT64,
    BASETYPE_FLOAT32,
    BASETYPE_FLOAT64,
    BASETYPE_BIT32,
    BASETYPE_BIT64,
    BASETYPE_BYTE,
    BASETYPE_STRUCT,
    BASETYPE_VOCAB,
    BASETYPE_FUNC
};

#define ARRAY_REF -1 //for array dimensions that hold references
struct type {
    enum baseType bType;
    struct str name;
    struct token tok;
    int nArrLvls;
    long long* arrLens;
    bool placeholder;
    bool structMAlloc;
    struct varList* vars; //for struct members and function arguments
    TypeList rets; //for function return types
    StrList words; //for vocabulary types
};

#include "var.h"

struct type TypeVanilla(char* name, enum baseType bType);
struct type TypeFromType(struct str name, struct token tok, struct type tFrom);
TypeList TypeListCreate();
void TypeListAdd(TypeList vl, struct type v);
bool TypeListGet(TypeList vl, struct str name, struct type* v);
struct type* TypeListGetAsPtr(TypeList tl, struct str name);
void TypeListUpdate(TypeList tl, struct type t);

#endif //TYPE_H
