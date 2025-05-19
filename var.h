#ifndef VAR_H
#define VAR_H

#include "type.h"
#include "str.h"
#include "token.h"
#include "statement.h"
#include "list.h"

struct var {
    struct str name;
    struct type type;
    struct token tok;
    bool mut; //local variables are mutable by default
    bool mayBeInitialized;
    struct var* origin; //where the var is found in a read var operation
    struct list codeBlock; //for functions
};

struct var* VarAlloc();
struct var VarInit(struct str name, struct type t, struct token tok);
struct var* VarGetList(struct list* l, struct str name);

#endif //VAR_H
