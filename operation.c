#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include "util.h"
#include "var.h"
#include "operation.h"
#include "errmsg.h"

struct operand* operandNew(struct token tok, enum operation opType, struct type type) {
    struct operand* op = MallocOrCrash(sizeof(struct operand));
    *op = (struct operand){0};
    op->tok = tok;
    op->opType = opType;
    op->type = type;
    op->args = ListInit(sizeof(struct operand*));
    return op;
}

bool OperandIsInt(struct operand* op) {
    return TypeIsInt(op->type);
}

bool OperandIsBool(struct operand* op) {
    return op->type.bType == BASETYPE_BOOL;
}

bool OperandIsNumeric(struct operand* op) {
    return TypeIsNumeric(op->type);
}

//can op flow into a target-typed slot (assignment, initialization, argument passing)? an int literal
//widens into a float slot since it carries no fixed width of its own yet; anything else must match
//exactly - general implicit numeric conversion (e.g. int32->int64, or non-literal int->float) is
//undecided language design, not implemented here
bool OperandFitsType(struct operand* op, struct type target) {
    if (TypeIsSame(target, op->type)) return true;
    if (op->isLiteral && TypeIsInt(op->type) && TypeIsFloat(target)) {
        op->type = target;
        return true;
    }
    return false;
}

struct operand* OperandReadVar(struct var* v, struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_READ_VAR, v->type);
    op->readVar = v;
    return op;
}

struct operand* OperandFuncCall(struct var* func, struct list args, struct token tok) {
    struct type ret = func->type.hasRetType ? *func->type.retType : TypeVanilla(BASETYPE_VOID);
    struct operand* op = operandNew(tok, OPERATION_FUNCCALL, ret);
    op->readVar = func;
    op->args = args;

    if (args.len != func->type.vars.len) {
        ErrMsgSemantic(tok, "wrong number of arguments");
        return op;
    }
    for (int i = 0; i < args.len; i++) {
        struct operand* arg = *(struct operand**)ListGetIdx(&args, i);
        struct type paramType = (*(struct var*)ListGetIdx(&func->type.vars, i)).type;
        if (!OperandFitsType(arg, paramType)) ErrMsgSemantic(arg->tok, OPERANDS_NOT_SAME_TYPE);
    }
    return op;
}

struct operand* OperandIndex(struct operand* base, struct operand* index, struct token tok) {
    if (base->type.bType != BASETYPE_ARRAY) {
        ErrMsgSemantic(tok, "operand is not an array");
        return operandNew(tok, OPERATION_INDEX, TypeVanilla(BASETYPE_INT32));
    }
    if (!TypeIsInt(index->type)) ErrMsgSemantic(index->tok, OPERATION_REQUIRES_INT);

    struct operand* op = operandNew(tok, OPERATION_INDEX, *base->type.arrElem);
    ListAdd(&op->args, &base);
    ListAdd(&op->args, &index);
    return op;
}

struct operand* OperandMember(struct operand* base, struct str member, struct token tok) {
    if (base->type.bType != BASETYPE_STRUCT) {
        ErrMsgSemantic(tok, UNKNOWN_STRUCT_MEMBER);
        return operandNew(tok, OPERATION_MEMBER, TypeVanilla(BASETYPE_INT32));
    }
    struct var* memberVar = VarGetList(&base->type.vars, member);
    if (!memberVar) {
        ErrMsgSemantic(tok, UNKNOWN_STRUCT_MEMBER);
        return operandNew(tok, OPERATION_MEMBER, TypeVanilla(BASETYPE_INT32));
    }
    struct operand* op = operandNew(tok, OPERATION_MEMBER, memberVar->type);
    op->memberName = member;
    ListAdd(&op->args, &base);
    return op;
}

bool OperandIsMutableLvalue(struct operand* op) {
    switch (op->opType) {
        case OPERATION_READ_VAR: return op->readVar->mut;
        case OPERATION_INDEX: return OperandIsMutableLvalue(*(struct operand**)ListGetIdx(&op->args, 0));
        case OPERATION_MEMBER: return OperandIsMutableLvalue(*(struct operand**)ListGetIdx(&op->args, 0));
        default: return false;
    }
}

bool OperandIsLvalue(struct operand* op) {
    return op->opType == OPERATION_READ_VAR || op->opType == OPERATION_INDEX || op->opType == OPERATION_MEMBER;
}

struct operand* incDec(struct operand* in, enum operation opType, struct token tok) {
    struct operand* op = operandNew(tok, opType, in->type);
    ListAdd(&op->args, &in);
    if (!OperandIsLvalue(in)) {
        ErrMsgSemantic(tok, "operand must be a variable, index, or member");
        return op;
    }
    if (!OperandIsNumeric(in)) ErrMsgSemantic(tok, OPERATION_REQUIRES_NUMBER);
    if (!OperandIsMutableLvalue(in)) ErrMsgSemantic(tok, VAR_IMMUTABLE);
    return op;
}

struct operand* OperandUnary(struct operand* in, enum operation opType, struct token tok) {
    switch (opType) {
        case OPERATION_NOT: {
            struct operand* op = operandNew(tok, opType, TypeVanilla(BASETYPE_BOOL));
            ListAdd(&op->args, &in);
            if (!OperandIsBool(in)) ErrMsgSemantic(tok, OPERATION_REQUIRES_BOOL);
            return op;
        }
        case OPERATION_BTWSE_INV: {
            struct operand* op = operandNew(tok, opType, in->type);
            ListAdd(&op->args, &in);
            if (!OperandIsInt(in)) ErrMsgSemantic(tok, OPERATION_REQUIRES_INT);
            return op;
        }
        case OPERATION_MINUS: {
            struct operand* op = operandNew(tok, opType, in->type);
            ListAdd(&op->args, &in);
            if (!OperandIsNumeric(in)) ErrMsgSemantic(tok, OPERATION_REQUIRES_NUMBER);
            return op;
        }
        case OPERATION_PREFIX_INC: case OPERATION_PREFIX_DEC:
        case OPERATION_POSTFIX_INC: case OPERATION_POSTFIX_DEC:
            return incDec(in, opType, tok);
        default:
            ErrorBugFound();
            return NULL;
    }
}

bool isComparison(enum operation opType) {
    switch (opType) {
        case OPERATION_LST: case OPERATION_LSE: case OPERATION_GRT: case OPERATION_GRE:
        case OPERATION_EQ: case OPERATION_NEQ:
            return true;
        default: return false;
    }
}

bool isBoolOp(enum operation opType) {
    switch (opType) {
        case OPERATION_AND: case OPERATION_OR: case OPERATION_XOR: return true;
        default: return false;
    }
}

bool isIntOp(enum operation opType) {
    switch (opType) {
        case OPERATION_BTSFT_L: case OPERATION_BTSFT_R:
        case OPERATION_BTWSE_AND: case OPERATION_BTWSE_OR: case OPERATION_BTWSE_XOR:
        case OPERATION_MOD:
            return true;
        default: return false;
    }
}

bool isShift(enum operation opType) {
    return opType == OPERATION_BTSFT_L || opType == OPERATION_BTSFT_R;
}

struct operand* OperandBinary(struct operand* a, struct operand* b, enum operation opType, struct token tok) {
    if (isBoolOp(opType)) {
        struct operand* op = operandNew(tok, opType, TypeVanilla(BASETYPE_BOOL));
        ListAdd(&op->args, &a);
        ListAdd(&op->args, &b);
        if (!OperandIsBool(a)) ErrMsgSemantic(a->tok, OPERATION_REQUIRES_BOOL);
        if (!OperandIsBool(b)) ErrMsgSemantic(b->tok, OPERATION_REQUIRES_BOOL);
        return op;
    }
    if (isComparison(opType)) {
        struct operand* op = operandNew(tok, opType, TypeVanilla(BASETYPE_BOOL));
        ListAdd(&op->args, &a);
        ListAdd(&op->args, &b);
        if (opType == OPERATION_EQ || opType == OPERATION_NEQ) {
            if (!TypeIsSame(a->type, b->type)) ErrMsgSemantic(tok, OPERANDS_NOT_SAME_TYPE);
        } else {
            if (!OperandIsNumeric(a)) ErrMsgSemantic(a->tok, OPERATION_REQUIRES_NUMBER);
            if (!OperandIsNumeric(b)) ErrMsgSemantic(b->tok, OPERATION_REQUIRES_NUMBER);
            if (OperandIsNumeric(a) && OperandIsNumeric(b) && !TypeIsSame(a->type, b->type)) {
                ErrMsgSemantic(tok, OPERANDS_NOT_SAME_TYPE);
            }
        }
        return op;
    }

    //arithmetic and bitwise: result type is a's type
    struct operand* op = operandNew(tok, opType, a->type);
    ListAdd(&op->args, &a);
    ListAdd(&op->args, &b);

    if (isIntOp(opType)) {
        if (!OperandIsInt(a)) ErrMsgSemantic(a->tok, OPERATION_REQUIRES_INT);
        if (!OperandIsInt(b)) ErrMsgSemantic(b->tok, OPERATION_REQUIRES_INT);
        if (!isShift(opType) && OperandIsInt(a) && OperandIsInt(b) && !TypeIsSame(a->type, b->type)) {
            ErrMsgSemantic(tok, OPERANDS_NOT_SAME_TYPE);
        }
        return op;
    }

    //ADD, SUB, MUL, DIV
    if (!OperandIsNumeric(a)) ErrMsgSemantic(a->tok, OPERATION_REQUIRES_NUMBER);
    if (!OperandIsNumeric(b)) ErrMsgSemantic(b->tok, OPERATION_REQUIRES_NUMBER);
    if (OperandIsNumeric(a) && OperandIsNumeric(b) && !TypeIsSame(a->type, b->type)) {
        ErrMsgSemantic(tok, OPERANDS_NOT_SAME_TYPE);
    }
    return op;
}

struct operand* OperandBoolLiteral(struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_BOOL));
    op->isLiteral = true;
    op->intLiteralVal = !strncmp(tok.str.ptr, "true", (size_t)tok.str.len) ? 1 : 0;
    return op;
}

long long decodeCharBody(char* ptr, int len) {
    if (len == 0) return 0;
    if (ptr[0] != '\\') return ptr[0];
    if (len < 2) return 0;
    switch (ptr[1]) {
        case 'n': return '\n';
        case 't': return '\t';
        case '\\': return '\\';
        case '\'': return '\'';
        case '"': return '"';
        default: return ptr[1];
    }
}

struct operand* OperandCharLiteral(struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_BYTE));
    op->isLiteral = true;
    op->intLiteralVal = decodeCharBody(tok.str.ptr +1, tok.str.len -2);
    return op;
}

struct operand* OperandIntLiteral(struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_INT32));
    op->isLiteral = true;
    char buf[tok.str.len +1];
    memcpy(buf, tok.str.ptr, (size_t)tok.str.len);
    buf[tok.str.len] = '\0';
    op->intLiteralVal = strtoll(buf, NULL, 10);
    return op;
}

struct operand* OperandFloatLiteral(struct token tok) {
    struct operand* op = operandNew(tok, OPERATION_NONE, TypeVanilla(BASETYPE_FLOAT32));
    op->isLiteral = true;
    return op;
}

struct operand* OperandStringLiteral(struct token tok) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_ARRAY;
    t.arrElem = MallocOrCrash(sizeof(struct type));
    *t.arrElem = TypeVanilla(BASETYPE_BYTE);
    t.arrMalloc = false;
    struct operand* op = operandNew(tok, OPERATION_NONE, t);
    op->isLiteral = true;
    return op;
}
