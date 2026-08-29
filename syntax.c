#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "syntax.h"
#include "errmsg.h"
#include "token.h"
#include "util.h"

/* the whole olang grammar, one row per construct: name (for pattern cross-references) + pattern.
 * pattern DSL: space-separated sequence; "TOK_X"/"SNTX_X" atoms; "(a|b|c)" alternation; "?" zero-or-one;
 * "*" zero-or-more (quantifier attaches directly, no space, to the atom or group before it) */
struct syntaxRule {
    char* name;
    char* pattern;
};

struct syntaxRule rules[] = {
    [SNTX_TOP_DECL] = {"SNTX_TOP_DECL", "SNTX_TYPE_DECL|SNTX_IMPORT|SNTX_ERROR_DECL|SNTX_FUNC_DEF|SNTX_VAR_DECL|SNTX_TEST_DECL"},
    [SNTX_IMPORT] = {"SNTX_IMPORT", "TOK_IMPORT TOK_IDEN TOK_STR_LIT TOK_STMNT_END?"},

    [SNTX_NAME] = {"SNTX_NAME", "TOK_IDEN (TOK_DOT TOK_IDEN)?"},
    [SNTX_ARR_SFX] = {"SNTX_ARR_SFX", "TOK_SQUARE_O SNTX_EXPR? TOK_SQUARE_C"},
    [SNTX_TYPE_REF] = {"SNTX_TYPE_REF", "SNTX_NAME SNTX_ARR_SFX* (TOK_CURLY_O TOK_CURLY_C)?"},
    //trailing TOK_STMNT_END? absorbs an implicit end-of-statement synthesized when the last item sits
    //on its own line before '}' (see asiTriggerType in token.c) - these lists are comma-separated, not
    //statement-terminated, but the synthesis is purely lexical and can't tell the difference
    [SNTX_VOCAB_BODY] = {"SNTX_VOCAB_BODY", "TOK_VOCAB TOK_CURLY_O TOK_IDEN (TOK_COMMA TOK_IDEN)* TOK_STMNT_END? TOK_CURLY_C"},
    [SNTX_STRUCT_MEMBR] = {"SNTX_STRUCT_MEMBR", "TOK_IDEN SNTX_TYPE_EXPR"},
    [SNTX_STRUCT_BODY] = {"SNTX_STRUCT_BODY", "TOK_STRUCT TOK_CURLY_O (SNTX_STRUCT_MEMBR (TOK_COMMA SNTX_STRUCT_MEMBR)*)? TOK_STMNT_END? TOK_CURLY_C"},
    [SNTX_TYPE_EXPR] = {"SNTX_TYPE_EXPR", "SNTX_VOCAB_BODY|SNTX_STRUCT_BODY|SNTX_FUNC_TYPE|SNTX_TYPE_REF"},
    [SNTX_TYPE_DECL] = {"SNTX_TYPE_DECL", "TOK_TYPE TOK_IDEN SNTX_TYPE_EXPR TOK_STMNT_END?"},
    [SNTX_TEST_DECL] = {"SNTX_TEST_DECL", "TOK_TEST TOK_STR_LIT SNTX_BLOCK"},

    [SNTX_ERROR_DECL] = {"SNTX_ERROR_DECL", "TOK_ERROR TOK_IDEN TOK_CURLY_O TOK_IDEN (TOK_COMMA TOK_IDEN)* TOK_STMNT_END? TOK_CURLY_C"},
    [SNTX_ERROR_LIST] = {"SNTX_ERROR_LIST", "SNTX_NAME (TOK_ADD SNTX_NAME)*"},
    [SNTX_RET_TYPE] = {"SNTX_RET_TYPE", "TOK_QSNTMRK SNTX_TYPE_EXPR"},

    [SNTX_PARAM] = {"SNTX_PARAM", "TOK_IDEN TOK_MUT? SNTX_TYPE_EXPR"},
    [SNTX_PARAM_LIST] = {"SNTX_PARAM_LIST", "(SNTX_PARAM (TOK_COMMA SNTX_PARAM)*)?"},
    [SNTX_FUNC_SIG] = {"SNTX_FUNC_SIG", "TOK_PAREN_O SNTX_PARAM_LIST TOK_PAREN_C SNTX_ERROR_LIST? SNTX_RET_TYPE?"},
    [SNTX_FUNC_TYPE] = {"SNTX_FUNC_TYPE", "TOK_FUNC SNTX_FUNC_SIG"},
    [SNTX_FUNC_DEF] = {"SNTX_FUNC_DEF", "TOK_FUNC TOK_IDEN SNTX_FUNC_SIG SNTX_BLOCK"},

    //":=" (TOK_ASS_INFER) declares with the type read off the initializer, which must then be a literal
    //(checked in semantic.c) - a distinct token from "=" on purpose, so this can never be confused with
    //an assignment to an existing variable (see the report for why that ambiguity is a real, not
    //theoretical, problem: "x = 5" would otherwise parse as shadowing a new inferred-type "x")
    [SNTX_VAR_DECL] = {"SNTX_VAR_DECL", "TOK_IDEN TOK_MUT? (SNTX_TYPE_EXPR TOK_ASS|TOK_ASS_INFER) SNTX_EXPR TOK_STMNT_END"},

    [SNTX_ASSIGN_OP] = {"SNTX_ASSIGN_OP", "TOK_ASS|TOK_ASS_ADD|TOK_ASS_SUB|TOK_ASS_MUL|TOK_ASS_DIV|TOK_ASS_MOD|"
        "TOK_ASS_AND|TOK_ASS_OR|TOK_ASS_XOR|TOK_ASS_BTSFT_L|TOK_ASS_BTSFT_R|TOK_ASS_BTWSE_AND|TOK_ASS_BTWSE_OR|TOK_ASS_BTWSE_XOR"},
    [SNTX_STMNT_ASSIGN] = {"SNTX_STMNT_ASSIGN", "SNTX_EXPR_POSTFIX SNTX_ASSIGN_OP SNTX_EXPR TOK_STMNT_END"},
    [SNTX_STMNT_EXPR] = {"SNTX_STMNT_EXPR", "SNTX_EXPR TOK_STMNT_END"},
    [SNTX_STMNT_IF] = {"SNTX_STMNT_IF", "TOK_IF SNTX_EXPR SNTX_BLOCK (TOK_ELSE (SNTX_STMNT_IF|SNTX_BLOCK))?"},
    [SNTX_FOR_INIT] = {"SNTX_FOR_INIT", "TOK_IDEN TOK_MUT? (SNTX_TYPE_EXPR TOK_ASS|TOK_ASS_INFER) SNTX_EXPR"},
    [SNTX_STMNT_FOR] = {"SNTX_STMNT_FOR", "TOK_FOR SNTX_FOR_INIT TOK_COMMA SNTX_EXPR TOK_COMMA SNTX_EXPR SNTX_BLOCK"},
    [SNTX_STMNT_DO] = {"SNTX_STMNT_DO", "TOK_DO SNTX_BLOCK TOK_WHILE SNTX_EXPR TOK_STMNT_END"},
    [SNTX_STMNT_CASE] = {"SNTX_STMNT_CASE", "TOK_CASE SNTX_EXPR SNTX_BLOCK"},
    [SNTX_STMNT_NOMATCH] = {"SNTX_STMNT_NOMATCH", "TOK_NOMATCH SNTX_BLOCK"},
    [SNTX_STMNT_MATCH] = {"SNTX_STMNT_MATCH", "TOK_MATCH SNTX_EXPR TOK_CURLY_O SNTX_STMNT_CASE* SNTX_STMNT_NOMATCH? TOK_CURLY_C"},
    [SNTX_STMNT_RET] = {"SNTX_STMNT_RET", "TOK_RET SNTX_EXPR? TOK_STMNT_END"},
    //process exit with a fixed status: done = OS-standard success (0), crash = OS-standard failure (1).
    //neither takes a value - see the report for why that's deliberate (main's own error diagnostics are
    //the informative path; these are the "no more questions, exit now" escape hatch)
    [SNTX_STMNT_DONE] = {"SNTX_STMNT_DONE", "TOK_DONE TOK_STMNT_END"},
    [SNTX_STMNT_CRASH] = {"SNTX_STMNT_CRASH", "TOK_CRASH TOK_STMNT_END"},
    //selects the error part of a function's return union, e.g. "error MyError.NotFound" - the word after
    //the dot must be one of the error type's declared members (see SNTX_ERROR_DECL)
    [SNTX_STMNT_ERROR] = {"SNTX_STMNT_ERROR", "TOK_ERROR TOK_IDEN TOK_DOT TOK_IDEN TOK_STMNT_END"},
    //one catch match: "MyError" or "alias.MyError" (whole type), "MyError.NotFound" or
    //"alias.MyError.NotFound" (one word) - see StatementCatchCoversType's caller for how the 2-identifier
    //case disambiguates "alias.MyError" from "MyError.NotFound" (an import alias and an error type live in
    //different namespaces, so the ambiguity is resolved by checking which one the leading name actually is)
    [SNTX_CATCH_ERR] = {"SNTX_CATCH_ERR", "TOK_IDEN (TOK_DOT TOK_IDEN)? (TOK_DOT TOK_IDEN)?"},
    [SNTX_CATCH_ERR_LIST] = {"SNTX_CATCH_ERR_LIST", "SNTX_CATCH_ERR (TOK_OR SNTX_CATCH_ERR)*"},
    [SNTX_CATCH_CLAUSE] = {"SNTX_CATCH_CLAUSE", "TOK_CATCH SNTX_CATCH_ERR_LIST SNTX_BLOCK"},
    //"try f()" alone propagates (see SNTX_EXPR_TRY, a general expression); this is the catch-handling
    //statement form - control flow only, the caught error is never exposed as a value
    [SNTX_STMNT_TRY_CATCH] = {"SNTX_STMNT_TRY_CATCH", "TOK_TRY SNTX_EXPR_PRIMARY SNTX_CATCH_CLAUSE"},
    [SNTX_STMNT] = {"SNTX_STMNT", "SNTX_VAR_DECL|SNTX_STMNT_ASSIGN|SNTX_STMNT_IF|SNTX_STMNT_FOR|SNTX_STMNT_DO|"
        "SNTX_STMNT_MATCH|SNTX_STMNT_RET|SNTX_STMNT_DONE|SNTX_STMNT_CRASH|SNTX_STMNT_ERROR|SNTX_STMNT_TRY_CATCH|SNTX_STMNT_EXPR"},
    [SNTX_BLOCK] = {"SNTX_BLOCK", "TOK_CURLY_O SNTX_STMNT* TOK_CURLY_C"},

    [SNTX_EXPR_ARGS] = {"SNTX_EXPR_ARGS", "(SNTX_EXPR (TOK_COMMA SNTX_EXPR)*)?"},
    [SNTX_EXPR_CALL] = {"SNTX_EXPR_CALL", "TOK_PAREN_O SNTX_EXPR_ARGS TOK_PAREN_C"},
    [SNTX_EXPR_INDEX] = {"SNTX_EXPR_INDEX", "TOK_SQUARE_O SNTX_EXPR TOK_SQUARE_C"},
    [SNTX_EXPR_MEMBR] = {"SNTX_EXPR_MEMBR", "TOK_DOT TOK_IDEN"},
    //bare propagating try, e.g. "x mut int32 = try safeDiv(a, b)" - usable anywhere an expression is,
    //binds tighter than everything except a call's own args (only ever wraps a single primary)
    [SNTX_EXPR_TRY] = {"SNTX_EXPR_TRY", "TOK_TRY SNTX_EXPR_PRIMARY"},
    //"Type[v1, v2, ...]" (struct) or "T[N][...]"/"T[][...]" (array) - constructs a value inline. Uses
    //"[...]" rather than the more C-like "{...}" on purpose - see the report: "{" is also how every
    //if/for/do/case/match body starts, and a bare-identifier condition immediately followed by "{" (e.g.
    //"if x { y }") is genuinely ambiguous between "block" and "literal" with no way to backtrack out of it
    //once chosen (this table-driven engine commits to the first alternative that matches, PEG-style, and
    //never revisits an earlier choice when a later sibling fails). "]" never closes a block anywhere in
    //this grammar, so there's no equivalent ambiguity - and it's already an automatic-statement-end
    //trigger (see stmntEndTriggerType in token.c), so no tokenizer change was needed for that either.
    //A trailing SNTX_ARR_SFX (single expr or empty) can never be confused with a value list of TWO OR MORE
    //values (see SNTX_EXPR_ARGS): a comma can never appear inside SNTX_ARR_SFX's single-expr shape, and
    //this whole rule backtracks as one unit if the trailing "[...]" is missing, so ordinary indexing like
    //"arr[0][1]" is unaffected. A ONE-value (or empty) value list is a real, unresolved gap, though: it
    //looks identical to a valid array suffix, and since this engine never backtracks out of an
    //already-matched "*" repetition once a later sibling fails, that lone value gets silently swallowed as
    //a bogus array suffix, and the whole literal attempt then falls through to plain indexing instead
    //("Point[1]" parses as "read var Point, then index it by 1", not as a literal) - see CLAUDE.md's open
    //questions. Resolving it for real needs the base name's TYPE-vs-VARIABLE status, which only semantic
    //analysis knows, not the parser - not attempted here.
    [SNTX_EXPR_LITERAL] = {"SNTX_EXPR_LITERAL", "SNTX_NAME SNTX_ARR_SFX* TOK_SQUARE_O SNTX_EXPR_ARGS TOK_SQUARE_C"},
    //a call target may be namespaced ("alias.func(...)"); a bare read may not yet (see the report) - the
    //trailing "(" (call) or "[" (literal) is what disambiguates those from ordinary member access
    [SNTX_EXPR_PRIMARY] = {"SNTX_EXPR_PRIMARY", "TOK_BOOL_LIT|TOK_INT_LIT|TOK_FLOAT_LIT|TOK_CHAR_LIT|TOK_STR_LIT|"
        "SNTX_EXPR_TRY|(SNTX_NAME SNTX_EXPR_CALL)|SNTX_EXPR_LITERAL|TOK_IDEN|(TOK_PAREN_O SNTX_EXPR TOK_PAREN_C)"},
    [SNTX_EXPR_POSTFIX] = {"SNTX_EXPR_POSTFIX", "SNTX_EXPR_PRIMARY (SNTX_EXPR_INDEX|SNTX_EXPR_MEMBR|TOK_INC|TOK_DEC)*"},
    [SNTX_EXPR_UNARY_OP] = {"SNTX_EXPR_UNARY_OP", "TOK_NOT|TOK_SUB|TOK_BTWSE_INV|TOK_INC|TOK_DEC"},
    [SNTX_EXPR_UNARY] = {"SNTX_EXPR_UNARY", "SNTX_EXPR_UNARY_OP* SNTX_EXPR_POSTFIX"},
    //classic precedence-climbing chain, loosest (SNTX_EXPR) at the bottom, tightest (SNTX_EXPR_UNARY) at the top
    [SNTX_EXPR_MUL] = {"SNTX_EXPR_MUL", "SNTX_EXPR_UNARY ((TOK_MUL|TOK_DIV|TOK_MOD) SNTX_EXPR_UNARY)*"},
    [SNTX_EXPR_ADD] = {"SNTX_EXPR_ADD", "SNTX_EXPR_MUL ((TOK_ADD|TOK_SUB) SNTX_EXPR_MUL)*"},
    [SNTX_EXPR_SHIFT] = {"SNTX_EXPR_SHIFT", "SNTX_EXPR_ADD ((TOK_BTSFT_L|TOK_BTSFT_R) SNTX_EXPR_ADD)*"},
    [SNTX_EXPR_REL] = {"SNTX_EXPR_REL", "SNTX_EXPR_SHIFT ((TOK_LST|TOK_LSE|TOK_GRT|TOK_GRE) SNTX_EXPR_SHIFT)*"},
    [SNTX_EXPR_EQ] = {"SNTX_EXPR_EQ", "SNTX_EXPR_REL ((TOK_EQ|TOK_NEQ) SNTX_EXPR_REL)*"},
    [SNTX_EXPR_BAND] = {"SNTX_EXPR_BAND", "SNTX_EXPR_EQ (TOK_BTWSE_AND SNTX_EXPR_EQ)*"},
    [SNTX_EXPR_BXOR] = {"SNTX_EXPR_BXOR", "SNTX_EXPR_BAND (TOK_BTWSE_XOR SNTX_EXPR_BAND)*"},
    [SNTX_EXPR_BOR] = {"SNTX_EXPR_BOR", "SNTX_EXPR_BXOR (TOK_BTWSE_OR SNTX_EXPR_BXOR)*"},
    [SNTX_EXPR_AND] = {"SNTX_EXPR_AND", "SNTX_EXPR_BOR (TOK_AND SNTX_EXPR_BOR)*"},
    [SNTX_EXPR_XOR] = {"SNTX_EXPR_XOR", "SNTX_EXPR_AND (TOK_XOR SNTX_EXPR_AND)*"},
    [SNTX_EXPR_OR] = {"SNTX_EXPR_OR", "SNTX_EXPR_XOR (TOK_OR SNTX_EXPR_XOR)*"},
    [SNTX_EXPR] = {"SNTX_EXPR", "SNTX_EXPR_OR"},
};
#define N_SNTX_RULES ((int)(sizeof(rules) / sizeof(rules[0])))

enum syntaxType syntaxTypeFromStr(char* name) {
    for (int i = 0; i < N_SNTX_RULES; i++) {
        if (rules[i].name && !strcmp(rules[i].name, name)) return (enum syntaxType)i;
    }
    ErrorBugFound(); //malformed grammar table: unknown SNTX_ name referenced
    return SNTX_NOT_FOUND;
}

// ---- parse tree matching context (private to this file) ----

typedef struct syntaxContext* SyntaxCtx;

struct syntaxContext {
    TokenCtx tc;
    int furthestPos;
    struct token furthestTok;
    char* furthestExpected;
};

// ---- pattern DSL: compiled into a small tree, then matched against the token stream ----

enum patKind { PAT_TOK, PAT_SNTX, PAT_SEQ, PAT_ALT };

struct patNode {
    enum patKind kind;
    enum tokenType tokType;   //PAT_TOK
    enum syntaxType sntxType; //PAT_SNTX
    struct list items;        //PAT_SEQ, PAT_ALT: list of struct patNode*
    bool optional;            //'?' or '*'
    bool repeat;              //'*'
};

bool isPatIdenChar(char c) {
    return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || (c >= '0' && c <= '9') || c == '_';
}

char* patSkipSpaces(char* p) {
    while (*p == ' ') p++;
    return p;
}

struct patNode* patNodeNew(enum patKind kind) {
    struct patNode* n = MallocOrCrash(sizeof(struct patNode));
    *n = (struct patNode){0};
    n->kind = kind;
    if (kind == PAT_SEQ || kind == PAT_ALT) n->items = ListInit(sizeof(struct patNode*));
    return n;
}

struct patNode* patParseAlt(char** pp);

struct patNode* patParseAtomOrGroup(char** pp) {
    *pp = patSkipSpaces(*pp);
    if (**pp == '(') {
        (*pp)++;
        struct patNode* n = patParseAlt(pp);
        *pp = patSkipSpaces(*pp);
        if (**pp != ')') ErrorBugFound(); //malformed grammar table: unclosed group
        (*pp)++;
        return n;
    }

    char* start = *pp;
    while (isPatIdenChar(**pp)) (*pp)++;
    int len = (int)(*pp - start);
    char buf[64];
    if (len == 0 || len >= (int)sizeof(buf)) ErrorBugFound(); //malformed grammar table

    memcpy(buf, start, len);
    buf[len] = '\0';
    struct patNode* n;
    if (!strncmp(buf, "TOK_", 4)) {
        n = patNodeNew(PAT_TOK);
        n->tokType = TokenTypeFromStr(buf);
    } else if (!strncmp(buf, "SNTX_", 5)) {
        n = patNodeNew(PAT_SNTX);
        n->sntxType = syntaxTypeFromStr(buf);
    } else {
        ErrorBugFound(); //malformed grammar table: unrecognized atom prefix
        return NULL;
    }
    return n;
}

struct patNode* patParseElement(char** pp) {
    struct patNode* n = patParseAtomOrGroup(pp);
    if (**pp == '?') { n->optional = true; (*pp)++; }
    else if (**pp == '*') { n->optional = true; n->repeat = true; (*pp)++; }
    return n;
}

struct patNode* patParseSeq(char** pp) {
    struct patNode* seq = patNodeNew(PAT_SEQ);
    while (true) {
        *pp = patSkipSpaces(*pp);
        if (**pp == '\0' || **pp == ')' || **pp == '|') break;
        struct patNode* e = patParseElement(pp);
        ListAdd(&seq->items, &e);
    }
    if (seq->items.len == 1) return *(struct patNode**)ListGetIdx(&seq->items, 0);
    return seq;
}

struct patNode* patParseAlt(char** pp) {
    struct patNode* first = patParseSeq(pp);
    *pp = patSkipSpaces(*pp);
    if (**pp != '|') return first;

    struct patNode* alt = patNodeNew(PAT_ALT);
    ListAdd(&alt->items, &first);
    while (**pp == '|') {
        (*pp)++;
        struct patNode* seq = patParseSeq(pp);
        ListAdd(&alt->items, &seq);
        *pp = patSkipSpaces(*pp);
    }
    return alt;
}

struct patNode* patParsePattern(char* pattern) {
    char* p = pattern;
    struct patNode* n = patParseAlt(&p);
    p = patSkipSpaces(p);
    if (*p != '\0') ErrorBugFound(); //malformed grammar table: trailing garbage
    return n;
}

// ---- matching engine ----

void recordFurthestError(SyntaxCtx sc, struct token found, char* expected) {
    int pos = TokenGetCursor(sc->tc);
    if (pos < sc->furthestPos) return;
    sc->furthestPos = pos;
    sc->furthestTok = found;
    sc->furthestExpected = expected;
}

struct syntax ParseRule(SyntaxCtx sc, enum syntaxType type);
bool matchNode(SyntaxCtx sc, struct patNode* node, struct syntax* out);

bool matchOnce(SyntaxCtx sc, struct patNode* node, struct syntax* out) {
    switch (node->kind) {
        case PAT_TOK: {
            int cursor = TokenGetCursor(sc->tc);
            struct token tok = TokenFeed(sc->tc);
            if (tok.type != node->tokType) {
                recordFurthestError(sc, tok, TokenStrFromType(node->tokType));
                TokenSetCursor(sc->tc, cursor);
                return false;
            }
            struct syntaxPart part = {0};
            part.isToken = true;
            part.tok = tok;
            ListAdd(&out->parts, &part);
            return true;
        }
        case PAT_SNTX: {
            struct syntax nested = ParseRule(sc, node->sntxType);
            if (nested.type == SNTX_NOT_FOUND) return false;
            struct syntax* heapNested = MallocOrCrash(sizeof(struct syntax));
            *heapNested = nested;
            struct syntaxPart part = {0};
            part.isToken = false;
            part.sntx = heapNested;
            ListAdd(&out->parts, &part);
            return true;
        }
        case PAT_SEQ: {
            int cursor = TokenGetCursor(sc->tc);
            int partsLen = out->parts.len; //a later child failing must undo earlier children's appended parts too
            for (int i = 0; i < node->items.len; i++) {
                struct patNode* child = *(struct patNode**)ListGetIdx(&node->items, i);
                if (!matchNode(sc, child, out)) {
                    TokenSetCursor(sc->tc, cursor);
                    ListRetract(&out->parts, partsLen);
                    return false;
                }
            }
            return true;
        }
        case PAT_ALT: {
            for (int i = 0; i < node->items.len; i++) {
                int cursor = TokenGetCursor(sc->tc);
                struct patNode* child = *(struct patNode**)ListGetIdx(&node->items, i);
                if (matchNode(sc, child, out)) return true;
                TokenSetCursor(sc->tc, cursor);
            }
            return false;
        }
    }
    ErrorBugFound();
    return false;
}

bool matchNode(SyntaxCtx sc, struct patNode* node, struct syntax* out) {
    if (node->repeat) {
        while (true) {
            int cursor = TokenGetCursor(sc->tc);
            if (!matchOnce(sc, node, out)) {
                TokenSetCursor(sc->tc, cursor);
                break;
            }
        }
        return true;
    }
    if (node->optional) {
        int cursor = TokenGetCursor(sc->tc);
        if (!matchOnce(sc, node, out)) TokenSetCursor(sc->tc, cursor);
        return true;
    }
    return matchOnce(sc, node, out);
}

struct patNode* compiledPatterns[N_SNTX_RULES] = {0};

//pattern strings are static grammar, not per-parse input, so compile each one once and reuse the tree
struct patNode* getCompiledPattern(enum syntaxType type) {
    if (!compiledPatterns[type]) compiledPatterns[type] = patParsePattern(rules[type].pattern);
    return compiledPatterns[type];
}

struct syntax ParseRule(SyntaxCtx sc, enum syntaxType type) {
    struct syntax s = {0};
    s.type = type;
    s.parts = ListInit(sizeof(struct syntaxPart));

    int cursor = TokenGetCursor(sc->tc);
    struct patNode* pat = getCompiledPattern(type);
    if (!matchNode(sc, pat, &s)) {
        s.type = SNTX_NOT_FOUND;
        TokenSetCursor(sc->tc, cursor);
    }
    return s;
}

// ---- driver ----

struct syntaxModule ParseSyntax(char* fileName) {
    struct syntaxContext sc = {0};
    sc.tc = TokenizeFile(fileName);
    sc.furthestPos = -1;

    struct syntaxModule mod = {0};
    mod.tc = sc.tc;
    mod.decls = ListInit(sizeof(struct syntax));

    while (true) {
        struct token peek = TokenFeed(sc.tc);
        if (peek.type == TOK_NONE) break;
        TokenUnfeed(sc.tc);

        sc.furthestPos = TokenGetCursor(sc.tc);
        struct syntax decl = ParseRule(&sc, SNTX_TOP_DECL);
        if (decl.type == SNTX_NOT_FOUND) {
            char* expected = sc.furthestExpected ? sc.furthestExpected : "declaration";
            ErrMsgUnexpectedToken(sc.furthestTok, expected);
            TokenFeedUntil(sc.tc, TOK_STMNT_END);
            continue;
        }
        ListAdd(&mod.decls, &decl);
    }
    return mod;
}
