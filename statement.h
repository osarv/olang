#ifndef STATEMENT_H
#define STATEMENT_H

#include "token.h"
#include "list.h"
#include "var.h"

struct operand; //defined in semantic.h; only referenced by pointer here

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
    STATEMENT_EXIT,
    STATEMENT_ERROR,
    STATEMENT_TRY_CATCH
};

//one "catch" match entry - either a whole error type (hasWord false, e.g. "catch MyError") or one specific
//word of it (hasWord true, e.g. "catch MyError.NotFound"); wordOrdinal is only valid when hasWord
struct catchMatch {
    struct type errType;
    bool hasWord;
    long long wordOrdinal;
};

struct statement {
    enum statementType sType;
    struct var var;              //VAR_DECL: the declared variable; FOR: the loop variable
    struct operand* target;      //ASSIGN: the lvalue being assigned to
    struct operand* op;          //VAR_DECL/ASSIGN: rhs value; IF/FOR/DO/MATCH/CASE: condition/matched value;
                                  //RET/EXIT: value (NULL if bare); ERROR: the selected error word (never NULL);
                                  //TRY_CATCH: the tried call (OPERATION_FUNCCALL, never NULL)
    struct operand* forInit;     //FOR only: the loop variable's initial value expression
    struct operand* forPost;     //FOR only: the post-iteration expression
    struct list block;           //list of struct statement: the primary body; TRY_CATCH: the catch body
    struct statement* elseStmnt; //IF only: heap-allocated, NULL if no else clause
    bool elseIsBlock;            //IF only: true if elseStmnt is a bare block wrapper rather than a chained "else if"
    struct list matchCases;      //MATCH only: list of struct statement (STATEMENT_CASE)
    bool hasNomatch;             //MATCH only
    struct list nomatchBlock;    //MATCH only
    struct list catchMatches;    //TRY_CATCH only: list of struct catchMatch
};

void StatementAdd(struct list* codeBlock, struct statement s);
bool StatementCatchCoversType(struct list* matches, struct type errType);

#endif //STATEMENT_H
