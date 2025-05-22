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
#include "list.h"

enum parsingMode {
    MODE_FORCE, //forces all tokens in the designated order
    MODE_TRY //tries enough tokens to be sure the structure is to be parsed, then forces the rest
};

struct pcAlias {
    struct str name;
    ParserCtx pc;
};

bool aliasCmpForList(void* name, void* elem) {
    struct str cmpName = ((struct pcAlias*)name)->name;
    struct str elemName = ((struct pcAlias*)elem)->name;
    return StrCmp(cmpName, elemName);
}

struct pcAlias* aliasGetList(struct list* l, struct str name) {
    return ListGetCmp(l, &name, aliasCmpForList);
}

struct parserContext {
    int id;
    TokenCtx tc; //contains fileName
    struct list jumps;
    struct list aliases; //private for each parser context
    struct list types;
    struct list vars;
    struct list* ctxs; //universal across the compilation
};

bool pcCmpForList(void* name, void* elem) {
    struct str cmpName = *(struct str*)name;
    struct str elemName = TokenGetFileName(((ParserCtx)elem)->tc);
    return StrCmp(cmpName, elemName);
}

ParserCtx pcGetList(struct list* l, struct str name) {
    return ListGetCmp(l, &name, pcCmpForList);
}

bool isPublic(struct str name) {
    if (name.len <= 0) ErrorBugFound();
    char c = name.ptr[0];
    if (c >= 'A' && c <= 'Z') return true;
    return false;
}

void pcAddType(ParserCtx pc, struct type t) {
    t.pcId = pc->id;
    if (TypeGetList(&pc->types, t.name)) SyntaxErrorInvalidToken(t.tok, TYPE_NAME_IN_USE);
    ListAdd(&pc->types, &t);
}

void pcAddVar(ParserCtx pc, struct var v) {
    if (VarGetList(&pc->vars, v.name)) SyntaxErrorInvalidToken(v.tok, VAR_NAME_IN_USE);
    else ListAdd(&pc->vars, &v);
}

void pcAddVarSetOrigin(ParserCtx pc, struct var v) {
    if (VarGetList(&pc->vars, v.name)) SyntaxErrorInvalidToken(v.tok, VAR_NAME_IN_USE);
    else {
        ListAdd(&pc->vars, &v);
        struct var* vPtr = ListGetIdx(&pc->vars, pc->vars.len - 1);
        vPtr->origin = vPtr;
    }
}

void pcUpdateOrAddType(ParserCtx pc, struct type t) {
    struct type* tmpTypePtr;
    if (!(tmpTypePtr = TypeGetList(&pc->types, t.name))) pcAddType(pc, t);
    else {
        t.pcId = pc->id;
        *tmpTypePtr = t;
    }
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
bool parseToken(ParserCtx pc, enum tokenType type, struct token* tokPtr, enum parsingMode mode, char* errMsg) {
    char errMsgBuffer[100];
    *tokPtr = TokenFeed(pc->tc);
    if (tokPtr->type == type) return true;
    TokenUnfeed(pc->tc);
    if (mode == MODE_TRY) return false;
    if (!errMsg) {
        errMsg = errMsgBuffer;
        errMsg[0] = '\0';
        strcat(errMsg, "expected \"");
        strcat(errMsg, TokenTypeToString(type));
        strcat(errMsg, "\"");
    }
    SyntaxErrorInvalidToken(*tokPtr, errMsg);
    return false;
}

bool forceParseToken(ParserCtx pc, enum tokenType type, struct token* tokPtr, char* errMsg) {
    return parseToken(pc, type, tokPtr, MODE_FORCE, errMsg);
}

bool tryParseToken(ParserCtx pc, enum tokenType type, struct token* tokPtr) {
    return parseToken(pc, type, tokPtr, MODE_TRY, NULL);
}

void forceParseTokenSkipUntilFound(ParserCtx pc, enum tokenType type, char* errMsg) {
    struct token tok;
    if (!parseToken(pc, type, &tok, MODE_FORCE, errMsg)) TokenFeedUntil(pc->tc, type);
}

void skipUntilCurlyCloses(ParserCtx pc) {
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

void skipUntilParenCloses(ParserCtx pc) {
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


int pcGetCursor(ParserCtx pc) {
    return TokenGetCursor(pc->tc);
}

void pcSetCursor(ParserCtx pc, int cursor) {
    TokenSetCursor(pc->tc, cursor);
}

bool pcSetCursorRetFalse(ParserCtx pc, int cursor) {
    TokenSetCursor(pc->tc, cursor);
    return false;
}

void* pcSetCursorRetNull(ParserCtx pc, int cursor) {
    TokenSetCursor(pc->tc, cursor);
    return NULL;
}

struct operand* parseExpr(ParserCtx pc, enum parsingMode mode);

struct operand* forceParseIntExpr(ParserCtx pc) {
    struct operand* expr = parseExpr(pc, MODE_FORCE);
    if (!expr) return NULL;
    if (!OperandIsInt(expr)) {
        SyntaxErrorInvalidToken(expr->tok, OPERATION_REQUIRES_INT);
        return NULL;
    }
    return expr;
}

struct operand* forceParseBoolExpr(ParserCtx pc) {
    struct operand* expr = parseExpr(pc, MODE_FORCE);
    if (!expr) return NULL;
    if (!OperandIsBool(expr)) {
        SyntaxErrorInvalidToken(expr->tok, OPERATION_REQUIRES_BOOL);
        return NULL;
    }
    return expr;
}

bool tryParseArrayDeclaration(ParserCtx pc, struct type* t) {
    int startCursor = pcGetCursor(pc);
    struct token tok;
    if (!tryParseToken(pc, TOKEN_SQUARE_BRACKET_OPEN, &tok)) return true;
    t->arrLen = forceParseIntExpr(pc);
    if (!t->arrLen) return pcSetCursorRetFalse(pc, startCursor);
    forceParseToken(pc, TOKEN_SQUARE_BRACKET_CLOSE, &tok, NULL);
    t->arrLvls++;
    t->arrMalloc = true;

    t->tok = TokenMerge(t->tok, tok);
    if (t->bType == BASETYPE_ARRAY) return true;
    t->arrBase = t->bType;
    t->bType = BASETYPE_ARRAY;
    return true;
}

ParserCtx tryParseAlias(ParserCtx pc) { //returns pc if not found
    int startCursor = pcGetCursor(pc);
    struct token aliasTok;
    struct token tok;
    if (!tryParseToken(pc, TOKEN_IDENTIFIER, &aliasTok)) return pc;
    struct pcAlias* alias = aliasGetList(&pc->aliases, aliasTok.str);
    if (!alias) {pcSetCursor(pc, startCursor); return pc;}
    forceParseToken(pc, TOKEN_DOT, &tok, NULL);
    return alias->pc;
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

bool parseType(ParserCtx pc, struct type* t, enum parsingMode mode) {
    int startCursor = pcGetCursor(pc);
    ParserCtx source = tryParseAlias(pc);
    struct token tok;
    if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, mode, UNKNOWN_TYPE)) return false;
    struct type* tmpTypePtr;
    if (!(tmpTypePtr = TypeGetList(&source->types, tok.str))) {
        if (mode == MODE_FORCE) SyntaxErrorInvalidToken(tok, UNKNOWN_TYPE);
        return pcSetCursorRetFalse(pc, startCursor);
    }
    *t = *tmpTypePtr;
    t->tok = tok;
    if (source != pc && !isPublic(t->name)) {
        if (mode == MODE_FORCE) SyntaxErrorInvalidToken(t->tok, TYPE_IS_PRIVATE);
        return pcSetCursorRetFalse(pc, startCursor);
    }
    tryParseTypeArrayRefLevels(pc, t);
    return true;
}

void tryParseStructDerefAndArrayIndexing(ParserCtx pc, struct var* v) {
    struct token tok;
    while (true) {
        if (v->type.bType == BASETYPE_STRUCT && tryParseToken(pc, TOKEN_DOT, &tok)) {
            forceParseToken(pc, TOKEN_IDENTIFIER, &tok, NULL);
            struct var* vMember;
            if ((vMember = VarGetList(&v->type.vars, tok.str))) *v = *vMember;
            v->tok = TokenMerge(v->tok, tok);
        }
        else if (v->type.bType == BASETYPE_ARRAY && tryParseToken(pc, TOKEN_SQUARE_BRACKET_OPEN, &tok)) {
            forceParseIntExpr(pc);
            forceParseToken(pc, TOKEN_SQUARE_BRACKET_CLOSE, &tok, NULL);
            v->tok = TokenMerge(v->tok, tok);
            v->type.arrLvls--;
            if (v->type.arrLvls == 0) v->type.bType = v->type.arrBase;
        }
        else break;
    }
}

bool parseVar(ParserCtx pc, struct var* v, enum parsingMode mode) {
    int startCursor = pcGetCursor(pc);
    ParserCtx source = tryParseAlias(pc);
    struct token tok;
    if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, mode, UNKNOWN_VAR)) return false;
    struct var* tmpVarPtr;
    if (!(tmpVarPtr = VarGetList(&source->vars, tok.str))) {
        if (mode == MODE_FORCE) SyntaxErrorInvalidToken(tok, UNKNOWN_VAR);
        return pcSetCursorRetFalse(pc, startCursor);
    }
    *v = *tmpVarPtr;
    v->tok = tok;
    if (source != pc && !isPublic(v->name)) {
        if (mode == MODE_FORCE) SyntaxErrorInvalidToken(tok, VAR_IS_PRIVATE);
        return pcSetCursorRetFalse(pc, startCursor);
    }
    tryParseStructDerefAndArrayIndexing(pc, v);
    return true;
}

struct operand* tryParseVarAsOperand(ParserCtx pc) {
    int startCursor = pcGetCursor(pc);
    struct var v;
    if (!parseVar(pc, &v, MODE_TRY)) return NULL;
    if (v.mayBeInitialized) return OperandReadVar(&v);
    SyntaxErrorInvalidToken(v.tok, VAR_NOT_INITIALIZED);
    return pcSetCursorRetNull(pc, startCursor);
}

struct operand* tryParseOperand(ParserCtx pc);

struct operand* tryParseTypeCast(ParserCtx pc) {
    int startCursor = pcGetCursor(pc);
    struct type t;
    struct token tok;
    if (!parseType(pc, &t, MODE_TRY)) return pcSetCursorRetNull(pc, startCursor);
    if (!forceParseToken(pc, TOKEN_PAREN_OPEN, &tok, NULL)) return pcSetCursorRetNull(pc, startCursor);
    struct operand* op = tryParseOperand(pc);
    if (!op) return pcSetCursorRetNull(pc, startCursor);
    if (!forceParseToken(pc, TOKEN_PAREN_CLOSE, &tok, NULL)) return pcSetCursorRetNull(pc, startCursor);
    op = OperandTypeCast(op, t, TokenMerge(t.tok, tok));
    if (!op) pcSetCursor(pc, startCursor);
    return op;
}

bool forceParseTypeDefType(ParserCtx pc, struct type* t) {
    int startCursor = pcGetCursor(pc);
    if (!parseType(pc, t, MODE_FORCE)) return false;
    if (t->placeholder) {
        SyntaxErrorInvalidToken(t->tok, UNKNOWN_TYPE);
        return pcSetCursorRetFalse(pc, startCursor);
    }
    return true;
}

bool forceParseTypeDeclaration(ParserCtx pc, struct type* t, enum parsingMode mode) {
    int startCursor = pcGetCursor(pc);
    if (!parseType(pc, t, mode)) return false;
    if (t->bType == BASETYPE_STRUCT) {
        struct token tok;
        if (tryParseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok)) {
            t->structMAlloc = true;
            forceParseToken(pc, TOKEN_CURLY_BRACKET_CLOSE, &tok, NULL);
            t->tok = TokenMerge(t->tok, tok);
        }
    }
    if (!tryParseArrayDeclaration(pc, t)) return pcSetCursorRetFalse(pc, startCursor);
    return true;
}

bool parseVarDeclaration(ParserCtx pc, struct var* v, enum parsingMode mode) {
    int startCursor = TokenGetCursor(pc->tc);
    struct type t;
    struct token tok;
    if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, mode, EXPECTED_VAR_NAME)) return false;
    if (!forceParseTypeDeclaration(pc, &t, mode)) return pcSetCursorRetFalse(pc, startCursor);
    *v = VarInit(tok.str, t, tok);
    return true;
}

struct list parseVarDeclarationList(ParserCtx pc, enum parsingMode mode) {
    struct list vars = ListInit(sizeof(struct var));
    struct var v;
    struct token tok;
    if (!parseVarDeclaration(pc, &v, mode)) return vars;
    ListAdd(&vars, &v);
    while (tryParseToken(pc, TOKEN_COMMA, &tok)) {
        if (!parseVarDeclaration(pc, &v, MODE_FORCE)) return vars;
        ListAdd(&vars, &v);
    }
    return vars;
}

bool forceParseStructMember(ParserCtx pc, struct var* v) {
    int startCursor = TokenGetCursor(pc->tc);
    if (!parseVarDeclaration(pc, v, MODE_FORCE)) return false;
    if (v->type.structMAlloc == true && v->type.placeholder) {
        SyntaxErrorInvalidToken(v->type.tok, STRUCT_NOT_YET_DEFINED);
        return pcSetCursorRetFalse(pc, startCursor);
    }
    return true;
}

struct list forceParseStructBody(ParserCtx pc) {
    struct token tok;
    forceParseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok, NULL);
    struct list members = ListInit(sizeof(struct var));
    if (tryParseToken(pc, TOKEN_CURLY_BRACKET_CLOSE, &tok)) return members;
    struct var var;
    if (!forceParseStructMember(pc, &var)) {skipUntilCurlyCloses(pc); return members;}
    ListAdd(&members, &var);
    while(tryParseToken(pc, TOKEN_COMMA, &tok)) {
        if (!forceParseStructMember(pc, &var)) {
            skipUntilCurlyCloses(pc);
            return members;
        }
        if (VarGetList(&members, var.name)) SyntaxErrorInvalidToken(var.tok, VAR_NAME_IN_USE);
        ListAdd(&members, &var);
    }
    forceParseTokenSkipUntilFound(pc, TOKEN_CURLY_BRACKET_CLOSE, NULL);
    return members;
}

struct type forceParseTypeDefStruct(ParserCtx pc) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_STRUCT;
    t.vars = forceParseStructBody(pc);
    return t;
}

struct list forceParseVocabBody(ParserCtx pc) {
    struct token tok;
    forceParseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok, NULL);
    struct list words = ListInit(sizeof(struct str));
    if (tryParseToken(pc, TOKEN_CURLY_BRACKET_CLOSE, &tok)) return words;
    if (!forceParseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_VOCAB_WORD)) {skipUntilCurlyCloses(pc); return words;}
    ListAdd(&words, &tok.str);
    while(tryParseToken(pc, TOKEN_COMMA, &tok)) {
        if (!forceParseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_VOCAB_WORD)) {
            skipUntilCurlyCloses(pc);
            return words;
        }
        if (StrGetList(&words, tok.str)) SyntaxErrorInvalidToken(tok, WORD_ALREADY_IN_USE);
        else ListAdd(&words, &tok.str);
    }
    forceParseTokenSkipUntilFound(pc, TOKEN_CURLY_BRACKET_CLOSE, NULL);
    return words;
}

struct type forceParseTypeDefVocab(ParserCtx pc) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_VOCAB;
    t.words = forceParseVocabBody(pc);
    return t;
}

bool forceParseFuncArg(ParserCtx pc, struct var* v) {
    int startCursor = pcGetCursor(pc);
    struct token tok;
    struct type t;
    bool mut = false;
    if (!forceParseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_VAR_NAME)) return false;
    if (isPublic(tok.str)) {
        SyntaxErrorInvalidToken(tok, FUNC_ARG_PUBLIC);
        return pcSetCursorRetFalse(pc, startCursor);
    }
    struct token mutTok;
    if (tryParseToken(pc, TOKEN_MUT, &mutTok)) mut = true;
    if (!parseType(pc, &t, MODE_FORCE)) return pcSetCursorRetFalse(pc, startCursor);
    *v = VarInit(tok.str, t, tok);
    v->mut = mut;
    return true;
}

struct list forceParseFuncArgs(ParserCtx pc) {
    struct token tok;
    forceParseToken(pc, TOKEN_PAREN_OPEN, &tok, NULL);
    struct list args = ListInit(sizeof(struct var));
    if (tryParseToken(pc, TOKEN_PAREN_CLOSE, &tok)) return args;
    struct var var;
    if (!forceParseFuncArg(pc, &var)) {skipUntilParenCloses(pc); return args;}
    ListAdd(&args, &var);
    while(tryParseToken(pc, TOKEN_COMMA, &tok)) {
        if (!forceParseFuncArg(pc, &var)) {
            skipUntilParenCloses(pc);
            return args;
        }
        if (VarGetList(&args, var.name)) SyntaxErrorInvalidToken(var.tok, VAR_NAME_IN_USE);
        ListAdd(&args, &var);
    }
    forceParseTokenSkipUntilFound(pc, TOKEN_PAREN_CLOSE, NULL);
    return args;
}

struct list forceParseFuncRets(ParserCtx pc) {
    struct token tok;
    forceParseToken(pc, TOKEN_PAREN_OPEN, &tok, NULL);
    struct list rets = ListInit(sizeof(struct type));
    if (tryParseToken(pc, TOKEN_PAREN_CLOSE, &tok)) return rets;
    struct type type = (struct type){0};
    if (!forceParseTypeDeclaration(pc, &type, MODE_TRY)) {skipUntilParenCloses(pc); return rets;}
    ListAdd(&rets, &type);
    while(tryParseToken(pc, TOKEN_COMMA, &tok)) {
        if (!forceParseTypeDeclaration(pc, &type, MODE_FORCE)) {
            skipUntilCurlyCloses(pc);
            return rets;
        }
        ListAdd(&rets, &type);
    }
    forceParseTokenSkipUntilFound(pc, TOKEN_PAREN_CLOSE, NULL);
    return rets;
}

struct type forceParseTypeDefFunc(ParserCtx pc) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_FUNC;
    t.vars = forceParseFuncArgs(pc);
    t.rets = forceParseFuncRets(pc);
    return t;
}

void forceParseTypeDef(ParserCtx pc) {
    struct token nameTok;
    if (!forceParseToken(pc, TOKEN_IDENTIFIER, &nameTok, EXPECTED_TYPE_NAME)) return;
    struct token defTok = TokenFeed(pc->tc);
    struct type t = (struct type){0};
    switch(defTok.type) {
        case TOKEN_IDENTIFIER:
            TokenUnfeed(pc->tc); forceParseTypeDefType(pc, &t); t = TypeFromType(nameTok.str, nameTok, t); break;
        case TOKEN_STRUCT: t = TypeFromType(nameTok.str, nameTok, forceParseTypeDefStruct(pc)); break;
        case TOKEN_VOCAB: t = TypeFromType(nameTok.str, nameTok, forceParseTypeDefVocab(pc)); break;
        case TOKEN_FUNC: t = TypeFromType(nameTok.str, nameTok, forceParseTypeDefFunc(pc)); break;
        default: SyntaxErrorInvalidToken(defTok, EXPECTED_TYPE_DEFINITION); return;
    }
    pcUpdateOrAddType(pc, t);
}

int pcId = 0;

ParserCtx parserCtxNew(struct str fileName, struct list* ctxs) {
    struct parserContext pc = (struct parserContext){0};
    pc.id = pcId;
    pcId++;
    pc.jumps = ListInit(sizeof(int));
    pc.aliases = ListInit(sizeof(struct pcAlias));
    pc.types = ListInit(sizeof(struct type));
    pc.vars = ListInit(sizeof(struct var));
    pc.tc = TokenizeFile(fileName);
    pc.ctxs = ctxs;
    addVanillaTypes(&pc);
    ListAdd(ctxs, &pc);
    return ListGetIdx(ctxs, ctxs->len -1);
}

ParserCtx parseImport(ParserCtx parentCtx) {
    struct token tok;
    ParserCtx importCtx;
    forceParseToken(parentCtx, TOKEN_STRING_LITERAL, &tok, EXPECTED_FILE_NAME);
    struct str fileName = StrSlice(tok.str, 1, tok.str.len -1);
    forceParseToken(parentCtx, TOKEN_IDENTIFIER, &tok, EXPECTED_FILE_ALIAS);

    if ((importCtx = pcGetList(parentCtx->ctxs, fileName)));
    else importCtx = parserCtxNew(fileName, parentCtx->ctxs);
    struct pcAlias alias;
    alias.name = tok.str;
    alias.pc = importCtx;
    ListAdd(&parentCtx->aliases, &alias);
    return importCtx;
}

struct type StructPlaceholder(struct token nameTok) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_STRUCT;
    t.name = nameTok.str;
    t.tok = nameTok;
    t.placeholder = true;
    t.vars = ListInit(sizeof(struct var));
    return t;
}

void parseStructPlaceholder(ParserCtx pc) {
    struct token nameTok;
    struct token tok;
    if (!tryParseToken(pc, TOKEN_IDENTIFIER, &nameTok)) return;
    if (!tryParseToken(pc, TOKEN_STRUCT, &tok)) return;
    pcAddType(pc, StructPlaceholder(nameTok));
}

struct var forceParseFuncHeader(ParserCtx pc) {
    struct token tok;
    forceParseToken(pc, TOKEN_IDENTIFIER, &tok, NULL);
    struct type t = forceParseTypeDefFunc(pc);
    t.tok = tok;
    struct var v = VarInit(tok.str, t, tok);
    return v;
}

void forceParseFuncPrototype(ParserCtx pc) {
    struct var v = forceParseFuncHeader(pc);
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
        int cursor;
        switch (tok.type) {
            case TOKEN_TYPE: forceParseTypeDef(pc); cursor = TokenGetCursor(pc->tc); ListAdd(&pc->jumps, &cursor); break;
            case TOKEN_FUNC: forceParseFuncPrototype(pc); cursor = TokenGetCursor(pc->tc); ListAdd(&pc->jumps, &cursor); break;
            case TOKEN_IMPORT: parseFileSecondPass(parseImport(pc)); break;
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
    forceParseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok, NULL);
    if (!cond) skipUntilCurlyCloses(pc);
}

void parseGlobalStatement(ParserCtx pc) {
    (void)pc; //TODO
}

struct operand* varOpBinary(struct var* v, struct operand* op, enum operation opType) {
    if (!v->mayBeInitialized) SyntaxErrorInvalidToken(v->tok, VAR_NOT_INITIALIZED);
    return OperandBinary(OperandReadVar(v), op, opType);
}

bool parseAssignmentStatement(ParserCtx pc, struct statement* s, struct var* assignV) {
    int startCursor = pcGetCursor(pc);
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
    struct operand* op = parseExpr(pc, MODE_TRY);
    if (!op) return pcSetCursorRetFalse(pc, startCursor);
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
        default: SyntaxErrorInvalidToken(tok, EXPECTED_ASSIGNMENT); return pcSetCursorRetFalse(pc, startCursor);
    }
    assignV->mayBeInitialized = true;
    if (!op) return pcSetCursorRetFalse(pc, startCursor);
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
    struct operand* op = parseExpr(pc, MODE_TRY);
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
struct list parseCodeBlock(ParserCtx pc) {
    struct list sl = ListInit(sizeof(struct statement));
    struct token tok;
    if (!forceParseToken(pc, TOKEN_CURLY_BRACKET_OPEN, &tok, NULL)) return sl;
    if (tryParseToken(pc, TOKEN_CURLY_BRACKET_CLOSE, &tok)) return sl;
    struct statement s;
    while (parseStatement(pc, &s)) {
        ListAdd(&sl, &s);
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
    s->condOp = forceParseBoolExpr(pc);
    s->codeBlock = parseCodeBlock(pc);
}

bool parseForStatement(ParserCtx pc, struct statement* s) {
    s->assignVar = VarAlloc();
    if (parseVarDeclaration(pc, s->assignVar, MODE_TRY)) {
        s->stackAllocation = StatementStackAllocation(s->assignVar);
        s->assignment = StatementEmpty();
        if (!parseAssignmentStatement(pc, s->assignment, s->assignVar)) return parseControlFlowStatementErrorHandling(pc);
        ListAdd(&pc->vars, s->assignVar);
    }
    struct token tok;
    if (!forceParseToken(pc, TOKEN_COMMA, &tok, NULL)) return parseControlFlowStatementErrorHandling(pc);
    s->condOp = parseExpr(pc, MODE_TRY);
    if (!s->condOp) return parseControlFlowStatementErrorHandling(pc);
    if (!forceParseToken(pc, TOKEN_COMMA, &tok, NULL)) return parseControlFlowStatementErrorHandling(pc);
    s->forEveryAssignment = StatementEmpty();
    s->forEveryAssignment->assignVar = VarAlloc();
    if (!parseVar(pc, s->forEveryAssignment->assignVar, MODE_FORCE)) return parseControlFlowStatementErrorHandling(pc);
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
    if (parseVar(pc, &v, MODE_TRY)) return parseAssignmentStatement(pc, s, &v);
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
    struct list operands = ListInit(sizeof(struct operand*));
    struct list operations = ListInit(sizeof(enum operation));
    struct operand* op;
    struct token tok;
    if (!(op = tryParseOperand(pc))) return NULL;
    ListAdd(&operands, &op);
    enum operation operation;
    while (tryParseBinaryOperation(pc, &operation)) {
        if (!(op = tryParseOperand(pc))) {
            SyntaxErrorInvalidToken(TokenPeek(pc->tc), EXPECTED_OPERAND);
            ListDestroy(&operands);
            ListDestroy(&operations);
            TokenSetCursor(pc->tc, startCursor);
            return NULL;
        }
        ListAdd(&operations, &operation);
        ListAdd(&operands, &op);
    }
    if (insideParen && !forceParseToken(pc, TOKEN_PAREN_CLOSE, &tok, EXPECTED_CLOSING_PAREN)) {
        TokenSetCursor(pc->tc, startCursor);
        return NULL;
    }
    op = OperandEvalExpr(operands, operations);
    ListDestroy(&operands);
    ListDestroy(&operations);
    if (!op) TokenSetCursor(pc->tc, startCursor);
    return op;
}

struct operand* parseExpr(ParserCtx pc, enum parsingMode mode) {
    struct operand* op = tryParseExprInternal(pc, false);
    if (!op && mode == MODE_FORCE) SyntaxErrorInvalidToken(TokenPeek(pc->tc), EXPECTED_EXPRESSION);
    return op;
}

void parseFileThirdPass(ParserCtx pc) {
    while (TokenPeek(pc->tc).type != TOKEN_EOF) {
        struct token tok = TokenFeed(pc->tc);
        struct var func;
        switch (tok.type) {
            case TOKEN_IMPORT: parseFileThirdPass(parseImport(pc)); break;
            case TOKEN_TYPE: TokenSetCursor(pc->tc, *(int*)ListFeed(&pc->jumps)); break;
            case TOKEN_IDENTIFIER: parseGlobalStatement(pc); break;
            case TOKEN_FUNC:
                                   if (!parseVar(pc, &func, MODE_FORCE)) ErrorBugFound();
                                   TokenSetCursor(pc->tc, *(int*)ListFeed(&pc->jumps));
                                   func.origin->codeBlock = parseCodeBlock(pc);
                                   break;

            case TOKEN_COMPIF: parseCompIf(pc); break;
            default: break;
        }
    }
}

void resetTokenCtxs(struct list* ctxs) {
    for (int i = 0; i < ctxs->len; i++) {
        TokenReset(((ParserCtx)ListGetIdx(ctxs, i))->tc);
        ListClear(&((ParserCtx)ListGetIdx(ctxs, i))->aliases);
        ListResetCursor(&((ParserCtx)ListGetIdx(ctxs, i))->jumps);
    }
}

ParserCtx ParseFile(char* fileName) {
    struct list ctxs = ListInit(sizeof(struct parserContext));
    ParserCtx pc = parserCtxNew(StrFromStackCStr(fileName), &ctxs);
    parseFileFirstPass(pc);

    resetTokenCtxs(&ctxs);
    parseFileSecondPass(pc);

    resetTokenCtxs(&ctxs);
    parseFileThirdPass(pc);
    return pc;
}
