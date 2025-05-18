#ifndef VAR_H
#define VAR_H

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
    struct var* origin; //where the var is found in read var operation
    struct list codeBlock; //for functions
};

struct var* VarAlloc();
struct var VarInit(struct str name, struct type t, struct token tok);
bool VarCmpForList(void* name, void* elem);

#endif //VAR_H
