#ifndef STATEMENT_H
#define STATEMENT_H

#include "token.h"

enum statementType {
    STATEMENT_ASSIGNMENT, 
    STATEMENT_IF,
    STATEMENT_ELSE,
    STATEMENT_FOR,
    STATEMENT_MATCH,
    STATEMENT_PATTERN,
    STATEMENT_NOMATCH
};

struct statementList {
    int cap;
    int len;
    struct statement* ptr;
};

struct statement {
    enum statementType sType;
    struct token tok;
    struct var* incVar;
    struct var* assignVar;
    struct operand* assignOp;
    struct operand* condOp;
    struct statementList statements;
};

#endif //STATEMENT_H
