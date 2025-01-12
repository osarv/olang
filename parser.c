#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
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

bool isPublic(struct str name) {
    if (name.len <= 0) ErrorBugFound();
    char c = name.ptr[0];
    if (c >= 'A' && c <= 'Z') return true;
    return false;
}

bool pcGetType(ParserCtx pc, struct str name, struct type* t) {
    if (isPublic(name)) {
        if (!TypeListGet(pc->publTypes, name, t)) return false;
    }
    else if (!TypeListGet(pc->privTypes, name, t)) return false;
    return true;
}

void pcAddType(ParserCtx pc, struct type t) {
    struct type tmpType;
    if (pcGetType(pc, t.name, &tmpType)) SyntaxErrorInvalidToken(t.tok, "type name already in use");
    if (isPublic(t.name)) TypeListAdd(pc->publTypes, t);
    else TypeListAdd(pc->privTypes, t);
}

void addVanillaTypes(ParserCtx pc) {
    pcAddType(pc, TypeVanilla("int32", BASETYPE_INT32));
    pcAddType(pc, TypeVanilla("int64", BASETYPE_INT64));
    pcAddType(pc, TypeVanilla("float32", BASETYPE_FLOAT32));
    pcAddType(pc, TypeVanilla("float64", BASETYPE_FLOAT64));
    pcAddType(pc, TypeVanilla("bit32", BASETYPE_BIT32));
    pcAddType(pc, TypeVanilla("bit64", BASETYPE_BIT64));
    pcAddType(pc, TypeVanilla("byte", BASETYPE_BYTE));
}

//generates a generic error message base on the requested token type upon no error message
bool parseToken(ParserCtx pc, enum tokenType type, struct token* tokPtr, char* errMsg) {
    char errMsgBuffer[100];
    *tokPtr = TokenFeed(pc->tc);
    if (tokPtr->type == type) return true;
    if (!errMsg) {
        errMsg = errMsgBuffer;
        errMsg[0] = '\0';
        strcat(errMsg, "expected ");
        strcat(errMsg, TokenTypeToString(type));
    }
    SyntaxErrorInvalidToken(*tokPtr, errMsg);
    return false;
}

bool tryParseToken(ParserCtx pc, enum tokenType type, struct token* tokPtr) {
    *tokPtr = TokenFeed(pc->tc);
    if (tokPtr->type == type) return true;
    TokenUnfeed(pc->tc);
    return false;
}

void tryParseTypeArrayDeclaration(ParserCtx pc, struct type* t) {
    struct token tok;
    if (TokenPeek(pc->tc).type != TOKEN_SQUARE_BRACKET_OPEN) return;
    t->nArrLvls = 0;
    t->arrLens = malloc(sizeof(*(t->arrLens)) * 20);
    CheckAllocPtr(t->arrLens);

    while (tryParseToken(pc, TOKEN_SQUARE_BRACKET_OPEN, &tok)) {
        tok = TokenFeed(pc->tc);
        if (tok.type == TOKEN_SQUARE_BRACKET_CLOSE) {
            t->arrLens[t->nArrLvls] = ARRAY_REF;
            t->nArrLvls++;
        }
        else if (tok.type == TOKEN_INT_LITERAL) {
            t->arrLens[t->nArrLvls] = LongLongFromStr(tok.str);
            t->nArrLvls++;
            parseToken(pc, TOKEN_SQUARE_BRACKET_CLOSE, &tok, NULL);
        }
        else {
            SyntaxErrorInvalidToken(tok, "array length must be empty or an integer literal");
            parseToken(pc, TOKEN_SQUARE_BRACKET_CLOSE, &tok, NULL);
        }
    }
}

struct baseType* parseBaseTypeIdentifier(ParserCtx pc) {
    struct token tok;
    struct type t;
    if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, "expected type name")) return NULL;
    if (!pcGetType(pc, tok.str, &t)) {
        SyntaxErrorInvalidToken(tok, "unknown type");
        return NULL;
    }
    return t.bType;
}

struct baseType* parseBaseTypeStructDefinition(ParserCtx pc) {
    struct token tok;
    struct baseType* bt = BaseTypeEmpty();
    bt->bTypeVariant = BASETYPE_STRUCT;
    parseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok, NULL);
    //TODO
    parseToken(pc, TOKEN_CURLY_BRACKET_CLOSE, &tok, NULL);
    return bt;
}

StrList parseVocabWords(ParserCtx pc) {
    StrList words = StrListCreate();
    struct token tok;
    if (TokenPeek(pc->tc).type == TOKEN_CURLY_BRACKET_CLOSE) return words;
    parseToken(pc, TOKEN_IDENTIFIER, &tok, "expected vocabulary word");
    StrListAdd(words, tok.str);
    while(TokenPeek(pc->tc).type == TOKEN_COMMA) {
        TokenFeed(pc->tc);
        parseToken(pc, TOKEN_IDENTIFIER, &tok, "expected vocabulary word");
        StrListAdd(words, tok.str);
    }
    return words;
}

struct baseType* parseBaseTypeVocabDefinition(ParserCtx pc) {
    struct token tok;
    struct baseType* bt = BaseTypeEmpty();
    bt->bTypeVariant = BASETYPE_VOCAB;
    parseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok, NULL);
    bt->words = parseVocabWords(pc);
    parseToken(pc, TOKEN_CURLY_BRACKET_CLOSE, &tok, NULL);
    return bt;
}

struct baseType* parseBaseTypeFuncDefinition(ParserCtx pc) {
    struct token tok;
    struct baseType* bt = BaseTypeEmpty();
    bt->bTypeVariant = BASETYPE_FUNC;
    parseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok, NULL);
    //TODO
    parseToken(pc, TOKEN_CURLY_BRACKET_CLOSE, &tok, NULL);
    return bt;
}

struct baseType* parseBaseType(ParserCtx pc) {
    struct token tok = TokenFeed(pc->tc);
    struct baseType* bt;
    switch (tok.type) {
        case TOKEN_IDENTIFIER: TokenUnfeed(pc->tc); bt = parseBaseTypeIdentifier(pc); break;
        case TOKEN_STRUCT: bt = parseBaseTypeStructDefinition(pc); break;
        case TOKEN_VOCAB: bt = parseBaseTypeVocabDefinition(pc); break;
        case TOKEN_FUNC: bt = parseBaseTypeFuncDefinition(pc); break;
        default: SyntaxErrorInvalidToken(tok, "expected type");
    }
    return bt;
}

void parseTypeDef(ParserCtx pc) {
    struct token tok;
    parseToken(pc, TOKEN_IDENTIFIER, &tok, "expected type name");
    struct baseType* bt = parseBaseType(pc);
    struct type t = TypeFromBaseType(tok.str, tok, bt);
    tryParseTypeArrayDeclaration(pc, &t);
    if (bt) pcAddType(pc, t);
}

void parseGlobalLevelSwitch(ParserCtx pc) {
    struct token tok = TokenFeed(pc->tc);
    switch (tok.type) {
        case TOKEN_TYPE: parseTypeDef(pc); break;
        default: ErrorBugFound();
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
