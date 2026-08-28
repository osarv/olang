#ifndef OPERATION_H
#define OPERATION_H

#include "type.h"
#include "token.h"
#include "list.h"

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
    struct str memberName; //valid for OPERATION_MEMBER
};

struct operand* OperandFuncCall(struct var* func, struct list args, struct token tok);
struct operand* OperandReadVar(struct var* v, struct token tok);
struct operand* OperandIndex(struct operand* base, struct operand* index, struct token tok);
struct operand* OperandMember(struct operand* base, struct str member, struct token tok);
struct operand* OperandUnary(struct operand* in, enum operation opType, struct token tok);
struct operand* OperandBinary(struct operand* a, struct operand* b, enum operation opType, struct token tok);
struct operand* OperandBoolLiteral(struct token tok);
struct operand* OperandCharLiteral(struct token tok);
struct operand* OperandIntLiteral(struct token tok);
struct operand* OperandFloatLiteral(struct token tok);
struct operand* OperandStringLiteral(struct token tok);
bool OperandIsInt(struct operand* op);
bool OperandIsBool(struct operand* op);
bool OperandIsNumeric(struct operand* op);
bool OperandFitsType(struct operand* op, struct type target);
bool OperandIsLvalue(struct operand* op);
bool OperandIsMutableLvalue(struct operand* op);

#endif //OPERATION_H
