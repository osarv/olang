#ifndef VAR_H
#define VAR_H

typedef struct varList* VarList;

#include "type.h"
#include "str.h"
#include "token.h"

struct var {
    struct str name;
    struct type type;
    struct token tok;
    bool mut; //for function arguments
};

struct var VarInit(struct str name, struct type t, struct token tok);
VarList VarListCreate();
void VarListAdd(VarList vl, struct var v);
bool VarListGet(VarList vl, struct str name, struct var* v);

#endif //VAR_H
