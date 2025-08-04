#ifndef STATEMENT_H
#define STATEMENT_H

#include "token.h"
#include "list.h"
#include "var.h"

enum statementType {
    STATEMENT_STACK_ALLOCATION,
    STATEMENT_ASSIGNMENT, 
    STATEMENT_ASSIGNMENT_INCREMENT, 
    STATEMENT_ASSIGNMENT_DECREMENT,
    STATEMENT_IF,
    STATEMENT_ELSE,
    STATEMENT_RETURN,
    STATEMENT_FOR,
    STATEMENT_MATCH,
    STATEMENT_MATCHALL,
    STATEMENT_IS,
    STATEMENT_NOMATCH
};

struct statement {
    enum statementType sType;
    struct var var;
    struct operand* op;
    struct list codeBlock;
};

void StatementStackAllocAddList(struct list* codeBlock, struct var allocvar);

#endif //STATEMENT_H
