#ifndef OPERATION_H
#define OPERATION_H

#include "type.h"
#include "token.h"

enum operation {
    OPERATION_NONE,

    OPERATION_READ_VAR,
    OPERATION_FUNCCALL,
    OPERATION_TYPECAST,

    //prefix unary
    OPERATION_NOT,
    OPERATION_BITWISE_COMPLEMENT,
    OPERATION_PLUS,
    OPERATION_MINUS,

    //binary
    OPERATION_MODULO,
    OPERATION_ADD,
    OPERATION_SUB,
    OPERATION_MUL,
    OPERATION_DIV,
    OPERATION_LESS_THAN,
    OPERATION_LESS_THAN_OR_EQUAL,
    OPERATION_GREATER_THAN,
    OPERATION_GREATER_THAN_OR_EQUAL,
    OPERATION_EQUALS,
    OPERATION_NOT_EQUALS,
    OPERATION_AND,
    OPERATION_OR,
    OPERATION_XOR,
    OPERATION_BITSHIFT_LEFT,
    OPERATION_BITSHIFT_RIGHT,
    OPERATION_BITWISE_AND,
    OPERATION_BITWISE_OR,
    OPERATION_BITWISE_XOR
};

struct operand {
    struct token tok;
    struct type type;
    struct list args;
    enum operation opType;
    bool isLiteral;
    struct var* readVar;
    long long intLiteralVal;
};

struct operand* OperandReadVar(struct var v);
struct operand* OperandUnary(struct operand* in, enum operation opType, struct token tok);
struct operand* OperandBinary(struct operand* a, struct operand* b, enum operation opType);
struct operand* OperandTypeCast(struct operand* op, struct type to, struct token tok);
struct operand* OperandBoolLiteral(struct token tok);
struct operand* OperandCharLiteral(struct token tok);
struct operand* OperandIntLiteral(struct token tok);
struct operand* OperandFloatLiteral(struct token tok);
struct operand* OperandStringLiteral(struct token tok);
struct operand* OperandEvalExpr(struct list opnds, struct list oprts);
bool OperandIsInt(struct operand* op);
bool OperandIsBool(struct operand* op);

#endif //OPERATION_H
