#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include "var.h"
#include "operation.h"
#include "util.h"

struct operand* operandEmpty() {
    struct operand* op = malloc(sizeof(*op));
    CheckAllocPtr(op);
    *op = (struct operand){0};
    op->args = ListInit(sizeof(struct operand*));
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
    if (a->type.owner != b->type.owner) return false;
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
        if (!canUseTwoLiteralsAsSameType(a, b, bType)) return false;
        return true;
    }
    else if (a->isLiteral) {
        if (!canUseLiteralAsNonLiteral(b, a)) return false;
        *bType = b->type.bType;
        return true;
    }
    else if (b->isLiteral) {
        if (!canUseLiteralAsNonLiteral(a, b)) return false;
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

        case OPERATION_LESS_THAN: if (!checkIsSameNumberType(a, b, resBType)) return false;
                                      *resBType = BASETYPE_BOOL; return true;
        case OPERATION_LESS_THAN_OR_EQUAL: if (!checkIsSameNumberType(a, b, resBType)) return false;
                                      *resBType = BASETYPE_BOOL; return true;
        case OPERATION_GREATER_THAN: if (!checkIsSameNumberType(a, b, resBType)) return false;
                                      *resBType = BASETYPE_BOOL; return true;
        case OPERATION_GREATER_THAN_OR_EQUAL: if (!checkIsSameNumberType(a, b, resBType)) return false;
                                      *resBType = BASETYPE_BOOL; return true;
        case OPERATION_EQUALS: if (!checkIsSameNumberType(a, b, resBType)) return false;
                                      *resBType = BASETYPE_BOOL; return true;
        case OPERATION_NOT_EQUALS: if (!checkIsSameNumberType(a, b, resBType)) return false;
                                      *resBType = BASETYPE_BOOL; return true;

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
        case BASETYPE_ERROR: return false;
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

struct operand* OperandReadVar(struct var v) {
    struct operand* op = operandEmpty();
    op->tok = v.tok;
    op->type = v.type;
    op->opType = OPERATION_READ_VAR;
    op->readVar = v.origin;
    return op;
}

void tryEvalIntLiteral(struct operand* op) {
    for (int i = 0; i < op->args.len; i++) {
        struct operand* arg = ListGetIdx(&op->args, i);
        if (arg->type.bType != BASETYPE_INT32 && arg->type.bType != BASETYPE_INT64 &&
                arg->type.bType != BASETYPE_BOOL && arg->type.bType != BASETYPE_BYTE) return;
        if (!arg->isLiteral) return;
    }

    struct operand* a = ListGetIdx(&op->args, 0);
    struct operand* b;
    if (op->args.len > 1) b = ListGetIdx(&op->args, 1);

    switch (op->opType) {
        case OPERATION_TYPECAST: break;
        case OPERATION_NOT: op->intLiteralVal = !a->intLiteralVal; break;
        case OPERATION_BITWISE_COMPLEMENT: op->intLiteralVal = ~a->intLiteralVal; break;
        case OPERATION_PLUS: op->intLiteralVal = +a->intLiteralVal; break;
        case OPERATION_MINUS: op->intLiteralVal = -a->intLiteralVal; break;
        case OPERATION_MODULO: op->intLiteralVal = a->intLiteralVal % b->intLiteralVal; break;
        case OPERATION_ADD: op->intLiteralVal = a->intLiteralVal + b->intLiteralVal; break;
        case OPERATION_SUB: op->intLiteralVal = a->intLiteralVal - b->intLiteralVal; break;
        case OPERATION_MUL: op->intLiteralVal = a->intLiteralVal * b->intLiteralVal; break;
        case OPERATION_DIV: op->intLiteralVal = a->intLiteralVal / b->intLiteralVal; break;
        case OPERATION_LESS_THAN: op->intLiteralVal = a->intLiteralVal < b->intLiteralVal; break;
        case OPERATION_LESS_THAN_OR_EQUAL: op->intLiteralVal = a->intLiteralVal <= b->intLiteralVal; break;
        case OPERATION_GREATER_THAN: op->intLiteralVal = a->intLiteralVal > b->intLiteralVal; break;
        case OPERATION_GREATER_THAN_OR_EQUAL: op->intLiteralVal = a->intLiteralVal >= b->intLiteralVal; break;
        case OPERATION_EQUALS: op->intLiteralVal = a->intLiteralVal == b->intLiteralVal; break;
        case OPERATION_NOT_EQUALS: op->intLiteralVal = a->intLiteralVal != b->intLiteralVal; break;
        case OPERATION_AND: op->intLiteralVal = a->intLiteralVal && b->intLiteralVal; break;
        case OPERATION_OR: op->intLiteralVal = a->intLiteralVal || b->intLiteralVal; break;
        case OPERATION_XOR: op->intLiteralVal = a->intLiteralVal && b->intLiteralVal ? false :
                            !(!a->intLiteralVal && !b->intLiteralVal); break;
        case OPERATION_BITSHIFT_LEFT: op->intLiteralVal = a->intLiteralVal << b->intLiteralVal; break;
        case OPERATION_BITSHIFT_RIGHT: op->intLiteralVal = a->intLiteralVal >> b->intLiteralVal; break;
        case OPERATION_BITWISE_AND: op->intLiteralVal = a->intLiteralVal & b->intLiteralVal; break;
        case OPERATION_BITWISE_OR: op->intLiteralVal = a->intLiteralVal | b->intLiteralVal; break;
        case OPERATION_BITWISE_XOR: op->intLiteralVal = a->intLiteralVal ^ b->intLiteralVal; break;
        default: ErrorBugFound();
    }
}

struct operand* OperandUnary(struct operand* in, enum operation opType, struct token tok) {
    if (!in) return NULL;
    if (!checkCompatUnary(in, opType)) return NULL;
    struct operand* out = operandEmpty();
    *out = *in;
    ListAdd(&out->args, &in);
    out->tok = tok;
    out->opType = opType;
    tryEvalIntLiteral(out);
    return out;
}

struct operand* OperandBinary(struct operand* a, struct operand* b, enum operation opType) {
    if (!a || !b) return NULL;
    enum baseType sharedBType;
    if (!checkCompatBinary(a, b, opType, &sharedBType)) {
        SyntaxErrorOperandsNotSameType(a, b);
        return NULL;
    }
    struct operand* c = operandEmpty();
    if (sharedBType == BASETYPE_ARRAY) c->type = a->type;
    else if (sharedBType == BASETYPE_STRUCT) c->type = a->type;
    else if (sharedBType == BASETYPE_VOCAB) c->type = a->type;
    else if (sharedBType == BASETYPE_FUNC) c->type = a->type;
    c->type = TypeVanilla(sharedBType);

    ListAdd(&c->args, &a);
    ListAdd(&c->args, &b);
    c->tok = TokenMerge(a->tok, b->tok);
    c->opType = opType;
    c->isLiteral = a->isLiteral && b->isLiteral;
    tryEvalIntLiteral(c);
    return c;
}

struct operand* OperandTypeCast(struct operand* op, struct type to, struct token tok) {
    if (!op) return NULL;
    if ((TypeIsByteArray(to) && op->type.bType != BASETYPE_FUNC) || TypeIsByteArray(op->type));
    else if (!typeCastIsCompat(op, to)) {
        SyntaxErrorOperandIncompatibleType(op, to);
        return NULL;
    }
    struct operand* new = operandEmpty();
    *new = *op;
    ListAdd(&new->args, &op);
    new->type = to;
    new->tok = tok;
    tryEvalIntLiteral(new);
    return new;
}

enum operation operatorPrecedenceA[] = {OPERATION_AND, OPERATION_OR, OPERATION_XOR};
enum operation operatorPrecedenceB[] = {OPERATION_BITWISE_AND, OPERATION_BITWISE_OR, OPERATION_BITWISE_XOR};
enum operation operatorPrecedenceC[] = {
    OPERATION_LESS_THAN,
    OPERATION_LESS_THAN_OR_EQUAL,
    OPERATION_GREATER_THAN,
    OPERATION_GREATER_THAN_OR_EQUAL,
    OPERATION_NOT_EQUALS,
    OPERATION_EQUALS};
enum operation operatorPrecedenceD[] = {OPERATION_BITSHIFT_LEFT, OPERATION_BITSHIFT_RIGHT};
enum operation operatorPrecedenceE[] = {OPERATION_ADD, OPERATION_SUB};
enum operation operatorPrecedenceF[] = {OPERATION_MUL, OPERATION_DIV, OPERATION_MODULO};

struct operand* operandEvalPreferenceLvl(struct list opnds, struct list oprts, enum operation* lvl, int n){
    for (int i = 0; i < oprts.len; i++) {
        for (int j = 0; j < n; j++) {
            if (*(enum operation*)ListGetIdx(&oprts, i) != lvl[j]) continue;
            struct operand* a = OperandEvalExpr(ListSlice(&opnds, 0, i +1), ListSlice(&oprts, 0, i));
            struct operand* b = OperandEvalExpr(
                    ListSlice(&opnds, i +1, opnds.len), ListSlice(&oprts, i +1, oprts.len));
            return OperandBinary(a, b, *(enum operation*)ListGetIdx(&oprts, i));
        }
    }
    return NULL;
}

//parenthesis and unary operators are handled at caller level
struct operand* OperandEvalExpr(struct list opnds, struct list oprts) {
    if (opnds.len == 1) return *(struct operand**)ListGetIdx(&opnds, 0);
    struct operand* op;
    if ((op = operandEvalPreferenceLvl(opnds, oprts, operatorPrecedenceA, 2))) return op;
    else if ((op = operandEvalPreferenceLvl(opnds, oprts, operatorPrecedenceB, 3))) return op;
    else if ((op = operandEvalPreferenceLvl(opnds, oprts, operatorPrecedenceC, 6))) return op;
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
