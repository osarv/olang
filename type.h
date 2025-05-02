#ifndef TYPE_H
#define TYPE_H

#include "token.h"
#include "str.h"
#include "ptrlist.h"

typedef struct typeList* TypeList;

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
    struct varList* vars; //for struct members and function arguments
    TypeList rets; //for function return types
    StrList words; //for vocabulary types
    bool sizeKnown;
    long long byteSize; //valid if byteSizeKnown is true
};

#include "var.h"

void TypeSetSize(struct type* t);
struct type TypeVanilla(enum baseType bType);
struct type TypeString(struct operand* len);
struct type TypeFromType(struct str name, struct token tok, struct type tFrom);
TypeList TypeListCreate();
void TypeListAdd(TypeList tl, struct type t);
bool TypeListGet(TypeList vl, struct str name, struct type* t);
struct type* TypeListGetAsPtr(TypeList tl, struct str name);
void TypeListUpdate(TypeList tl, struct type t);
bool TypeIsByteArray(struct type t);

#endif //TYPE_H
