#ifndef STATEMENT_H
#define STATEMENT_H

#include "token.h"
#include "list.h"

enum statementType {
    STATEMENT_STACK_ALLOCATION,
    STATEMENT_ASSIGNMENT, 
    STATEMENT_ASSIGNMENT_INCREMENT, 
    STATEMENT_ASSIGNMENT_DECREMENT,
    STATEMENT_IF,
    STATEMENT_ELSE,
    STATEMENT_FOR,
    STATEMENT_MATCH,
    STATEMENT_MATCHALL,
    STATEMENT_IS,
    STATEMENT_NOMATCH
};

struct statement {
    enum statementType sType;
    struct token tok;

    struct var* assignVar;
    struct operand* assignOp;
    struct statement* assignment;
    struct statement* stackAllocation;
    long long nAllocBytes;

    struct operand* condOp;
    struct statement* forEveryAssignment;
    struct list codeBlock;
};

struct statement* StatementEmpty();
struct statement* StatementStackAllocation(struct var* v);

#endif //STATEMENT_H
