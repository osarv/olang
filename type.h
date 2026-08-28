#ifndef TYPE_H
#define TYPE_H

#include "token.h"
#include "util.h"
#include "list.h"

enum baseType {
    BASETYPE_VOID, //result of a function call with no declared return type
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
    struct semaModule* owner; //the module a named type was declared in; NULL for anonymous/vanilla types
    enum baseType bType;
    struct str name;
    struct token tok;
    bool placeholder; //name collected, body not resolved yet
    bool resolving;   //cycle guard while resolving this type's body

    //BASETYPE_ARRAY
    struct type* arrElem; //heap-allocated element type; int32[][-2] = array[-2] of (array of int32)
    bool arrMalloc;        //true if this level has no fixed size (dynamically allocated)
    struct operand* arrLen; //size expression for this level, NULL when arrMalloc

    //BASETYPE_STRUCT
    struct list vars; //list of struct var: struct members, or function/func-type parameters
    bool structMAlloc; //true when referenced via a trailing "{}" - heap-indirect, breaks recursive embedding

    //BASETYPE_VOCAB, BASETYPE_ERROR
    struct list words; //list of struct token: vocab or error member names

    //BASETYPE_FUNC
    bool hasRetType;
    struct type* retType; //heap-allocated, valid when hasRetType
    struct list errors; //list of struct type*: error types declared in the signature's error list
};

#include "var.h"

long long TypeGetSize(struct type t);
struct type TypeVanilla(enum baseType bType);
struct type TypeFromType(struct str name, struct token tok, struct type tFrom);
bool TypeIsByteArray(struct type t);
struct type* TypeGetList(struct list* l, struct str name);
bool TypeIsSame(struct type a, struct type b);
bool TypeIsNumeric(struct type t);
bool TypeIsInt(struct type t);
bool TypeIsFloat(struct type t);
char* TypeDescribe(struct type t);

#endif //TYPE_H
