#ifndef SEMANTIC_H
#define SEMANTIC_H

#include "util.h"
#include "list.h"
#include "syntax.h"
#include "type.h"

struct var; //defined in var.h; only referenced by pointer here

enum operation {
    OPERATION_NONE,

    OPERATION_READ_VAR,
    OPERATION_FUNCCALL,
    OPERATION_INDEX,
    OPERATION_MEMBER,

    //unary
    OPERATION_NOT,
    OPERATION_BTWSE_INV,
    OPERATION_MINUS,
    OPERATION_PREFIX_INC,
    OPERATION_PREFIX_DEC,
    OPERATION_POSTFIX_INC,
    OPERATION_POSTFIX_DEC,

    //binary
    OPERATION_MOD,
    OPERATION_ADD,
    OPERATION_SUB,
    OPERATION_MUL,
    OPERATION_DIV,
    OPERATION_LST,
    OPERATION_LSE,
    OPERATION_GRT,
    OPERATION_GRE,
    OPERATION_EQ,
    OPERATION_NEQ,
    OPERATION_AND,
    OPERATION_OR,
    OPERATION_XOR,
    OPERATION_BTSFT_L,
    OPERATION_BTSFT_R,
    OPERATION_BTWSE_AND,
    OPERATION_BTWSE_OR,
    OPERATION_BTWSE_XOR
};

struct operand {
    struct token tok;
    struct type type;
    struct list args; //list of struct operand*: operator operands, call args, or [base, index]/[base] for index/member
    enum operation opType;
    bool isLiteral;
    struct var* readVar; //valid for OPERATION_READ_VAR and as the lvalue base for INC/DEC
    long long intLiteralVal;
    double floatLiteralVal; //valid for float literals only
    struct str memberName; //valid for OPERATION_MEMBER
    bool isTried; //OPERATION_FUNCCALL only: true if this call was written as "try f(...)" - see semantic.c
};

struct semaImport {
    struct str alias;
    struct semaModule* mod;
};

//one test { } block, resolved and checked like a body-less function - see semaCheckBodies
struct semaTest {
    struct str description;
    struct list codeBlock; //list of struct statement
};

struct semaModule {
    struct str fileName;
    struct syntaxModule syn;
    struct list types;   //list of struct type
    struct list vars;    //list of struct var: globals and functions share one namespace
    struct list imports; //list of struct semaImport
    struct list tests;   //list of struct semaTest: only test{} blocks declared directly in this file
};

struct semaModule* SemanticAnalyzeFile(char* fileName, bool testMode);
struct list* SemanticAllModules(void); //list of struct semaModule*, in load order; index is used for codegen symbol mangling

#endif //SEMANTIC_H
