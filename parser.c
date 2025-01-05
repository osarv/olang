#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include "parser.h"
#include "error.h"
#include "token.h"
#include "type.h"
#include "var.h"
#include "error.h"

struct parserContext {
    TokenCtx tc; //contains fileName
    TypeList publTypes;
    TypeList privTypes;
};

bool isPublic(struct strSlice name) {
    if (name.len <= 0) ErrorBugFound();
    char c = name.ptr[0];
    if (c >= 'A' && c <= 'Z') return true;
    return false;
}

void pcAddType(ParserCtx pc, struct type t) {
    if (isPublic(t.name)) TypeListAdd(pc->publTypes, t);
    else TypeListAdd(pc->privTypes, t);
}

void addVanillaTypes(ParserCtx pc) {
    pcAddType(pc, VanillaType("int32", BASETYPE_INT32));
    pcAddType(pc, VanillaType("int64", BASETYPE_INT64));
    pcAddType(pc, VanillaType("float32", BASETYPE_FLOAT32));
    pcAddType(pc, VanillaType("float64", BASETYPE_FLOAT64));
    pcAddType(pc, VanillaType("bit32", BASETYPE_BIT32));
    pcAddType(pc, VanillaType("bit32", BASETYPE_BIT64));
    pcAddType(pc, VanillaType("byte", BASETYPE_BYTE));
}

enum parseStatus pcGetType(ParserCtx pc, struct strSlice name, struct type* t) {
    if (isPublic(name)) {
        if (!TypeListGet(pc->publTypes, name, t)) return PARSE_FAILURE;
    }
    else if (!TypeListGet(pc->privTypes, name, t)) return PARSE_FAILURE;
    return PARSE_SUCCESS;
}

enum parseStatus parseToken(ParserCtx pc, enum tokenType type, struct token* tokPtr, char* errMsg) {
    *tokPtr = TokenFeed(pc->tc);
    if (tokPtr->type == type) return PARSE_SUCCESS;
    SyntaxErrorInvalidToken(*tokPtr, errMsg);
    return PARSE_FAILURE;
}

enum parseStatus tryParseToken(ParserCtx pc, enum tokenType type, struct token* tokPtr) {
    *tokPtr = TokenFeed(pc->tc);
    if (tokPtr->type == type) return PARSE_SUCCESS;
    TokenUnfeed(pc->tc);
    return PARSE_FAILURE;
}

enum parseStatus tryParseTypeArrayDefinition(ParserCtx pc, struct type* t) {
    struct token tok;
    if (TokenPeek(pc->tc).type != TOKEN_SQUARE_BRACKET_OPEN) return PARSE_SUCCESS;
    t->nArrLvls = 0;
    t->arrLens = malloc(sizeof(*(t->arrLens)) * 20);
    CheckAllocPtr(t->arrLens);

    while (tryParseToken(pc, TOKEN_SQUARE_BRACKET_OPEN, &tok)) {
        if (tryParseToken(pc, TOKEN_INT_LITERAL, &tok)) t->arrLens[t->nArrLvls] = 0; //TODO
        else t->arrLens[t->nArrLvls] = ARRAY_REF;
        t->nArrLvls++;

        if (!parseToken(pc, TOKEN_SQUARE_BRACKET_CLOSE, &tok, "expected closing square bracket")) {
            return PARSE_FAILURE;
        }
    }
    return PARSE_SUCCESS;
}

enum parseStatus parseType(ParserCtx pc, struct type* t) {
    enum parseStatus status = PARSE_SUCCESS;
    struct token tok;
    status |= parseToken(pc, TOKEN_IDENTIFIER, &tok, "expected type name");
    if ((status |= pcGetType(pc, tok.str, t)) != PARSE_SUCCESS) SyntaxErrorInvalidToken(tok, "expected type");
    status |= tryParseTypeArrayDefinition(pc, t);
    return status;
}

enum parseStatus parseTypeDef(ParserCtx pc) {
    struct token tok;
    struct type refType;
    enum parseStatus status = parseToken(pc, TOKEN_IDENTIFIER, &tok, "expected type name");
    status |= parseType(pc, &refType);
    pcAddType(pc, Type(tok.str, tok, refType.bType));
    return status;
}

void parseGlobalLevelSwitch(ParserCtx pc) {
    struct token tok = TokenFeed(pc->tc);
    switch (tok.type) {
        case TOKEN_TYPE: parseTypeDef(pc); break;
        default: SyntaxErrorInvalidToken(tok, NULL);
    }
}

ParserCtx ParseFile(char* fileName) {
    ParserCtx pc = calloc(sizeof(*pc), 1);
    CheckAllocPtr(pc);
    pc->publTypes = TypeListCreate();
    pc->privTypes = TypeListCreate();
    pc->tc = TokenizeFile(fileName);
    addVanillaTypes(pc);

    while (TokenPeek(pc->tc).type != TOKEN_EOF) {
        parseGlobalLevelSwitch(pc);
    }

    return pc;
}
