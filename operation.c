#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include "var.h"
#include "operation.h"
#include "error.h"

#define OPERAND_ALLOC_STEP_SIZE 100
void OperandListAdd(struct operandList* ol, struct operand* o) { 
    if (ol->len >= ol->cap) {
        ol->cap += OPERAND_ALLOC_STEP_SIZE;
        ol->ptr = realloc(ol->ptr, sizeof(*(ol->ptr)) * ol->cap);
    }
    ol->ptr[ol->len] = o;
    ol->len++;
}

#define OPERATION_ALLOC_STEP_SIZE 100
void OperationListAdd(struct operationList* ol, enum operation oper) { 
    if (ol->len >= ol->cap) {
        ol->cap += OPERATION_ALLOC_STEP_SIZE;
        ol->ptr = realloc(ol->ptr, sizeof(*(ol->ptr)) * ol->cap);
    }
    ol->ptr[ol->len] = oper;
    ol->len++;
}

void OperandListDestroy(struct operandList ol) {
    if (ol.ptr) free(ol.ptr);
}

void OperationListDestroy(struct operationList ol) {
    if (ol.ptr) free(ol.ptr);
}

struct operand* operandEmpty() {
    struct operand* op = malloc(sizeof(*op));
    CheckAllocPtr(op);
    *op = (struct operand){0};
    return op;
}

bool canUseAsBool(struct operand* op) {
    if (op->type.bType == BASETYPE_BOOL) return true;
    return false;
}

bool canUseAsByte(struct operand* op) {
    if (op->type.bType == BASETYPE_BYTE) return true;
    return false;
}

bool canUseAsInt32(struct operand* op) {
    if (op->type.bType == BASETYPE_INT32) return true;
    return false;
}

bool canUseAsInt64(struct operand* op) {
    if (op->type.bType == BASETYPE_INT64) return true;
    if (op->isLiteral && op->type.bType == BASETYPE_INT32) return true;
    return false;
}

bool canUseAsInt(struct operand* op) {
    if (canUseAsInt32(op) || canUseAsInt64(op)) return true;
    return false;
}

bool canUseAsFloat32(struct operand* op) {
    if (op->type.bType == BASETYPE_FLOAT32) return true;
    if (op->isLiteral && canUseAsInt(op)) return true;
    return false;
}

bool canUseAsFloat64(struct operand* op) {
    if (op->type.bType == BASETYPE_FLOAT64) return true;
    if (op->isLiteral && op->type.bType == BASETYPE_FLOAT32) return true;
    if (op->isLiteral && canUseAsInt(op)) return true;
    return false;
}

struct operand* OperandBoolLiteral(struct token tok) {
    struct operand* op = operandEmpty();
    op->tok = tok;
    op->type = TypeVanilla(BASETYPE_BOOL);
    op->opType = OPERATION_NONE;
    op->isLiteral = true;
    return op;
}

struct operand* OperandCharLiteral(struct token tok) {
    struct operand* op = operandEmpty();
    op->tok = tok;
    op->type = TypeVanilla(BASETYPE_BYTE);
    op->opType = OPERATION_NONE;
    op->isLiteral = true;
    return op;
}

struct operand* OperandInt() {
    struct operand* op = operandEmpty();
    op->type = TypeVanilla(BASETYPE_INT64);
    op->opType = OPERATION_NONE;
    return op;
}

#define INT32_MAX 2147483647 
#define INT32_MIN -2147483648
struct operand* OperandIntLiteral(struct token tok) {
    struct operand* op = operandEmpty();
    op->tok = tok;
    long long val = LongLongFromStr(tok.str);
    if (val < INT32_MIN || val > INT32_MAX) op->type = TypeVanilla(BASETYPE_INT64);
    else op->type = TypeVanilla(BASETYPE_INT32);
    op->opType = OPERATION_NONE;
    op->isLiteral = true;
    return op;
}

#define FLT32_MAX 340282346638528859811704183484516925440.0
#define FLT32_MIN -340282346638528859811704183484516925440.0
struct operand* OperandFloatLiteral(struct token tok) {
    struct operand* op = operandEmpty();
    op->tok = tok;
    double val = DoubleFromStr(tok.str);
    if (val < FLT32_MIN || val > FLT32_MAX) op->type = TypeVanilla(BASETYPE_FLOAT64);
    else op->type = TypeVanilla(BASETYPE_FLOAT32);
    op->opType = OPERATION_NONE;
    op->isLiteral = true;
    return op;
}

struct operand* OperandStringLiteral(struct token tok) {
    struct operand* op = operandEmpty();
    op->tok = tok;
    op->type = TypeString(OperandInt());
    op->opType = OPERATION_NONE;
    op->isLiteral = true;
    return op;
}

bool canUseAsNumber(struct operand* op) {
    if (canUseAsInt(op)) return true;
    if (canUseAsFloat32(op)) return true;
    if (canUseAsFloat64(op)) return true;
    return false;
}

bool canUseAsNumberOrByte(struct operand* op) {
    if (canUseAsNumber(op)) return true;
    if (canUseAsByte(op)) return true;
    return true;
}

bool canUseTwoLiteralsAsSameType(struct operand* a, struct operand* b, enum baseType* bType) {
    if (canUseAsBool(a) && canUseAsBool(b)) {*bType = BASETYPE_BOOL; return true;}
    if (canUseAsInt32(a) && canUseAsInt32(b)) {*bType = BASETYPE_INT32; return true;}
    if (canUseAsInt64(a) && canUseAsInt64(b)) {*bType = BASETYPE_INT64; return true;}
    if (canUseAsFloat32(a) && canUseAsFloat32(b)) {*bType = BASETYPE_FLOAT32; return true;}
    if (canUseAsFloat64(a) && canUseAsFloat64(b)) {*bType = BASETYPE_FLOAT64; return true;}
    if (TypeIsByteArray(a->type) && TypeIsByteArray(b->type)) {*bType = BASETYPE_ARRAY; return true;}
    return false;
}

bool canUseLiteralAsNonLiteral(struct operand* nonLiteral, struct operand* literal) {
    switch(nonLiteral->type.bType) {
        case BASETYPE_BOOL: return canUseAsBool(literal);
        case BASETYPE_INT32: return canUseAsInt32(literal);
        case BASETYPE_INT64: return canUseAsInt64(literal);
        case BASETYPE_FLOAT32: return canUseAsFloat32(literal);
        case BASETYPE_FLOAT64: return canUseAsFloat64(literal);
        case BASETYPE_ARRAY:
                               if (TypeIsByteArray(nonLiteral->type) && TypeIsByteArray(literal->type)) return true;
                               else return false;
        default: return false;
    }
}

bool canUseAsByteOrInt(struct operand* op) {
    if (op->type.bType == BASETYPE_BYTE) return true;
    if (canUseAsInt(op)) return true;
    return false;
}

bool checkIsBool(struct operand* op) {
    if (canUseAsBool(op)) return true;
    SyntaxErrorInvalidToken(op->tok, OPERATION_REQUIRES_BOOL);
    return false;
}

bool checkIsInt(struct operand* op) {
    if (canUseAsInt(op)) return true;
    SyntaxErrorInvalidToken(op->tok, OPERATION_REQUIRES_INT);
    return false;
}

bool checkIsByteOrInt(struct operand* op) {
    if (canUseAsByteOrInt(op)) return true;
    SyntaxErrorInvalidToken(op->tok, OPERATION_REQUIRES_BYTE_OR_INT);
    return false;
}

bool checkIsNumber(struct operand* op) {
    if (canUseAsNumber(op)) return true;
    SyntaxErrorInvalidToken(op->tok, OPERATION_REQUIRES_NUMBER);
    return false;
}

bool checkModulo(struct operand* a, struct operand* b, enum baseType* bType){
    bool ret = true;
    if (!checkIsInt(a)) ret = false;
    if (!checkIsInt(b)) ret = false;
    *bType = a->type.bType;
    return ret;
}

bool isArraySameType(struct operand* a, struct operand* b) {
    if (a->type.arrBase != b->type.arrBase) return false;
    return true;
}

bool isStructVocabFuncSameType(struct operand* a, struct operand* b) {
    if (!StrCmp(a->type.name, b->type.name)) return false;
    if (a->type.pcId != b->type.pcId) return false;
    return true;
}

bool checkIsSameTypeNoLiterals(struct operand* a, struct operand* b) {
    if (a->type.bType != b->type.bType) return false;
    switch (a->type.bType) {
        case BASETYPE_ARRAY: return isArraySameType(a, b);
        case BASETYPE_STRUCT: return isStructVocabFuncSameType(a, b);
        case BASETYPE_VOCAB: return isStructVocabFuncSameType(a, b);
        case BASETYPE_FUNC: return isStructVocabFuncSameType(a, b);
        default: if (a->type.bType == b->type.bType) return true;
    }
    return false;
}

bool checkIsSameType(struct operand* a, struct operand* b, enum baseType* bType) {
    if (a->isLiteral && b->isLiteral) {
        if (!canUseTwoLiteralsAsSameType(a, b, bType)) {SyntaxErrorOperandsNotSameType(a, b); return false;}
        return true;
    }
    else if (a->isLiteral) {
        if (!canUseLiteralAsNonLiteral(b, a)) {SyntaxErrorOperandsNotSameType(a, b); return false;}
        *bType = b->type.bType;
        return true;
    }
    else if (b->isLiteral) {
        if (!canUseLiteralAsNonLiteral(a, b)) {SyntaxErrorOperandsNotSameType(a, b); return false;}
        *bType = b->type.bType;
        return true;
    }
    else if (!checkIsSameTypeNoLiterals(a, b)) return false;
    *bType = a->type.bType;
    return true;
}

bool checkIsSameNumberType(struct operand* a, struct operand* b, enum baseType* bType){
    bool ret = true;
    if (!checkIsNumber(a)) ret = false;
    if (!checkIsNumber(b)) ret = false;
    if (!ret) return false;
    return checkIsSameType(a, b, bType);
    return true;
}

bool checkIsBothBool(struct operand* a, struct operand* b) {
    bool ret = true;
    if (!checkIsBool(a)) ret = false;
    if (!checkIsBool(b)) ret = false;
    return ret;
}

bool checkIsCompatBitShift(struct operand* a, struct operand* b, enum baseType* bType) {
    bool ret = true;
    if (!checkIsByteOrInt(a)) ret = false;
    if (!checkIsInt(b)) ret = false;
    *bType = a->type.bType;
    return ret;
}

bool byteIntCanUseAsSameSize(struct operand* a, struct operand* b, enum baseType* bType) {
    if (canUseAsByte(a) && canUseAsByte(b)) {*bType = BASETYPE_BYTE; return true;}
    if (canUseAsInt32(a) && canUseAsInt32(b)) {*bType = BASETYPE_INT32; return true;}
    if (canUseAsInt64(a) && canUseAsInt64(b)) {*bType = BASETYPE_INT64; return true;}
    return false;
}

bool checkIsCompatBitWise(struct operand* a, struct operand* b, enum baseType* bType) {
    bool ret = true;
    if (!checkIsByteOrInt(a)) ret = false;
    if (!checkIsByteOrInt(b)) ret = false;
    if (!byteIntCanUseAsSameSize(a, b, bType)) {SyntaxErrorOperandsNotSameSize(a, b); ret = false;}
    return ret;
}

bool checkCompatBinary(struct operand* a, struct operand* b, enum operation opType, enum baseType* resBType) {
    switch(opType) {
        case OPERATION_MODULO: return checkModulo(a, b, resBType);
        case OPERATION_ADD: return checkIsSameNumberType(a, b, resBType);
        case OPERATION_SUB: return checkIsSameNumberType(a, b, resBType);
        case OPERATION_MUL: return checkIsSameNumberType(a, b, resBType);
        case OPERATION_DIV: return checkIsSameNumberType(a, b, resBType);
        case OPERATION_LESS_THAN: return checkIsSameNumberType(a, b, resBType);
        case OPERATION_LESS_THAN_OR_EQUAL: return checkIsSameNumberType(a, b, resBType);
        case OPERATION_GREATER_THAN: return checkIsSameNumberType(a, b, resBType);
        case OPERATION_GREATER_THAN_OR_EQUAL: return checkIsSameNumberType(a, b, resBType);

        case OPERATION_EQUALS: return checkIsSameType(a, b, resBType);
        case OPERATION_NOT_EQUALS: return checkIsSameType(a, b, resBType);

        case OPERATION_AND: *resBType = BASETYPE_BOOL; return checkIsBothBool(a, b);
        case OPERATION_OR: *resBType = BASETYPE_BOOL; return checkIsBothBool(a, b);
        case OPERATION_XOR: *resBType = BASETYPE_BOOL; return checkIsBothBool(a, b);

        case OPERATION_BITSHIFT_LEFT: return checkIsCompatBitShift(a, b, resBType);
        case OPERATION_BITSHIFT_RIGHT: return checkIsCompatBitShift(a, b, resBType);
        case OPERATION_BITWISE_AND: return checkIsCompatBitWise(a, b, resBType);
        case OPERATION_BITWISE_OR: return checkIsCompatBitWise(a, b, resBType);
        case OPERATION_BITWISE_XOR: return checkIsCompatBitWise(a, b, resBType);
        default: ErrorBugFound(); return false;
    }
}

bool typeCastIsCompat(struct operand* op, struct type to) {
    switch(to.bType) {
        case BASETYPE_BOOL: return false;
        case BASETYPE_BYTE: return canUseAsInt(op);
        case BASETYPE_INT32: return canUseAsNumberOrByte(op);
        case BASETYPE_INT64: return canUseAsNumberOrByte(op);
        case BASETYPE_FLOAT32: return canUseAsNumberOrByte(op);
        case BASETYPE_FLOAT64: return canUseAsNumberOrByte(op);
        case BASETYPE_ARRAY: return false;
        case BASETYPE_STRUCT: return false;
        case BASETYPE_VOCAB: return false;
        case BASETYPE_FUNC: return false;
    }
    return false; //unreachable
}

bool checkCompatUnary(struct operand* op, enum operation opType) {
    switch(opType) {
        case OPERATION_NOT: return checkIsBool(op);
        case OPERATION_BITWISE_COMPLEMENT: return checkIsByteOrInt(op);
        case OPERATION_PLUS: return checkIsNumber(op);
        case OPERATION_MINUS: return checkIsNumber(op);
        default: ErrorBugFound(); return false;
    }
}

struct operand* OperandReadVar(struct var* v) {
    struct operand* op = operandEmpty();
    op->tok = v->tok;
    op->type = v->type;
    op->opType = OPERATION_READ_VAR;
    op->readVar = v->origin;
    return op;
}

struct operand* OperandUnary(struct operand* in, enum operation opType, struct token tok) {
    if (!in) return NULL;
    if (!checkCompatUnary(in, opType)) return NULL;
    struct operand* out = operandEmpty();
    *out = *in;
    OperandListAdd(&(out->args), in);
    out->tok = tok;
    out->opType = opType;
    return out;
}

struct operand* OperandBinary(struct operand* a, struct operand* b, enum operation opType) {
    if (!a || !b) return NULL;
    enum baseType sharedBType;
    if (!checkCompatBinary(a, b, opType, &sharedBType)) return NULL;
    struct operand* c = operandEmpty();
    if (sharedBType == BASETYPE_ARRAY) c->type = a->type;
    else if (sharedBType == BASETYPE_STRUCT) c->type = a->type;
    else if (sharedBType == BASETYPE_VOCAB) c->type = a->type;
    else if (sharedBType == BASETYPE_FUNC) c->type = a->type;
    c->type = TypeVanilla(sharedBType);

    OperandListAdd(&(c->args), a);
    OperandListAdd(&(c->args), b);
    c->tok = TokenMerge(a->tok, b->tok);
    c->opType = opType;
    return c;
}

struct operand* OperandTypeCast(struct operand* op, struct type to, struct token tok) {
    if (!op) return NULL;
    if ((TypeIsByteArray(to) && op->type.bType != BASETYPE_FUNC) || TypeIsByteArray(op->type));
    else if (!typeCastIsCompat(op, to)) {
        SyntaxErrorInvalidToken(to.tok, INVALID_TYPECAST);
        return NULL;
    }
    struct operand* new = operandEmpty();
    *new = *op;
    new->type = to;
    new->tok = tok;
    new->isLiteral = false;
    return new;
}

//only for internal use in expression evaluation
struct operandList operandListSlice(struct operandList ops, int start, int end) {
    ops.ptr += start;
    ops.len = end - start;
    return ops;
}

//only for internal use in expression evaluation
struct operationList operationListSlice(struct operationList ops, int start, int end) {
    ops.ptr += start;
    ops.len = end - start;
    return ops;
}

enum operation operatorPrecedenceA[] = {OPERATION_AND, OPERATION_OR, OPERATION_XOR};
enum operation operatorPrecedenceB[] = {OPERATION_BITWISE_AND, OPERATION_BITWISE_OR, OPERATION_BITWISE_XOR};
enum operation operatorPrecedenceC[] = {
    OPERATION_LESS_THAN,
    OPERATION_LESS_THAN_OR_EQUAL,
    OPERATION_GREATER_THAN,
    OPERATION_GREATER_THAN_OR_EQUAL};
enum operation operatorPrecedenceD[] = {OPERATION_BITSHIFT_LEFT, OPERATION_BITSHIFT_RIGHT};
enum operation operatorPrecedenceE[] = {OPERATION_ADD, OPERATION_SUB};
enum operation operatorPrecedenceF[] = {OPERATION_MUL, OPERATION_DIV, OPERATION_MODULO};

struct operand* operandEvalPreferenceLvl(struct operandList opnds, struct operationList oprts, enum operation* lvl, int n){
    for (int i = 0; i < oprts.len; i++) {
        for (int j = 0; j < n; j++) {
            if (oprts.ptr[i] != lvl[j]) continue;
            struct operand* a = OperandEvalExpr(operandListSlice(opnds, 0, i +1), operationListSlice(oprts, 0, i));
            struct operand* b = OperandEvalExpr(
                    operandListSlice(opnds, i +1, opnds.len), operationListSlice(oprts, i +1, oprts.len));
            return OperandBinary(a, b, oprts.ptr[i]);
        }
    }
    return NULL;
}

//parenthesis and unary operators are handled at caller level
struct operand* OperandEvalExpr(struct operandList opnds, struct operationList oprts) {
    if (opnds.len == 1) return opnds.ptr[0];
    struct operand* op;
    if ((op = operandEvalPreferenceLvl(opnds, oprts, operatorPrecedenceA, 2))) return op;
    else if ((op = operandEvalPreferenceLvl(opnds, oprts, operatorPrecedenceB, 3))) return op;
    else if ((op = operandEvalPreferenceLvl(opnds, oprts, operatorPrecedenceC, 4))) return op;
    else if ((op = operandEvalPreferenceLvl(opnds, oprts, operatorPrecedenceD, 2))) return op;
    else if ((op = operandEvalPreferenceLvl(opnds, oprts, operatorPrecedenceE, 2))) return op;
    else return operandEvalPreferenceLvl(opnds, oprts, operatorPrecedenceF, 3);
}

bool OperandIsInt(struct operand* op) {
    return canUseAsInt(op);
}

bool OperandIsBool(struct operand* op) {
    return canUseAsBool(op);
}
