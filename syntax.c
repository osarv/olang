#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "syntax.h"
#include "errmsg.h"
#include "token.h"
#include "util.h"

/* Hand-written recursive-descent parser (previously a generic table-driven PEG engine interpreting
 * grammar-rule strings at runtime - see the report for why that was replaced: no way to embed a
 * "semantic predicate" like isKnownType, error messages that only ever named the deepest single expected
 * token, and a structural inability to backtrack into an already-matched repetition once a later sibling
 * failed. All three are gone here: predicates are just C function calls, error messages are written by
 * hand at the point that actually knows what's wrong, and backtracking is exactly whatever save/restore
 * this code chooses to do. */

typedef struct syntaxContext* SyntaxCtx;

struct syntaxContext {
    TokenCtx tc;
    int furthestPos;
    struct token furthestTok;
    char* furthestExpected;
    void* typeCtx;
    TypeNameLookup isKnownType; //see the report on struct syntax's declaration - only ever consulted to
                                //tell a struct literal's type name apart from an ordinary variable/block
};

// ---- token-stream primitives ----

struct token peekTok(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token t = TokenFeed(sc->tc);
    TokenSetCursor(sc->tc, cur);
    return t;
}

void recordFurthestError(SyntaxCtx sc, struct token found, char* expected) {
    int pos = TokenGetCursor(sc->tc);
    if (pos < sc->furthestPos) return;
    sc->furthestPos = pos;
    sc->furthestTok = found;
    sc->furthestExpected = expected;
}

//consumes and returns the next token unconditionally (callers that already peeked use this to commit)
struct token advanceTok(SyntaxCtx sc) {
    return TokenFeed(sc->tc);
}

//consumes and returns the next token if it matches `type`; otherwise records the failure (for error
//reporting) and returns a TOK_NONE token, leaving the cursor untouched - callers check .type
struct token acceptTok(SyntaxCtx sc, enum tokenType type) {
    int cur = TokenGetCursor(sc->tc);
    struct token t = TokenFeed(sc->tc);
    if (t.type == type) return t;
    recordFurthestError(sc, t, TokenStrFromType(type));
    TokenSetCursor(sc->tc, cur);
    return (struct token){0};
}

//the token immediately before the current cursor (the one just consumed), without moving anything
struct token prevTok(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    if (cur == 0) return (struct token){0};
    TokenSetCursor(sc->tc, cur - 1);
    struct token t = TokenFeed(sc->tc); //advances back to `cur`
    return t;
}

//a statement normally needs an explicit TOK_STMNT_END, synthesized by ASI after most token kinds - but
//deliberately never after "}" (blocks are never followed by one, so stmntEndTriggerType in token.c
//excludes it on purpose). A struct literal also ends in "}", though, and unlike a block it always sits at
//the tail of some larger construct (a var-decl's value, an expression statement, ...) that genuinely
//needs a terminator right there - so this accepts a real STMNT_END token OR, when the token just consumed
//was "}", treats that as the terminator too, with nothing extra to consume.
//a statement's own closing token can implicitly terminate it with no real TOK_STMNT_END at all - TOK_CURLY_C
//because no grammar rule ever expects a TOK_STMNT_END after one (see stmntEndTriggerType), and TOK_GRT
//because the tokenizer can't tell a scope-reference marker's closing '<name>>'/'<>' apart from the
//comparison operator at the token level (both are just TOK_GRT), so it's never added to stmntEndTriggerType
//either - but the two can never actually be confused here: a genuine comparison '>' can only ever appear
//mid-expression (parseExpr keeps consuming past it, looking for a right-hand operand), so it can never be
//the LAST token of an already-fully-parsed statement - only a marker's own closing '>' (parseTypeRef) can.
bool acceptStmntEnd(SyntaxCtx sc) {
    if (acceptTok(sc, TOK_STMNT_END).type == TOK_STMNT_END) return true;
    enum tokenType prev = prevTok(sc).type;
    return prev == TOK_CURLY_C || prev == TOK_GRT;
}

// ---- tree-building primitives ----

struct syntax* newNode(enum syntaxType type) {
    struct syntax* s = MallocOrCrash(sizeof(struct syntax));
    s->type = type;
    s->parts = ListInit(sizeof(struct syntaxPart));
    return s;
}

void addTok(struct syntax* s, struct token t) {
    struct syntaxPart p = {0};
    p.isToken = true;
    p.tok = t;
    ListAdd(&s->parts, &p);
}

void addSntx(struct syntax* s, struct syntax* child) {
    struct syntaxPart p = {0};
    p.isToken = false;
    p.sntx = child;
    ListAdd(&s->parts, &p);
}

// ---- forward declarations (grammar is mutually recursive throughout) ----

struct syntax* parseName(SyntaxCtx sc);
struct syntax* parseArrSfx(SyntaxCtx sc);
struct syntax* parseTypeRef(SyntaxCtx sc);
struct syntax* parseTypeExpr(SyntaxCtx sc);
struct syntax* parseBlock(SyntaxCtx sc);
struct syntax* parseStmnt(SyntaxCtx sc);
struct syntax* parseExpr(SyntaxCtx sc);
struct syntax* parseExprPrimary(SyntaxCtx sc);
struct syntax* parseExprPostfix(SyntaxCtx sc);
struct syntax* parseExprArgs(SyntaxCtx sc);
struct syntax* parseCatchErrList(SyntaxCtx sc);

// ---- names, types ----

//"IDEN (DOT IDEN)*" - an arbitrary-length dotted identifier chain (all but the trailing one or two
//identifiers are alias hops through a chain of re-exports - see resolveAliasChain in semantic.c; that's a
//semantic question, not a grammar one, so this commits to any dotted chain unconditionally). Never fails
//if a leading IDEN is present; callers check the leading token first. Used for type refs and call targets,
//both parsed from a position the parser already knows is unambiguous, and also for a struct/array
//literal's own type name (parseExprPrimary's TOK_IDEN case) - there, the parser's own type-name-awareness
//(nameIsKnownType/isKnownTypeForParsing) decides whether to commit to literal syntax, and walks this same
//chain hop by hop to any depth (not limited to one or two hops) before answering. A vocab value
//(firstIdenIsLocalKnownType) is the one exception: it's never alias-qualified by design (M12), so only
//this chain's own first identifier is ever consulted there, regardless of what follows it.
struct syntax* parseName(SyntaxCtx sc) {
    struct token first = acceptTok(sc, TOK_IDEN);
    if (first.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_NAME);
    addTok(s, first);
    while (true) {
        int cur = TokenGetCursor(sc->tc);
        struct token dot = TokenFeed(sc->tc);
        if (dot.type != TOK_DOT) { TokenSetCursor(sc->tc, cur); break; }
        struct token next = TokenFeed(sc->tc);
        if (next.type != TOK_IDEN) { TokenSetCursor(sc->tc, cur); break; }
        addTok(s, dot);
        addTok(s, next);
    }
    return s;
}

//"[" EXPR? "]" - self-contained, backtracks fully on any failure so a caller's "*" loop can just stop
struct syntax* parseArrSfx(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token open = acceptTok(sc, TOK_SQUARE_O);
    if (open.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_ARR_SFX);
    addTok(s, open);
    int beforeExpr = TokenGetCursor(sc->tc);
    struct syntax* e = parseExpr(sc);
    if (e) addSntx(s, e); else TokenSetCursor(sc->tc, beforeExpr);
    struct token close = acceptTok(sc, TOK_SQUARE_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    addTok(s, close);
    return s;
}

//"NAME ARR_SFX* (TOK_LST IDEN? TOK_GRT)?" - the optional trailing "<name>" names which scope a
//heap-indirect reference belongs to; bare "<>" means the value's own private scope - see the report.
//Briefly spelled "&" instead (see git history), reverted back to "{}" after further design discussion
//concluded the two are semantically identical (a plain/embedded value never independently needs a scope
//tag - it has no separate allocation to tag - so "is this a reference" and "which scope" always travel
//together as one marker either way). Moved a second time, from "{}"/"{name}" to "<>"/"<name>": "{}" was
//doing double duty as both this marker AND struct-literal construction ("Point{1, 2}"), so a reader had to
//parse content, not just punctuation, to tell "type-level scope metadata" from "a value's own data" apart
//at a glance - "<>" gives the marker its own visual lane, and reads the way a type-parameter/generic
//annotation does in most other languages. No parsing ambiguity risk the way C++'s "<"/">" template
//lookahead has: parseTypeRef is only ever called from a position the parser already knows is a type
//expression (a var-decl's type, a signature, a field declaration), never from general expression parsing,
//so "<"/">" here never has to be disambiguated from the comparison operators.
struct syntax* parseTypeRef(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct syntax* name = parseName(sc);
    if (!name) return NULL;
    struct syntax* s = newNode(SNTX_TYPE_REF);
    addSntx(s, name);
    while (true) {
        struct syntax* sfx = parseArrSfx(sc);
        if (!sfx) break;
        addSntx(s, sfx);
    }
    int beforeBrace = TokenGetCursor(sc->tc);
    struct token open = TokenFeed(sc->tc);
    if (open.type == TOK_LST) {
        int beforeIden = TokenGetCursor(sc->tc);
        struct token iden = TokenFeed(sc->tc);
        if (iden.type != TOK_IDEN) TokenSetCursor(sc->tc, beforeIden);
        struct token close = TokenFeed(sc->tc);
        if (close.type == TOK_GRT) {
            addTok(s, open);
            if (iden.type == TOK_IDEN) addTok(s, iden);
            addTok(s, close);
        } else {
            TokenSetCursor(sc->tc, beforeBrace);
        }
    } else {
        TokenSetCursor(sc->tc, beforeBrace);
    }
    (void)cur;
    return s;
}

struct syntax* parseVocabBody(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_VOCAB);
    if (kw.type == TOK_NONE) return NULL;
    struct token open = acceptTok(sc, TOK_CURLY_O);
    if (open.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token first = acceptTok(sc, TOK_IDEN);
    if (first.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_VOCAB_BODY);
    addTok(s, kw);
    addTok(s, open);
    addTok(s, first);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token comma = TokenFeed(sc->tc);
        if (comma.type != TOK_COMMA) { TokenSetCursor(sc->tc, before); break; }
        struct token iden = acceptTok(sc, TOK_IDEN);
        if (iden.type == TOK_NONE) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, comma);
        addTok(s, iden);
    }
    int beforeEnd = TokenGetCursor(sc->tc);
    struct token end = TokenFeed(sc->tc);
    if (end.type == TOK_STMNT_END) addTok(s, end); else TokenSetCursor(sc->tc, beforeEnd);
    struct token close = acceptTok(sc, TOK_CURLY_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    addTok(s, close);
    return s;
}

struct syntax* parseStructMembr(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) return NULL;
    struct syntax* type = parseTypeExpr(sc);
    if (!type) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STRUCT_MEMBR);
    addTok(s, name);
    addSntx(s, type);
    return s;
}

struct syntax* parseStructBody(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_STRUCT);
    if (kw.type == TOK_NONE) return NULL;
    struct token open = acceptTok(sc, TOK_CURLY_O);
    if (open.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STRUCT_BODY);
    addTok(s, kw);
    addTok(s, open);
    struct syntax* first = parseStructMembr(sc);
    if (first) {
        addSntx(s, first);
        while (true) {
            int before = TokenGetCursor(sc->tc);
            struct token comma = TokenFeed(sc->tc);
            if (comma.type != TOK_COMMA) { TokenSetCursor(sc->tc, before); break; }
            struct syntax* m = parseStructMembr(sc);
            if (!m) { TokenSetCursor(sc->tc, before); break; }
            addTok(s, comma);
            addSntx(s, m);
        }
    }
    int beforeEnd = TokenGetCursor(sc->tc);
    struct token end = TokenFeed(sc->tc);
    if (end.type == TOK_STMNT_END) addTok(s, end); else TokenSetCursor(sc->tc, beforeEnd);
    struct token close = acceptTok(sc, TOK_CURLY_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    addTok(s, close);
    return s;
}

struct syntax* parseParamList(SyntaxCtx sc);
struct syntax* parseFuncSig(SyntaxCtx sc);
struct syntax* parseStructCtor(SyntaxCtx sc);

struct syntax* parseFuncType(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_FUNC);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* sig = parseFuncSig(sc);
    if (!sig) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_FUNC_TYPE);
    addTok(s, kw);
    addSntx(s, sig);
    return s;
}

//"VOCAB_BODY|STRUCT_BODY|FUNC_TYPE|TYPE_REF"
struct syntax* parseTypeExpr(SyntaxCtx sc) {
    struct syntax* inner = parseVocabBody(sc);
    if (!inner) inner = parseStructBody(sc);
    if (!inner) inner = parseFuncType(sc);
    if (!inner) inner = parseTypeRef(sc);
    if (!inner) return NULL;
    struct syntax* s = newNode(SNTX_TYPE_EXPR);
    addSntx(s, inner);
    return s;
}

struct syntax* parseTypeDecl(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_TYPE);
    if (kw.type == TOK_NONE) return NULL;
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    //a constructor-bearing struct ("struct(params) { ... }") is only ever reachable here, never as a
    //general type expression - disambiguated purely by "(" immediately following "struct", so a plain
    //"struct { ... }" (parseTypeExpr's path, unchanged) never even attempts this
    struct syntax* ctor = parseStructCtor(sc);
    struct syntax* type = ctor ? ctor : parseTypeExpr(sc);
    if (!type) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_TYPE_DECL);
    addTok(s, kw);
    addTok(s, name);
    addSntx(s, type);
    int beforeEnd = TokenGetCursor(sc->tc);
    struct token end = TokenFeed(sc->tc);
    if (end.type == TOK_STMNT_END) addTok(s, end); else TokenSetCursor(sc->tc, beforeEnd);
    return s;
}

//"import ALIAS "path"" or "import "path"" (alias derived from the file's own name - see
//deriveImportAlias/the report); the alias token is optional, so this node may carry either 2 or 3 tokens.
struct syntax* parseImport(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_IMPORT);
    if (kw.type == TOK_NONE) return NULL;
    struct token alias = acceptTok(sc, TOK_IDEN);
    struct token path = acceptTok(sc, TOK_STR_LIT);
    if (path.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_IMPORT);
    addTok(s, kw);
    if (alias.type != TOK_NONE) addTok(s, alias);
    addTok(s, path);
    int beforeEnd = TokenGetCursor(sc->tc);
    struct token end = TokenFeed(sc->tc);
    if (end.type == TOK_STMNT_END) addTok(s, end); else TokenSetCursor(sc->tc, beforeEnd);
    return s;
}

struct syntax* parseErrorDecl(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_ERROR);
    if (kw.type == TOK_NONE) return NULL;
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token open = acceptTok(sc, TOK_CURLY_O);
    if (open.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token first = acceptTok(sc, TOK_IDEN);
    if (first.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_ERROR_DECL);
    addTok(s, kw);
    addTok(s, name);
    addTok(s, open);
    addTok(s, first);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token comma = TokenFeed(sc->tc);
        if (comma.type != TOK_COMMA) { TokenSetCursor(sc->tc, before); break; }
        struct token iden = acceptTok(sc, TOK_IDEN);
        if (iden.type == TOK_NONE) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, comma);
        addTok(s, iden);
    }
    int beforeEnd = TokenGetCursor(sc->tc);
    struct token end = TokenFeed(sc->tc);
    if (end.type == TOK_STMNT_END) addTok(s, end); else TokenSetCursor(sc->tc, beforeEnd);
    struct token close = acceptTok(sc, TOK_CURLY_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    addTok(s, close);
    return s;
}

//one "error-list-item" (see the report on "the generic error"): either an ordinary declared error
//type's name, or the bare "error" keyword standing in for it, matching literally (never a valid IDEN,
//L7) so it can never be confused with a real type name in this position
struct syntax* parseErrorListItem(SyntaxCtx sc) {
    struct token kw = acceptTok(sc, TOK_ERROR);
    if (kw.type != TOK_NONE) {
        struct syntax* s = newNode(SNTX_GENERIC_ERROR);
        addTok(s, kw);
        return s;
    }
    return parseName(sc);
}

//appends "(+ error-list-item)*" onto s, whose first item has already been parsed and added by the
//caller - shared by both a bare (constructor, parseErrorList) and '?'-marked (ordinary function,
//parseFuncErrorList) error list, which differ only in what, if anything, precedes the first item
void addErrorListTail(SyntaxCtx sc, struct syntax* s) {
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token plus = TokenFeed(sc->tc);
        if (plus.type != TOK_ADD) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* item = parseErrorListItem(sc);
        if (!item) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, plus);
        addSntx(s, item);
    }
}

//a constructor's own error-list, e.g. "struct(params) ErrA + ErrB { ... }" - bare, no leading marker,
//since a constructor has no ret-type of its own to disambiguate against (see parseFuncErrorList for an
//ordinary function's '?'-marked counterpart)
struct syntax* parseErrorList(SyntaxCtx sc) {
    struct syntax* first = parseErrorListItem(sc);
    if (!first) return NULL;
    struct syntax* s = newNode(SNTX_ERROR_LIST);
    addSntx(s, first);
    addErrorListTail(sc, s);
    return s;
}

//an ordinary function's error-list is marked with a leading '?' - the marker moved here (from ret-type,
//see parseRetType) so a signature reads "(params) [ret-type] [? errors]": the return value first, then,
//if there is one, the error set
struct syntax* parseFuncErrorList(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token q = acceptTok(sc, TOK_QSNTMRK);
    if (q.type == TOK_NONE) return NULL;
    struct syntax* first = parseErrorListItem(sc);
    if (!first) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_ERROR_LIST);
    addTok(s, q);
    addSntx(s, first);
    addErrorListTail(sc, s);
    return s;
}

//bare, no marker - unlike before, nothing here distinguishes it from a following error-list positionally
//other than trying it first (see parseFuncSig): a type-expr can never itself start with '?', so there's no
//ambiguity between "this is the ret-type" and "this is actually the error-list"
struct syntax* parseRetType(SyntaxCtx sc) {
    struct syntax* type = parseTypeExpr(sc);
    if (!type) return NULL;
    struct syntax* s = newNode(SNTX_RET_TYPE);
    addSntx(s, type);
    return s;
}

struct syntax* parseParam(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_PARAM);
    addTok(s, name);
    int beforeMut = TokenGetCursor(sc->tc);
    struct token mut = TokenFeed(sc->tc);
    if (mut.type == TOK_MUT) addTok(s, mut); else TokenSetCursor(sc->tc, beforeMut);
    struct syntax* type = parseTypeExpr(sc);
    if (!type) { TokenSetCursor(sc->tc, cur); return NULL; }
    addSntx(s, type);
    return s;
}

//"(PARAM (COMMA PARAM)*)?" - always succeeds (possibly with zero params)
struct syntax* parseParamList(SyntaxCtx sc) {
    struct syntax* s = newNode(SNTX_PARAM_LIST);
    struct syntax* first = parseParam(sc);
    if (!first) return s;
    addSntx(s, first);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token comma = TokenFeed(sc->tc);
        if (comma.type != TOK_COMMA) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* p = parseParam(sc);
        if (!p) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, comma);
        addSntx(s, p);
    }
    return s;
}

struct syntax* parseFuncSig(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token open = acceptTok(sc, TOK_PAREN_O);
    if (open.type == TOK_NONE) return NULL;
    struct syntax* params = parseParamList(sc);
    struct token close = acceptTok(sc, TOK_PAREN_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_FUNC_SIG);
    addTok(s, open);
    addSntx(s, params);
    addTok(s, close);
    struct syntax* ret = parseRetType(sc);
    if (ret) addSntx(s, ret);
    struct syntax* errs = parseFuncErrorList(sc);
    if (errs) addSntx(s, errs);
    return s;
}

//one field inside a constructor-bearing struct's body. Tries, in order: ":=" inference, an explicit type
//(optionally followed by "= expr"), and finally a bare pun (just the name, possibly "mut") when no type
//expression follows at all - see the report for what each form means
struct syntax* parseCtorField(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_CTOR_FIELD);
    addTok(s, name);

    int beforeMut = TokenGetCursor(sc->tc);
    struct token mut = TokenFeed(sc->tc);
    if (mut.type == TOK_MUT) addTok(s, mut); else TokenSetCursor(sc->tc, beforeMut);

    int beforeInfer = TokenGetCursor(sc->tc);
    struct token infer = TokenFeed(sc->tc);
    if (infer.type == TOK_ASS_INFER) {
        struct syntax* rhs = parseExpr(sc);
        if (!rhs) { TokenSetCursor(sc->tc, cur); return NULL; }
        addTok(s, infer);
        addSntx(s, rhs);
        return s;
    }
    TokenSetCursor(sc->tc, beforeInfer);

    struct syntax* type = parseTypeExpr(sc);
    if (type) {
        addSntx(s, type);
        int beforeAss = TokenGetCursor(sc->tc);
        struct token ass = TokenFeed(sc->tc);
        if (ass.type == TOK_ASS) {
            struct syntax* rhs = parseExpr(sc);
            if (!rhs) { TokenSetCursor(sc->tc, cur); return NULL; }
            addTok(s, ass);
            addSntx(s, rhs);
        } else {
            TokenSetCursor(sc->tc, beforeAss);
        }
        return s;
    }

    //no type, no "=", no ":=" - a bare pun, valid only if it turns out to name one of the constructor's
    //own parameters (checked in semantic.c, which has the param list this parser doesn't)
    return s;
}

//"(CTOR_FIELD (COMMA CTOR_FIELD)*)?" - always succeeds (possibly with zero fields)
struct syntax* parseCtorFieldList(SyntaxCtx sc) {
    struct syntax* s = newNode(SNTX_CTOR_FIELD_LIST);
    struct syntax* first = parseCtorField(sc);
    if (!first) return s;
    addSntx(s, first);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token comma = TokenFeed(sc->tc);
        if (comma.type != TOK_COMMA) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* f = parseCtorField(sc);
        if (!f) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, comma);
        addSntx(s, f);
    }
    return s;
}

struct syntax* parseDestruct(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_DESTRUCT);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_DESTRUCT);
    addTok(s, kw);
    addSntx(s, block);
    return s;
}

//"STRUCT PAREN_O PARAM_LIST PAREN_C ERROR_LIST? CURLY_O CTOR_FIELD_LIST CURLY_C DESTRUCT?" - only called
//from parseTypeDecl, right after "type NAME"; committing to this (vs. a plain "struct { ... }") is decided
//purely by whether "(" immediately follows "struct"
struct syntax* parseStructCtor(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_STRUCT);
    if (kw.type == TOK_NONE) return NULL;
    struct token open = acceptTok(sc, TOK_PAREN_O);
    if (open.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* params = parseParamList(sc);
    struct token close = acceptTok(sc, TOK_PAREN_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STRUCT_CTOR);
    addTok(s, kw);
    addTok(s, open);
    addSntx(s, params);
    addTok(s, close);
    struct syntax* errs = parseErrorList(sc);
    if (errs) addSntx(s, errs);
    struct token curlyO = acceptTok(sc, TOK_CURLY_O);
    if (curlyO.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    addTok(s, curlyO);
    struct syntax* fields = parseCtorFieldList(sc);
    addSntx(s, fields);
    int beforeEnd = TokenGetCursor(sc->tc);
    struct token end = TokenFeed(sc->tc);
    if (end.type == TOK_STMNT_END) addTok(s, end); else TokenSetCursor(sc->tc, beforeEnd);
    struct token curlyC = acceptTok(sc, TOK_CURLY_C);
    if (curlyC.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    addTok(s, curlyC);
    struct syntax* destruct = parseDestruct(sc);
    if (destruct) addSntx(s, destruct);
    return s;
}

struct syntax* parseFuncDef(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_FUNC);
    if (kw.type == TOK_NONE) return NULL;
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* sig = parseFuncSig(sc);
    if (!sig) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_FUNC_DEF);
    addTok(s, kw);
    addTok(s, name);
    addSntx(s, sig);
    addSntx(s, block);
    return s;
}

//"IDEN type-expr" - unlike parseParam, never accepts "mut" (see the report on §11 X2) - reuses the
//ordinary type-expr grammar for the type itself; the restriction to a numeric-primitive-or-array-of-
//them type is checked semantically (resolveExternParamList in semantic.c), not by a separate grammar
struct syntax* parseExternParam(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_EXTERN_PARAM);
    addTok(s, name);
    struct syntax* type = parseTypeExpr(sc);
    if (!type) { TokenSetCursor(sc->tc, cur); return NULL; }
    addSntx(s, type);
    return s;
}

//"(EXTERN_PARAM (COMMA EXTERN_PARAM)*)?" - always succeeds (possibly with zero params), mirroring
//parseParamList
struct syntax* parseExternParamList(SyntaxCtx sc) {
    struct syntax* s = newNode(SNTX_EXTERN_PARAM_LIST);
    struct syntax* first = parseExternParam(sc);
    if (!first) return s;
    addSntx(s, first);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token comma = TokenFeed(sc->tc);
        if (comma.type != TOK_COMMA) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* p = parseExternParam(sc);
        if (!p) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, comma);
        addSntx(s, p);
    }
    return s;
}

//"extern func IDEN ( EXTERN_PARAM_LIST ) RET_TYPE? STMNT_END" - a top-level declaration only (see the
//report on §11): no error-list (an external function is never fallible in olang's own sense, X4), and
//no body at all - STMNT_END ends the declaration directly where an ordinary parseFuncDef's own block
//would begin. Reuses parseRetType as-is (already bare, no marker, see the signature-reorder entry in
//the report) - identical grammar to an ordinary function's own optional return type.
struct syntax* parseExternFuncDecl(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kwExtern = acceptTok(sc, TOK_EXTERN);
    if (kwExtern.type == TOK_NONE) return NULL;
    struct token kwFunc = acceptTok(sc, TOK_FUNC);
    if (kwFunc.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token open = acceptTok(sc, TOK_PAREN_O);
    if (open.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* params = parseExternParamList(sc);
    struct token close = acceptTok(sc, TOK_PAREN_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_EXTERN_FUNC_DECL);
    addTok(s, kwExtern);
    addTok(s, kwFunc);
    addTok(s, name);
    addTok(s, open);
    addSntx(s, params);
    addTok(s, close);
    struct syntax* retType = parseRetType(sc);
    if (retType) addSntx(s, retType);
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    return s;
}

struct syntax* parseTestDecl(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_TEST);
    if (kw.type == TOK_NONE) return NULL;
    struct token desc = acceptTok(sc, TOK_STR_LIT);
    if (desc.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_TEST_DECL);
    addTok(s, kw);
    addTok(s, desc);
    addSntx(s, block);
    return s;
}

//":=" declares with the type read off the (required-to-be-literal) initializer - a distinct token from
//"=" so this can never be confused with an assignment to an existing variable. An explicit-type decl's
//own "= EXPR" is optional (unlike ":=", which always needs something to infer from) - semantic.c is the
//one that decides which declared types can actually go without an initializer (an uninitialized array,
//zero-filled or arena-allocated - see the report); the grammar just leaves the door open for any type,
//same "parse liberally, reject semantically" pattern "own" already uses.
struct syntax* parseVarDecl(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_VAR_DECL);
    addTok(s, name);
    int beforeMut = TokenGetCursor(sc->tc);
    struct token mut = TokenFeed(sc->tc);
    if (mut.type == TOK_MUT) addTok(s, mut); else TokenSetCursor(sc->tc, beforeMut);

    int beforeInfer = TokenGetCursor(sc->tc);
    struct token infer = TokenFeed(sc->tc);
    bool hasNoInitializer = false;
    if (infer.type == TOK_ASS_INFER) {
        addTok(s, infer);
    } else {
        TokenSetCursor(sc->tc, beforeInfer);
        struct syntax* type = parseTypeExpr(sc);
        if (!type) { TokenSetCursor(sc->tc, cur); return NULL; }
        addSntx(s, type);
        struct token ass = acceptTok(sc, TOK_ASS);
        if (ass.type == TOK_NONE) hasNoInitializer = true;
        else addTok(s, ass);
    }
    if (!hasNoInitializer) {
        struct syntax* rhs = parseExpr(sc);
        if (!rhs) { TokenSetCursor(sc->tc, cur); return NULL; }
        addSntx(s, rhs);
    }
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    return s;
}

//same shape as VAR_DECL but no trailing statement-end (a for-loop's init clause is followed by ",")
struct syntax* parseForInit(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_FOR_INIT);
    addTok(s, name);
    int beforeMut = TokenGetCursor(sc->tc);
    struct token mut = TokenFeed(sc->tc);
    if (mut.type == TOK_MUT) addTok(s, mut); else TokenSetCursor(sc->tc, beforeMut);

    int beforeInfer = TokenGetCursor(sc->tc);
    struct token infer = TokenFeed(sc->tc);
    if (infer.type == TOK_ASS_INFER) {
        addTok(s, infer);
    } else {
        TokenSetCursor(sc->tc, beforeInfer);
        struct syntax* type = parseTypeExpr(sc);
        if (!type) { TokenSetCursor(sc->tc, cur); return NULL; }
        struct token ass = acceptTok(sc, TOK_ASS);
        if (ass.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
        addSntx(s, type);
        addTok(s, ass);
    }
    struct syntax* rhs = parseExpr(sc);
    if (!rhs) { TokenSetCursor(sc->tc, cur); return NULL; }
    addSntx(s, rhs);
    return s;
}

enum tokenType assignOpToks[] = {
    TOK_ASS, TOK_ASS_ADD, TOK_ASS_SUB, TOK_ASS_MUL, TOK_ASS_DIV, TOK_ASS_MOD,
    TOK_ASS_AND, TOK_ASS_OR, TOK_ASS_XOR, TOK_ASS_BTSFT_L, TOK_ASS_BTSFT_R,
    TOK_ASS_BTWSE_AND, TOK_ASS_BTWSE_OR, TOK_ASS_BTWSE_XOR
};
#define N_ASSIGN_OP_TOKS ((int)(sizeof(assignOpToks) / sizeof(assignOpToks[0])))

struct syntax* parseAssignOp(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token t = TokenFeed(sc->tc);
    for (int i = 0; i < N_ASSIGN_OP_TOKS; i++) {
        if (t.type == assignOpToks[i]) {
            struct syntax* s = newNode(SNTX_ASSIGN_OP);
            addTok(s, t);
            return s;
        }
    }
    TokenSetCursor(sc->tc, cur);
    return NULL;
}

struct syntax* parseStmntAssign(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct syntax* lhs = parseExprPostfix(sc);
    if (!lhs) return NULL;
    struct syntax* op = parseAssignOp(sc);
    if (!op) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* rhs = parseExpr(sc);
    if (!rhs) { TokenSetCursor(sc->tc, cur); return NULL; }
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_ASSIGN);
    addSntx(s, lhs);
    addSntx(s, op);
    addSntx(s, rhs);
    return s;
}

struct syntax* parseStmntExpr(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct syntax* e = parseExpr(sc);
    if (!e) return NULL;
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_EXPR);
    addSntx(s, e);
    return s;
}

struct syntax* parseStmntIf(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_IF);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* cond = parseExpr(sc);
    if (!cond) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_IF);
    addTok(s, kw);
    addSntx(s, cond);
    addSntx(s, block);
    int beforeElse = TokenGetCursor(sc->tc);
    struct token elseKw = TokenFeed(sc->tc);
    if (elseKw.type == TOK_ELSE) {
        struct syntax* elseIf = parseStmntIf(sc);
        if (elseIf) { addTok(s, elseKw); addSntx(s, elseIf); return s; }
        struct syntax* elseBlock = parseBlock(sc);
        if (elseBlock) { addTok(s, elseKw); addSntx(s, elseBlock); return s; }
        TokenSetCursor(sc->tc, beforeElse);
    } else {
        TokenSetCursor(sc->tc, beforeElse);
    }
    return s;
}

struct syntax* parseStmntFor(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_FOR);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* init = parseForInit(sc);
    if (!init) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token c1 = acceptTok(sc, TOK_COMMA);
    if (c1.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* cond = parseExpr(sc);
    if (!cond) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token c2 = acceptTok(sc, TOK_COMMA);
    if (c2.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* post = parseExpr(sc);
    if (!post) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_FOR);
    addTok(s, kw);
    addSntx(s, init);
    addTok(s, c1);
    addSntx(s, cond);
    addTok(s, c2);
    addSntx(s, post);
    addSntx(s, block);
    return s;
}

struct syntax* parseStmntDo(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_DO);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token whileKw = acceptTok(sc, TOK_WHILE);
    if (whileKw.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* cond = parseExpr(sc);
    if (!cond) { TokenSetCursor(sc->tc, cur); return NULL; }
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_DO);
    addTok(s, kw);
    addSntx(s, block);
    addTok(s, whileKw);
    addSntx(s, cond);
    return s;
}

struct syntax* parseStmntCase(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_CASE);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* val = parseExpr(sc);
    if (!val) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_CASE);
    addTok(s, kw);
    addSntx(s, val);
    addSntx(s, block);
    return s;
}

struct syntax* parseStmntNomatch(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_NOMATCH);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_NOMATCH);
    addTok(s, kw);
    addSntx(s, block);
    return s;
}

struct syntax* parseStmntMatch(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_MATCH);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* val = parseExpr(sc);
    if (!val) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token open = acceptTok(sc, TOK_CURLY_O);
    if (open.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_MATCH);
    addTok(s, kw);
    addSntx(s, val);
    addTok(s, open);
    while (true) {
        struct syntax* c = parseStmntCase(sc);
        if (!c) break;
        addSntx(s, c);
    }
    struct syntax* nomatch = parseStmntNomatch(sc);
    if (nomatch) addSntx(s, nomatch);
    struct token close = acceptTok(sc, TOK_CURLY_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    addTok(s, close);
    return s;
}

struct syntax* parseStmntRet(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_RET);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_STMNT_RET);
    addTok(s, kw);
    struct syntax* val = parseExpr(sc);
    if (val) addSntx(s, val);
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    return s;
}

struct syntax* parseStmntDone(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_DONE);
    if (kw.type == TOK_NONE) return NULL;
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_DONE);
    addTok(s, kw);
    return s;
}

struct syntax* parseStmntCrash(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_CRASH);
    if (kw.type == TOK_NONE) return NULL;
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_CRASH);
    addTok(s, kw);
    return s;
}

//"assert EXPR" - takes its operand directly like "return" does, not a function call ("assert(cond)"
//still parses fine too, unchanged: the parens are just an ordinary parenthesized sub-expression, which
//EXPR already handles on its own - see the report)
struct syntax* parseStmntAssert(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_ASSERT);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* val = parseExpr(sc);
    if (!val) { TokenSetCursor(sc->tc, cur); return NULL; }
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_ASSERT);
    addTok(s, kw);
    addSntx(s, val);
    return s;
}

//"error TYPE.word" (same-module) or "error alias...TYPE.word" (cross-module, through an alias chain of
//any length, originating a foreign module's own error type directly - see the report) - always ends in
//exactly "TYPE.word" (never a bare type alone), so every identifier before the last two is unambiguously
//an alias hop, unlike a catch clause's own "TYPE.word"/"alias.TYPE" ambiguity. A bare "error", with no
//operand at all, is the generic error (see the report) - a separate, simpler shape entirely, so it's
//tried first, before committing to the ordinary TYPE.word grammar below.
struct syntax* parseStmntError(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_ERROR);
    if (kw.type == TOK_NONE) return NULL;
    struct token first = acceptTok(sc, TOK_IDEN);
    if (first.type == TOK_NONE) {
        struct syntax* bare = newNode(SNTX_STMNT_ERROR);
        addTok(bare, kw);
        if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
        return bare;
    }
    struct token dot1 = acceptTok(sc, TOK_DOT);
    if (dot1.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token second = acceptTok(sc, TOK_IDEN);
    if (second.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_ERROR);
    addTok(s, kw);
    addTok(s, first);
    addTok(s, dot1);
    addTok(s, second);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token dot = TokenFeed(sc->tc);
        if (dot.type != TOK_DOT) { TokenSetCursor(sc->tc, before); break; }
        struct token next = TokenFeed(sc->tc);
        if (next.type != TOK_IDEN) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, dot);
        addTok(s, next);
    }
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    return s;
}

//"IDEN (DOT IDEN)*" - an alias chain of any length, then either a whole TYPE or a TYPE.word; which
//trailing shape it is (and where the alias chain actually ends) gets disambiguated later, in semantic
//analysis (resolveCatchAliasChain - an import alias and an error type live in different namespaces, see
//the report), not here - this grammar rule just commits to any dotted chain unconditionally.
struct syntax* parseCatchErr(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    //the generic error (see the report) - bare "error", never followed by ".word" (it has no addressable
    //word of its own), so this commits without looking for a trailing dot at all, unlike the ordinary
    //IDEN-chain shape below
    struct token generic = acceptTok(sc, TOK_ERROR);
    if (generic.type != TOK_NONE) {
        struct syntax* s = newNode(SNTX_GENERIC_ERROR);
        addTok(s, generic);
        return s;
    }
    struct token first = acceptTok(sc, TOK_IDEN);
    if (first.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_CATCH_ERR);
    addTok(s, first);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token dot = TokenFeed(sc->tc);
        if (dot.type != TOK_DOT) { TokenSetCursor(sc->tc, before); break; }
        struct token iden = TokenFeed(sc->tc);
        if (iden.type != TOK_IDEN) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, dot);
        addTok(s, iden);
    }
    (void)cur;
    return s;
}

//"+" joins entries here, not "||" - a catch clause is matching against a *set* of error types/words, the
//same thing "+" already means combining in a function signature's error list ("ErrA + ErrB ? T"); "||"
//would misleadingly read as a boolean-OR condition rather than "these belong to one combined set" (it
//never actually produces a new set value the way this reads, per the report - kept only as the general
//boolean-OR expression operator elsewhere in the language, unrelated to this).
struct syntax* parseCatchErrList(SyntaxCtx sc) {
    struct syntax* first = parseCatchErr(sc);
    if (!first) return NULL;
    struct syntax* s = newNode(SNTX_CATCH_ERR_LIST);
    addSntx(s, first);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token sepTok = TokenFeed(sc->tc);
        if (sepTok.type != TOK_ADD) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* e = parseCatchErr(sc);
        if (!e) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, sepTok);
        addSntx(s, e);
    }
    return s;
}

struct syntax* parseCatchClause(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_CATCH);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* errs = parseCatchErrList(sc);
    if (!errs) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_CATCH_CLAUSE);
    addTok(s, kw);
    addSntx(s, errs);
    addSntx(s, block);
    return s;
}

//"try f()" alone propagates (see parseExprTry, a general expression); this is the catch-handling
//statement form - control flow only, the caught error is never exposed as a value
struct syntax* parseStmntTryCatch(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_TRY);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* primary = parseExprPrimary(sc);
    if (!primary) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* clause = parseCatchClause(sc);
    if (!clause) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_TRY_CATCH);
    addTok(s, kw);
    addSntx(s, primary);
    addSntx(s, clause);
    return s;
}

//wrapped in a genuine SNTX_STMNT node - buildBlock finds statements by searching for that exact type
//(allPartsOfType(blockNode, SNTX_STMNT)), and buildStatement then unwraps part[0] itself - same reasoning
//as parseTopDecl's own wrapper
struct syntax* parseStmnt(SyntaxCtx sc) {
    struct syntax* inner;
    if ((inner = parseVarDecl(sc))) {}
    else if ((inner = parseStmntAssign(sc))) {}
    else if ((inner = parseStmntIf(sc))) {}
    else if ((inner = parseStmntFor(sc))) {}
    else if ((inner = parseStmntDo(sc))) {}
    else if ((inner = parseStmntMatch(sc))) {}
    else if ((inner = parseStmntRet(sc))) {}
    else if ((inner = parseStmntDone(sc))) {}
    else if ((inner = parseStmntCrash(sc))) {}
    else if ((inner = parseStmntAssert(sc))) {}
    else if ((inner = parseStmntError(sc))) {}
    else if ((inner = parseStmntTryCatch(sc))) {}
    else if ((inner = parseStmntExpr(sc))) {}
    else return NULL;
    struct syntax* s = newNode(SNTX_STMNT);
    addSntx(s, inner);
    return s;
}

struct syntax* parseBlock(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token open = acceptTok(sc, TOK_CURLY_O);
    if (open.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_BLOCK);
    addTok(s, open);
    while (true) {
        struct syntax* stmt = parseStmnt(sc);
        if (!stmt) break;
        addSntx(s, stmt);
    }
    struct token close = acceptTok(sc, TOK_CURLY_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    addTok(s, close);
    return s;
}

// ---- expressions ----

//"(EXPR (COMMA EXPR)*)?" - always succeeds (possibly with zero args)
struct syntax* parseExprArgs(SyntaxCtx sc) {
    struct syntax* s = newNode(SNTX_EXPR_ARGS);
    struct syntax* first = parseExpr(sc);
    if (!first) return s;
    addSntx(s, first);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token comma = TokenFeed(sc->tc);
        if (comma.type != TOK_COMMA) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* e = parseExpr(sc);
        if (!e) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, comma);
        addSntx(s, e);
    }
    return s;
}

struct syntax* parseExprCall(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token open = acceptTok(sc, TOK_PAREN_O);
    if (open.type == TOK_NONE) return NULL;
    struct syntax* args = parseExprArgs(sc);
    struct token close = acceptTok(sc, TOK_PAREN_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_EXPR_CALL);
    addTok(s, open);
    addSntx(s, args);
    addTok(s, close);
    return s;
}

struct syntax* parseExprTry(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_TRY);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* primary = parseExprPrimary(sc);
    if (!primary) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_EXPR_TRY);
    addTok(s, kw);
    addSntx(s, primary);
    return s;
}

struct syntax* parseArrLiteralArgs(SyntaxCtx sc);

//"[" ARR_LIT_ARGS "]" - a nested row with no restated type, only ever reachable as one item inside an
//enclosing array literal's own argument list (see parseArrLiteralArgs) - the outer literal states the
//scalar element type once; nesting depth and each level's size come entirely from the bracket structure
//and item counts here, not from any restated type/size on the nested group itself.
struct syntax* parseArrLiteralNestedGroup(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token open = acceptTok(sc, TOK_SQUARE_O);
    if (open.type == TOK_NONE) return NULL;
    struct syntax* args = parseArrLiteralArgs(sc);
    struct token close = acceptTok(sc, TOK_SQUARE_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_ARR_LIT_NESTED);
    addTok(s, open);
    addSntx(s, args);
    addTok(s, close);
    return s;
}

//"(ITEM (COMMA ITEM)*)?" where ITEM is either a nested bracket group (parseArrLiteralNestedGroup, tried
//first) or a plain EXPR - always succeeds, possibly with zero items. Mirrors parseExprArgs exactly, just
//with the one extra alternative per item.
struct syntax* parseArrLiteralArgs(SyntaxCtx sc) {
    struct syntax* s = newNode(SNTX_ARR_LIT_ARGS);
    struct syntax* first = parseArrLiteralNestedGroup(sc);
    if (!first) first = parseExpr(sc);
    if (!first) return s;
    addSntx(s, first);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token comma = TokenFeed(sc->tc);
        if (comma.type != TOK_COMMA) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* e = parseArrLiteralNestedGroup(sc);
        if (!e) e = parseExpr(sc);
        if (!e) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, comma);
        addSntx(s, e);
    }
    return s;
}

//"NAME [ ARR_LIT_ARGS ]" - array literal. NAME states the base (scalar) element type once; dimensionality
//and each level's size come entirely from the argument list's own bracket nesting and item counts (see
//parseArrLiteralArgs/parseArrLiteralNestedGroup) - no separate "[N]"/"[]" size/dynamic-ness suffix on the
//literal itself any more (that's now decided by whatever the literal is checked against - see the report).
//This also incidentally fixes the old gap where a single-value (or empty) value list was indistinguishable
//from a trailing array suffix and silently swallowed by a suffix loop: there is no more suffix loop here.
//true for one of the fixed set of built-in primitive type names ("int32[1, 2, 3]" needs this gate just as
//much as a struct/vocab/error name does - see parseExprPrimary - but primitives were never added to
//declaredTypeNames/isKnownType, which only ever tracked user "type"/"error" declarations). Mirrors the
//exact same name set resolveLiteralBaseType (semantic.c) falls back to for a name isKnownType doesn't
//recognize either. Never alias-qualified - a primitive name is always exactly one identifier.
bool nameIsPrimitiveTypeName(struct syntax* name) {
    if (name->parts.len != 1) return false;
    struct syntaxPart* p0 = ListGetIdx(&name->parts, 0);
    struct str n = p0->tok.str;
    return StrCmp(n, StrFromCStr("bool")) || StrCmp(n, StrFromCStr("int32")) || StrCmp(n, StrFromCStr("int64"))
        || StrCmp(n, StrFromCStr("byte")) || StrCmp(n, StrFromCStr("float32")) || StrCmp(n, StrFromCStr("float64"));
}

//"NAME [ ARR_LIT_ARGS ]" - array literal tail. `name` is already parsed and confirmed by the caller
//(parseExprPrimary) to be a known type or a primitive name before this is ever reached - see the report
//for why that's what makes this safe to commit to hard, the same reasoning parseStructLiteralTail already
//relies on: without it, "NAME [ ARR_LIT_ARGS ]" is structurally identical to ordinary indexing
//("variable[index]"), since this grammar (unlike the old suffix-then-args shape) is always exactly one
//bracket group - type-name-awareness is now load-bearing here, not just a convenience.
struct syntax* parseArrayLiteralTail(SyntaxCtx sc, struct syntax* name, struct token open) {
    struct syntax* args = parseArrLiteralArgs(sc);
    struct token close = acceptTok(sc, TOK_SQUARE_C);
    if (close.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_EXPR_LITERAL);
    addSntx(s, name);
    addTok(s, open);
    addSntx(s, args);
    addTok(s, close);
    return s;
}

//"NAME { ARGS }" - struct literal. `name` and the opening "{" are already committed by the caller
//(parseExprPrimary), which only reaches here once name is confirmed to be a known type - see the report
//for why that makes this safe to commit to hard (no backtracking to reinterpret "{" as a block start).
struct syntax* parseStructLiteralTail(SyntaxCtx sc, struct syntax* name, struct token open) {
    struct syntax* s = newNode(SNTX_EXPR_STRUCT_LITERAL);
    addSntx(s, name);
    addTok(s, open);
    struct syntax* args = parseExprArgs(sc);
    addSntx(s, args);
    struct token close = acceptTok(sc, TOK_CURLY_C);
    if (close.type == TOK_NONE) return NULL;
    addTok(s, close);
    return s;
}

//name->parts is 2N-1 long for N identifiers ("IDEN (DOT IDEN)*" - see parseName): every identifier but the
//last is an alias hop, the last is the type name itself.
bool nameIsKnownType(SyntaxCtx sc, struct syntax* name) {
    if (!sc->isKnownType) return false;
    int nIdens = (name->parts.len +1) /2;
    struct list aliasChain = ListInit(sizeof(struct str));
    for (int i = 0; i < nIdens -1; i++) {
        struct syntaxPart* p = ListGetIdx(&name->parts, i *2);
        struct str a = Str(p->tok.str.ptr, p->tok.str.len);
        ListAdd(&aliasChain, &a);
    }
    struct syntaxPart* pLast = ListGetIdx(&name->parts, (nIdens -1) *2);
    struct str n = Str(pLast->tok.str.ptr, pLast->tok.str.len);
    return sc->isKnownType(sc->typeCtx, aliasChain, n);
}

//true if a qualified name's *first* identifier alone (ignoring the qualification) is a locally-known
//type - "Direction.NORTH" is a vocab value exactly when "Direction" is a local type, never an import
//alias (an alias and a local type live in different lookups here on purpose, so "sh.SomeType{...}"
//- a real cross-module struct literal - is never confused with this)
bool firstIdenIsLocalKnownType(SyntaxCtx sc, struct syntax* name) {
    if (!sc->isKnownType || name->parts.len != 3) return false;
    struct syntaxPart* p0 = ListGetIdx(&name->parts, 0);
    struct str n = Str(p0->tok.str.ptr, p0->tok.str.len);
    return sc->isKnownType(sc->typeCtx, ListInit(sizeof(struct str)), n);
}

//"TOK_BOOL_LIT|TOK_INT_LIT|TOK_FLOAT_LIT|TOK_CHAR_LIT|TOK_STR_LIT|TOK_OWN|EXPR_TRY|
// (NAME EXPR_CALL)|STRUCT_LITERAL|EXPR_LITERAL|TOK_IDEN|(PAREN_O EXPR PAREN_C)"
struct syntax* parseExprPrimary(SyntaxCtx sc) {
    struct token t = peekTok(sc);
    switch (t.type) {
        case TOK_BOOL_LIT: case TOK_INT_LIT: case TOK_FLOAT_LIT: case TOK_CHAR_LIT:
        case TOK_STR_LIT: case TOK_OWN: {
            struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
            addTok(s, advanceTok(sc));
            return s;
        }
        case TOK_TRY: {
            struct syntax* tryExpr = parseExprTry(sc);
            if (!tryExpr) return NULL;
            struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
            addSntx(s, tryExpr);
            return s;
        }
        case TOK_PAREN_O: {
            int cur = TokenGetCursor(sc->tc);
            struct token open = advanceTok(sc);
            struct syntax* e = parseExpr(sc);
            if (!e) { TokenSetCursor(sc->tc, cur); return NULL; }
            struct token close = acceptTok(sc, TOK_PAREN_C);
            if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
            struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
            addTok(s, open);
            addSntx(s, e);
            addTok(s, close);
            return s;
        }
        case TOK_IDEN: {
            int save = TokenGetCursor(sc->tc);
            struct syntax* name = parseName(sc);
            struct token after = peekTok(sc);
            if (after.type == TOK_PAREN_O) {
                struct syntax* call = parseExprCall(sc);
                if (call) {
                    struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
                    addSntx(s, name);
                    addSntx(s, call);
                    return s;
                }
                TokenSetCursor(sc->tc, save);
            } else if (after.type == TOK_CURLY_O && nameIsKnownType(sc, name)) {
                struct token open = advanceTok(sc); //consume the "{" now that we're committing
                struct syntax* lit = parseStructLiteralTail(sc, name, open);
                if (lit) {
                    struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
                    addSntx(s, lit);
                    return s;
                }
                //name was a known type immediately followed by "{" - not a real ambiguity (a bare type
                //name is never a valid condition/value on its own), so a malformed literal is a real
                //parse error, not a silent fallback to "maybe this was a block after all"
                recordFurthestError(sc, peekTok(sc), "'}'");
                return NULL;
            } else if (firstIdenIsLocalKnownType(sc, name)) {
                //"Type.WORD" - a vocab value (see the report on communicating a fixed set/selection, not
                //a C-enum-style number). Committed the same way struct literals are: "Direction" being a
                //known local type here is never a coincidence worth backtracking out of.
                struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
                struct syntax* vv = newNode(SNTX_EXPR_VOCAB_VALUE);
                addSntx(vv, name);
                addSntx(s, vv);
                return s;
            } else if (after.type == TOK_SQUARE_O && (nameIsKnownType(sc, name) || nameIsPrimitiveTypeName(name))) {
                //"NAME [ ... ]" is structurally identical to indexing ("variable[index]") now that array
                //literals no longer restate a size/dynamic-ness suffix before the value list - see
                //parseArrayLiteralTail. Committed the same way struct literals are: name being a known
                //type (or a primitive - never a real variable either) here is never a coincidence.
                struct token open = advanceTok(sc); //consume the "[" now that we're committing
                struct syntax* lit = parseArrayLiteralTail(sc, name, open);
                if (lit) {
                    struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
                    addSntx(s, lit);
                    return s;
                }
                recordFurthestError(sc, peekTok(sc), "']'");
                return NULL;
            }
            TokenSetCursor(sc->tc, save);
            struct token bare = advanceTok(sc);
            struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
            addTok(s, bare);
            return s;
        }
        default:
            recordFurthestError(sc, t, "expression");
            return NULL;
    }
}

struct syntax* parseExprIndex(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token open = acceptTok(sc, TOK_SQUARE_O);
    if (open.type == TOK_NONE) return NULL;
    struct syntax* e = parseExpr(sc);
    if (!e) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token close = acceptTok(sc, TOK_SQUARE_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_EXPR_INDEX);
    addTok(s, open);
    addSntx(s, e);
    addTok(s, close);
    return s;
}

struct syntax* parseExprMembr(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token dot = acceptTok(sc, TOK_DOT);
    if (dot.type == TOK_NONE) return NULL;
    struct token iden = acceptTok(sc, TOK_IDEN);
    if (iden.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_EXPR_MEMBR);
    addTok(s, dot);
    addTok(s, iden);
    return s;
}

struct syntax* parseExprPostfix(SyntaxCtx sc) {
    struct syntax* primary = parseExprPrimary(sc);
    if (!primary) return NULL;
    struct syntax* s = newNode(SNTX_EXPR_POSTFIX);
    addSntx(s, primary);
    while (true) {
        struct syntax* idx = parseExprIndex(sc);
        if (idx) { addSntx(s, idx); continue; }
        struct syntax* mem = parseExprMembr(sc);
        if (mem) { addSntx(s, mem); continue; }
        int before = TokenGetCursor(sc->tc);
        struct token t = TokenFeed(sc->tc);
        if (t.type == TOK_INC || t.type == TOK_DEC) { addTok(s, t); continue; }
        TokenSetCursor(sc->tc, before);
        break;
    }
    return s;
}

bool isUnaryOpTok(enum tokenType t) {
    return t == TOK_NOT || t == TOK_SUB || t == TOK_BTWSE_INV || t == TOK_INC || t == TOK_DEC;
}

struct syntax* parseExprUnary(SyntaxCtx sc) {
    struct list ops = ListInit(sizeof(struct token));
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token t = TokenFeed(sc->tc);
        if (!isUnaryOpTok(t.type)) { TokenSetCursor(sc->tc, before); break; }
        ListAdd(&ops, &t);
    }
    struct syntax* postfix = parseExprPostfix(sc);
    if (!postfix) return NULL; //note: any consumed unary-op tokens are simply not attached to anything;
                                //a real prefix-op-with-no-operand is always a hard error further up anyway
    struct syntax* s = newNode(SNTX_EXPR_UNARY);
    for (int i = 0; i < ops.len; i++) {
        struct token* opTok = ListGetIdx(&ops, i);
        struct syntax* opNode = newNode(SNTX_EXPR_UNARY_OP);
        addTok(opNode, *opTok);
        addSntx(s, opNode);
    }
    addSntx(s, postfix);
    return s;
}

//standard precedence-climbing, replacing the old 11-rule grammar chain (SNTX_EXPR_MUL..SNTX_EXPR_OR) with
//one table + one function - see the report. Precedence numbers below match that chain's nesting exactly
//(1 = loosest/"||", 11 = tightest/"* / %"); every olang binary operator is left-associative, so ties
//always recurse at prec+1.
int binOpPrecedence(enum tokenType t) {
    switch (t) {
        case TOK_OR: return 1;
        case TOK_XOR: return 2;
        case TOK_AND: return 3;
        case TOK_BTWSE_OR: return 4;
        case TOK_BTWSE_XOR: return 5;
        case TOK_BTWSE_AND: return 6;
        case TOK_EQ: case TOK_NEQ: return 7;
        case TOK_LST: case TOK_LSE: case TOK_GRT: case TOK_GRE: return 8;
        case TOK_BTSFT_L: case TOK_BTSFT_R: return 9;
        case TOK_ADD: case TOK_SUB: return 10;
        case TOK_MUL: case TOK_DIV: case TOK_MOD: return 11;
        default: return 0; //not a binary operator
    }
}

struct syntax* parseBinaryExpr(SyntaxCtx sc, int minPrec) {
    struct syntax* left = parseExprUnary(sc);
    if (!left) return NULL;
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token opTok = TokenFeed(sc->tc);
        int prec = binOpPrecedence(opTok.type);
        if (prec == 0 || prec < minPrec) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* right = parseBinaryExpr(sc, prec + 1); //left-assoc: recurse tighter, not equal
        if (!right) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* bin = newNode(SNTX_EXPR_BINARY);
        addSntx(bin, left);
        addTok(bin, opTok);
        addSntx(bin, right);
        left = bin;
    }
    return left;
}

struct syntax* parseExpr(SyntaxCtx sc) {
    struct syntax* inner = parseBinaryExpr(sc, 1);
    if (!inner) return NULL;
    struct syntax* s = newNode(SNTX_EXPR);
    addSntx(s, inner);
    return s;
}

// ---- top level ----

//wrapped in a genuine SNTX_TOP_DECL node (rather than just returning the matched alternative directly) -
//semantic.c's module-walking passes all expect one part[0] to unwrap, the same shape the old table-driven
//engine always produced for every rule (even a pure alternation still got its own wrapper node)
struct syntax* parseTopDecl(SyntaxCtx sc) {
    struct syntax* inner;
    if ((inner = parseTypeDecl(sc))) {}
    else if ((inner = parseImport(sc))) {}
    else if ((inner = parseErrorDecl(sc))) {}
    else if ((inner = parseExternFuncDecl(sc))) {}
    else if ((inner = parseFuncDef(sc))) {}
    else if ((inner = parseVarDecl(sc))) {}
    else if ((inner = parseTestDecl(sc))) {}
    else return NULL;
    struct syntax* s = newNode(SNTX_TOP_DECL);
    addSntx(s, inner);
    return s;
}

//derives an import's own alias from its file path when none is given explicitly ("import "Math.olang""
//instead of "import m "Math.olang"" - see the report): the base filename with any leading directory and
//the trailing ".olang" extension stripped, so "some/dir/Math.olang" becomes "Math". Doesn't validate the
//result is a legal identifier shape (a filename with a hyphen, or starting with a digit, isn't) - see
//isValidAliasShape, checked once real semantic analysis has a token to anchor the error to.
struct str deriveImportAlias(struct str path) {
    int start = 0;
    for (int i = 0; i < path.len; i++) {
        if (path.ptr[i] == '/') start = i +1;
    }
    int end = path.len;
    struct str suffix = StrFromCStr(".olang");
    if (end - start >= suffix.len && !strncmp(path.ptr + end - suffix.len, suffix.ptr, suffix.len)) {
        end -= suffix.len;
    }
    if (end < start) end = start;
    return Str(path.ptr + start, end - start);
}

//true if alias has the shape of a real identifier (letter/underscore, then letters/digits/underscores) -
//the same rule the tokenizer's own identifier rule enforces. An EXPLICIT alias is always already valid
//(it came from a real TOK_IDEN); this only ever matters for a DERIVED one, since an arbitrary filename
//isn't guaranteed to be one (a leading digit, a hyphen, ...) - such a file needs an explicit alias instead.
bool isValidAliasShape(struct str alias) {
    if (alias.len == 0) return false;
    if (!isLetter(alias.ptr[0]) && alias.ptr[0] != '_') return false;
    for (int i = 1; i < alias.len; i++) {
        char c = alias.ptr[i];
        if (!isLetter(c) && !isDigit(c) && c != '_') return false;
    }
    return true;
}

// ---- declaration scan (see syntax.h) ----

struct scanResult ScanTopLevelDecls(TokenCtx tc) {
    struct scanResult r = {0};
    r.typeNames = ListInit(sizeof(struct str));
    r.imports = ListInit(sizeof(struct scannedImport));
    TokenSetCursor(tc, 0);
    int depth = 0;
    while (true) {
        struct token t = TokenFeed(tc);
        if (t.type == TOK_NONE) break;
        if (t.type == TOK_CURLY_O) { depth++; continue; }
        if (t.type == TOK_CURLY_C) { depth--; continue; }
        if (depth != 0) continue;
        if (t.type == TOK_TYPE) {
            struct token name = TokenFeed(tc);
            if (name.type == TOK_IDEN) {
                struct str n = Str(name.str.ptr, name.str.len);
                ListAdd(&r.typeNames, &n);
            }
        } else if (t.type == TOK_ERROR) {
            //a real error-decl ("error IDEN { ... }") registers a type name; the bare generic error
            //(see the report) is never followed by an IDEN at all (it's always immediately followed by
            //"{", "+", or a statement end, in an error-list/error-stmnt/catch-item) - a real, confirmed
            //bug found here: naively always consuming "whatever comes after error" the way TOK_TYPE's
            //own branch does swallowed a function's own opening "{" whenever its error-list ended in the
            //bare marker ("? RangeError + error {"), silently discarding it as "not an IDEN, never mind" -
            //but that consumed token then never reached the depth-tracking check above, permanently
            //desyncing "depth" for the rest of the scan (every following declaration misjudged as still
            //being inside a function body, or not, one level off). Fixed by only actually consuming the
            //peeked token when it turns out to be a real name; otherwise the cursor is restored so the
            //main loop sees it fresh, exactly like every other token that isn't part of this scan's own
            //narrow pattern.
            int before = TokenGetCursor(tc);
            struct token name = TokenFeed(tc);
            if (name.type == TOK_IDEN) {
                struct str n = Str(name.str.ptr, name.str.len);
                ListAdd(&r.typeNames, &n);
            } else {
                TokenSetCursor(tc, before);
            }
        } else if (t.type == TOK_IMPORT) {
            //"import ALIAS "path"" (explicit) or "import "path"" (alias derived from the file's own name -
            //see deriveImportAlias/the report) - either shape is accepted here; a real, anchored error for
            //an invalid derived alias is reported later, once semantic analysis has full context
            //(semaLoadModule), matching how this scan never reports errors of its own.
            struct token afterImport = TokenFeed(tc);
            struct token aliasTok = afterImport;
            struct token path;
            bool hasAlias = afterImport.type == TOK_IDEN;
            if (hasAlias) {
                path = TokenFeed(tc);
            } else {
                path = afterImport;
            }
            if (path.type != TOK_STR_LIT) continue;
            struct scannedImport imp = {0};
            imp.path = Str(path.str.ptr +1, path.str.len -2); //strip surrounding quotes
            imp.pathTok = path;
            imp.alias = hasAlias ? Str(aliasTok.str.ptr, aliasTok.str.len) : deriveImportAlias(imp.path);
            imp.aliasTok = hasAlias ? aliasTok : path;
            ListAdd(&r.imports, &imp);
        }
    }
    TokenSetCursor(tc, 0);
    return r;
}

// ---- driver ----

struct syntaxModule ParseSyntax(TokenCtx tc, void* typeCtx, TypeNameLookup isKnownType) {
    struct syntaxContext sc = {0};
    sc.tc = tc;
    sc.furthestPos = -1;
    sc.typeCtx = typeCtx;
    sc.isKnownType = isKnownType;

    struct syntaxModule mod = {0};
    mod.tc = tc;
    mod.decls = ListInit(sizeof(struct syntax));

    while (true) {
        struct token peek = peekTok(&sc);
        if (peek.type == TOK_NONE) break;

        sc.furthestPos = TokenGetCursor(sc.tc);
        struct syntax* decl = parseTopDecl(&sc);
        if (!decl) {
            char* expected = sc.furthestExpected ? sc.furthestExpected : "declaration";
            ErrMsgUnexpectedToken(sc.furthestTok, expected);
            TokenFeedUntil(sc.tc, TOK_STMNT_END);
            continue;
        }
        ListAdd(&mod.decls, decl);
    }
    return mod;
}
