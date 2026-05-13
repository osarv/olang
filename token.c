#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "token.h"
#include "util.h"
#include "list.h"

static int tokIdCtr = 0;

int tokIdCtrCount() {
    return tokIdCtr++;
}

struct tokenContext {
    struct str fileName;
    struct list chars;
    int charLineNr;
    struct list tokens;

};

bool isValidChar(char c) {
    if (c == '\n') return true;
    if (c == '\t') return true;
    if (c <= 31) return false;
    if (c >= 127) return false;
    return true;
}

char feedChar(TokenCtx tc) {
    char c = *(char*)ListFeed(&tc->chars);
    if (c == '\n') tc->charLineNr++;
    return c;
}

void unfeedChar(TokenCtx tc) {
    ListUnfeed(&tc->chars);
    if (tc->chars.len <= 0) ErrorBugFound();
    if (*(char*)ListPeek(&tc->chars) == '\n') tc->charLineNr--;
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
    StrGetAsCStr(tc->fileName, buffer);
    FILE* fp = fopen(buffer, "r");
    if (!fp) ErrorUnableToOpenFile(buffer);

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
            case '#': discardComment(tc); break;
            case '\n': break;
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
    else SyntaxErrorLastFedChar(tc, INVALID_ESCAPE_CHAR);
}

bool tokenizeCharInStringLiteral(TokenCtx tc) {
    char c = feedChar(tc);
    if (c == '\\') tokenizeEscapeChar(tc, true);
    else if (c == '\n') {
        SyntaxErrorLastFedChar(tc, NEWLINE_BEFORE_CLOSING_OF_CHAR_LITERAL);
        return true;
    }
    else if (c == '"') return true;
    return false;
}


void tokenizeCharLiteral(TokenCtx tc) {
    char c = feedChar(tc);
    switch (c) {
        case '\n': SyntaxErrorLastFedChar(tc, NEWLINE_BEFORE_CLOSING_OF_CHAR_LITERAL); return;
        case '\'': SyntaxErrorLastFedChar(tc, EMPTY_CHAR_LITERAL); return;
        case '\\': tokenizeEscapeChar(tc, false); break;
        default: break;
    }
    if (feedChar(tc) == '\'') return;
    SyntaxErrorLastFedChar(tc, EXPECTED_CLOSING_CHAR_LITERAL);
    char* str = "'\n";
    feedUntilIncludingOneOfCharsOrEOF(tc, str);
}

void tokenizeStringLiteral(TokenCtx tc) {
    while (!tokenizeCharInStringLiteral(tc));
}

enum tokenType tokenizePlus(TokenCtx tc) {
    if (tryFeedChar(tc, '+')) return TOKEN_INCREMENT;
    if (tryFeedChar(tc, '=')) return TOKEN_ASSIGNMENT_ADD;
    return TOKEN_ADD;
}

enum tokenType tokenizeHyphen(TokenCtx tc) {
    if (tryFeedChar(tc, '-')) return TOKEN_DECREMENT;
    if (tryFeedChar(tc, '=')) return TOKEN_ASSIGNMENT_SUB;
    return TOKEN_SUB;
}

enum tokenType tokenizeEqualSign(TokenCtx tc) {
    enum tokenType type = TOKEN_ASSIGNMENT;
    if (tryFeedChar(tc, '=')) type = TOKEN_EQUAL;
    if (tryFeedChar(tc, '=')) type = TOKEN_ASSIGNMENT_EQUAL;
    return type;
}

enum tokenType tokenizeAsterisk(TokenCtx tc) {
    if (tryFeedChar(tc, '=')) return TOKEN_ASSIGNMENT_MUL;
    return TOKEN_MUL;
}

enum tokenType tokenizeSlash(TokenCtx tc) {
    if (tryFeedChar(tc, '=')) return TOKEN_ASSIGNMENT_DIV;
    return TOKEN_DIV;
}

enum tokenType tokenizePercentSign(TokenCtx tc) {
    if (tryFeedChar(tc, '=')) return TOKEN_ASSIGNMENT_MODULO;
    return TOKEN_MODULO;
}

enum tokenType tokenizeExclamation(TokenCtx tc) {
    enum tokenType type = TOKEN_NOT;
    if (tryFeedChar(tc, '=')) type = TOKEN_NOT_EQUAL;
    if (tryFeedChar(tc, '=')) type = TOKEN_ASSIGNMENT_NOT_EQUAL;
    return type;
}

enum tokenType tokenizeLessThan(TokenCtx tc) {
    enum tokenType type = TOKEN_LESS_THAN;
    if (tryFeedChar(tc, '=')) return TOKEN_LESS_THAN_OR_EQUAL;
    if (tryFeedChar(tc, '<')) type = TOKEN_BITSHIFT_LEFT;
    if (tryFeedChar(tc, '=')) type = TOKEN_ASSIGNMENT_BITSHIFT_LEFT;
    return type;
}

enum tokenType tokenizeGreaterThan(TokenCtx tc) {
    enum tokenType type = TOKEN_GREATER_THAN;
    if (tryFeedChar(tc, '=')) return TOKEN_GREATER_THAN_OR_EQUAL;
    if (tryFeedChar(tc, '>')) type = TOKEN_BITSHIFT_RIGHT;
    if (tryFeedChar(tc, '=')) type = TOKEN_ASSIGNMENT_BITSHIFT_RIGHT;
    return type;
}

enum tokenType tokenizeAmpersand(TokenCtx tc) {
    enum tokenType type = TOKEN_BITWISE_AND;
    if (tryFeedChar(tc, '=')) return TOKEN_ASSIGNMENT_BITWISE_AND;
    if (tryFeedChar(tc, '&')) type = TOKEN_AND;
    if (tryFeedChar(tc, '=')) type = TOKEN_ASSIGNMENT_AND;
    return type;
}

enum tokenType tokenizeVBar(TokenCtx tc) {
    enum tokenType type = TOKEN_BITWISE_OR;
    if (tryFeedChar(tc, '=')) return TOKEN_ASSIGNMENT_BITWISE_OR;
    if (tryFeedChar(tc, '|')) type = TOKEN_OR;
    if (tryFeedChar(tc, '=')) type = TOKEN_ASSIGNMENT_OR;
    return type;
}

enum tokenType tokenizeCaret(TokenCtx tc) {
    enum tokenType type = TOKEN_BITWISE_XOR;
    if (tryFeedChar(tc, '=')) return TOKEN_ASSIGNMENT_BITWISE_XOR;
    if (tryFeedChar(tc, '^')) type = TOKEN_XOR;
    if (tryFeedChar(tc, '=')) type = TOKEN_ASSIGNMENT_XOR;
    return type;
}

bool isSubIdentifer(char* start, char* subId) {
    int subIdLen = strlen(subId);
    if (!strncmp(start, subId, subIdLen)) return true;
    return false;
}

enum tokenType tokenizeIdentifier(TokenCtx tc) {
    char* start = (char*)tc->chars.ptr + tc->chars.cursor -1;
    while (isIdentifierBodyChar(feedChar(tc)));
    unfeedChar(tc);

    if (isSubIdentifer(start, "if")) return TOKEN_IF;
    else if (isSubIdentifer(start, "else")) return TOKEN_ELSE;
    else if (isSubIdentifer(start, "for")) return TOKEN_FOR;
    else if (isSubIdentifer(start, "compif")) return TOKEN_COMPIF;
    else if (isSubIdentifer(start, "compelse")) return TOKEN_COMPELSE;
    else if (isSubIdentifer(start, "return")) return TOKEN_RETURN;
    else if (isSubIdentifer(start, "exit")) return TOKEN_EXIT;
    else if (isSubIdentifer(start, "match")) return TOKEN_MATCH;
    else if (isSubIdentifer(start, "nomatch")) return TOKEN_NOMATCH;
    else if (isSubIdentifer(start, "case")) return TOKEN_CASE;
    else if (isSubIdentifer(start, "type")) return TOKEN_TYPE;
    else if (isSubIdentifer(start, "struct")) return TOKEN_STRUCT;
    else if (isSubIdentifer(start, "vocab")) return TOKEN_VOCAB;
    else if (isSubIdentifer(start, "error")) return TOKEN_ERROR;
    else if (isSubIdentifer(start, "func")) return TOKEN_FUNC;
    else if (isSubIdentifer(start, "mut")) return TOKEN_MUT;
    else if (isSubIdentifer(start, "import")) return TOKEN_IMPORT;
    else if (isSubIdentifer(start, "true")) return TOKEN_BOOL_LITERAL;
    else if (isSubIdentifer(start, "false")) return TOKEN_BOOL_LITERAL;
    return TOKEN_IDENTIFIER;
}

enum tokenType tokenizeNumberLiteral(TokenCtx tc) {
    int nDots = 0;
    char c = feedChar(tc);
    bool lastWasDecimal = false;
    while (isDigit(c) || c == '.') {
        if (c == '.') {
            nDots++;
            if (nDots > 1) SyntaxErrorLastFedChar(tc, MULTIPLE_DECIMAL_POINTS);
            lastWasDecimal = true;
        }
        else lastWasDecimal = false;
        c = feedChar(tc);
    }
    unfeedChar(tc);
    if (lastWasDecimal) SyntaxErrorLastFedChar(tc, LAST_WAS_DECIMAL_POINT);
    if (nDots == 0) return TOKEN_INT_LITERAL;
    return TOKEN_FLOAT_LITERAL;
}

struct token tokenizeToken(TokenCtx tc) {
    struct token tok;
    tok.str.ptr = (char*)tc->chars.ptr + tc->chars.cursor;
    tok.lineNr = tc->charLineNr;

    char c = feedChar(tc);
    if (isLetter(c) || c == '_') tok.type = tokenizeIdentifier(tc);
    else if (isDigit(c)) tok.type = tokenizeNumberLiteral(tc);
    else switch (c) {
        case '\'': tok.type = TOKEN_CHAR_LITERAL; tokenizeCharLiteral(tc); break;
        case '"': tok.type = TOKEN_STRING_LITERAL; tokenizeStringLiteral(tc); break;
        case '+': tok.type = tokenizePlus(tc); break;
        case '-': tok.type = tokenizeHyphen(tc); break;
        case '=': tok.type = tokenizeEqualSign(tc); break;
        case '*': tok.type = tokenizeAsterisk(tc); break;
        case '/': tok.type = tokenizeSlash(tc); break;
        case '%': tok.type = tokenizePercentSign(tc); break;
        case '!': tok.type = tokenizeExclamation(tc); break;
        case '<': tok.type = tokenizeLessThan(tc); break;
        case '>': tok.type = tokenizeGreaterThan(tc); break;
        case '&': tok.type = tokenizeAmpersand(tc); break;
        case '|': tok.type = tokenizeVBar(tc); break;
        case '^': tok.type = tokenizeCaret(tc); break;
        case ',': tok.type = TOKEN_COMMA; break;
        case '.': tok.type = TOKEN_DOT; break;
        case ';': tok.type = TOKEN_SEMICOLON; break;
        case '?': tok.type = TOKEN_QUESTIONMARK; break;
        case '~': tok.type = TOKEN_BITWISE_COMPLEMENT; break;
        case '(': tok.type = TOKEN_PAREN_OPEN; break;
        case ')': tok.type = TOKEN_PAREN_CLOSE; break;
        case '[': tok.type = TOKEN_SQUARE_OPEN; break;
        case ']': tok.type = TOKEN_SQUARE_CLOSE; break;
        case '{': tok.type = TOKEN_CURLY_OPEN; break;
        case '}': tok.type = TOKEN_CURLY_CLOSE; break;
        default: SyntaxErrorLastFedChar(tc, UNKNOWN_SYMBOL);
    }
    tok.str.len = (char*)tc->chars.ptr + tc->chars.cursor - tok.str.ptr;
    tok.owner = tc;
    tok.tokId = tokIdCtrCount();
    return tok;
}

void tokenizeTokensFromChars(TokenCtx tc) {
    while (*(char*)ListPeek(&tc->chars) != '\0') {
        if (!findNextTokStart(tc)) break;
        struct token tok = tokenizeToken(tc);
        ListAdd(&tc->tokens, &tok);
    }
}

TokenCtx TokenizeFile(char* fileName) {
    TokenCtx tc = MallocOrCrash(sizeof(*tc));
    CheckAllocPtr(tc);
    *tc = (struct tokenContext){0};
    tc->chars = ListInit(sizeof(char));
    tc->tokens = ListInit(sizeof(struct token));
    tc->charLineNr = 1;
    tc->fileName = fileName;

    readChars(tc);
    tokenizeTokensFromChars(tc);
    return tc;
}

struct str TokenGetFileName(TokenCtx tc) {
    if (!tc) return (struct str){0};
    return tc->fileName;
}

struct token TokenFeed(TokenCtx tc) {
    struct token* tokPtr = ListFeed(&tc->tokens);
    if (!tokPtr) return TokenEOF(tc);
    return *tokPtr;
}

void TokenFeedPast(TokenCtx tc, enum tokenType type) {
    struct token tok = TokenFeed(tc);
    while (tok.type != type && tok.type != TOKEN_EOF) tok = TokenFeed(tc);
}

void TokenUnfeed(TokenCtx tc) {
    ListUnfeed(&tc->tokens);
    if (tc->tokens.len <= 0) ErrorBugFound();
}

struct token TokenMerge(struct token head, struct token tail) {
    if (head.owner != tail.owner) ErrorBugFound();
    head.type = TOKEN_MERGE;
    head.str = StrMerge(head.str, tail.str);
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
    return tc->tokens.cursor;
}

void TokenSetCursor(TokenCtx tc, int cursor) {
    ListSetCursor(&tc->tokens, cursor);
}

enum tokenGetTypeFromStrCmp(char* str, char* pattern) {
    for (int i = 0; i < strlen(pattern); i++) {
        if (str[i] != pattern[i]) return false;
    }
    return true;
}

enum tokenType TokenGetTypeFromStr(char* str) {
    if (tokenGetTypeFromStrCmp(str, "TOKEN_EOF")) return TOKEN_EOF;
    if (tokenGetTypeFromStrCmp(str, "TOK_BOOL_LIT")) return TOK_BOOL_LIT;
    if (tokenGetTypeFromStrCmp(str, "TOK_INT_LIT")) return TOK_INT_LIT;
    if (tokenGetTypeFromStrCmp(str, "TOK_FLOAT_LIT")) return TOK_INT_LIT;
    if (tokenGetTypeFromStrCmp(str, "TOK_CHAR_LIT")) return TOK_CHAR_LIT
    if (tokenGetTypeFromStrCmp(str, "TOK_STR_LIT")) return TOK_STR_LIT;
    if (tokenGetTypeFromStrCmp(str, "TOK_IDEN")) return TOK_IDEN;
    if (tokenGetTypeFromStrCmp(str, "TOK_IF")) return TOK_IF;
    if (tokenGetTypeFromStrCmp(str, "TOK_ELSE")) return TOK_ELSE;
    if (tokenGetTypeFromStrCmp(str, "TOK_COMPIF")) return TOK_COMPIF;
    if (tokenGetTypeFromStrCmp(str, "TOK_COMPELSE")) return TOK_COMPELSE;
    if (tokenGetTypeFromStrCmp(str, "TOK_RET")) return TOK_RET;
    if (tokenGetTypeFromStrCmp(str, "TOK_EXIT")) return TOK_EXIT;
    if (tokenGetTypeFromStrCmp(str, "TOK_FOR")) return TOK_FOR;
    if (tokenGetTypeFromStrCmp(str, "TOK_MATCH")) return TOK_MATCH;
    if (tokenGetTypeFromStrCmp(str, "TOK_CASE")) return TOK_CASE;
    if (tokenGetTypeFromStrCmp(str, "TOK_NOMATCH")) return TOK_NOMATCH;
    if (tokenGetTypeFromStrCmp(str, "TOK_TYPE")) return TOK_TYPE;
    if (tokenGetTypeFromStrCmp(str, "TOK_STRUCT")) return TOK_STRUCT;
    if (tokenGetTypeFromStrCmp(str, "TOK_VOCAB")) return TOK_VOCAB;
    if (tokenGetTypeFromStrCmp(str, "TOK_FUNC")) return TOK_FUNC;
    if (tokenGetTypeFromStrCmp(str, "TOK_ERROR")) return TOK_ERROR;
    if (tokenGetTypeFromStrCmp(str, "TOK_MUT")) return TOK_MUT;
    if (tokenGetTypeFromStrCmp(str, "TOK_IMPORT")) return TOK_IMPORT;
    if (tokenGetTypeFromStrCmp(str, "TOK_ADD")) return TOK_ADD;
    if (tokenGetTypeFromStrCmp(str, "TOK_SUB")) return TOK_SUB;
    if (tokenGetTypeFromStrCmp(str, "TOK_MUL")) return TOK_MUL;
    if (tokenGetTypeFromStrCmp(str, "TOK_DIV")) return TOK_DIV;
    if (tokenGetTypeFromStrCmp(str, "TOK_MOD")) return TOK_MOD;
    if (tokenGetTypeFromStrCmp(str, "TOK_COMMA")) return TOK_COMMA;
    if (tokenGetTypeFromStrCmp(str, "TOK_DOT")) return TOK_DOT;
    if (tokenGetTypeFromStrCmp(str, "TOK_SCOLON")) return TOK_SCOLON;
    if (tokenGetTypeFromStrCmp(str, "TOK_QSNTMRK")) return TOK_QSNTMRK;
    if (tokenGetTypeFromStrCmp(str, "TOK_ASS")) return TOK_ASS;
    if (tokenGetTypeFromStrCmp(str, "TOK_ASS_ADD")) return TOK_ASS_ADD;
    if (tokenGetTypeFromStrCmp(str, "TOK_ASS_SUB")) return TOK_ASS_SUB;
    if (tokenGetTypeFromStrCmp(str, "TOK_ASS_MUL")) return TOK_ASS_MUL;
    if (tokenGetTypeFromStrCmp(str, "TOK_ASS_DIV")) return TOK_ASS_DIV;
    if (tokenGetTypeFromStrCmp(str, "TOK_ASS_MOD")) return TOK_ASS_MOD;
    if (tokenGetTypeFromStrCmp(str, "TOK_ASS_AND")) return TOK_ASS_AND;
    if (tokenGetTypeFromStrCmp(str, "TOK_ASS_OR")) return TOK_ASS_OR;
    if (tokenGetTypeFromStrCmp(str, "TOK_ASS_XOR")) return TOK_ASS_XOR;
    if (tokenGetTypeFromStrCmp(str, "TOK_ASS_BTSFT_L")) return TOK_ASS_BTSFT_L;
    if (tokenGetTypeFromStrCmp(str, "TOK_ASS_BTSFT_R")) return TOK_ASS_BTSFT_R;
    if (tokenGetTypeFromStrCmp(str, "TOK_ASS_BTWSE_AND")) return TOK_ASS_BTWSE_AND;
    if (tokenGetTypeFromStrCmp(str, "TOK_ASS_BTWSE_OR")) return TOK_ASS_BTWSE_OR;
    if (tokenGetTypeFromStrCmp(str, "TOK_ASS_BTWSE_XOR")) return TOK_ASS_BTWSE_XOR;
    if (tokenGetTypeFromStrCmp(str, "TOK_INC")) return TOK_INC;
    if (tokenGetTypeFromStrCmp(str, "TOK_DEC")) return TOK_DEC;
    if (tokenGetTypeFromStrCmp(str, "TOK_EQ")) return TOK_EQ;
    if (tokenGetTypeFromStrCmp(str, "TOK_NOT")) return TOK_NOT;
    if (tokenGetTypeFromStrCmp(str, "TOK_NEQ")) return TOK_NEQ;
    if (tokenGetTypeFromStrCmp(str, "TOK_AND")) return TOK_AND;
    if (tokenGetTypeFromStrCmp(str, "TOK_OR")) return TOK_OR;
    if (tokenGetTypeFromStrCmp(str, "TOK_XOR")) return TOK_XOR;
    if (tokenGetTypeFromStrCmp(str, "TOK_LST")) return TOK_LST;
    if (tokenGetTypeFromStrCmp(str, "TOK_LSE")) return TOK_LSE;
    if (tokenGetTypeFromStrCmp(str, "TOK_GRT")) return TOK_GRT;
    if (tokenGetTypeFromStrCmp(str, "TOK_GRE")) return TOK_GRE;
    if (tokenGetTypeFromStrCmp(str, "TOK_BTWSE_AND")) return TOK_BTWSE_AND;
    if (tokenGetTypeFromStrCmp(str, "TOK_BTWSE_OR")) return TOK_BTWSE_OR;
    if (tokenGetTypeFromStrCmp(str, "TOK_BTWSE_OR")) return TOK_BTWSE_OR;
    if (tokenGetTypeFromStrCmp(str, "TOK_BTWSE_XOR")) return TOK_BTWSE_XOR;
    if (tokenGetTypeFromStrCmp(str, "TOK_BTWSE_INV")) return TOK_BTWSE_INV;
    if (tokenGetTypeFromStrCmp(str, "TOK_BTSFT_L")) return TOK_BTSFT_L;
    if (tokenGetTypeFromStrCmp(str, "TOK_BTSFT_R")) return TOK_BTSFT_R;
    if (tokenGetTypeFromStrCmp(str, "TOK_PAREN_O")) return TOK_PAREN_O;
    if (tokenGetTypeFromStrCmp(str, "TOK_PAREN_C")) return TOK_PAREN_C;
    if (tokenGetTypeFromStrCmp(str, "TOK_SQUARE_O")) return TOK_SQUARE_O;
    if (tokenGetTypeFromStrCmp(str, "TOK_SQUARE_C")) return TOK_SQUARE_C;
    if (tokenGetTypeFromStrCmp(str, "TOK_CURLY_O")) return TOK_CURLY_O;
    if (tokenGetTypeFromStrCmp(str, "TOK_CURLY_C")) return TOK_CURLY_C;
    ErrorBugFound();
    return TOKEN_NONE;
}
