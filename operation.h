#ifndef OPERATION_H
#define OPERATION_H

#include "type.h"
#include "token.h"

enum operation {
    OPERATION_NONE,

    //func call
    OPERATION_FUNCCALL,

    //type cast
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
    OPERATION_BITSHIFT_LEFT,
    OPERATION_BITSHIFT_RIGHT,
    OPERATION_BITWISE_AND,
    OPERATION_BITWISE_OR,
    OPERATION_BITWISE_XOR,
};

struct operationList {
    int len;
    int cap;
    enum operation* ptr;
};

struct operandList {
    int len;
    int cap;
    struct operand** ptr;
};

struct operand {
    struct token tok;
    struct type type;
    struct operandList args;
    enum operation opType;
    bool isLiteral;
};

void OperandListAdd(struct operandList* ol, struct operand* o);
void OperationListAdd(struct operationList* ol, enum operation oper);
void OperandListDestroy(struct operandList ol);
void OperationListDestroy(struct operationList ol);
struct operand* OperandCreateUnary(struct operand* in, enum operation opType, struct token tok);
struct operand* OperandCreateBinary(struct operand* a, struct operand* b, enum operation opType);
struct operand* OperandCreateTypeCast(struct operand* op, struct type t);
struct operand* OperandCharLiteral(struct token tok);
struct operand* OperandIntLiteral(struct token tok);
struct operand* OperandFloatLiteral(struct token tok);
struct operand* OperandStringLiteral(struct token tok);
struct operand* OperandEvalExpr(struct operandList opnds, struct operationList oprts);
bool OperandIsInt(struct operand* op);

#endif //OPERATION_H
