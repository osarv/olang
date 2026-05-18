#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "syntax.h"
#include "token.h"
#include "util.h"

struct syntaxContext {
    TokenCtx tc;
    struct list syntax;
    struct list* ctxs;
};

enum syntaxType {
    SNTX_NOT_FOUND,
    SNTX_IDEN_MB_NMESPCE,
    SNTX_IMPORT,
    SNTX_STMNT_ASS,
    SNTX_STMNT_GLOB_DECL,
    SNTX_STMNT_LOC_DECL,
    SNTX_STMNT_GLOB,
    SNTX_STMNT_LOC,
    SNTX_CBLOCK
};

struct syntaxRule {
    enum syntaxType type;
    char* pattern;
};

union syntaxPart {
    struct token type;
    struct syntax* nested;
};

struct syntax {
    enum syntaxType type;
    struct list parts;
    struct token errorTok;
};

enum syntaxType syntaxGetTypeFromStr(char* str) {
    return 0; //TODO
}

//! = start of pattern, ? = optional, & = optional exactly one, * = optional repeating, $ = end of optional
//on incomplete pattern after start, tokenFeed is set to the next occurence of the last token in the pattern
//all expressions must be separated by a space
struct syntaxRule rules[] = {
    {SNTX_IDEN_MB_NMESPCE, "TOK_IDEN * TOK_DOT TOK_IDEN $"},
    {SNTX_IMPORT, "TOK_IMPORT ! TOK_IDEN ? TOK_AS TOK_IDEN $ TOK_SCOLON"},

    {SNTX_STMNT_ASS, "SNTX_IDEN_MB_NMESPCE &"
        "TOK_ASS TOK_ASS_ADD TOK_ASS_SUB TOK_ASS_MUL"
        "TOK_ASS_DIV TOK_ASS_MOD TOK_ASS_AND TOK_ASS_OR TOK_ASS_XOR TOK_ASS_BTSFT_L"
        "TOK_ASS_BTSFT_R TOK_ASS_BTWSE_AND TOK_ASS_BTWSE_OR TOK_ASS_BTWSE_XOR"
        "$ ! SNTX_EXPR TOK_SCOLON"},

    {SNTX_STMNT_GLOB_DECL, "TOK_IDEN ? TOK_MUT $ SNTX_SMNT_ASS !"},
    {SNTX_STMNT_LOC_DECL, "TOK_IDEN SNTX_SMNT_ASS !"},

    {SNTX_STMNT_GLOB, "& SMNT_LOC_DECL SMNT_ASS $ !"},
    {SNTX_STMNT_LOC, "&"
        "SMNT_LOC_DECL SMNT_ASS SMNT_IF SMNT_FOR"
        "SMNT_MATCH SMTN_RET SMNT_EXIT $ !"},

    {SNTX_CBLOCK, "TOK_CURLY_O ! * SNTX_STMNT $ TOK_CURLY_C"},
};

char* nextPatternPart(char* pattern) {
    for (int i = 0; i < (int)strlen(pattern); i++) {
        if (pattern[i] == ' ') return pattern +i +1;
    }
    return NULL;
}

char* lastPatternPart(char* pattern) {
    int lastPart = 0;
    for (int i = (int)strlen(pattern) -1; i >= 0; i--) {
        if (pattern[i] == ' ') return pattern + i +1;
    }
    return NULL;
}

#define CURSOR_NOT_SET -1

struct syntax ParseRule(SyntaxCtx sc, struct syntaxRule rule, bool started) {
    struct syntax s; 
    s.type = rule.type;
    s.parts = ListInit(sizeof(union syntaxPart));

    bool optional = false;
/   bool mayRepeat = false;
    enum tokenType expectedTok;
    enum syntaxType expectedSntx;
    struct token foundTok;
    struct syntax foundSntx;
    int startCursor = TokenGetCursor(sc->tc);
    int repeatCursor = CURSOR_NOT_SET;
    while (rule.pattern[0] != '\0') {
        switch (rule.pattern[0]) {
            case 'T':
                expectedTok = TokenGetTypeFromStr(rule.pattern);
                foundTok = TokenFeed(sc->tc);
                if (foundTok.type != tokType) {
                    s.type = SNTX_NOT_FOUND;
                    s.errorTok = tok;
                    if (optional) {
                        TokenUnfeed(sc->tc);
                        break;
                    }
                    else if (started) {
                        ErrMsgUnexpectedToken((tok, TokenStrFromType(expected)));
                        TokenFeedUntil(sc->tc, lastPatternPart(rule.pattern));
                        return s;
                    }
                    else {
                        TokenSetCursor(sc->tc, startCursor);
                        return s;
                    }
                }
                if (mayRepeat && *nextPatternPart(rule.pattern) == '$') {
                    TokenSetCursor(sc->tc, repeatCursor);
                }
                ListAdd(&s.parts, &foundTok);
                break;

            case 'S':
                expectedSntx = syntaxGetTypeFromStr(rule.pattern);
                foundSntx = ParseRule(sc, rules[(rule.pattern)], started);
                if (foundSntx.type != expectedSntx) {
                    s.type = SNTX_NOT_FOUND;
                    s.errorTok = tok;
                    if (optional) {
                        TokenUnfeed(sc->tc);
                        break;
                    }
                    else if (started) {
                        ErrMsgUnexpectedToken((foundSntx.errorTok, syntaxStrFromType(syntaxType)));
                        TokenFeedUntil(sc->tc, lastPatternPart(rule.pattern));
                        return s;
                    }
                    else {
                        TokenSetCursor(sc->tc, startCursor);
                        return s;
                    }
                }
                if (mayRepeat && *nextPatternPart(rule.pattern) == '$') {
                    TokenSetCursor(sc->tc, repeatCursor);
                }
                ListAdd(&s.parts, &foundSntx);
                break;
            //case '&': optionalAtLeastOne = true; break;
            case '*':
                      repeatCursor = TokenGetCursor(sc->tc);
                      mayRepeat = true;
                      break;

            case '$':
                      repeatCursor = CURSOR_NOT_SET;
                      optional = false;
                      mayRepeat = false;
                      break;

            case '?': optional = true; break;
            case '!': started = true; break;
            default: ErrorBugFound();
        }
        rule.pattern = nextPatternPart(rule.pattern);
    }
}

void ParseSyntax(char* fileName) {
    SyntaxCtx sc = MallocOrCrash(sizeof(struct syntaxContext));
    sc->tc = TokenizeFile(fileName);
    sc->syntax = ListInit(sizeof(struct syntax));
}
