#ifndef VAR_H
#define VAR_H

typedef struct varList* VarList;

#include "type.h"
#include "str.h"
#include "token.h"
#include "operation.h"

struct var {
    struct str name;
    struct type type;
    struct token tok;
    bool mut; //local variables are mutable by default
    struct operandList values;
};

struct var VarInit(struct str name, struct type t, struct token tok);
VarList VarListCreate();
void VarListAdd(VarList vl, struct var v);
bool VarListGet(VarList vl, struct str name, struct var* v);
int VarListGetLen(VarList vl);
struct var VarListGetIdx(VarList vl, int idx);

#endif //VAR_H
