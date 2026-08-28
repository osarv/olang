#ifndef STATEMENT_H
#define STATEMENT_H

#include "token.h"
#include "list.h"
#include "var.h"
#include "operation.h"

enum statementType {
    STATEMENT_VAR_DECL,
    STATEMENT_ASSIGN,
    STATEMENT_EXPR,
    STATEMENT_IF,
    STATEMENT_FOR,
    STATEMENT_DO,
    STATEMENT_MATCH,
    STATEMENT_CASE,
    STATEMENT_RET,
    STATEMENT_EXIT
};

struct statement {
    enum statementType sType;
    struct var var;              //VAR_DECL: the declared variable; FOR: the loop variable
    struct operand* target;      //ASSIGN: the lvalue being assigned to
    struct operand* op;          //VAR_DECL/ASSIGN: rhs value; IF/FOR/DO/MATCH/CASE: condition/matched value; RET/EXIT: value (NULL if bare)
    struct operand* forPost;     //FOR only: the post-iteration expression
    struct list block;           //list of struct statement: the primary body
    struct statement* elseStmnt; //IF only: heap-allocated, NULL if no else clause
    bool elseIsBlock;            //IF only: true if elseStmnt is a bare block wrapper rather than a chained "else if"
    struct list matchCases;      //MATCH only: list of struct statement (STATEMENT_CASE)
    bool hasNomatch;             //MATCH only
    struct list nomatchBlock;    //MATCH only
};

void StatementAdd(struct list* codeBlock, struct statement s);

#endif //STATEMENT_H
