#ifndef SYNTAX_H
#define SYNTAX_H

#include "list.h"

typedef struct syntaxContext* SyntaxCtx;

enum syntaxType {
    SYNTAX_IMPORT,
    SYNTAX_TYPEDEF_BASIC,
    SYNTAX_TYPEDEF_STRUCT,
    SYNTAX_TYPEDEF_VOCAB,
    SYNTAX_TYPEDEF_FUNC,
    SYNTAX_ERRORDEF,
    SYNTAX_VAR_DECL_AND_OR_ASSIGN,
    SYNTAX_FUNC_DEF,
    SYNTAX_EXPR,
    SYNTAX_CONTROL_FLOW
};

struct syntax {
    enum syntaxType type;
    struct list name;
    struct list def;
    struct list subSyntax;
};

SyntaxCtx ParseSyntax(char* fileName);

#endif //SYNTAX_H
