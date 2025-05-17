#ifndef VAR_H
#define VAR_H

typedef struct varList* VarList;

#include "type.h"
#include "str.h"
#include "token.h"
#include "statement.h"

struct var {
    struct str name;
    struct type type;
    struct token tok;
    bool mut; //local variables are mutable by default
    bool mayBeInitialized;
    VarList localVars; //for functions
    struct var* origin; //where the var is found in read var operation
    struct statementList codeBlock; //for functions
};

struct var* VarAlloc();
struct var VarInit(struct str name, struct type t, struct token tok);
VarList VarListCreate();
void VarListAdd(VarList vl, struct var v);
void VarListAddSetOrigin(VarList vl, struct var v);
bool VarListGet(VarList vl, struct str name, struct var* v);
int VarListGetLen(VarList vl);
struct var VarListGetIdx(VarList vl, int idx);
void VarListAddList(VarList head, VarList tail);
void VarListRetract(VarList vl, int n);

#endif //VAR_H
