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
    if (pcGetType(pc, t.name, &tmpType)) SyntaxErrorInvalidToken(t.tok, DUPLICATE_IDENTIFIER);
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

int parseUntilOneOfTokensOrEOF(ParserCtx pc, enum tokenType tokens[], int len, struct token* foundUntil) {
    struct token tok;
    bool run = true;
    int nFoundUntil = 0;
    while (run && (tok = TokenFeed(pc->tc)).type != TOKEN_EOF) {
        for (int i = 0; i < len; i++) {
            if (tok.type == tokens[i]) run = false;
        }
        if (!run) break;
        if (nFoundUntil == 0) *foundUntil = tok;
        else *foundUntil = TokenMerge(*foundUntil, tok);
        nFoundUntil++;
    }
    TokenUnfeed(pc->tc);
    return nFoundUntil;
}

void parseUntilClosingSquareBracket(ParserCtx pc) {
    enum tokenType tType = TOKEN_SQUARE_BRACKET_CLOSE;
    struct token errorToken;
    int nFoundUntil = parseUntilOneOfTokensOrEOF(pc, &tType, 1, &errorToken);
    if (nFoundUntil != 0) SyntaxErrorInvalidToken(errorToken, EXPECTED_CLOSING_SQUARE_BRACKET);
}

void parseUntilCommaOrCurlyClose(ParserCtx pc) {
    enum tokenType tTypes[] = {TOKEN_COMMA, TOKEN_CURLY_BRACKET_CLOSE};
    struct token errorToken;
    parseUntilOneOfTokensOrEOF(pc, tTypes, 2, &errorToken);
}

void parseUntilCommaOrParenClose(ParserCtx pc) {
    enum tokenType tTypes[] = {TOKEN_COMMA, TOKEN_PAREN_CLOSE};
    struct token errorToken;
    parseUntilOneOfTokensOrEOF(pc, tTypes, 2, &errorToken);
}

//generates a generic error message based on the requested token type if errMsg is NULL
bool parseToken(ParserCtx pc, enum tokenType type, struct token* tokPtr, char* errMsg) {
    char errMsgBuffer[100];
    *tokPtr = TokenFeed(pc->tc);
    if (tokPtr->type == type) return true;
    if (!errMsg) {
        errMsg = errMsgBuffer;
        errMsg[0] = '\0';
        strcat(errMsg, "expected \"");
        strcat(errMsg, TokenTypeToString(type));
        strcat(errMsg, "\"");
    }
    SyntaxErrorInvalidToken(*tokPtr, errMsg);
    TokenUnfeed(pc->tc);
    return false;
}

bool tryParseToken(ParserCtx pc, enum tokenType type, struct token* tokPtr) {
    *tokPtr = TokenFeed(pc->tc);
    if (tokPtr->type == type) return true;
    TokenUnfeed(pc->tc);
    return false;
}

void tryParseTypeArrayDeclarationRefsOnly(ParserCtx pc, struct type* t) {
    struct token tok;
    if (TokenPeek(pc->tc).type != TOKEN_SQUARE_BRACKET_OPEN) return;
    t->arrLens = realloc(t->arrLens, sizeof(*(t->arrLens)) * 20);
    CheckAllocPtr(t->arrLens);

    while (tryParseToken(pc, TOKEN_SQUARE_BRACKET_OPEN, &tok)) {
        parseUntilClosingSquareBracket(pc);
        parseToken(pc, TOKEN_SQUARE_BRACKET_CLOSE, &tok, NULL);
        t->arrLens[t->nArrLvls] = ARRAY_REF;
        t->nArrLvls++;
    }
}

void tryParseTypeArrayDeclaration(ParserCtx pc, struct type* t) {
    struct token tok;
    if (TokenPeek(pc->tc).type != TOKEN_SQUARE_BRACKET_OPEN) return;
    t->arrLens = realloc(t->arrLens, sizeof(*(t->arrLens)) * 20);
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
            TokenUnfeed(pc->tc);
            SyntaxErrorInvalidToken(tok, INVALID_ARRAY_SIZE);
            parseToken(pc, TOKEN_SQUARE_BRACKET_CLOSE, &tok, NULL);
        }
    }
}

struct baseType* parseTypeDefBaseTypeAlias(ParserCtx pc) {
    struct token tok;
    struct type t;
    if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_TYPE_NAME)) return NULL;
    if (!pcGetType(pc, tok.str, &t)) {
        SyntaxErrorInvalidToken(tok, EXPECTED_TYPE_NAME);
        return NULL;
    }
    return t.bType;
}

bool parseType(ParserCtx pc, struct type* t) {
    struct token tok;
    if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_TYPE_NAME)) return false;
    if (!pcGetType(pc, tok.str, t)) {
        SyntaxErrorInvalidToken(tok, EXPECTED_TYPE_NAME);
        return false;
    }
    return true;
}

bool parseTypeDeclaration(ParserCtx pc, struct type* t) {
    if (!parseType(pc, t)) return false;
    if (t->bType->bTypeVariant == BASETYPE_STRUCT) {
        struct token tok;
        if (tryParseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok)) {
            t->structMAlloc = true;
            parseToken(pc, TOKEN_CURLY_BRACKET_CLOSE, &tok, NULL);
        }
    }
    tryParseTypeArrayDeclaration(pc, t);
    return true;
}

bool parseVarDeclaration(ParserCtx pc, struct var* v) {
    struct type t = (struct type){0};
    struct token tok;
    if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_VAR_NAME)) return false;
    if (!parseTypeDeclaration(pc, &t)) return false;
    *v = VarInit(tok.str, t, tok);
    return true;
}

VarList parseStructMembersList(ParserCtx pc) {
    VarList vars = VarListCreate();
    if (TokenPeek(pc->tc).type == TOKEN_CURLY_BRACKET_CLOSE) return vars;
    struct var var;
    if (parseVarDeclaration(pc, &var)) VarListAdd(vars, var);
    else parseUntilCommaOrCurlyClose(pc);
    struct token tok;
    while(tryParseToken(pc, TOKEN_COMMA, &tok)) {
        if (!parseVarDeclaration(pc, &var)) {
            parseUntilCommaOrCurlyClose(pc);
            continue;
        }
        struct var tmp;
        if (VarListGet(vars, var.name, &tmp)) SyntaxErrorInvalidToken(var.tok, DUPLICATE_IDENTIFIER);
        VarListAdd(vars, var);
    }
    return vars;
}

struct baseType* parseTypeDefBaseTypeStructDefinition(ParserCtx pc) {
    struct token tok;
    struct baseType* bt = BaseTypeEmpty();
    bt->bTypeVariant = BASETYPE_STRUCT;
    parseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok, NULL);
    bt->vars = parseStructMembersList(pc);
    parseToken(pc, TOKEN_CURLY_BRACKET_CLOSE, &tok, EXPECTED_CLOSING_CURLY_OR_COMMA);
    return bt;
}

StrList parseVocabWords(ParserCtx pc) {
    StrList words = StrListCreate();
    struct token tok;
    if (TokenPeek(pc->tc).type == TOKEN_CURLY_BRACKET_CLOSE) return words;
    if (parseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_VOCAB_WORD)) StrListAdd(words, tok.str);
    else parseUntilCommaOrCurlyClose(pc);
    struct token tmp;
    while(tryParseToken(pc, TOKEN_COMMA, &tmp)) {
        if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_VOCAB_WORD)) {
            parseUntilCommaOrCurlyClose(pc);
            continue;
        }
        struct str tmp;
        if (StrListGet(words, tok.str, &tmp)) SyntaxErrorInvalidToken(tok, DUPLICATE_IDENTIFIER);
        else StrListAdd(words, tok.str);
    }
    return words;
}

struct baseType* parseTypeDefBaseTypeVocabDefinition(ParserCtx pc) {
    struct token tok;
    struct baseType* bt = BaseTypeEmpty();
    bt->bTypeVariant = BASETYPE_VOCAB;
    parseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok, NULL);
    bt->words = parseVocabWords(pc);
    parseToken(pc, TOKEN_CURLY_BRACKET_CLOSE, &tok, EXPECTED_CLOSING_CURLY_OR_COMMA);
    return bt;
}

bool parseFuncArg(ParserCtx pc, struct var* v) {
    struct token tok;
    struct type t;
    bool mut = false;
    if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_VAR_NAME)) return false;
    struct token mutTok;
    if (tryParseToken(pc, TOKEN_MUT, &mutTok)) mut = true;
    if (!parseType(pc, &t)) return false;
    tryParseTypeArrayDeclarationRefsOnly(pc, &t);
    *v = VarInit(tok.str, t, tok);
    v->mut = mut;
    return true;
}

VarList parseFuncArgs(ParserCtx pc) {
    VarList args = VarListCreate();
    if (TokenPeek(pc->tc).type == TOKEN_PAREN_CLOSE) return args;
    struct var var;
    if (parseFuncArg(pc, &var)) VarListAdd(args, var);
    else parseUntilCommaOrParenClose(pc);
    struct token tok;
    while(tryParseToken(pc, TOKEN_COMMA, &tok)) {
        if (!parseFuncArg(pc, &var)) {
            parseUntilCommaOrParenClose(pc);
            continue;
        }
        struct var tmp;
        if (VarListGet(args, var.name, &tmp)) SyntaxErrorInvalidToken(var.tok, DUPLICATE_IDENTIFIER);
        VarListAdd(args, var);
    }
    return args;
}

TypeList parseFuncRets(ParserCtx pc) {
    TypeList rets = TypeListCreate();
    if (TokenPeek(pc->tc).type == TOKEN_PAREN_CLOSE) return rets;
    struct type type = (struct type){0};
    if (parseTypeDeclaration(pc, &type)) TypeListAdd(rets, type);
    else parseUntilCommaOrParenClose(pc);
    struct token tok;
    while(tryParseToken(pc, TOKEN_COMMA, &tok)) {
        if (!parseTypeDeclaration(pc, &type)) {
            parseUntilCommaOrParenClose(pc);
            continue;
        }
        struct type tmp;
        if (TypeListGet(rets, type.name, &tmp)) SyntaxErrorInvalidToken(type.tok, DUPLICATE_IDENTIFIER);
        TypeListAdd(rets, type);
    }
    return rets;
}

struct baseType* parseTypeDefBaseTypeFuncDefinition(ParserCtx pc) {
    struct token tok;
    struct baseType* bt = BaseTypeEmpty();
    bt->bTypeVariant = BASETYPE_FUNC;
    parseToken(pc, TOKEN_PAREN_OPEN, &tok, NULL);
    bt->vars = parseFuncArgs(pc);
    parseToken(pc, TOKEN_PAREN_CLOSE, &tok, NULL);
    parseToken(pc, TOKEN_PAREN_OPEN, &tok, NULL);
    bt->rets = parseFuncRets(pc);
    parseToken(pc, TOKEN_PAREN_CLOSE, &tok, NULL);
    return bt;
}

struct baseType* parseTypeDefBaseType(ParserCtx pc) {
    struct token tok = TokenFeed(pc->tc);
    struct baseType* bt;
    switch (tok.type) {
        case TOKEN_IDENTIFIER: TokenUnfeed(pc->tc); bt = parseTypeDefBaseTypeAlias(pc); break;
        case TOKEN_STRUCT: bt = parseTypeDefBaseTypeStructDefinition(pc); break;
        case TOKEN_VOCAB: bt = parseTypeDefBaseTypeVocabDefinition(pc); break;
        case TOKEN_FUNC: bt = parseTypeDefBaseTypeFuncDefinition(pc); break;
        default: TokenUnfeed(pc->tc); SyntaxErrorInvalidToken(tok, EXPECTED_TYPE_NAME);
    }
    return bt;
}

void parseTypeDef(ParserCtx pc) {
    struct token tok;
    parseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_TYPE_NAME);
    struct baseType* bt = parseTypeDefBaseType(pc);
    struct type t = TypeFromBaseType(tok.str, tok, bt);
    tryParseTypeArrayDeclaration(pc, &t);
    if (bt) pcAddType(pc, t);
}

void parseGlobalLevelSwitch(ParserCtx pc) {
    struct token tok = TokenFeed(pc->tc);
    switch (tok.type) {
        case TOKEN_TYPE: parseTypeDef(pc); break;
        default: break;
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
