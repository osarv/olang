#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "parser.h"
#include "statement.h"
#include "type.h"
#include "error.h"
#include "var.h"
#include "util.h"
#include "list.h"

enum parsingMode {
    MODE_FORCE,
    MODE_TRY
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
    TokenCtx tc; //contains fileName
    struct list jumps;
    struct list aliases; //private for each parser context
    struct list hiddenAliases; //hidden until encountered during a parser pass; to prevent access to tools not yet defined
    struct list types;
    struct list errors;
    struct list vars;
    struct list globStmtns;
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

void pcAddVar(ParserCtx pc, struct var v) {
    if (VarGetList(&pc->vars, v.name)) SyntaxErrorInvalidToken(v.tok, VAR_NAME_IN_USE);
    else ListAdd(&pc->vars, &v);
}

void pcAddError(ParserCtx pc, struct error e) {
    if (ErrorGetList(&pc->errors, e.name)) SyntaxErrorInvalidToken(e.tok, VAR_NAME_IN_USE);
    else ListAdd(&pc->errors, &e);
}

void pcAddVarSetOrigin(ParserCtx pc, struct var v) {
    if (VarGetList(&pc->vars, v.name)) SyntaxErrorInvalidToken(v.tok, VAR_NAME_IN_USE);
    else {
        ListAdd(&pc->vars, &v);
        struct var* vPtr = ListGetIdx(&pc->vars, pc->vars.len - 1);
        vPtr->origin = vPtr;
    }
}

void pcAddType(ParserCtx pc, struct type t) {
    t.owner = pc;
    if (TypeGetList(&pc->types, t.name)) SyntaxErrorInvalidToken(t.tok, TYPE_NAME_IN_USE);
    ListAdd(&pc->types, &t);
}

void pcUpdateOrAddType(ParserCtx pc, struct type t) {
    struct type* tmpTypePtr;
    if (!(tmpTypePtr = TypeGetList(&pc->types, t.name))) pcAddType(pc, t);
    else {
        t.owner = pc;
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

bool parseToken(ParserCtx pc, enum tokenType type, struct token* tokPtr, enum parsingMode mode, char* errMsg) {
    if (mode == MODE_FORCE && !errMsg) ErrorBugFound();
    *tokPtr = TokenFeed(pc->tc);
    if (tokPtr->type == type) return true;
    TokenUnfeed(pc->tc);
    if (mode == MODE_FORCE) SyntaxErrorInvalidToken(*tokPtr, errMsg);
    return false;
}

bool forceParseToken(ParserCtx pc, enum tokenType type, struct token* tokPtr, char* errMsg) {
    return parseToken(pc, type, tokPtr, MODE_FORCE, errMsg);
}

bool forceParseSemicolon(ParserCtx pc) {
    struct token tok;
    return parseToken(pc, TOKEN_SEMICOLON, &tok, MODE_FORCE, EXPECTED_SEMICOLON);
}

bool forceParseCurlyOpen(ParserCtx pc) {
    struct token tok;
    return parseToken(pc, TOKEN_CURLY_OPEN, &tok, MODE_FORCE, EXPECTED_CURLY_OPEN);
}

bool forceParseCurlyClose(ParserCtx pc) {
    struct token tok;
    return parseToken(pc, TOKEN_CURLY_CLOSE, &tok, MODE_FORCE, EXPECTED_CURLY_CLOSE);
}

void forceParseCurlyCloseOrSkipPast(ParserCtx pc) {
    struct token tok;
    if (!parseToken(pc, TOKEN_CURLY_CLOSE, &tok, MODE_FORCE, EXPECTED_CURLY_CLOSE)) {
        TokenFeedUntilAfter(pc->tc, TOKEN_CURLY_CLOSE);
    }
}

bool forceParseParenOpen(ParserCtx pc) {
    struct token tok;
    return parseToken(pc, TOKEN_PAREN_OPEN, &tok, MODE_FORCE, EXPECTED_PAREN_OPEN);
}

bool forceParseParenClose(ParserCtx pc) {
    struct token tok;
    return parseToken(pc, TOKEN_PAREN_CLOSE, &tok, MODE_FORCE, EXPECTED_PAREN_CLOSE);
}

bool tryParseToken(ParserCtx pc, enum tokenType type, struct token* tokPtr) {
    return parseToken(pc, type, tokPtr, MODE_TRY, NULL);
}

bool tryParseEOF(ParserCtx pc) {
    struct token tok;
    return parseToken(pc, TOKEN_EOF, &tok, MODE_TRY, NULL);
}

bool tryParseComma(ParserCtx pc) {
    struct token tok;
    return parseToken(pc, TOKEN_COMMA, &tok, MODE_TRY, NULL);
}

bool tryParseSemiColon(ParserCtx pc) {
    struct token tok;
    return parseToken(pc, TOKEN_SEMICOLON, &tok, MODE_TRY, NULL);
}

bool tryParseCurlyClose(ParserCtx pc) {
    struct token tok;
    return parseToken(pc, TOKEN_CURLY_CLOSE, &tok, MODE_TRY, NULL);
}

void skipPastSemiColonOrUntilCurlyClose(ParserCtx pc) {
    struct token tok;
    do tok = TokenFeed(pc->tc);
    while (tok.type != TOKEN_SEMICOLON && tok.type != TOKEN_CURLY_CLOSE && tok.type != TOKEN_EOF);
    if (tok.type == TOKEN_CURLY_CLOSE) TokenUnfeed(pc->tc);
}

void skipPastSemiColon(ParserCtx pc) {
    TokenFeedUntilAfter(pc->tc, TOKEN_SEMICOLON);
}

bool forceParseSemiColonOrSkipPast(ParserCtx pc) {
    if (forceParseSemicolon(pc)) return true;
    skipPastSemiColon(pc);
    return false;
}

bool forceParseSemiColonOrSkipPastOrUntilCurlyClose(ParserCtx pc) {
    if (forceParseSemicolon(pc)) return true;
    skipPastSemiColonOrUntilCurlyClose(pc);
    return false;
}

void skipUntilSemiColon(ParserCtx pc) {
    TokenFeedUntilBefore(pc->tc, TOKEN_SEMICOLON);
}

void skipUntilCommaOrCurlyClose(ParserCtx pc) {
    struct token tok;
    do tok = TokenFeed(pc->tc);
    while (tok.type != TOKEN_EOF && tok.type != TOKEN_COMMA && tok.type != TOKEN_CURLY_CLOSE);
    TokenUnfeed(pc->tc);
}

void skipUntilSemiColonOrCurlyOpen(ParserCtx pc) {
    struct token tok;
    do tok = TokenFeed(pc->tc);
    while (tok.type != TOKEN_EOF && tok.type != TOKEN_SEMICOLON && tok.type != TOKEN_CURLY_OPEN);
    TokenUnfeed(pc->tc);
}

void skipUntilCommaOrParenClose(ParserCtx pc) {
    struct token tok;
    do tok = TokenFeed(pc->tc);
    while (tok.type != TOKEN_EOF && tok.type != TOKEN_COMMA && tok.type != TOKEN_PAREN_CLOSE);
    TokenUnfeed(pc->tc);
}

void skipUntilCommaOrQuestionMark(ParserCtx pc) {
    struct token tok;
    do tok = TokenFeed(pc->tc);
    while (tok.type != TOKEN_EOF && tok.type != TOKEN_COMMA && tok.type != TOKEN_QUESTIONMARK);
    TokenUnfeed(pc->tc);
}

void skipPastCommaOrCurlyClose(ParserCtx pc) {
    struct token tok;
    do tok = TokenFeed(pc->tc);
    while (tok.type != TOKEN_EOF && tok.type != TOKEN_COMMA && tok.type != TOKEN_CURLY_CLOSE);
}

void skipPastCurlyClosesNested(ParserCtx pc) {
    struct token tok = TokenFeed(pc->tc);
    int nOpen = 1;
    while (true) {
        if (tok.type == TOKEN_EOF) return;
        if (tok.type == TOKEN_CURLY_OPEN) nOpen++;
        else if (tok.type == TOKEN_CURLY_CLOSE) {
            nOpen--;
            if (nOpen <= 0) break;
        }
        tok = TokenFeed(pc->tc);
    }
}

void skipUntilCurlyClosesNested(ParserCtx pc) {
    skipPastCurlyClosesNested(pc);
    TokenUnfeed(pc->tc);
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
    if (!tryParseToken(pc, TOKEN_SQUARE_OPEN, &tok)) return true;
    t->arrLen = forceParseIntExpr(pc);
    if (!t->arrLen) return pcSetCursorRetFalse(pc, startCursor);
    forceParseToken(pc, TOKEN_SQUARE_CLOSE, &tok, EXPECTED_SQUARE_CLOSE);
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
    forceParseToken(pc, TOKEN_DOT, &tok, EXPECTED_DOT);
    return alias->pc;
}

void tryParseTypeArrayRefLevels(ParserCtx pc, struct type* t) {
    struct token tok;
    if (!tryParseToken(pc, TOKEN_SQUARE_OPEN, &tok)) return;
    if (!tryParseToken(pc, TOKEN_SQUARE_CLOSE, &tok)) {
        TokenUnfeed(pc->tc);
        return;
    }
    t->arrLvls++;
    while (tryParseToken(pc, TOKEN_SQUARE_OPEN, &tok)) {
        if (!tryParseToken(pc, TOKEN_SQUARE_CLOSE, &tok)) {
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
    *t = (struct type){0};
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
            forceParseToken(pc, TOKEN_IDENTIFIER, &tok, UNKNOWN_STRUCT_MEMBER);
            struct var* vMember;
            if ((vMember = VarGetList(&v->type.vars, tok.str))) *v = *vMember;
            v->tok = TokenMerge(v->tok, tok);
        }
        else if (v->type.bType == BASETYPE_ARRAY && tryParseToken(pc, TOKEN_SQUARE_OPEN, &tok)) {
            forceParseIntExpr(pc);
            forceParseToken(pc, TOKEN_SQUARE_CLOSE, &tok, EXPECTED_SQUARE_CLOSE);
            v->tok = TokenMerge(v->tok, tok);
            v->type.arrLvls--;
            if (v->type.arrLvls == 0) v->type.bType = v->type.arrBase;
        }
        else break;
    }
}

bool parseVar(ParserCtx pc, struct var* v, enum parsingMode mode) {
    *v = (struct var){0};
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
    if (v.origin->mayBeInitialized) return OperandReadVar(v);
    SyntaxErrorInvalidToken(v.tok, VAR_NOT_INITIALIZED);
    return pcSetCursorRetNull(pc, startCursor);
}

struct operand* tryParseOperand(ParserCtx pc);

struct operand* tryParseTypeCast(ParserCtx pc) {
    int startCursor = pcGetCursor(pc);
    struct type t;
    struct token tok;
    if (!parseType(pc, &t, MODE_TRY)) return pcSetCursorRetNull(pc, startCursor);
    if (!forceParseParenOpen(pc)) return pcSetCursorRetNull(pc, startCursor);
    struct operand* op = tryParseOperand(pc);
    if (!op) return pcSetCursorRetNull(pc, startCursor);
    if (!forceParseParenClose(pc)) return pcSetCursorRetNull(pc, startCursor);
    op = OperandTypeCast(op, t, TokenMerge(t.tok, tok));
    if (!op) pcSetCursor(pc, startCursor);
    return op;
}

struct type forceParseTypeDefType(ParserCtx pc) {
    struct type t = (struct type){0};
    if (!parseType(pc, &t, MODE_FORCE)) {skipUntilSemiColon(pc); return t;}
    if (t.placeholder) {
        SyntaxErrorInvalidToken(t.tok, STRUCT_NOT_YET_DEFINED);
        skipUntilSemiColon(pc);
    }
    forceParseSemiColonOrSkipPast(pc);
    return t;
}

bool parseTypeDeclaration(ParserCtx pc, struct type* t, enum parsingMode mode) {
    int startCursor = pcGetCursor(pc);
    if (!parseType(pc, t, mode)) return false;
    if (t->bType == BASETYPE_STRUCT) {
        struct token tok;
        if (tryParseToken(pc, TOKEN_CURLY_OPEN, &tok)) {
            t->structMAlloc = true;
            forceParseToken(pc, TOKEN_CURLY_CLOSE, &tok, EXPECTED_CURLY_CLOSE);
            t->tok = TokenMerge(t->tok, tok);
        }
    }
    if (!tryParseArrayDeclaration(pc, t)) return pcSetCursorRetFalse(pc, startCursor);
    return true;
}

bool parseVarDecl(ParserCtx pc, struct var* v, enum parsingMode mode) {
    int startCursor = TokenGetCursor(pc->tc);
    struct type t;
    struct token tok;
    if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, mode, EXPECTED_VAR_NAME)) return false;
    struct token mutTok;
    bool mut = tryParseToken(pc, TOKEN_MUT, &mutTok);
    if (!parseTypeDeclaration(pc, &t, mode)) return pcSetCursorRetFalse(pc, startCursor);
    v->name = tok.str;
    v->tok = tok;
    v->type = t;
    v->mut = mut;
    pcAddVar(pc, *v);
    return true;
}

bool parseVarDeclarationMutByDefault(ParserCtx pc, struct var* v, enum parsingMode mode) {
    int startCursor = TokenGetCursor(pc->tc);
    struct type t;
    struct token tok;
    if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, mode, EXPECTED_VAR_NAME)) return false;
    if (!parseTypeDeclaration(pc, &t, mode)) return pcSetCursorRetFalse(pc, startCursor);
    v->name = tok.str;
    v->tok = tok;
    v->type = t;
    v->mut = true;
    pcAddVar(pc, *v);
    return true;
}

void forceParseStructMember(ParserCtx pc, struct list* members) {
    struct var memb;
    bool ret = parseVarDeclarationMutByDefault(pc, &memb, MODE_FORCE);
    if (!ret) {skipPastCommaOrCurlyClose(pc); return;}
    if (memb.type.structMAlloc == true && memb.type.placeholder) {
        SyntaxErrorInvalidToken(memb.type.tok, STRUCT_NOT_YET_DEFINED);
        return;
    }
    if (VarGetList(members, memb.name)) SyntaxErrorInvalidToken(memb.tok, VAR_NAME_IN_USE);
    else ListAdd(members, &memb);
}

struct list forceParseStructBody(ParserCtx pc) {
    forceParseCurlyOpen(pc);
    struct list members = ListInit(sizeof(struct var));
    forceParseStructMember(pc, &members);
    while(tryParseComma(pc)) forceParseStructMember(pc, &members);
    forceParseCurlyCloseOrSkipPast(pc);
    return members;
}

struct type forceParseTypeDefStruct(ParserCtx pc) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_STRUCT;
    t.vars = forceParseStructBody(pc);
    return t;
}

void forceParseVocabWord(ParserCtx pc, struct list* words) {
    struct token word;
    bool ret = forceParseToken(pc, TOKEN_IDENTIFIER, &word, EXPECTED_VOCAB_WORD);
    if (!ret) {skipUntilCommaOrCurlyClose(pc); return;}
    if (StrGetList(words, word.str)) SyntaxErrorInvalidToken(word, VOCAB_WORD_ALREADY_IN_USE);
    else ListAdd(words, &word.str);
}

struct list forceParseVocabBody(ParserCtx pc) {
    forceParseCurlyOpen(pc);
    struct list words = ListInit(sizeof(struct str));
    forceParseVocabWord(pc, &words);
    while(tryParseComma(pc)) forceParseVocabWord(pc, &words);
    forceParseCurlyCloseOrSkipPast(pc);
    return words;
}

struct type forceParseTypeDefVocab(ParserCtx pc) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_VOCAB;
    t.words = forceParseVocabBody(pc);
    return t;
}

void forceParseFuncArg(ParserCtx pc, struct list* args) {
    struct var arg;
    struct token tok;
    bool mut = false;
    if (!forceParseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_VAR_NAME)) {skipUntilCommaOrParenClose(pc); return;}
    if (isPublic(tok.str)) {
        SyntaxErrorInvalidToken(tok, FUNC_ARG_PUBLIC);
        skipUntilCommaOrParenClose(pc);
        return;
    }
    struct token mutTok;
    if (tryParseToken(pc, TOKEN_MUT, &mutTok)) mut = true;
    if (!parseType(pc, &arg.type, MODE_FORCE)) {skipUntilCommaOrParenClose(pc); return;}
    arg.name = tok.str;
    arg.tok = tok;
    arg.mut = mut;
    arg.mayBeInitialized = true;
    if (VarGetList(args, arg.name)) SyntaxErrorInvalidToken(arg.tok, VAR_NAME_IN_USE);
    else VarListAddSetOrigin(args, arg);
}

struct list forceParseFuncArgs(ParserCtx pc) {
    struct token tok;
    forceParseParenOpen(pc);
    struct list args = ListInit(sizeof(struct var));
    if (tryParseToken(pc, TOKEN_PAREN_CLOSE, &tok)) return args;
    forceParseFuncArg(pc, &args);
    while(tryParseToken(pc, TOKEN_COMMA, &tok)) forceParseFuncArg(pc, &args);
    forceParseParenClose(pc);
    return args;
}

bool parseError(ParserCtx pc, struct error* err, enum parsingMode mode) {
    *err = (struct error){0};
    int startCursor = pcGetCursor(pc);
    ParserCtx source = tryParseAlias(pc);
    struct token tok;
    if (!parseToken(pc, TOKEN_IDENTIFIER, &tok, mode, EXPECTED_ERROR)) return pcSetCursorRetFalse(pc, startCursor);
    struct error* errPtr = ErrorGetList(&source->errors, tok.str);
    if (!errPtr) {SyntaxErrorInvalidToken(tok, UNKNOWN_ERROR); return pcSetCursorRetFalse(pc, startCursor);}
    *err = *errPtr;
    err->tok = tok;
    return true;
}

void forceParseFuncError(ParserCtx pc, struct list* errors) {
    struct error err;
    if (!parseError(pc, &err, MODE_FORCE)) {skipUntilCommaOrQuestionMark(pc); return;}
    if (ErrorGetList(errors, err.name)) SyntaxErrorInvalidToken(err.tok, DUPLICATE_ERROR);
    else ListAdd(errors, &err);
}

bool tryFindQuestionMarkBeforeCurlyOpenOrSemiColon(ParserCtx pc) {
    int startCursor = pcGetCursor(pc);
    struct token tok = TokenFeed(pc->tc);
    bool found = false;
    while (tok.type != TOKEN_CURLY_OPEN && tok.type != TOKEN_SEMICOLON && tok.type != TOKEN_EOF) {
        if (tok.type == TOKEN_QUESTIONMARK) {
            found = true;
            break;
        }
        tok = TokenFeed(pc->tc);
    }
    pcSetCursor(pc, startCursor);
    return found;
}

struct list tryParseFuncErrors(ParserCtx pc) {
    struct list errors = ListInit(sizeof(struct error));
    if (!tryFindQuestionMarkBeforeCurlyOpenOrSemiColon(pc)) return errors;
    struct token tok;
    if (tryParseToken(pc, TOKEN_QUESTIONMARK, &tok)) return errors;
    forceParseFuncError(pc, &errors);
    while(tryParseToken(pc, TOKEN_ADD, &tok)) forceParseFuncError(pc, &errors);
    forceParseToken(pc, TOKEN_QUESTIONMARK, &tok, EXPECTED_QUESTIONMARK);
    return errors;
}

struct list tryParseFuncRetType(ParserCtx pc) {
    struct list retType = ListInit(sizeof(struct type));
    struct type t;
    if (parseType(pc, &t, MODE_TRY)) ListAdd(&retType, &t);
    return retType;
}

struct type forceParseTypeDefFunc(ParserCtx pc) {
    struct type t = (struct type){0};
    t.bType = BASETYPE_FUNC;
    t.vars = forceParseFuncArgs(pc);
    t.errors = tryParseFuncErrors(pc);
    t.retType = tryParseFuncRetType(pc);
    return t;
}

void forceParseTypeDef(ParserCtx pc) {
    struct token nameTok;
    if (!forceParseToken(pc, TOKEN_IDENTIFIER, &nameTok, EXPECTED_TYPE_NAME)) {skipPastSemiColon(pc); return;}
    struct token defTok = TokenFeed(pc->tc);
    struct type t;
    switch(defTok.type) {
        case TOKEN_IDENTIFIER: TokenUnfeed(pc->tc); t = TypeFromType(nameTok.str, nameTok, forceParseTypeDefType(pc)); break;
        case TOKEN_STRUCT: t = TypeFromType(nameTok.str, nameTok, forceParseTypeDefStruct(pc)); break;
        case TOKEN_VOCAB: t = TypeFromType(nameTok.str, nameTok, forceParseTypeDefVocab(pc)); break;
        case TOKEN_FUNC: t = TypeFromType(nameTok.str, nameTok, forceParseTypeDefFunc(pc)); break;
        default: SyntaxErrorInvalidToken(defTok, EXPECTED_TYPE_DEFINITION);
    }
    pcUpdateOrAddType(pc, t);
}

void forceParseErrorWord(ParserCtx pc, struct list* words) {
    struct token word;
    bool ret = forceParseToken(pc, TOKEN_IDENTIFIER, &word, EXPECTED_ERROR_WORD);
    if (!ret) {skipUntilCommaOrCurlyClose(pc); return;}
    if (StrGetList(words, word.str)) SyntaxErrorInvalidToken(word, ERROR_WORD_ALREADY_IN_USE);
    else ListAdd(words, &word.str);
}

struct list forceParseErrorBody(ParserCtx pc) {
    forceParseCurlyOpen(pc);
    struct list words = ListInit(sizeof(struct str));
    forceParseErrorWord(pc, &words);
    while(tryParseComma(pc)) forceParseErrorWord(pc, &words);
    forceParseCurlyCloseOrSkipPast(pc);
    return words;
}

void forceParseErrorDef(ParserCtx pc) {
    struct token nameTok;
    if (!forceParseToken(pc, TOKEN_IDENTIFIER, &nameTok, EXPECTED_ERROR_NAME)) return;
    struct error e;
    e.name = nameTok.str;
    e.tok = nameTok;
    e.words = forceParseErrorBody(pc);
    pcAddError(pc, e);
}

ParserCtx parserCtxNew(struct str fileName, struct list* ctxs) {
    struct parserContext pc = (struct parserContext){0};
    pc.jumps = ListInit(sizeof(int));
    pc.aliases = ListInit(sizeof(struct pcAlias));
    pc.hiddenAliases = ListInit(sizeof(struct pcAlias));
    pc.types = ListInit(sizeof(struct type));
    pc.errors = ListInit(sizeof(struct error));
    pc.vars = ListInit(sizeof(struct var));
    pc.globStmtns = ListInit(sizeof(struct statement));
    pc.tc = TokenizeFile(fileName);
    pc.ctxs = ctxs;
    addVanillaTypes(&pc);
    ListAdd(ctxs, &pc);
    return ListGetIdx(ctxs, ctxs->len -1);
}

ParserCtx parseImport(ParserCtx parentCtx) {
    struct token aliasTok;
    struct token fileNameTok;
    forceParseToken(parentCtx, TOKEN_IDENTIFIER, &aliasTok, EXPECTED_FILE_ALIAS);
    forceParseToken(parentCtx, TOKEN_STRING_LITERAL, &fileNameTok, EXPECTED_FILE_NAME);
    forceParseSemiColonOrSkipPast(parentCtx);
    struct str fileName = StrSlice(fileNameTok.str, 1, fileNameTok.str.len -1);

    ParserCtx importCtx;
    if ((importCtx = pcGetList(parentCtx->ctxs, fileName)));
    else importCtx = parserCtxNew(fileName, parentCtx->ctxs);
    struct pcAlias alias;
    alias.name = aliasTok.str;
    alias.pc = importCtx;
    ListAdd(&parentCtx->aliases, &alias);
    ListAdd(&parentCtx->hiddenAliases, &alias);
    return importCtx;
}

ParserCtx retrieveImport(ParserCtx parentCtx) {
    skipUntilSemiColon(parentCtx);
    struct pcAlias* alias = ListFeed(&parentCtx->hiddenAliases);
    if (!alias) ErrorBugFound();
    ListAdd(&parentCtx->aliases, alias);
    return alias->pc;
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
    forceParseToken(pc, TOKEN_IDENTIFIER, &tok, EXPECTED_FUNC_NAME);
    struct type t = forceParseTypeDefFunc(pc);
    t.tok = tok;
    struct var func = (struct var){0};
    func.name = tok.str;
    func.tok = tok;
    func.type = t;
    func.mut = false;
    return func;
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
            case TOKEN_ERROR: forceParseErrorDef(pc); cursor = TokenGetCursor(pc->tc); ListAdd(&pc->jumps, &cursor); break;
            case TOKEN_FUNC: forceParseFuncPrototype(pc); cursor = TokenGetCursor(pc->tc); ListAdd(&pc->jumps, &cursor); break;
            case TOKEN_IMPORT: parseFileSecondPass(retrieveImport(pc)); break;
            default: break;
        }
    }
}

bool parseCompCondition(ParserCtx pc) {
    struct operand* expr = forceParseBoolExpr(pc);
    if (!expr->isLiteral) SyntaxErrorInvalidToken(expr->tok, EXPECTED_LITERAL_EXPR);
    return expr->intLiteralVal;
}

void parseCompIf(ParserCtx pc) {
    bool cond = parseCompCondition(pc);
    struct token tok;
    forceParseToken(pc, TOKEN_CURLY_OPEN, &tok, NULL);
    if (!cond) skipPastCurlyClosesNested(pc);
}

void parseVarDeclAndOrAssignmentStatement(ParserCtx pc, struct list* codeBlock, enum parsingMode mode);
void parseGlobalStatement(ParserCtx pc) {
    parseVarDeclAndOrAssignmentStatement(pc, &pc->globStmtns, MODE_FORCE);
}

struct operand* varOpBinary(struct var v, struct operand* op, enum operation opType) {
    if (!v.mayBeInitialized) SyntaxErrorInvalidToken(v.tok, VAR_NOT_INITIALIZED);
    return OperandBinary(OperandReadVar(v), op, opType);
}

bool isAssignmentOperator(enum tokenType type) {
    switch (type) {
        case TOKEN_INCREMENT: return true;
        case TOKEN_DECREMENT: return true;
        case TOKEN_ASSIGNMENT: return true;
        case TOKEN_ASSIGNMENT_ADD: return true;
        case TOKEN_ASSIGNMENT_SUB: return true;
        case TOKEN_ASSIGNMENT_MUL: return true;
        case TOKEN_ASSIGNMENT_DIV: return true;
        case TOKEN_ASSIGNMENT_MODULO: return true;
        case TOKEN_ASSIGNMENT_EQUAL: return true;
        case TOKEN_ASSIGNMENT_NOT_EQUAL: return true;
        case TOKEN_ASSIGNMENT_AND: return true;
        case TOKEN_ASSIGNMENT_OR: return true;
        case TOKEN_ASSIGNMENT_XOR: return true;
        case TOKEN_ASSIGNMENT_BITSHIFT_LEFT: return true;
        case TOKEN_ASSIGNMENT_BITSHIFT_RIGHT: return true;
        case TOKEN_ASSIGNMENT_BITWISE_AND: return true;
        case TOKEN_ASSIGNMENT_BITWISE_OR: return true;
        case TOKEN_ASSIGNMENT_BITWISE_XOR: return true;
        default: return false;
    }
}

bool parseAssignment(ParserCtx pc, struct list* codeBlock, struct var* assignV, enum parsingMode mode) {
    int startCursor = pcGetCursor(pc);
    struct statement s;
    if (!assignV->mut) {
        SyntaxErrorInvalidToken(assignV->tok, VAR_IMMUTABLE);
        skipUntilSemiColon(pc);
        return false;
    }
    assignV->origin->mayBeInitialized = true;
    struct token tok = TokenFeed(pc->tc);
    if (!isAssignmentOperator(tok.type)) {
        if (mode == MODE_FORCE) SyntaxErrorInvalidToken(tok, EXPECTED_ASSIGNMENT_OPERATOR);
        pcSetCursor(pc, startCursor);
        return false;
    }
    if (tok.type == TOKEN_INCREMENT) {
        s.sType = STATEMENT_ASSIGNMENT_INCREMENT;
        s.var = *assignV;
        ListAdd(codeBlock, &s);
        return true;

    }
    else if (tok.type == TOKEN_DECREMENT) {
        s.sType = STATEMENT_ASSIGNMENT_DECREMENT;
        s.var = *assignV;
        ListAdd(codeBlock, &s);
        return true;
    }
    struct operand* op = parseExpr(pc, MODE_FORCE);
    if (!op) return pcSetCursorRetFalse(pc, startCursor);
    switch(tok.type) {
        case TOKEN_ASSIGNMENT: break;
        case TOKEN_ASSIGNMENT_ADD: op = varOpBinary(*assignV, op, OPERATION_ADD); break;
        case TOKEN_ASSIGNMENT_SUB: op = varOpBinary(*assignV, op, OPERATION_SUB); break;
        case TOKEN_ASSIGNMENT_MUL: op = varOpBinary(*assignV, op, OPERATION_MUL); break;
        case TOKEN_ASSIGNMENT_DIV: op = varOpBinary(*assignV, op, OPERATION_DIV); break;
        case TOKEN_ASSIGNMENT_MODULO: op = varOpBinary(*assignV, op, OPERATION_MODULO); break;
        case TOKEN_ASSIGNMENT_EQUAL: op = varOpBinary(*assignV, op, OPERATION_EQUALS); break;
        case TOKEN_ASSIGNMENT_NOT_EQUAL: op = varOpBinary(*assignV, op, OPERATION_NOT_EQUALS); break;
        case TOKEN_ASSIGNMENT_AND: op = varOpBinary(*assignV, op, OPERATION_AND); break;
        case TOKEN_ASSIGNMENT_OR: op = varOpBinary(*assignV, op, OPERATION_OR); break;
        case TOKEN_ASSIGNMENT_XOR: op = varOpBinary(*assignV, op, OPERATION_XOR); break;
        case TOKEN_ASSIGNMENT_BITSHIFT_LEFT: op = varOpBinary(*assignV, op, OPERATION_BITSHIFT_LEFT); break;
        case TOKEN_ASSIGNMENT_BITSHIFT_RIGHT: op = varOpBinary(*assignV, op, OPERATION_ADD); break;
        case TOKEN_ASSIGNMENT_BITWISE_AND: op = varOpBinary(*assignV, op, OPERATION_AND); break;
        case TOKEN_ASSIGNMENT_BITWISE_OR: op = varOpBinary(*assignV, op, OPERATION_OR); break;
        case TOKEN_ASSIGNMENT_BITWISE_XOR: op = varOpBinary(*assignV, op, OPERATION_XOR); break;
        default: SyntaxErrorInvalidToken(tok, EXPECTED_ASSIGNMENT); return pcSetCursorRetFalse(pc, startCursor);
    }
    if (!op) return pcSetCursorRetFalse(pc, startCursor);
    s.sType = STATEMENT_ASSIGNMENT;
    s.var = *assignV;
    s.op = op;
    ListAdd(codeBlock, &s);
    return true;
}

void parseAssignmentWithSemiColon(ParserCtx pc, struct list* codeBlock, struct var* assignV, enum parsingMode mode) {
    if (parseAssignment(pc, codeBlock, assignV, mode))
    forceParseSemiColonOrSkipPast(pc);
}

void parseLocalStatement(ParserCtx pc, struct list* codeBlock, struct type funcT);
struct list parseCodeBlock(ParserCtx pc, struct type funcT) {
    int varLen = pc->vars.len;
    struct list codeBlock = ListInit(sizeof(struct statement));
    struct token tok;
    if (!forceParseToken(pc, TOKEN_CURLY_OPEN, &tok, EXPECTED_CURLY_OPEN)) {skipPastCurlyClosesNested(pc); return codeBlock;}
    if (tryParseToken(pc, TOKEN_CURLY_CLOSE, &tok)) return codeBlock;
    while (!tryParseCurlyClose(pc)) {
        if (tryParseEOF(pc)) {
            SyntaxErrorInvalidToken(TokenPrevious(pc->tc), EXPECTED_CURLY_CLOSE);
            ListRetract(&pc->vars, varLen);
            return codeBlock;
        }
        parseLocalStatement(pc, &codeBlock, funcT);
    }
    ListRetract(&pc->vars, varLen);
    return codeBlock;
}

void parseIfStatement(ParserCtx pc, struct list* codeBlock, struct type funcT) {
    struct statement s;
    s.op = forceParseBoolExpr(pc);
    if (!s.op) TokenFeedUntilBefore(pc->tc, TOKEN_CURLY_OPEN);
    s.codeBlock = parseCodeBlock(pc, funcT);
    ListAdd(codeBlock, &s);
}

void parseVarDeclAndOrAssignmentStatementMutByDefault(ParserCtx pc, struct list* codeBlock, enum parsingMode mode) {
    struct var* v = VarAllocSetOrigin();
    if (parseVarDeclarationMutByDefault(pc, v, MODE_TRY)) {
        struct statement s;
        s.sType = STATEMENT_STACK_ALLOCATION;
        s.var = *v;
        ListAdd(codeBlock, &s);
        parseAssignmentWithSemiColon(pc, codeBlock, v, MODE_TRY);
    }
    else if (parseVar(pc, v, mode)) parseAssignmentWithSemiColon(pc, codeBlock, v, MODE_FORCE);
    else skipPastSemiColon(pc);
}

void parseVarDeclAndOrAssignmentStatement(ParserCtx pc, struct list* codeBlock, enum parsingMode mode) {
    struct var* v = VarAllocSetOrigin();
    if (parseVarDecl(pc, v, MODE_TRY)) {
        struct statement s;
        s.sType = STATEMENT_STACK_ALLOCATION;
        s.var = *v;
        ListAdd(codeBlock, &s);
        parseAssignmentWithSemiColon(pc, codeBlock, v, MODE_TRY);
    }
    else if (parseVar(pc, v, mode)) parseAssignmentWithSemiColon(pc, codeBlock, v, MODE_FORCE);
    else skipPastSemiColon(pc);
}

bool parseForEndOfLoopAssignment(ParserCtx pc, struct list* codeBlock, enum parsingMode mode) {
    struct var v;
    if (parseVar(pc, &v, mode)) return parseAssignment(pc, codeBlock, &v, MODE_FORCE);
    if (mode == MODE_FORCE) SyntaxErrorInvalidToken(TokenPeek(pc->tc), EXPECTED_STATEMENT);
    return false;
}

bool parseForHeader(ParserCtx pc, struct statement* s, struct list* codeBlock) {
    int varLen = pc->vars.len;
    parseVarDeclAndOrAssignmentStatementMutByDefault(pc, codeBlock, MODE_TRY);
    s->op = forceParseBoolExpr(pc);
    if (!s->op) {ListRetract(&pc->vars, varLen); return false;}
    forceParseSemiColonOrSkipPast(pc);
    s->sType = STATEMENT_FOR;
    parseForEndOfLoopAssignment(pc, codeBlock, MODE_TRY);
    return true;
}

void parseForStatement(ParserCtx pc, struct list* codeBlock, struct type funcT) {
    struct statement s = (struct statement){0};
    if (!parseForHeader(pc, &s, codeBlock)) TokenFeedUntilBefore(pc->tc, TOKEN_CURLY_OPEN);
    s.codeBlock = parseCodeBlock(pc, funcT);
    ListAdd(codeBlock, &s);
}

void forceParseMatchCase(ParserCtx pc, struct list* codeBlock, struct type type, struct type funcT, struct list* vocabWords) {
    struct statement s = (struct statement){0};
    struct token tok;
    if (tryParseToken(pc, TOKEN_CASE, &tok)) {
        s.sType = STATEMENT_CASE;
        s.op = parseExpr(pc, MODE_FORCE);
        s.codeBlock = parseCodeBlock(pc, funcT);
        if (!s.op) return;
        if (type.bType == BASETYPE_VOCAB) ListAdd(vocabWords, &s.op->tok);
    }
    else if (tryParseToken(pc, TOKEN_NOMATCH, &tok)) {
        s.sType = STATEMENT_NOMATCH;
        s.codeBlock = parseCodeBlock(pc, funcT);
    }
    else {
        SyntaxErrorInvalidToken(TokenPeek(pc->tc), EXPECTED_CASE_OR_NOMATCH);
        skipUntilCurlyClosesNested(pc);
        return;
    }
    ListAdd(codeBlock, &s);
}

void parseMatchStatement(ParserCtx pc, struct list* codeBlock, struct type funcT) {
    struct statement s = (struct statement){0};
    s.sType = STATEMENT_MATCH;
    s.op = parseExpr(pc, MODE_FORCE);
    if (!forceParseCurlyOpen(pc)) return;
    if (s.op == NULL) {skipPastCurlyClosesNested(pc); return;}
    s.codeBlock = ListInit(sizeof(struct statement));

    struct list vocabWords = ListInit(sizeof(struct str));
    while (!tryParseCurlyClose(pc)) {
        if (tryParseEOF(pc)) {
            SyntaxErrorInvalidToken(TokenPrevious(pc->tc), EXPECTED_CURLY_CLOSE);
            return;
        }
        forceParseMatchCase(pc, codeBlock, s.op->type, funcT, &vocabWords);
    }
    ListAdd(codeBlock, &s);
}

void parseReturnStatement(ParserCtx pc, struct list* codeBlock, struct type funcT) {
    struct statement s = (struct statement){0};
    s.sType = STATEMENT_RETURN;
    if (funcT.retType.len == 0) {
        if (tryParseSemiColon(pc)) {
            ListAdd(codeBlock, &s);
            return;
        }
        SyntaxErrorInvalidToken(TokenPeek(pc->tc), INVALID_RETURN_TYPE);
        return;
    }
    s.op = parseExpr(pc, MODE_FORCE);
    if (!s.op) skipPastSemiColonOrUntilCurlyClose(pc);
    else forceParseSemiColonOrSkipPastOrUntilCurlyClose(pc);
    if (!s.op) return;
    if (!TypeIsSame(s.op->type, *(struct type*)ListGetIdx(&funcT.retType, 0))) {
        SyntaxErrorInvalidToken(s.op->tok, INVALID_RETURN_TYPE);
    }
    else ListAdd(codeBlock, &s);
}

void parseExitStatement(ParserCtx pc, struct list* codeBlock) {
    struct statement s = (struct statement){0};
    s.sType = STATEMENT_EXIT;
    if (tryParseSemiColon(pc)) {ListAdd(codeBlock, &s); return;}
    s.op = forceParseIntExpr(pc);
    if (!s.op) skipPastSemiColonOrUntilCurlyClose(pc);
    else forceParseSemiColonOrSkipPastOrUntilCurlyClose(pc);
    ListAdd(codeBlock, &s);
}

void parseLocalStatement(ParserCtx pc, struct list* codeBlock, struct type funcT) {
    struct token tok = TokenFeed(pc->tc);
    switch (tok.type) {
        case TOKEN_IDENTIFIER:
            TokenUnfeed(pc->tc);
            parseVarDeclAndOrAssignmentStatementMutByDefault(pc, codeBlock, MODE_FORCE);
            break;
        case TOKEN_IF: parseIfStatement(pc, codeBlock, funcT); break;
        case TOKEN_FOR: parseForStatement(pc, codeBlock, funcT); break;
        case TOKEN_MATCH: parseMatchStatement(pc, codeBlock, funcT); break;
        case TOKEN_RETURN: parseReturnStatement(pc, codeBlock, funcT); break;
        case TOKEN_EXIT: parseExitStatement(pc, codeBlock); break;
        default: SyntaxErrorInvalidToken(tok, EXPECTED_STATEMENT); skipPastSemiColon(pc);
    }
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
    if (!(op = tryParseOperand(pc))) return NULL;
    ListAdd(&operands, &op);
    enum operation operation;
    while (tryParseBinaryOperation(pc, &operation)) {
        if (!(op = tryParseOperand(pc))) {
            SyntaxErrorInvalidToken(TokenPeek(pc->tc), EXPECTED_OPERAND);
            ListDestroy(operands);
            ListDestroy(operations);
            TokenSetCursor(pc->tc, startCursor);
            return NULL;
        }
        ListAdd(&operations, &operation);
        ListAdd(&operands, &op);
    }
    if (insideParen && !forceParseParenClose(pc)) {
        TokenSetCursor(pc->tc, startCursor);
        return NULL;
    }
    op = OperandEvalExpr(operands, operations);
    ListDestroy(operands);
    ListDestroy(operations);
    if (!op) TokenSetCursor(pc->tc, startCursor);
    return op;
}

struct operand* parseExpr(ParserCtx pc, enum parsingMode mode) {
    struct operand* op = tryParseExprInternal(pc, false);
    if (!op && mode == MODE_FORCE) {
        int tokStart = TokenGetCursor(pc->tc);
        skipUntilSemiColonOrCurlyOpen(pc);
        SyntaxErrorInvalidToken(TokenFromCursorRange(pc->tc, tokStart, TokenGetCursor(pc->tc)), INVALID_EXPRESSION);
    }
    return op;
}

void parseFuncBody(ParserCtx pc)  {
    struct var func;
    if (!parseVar(pc, &func, MODE_FORCE)) ErrorBugFound();
    TokenSetCursor(pc->tc, *(int*)ListFeed(&pc->jumps));
    int i = 0;
    for (; i < func.type.vars.len; i++) {
        pcAddVar(pc, *(struct var*)ListGetIdx(&func.type.vars, i));
    }
    func.origin->codeBlock = parseCodeBlock(pc, func.type);
    ListRetract(&pc->vars, pc->vars.len - i);
}

void parseFileThirdPass(ParserCtx pc) {
    while (TokenPeek(pc->tc).type != TOKEN_EOF) {
        struct token tok = TokenFeed(pc->tc);
        switch (tok.type) {
            case TOKEN_IMPORT: parseFileThirdPass(retrieveImport(pc)); break;
            case TOKEN_TYPE: TokenSetCursor(pc->tc, *(int*)ListFeed(&pc->jumps)); break;
            case TOKEN_ERROR: TokenSetCursor(pc->tc, *(int*)ListFeed(&pc->jumps)); break;
            case TOKEN_IDENTIFIER: TokenUnfeed(pc->tc); parseGlobalStatement(pc); break;
            case TOKEN_FUNC: parseFuncBody(pc); break;
            case TOKEN_COMPIF: parseCompIf(pc); break;
            default: break;
        }
    }
}

void resetTokenCtxs(struct list* ctxs) {
    for (int i = 0; i < ctxs->len; i++) {
        TokenReset(((ParserCtx)ListGetIdx(ctxs, i))->tc);
        ListClear(&((ParserCtx)ListGetIdx(ctxs, i))->aliases);
        ListResetCursor(&((ParserCtx)ListGetIdx(ctxs, i))->hiddenAliases);
        ListResetCursor(&((ParserCtx)ListGetIdx(ctxs, i))->jumps);
    }
}

bool findMainFunc(ParserCtx pc) {
    for (int i = 0; i < pc->vars.len; i++) {
        struct var* v = ListGetIdx(&pc->vars, i);
        if (v->type.bType == BASETYPE_FUNC && StrCmp(v->name, StrFromCStr("main"))) return true;
    }
    return false;
}

ParserCtx ParseFile(char* fileName) {
    struct list ctxs = ListInit(sizeof(struct parserContext));
    ParserCtx pc = parserCtxNew(StrFromCStr(fileName), &ctxs);
    parseFileFirstPass(pc);

    resetTokenCtxs(&ctxs);
    parseFileSecondPass(pc);

    resetTokenCtxs(&ctxs);
    parseFileThirdPass(pc);

    if (getNSyntaxErrors() == 0 && !findMainFunc(pc)) SyntaxErrorInfo(pc->tc, MAIN_FUNC_NOT_FOUND);

    return pc;
}
