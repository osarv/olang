#ifndef TYPE_H
#define TYPE_H

#include "token.h"
#include "str.h"
#include "var.h"

typedef struct typeList* TypeList;

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

//type base, only one exists for a type and its aliases
struct baseType {
    enum baseTypeVariant bTypeVariant;
    VarList args; //for struct and func types
    VarList rets; //for func types
    StrList words; //for vocabulary types
};

#define ARRAY_REF -1 //for array dimensions that hold references
//type instance, one for every occourance of the type
//types may never be without tDef defined
struct type {
    struct baseType* bType;
    struct str name;
    struct token tok;
    int nArrLvls;
    long long* arrLens;
};

struct baseType* BaseTypeEmpty();
struct type TypeVanilla(char* name, enum baseTypeVariant bTypeVariant);
struct type TypeFromBaseType(struct str name, struct token tok, struct baseType* bType);
TypeList TypeListCreate();
void TypeListAdd(TypeList vl, struct type v);
bool TypeListGet(TypeList vl, struct str name, struct type* v);

#endif //TYPE_H
