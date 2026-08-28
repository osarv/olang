#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "token.h"
#include "util.h"
#include "list.h"
#include "errmsg.h"

struct tokRule {
    enum tokenType type;
    char* pattern;
    char* description; //NULL = same as pattern
};

/* $& = any of the following (space separated literal alternatives)
 * $a = any number of the one thing that follows (can be made several with $&)
 * $d = digits
 * $l = letters including underscore
 * $c = any character
 * a rule with no $ is matched literally, char for char
 * indexed by enum value */
struct tokRule tokRules[] = {
    {TOK_NONE, "", "EOF"}, //description only used when TOK_NONE is EOF
    {TOK_BOOL_LIT, "$& true false", "bool literal"},
    {TOK_INT_LIT, "$a $d", "int literal"},
    {TOK_FLOAT_LIT, "$a $d . $a $d", "float literal"},
    {TOK_CHAR_LIT, "' $c '", "char literal"},
    {TOK_STR_LIT, "\" $a $c \"", "string literal"},
    {TOK_IDEN, "$l $a $& $l $d", "identifier"},
    {TOK_IF, "if", NULL},
    {TOK_ELSE, "else", NULL},
    {TOK_COMPIF, "compif", NULL},
    {TOK_COMPELSE, "compelse", NULL},
    {TOK_TRY, "try", NULL},
    {TOK_CATCH, "catch", NULL},
    {TOK_RET, "return", NULL},
    {TOK_EXIT, "exit", NULL},
    {TOK_FOR, "for", NULL},
    {TOK_DO, "do", NULL},
    {TOK_WHILE, "while", NULL},
    {TOK_MATCH, "match", NULL},
    {TOK_CASE, "case", NULL},
    {TOK_NOMATCH, "nomatch", NULL},
    {TOK_TYPE, "type", NULL},
    {TOK_STRUCT, "struct", NULL},
    {TOK_VOCAB, "vocab", NULL},
    {TOK_FUNC, "func", NULL},
    {TOK_ERROR, "error", NULL},
    {TOK_MUT, "mut", NULL},
    {TOK_IMPORT, "import", NULL},
    {TOK_ADD, "+", NULL},
    {TOK_SUB, "-", NULL},
    {TOK_MUL, "*", NULL},
    {TOK_DIV, "/", NULL},
    {TOK_MOD, "%", NULL},
    {TOK_COMMA, ",", NULL},
    {TOK_DOT, ".", NULL},
    {TOK_STMNT_END, "", "end of statement"}, //no literal form - only ever synthesized, see stmntEndTriggerType
    {TOK_QSNTMRK, "?", NULL},
    {TOK_ASS, "=", NULL},
    {TOK_ASS_ADD, "+=", NULL},
    {TOK_ASS_SUB, "-=", NULL},
    {TOK_ASS_MUL, "*=", NULL},
    {TOK_ASS_DIV, "/=", NULL},
    {TOK_ASS_MOD, "%=", NULL},
    {TOK_ASS_AND, "&&=", NULL},
    {TOK_ASS_OR, "||=", NULL},
    {TOK_ASS_XOR, "^^=", NULL},
    {TOK_ASS_BTSFT_L, "<<=", NULL},
    {TOK_ASS_BTSFT_R, ">>=", NULL},
    {TOK_ASS_BTWSE_AND, "&=", NULL},
    {TOK_ASS_BTWSE_OR, "|=", NULL},
    {TOK_ASS_BTWSE_XOR, "^=", NULL},
    {TOK_INC, "++", NULL},
    {TOK_DEC, "--", NULL},
    {TOK_EQ, "==", NULL},
    {TOK_NOT, "!", NULL},
    {TOK_NEQ, "!=", NULL},
    {TOK_AND, "&&", NULL},
    {TOK_OR, "||", NULL},
    {TOK_XOR, "^^", NULL},
    {TOK_LST, "<", NULL},
    {TOK_LSE, "<=", NULL},
    {TOK_GRT, ">", NULL},
    {TOK_GRE, ">=", NULL},
    {TOK_BTWSE_AND, "&", NULL},
    {TOK_BTWSE_OR, "|", NULL},
    {TOK_BTWSE_XOR, "^", NULL},
    {TOK_BTWSE_INV, "~", NULL},
    {TOK_BTSFT_L, "<<", NULL},
    {TOK_BTSFT_R, ">>", NULL},
    {TOK_PAREN_O, "(", NULL},
    {TOK_PAREN_C, ")", NULL},
    {TOK_SQUARE_O, "[", NULL},
    {TOK_SQUARE_C, "]", NULL},
    {TOK_CURLY_O, "{", NULL},
    {TOK_CURLY_C, "}", NULL}
};

#define N_TOK_RULES ((int)(sizeof(tokRules) / sizeof(tokRules[0])))

static int tokIdCtr = 0;

int tokIdCtrCount() {
    return tokIdCtr++;
}

struct tokenContext {
    struct str fileName;
    struct list chars;
    int charIdx;
    int charLineNr;
    struct list tokens;
    int tokIdx;
    enum tokenType lastTokType; //for implicit statement-end synthesis, see stmntEndTriggerType
    bool sawNewline;            //for implicit statement-end synthesis, see stmntEndTriggerType
};

char feedChar(TokenCtx tc) {
    char c = *(char*)ListGetIdx(&tc->chars, tc->charIdx);
    tc->charIdx++;
    if (c == '\n') tc->charLineNr++;
    return c;
}

void unfeedChar(TokenCtx tc) {
    tc->charIdx--;
    if (tc->charIdx < 0) ErrorBugFound();
    if (*(char*)ListGetIdx(&tc->chars, tc->charIdx) == '\n') tc->charLineNr--;
}

bool tryFeedChar(TokenCtx tc, char c) {
    char fed = feedChar(tc);
    if (fed != c) {
        unfeedChar(tc);
        return false;
    }
    return true;
}

void readChars(TokenCtx tc) {
    char buffer[tc->fileName.len +1];
    StrToCStr(tc->fileName, buffer);
    FILE* fp = fopen(buffer, "r");
    if (!fp) ErrMsgUnableToOpenFile(tc->fileName);

    int c;
    while ((c = fgetc(fp)) != EOF) ListAdd(&tc->chars, &c);
    c = '\0';
    ListAdd(&tc->chars, &c);
    tc->charLineNr = 1;
}

bool isLetter(char c) {
    if (c >= 'A' && c <= 'Z') return true;
    if (c >= 'a' && c <= 'z') return true;
    return false;
}

bool isDigit(char c) {
    if (c >= '0' && c <= '9') return true;
    return false;
}

bool isIdentifierBodyChar(char c) {
    if (isLetter(c)) return true;
    if (isDigit(c)) return true;
    if (c == '_') return true;
    return false;
}

void feedUntilIncludingOneOfCharsOrEOF(TokenCtx tc, char* toFind) {
    char c;
    bool run = true;
    while (run && (c = feedChar(tc)) != '\0') {
        for (int i = 0; i < (int)strlen(toFind); i++) {
            if (c == toFind[i]) run = false;
        }
    }
}

void discardComment(TokenCtx tc) {
    char* str = "\n";
    feedUntilIncludingOneOfCharsOrEOF(tc, str);
}

bool findNextTokStart(TokenCtx tc) {
    while (true) {
        char c = feedChar(tc);
        switch (c) {
            case '#': discardComment(tc); tc->sawNewline = true; break; //a comment runs to the end of its line
            case '\n': tc->sawNewline = true; break;
            case '\t': break;
            case ' ': break;
            case '\0': return false;
            default: unfeedChar(tc); return true;
        }
    }
}

void tokenizeEscapeChar(TokenCtx tc, bool inString) {
    char c = feedChar(tc);
    if (c == 'n');
    else if (c == 't');
    else if (c == '\\');
    else if (inString && c == '\"');
    else if (!inString && c == '\'');
    else ErrMsgUnexpectedChar(tc, INVALID_ESCAPE_CHAR);
}

bool tokenizeCharInStringLiteral(TokenCtx tc) {
    char c = feedChar(tc);
    if (c == '\\') tokenizeEscapeChar(tc, true);
    else if (c == '\n') {
        ErrMsgUnexpectedChar(tc, NEWLINE_BEFORE_CLOSING_OF_CHAR_LITERAL);
        return true;
    }
    else if (c == '"') return true;
    return false;
}

void tokenizeCharLiteral(TokenCtx tc) {
    char c = feedChar(tc);
    switch (c) {
        case '\n': ErrMsgUnexpectedChar(tc, NEWLINE_BEFORE_CLOSING_OF_CHAR_LITERAL); return;
        case '\'': ErrMsgUnexpectedChar(tc, EMPTY_CHAR_LITERAL); return;
        case '\\': tokenizeEscapeChar(tc, false); break;
        default: break;
    }
    if (feedChar(tc) == '\'') return;
    ErrMsgUnexpectedChar(tc, EXPECTED_CLOSING_CHAR_LITERAL);
    char* str = "'\n";
    feedUntilIncludingOneOfCharsOrEOF(tc, str);
}

void tokenizeStringLiteral(TokenCtx tc) {
    while (!tokenizeCharInStringLiteral(tc));
}

//returns the char right after the next space in pattern, or NULL if pattern has no more parts
char* nextTokPatternPart(char* pattern) {
    for (int i = 0; pattern[i] != '\0'; i++) {
        if (pattern[i] == ' ') return pattern +i +1;
    }
    return NULL;
}

//true if word matches one of the literal alternatives described by pattern ($& ...), or the whole literal pattern itself
bool tokRuleMatchesWord(char* pattern, char* word, int wordLen) {
    if (pattern[0] == '$' && pattern[1] != '&') return false; //char-class rule, not a literal word
    if (pattern[0] == '$') pattern = nextTokPatternPart(pattern); //skip past "$&"

    while (pattern) {
        char* next = nextTokPatternPart(pattern);
        int partLen = next ? (int)(next - pattern -1) : (int)strlen(pattern);
        if (partLen == wordLen && !strncmp(pattern, word, wordLen)) return true;
        pattern = next;
    }
    return false;
}

enum tokenType tokenLookupWord(char* word, int wordLen) {
    for (int i = 0; i < N_TOK_RULES; i++) {
        if (tokRuleMatchesWord(tokRules[i].pattern, word, wordLen)) return tokRules[i].type;
    }
    return TOK_IDEN;
}

enum tokenType tokenizeIdentifier(TokenCtx tc) {
    char* start = (char*)tc->chars.ptr + tc->charIdx -1;
    while (isIdentifierBodyChar(feedChar(tc)));
    unfeedChar(tc);
    int len = (int)(((char*)tc->chars.ptr + tc->charIdx) - start);
    return tokenLookupWord(start, len);
}

enum tokenType tokenizeNumberLiteral(TokenCtx tc) {
    int nDots = 0;
    char c = feedChar(tc);
    bool lastWasDecimal = false;
    while (isDigit(c) || c == '.') {
        if (c == '.') {
            nDots++;
            if (nDots > 1) ErrMsgUnexpectedChar(tc, MULTIPLE_DECIMAL_POINTS);
            lastWasDecimal = true;
        }
        else lastWasDecimal = false;
        c = feedChar(tc);
    }
    unfeedChar(tc);
    if (lastWasDecimal) ErrMsgUnexpectedChar(tc, LAST_WAS_DECIMAL_POINT);
    if (nDots == 0) return TOK_INT_LIT;
    return TOK_FLOAT_LIT;
}

//returns the number of chars pattern matches starting at startIdx, or -1 if it doesn't match
int tokPatternMatchLen(TokenCtx tc, int startIdx, char* pattern) {
    int len = (int)strlen(pattern);
    for (int i = 0; i < len; i++) {
        if (startIdx +i >= tc->chars.len) return -1;
        if (*(char*)ListGetIdx(&tc->chars, startIdx +i) != pattern[i]) return -1;
    }
    return len;
}

bool isPlainLiteralPattern(char* pattern) {
    return pattern[0] != '\0' && pattern[0] != '$';
}

//matches the longest literal operator/punctuation rule starting at the char just fed
enum tokenType tokenizeOperator(TokenCtx tc) {
    int startIdx = tc->charIdx -1;
    enum tokenType bestType = TOK_NONE;
    int bestLen = 0;

    for (int i = 0; i < N_TOK_RULES; i++) {
        char* pattern = tokRules[i].pattern;
        if (!isPlainLiteralPattern(pattern)) continue;
        if (isLetter(pattern[0])) continue; //keywords are matched via tokenLookupWord

        int len = tokPatternMatchLen(tc, startIdx, pattern);
        if (len > bestLen) {
            bestLen = len;
            bestType = tokRules[i].type;
        }
    }

    if (bestLen == 0) {
        ErrMsgUnexpectedChar(tc, UNKNOWN_SYMBOL);
        return TOK_NONE;
    }
    for (int i = 1; i < bestLen; i++) feedChar(tc); //first char of the match was already fed by the caller
    return bestType;
}

struct token tokenizeToken(TokenCtx tc) {
    struct token tok;
    tok.str.ptr = (char*)tc->chars.ptr + tc->charIdx;
    tok.lineNr = tc->charLineNr;

    char c = feedChar(tc);
    if (isLetter(c) || c == '_') tok.type = tokenizeIdentifier(tc);
    else if (isDigit(c)) tok.type = tokenizeNumberLiteral(tc);
    else if (c == '\'') { tok.type = TOK_CHAR_LIT; tokenizeCharLiteral(tc); }
    else if (c == '"') { tok.type = TOK_STR_LIT; tokenizeStringLiteral(tc); }
    else tok.type = tokenizeOperator(tc);

    tok.str.len = (char*)tc->chars.ptr + tc->charIdx - tok.str.ptr;
    tok.owner = tc;
    tok.tokId = tokIdCtrCount();
    return tok;
}

/* Statements are never terminated by a character - there is no ';' in olang. Instead, a newline (or a
 * comment, which runs to one) right after a token that could legally end a statement implicitly closes
 * it, by synthesizing an invisible TOK_STMNT_END. This is exactly the set of tokens the grammar's own
 * TOK_STMNT_END positions can follow: literals/identifiers, ++/--, closing ')'/']', and the bare
 * no-value forms of return/exit. It deliberately excludes '}' - no rule in the grammar ever expects a
 * TOK_STMNT_END after one - so blocks, struct/vocab bodies, and if/for/match never need it.
 * As with any such scheme (Go's automatic semicolon insertion works the same way), an operator meant to
 * continue an expression must stay at the end of the previous line, not the start of the next
 * (`1 +\n2` works, `1\n+ 2` does not). */
bool stmntEndTriggerType(enum tokenType type) {
    switch (type) {
        case TOK_IDEN: case TOK_INT_LIT: case TOK_FLOAT_LIT: case TOK_CHAR_LIT:
        case TOK_STR_LIT: case TOK_BOOL_LIT:
        case TOK_INC: case TOK_DEC:
        case TOK_PAREN_C: case TOK_SQUARE_C:
        case TOK_RET: case TOK_EXIT:
            return true;
        default: return false;
    }
}

struct token synthesizeStmntEnd(TokenCtx tc) {
    struct token tok = {0};
    tok.type = TOK_STMNT_END;
    tok.str.ptr = (char*)tc->chars.ptr + tc->charIdx;
    tok.lineNr = tc->charLineNr;
    tok.owner = tc;
    tok.tokId = tokIdCtrCount();
    return tok;
}

void tokenizeTokensFromChars(TokenCtx tc) {
    while (*(char*)ListGetIdx(&tc->chars, tc->charIdx) != '\0') {
        tc->sawNewline = false;
        if (!findNextTokStart(tc)) break;
        if (tc->sawNewline && stmntEndTriggerType(tc->lastTokType)) {
            struct token stmntEnd = synthesizeStmntEnd(tc);
            ListAdd(&tc->tokens, &stmntEnd);
        }

        struct token tok = tokenizeToken(tc);
        tc->lastTokType = tok.type;
        ListAdd(&tc->tokens, &tok);
    }
}

TokenCtx TokenizeFile(char* fileName) {
    TokenCtx tc = MallocOrCrash(sizeof(*tc));
    *tc = (struct tokenContext){0};
    tc->chars = ListInit(sizeof(char));
    tc->charIdx = 0;
    tc->charLineNr = 1;
    tc->tokens = ListInit(sizeof(struct token));
    tc->tokIdx = 0;
    tc->fileName = StrFromCStr(fileName);

    readChars(tc);
    tokenizeTokensFromChars(tc);
    return tc;
}

struct str TokenGetFileName(TokenCtx tc) {
    if (!tc) return (struct str){0};
    return tc->fileName;
}

struct token tokenEOF(TokenCtx tc) {
    struct token tok = {0};
    tok.type = TOK_NONE;
    tok.str.ptr = (char*)tc->chars.ptr + tc->chars.len -1;
    tok.str.len = 0;
    tok.lineNr = tc->charLineNr;
    tok.owner = tc;
    tok.tokId = tokIdCtrCount();
    return tok;
}

struct token TokenFeed(TokenCtx tc) {
    if (tc->tokIdx >= tc->tokens.len) return tokenEOF(tc);
    struct token* tokPtr = ListGetIdx(&tc->tokens, tc->tokIdx);
    tc->tokIdx++;
    return *tokPtr;
}

struct token TokenFeedUntil(TokenCtx tc, enum tokenType type) {
    struct token tok = TokenFeed(tc);
    while (tok.type != type && tok.type != TOK_NONE) tok = TokenFeed(tc);
    return tok;
}

void TokenFeedPast(TokenCtx tc, enum tokenType type) {
    TokenFeedUntil(tc, type);
}

void TokenUnfeed(TokenCtx tc) {
    if (tc->tokIdx <= 0) ErrorBugFound();
    tc->tokIdx--;
}

int TokenGetStrStart(struct token tok) {
    return (int)(tok.str.ptr - (char*)tok.owner->chars.ptr);
}

int TokenGetLineStart(TokenCtx tc, int charIdx) {
    int i = charIdx -1;
    while (i >= 0 && *(char*)ListGetIdx(&tc->chars, i) != '\n') i--;
    return i;
}

int TokenGetLineEnd(TokenCtx tc, int charIdx) {
    int i = charIdx;
    while (i < tc->chars.len -1 && *(char*)ListGetIdx(&tc->chars, i) != '\n') i++;
    return i;
}

char TokenGetChar(TokenCtx tc, int charIdx) {
    if (charIdx < 0 || charIdx >= tc->chars.len) return '\0';
    return *(char*)ListGetIdx(&tc->chars, charIdx);
}

int TokenGetCharCursor(TokenCtx tc) {
    return tc->charIdx;
}

int TokenGetLineNr(TokenCtx tc) {
    return tc->charLineNr;
}

struct token TokenMerge(struct token head, struct token tail) {
    if (head.owner != tail.owner) ErrorBugFound();
    head.str.len = (int)(tail.str.ptr + tail.str.len - head.str.ptr);
    head.tokId = tokIdCtrCount();
    return head;
}

struct token TokenMergeFromListRange(struct list l, int start, int end) {
    if (start > end) ErrorBugFound();
    if (start < 0) ErrorBugFound();
    if (end > l.len) ErrorBugFound();
    struct token head = *(struct token*)ListGetIdx(&l, start);
    struct token tail = *(struct token*)ListGetIdx(&l, end -1);
    return TokenMerge(head, tail);
}

struct token TokenMergeFromList(struct list l) {
    struct token head = *(struct token*)ListGetIdx(&l, 0);
    struct token tail = *(struct token*)ListGetIdx(&l, l.len -1);
    return TokenMerge(head, tail);
}

int TokenGetCursor(TokenCtx tc) {
    return tc->tokIdx;
}

void TokenSetCursor(TokenCtx tc, int cursor) {
    tc->tokIdx = cursor;
}

bool tokenTypeStrCmp(char* str, char* pattern) {
    return !strcmp(str, pattern);
}

enum tokenType TokenTypeFromStr(char* str) {
    if (tokenTypeStrCmp(str, "TOK_NONE")) return TOK_NONE;
    if (tokenTypeStrCmp(str, "TOK_BOOL_LIT")) return TOK_BOOL_LIT;
    if (tokenTypeStrCmp(str, "TOK_INT_LIT")) return TOK_INT_LIT;
    if (tokenTypeStrCmp(str, "TOK_FLOAT_LIT")) return TOK_FLOAT_LIT;
    if (tokenTypeStrCmp(str, "TOK_CHAR_LIT")) return TOK_CHAR_LIT;
    if (tokenTypeStrCmp(str, "TOK_STR_LIT")) return TOK_STR_LIT;
    if (tokenTypeStrCmp(str, "TOK_IDEN")) return TOK_IDEN;
    if (tokenTypeStrCmp(str, "TOK_IF")) return TOK_IF;
    if (tokenTypeStrCmp(str, "TOK_ELSE")) return TOK_ELSE;
    if (tokenTypeStrCmp(str, "TOK_COMPIF")) return TOK_COMPIF;
    if (tokenTypeStrCmp(str, "TOK_COMPELSE")) return TOK_COMPELSE;
    if (tokenTypeStrCmp(str, "TOK_TRY")) return TOK_TRY;
    if (tokenTypeStrCmp(str, "TOK_CATCH")) return TOK_CATCH;
    if (tokenTypeStrCmp(str, "TOK_RET")) return TOK_RET;
    if (tokenTypeStrCmp(str, "TOK_EXIT")) return TOK_EXIT;
    if (tokenTypeStrCmp(str, "TOK_FOR")) return TOK_FOR;
    if (tokenTypeStrCmp(str, "TOK_DO")) return TOK_DO;
    if (tokenTypeStrCmp(str, "TOK_WHILE")) return TOK_WHILE;
    if (tokenTypeStrCmp(str, "TOK_MATCH")) return TOK_MATCH;
    if (tokenTypeStrCmp(str, "TOK_CASE")) return TOK_CASE;
    if (tokenTypeStrCmp(str, "TOK_NOMATCH")) return TOK_NOMATCH;
    if (tokenTypeStrCmp(str, "TOK_TYPE")) return TOK_TYPE;
    if (tokenTypeStrCmp(str, "TOK_STRUCT")) return TOK_STRUCT;
    if (tokenTypeStrCmp(str, "TOK_VOCAB")) return TOK_VOCAB;
    if (tokenTypeStrCmp(str, "TOK_FUNC")) return TOK_FUNC;
    if (tokenTypeStrCmp(str, "TOK_ERROR")) return TOK_ERROR;
    if (tokenTypeStrCmp(str, "TOK_MUT")) return TOK_MUT;
    if (tokenTypeStrCmp(str, "TOK_IMPORT")) return TOK_IMPORT;
    if (tokenTypeStrCmp(str, "TOK_ADD")) return TOK_ADD;
    if (tokenTypeStrCmp(str, "TOK_SUB")) return TOK_SUB;
    if (tokenTypeStrCmp(str, "TOK_MUL")) return TOK_MUL;
    if (tokenTypeStrCmp(str, "TOK_DIV")) return TOK_DIV;
    if (tokenTypeStrCmp(str, "TOK_MOD")) return TOK_MOD;
    if (tokenTypeStrCmp(str, "TOK_COMMA")) return TOK_COMMA;
    if (tokenTypeStrCmp(str, "TOK_DOT")) return TOK_DOT;
    if (tokenTypeStrCmp(str, "TOK_STMNT_END")) return TOK_STMNT_END;
    if (tokenTypeStrCmp(str, "TOK_QSNTMRK")) return TOK_QSNTMRK;
    if (tokenTypeStrCmp(str, "TOK_ASS_ADD")) return TOK_ASS_ADD;
    if (tokenTypeStrCmp(str, "TOK_ASS_SUB")) return TOK_ASS_SUB;
    if (tokenTypeStrCmp(str, "TOK_ASS_MUL")) return TOK_ASS_MUL;
    if (tokenTypeStrCmp(str, "TOK_ASS_DIV")) return TOK_ASS_DIV;
    if (tokenTypeStrCmp(str, "TOK_ASS_MOD")) return TOK_ASS_MOD;
    if (tokenTypeStrCmp(str, "TOK_ASS_AND")) return TOK_ASS_AND;
    if (tokenTypeStrCmp(str, "TOK_ASS_OR")) return TOK_ASS_OR;
    if (tokenTypeStrCmp(str, "TOK_ASS_XOR")) return TOK_ASS_XOR;
    if (tokenTypeStrCmp(str, "TOK_ASS_BTSFT_L")) return TOK_ASS_BTSFT_L;
    if (tokenTypeStrCmp(str, "TOK_ASS_BTSFT_R")) return TOK_ASS_BTSFT_R;
    if (tokenTypeStrCmp(str, "TOK_ASS_BTWSE_AND")) return TOK_ASS_BTWSE_AND;
    if (tokenTypeStrCmp(str, "TOK_ASS_BTWSE_OR")) return TOK_ASS_BTWSE_OR;
    if (tokenTypeStrCmp(str, "TOK_ASS_BTWSE_XOR")) return TOK_ASS_BTWSE_XOR;
    if (tokenTypeStrCmp(str, "TOK_ASS")) return TOK_ASS;
    if (tokenTypeStrCmp(str, "TOK_INC")) return TOK_INC;
    if (tokenTypeStrCmp(str, "TOK_DEC")) return TOK_DEC;
    if (tokenTypeStrCmp(str, "TOK_EQ")) return TOK_EQ;
    if (tokenTypeStrCmp(str, "TOK_NOT")) return TOK_NOT;
    if (tokenTypeStrCmp(str, "TOK_NEQ")) return TOK_NEQ;
    if (tokenTypeStrCmp(str, "TOK_AND")) return TOK_AND;
    if (tokenTypeStrCmp(str, "TOK_OR")) return TOK_OR;
    if (tokenTypeStrCmp(str, "TOK_XOR")) return TOK_XOR;
    if (tokenTypeStrCmp(str, "TOK_LST")) return TOK_LST;
    if (tokenTypeStrCmp(str, "TOK_LSE")) return TOK_LSE;
    if (tokenTypeStrCmp(str, "TOK_GRT")) return TOK_GRT;
    if (tokenTypeStrCmp(str, "TOK_GRE")) return TOK_GRE;
    if (tokenTypeStrCmp(str, "TOK_BTWSE_AND")) return TOK_BTWSE_AND;
    if (tokenTypeStrCmp(str, "TOK_BTWSE_OR")) return TOK_BTWSE_OR;
    if (tokenTypeStrCmp(str, "TOK_BTWSE_XOR")) return TOK_BTWSE_XOR;
    if (tokenTypeStrCmp(str, "TOK_BTWSE_INV")) return TOK_BTWSE_INV;
    if (tokenTypeStrCmp(str, "TOK_BTSFT_L")) return TOK_BTSFT_L;
    if (tokenTypeStrCmp(str, "TOK_BTSFT_R")) return TOK_BTSFT_R;
    if (tokenTypeStrCmp(str, "TOK_PAREN_O")) return TOK_PAREN_O;
    if (tokenTypeStrCmp(str, "TOK_PAREN_C")) return TOK_PAREN_C;
    if (tokenTypeStrCmp(str, "TOK_SQUARE_O")) return TOK_SQUARE_O;
    if (tokenTypeStrCmp(str, "TOK_SQUARE_C")) return TOK_SQUARE_C;
    if (tokenTypeStrCmp(str, "TOK_CURLY_O")) return TOK_CURLY_O;
    if (tokenTypeStrCmp(str, "TOK_CURLY_C")) return TOK_CURLY_C;
    ErrorBugFound();
    return TOK_NONE;
}

char* TokenStrFromType(enum tokenType type) {
    return tokRules[type].description ? tokRules[type].description : tokRules[type].pattern;
}
