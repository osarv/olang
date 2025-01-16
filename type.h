#ifndef TYPE_H
#define TYPE_H

#include "token.h"
#include "str.h"

typedef struct typeList* TypeList;

#define ARRAY_REF -1 //for array dimensions that hold references
//type instance, one for every occourance of the type
//types may never be without a baseType
struct type {
    struct baseType* bType;
    struct str name;
    struct token tok;
    int nArrLvls;
    long long* arrLens;
    bool structMAlloc;
};

#include "var.h"

enum baseTypeVariant {
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

//base type, only one exists for a type and its aliases
struct baseType {
    enum baseTypeVariant bTypeVariant;
    VarList vars; //for struct members and function arguments
    TypeList rets; //for function return types
    StrList words; //for vocabulary types
};

struct baseType* BaseTypeEmpty();
struct type TypeVanilla(char* name, enum baseTypeVariant bTypeVariant);
struct type TypeFromBaseType(struct str name, struct token tok, struct baseType* bType);
TypeList TypeListCreate();
void TypeListAdd(TypeList vl, struct type v);
bool TypeListGet(TypeList vl, struct str name, struct type* v);

#endif //TYPE_H
