#include <stdlib.h>
#include <stdio.h>
#include "syntax.h"
#include "token.h"
#include "util.h"

struct syntaxContext {
    TokenCtx tc;
    struct list syntax;
    struct list* ctxs;
};

enum parsingMode {
    MODE_FORCE,
    MODE_TRY
};

enum syntaxState {
    STATE_FUNCDEF
};

struct syntaxStateStruct {
    enum syntaxState state;
    struct list (parseFunc)(SyntaxCtx, struct syntaxStateStruct, char* errMsg);
    struct token parseToken;
    bool listAdd;
    enum syntaxState sucjmp;
    enum syntaxState errjmp;
    void (*errFunc)(SyntaxCtx);
    char* errMsg;
};

void skipPastNestedCurlyClose(SyntaxCtx sc) {
    int nOpen = 1;
    struct token tok;
    while((tok = TokenFeed(sc->tc)).type != TOKEN_EOF) {
        if (tok.type == TOKEN_CURLY_OPEN) nOpen++;
        else if (tok.type == TOKEN_CURLY_CLOSE) {
            nOpen--;
            if (nOpen <= 0) return;
        }
    }
}

void skipPastSemiColonOrNestedCurlyOpenClose(SyntaxCtx sc) {
    struct token tok;
    while((tok = TokenFeed(sc->tc)).type != TOKEN_EOF) {
        if (tok.type == TOKEN_SEMICOLON) return;
        else if (tok.type == TOKEN_CURLY_OPEN) skipPastNestedCurlyClose(sc);
    }
}

void skipPastNestedCodeBlock(SyntaxCtx sc) {
    TokenFeedUntilAfter(TOKEN_CURLY_OPEN);
    skipPastNestedCurlyClose(sc);
}

struct list parseIdentifierNoNamespace(SyntaxCtx sc, char* errMsg) {
    struct list iden = ListInitToken();
    struct token tok;
    if (!parseToken(sc, TOKEN_IDENTIFIER, &tok, errMsg)) return iden;
    ListAdd(&iden, &tok);
    struct list errList = ListInitToken();
    while (tryParseToken(sc, TOKEN_DOT, &tok)) {
        ListAdd(&errList, &tok);
        if (tryParseToken(sc, TOKEN_IDENTIFIER, &tok)) ListAdd(&errList, &tok);
    }
    if (errList.len != 0) SyntaxErrorInvalidToken(TokenMergeFromList(errList), NAMESPACE_NOT_ALLOWED);
    ListDestroy(errList);
    return iden;
}

struct list parseIdentifierPotentialNamespace(SyntaxCtx sc, enum parsingMode mode, char* errMsg) {
    struct list iden = ListInitToken();
    struct token tok;
    if (!anyModeParseToken(sc, TOKEN_IDENTIFIER, &tok, mode, errMsg)) return iden;
    ListAdd(&iden, &tok);
    while (tryParseToken(sc, TOKEN_DOT, &tok)) {
        if (!parseToken(sc, TOKEN_IDENTIFIER, &tok, errMsg)) {
            ListDestroy(iden);
            return ListInitToken();
        }
        ListAdd(&iden, &tok);
    }
    return iden;
}

struct token parseToken(SyntaxCtx sc, enum tokenType type, char* errMsg) {
    struct token tok = TokenFeed(sc->tc);
    if (tok.type == type) return token;
    TokenUnfeed(sc->tc);
    if (errMsg) SyntaxErrorInvalidToken(token, errMsg);
    return tok;
}

struct syntaxStateStruct syntaxStates[] = {
    {STATE_TYPEDEF, parseIdentifierNoNamespace, TOKEN_NONE, true, STATE_TYPEDEF_TRY_BASIC, STATE_ERROR,
        skipPastSemiColonOrNestedCurlyOpenClose, EXPECTED_TYPE_NAME},

    {STATE_TYPEDEF_TRY_BASIC, parseTypeLight, TOKEN_SEMICOLON, true, STATE_DONE, STATE_TYPEDEF_TRY_STRUCT, NULL, NULL},
    {STATE_TYPEDEF_TRY_STRUCT, NULL, TOKEN_STRUCT, true, STATE_TYPEDEF_STRUCT, STATE_TYPEDEF_TRY_VOCAB, NULL, NULL},
    {STATE_TYPEDEF_TRY_VOCAB, NULL, TOKEN_VOCAB, true, STATE_TYPEDEF_VOCAB, STATE_TYPEDEF_TRY_FUNC, NULL, NULL},
    {STATE_TYPEDEF_TRY_FUNC, NULL, TOKEN_FUNC, true, STATE_TYPEDEF_FUNC, STATE_ERROR,
        skipPastSemiColonOrNestedCurlyOpenClose, EXPECTED_TYPE_DEF},

    {STATE_TYPEDEF_STRUCT, parseStructBlock, TOKEN_NONE, true, STATE_DONE, STATE_ERROR, skipPastNestedCodeBlock, NULL},
    {STATE_TYPEDEF_VOCAB, parseVocabBlock, TOKEN_NONE, true, STATE_DONE, STATE_ERROR, skipPastNestedCodeBlock, NULL},
    {STATE_TYPEDEF_FUNC, parseFuncHeader, TOKEN_NONE, true, STATE_DONE, STATE_ERROR, skipPastFuncHeader, NULL},
};

enum syntaxState parseSyntaxStateMachineOneStep(SyntaxCtx sc, enum syntaxState state, struct list* toks) {
    struct syntaxStateStruct s = syntaxStates[state];
    if (s.parseFunc) {
        struct list l = s.parseFunc(sc, s.errMsg);
        if (l.len == 0) return s.errJmp;
        ListAddList(toks, l);
    }
    struct token tok = parseToken(sc, s.tok, s.mode, s.errMsg);
    if (tok.type == TOKEN_NONE) return s.errJmp;
    if (s.listAdd) ListAdd(toks, &tok);
    return s.sucjmp;
}

void parseSyntaxStateMachineOneSyntax(SyntaxCtx sc, struct token tok) {
    struct syntax s = (struct syntax){0};
    s.toks = ListInitToken();
    enum syntaxState startState;
    switch (tok.type) {
        case TOKEN_IMPORT: s.type = SYNTAX_IMPORT; startState = STATE_IMPORT; break;
        case TOKEN_IDENTIFIER: s.type = SYNTAX_VAR_DECL_AND_OR_ASSIGN; startState = STATE_VAR_DECL_AND_OR_ASSIGNMENT; break;
        case TOKEN_TYPE: s.type = SYNTAX_TYPEDEF; startState = STATE_TYPEDEF; break;
        case TOKEN_ERROR: s.type = SYNTAX_ERRORDEF; startState = STATE_ERRORDEF; break;
        case TOKEN_FUNC: s.type = SYNTAX_FUNCDEF; startState = STATE_FUNCDEF; break;
        default: SyntaxErrorInvalidToken(tok, TRAILING_TOKEN);
    }
    while ((startState = parseSyntaxStateMachineOneStep(sc, startState, &s.toks)) != STATE_END_OF_SYNTAX);
    if (s.toks.len == 0) return;
    ListAdd(&sc->syntax, &s);
}

void parseSyntaxStateMachine(SyntaxCtx sc) {
    struct token tok;
    while ((tok = TokenFeed(sc->tc)).type != TOKEN_EOF) parseSyntaxStateMachineOneSyntax(sc, tok);
}

SyntaxCtx syntaxCtxNew(struct str fileName, struct list* ctxs) {
    struct syntaxContext sc = (struct syntaxContext){0};
    sc.tc = TokenizeFile(fileName);
    sc.syntax = ListInit(sizeof(struct syntax));
    sc.ctxs = ctxs;
    ListAdd(ctxs, &sc);
    return ListGetIdx(ctxs, ctxs->len -1);
}

void parseSyntax(char* fileName) {
    struct list ctxs = ListInit(sizeof(struct syntaxContext));
    SyntaxCtx sc = syntaxCtxNew(StrFromCStr(fileName), &ctxs);
    parseSyntaxStateMachine(sc);
}







SyntaxCtx syntaxCtxNew(struct str fileName, struct list* ctxs) {
    struct syntaxContext sc = (struct syntaxContext){0};
    sc.tc = TokenizeFile(fileName);
    sc.syntax = ListInit(sizeof(struct syntax));
    sc.ctxs = ctxs;
    ListAdd(ctxs, &sc);
    return ListGetIdx(ctxs, ctxs->len -1);
}

struct syntax syntaxInit(enum syntaxType t) {
    struct syntax s = (struct syntax){0};
    s.type = t;
    return s;
}

bool anyModeParseToken(SyntaxCtx sc, enum tokenType type, struct token* tokPtr, enum parsingMode mode, char* errMsg) {
    if (mode == MODE_FORCE && !errMsg) ErrorBugFound();
    *tokPtr = TokenFeed(sc->tc);
    if (tokPtr->type == type) return true;
    TokenUnfeed(sc->tc);
    if (mode == MODE_FORCE) SyntaxErrorInvalidToken(*tokPtr, errMsg);
    return false;
}

bool parseToken(SyntaxCtx sc, enum tokenType type, struct token* tokPtr, char* errMsg) {
    return anyModeParseToken(sc, type, tokPtr, MODE_FORCE, errMsg);
}

void skipPastSemicolon(SyntaxCtx sc) {
    TokenFeedUntilAfter(sc->tc, TOKEN_SEMICOLON);
}

bool parseSemicolonOrSkipPast(SyntaxCtx sc) {
    struct token tok;
    if (parseToken(sc, TOKEN_SEMICOLON, &tok, EXPECTED_SEMICOLON)) return true;
    skipPastSemicolon(sc);
    return false;
}

bool tryParseToken(SyntaxCtx sc, enum tokenType type, struct token* tokPtr) {
    return anyModeParseToken(sc, type, tokPtr, MODE_TRY, NULL);
}

struct list parseIdentifierNoNamespace(SyntaxCtx sc, char* errMsg) {
    struct list iden = ListInitToken();
    struct token tok;
    if (!parseToken(sc, TOKEN_IDENTIFIER, &tok, errMsg)) return iden;
    ListAdd(&iden, &tok);
    struct list errList = ListInitToken();
    while (tryParseToken(sc, TOKEN_DOT, &tok)) {
        ListAdd(&errList, &tok);
        if (tryParseToken(sc, TOKEN_IDENTIFIER, &tok)) ListAdd(&errList, &tok);
    }
    if (errList.len != 0) SyntaxErrorInvalidToken(TokenMergeFromList(errList), NAMESPACE_NOT_ALLOWED);
    ListDestroy(errList);
    return iden;
}

struct list parseIdentifierPotentialNamespace(SyntaxCtx sc, enum parsingMode mode, char* errMsg) {
    struct list iden = ListInitToken();
    struct token tok;
    if (!anyModeParseToken(sc, TOKEN_IDENTIFIER, &tok, mode, errMsg)) return iden;
    ListAdd(&iden, &tok);
    while (tryParseToken(sc, TOKEN_DOT, &tok)) {
        if (!parseToken(sc, TOKEN_IDENTIFIER, &tok, errMsg)) return iden;
        ListAdd(&iden, &tok);
    }
    return iden;
}

struct list parseImportFileName(SyntaxCtx sc) {
    struct list list = ListInitToken();
    struct token tok;
    if (!parseToken(sc, TOKEN_STRING_LITERAL, &tok, EXPECTED_FILE_NAME)) return list;
    ListAdd(&list, &tok);
    return list;
}

void parseImport(SyntaxCtx sc) {
    struct syntax s = syntaxInit(SYNTAX_IMPORT);
    s.name = parseIdentifierNoNamespace(sc, EXPECTED_FILE_ALIAS);
    if (s.name.len == 0) {skipPastSemicolon(sc); return;}
    s.def = parseImportFileName(sc);
    if (s.def.len == 0) {skipPastSemicolon(sc); return;}
    parseSemicolonOrSkipPast(sc);
    ListAdd(&sc->syntax, &s);
}

struct token parseAssignOperator(SyntaxCtx sc, enum parsingMode mode) {
    struct token tok = TokenFeed(sc->tc);
    switch (tok.type) {
        case TOKEN_ASSIGNMENT:
        case TOKEN_ASSIGNMENT_ADD:
        case TOKEN_ASSIGNMENT_SUB:
        case TOKEN_ASSIGNMENT_MUL:
        case TOKEN_ASSIGNMENT_DIV:
        case TOKEN_ASSIGNMENT_MODULO:
        case TOKEN_ASSIGNMENT_EQUAL:
        case TOKEN_ASSIGNMENT_NOT_EQUAL:
        case TOKEN_ASSIGNMENT_AND:
        case TOKEN_ASSIGNMENT_OR:
        case TOKEN_ASSIGNMENT_XOR:
        case TOKEN_ASSIGNMENT_BITSHIFT_LEFT:
        case TOKEN_ASSIGNMENT_BITSHIFT_RIGHT:
        case TOKEN_ASSIGNMENT_BITWISE_AND:
        case TOKEN_ASSIGNMENT_BITWISE_OR:
        case TOKEN_ASSIGNMENT_BITWISE_XOR:
        default: if (mode == MODE_FORCE) SyntaxErrorInvalidToken(tok, EXPECTED_ASSIGNMENT_OPERATOR);
                     TokenUnfeed(sc->tc); tok.type = TOKEN_NONE;
    }
    return tok;
}

struct token tryParsePrefixUnaryOperator(SyntaxCtx sc) {
    struct token tok = TokenFeed(sc->tc);
    switch (tok.type) {
        case TOKEN_ADD: break;
        case TOKEN_SUB: break;
        case TOKEN_NOT: break;
        case TOKEN_BITWISE_COMPLEMENT: break;
        default: TokenUnfeed(sc->tc); tok.type = TOKEN_NONE;
    }
    return tok;
}

bool tryParseBinaryOperator(SyntaxCtx sc, struct list* expr) {
    struct token tok = TokenFeed(sc->tc);
    switch (tok.type) {
        case TOKEN_MODULO: break;
        case TOKEN_ADD: break;
        case TOKEN_SUB: break;
        case TOKEN_MUL: break;
        case TOKEN_DIV: break;
        case TOKEN_LESS_THAN: break;
        case TOKEN_LESS_THAN_OR_EQUAL: break;
        case TOKEN_GREATER_THAN: break;
        case TOKEN_GREATER_THAN_OR_EQUAL: break;
        case TOKEN_EQUAL: break;
        case TOKEN_NOT_EQUAL: break;
        case TOKEN_AND: break;
        case TOKEN_OR: break;
        case TOKEN_XOR: break;
        case TOKEN_BITSHIFT_LEFT: break;
        case TOKEN_BITSHIFT_RIGHT: break;
        case TOKEN_BITWISE_AND: break;
        case TOKEN_BITWISE_OR: break;
        case TOKEN_BITWISE_XOR: break;
        default: TokenUnfeed(sc->tc); return false;
    }
    ListAdd(expr, &tok);
    return true;
}

bool parseExprOperand(SyntaxCtx sc, struct list* expr, enum parsingMode mode) {
    struct token tok = TokenFeed(sc->tc);
    switch (tok.type) {
        case TOKEN_IDENTIFIER: break;
        case TOKEN_BOOL_LITERAL: break;
        case TOKEN_INT_LITERAL: break;
        case TOKEN_FLOAT_LITERAL: break;
        case TOKEN_CHAR_LITERAL: break;
        case TOKEN_STRING_LITERAL: break;
        default: if (mode == MODE_FORCE) SyntaxErrorInvalidToken(tok, EXPECTED_OPERAND);
                     TokenUnfeed(sc->tc); return false;
    }
    ListAdd(expr, &tok);
    return true;
}

struct list parseExpr(SyntaxCtx sc, enum parsingMode mode) {
    struct list expr = ListInitToken();
    if (!parseExprOperand(sc, &expr, mode)) return ListInitToken();
    while (tryParseBinaryOperator(sc, &expr)) {
        if (!parseExprOperand(sc, &expr, MODE_FORCE)) return ListInitToken();
    }
    return expr;
}

void parseVarAssign(SyntaxCtx sc, struct list* syntaxList, struct list var) {
    struct syntax s = syntaxInit(SYNTAX_VAR_ASSIGN);
    s.name = var;
    struct token tok = parseAssignOperator(sc, MODE_FORCE);
    if (tok.type == TOKEN_NONE) {skipPastSemicolon(sc); return;}
    s.def = parseExpr(sc, MODE_FORCE);
    if (s.def.len == 0) {skipPastSemicolon(sc); return;}
    parseSemicolonOrSkipPast(sc);
    ListAdd(syntaxList, &s);
}

void tryParseVarAssignOrSemiColon(SyntaxCtx sc, struct list* syntaxList, struct list var) {
    if (parseAssignOperator(sc, MODE_TRY).type == TOKEN_NONE) {
        parseSemicolonOrSkipPast(sc);
        return;
    }
    TokenUnfeed(sc->tc);
    parseVarAssign(sc, syntaxList, var);
}

void parseGlobalVarOp(SyntaxCtx sc) {
    struct syntax s = syntaxInit(SYNTAX_VAR_ASSIGN);
    s.name = parseIdentifierPotentialNamespace(sc, MODE_FORCE, INVALID_VAR);
    s.def = parseIdentifierPotentialNamespace(sc, MODE_TRY, NULL);
    if (s.name.len > 1 && s.def.len != 0) {
        SyntaxErrorInvalidToken(TokenMergeFromList(s.name), NAMESPACE_NOT_ALLOWED);
        skipPastSemicolon(sc);
        return;
    }
    else if (s.name.len != 0 && s.def.len != 0) {
        s.type = SYNTAX_VAR_DECL;
        ListAdd(&sc->syntax, &s);
        tryParseVarAssignOrSemiColon(sc, &sc->syntax, s.def);
    }
    else if (s.def.len == 0) parseVarAssign(sc, &sc->syntax, s.def);
}

struct list parseVarDeclLightList(SyntaxCtx sc) {
    int startCursor = TokenGetCursor(sc->tc);
    struct list vars = ListInitToken();
    struct list arg = parseVarDeclLight(sc, MODE_TRY);
    if (arg.len == 0) return vars;
    ListAddList(&vars, arg);
    ListDestroy(arg);
    while (tryParseToken(sc, TOKEN_COMMA, &tok)) {
        arg = parseVarDeclLight(sc, MODE_FORCE);
        if (arg.len == 0) {
            TokenSetCursor(sc->tc, startCursor);
            ListDestroy(vars);
            return ListInitToken();
        }
        ListAddList(&vars, arg);
        ListDestroy(arg);
    }
    return vars;
}

struct list parseFuncDefNoName(SyntaxCtx sc) {
    struct list header = ListInitToken();
    struct token tok;
    if (!parseToken(sc, TOKEN_PAREN_OPEN, &tok, EXPECTED_PAREN_OPEN)) skipToAndPastCodeBlock(sc);
    ListAdd(&header, &tok);
    struct args = parseVarDeclLightList(sc);
    skipUntilNestedParenClose(sc);
    if (!parseToken(sc, TOKEN_PAREN_OPEN, &tok, EXPECTED_PAREN_OPEN)) {skipToAndPastCodeBlock(sc); return ListInitToken();}
    ListAdd(&header, &tok);
    //TODO
}

void parseTypeDefNormal(SyntaxCtx sc, struct list name) {
    if (name.len == 0) {skipPastSemicolon(sc); return;}
    struct syntax s = syntaxInit(SYNTAX_TYPEDEF_NORMAL);
    s.name = name;
    s.def = parseTypeLight(sc);
    ListAdd(&sc->syntax, &s);
}

void parseTypeDefStruct(SyntaxCtx sc, struct list name) {
    //TODO
}

void parseTypeDef(SyntaxCtx sc) {
    struct token tok = TokenFeed(sc->tc);
    struct list name = parseIdentifierNoNamespace(sc);
    switch (tok.type) {
        case TOKEN_IDENTIFIER: TokenUnfeed(sc->tc); parseTypeDefNormal(sc, name); break;
        case TOKEN_STRUCT: parseTypeDefStruct(sc, name); break;
        case TOKEN_VOCAB: parseTypeDefVocab(sc, name); break;
        case TOKEN_FUNC: parseTypeDefStruct(sc, name); break;
        default: //TODO
    }
}

void parseFuncDef(SyntaxCtx sc) {
    struct syntax s = syntaxInit(SYNTAX_FUNC_DEF);
    s.name = parseIdentifierNoNamespace(sc, EXPECTED_FUNC_NAME);
    s.def = parseFuncArgsAndRets(sc);
    s.subSyntax = parseCodeBlock(sc);
}

void parseSyntax(char* fileName) {
    struct list ctxs = ListInit(sizeof(struct syntaxContext));
    SyntaxCtx sc = syntaxCtxNew(StrFromCStr(fileName), &ctxs);

    struct token tok;
    while ((tok = TokenFeed(sc->tc)).type != TOKEN_EOF) {
        switch (tok.type) {
            case TOKEN_IMPORT: parseImport(sc); break;
            case TOKEN_IDENTIFIER: TokenUnfeed(sc->tc); parseGlobalVarOp(sc); break;
            case TOKEN_TYPE: parseTypeDef(sc); break;
            case TOKEN_FUNC: parseFuncDef(sc); break;
            case TOKEN_COMPIF: break;
            default: break; //TODO big error
        }
    }
}

bool findMainFunc(SyntaxCtx sc) {
    for (int i = 0; i < sc->syntax.len; i++) {
        struct syntax* s = ListGetIdx(&sc->syntax, i);
        struct token* nameTok = ListGetIdx(&s->name, 0);
        if (s->type == SYNTAX_FUNC_DEF && StrCmp(nameTok->str, StrFromCStr("main"))) return true;
    }
    return false;
}

SyntaxCtx ParseSyntax(char* fileName) {
    struct list ctxs = ListInit(sizeof(struct syntaxContext));
    SyntaxCtx sc = syntaxCtxNew(StrFromCStr(fileName), &ctxs);
    if (getNSyntaxErrors() == 0 && !findMainFunc(sc)) SyntaxErrorInfo(sc->tc, MAIN_FUNC_NOT_FOUND);
    return sc;
}
