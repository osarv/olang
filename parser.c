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

struct cpList {
    int len;
    int cap;
    int cursor;
    int* ptr;
};

struct pcAlias {
    struct str str;
    ParserCtx pc;
};

struct pcAliasList {
    int cap;
    int len;
    struct pcAlias* ptr;
};

struct parserContext {
    int id;
    TokenCtx tc; //contains fileName
    struct cpList jumps;
    struct pcList* ctxs; //universal across the compilation
    struct pcAliasList aliases; //private for each parser context
    TypeList types;
    VarList vars;
};

struct pcList {
    int cap;
    int len;
    ParserCtx* ptr;
};

#define CP_LIST_STEP_SIZE 100
void cpListAdd(struct cpList* cpl, int idx) {
    if (cpl->len >= cpl->cap) {
        cpl->cap += CP_LIST_STEP_SIZE;
        cpl->ptr = realloc(cpl->ptr, sizeof(*(cpl->ptr)) * cpl->cap);
        CheckAllocPtr(cpl->ptr);
    }
    cpl->ptr[cpl->len] = idx;
    cpl->len++;
}

void cpListReset(struct cpList* cpl) {
    cpl->cursor = 0;
}

int cpListNext(struct cpList* cpl) {
    if (cpl->cursor >= cpl->len) ErrorBugFound();
    cpl->cursor++;
    return cpl->ptr[cpl->cursor -1];
}

#define PC_ALIAS_LIST_STEP_SIZE 100
void pcAliasListAdd(struct pcAliasList* al, struct pcAlias alias) {
    if (al->len >= al->cap) {
        al->cap += PC_ALIAS_LIST_STEP_SIZE;
        al->ptr = realloc(al->ptr, sizeof(*(al->ptr)) * al->cap);
        CheckAllocPtr(al->ptr);
    }
    al->ptr[al->len] = alias;
    al->len++;
}

ParserCtx pcAliasListGetPc(struct pcAliasList* al, struct str alias) {
    for (int i = 0; i < al->len; i++) {
        if (StrCmp(al->ptr[i].str, alias)) return al->ptr[i].pc;
    }
    return NULL;
}

void pcAliasListClear(struct pcAliasList* al) {
    al->len = 0;
}

#define PC_LIST_ALLOC_STEP 100
void pcListAdd(struct pcList* list, ParserCtx pc) {
    if (list->len >= list->cap) {
        list->cap += PC_LIST_ALLOC_STEP;
        list->ptr = realloc(list->ptr, sizeof(*(list->ptr)) * list->cap);
        CheckAllocPtr(list->ptr);
    }
    list->ptr[list->len] = pc;
    list->len++;
}

ParserCtx pcListGet(struct pcList* list, struct str fileName) {
    for (int i = 0; i < list->len; i++) {
        if (StrCmp(fileName, TokenGetFileName(list->ptr[i]->tc))) return list->ptr[i];
    }
    return NULL;
}

bool isPublic(struct str name) {
    if (name.len <= 0) ErrorBugFound();
    char c = name.ptr[0];
    if (c >= 'A' && c <= 'Z') return true;
    return false;
}

void pcAddType(ParserCtx pc, struct type t) {
    struct type tmpType;
    t.pcId = pc->id;
    if (TypeListGet(pc->types, t.name, &tmpType)) SyntaxErrorInvalidToken(t.tok, TYPE_NAME_IN_USE);
    TypeListAdd(pc->types, t);
}

void pcAddVar(ParserCtx pc, struct var v) {
    struct var tmpVar;
    if (VarListGet(pc->vars, v.name, &tmpVar)) SyntaxErrorInvalidToken(v.tok, VAR_NAME_IN_USE);
    VarListAdd(pc->vars, v);
}

void pcAddVarSetOrigin(ParserCtx pc, struct var v) {
    struct var tmpVar;
    if (VarListGet(pc->vars, v.name, &tmpVar)) SyntaxErrorInvalidToken(v.tok, VAR_NAME_IN_USE);
    VarListAddSetOrigin(pc->vars, v);
}

void pcUpdateOrAddType(ParserCtx pc, struct type t) {
    struct type tmpType;
    if (!TypeListGet(pc->types, t.name, &tmpType)) pcAddType(pc, t);
    TypeListUpdate(pc->types, t);
}

void addVanillaTypes(ParserCtx pc) {
    pcAddType(pc, TypeVanilla(BASETYPE_BOOL));
    pcAddType(pc, TypeVanilla(BASETYPE_BYTE));
    pcAddType(pc, TypeVanilla(BASETYPE_INT32));
    pcAddType(pc, TypeVanilla(BASETYPE_INT64));
    pcAddType(pc, TypeVanilla(BASETYPE_FLOAT32));
    pcAddType(pc, TypeVanilla(BASETYPE_FLOAT64));
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

int parserGetCursor(ParserCtx pc) {
    return TokenGetCursor(pc->tc);
}

void parserSetCursor(ParserCtx pc, int cursor) {
    TokenSetCursor(pc->tc, cursor);
}

bool parserSetCursorRetFalse(ParserCtx pc, int cursor) {
    TokenSetCursor(pc->tc, cursor);
    return false;
}

void* parserSetCursorRetNull(ParserCtx pc, int cursor) {
    TokenSetCursor(pc->tc, cursor);
    return NULL;
}

bool tryParseToken(ParserCtx pc, enum tokenType type, struct token* tokPtr) {
    int startCursor = parserGetCursor(pc);
    struct token tmpTok = TokenFeed(pc->tc);
    if (tmpTok.type != type) return parserSetCursorRetFalse(pc, startCursor);
    *tokPtr = tmpTok;
    return true;
}

int discardUntilOneOfTokensOrEOF(ParserCtx pc, enum tokenType tokens[], int len) {
    struct token tok;
    bool run = true;
    int nFoundUntil = 0;
    while (run && (tok = TokenFeed(pc->tc)).type != TOKEN_EOF) {
        for (int i = 0; i < len; i++) {
            if (tok.type == tokens[i]) run = false;
        }
        if (!run) break;
        nFoundUntil++;
    }
    TokenUnfeed(pc->tc);
    return nFoundUntil;
}

void discardUntilClosingSquareBracket(ParserCtx pc) {
    enum tokenType tType = TOKEN_SQUARE_BRACKET_CLOSE;
    struct token errorToken = TokenPeek(pc->tc);
    int nFoundUntil = discardUntilOneOfTokensOrEOF(pc, &tType, 1);
    if (nFoundUntil != 0) SyntaxErrorInvalidToken(errorToken, EXPECTED_CLOSING_SQUARE_BRACKET);
}

void discardUntilCommaOrCurlyClose(ParserCtx pc) {
    enum tokenType tTypes[] = {TOKEN_COMMA, TOKEN_CURLY_BRACKET_CLOSE};
    discardUntilOneOfTokensOrEOF(pc, tTypes, 2);
}

void discardUntilCommaOrParenClose(ParserCtx pc) {
    enum tokenType tTypes[] = {TOKEN_COMMA, TOKEN_PAREN_CLOSE};
    discardUntilOneOfTokensOrEOF(pc, tTypes, 2);
}

void parseTokenUntilFound(ParserCtx pc, enum tokenType type, char* errMsg) {
    struct token tok;
    if (!parseToken(pc, type, &tok, errMsg)) TokenFeedUntil(pc->tc, type);
}

void discardUntilCurlyEnds(ParserCtx pc) {
    struct token tok = TokenFeed(pc->tc);
    int nOpen = 1;
    while (true) {
        if (tok.type == TOKEN_EOF) return;
        if (tok.type == TOKEN_CURLY_BRACKET_OPEN) nOpen++;
        else if (tok.type == TOKEN_CURLY_BRACKET_CLOSE) {
            nOpen--;
            if (nOpen <= 0) break;
        }
        tok = TokenFeed(pc->tc);
    }
}

void discardUntilParenEnds(ParserCtx pc) {
    struct token tok = TokenFeed(pc->tc);
    int nOpen = 1;
    while (true) {
        if (tok.type == TOKEN_EOF) return;
        if (tok.type == TOKEN_PAREN_OPEN) nOpen++;
        else if (tok.type == TOKEN_PAREN_CLOSE) {
            nOpen--;
            if (nOpen <= 0) break;
        }
        tok = TokenFeed(pc->tc);
    }
}

struct operand* tryParseExpr(ParserCtx pc);

struct operand* parseIntExpr(ParserCtx pc) {
    struct operand* expr = tryParseExpr(pc);
    if (!expr) return NULL;
    if (!OperandIsInt(expr)) {
        SyntaxErrorInvalidToken(expr->tok, OPERATION_REQUIRES_INT);
        return NULL;
    }
    return expr;
}

struct operand* parseBoolExpr(ParserCtx pc) {
    struct operand* expr = tryParseExpr(pc);
    if (!expr) return NULL;
    if (!OperandIsBool(expr)) {
        SyntaxErrorInvalidToken(expr->tok, OPERATION_REQUIRES_BOOL);
        return NULL;
    }
    return expr;
}

bool tryParseTypeArrayDeclaration(ParserCtx pc, struct type* t) {
    int startCursor = parserGetCursor(pc);
    struct token tok;
    if (!tryParseToken(pc, TOKEN_SQUARE_BRACKET_OPEN, &tok)) return true;
    t->arrLen = parseIntExpr(pc);
    if (!t->arrLen) return parserSetCursorRetFalse(pc, startCursor);
    parseToken(pc, TOKEN_SQUARE_BRACKET_CLOSE, &tok, NULL);
    t->arrLvls++;
    t->arrMalloc = true;

    t->tok = TokenMerge(t->tok, tok);
    if (t->bType == BASETYPE_ARRAY) return true;
    t->arrBase = t->bType;
    t->bType = BASETYPE_ARRAY;
    return true;
}

ParserCtx tryParseAlias(ParserCtx pc) { //returns pc if not found
    int startCursor = parserGetCursor(pc);
    struct token aliasTok;
    struct token tok;
    if (!tryParseToken(pc, TOKEN_IDENTIFIER, &aliasTok)) return pc;
    ParserCtx aliasCtx = pcAliasListGetPc(&(pc->aliases), aliasTok.str);
    if (!aliasCtx) {parserSetCursor(pc, startCursor); return pc;}
    parseToken(pc, TOKEN_DOT, &tok, NULL);
    return aliasCtx;
}

void tryParseTypeArrayRefLevels(ParserCtx pc, struct type* t) {
    struct token tok;
    if (!tryParseToken(pc, TOKEN_SQUARE_BRACKET_OPEN, &tok)) return;
    if (!tryParseToken(pc, TOKEN_SQUARE_BRACKET_CLOSE, &tok)) {
        TokenUnfeed(pc->tc);
        return;
    }
    t->arrLvls++;
    while (tryParseToken(pc, TOKEN_SQUARE_BRACKET_OPEN, &tok)) {
        if (!tryParseToken(pc, TOKEN_SQUARE_BRACKET_CLOSE, &tok)) {
            TokenUnfeed(pc->tc);
            break;
        }
        t->arrLvls++;
    }
    t->tok = TokenMerge(t->tok, tok);
    if (t->bType == BASETYPE_ARRAY) return;
    t->arrBase = t->bType;
    t->bType = BASETYPE_ARRAY;
}

bool tryParseType(ParserCtx pc, struct type* t) {
    int startCursor = parserGetCursor(pc);
    ParserCtx source = tryParseAlias(pc);
    struct token tok;
    if (!tryParseToken(pc, TOKEN_IDENTIFIER, &tok)) return parserSetCursorRetFalse(pc, startCursor);
    if (!TypeListGet(source->types, tok.str, t)) return parserSetCursorRetFalse(pc, startCursor);
    t->tok = tok;
    if (source != pc && !isPublic(t->name)) {
        SyntaxErrorInvalidToken(t->tok, TYPE_IS_PRIVATE);
        return parserSetCursorRetFalse(pc, startCursor);
    }
    tryParseTypeArrayRefLevels(pc, t);
    return true;
}

bool parseType(ParserCtx pc, struct type* t) {
    int startCursor = parserGetCursor(pc);
    ParserCtx source = tryParseAlias(pc);
    struct token tok;
    if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, UNKNOWN_TYPE)) return false;
    if (!TypeListGet(source->types, tok.str, t)) {
        SyntaxErrorInvalidToken(tok, UNKNOWN_TYPE);
        return parserSetCursorRetFalse(pc, startCursor);
    }
    t->tok = tok;
    if (source != pc && !isPublic(t->name)) {
        SyntaxErrorInvalidToken(t->tok, TYPE_IS_PRIVATE);
        return parserSetCursorRetFalse(pc, startCursor);
    }
    tryParseTypeArrayRefLevels(pc, t);
    return true;
}

void tryParseStructDerefAndArrayIndexing(ParserCtx pc, struct var* v) {
    struct token tok;
    while (true) {
        if (v->type.bType == BASETYPE_STRUCT && tryParseToken(pc, TOKEN_DOT, &tok)) {
            parseToken(pc, TOKEN_IDENTIFIER, &tok, NULL);
            struct var vMember;
            if (VarListGet(v->type.vars, tok.str, &vMember)) *v = vMember;
            v->tok = TokenMerge(v->tok, tok);
        }
        else if (v->type.bType == BASETYPE_ARRAY && tryParseToken(pc, TOKEN_SQUARE_BRACKET_OPEN, &tok)) {
            parseIntExpr(pc);
            parseToken(pc, TOKEN_SQUARE_BRACKET_CLOSE, &tok, NULL);
            v->tok = TokenMerge(v->tok, tok);
            v->type.arrLvls--;
            if (v->type.arrLvls == 0) v->type.bType = v->type.arrBase;
        }
        else break;
    }
}

bool tryParseVar(ParserCtx pc, struct var* v) {
    int startCursor = TokenGetCursor(pc->tc);
    ParserCtx source = tryParseAlias(pc);
    struct token tok;
    if (!tryParseToken(pc, TOKEN_IDENTIFIER, &tok)) return parserSetCursorRetFalse(pc, startCursor);
    if (!VarListGet(source->vars, tok.str, v) || (source != pc && !isPublic(v->name))) {
        return parserSetCursorRetFalse(pc, startCursor);
    }
    v->tok = tok;
    tryParseStructDerefAndArrayIndexing(pc, v);
    return true;
}

struct operand* tryParseVarAsOperand(ParserCtx pc) {
    int startCursor = parserGetCursor(pc);
    struct var v;
    if (!tryParseVar(pc, &v)) return NULL;
    if (v.mayBeInitialized) return OperandReadVar(&v);
    SyntaxErrorInvalidToken(v.tok, VAR_NOT_INITIALIZED);
    return parserSetCursorRetNull(pc, startCursor);
}

struct operand* tryParseOperand(ParserCtx pc);

struct operand* tryParseTypeCast(ParserCtx pc) {
    int startCursor = parserGetCursor(pc);
    struct type t;
    struct token tok;
    if (!tryParseType(pc, &t)) return parserSetCursorRetNull(pc, startCursor);
    if (!parseToken(pc, TOKEN_PAREN_OPEN, &tok, NULL)) return parserSetCursorRetNull(pc, startCursor);
    struct operand* op = tryParseOperand(pc);
    if (!op) return parserSetCursorRetNull(pc, startCursor);
    if (!parseToken(pc, TOKEN_PAREN_CLOSE, &tok, NULL)) return parserSetCursorRetNull(pc, startCursor);
    op = OperandTypeCast(op, t, TokenMerge(t.tok, tok));
    if (!op) parserSetCursor(pc, startCursor);
    return op;
}

bool parseVar(ParserCtx pc, struct var* v) {
    int startCursor = parserGetCursor(pc);
    ParserCtx source = tryParseAlias(pc);
    struct token tok;
    if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, UNKNOWN_VAR)) return false;
    if (!VarListGet(source->vars, tok.str, v)) {
        SyntaxErrorInvalidToken(tok, UNKNOWN_VAR);
        return parserSetCursorRetFalse(pc, startCursor);
    }
    v->tok = tok;
    if (source != pc && !isPublic(v->name)) {
        SyntaxErrorInvalidToken(tok, VAR_IS_PRIVATE);
        return parserSetCursorRetFalse(pc, startCursor);
    }
    return true;
}

bool parseTypeDefType(ParserCtx pc, struct type* t) {
    int startCursor = parserGetCursor(pc);
    if (!parseType(pc, t)) return false;
    if (t->placeholder) {
        SyntaxErrorInvalidToken(t->tok, UNKNOWN_TYPE);
        return parserSetCursorRetFalse(pc, startCursor);
    }
    return true;
}

bool parseTypeDeclaration(ParserCtx pc, struct type* t) {
    int startCursor = parserGetCursor(pc);
    if (!parseType(pc, t)) return false;
    if (t->bType == BASETYPE_STRUCT) {
        struct token tok;
        if (tryParseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok)) {
            t->structMAlloc = true;
            parseToken(pc, TOKEN_CURLY_BRACKET_CLOSE, &tok, NULL);
            t->tok = TokenMerge(t->tok, tok);
        }
    }
    if (!tryParseTypeArrayDeclaration(pc, t)) return parserSetCursorRetFalse(pc, startCursor);
    return true;
}

bool tryParseTypeDeclaration(ParserCtx pc, struct type* t) {
    int startCursor = TokenGetCursor(pc->tc);
    if (!tryParseType(pc, t)) return false;
    if (t->bType == BASETYPE_STRUCT) {
        struct token tok;
        if (tryParseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok)) {
            t->structMAlloc = true;
            parseToken(pc, TOKEN_CURLY_BRACKET_CLOSE, &tok, NULL);
            t->tok = TokenMerge(t->tok, tok);
        }
    }
    if (!tryParseTypeArrayDeclaration(pc, t)) return parserSetCursorRetFalse(pc, startCursor);
    return true;
}

bool parseVarDeclaration(ParserCtx pc, struct var* v) {
    int startCursor = TokenGetCursor(pc->tc);
    struct type t;
    struct token tok;
    if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_VAR_NAME)) return false;
    if (!parseTypeDeclaration(pc, &t)) return parserSetCursorRetFalse(pc, startCursor);
    *v = VarInit(tok.str, t, tok);
    return true;
}

bool tryParseVarDeclaration(ParserCtx pc, struct var* v) {
    int startCursor = TokenGetCursor(pc->tc);
    struct type t;
    struct token tok;
    if (!tryParseToken(pc, TOKEN_IDENTIFIER, &tok)) return false;
    if (!tryParseTypeDeclaration(pc, &t)) return parserSetCursorRetFalse(pc, startCursor);
    *v = VarInit(tok.str, t, tok);
    return true;
}

bool parseStructMember(ParserCtx pc, struct var* v) {
    int startCursor = TokenGetCursor(pc->tc);
    if (!parseVarDeclaration(pc, v)) return false;
    if (v->type.structMAlloc == true && v->type.placeholder) {
        SyntaxErrorInvalidToken(v->type.tok, STRUCT_NOT_YET_DEFINED);
        return parserSetCursorRetFalse(pc, startCursor);
    }
    return true;
}

void parseStructMembersList(ParserCtx pc, VarList members) {
    if (TokenPeek(pc->tc).type == TOKEN_CURLY_BRACKET_CLOSE) return;
    struct var var;
    if (parseStructMember(pc, &var)) VarListAdd(members, var);
    else discardUntilCommaOrCurlyClose(pc);
    struct token tok;
    while(tryParseToken(pc, TOKEN_COMMA, &tok)) {
        if (!parseStructMember(pc, &var)) {
            discardUntilCommaOrCurlyClose(pc);
            continue;
        }
        struct var tmp;
        if (VarListGet(members, var.name, &tmp)) SyntaxErrorInvalidToken(var.tok, VAR_NAME_IN_USE);
        VarListAdd(members, var);
    }
}

struct type parseTypeDefStruct(ParserCtx pc) {
    struct token tok;
    struct type t = (struct type){0};
    t.bType = BASETYPE_STRUCT;
    t.vars = VarListCreate();
    parseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok, NULL);
    parseStructMembersList(pc, t.vars);
    parseTokenUntilFound(pc, TOKEN_CURLY_BRACKET_CLOSE, EXPECTED_CLOSING_CURLY_OR_COMMA);
    return t;
}

StrList parseVocabWords(ParserCtx pc) {
    StrList words = StrListCreate();
    struct token tok;
    if (TokenPeek(pc->tc).type == TOKEN_CURLY_BRACKET_CLOSE) return words;
    if (parseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_VOCAB_WORD)) StrListAdd(words, tok.str);
    else discardUntilCommaOrCurlyClose(pc);
    struct token tmp;
    while(tryParseToken(pc, TOKEN_COMMA, &tmp)) {
        if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_VOCAB_WORD)) {
            discardUntilCommaOrCurlyClose(pc);
            continue;
        }
        struct str tmp;
        if (StrListGet(words, tok.str, &tmp)) SyntaxErrorInvalidToken(tok, WORD_ALREADY_IN_USE);
        else StrListAdd(words, tok.str);
    }
    return words;
}

struct type parseTypeDefVocab(ParserCtx pc) {
    struct token tok;
    struct type t = (struct type){0};
    t.bType = BASETYPE_VOCAB;
    parseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok, NULL);
    t.words = parseVocabWords(pc);
    parseTokenUntilFound(pc, TOKEN_CURLY_BRACKET_CLOSE, NULL);
    return t;
}

bool parseFuncArg(ParserCtx pc, struct var* v) {
    int startCursor = parserGetCursor(pc);
    struct token tok;
    struct type t;
    bool mut = false;
    if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_VAR_NAME)) return false;
    if (isPublic(tok.str)) {
        SyntaxErrorInvalidToken(tok, FUNC_ARG_PUBLIC);
        return parserSetCursorRetFalse(pc, startCursor);
    }
    struct token mutTok;
    if (tryParseToken(pc, TOKEN_MUT, &mutTok)) mut = true;
    if (!parseType(pc, &t)) return parserSetCursorRetFalse(pc, startCursor);
    *v = VarInit(tok.str, t, tok);
    v->mut = mut;
    return true;
}

VarList parseFuncArgs(ParserCtx pc) {
    VarList args = VarListCreate();
    if (TokenPeek(pc->tc).type == TOKEN_PAREN_CLOSE) return args;
    struct var var;
    if (parseFuncArg(pc, &var)) VarListAdd(args, var);
    else discardUntilCommaOrParenClose(pc);
    struct token tok;
    while(tryParseToken(pc, TOKEN_COMMA, &tok)) {
        if (!parseFuncArg(pc, &var)) {
            discardUntilCommaOrParenClose(pc);
            continue;
        }
        struct var tmp;
        if (VarListGet(args, var.name, &tmp)) SyntaxErrorInvalidToken(var.tok, VAR_NAME_IN_USE);
        VarListAdd(args, var);
    }
    return args;
}

TypeList parseFuncRets(ParserCtx pc) {
    TypeList rets = TypeListCreate();
    if (TokenPeek(pc->tc).type == TOKEN_PAREN_CLOSE) return rets;
    struct type type = (struct type){0};
    if (parseTypeDeclaration(pc, &type)) TypeListAdd(rets, type);
    else discardUntilCommaOrParenClose(pc);
    struct token tok;
    while(tryParseToken(pc, TOKEN_COMMA, &tok)) {
        if (!parseTypeDeclaration(pc, &type)) {
            discardUntilCommaOrParenClose(pc);
            continue;
        }
        TypeListAdd(rets, type);
    }
    return rets;
}

struct type parseTypeDefFunc(ParserCtx pc) {
    struct token tok;
    struct type t = (struct type){0};
    t.bType = BASETYPE_FUNC;
    parseToken(pc, TOKEN_PAREN_OPEN, &tok, NULL);
    t.vars = parseFuncArgs(pc);
    parseTokenUntilFound(pc, TOKEN_PAREN_CLOSE, NULL);
    parseToken(pc, TOKEN_PAREN_OPEN, &tok, NULL);
    t.rets = parseFuncRets(pc);
    parseTokenUntilFound(pc, TOKEN_PAREN_CLOSE, NULL);
    return t;
}

void parseTypeDef(ParserCtx pc) {
    struct token nameTok;
    parseToken(pc, TOKEN_IDENTIFIER, &nameTok, EXPECTED_TYPE_NAME);
    struct token defTok = TokenFeed(pc->tc);
    struct type t = (struct type){0};
    switch(defTok.type) {
        case TOKEN_IDENTIFIER:
            TokenUnfeed(pc->tc); parseTypeDefType(pc, &t); t = TypeFromType(nameTok.str, nameTok, t); break;
        case TOKEN_STRUCT: t = TypeFromType(nameTok.str, nameTok, parseTypeDefStruct(pc)); break;
        case TOKEN_VOCAB: t = TypeFromType(nameTok.str, nameTok, parseTypeDefVocab(pc)); break;
        case TOKEN_FUNC: t = TypeFromType(nameTok.str, nameTok, parseTypeDefFunc(pc)); break;
        default: SyntaxErrorInvalidToken(defTok, EXPECTED_TYPE_DEFINITION); return;
    }
    pcUpdateOrAddType(pc, t);
}

int pcId = 0;

ParserCtx parserCtxNew(struct str fileName, struct pcList* ctxs) {
    ParserCtx pc = malloc(sizeof(*pc));
    CheckAllocPtr(pc);
    *pc = (struct parserContext){0};
    pc->id = pcId;
    pcId++;
    pc->types = TypeListCreate();
    pc->vars = VarListCreate();
    pc->tc = TokenizeFile(fileName);
    pc->ctxs = ctxs;
    addVanillaTypes(pc);
    return pc;
}

ParserCtx parseImport(ParserCtx parentCtx) {
    struct token tok;
    ParserCtx importCtx;
    parseToken(parentCtx, TOKEN_STRING_LITERAL, &tok, EXPECTED_FILE_NAME);
    struct str fileName = StrSlice(tok.str, 1, tok.str.len -1);
    parseToken(parentCtx, TOKEN_IDENTIFIER, &tok, EXPECTED_FILE_ALIAS);

    if ((importCtx = pcListGet(parentCtx->ctxs, fileName)));
    else {
        importCtx = parserCtxNew(fileName, parentCtx->ctxs);
        pcListAdd(parentCtx->ctxs, importCtx);
    }
    struct pcAlias alias;
    alias.str = tok.str;
    alias.pc = importCtx;
    pcAliasListAdd(&(parentCtx->aliases), alias);
    return importCtx;
}

struct type StructPlaceholder(struct token nameTok) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_STRUCT;
    t.name = nameTok.str;
    t.tok = nameTok;
    t.placeholder = true;
    t.vars = VarListCreate();
    return t;
}

void parseStructPlaceholder(ParserCtx pc) {
    struct token nameTok;
    struct token tok;
    if (!tryParseToken(pc, TOKEN_IDENTIFIER, &nameTok)) return;
    if (!tryParseToken(pc, TOKEN_STRUCT, &tok)) return;
    pcAddType(pc, StructPlaceholder(nameTok));
}

struct var parseFuncHeader(ParserCtx pc) {
    struct token tok;
    parseToken(pc, TOKEN_IDENTIFIER, &tok, NULL);
    struct type t = parseTypeDefFunc(pc);
    t.tok = tok;
    struct var v = VarInit(tok.str, t, tok);
    return v;
}

void parseFuncPrototype(ParserCtx pc) {
    struct var v = parseFuncHeader(pc);
    pcAddVarSetOrigin(pc, v);
}

void parseFileFirstPass(ParserCtx pc) {
    while (TokenPeek(pc->tc).type != TOKEN_EOF) {
        struct token tok = TokenFeed(pc->tc);
        switch (tok.type) {
            case TOKEN_IMPORT: parseFileFirstPass(parseImport(pc)); break;
            case TOKEN_TYPE: parseStructPlaceholder(pc); break;
            default: break;
        }
    }
}

void parseFileSecondPass(ParserCtx pc) {
    while (TokenPeek(pc->tc).type != TOKEN_EOF) {
        struct token tok = TokenFeed(pc->tc);
        switch (tok.type) {
            case TOKEN_TYPE: parseTypeDef(pc); cpListAdd(&(pc->jumps), TokenGetCursor(pc->tc)); break;
            case TOKEN_IMPORT: parseFileSecondPass(parseImport(pc)); break;
            case TOKEN_FUNC: parseFuncPrototype(pc); cpListAdd(&(pc->jumps), TokenGetCursor(pc->tc)); break;
            default: break;
        }
    }
}

bool parseCompCondition(ParserCtx pc) {
    (void)pc;
    //TODO
    return false;
}

void parseCompIf(ParserCtx pc) {
    bool cond = parseCompCondition(pc);
    struct token tok;
    parseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok, NULL);
    if (!cond) discardUntilCurlyEnds(pc);
}

void parseGlobalStatement(ParserCtx pc) {
    (void)pc; //TODO
}

struct operand* varOpBinary(struct var* v, struct operand* op, enum operation opType) {
    if (!v->mayBeInitialized) SyntaxErrorInvalidToken(v->tok, VAR_NOT_INITIALIZED);
    return OperandBinary(OperandReadVar(v), op, opType);
}

bool parseAssignmentStatement(ParserCtx pc, struct statement* s, struct var* assignV) {
    int startCursor = parserGetCursor(pc);
    if (assignV->mut) {
        SyntaxErrorInvalidToken(assignV->tok, VAR_IMMUTABLE);
        return false;
    }
    struct token tok = TokenFeed(pc->tc);
    if (tok.type == TOKEN_INCREMENT) {
        s->sType = STATEMENT_ASSIGNMENT_INCREMENT;
        s->tok = TokenMerge(assignV->tok, tok);
        s->assignVar = assignV;
        return true;

    }
    else if (tok.type == TOKEN_DECREMENT) {
        s->sType = STATEMENT_ASSIGNMENT_DECREMENT;
        s->tok = TokenMerge(assignV->tok, tok);
        s->assignVar = assignV;
        return true;
    }
    struct operand* op = tryParseExpr(pc);
    if (!op) return parserSetCursorRetFalse(pc, startCursor);
    switch(tok.type) {
        case TOKEN_ASSIGNMENT: break;
        case TOKEN_ASSIGNMENT_ADD: op = varOpBinary(assignV, op, OPERATION_ADD); break;
        case TOKEN_ASSIGNMENT_SUB: op = varOpBinary(assignV, op, OPERATION_SUB); break;
        case TOKEN_ASSIGNMENT_MUL: op = varOpBinary(assignV, op, OPERATION_MUL); break;
        case TOKEN_ASSIGNMENT_DIV: op = varOpBinary(assignV, op, OPERATION_DIV); break;
        case TOKEN_ASSIGNMENT_MODULO: op = varOpBinary(assignV, op, OPERATION_MODULO); break;
        case TOKEN_ASSIGNMENT_EQUAL: op = varOpBinary(assignV, op, OPERATION_EQUALS); break;
        case TOKEN_ASSIGNMENT_NOT_EQUAL: op = varOpBinary(assignV, op, OPERATION_NOT_EQUALS); break;
        case TOKEN_ASSIGNMENT_AND: op = varOpBinary(assignV, op, OPERATION_AND); break;
        case TOKEN_ASSIGNMENT_OR: op = varOpBinary(assignV, op, OPERATION_OR); break;
        case TOKEN_ASSIGNMENT_XOR: op = varOpBinary(assignV, op, OPERATION_XOR); break;
        case TOKEN_ASSIGNMENT_BITSHIFT_LEFT: op = varOpBinary(assignV, op, OPERATION_BITSHIFT_LEFT); break;
        case TOKEN_ASSIGNMENT_BITSHIFT_RIGHT: op = varOpBinary(assignV, op, OPERATION_ADD); break;
        case TOKEN_ASSIGNMENT_BITWISE_AND: op = varOpBinary(assignV, op, OPERATION_AND); break;
        case TOKEN_ASSIGNMENT_BITWISE_OR: op = varOpBinary(assignV, op, OPERATION_OR); break;
        case TOKEN_ASSIGNMENT_BITWISE_XOR: op = varOpBinary(assignV, op, OPERATION_XOR); break;
        default: SyntaxErrorInvalidToken(tok, EXPECTED_ASSIGNMENT); return parserSetCursorRetFalse(pc, startCursor);
    }
    assignV->mayBeInitialized = true;
    if (!op) return parserSetCursorRetFalse(pc, startCursor);
    s->sType = STATEMENT_ASSIGNMENT;
    s->tok = TokenMerge(assignV->tok, op->tok);
    s->assignVar = assignV;
    s->assignOp = op;
    return true;
}

bool tryParseAssignmentStatement(ParserCtx pc, struct statement* s, struct var* assignV) {
    if (assignV->mut) {
        SyntaxErrorInvalidToken(assignV->tok, VAR_IMMUTABLE);
        return false;
    }
    struct token tok = TokenFeed(pc->tc);
    struct operand* op = tryParseExpr(pc);
    if (!op) return false;
    switch(tok.type) {
        case TOKEN_ASSIGNMENT: break;
        case TOKEN_ASSIGNMENT_ADD: op = varOpBinary(assignV, op, OPERATION_ADD); break;
        case TOKEN_ASSIGNMENT_SUB: op = varOpBinary(assignV, op, OPERATION_SUB); break;
        case TOKEN_ASSIGNMENT_MUL: op = varOpBinary(assignV, op, OPERATION_MUL); break;
        case TOKEN_ASSIGNMENT_DIV: op = varOpBinary(assignV, op, OPERATION_DIV); break;
        case TOKEN_ASSIGNMENT_MODULO: op = varOpBinary(assignV, op, OPERATION_MODULO); break;
        case TOKEN_ASSIGNMENT_EQUAL: op = varOpBinary(assignV, op, OPERATION_EQUALS); break;
        case TOKEN_ASSIGNMENT_NOT_EQUAL: op = varOpBinary(assignV, op, OPERATION_NOT_EQUALS); break;
        case TOKEN_ASSIGNMENT_AND: op = varOpBinary(assignV, op, OPERATION_AND); break;
        case TOKEN_ASSIGNMENT_OR: op = varOpBinary(assignV, op, OPERATION_OR); break;
        case TOKEN_ASSIGNMENT_XOR: op = varOpBinary(assignV, op, OPERATION_XOR); break;
        case TOKEN_ASSIGNMENT_BITSHIFT_LEFT: op = varOpBinary(assignV, op, OPERATION_BITSHIFT_LEFT); break;
        case TOKEN_ASSIGNMENT_BITSHIFT_RIGHT: op = varOpBinary(assignV, op, OPERATION_ADD); break;
        case TOKEN_ASSIGNMENT_BITWISE_AND: op = varOpBinary(assignV, op, OPERATION_AND); break;
        case TOKEN_ASSIGNMENT_BITWISE_OR: op = varOpBinary(assignV, op, OPERATION_OR); break;
        case TOKEN_ASSIGNMENT_BITWISE_XOR: op = varOpBinary(assignV, op, OPERATION_XOR); break;
        default: TokenUnfeed(pc->tc); return false;
    }
    if (!op) return false;
    s->sType = STATEMENT_ASSIGNMENT;
    s->tok = TokenMerge(assignV->tok, op->tok);
    s->assignVar = assignV;
    s->assignOp = op;
    return true;
}

bool parseStatement(ParserCtx pc, struct statement* s);
struct statementList parseCodeBlock(ParserCtx pc) {
    struct statementList sl = (struct statementList){0};
    struct token tok;
    if (!parseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok, NULL)) return sl;
    if (tryParseToken(pc, TOKEN_CURLY_BRACKET_CLOSE, &tok)) return sl;
    struct statement s;
    while (parseStatement(pc, &s)) {
        StatementListAdd(&sl, s);
        if (tryParseToken(pc, TOKEN_CURLY_BRACKET_CLOSE, &tok)) return sl;
    }
    TokenFeedUntil(pc->tc, TOKEN_CURLY_BRACKET_CLOSE);
    return sl;
}

bool parseControlFlowStatementErrorHandling(ParserCtx pc) {
    TokenFeedUntil(pc->tc, TOKEN_CURLY_BRACKET_OPEN);
    TokenFeedUntil(pc->tc, TOKEN_CURLY_BRACKET_CLOSE);
    return false;
}

void parseIfStatement(ParserCtx pc, struct statement* s) {
    s->condOp = parseBoolExpr(pc);
    s->codeBlock = parseCodeBlock(pc);
}

bool parseForStatement(ParserCtx pc, struct statement* s) {
    s->assignVar = VarAlloc();
    if (tryParseVarDeclaration(pc, s->assignVar)) {
        s->stackAllocation = StatementStackAllocation(s->assignVar);
        s->assignment = StatementEmpty();
        if (!parseAssignmentStatement(pc, s->assignment, s->assignVar)) return parseControlFlowStatementErrorHandling(pc);
        VarListAdd(pc->vars, *s->assignVar);
    }
    struct token tok;
    if (!parseToken(pc, TOKEN_COMMA, &tok, NULL)) return parseControlFlowStatementErrorHandling(pc);
    s->condOp = tryParseExpr(pc);
    if (!s->condOp) return parseControlFlowStatementErrorHandling(pc);
    if (!parseToken(pc, TOKEN_COMMA, &tok, NULL)) return parseControlFlowStatementErrorHandling(pc);
    s->forEveryAssignment = StatementEmpty();
    s->forEveryAssignment->assignVar = VarAlloc();
    if (!parseVar(pc, s->forEveryAssignment->assignVar)) return parseControlFlowStatementErrorHandling(pc);
    if (!tryParseAssignmentStatement(pc, s->forEveryAssignment, s->forEveryAssignment->assignVar)) {
        return parseControlFlowStatementErrorHandling(pc);
    }
    s->codeBlock = parseCodeBlock(pc);
    return true;
}

void parseMatchStatement(ParserCtx pc, struct statement* s) {
    (void)pc;
    (void)s;
    //TODO
}

void parseMatchAllStatement(ParserCtx pc, struct statement* s) {
    parseMatchStatement(pc, s);
    s->sType = STATEMENT_MATCHALL;
}

bool parseControlFlowStatement(ParserCtx pc, struct statement* s) {
    struct token tok = TokenFeed(pc->tc);
    switch (tok.type) {
        case TOKEN_IF: parseIfStatement(pc, s); return true;
        case TOKEN_FOR: return parseForStatement(pc, s);
        case TOKEN_MATCH: parseMatchStatement(pc, s); return true;
        case TOKEN_MATCHALL: parseMatchAllStatement(pc, s); return true;
        default: SyntaxErrorInvalidToken(tok, EXPECTED_CLOSING_CURLY); return false;
    }
}

bool parseStatement(ParserCtx pc, struct statement* s) {
    struct var v;
    if (tryParseVar(pc, &v)) return parseAssignmentStatement(pc, s, &v);
    return parseControlFlowStatement(pc, s);
}

bool tryParsePrefixUnary(ParserCtx pc, enum operation* unary, struct token* tok) {
    *tok = TokenFeed(pc->tc);
    switch (tok->type) {
        case TOKEN_ADD: *unary = OPERATION_PLUS; break;
        case TOKEN_SUB: *unary = OPERATION_MINUS; break;
        case TOKEN_NOT: *unary = OPERATION_NOT; break;
        case TOKEN_BITWISE_COMPLEMENT: *unary = OPERATION_BITWISE_COMPLEMENT; break;
        default: TokenUnfeed(pc->tc); return false;
    }
    return true;
}

int countPrefixUnaries(ParserCtx pc) {
    int i = 0;
    enum operation unary;
    struct token tok;
    while (tryParsePrefixUnary(pc, &unary, &tok)) i++;
    return i;
}

//assumes the cursor is set to the unary closes to the pure operand
struct operand* parsePrefixUnaries(ParserCtx pc, struct operand* op, int nUnaries) {
    enum operation unary;
    struct token tok;
    for (int i = 0; i < nUnaries; i++) {
        TokenUnfeed(pc->tc);
        if (!tryParsePrefixUnary(pc, &unary, &tok)) ErrorBugFound();
        TokenUnfeed(pc->tc);
        op = OperandUnary(op, unary, TokenMerge(tok, op->tok));
    }
    return op;
}

struct operand* tryParseExprInternal(ParserCtx pc, bool insideParen);

struct operand* tryParseOperand(ParserCtx pc) {
    int startCursor = TokenGetCursor(pc->tc);
    int prefixUnaryCnt = countPrefixUnaries(pc);

    struct operand* op;
    if ((op = tryParseVarAsOperand(pc)));
    else if ((op = tryParseTypeCast(pc)));
    else {
        struct token tok = TokenFeed(pc->tc);
        switch(tok.type) {
            case TOKEN_PAREN_OPEN:
                op = tryParseExprInternal(pc, true);
                if (!op) {TokenUnfeed(pc->tc); return NULL;}
                op->tok = TokenMerge(tok, TokenPrevious(pc->tc));
                break;
            case TOKEN_BOOL_LITERAL: op = OperandBoolLiteral(tok); break;
            case TOKEN_CHAR_LITERAL: op = OperandCharLiteral(tok); break;
            case TOKEN_INT_LITERAL: op = OperandIntLiteral(tok); break;
            case TOKEN_FLOAT_LITERAL: op = OperandFloatLiteral(tok); break;
            case TOKEN_STRING_LITERAL: op = OperandStringLiteral(tok); break;
            default: TokenSetCursor(pc->tc, startCursor); return NULL;
        }
    }
    int endCursor = TokenGetCursor(pc->tc);
    TokenSetCursor(pc->tc, startCursor + prefixUnaryCnt);
    op = parsePrefixUnaries(pc, op, prefixUnaryCnt);
    if (!op) TokenSetCursor(pc->tc, startCursor);
    else TokenSetCursor(pc->tc, endCursor);
    return op;
}

bool tryParseBinaryOperation(ParserCtx pc, enum operation* oper) {
    struct token tok = TokenFeed(pc->tc);
    switch(tok.type) {
        case TOKEN_MODULO: *oper = OPERATION_MODULO; return true;
        case TOKEN_ADD: *oper = OPERATION_ADD; return true;
        case TOKEN_SUB: *oper = OPERATION_SUB; return true;
        case TOKEN_MUL: *oper = OPERATION_MUL; return true;
        case TOKEN_DIV: *oper = OPERATION_DIV; return true;
        case TOKEN_LESS_THAN: *oper = OPERATION_LESS_THAN; return true;
        case TOKEN_LESS_THAN_OR_EQUAL: *oper = OPERATION_LESS_THAN_OR_EQUAL; return true;
        case TOKEN_GREATER_THAN: *oper = OPERATION_GREATER_THAN; return true;
        case TOKEN_GREATER_THAN_OR_EQUAL: *oper = OPERATION_GREATER_THAN_OR_EQUAL; return true;
        case TOKEN_EQUAL: *oper = OPERATION_EQUALS; return true;
        case TOKEN_NOT_EQUAL: *oper = OPERATION_NOT_EQUALS; return true;
        case TOKEN_AND: *oper = OPERATION_AND; return true;
        case TOKEN_OR: *oper = OPERATION_OR; return true;
        case TOKEN_BITSHIFT_LEFT: *oper = OPERATION_BITSHIFT_LEFT; return true;
        case TOKEN_BITSHIFT_RIGHT: *oper = OPERATION_BITSHIFT_RIGHT; return true;
        case TOKEN_BITWISE_AND: *oper = OPERATION_BITWISE_AND; return true;
        case TOKEN_BITWISE_OR: *oper = OPERATION_BITWISE_OR; return true;
        case TOKEN_BITWISE_XOR: *oper = OPERATION_BITWISE_XOR; return true;
        default: TokenUnfeed(pc->tc); return false;
    }
}

struct operand* tryParseExprInternal(ParserCtx pc, bool insideParen) {
    int startCursor = TokenGetCursor(pc->tc);
    struct operandList operands = (struct operandList){0};
    struct operationList operations = (struct operationList){0};
    struct operand* op;
    struct token tok;
    if (!(op = tryParseOperand(pc))) return NULL;
    OperandListAdd(&operands, op);
    enum operation operation;
    while (tryParseBinaryOperation(pc, &operation)) {
        if (!(op = tryParseOperand(pc))) {
            SyntaxErrorInvalidToken(TokenPeek(pc->tc), EXPECTED_OPERAND);
            OperandListDestroy(operands);
            OperationListDestroy(operations);
            TokenSetCursor(pc->tc, startCursor);
            return NULL;
        }
        OperationListAdd(&operations, operation);
        OperandListAdd(&operands, op);
    }
    if (insideParen && !parseToken(pc, TOKEN_PAREN_CLOSE, &tok, EXPECTED_CLOSING_PAREN)) {
        TokenSetCursor(pc->tc, startCursor);
        return NULL;
    }
    op = OperandEvalExpr(operands, operations);
    OperandListDestroy(operands);
    OperationListDestroy(operations);
    if (!op) TokenSetCursor(pc->tc, startCursor);
    return op;
}

struct operand* tryParseExpr(ParserCtx pc) {
    return tryParseExprInternal(pc, false);
}

void parseFileThirdPass(ParserCtx pc) {
    while (TokenPeek(pc->tc).type != TOKEN_EOF) {
        struct token tok = TokenFeed(pc->tc);
        struct var func;
        switch (tok.type) {
            case TOKEN_IMPORT: parseFileThirdPass(parseImport(pc)); break;
            case TOKEN_TYPE: TokenSetCursor(pc->tc, cpListNext(&(pc->jumps))); break;
            case TOKEN_IDENTIFIER: parseGlobalStatement(pc); break;
            case TOKEN_FUNC:
                                   if (!parseVar(pc, &func)) ErrorBugFound();
                                   TokenSetCursor(pc->tc, cpListNext(&(pc->jumps)));
                                   func.origin->codeBlock = parseCodeBlock(pc);
                                   break;

            case TOKEN_COMPIF: parseCompIf(pc); break;
            default: break;
        }
    }
}

void pcListResetTokenCtxs(struct pcList* ctxs) {
    for (int i = 0; i < ctxs->len; i++) {
        TokenReset(ctxs->ptr[i]->tc);
        pcAliasListClear(&(ctxs->ptr[i]->aliases));
        cpListReset(&(ctxs->ptr[i]->jumps));
    }
}

void pcListClearAliases(struct pcList* ctxs) {
    for (int i = 0; i < ctxs->len; i++) {
    }
}

ParserCtx ParseFile(char* fileName) {
    struct pcList ctxs = (struct pcList){0};
    ParserCtx pc = parserCtxNew(StrFromStackCStr(fileName), &ctxs);
    pcListAdd(&ctxs, pc);
    parseFileFirstPass(pc);

    pcListResetTokenCtxs(&ctxs);
    parseFileSecondPass(pc);

    pcListResetTokenCtxs(&ctxs);
    parseFileThirdPass(pc);
    return pc;
}
