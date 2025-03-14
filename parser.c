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
    struct pcList* ctxs;
};

struct pcList {
    int cap;
    int len;
    ParserCtx* ptr;
};

struct pcList* pcListNew() {
    struct pcList* list = malloc(sizeof(*list));
    *list = (struct pcList){0};
    CheckAllocPtr(list);
    return list;
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

bool pcGetType(ParserCtx pc, struct str name, struct type* t) {
    if (isPublic(name)) return TypeListGet(pc->publTypes, name, t);
    else return TypeListGet(pc->privTypes, name, t);
}

struct type* pcGetTypeAsPtr(ParserCtx pc, struct str name) {
    if (isPublic(name)) return TypeListGetAsPtr(pc->publTypes, name);
    else return TypeListGetAsPtr(pc->privTypes, name);
}

void pcAddType(ParserCtx pc, struct type t) {
    struct type tmpType;
    if (pcGetType(pc, t.name, &tmpType)) SyntaxErrorInvalidToken(t.tok, TYPE_NAME_IN_USE);
    if (isPublic(t.name)) TypeListAdd(pc->publTypes, t);
    else TypeListAdd(pc->privTypes, t);
}

void pcUpdateOrAddType(ParserCtx pc, struct type t) {
    struct type tmpType;
    if (!pcGetType(pc, t.name, &tmpType)) pcAddType(pc, t);
    if (isPublic(t.name)) TypeListUpdate(pc->publTypes, t);
    else TypeListUpdate(pc->privTypes, t);
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

int parseUntilOneOfTokensOrEOF(ParserCtx pc, enum tokenType tokens[], int len) {
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

void parseUntilClosingSquareBracket(ParserCtx pc) {
    enum tokenType tType = TOKEN_SQUARE_BRACKET_CLOSE;
    struct token errorToken = TokenPeek(pc->tc);
    int nFoundUntil = parseUntilOneOfTokensOrEOF(pc, &tType, 1);
    if (nFoundUntil != 0) SyntaxErrorInvalidToken(errorToken, EXPECTED_CLOSING_SQUARE_BRACKET);
}

void parseUntilCommaOrCurlyClose(ParserCtx pc) {
    enum tokenType tTypes[] = {TOKEN_COMMA, TOKEN_CURLY_BRACKET_CLOSE};
    parseUntilOneOfTokensOrEOF(pc, tTypes, 2);
}

void parseUntilCommaOrParenClose(ParserCtx pc) {
    enum tokenType tTypes[] = {TOKEN_COMMA, TOKEN_PAREN_CLOSE};
    parseUntilOneOfTokensOrEOF(pc, tTypes, 2);
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
        t->tok = TokenMerge(t->tok, tok);
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
            t->tok = TokenMerge(t->tok, tok);
        }
        else if (tok.type == TOKEN_INT_LITERAL) {
            t->arrLens[t->nArrLvls] = LongLongFromStr(tok.str);
            t->nArrLvls++;
            parseToken(pc, TOKEN_SQUARE_BRACKET_CLOSE, &tok, NULL);
            t->tok = TokenMerge(t->tok, tok);
        }
        else {
            TokenUnfeed(pc->tc);
            SyntaxErrorInvalidToken(tok, INVALID_ARRAY_SIZE);
            parseToken(pc, TOKEN_SQUARE_BRACKET_CLOSE, &tok, NULL);
        }
    }
}

bool parseType(ParserCtx pc, struct type* t) {
    struct token tok;
    if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_TYPE_NAME)) return false;
    if (!pcGetType(pc, tok.str, t)) {
        SyntaxErrorInvalidToken(tok, EXPECTED_TYPE_NAME);
        return false;
    }
    t->tok = tok;
    return true;
}

bool parseTypeNoPlaceholder(ParserCtx pc, struct type* t) {
    if (!parseType(pc, t)) return false;
    if (t->placeholder) SyntaxErrorInvalidToken(t->tok, EXPECTED_TYPE_NAME);
    return true;
}

bool parseTypeDeclaration(ParserCtx pc, struct type* t) {
    if (!parseType(pc, t)) return false;
    if (t->bType == BASETYPE_STRUCT) {
        struct token tok;
        if (tryParseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok)) {
            t->structMAlloc = true;
            parseToken(pc, TOKEN_CURLY_BRACKET_CLOSE, &tok, NULL);
            t->tok = TokenMerge(t->tok, tok);
        }
    }
    tryParseTypeArrayDeclaration(pc, t);
    return true;
}

bool parseVarDeclaration(ParserCtx pc, struct var* v) {
    struct type t;
    struct token tok;
    if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_VAR_NAME)) return false;
    if (!parseTypeDeclaration(pc, &t)) return false;
    *v = VarInit(tok.str, t, tok);
    return true;
}

bool parseStructMember(ParserCtx pc, struct var* v) {
    if (!parseVarDeclaration(pc, v)) return false;
    if (v->type.structMAlloc == true && v->type.placeholder) {
        SyntaxErrorInvalidToken(v->type.tok, EXPECTED_TYPE_NAME);
        return false;
    }
    return true;
}

VarList parseStructMembersList(ParserCtx pc) {
    VarList vars = VarListCreate();
    if (TokenPeek(pc->tc).type == TOKEN_CURLY_BRACKET_CLOSE) return vars;
    struct var var;
    if (parseStructMember(pc, &var)) VarListAdd(vars, var);
    else parseUntilCommaOrCurlyClose(pc);
    struct token tok;
    while(tryParseToken(pc, TOKEN_COMMA, &tok)) {
        if (!parseStructMember(pc, &var)) {
            parseUntilCommaOrCurlyClose(pc);
            continue;
        }
        struct var tmp;
        if (VarListGet(vars, var.name, &tmp)) SyntaxErrorInvalidToken(var.tok, VAR_NAME_IN_USE);
        VarListAdd(vars, var);
    }
    return vars;
}

struct type parseTypeDefStruct(ParserCtx pc) {
    struct token tok;
    struct type t = (struct type){0};
    t.bType = BASETYPE_STRUCT;
    parseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok, NULL);
    t.vars = parseStructMembersList(pc);
    parseToken(pc, TOKEN_CURLY_BRACKET_CLOSE, &tok, EXPECTED_CLOSING_CURLY_OR_COMMA);
    return t;
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
    parseToken(pc, TOKEN_CURLY_BRACKET_CLOSE, &tok, EXPECTED_CLOSING_CURLY_OR_COMMA);
    return t;
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
    else parseUntilCommaOrParenClose(pc);
    struct token tok;
    while(tryParseToken(pc, TOKEN_COMMA, &tok)) {
        if (!parseTypeDeclaration(pc, &type)) {
            parseUntilCommaOrParenClose(pc);
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
    parseToken(pc, TOKEN_PAREN_CLOSE, &tok, NULL);
    parseToken(pc, TOKEN_PAREN_OPEN, &tok, NULL);
    t.rets = parseFuncRets(pc);
    parseToken(pc, TOKEN_PAREN_CLOSE, &tok, NULL);
    return t;
}

void parseTypeDef(ParserCtx pc) {
    struct token nameTok;
    parseToken(pc, TOKEN_IDENTIFIER, &nameTok, EXPECTED_TYPE_NAME);
    struct token defTok = TokenFeed(pc->tc);
    struct type t = (struct type){0};
    switch(defTok.type) {
    case TOKEN_IDENTIFIER: TokenUnfeed(pc->tc); parseTypeNoPlaceholder(pc, &t); t = TypeFromType(nameTok.str, nameTok, t); break;
        case TOKEN_STRUCT: t = TypeFromType(nameTok.str, nameTok, parseTypeDefStruct(pc)); break;
        case TOKEN_VOCAB: t = TypeFromType(nameTok.str, nameTok, parseTypeDefVocab(pc)); break;
        case TOKEN_FUNC: t = TypeFromType(nameTok.str, nameTok, parseTypeDefFunc(pc)); break;
        default: SyntaxErrorInvalidToken(defTok, EXPECTED_TYPE_DEFINITION);
    }
    tryParseTypeArrayDeclarationRefsOnly(pc, &t);
    pcUpdateOrAddType(pc, t);
}

ParserCtx parserCtxNew(struct str fileName, struct pcList* ctxs) {
    ParserCtx pc = malloc(sizeof(*pc));
    CheckAllocPtr(pc);
    *pc = (struct parserContext){0};
    pc->publTypes = TypeListCreate();
    pc->privTypes = TypeListCreate();
    pc->tc = TokenizeFile(fileName);
    pc->ctxs = ctxs;
    addVanillaTypes(pc);
    return pc;
}

ParserCtx parseImportCtx(ParserCtx parentCtx) {
    struct token tok;
    parseToken(parentCtx, TOKEN_STRING_LITERAL, &tok, EXPECTED_FILE_NAME);
    struct str fileName = StrSlice(tok.str, 1, tok.str.len -2);

    ParserCtx importCtx;
    if ((importCtx = pcListGet(parentCtx->ctxs, fileName))) return importCtx;
    importCtx = parserCtxNew(fileName, parentCtx->ctxs);
    pcListAdd(parentCtx->ctxs, importCtx);
    return importCtx;
}

struct type StructPlaceholder(struct token nameTok) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_STRUCT;
    t.name = nameTok.str;
    t.tok = nameTok;
    t.placeholder = true;
    return t;
}

void parseStructPlaceholder(ParserCtx pc) {
    struct token nameTok;
    struct token tok;
    if (!tryParseToken(pc, TOKEN_IDENTIFIER, &nameTok)) return;
    if (!tryParseToken(pc, TOKEN_STRUCT, &tok)) return;
    pcAddType(pc, StructPlaceholder(nameTok));
}

void parseFileFirstPass(ParserCtx pc) {
    while (TokenPeek(pc->tc).type != TOKEN_EOF) {
        struct token tok = TokenFeed(pc->tc);
        switch (tok.type) {
            case TOKEN_TYPE: parseStructPlaceholder(pc); break;
            case TOKEN_IMPORT: parseFileFirstPass(parseImportCtx(pc)); break;
            default: break;
        }
    }
}

void parseFileSecondPass(ParserCtx pc) {
    while (TokenPeek(pc->tc).type != TOKEN_EOF) {
        struct token tok = TokenFeed(pc->tc);
        switch (tok.type) {
            case TOKEN_TYPE: parseTypeDef(pc); break;
            default: break;
        }
    }
}

void parseFileThirdPass(ParserCtx pc) {
    while (TokenPeek(pc->tc).type != TOKEN_EOF) {
        struct token tok = TokenFeed(pc->tc);
        switch (tok.type) {
            default: break;
        }
    }
}

void parseFileFourthPass(ParserCtx pc) {
    while (TokenPeek(pc->tc).type != TOKEN_EOF) {
        struct token tok = TokenFeed(pc->tc);
        switch (tok.type) {
            default: break;
        }
    }
}

ParserCtx ParseFile(char* fileName) {
    struct pcList* ctxs = pcListNew();
    ParserCtx pc = parserCtxNew(StrFromStackCStr(fileName), ctxs);
    parseFileFirstPass(pc);
    TokenReset(pc->tc);
    parseFileSecondPass(pc);
    TokenReset(pc->tc);
    parseFileThirdPass(pc);
    TokenReset(pc->tc);
    parseFileFourthPass(pc);
    return pc;
}
