#ifndef VAR_H
#define VAR_H

#include "type.h"
#include "str.h"
#include "token.h"
#include "list.h"

struct var {
    struct str name;
    struct type type;
    struct token tok;
    bool mut; //local variables are mutable by default
    bool mayBeInitialized; //access defined only through the origin member
    struct var* origin; //where the variable declaration is stored throughout the compilation process
    struct list codeBlock; //for functions
};

struct var* VarAllocSetOrigin();
struct var* VarGetList(struct list* l, struct str name);
void VarListAddSetOrigin(struct list* l, struct var v);

#endif //VAR_H
