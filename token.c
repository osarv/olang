#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "token.h"
#include "error.h"
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
    while ((c = fgetc(fp)) != EOF) {
        ListAdd(&tc->chars, &c);
        if (c == '\n') tc->charLineNr++;
    }
    c = '\0';
    ListAdd(&tc->chars, &c);
    for (int i = 0; i < tc->chars.len -1; i++) {
        if (!isValidChar(feedChar(tc))) SyntaxErrorLastFedChar(tc, UNKNOWN_SYMBOL);
    }
    ListResetCursor(&tc->chars);
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
    else if (isSubIdentifer(start, "match")) return TOKEN_MATCH;
    else if (isSubIdentifer(start, "matchall")) return TOKEN_MATCHALL;
    else if (isSubIdentifer(start, "is")) return TOKEN_IS;
    else if (isSubIdentifer(start, "type")) return TOKEN_TYPE;
    else if (isSubIdentifer(start, "struct")) return TOKEN_STRUCT;
    else if (isSubIdentifer(start, "vocab")) return TOKEN_VOCAB;
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
        case '~': tok.type = TOKEN_BITWISE_COMPLEMENT; break;
        case '(': tok.type = TOKEN_PAREN_OPEN; break;
        case ')': tok.type = TOKEN_PAREN_CLOSE; break;
        case '[': tok.type = TOKEN_SQUARE_BRACKET_OPEN; break;
        case ']': tok.type = TOKEN_SQUARE_BRACKET_CLOSE; break;
        case '{': tok.type = TOKEN_CURLY_BRACKET_OPEN; break;
        case '}': tok.type = TOKEN_CURLY_BRACKET_CLOSE; break;
        default: SyntaxErrorLastFedChar(tc, UNKNOWN_SYMBOL);
    }
    tok.str.len = (char*)tc->chars.ptr + tc->chars.cursor - tok.str.ptr;
    tok.owner = tc;
    return tok;
}

void tokenizeTokensFromChars(TokenCtx tc) {
    while (*(char*)ListPeek(&tc->chars) != '\0') {
        if (!findNextTokStart(tc)) break;
        struct token tok = tokenizeToken(tc);
        ListAdd(&tc->tokens, &tok);
    }
}

struct token TokenEOF(TokenCtx tc) {
    struct token tok = (struct token){0};
    tok.type = TOKEN_EOF;
    tok.lineNr = tc->charLineNr;
    tok.owner = tc;
    return tok;
}

TokenCtx TokenizeFile(struct str fileName) {
    TokenCtx tc = malloc(sizeof(*tc));
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

int TokenGetCharCursor(TokenCtx tc) {
    return tc->chars.cursor;
}

char TokenGetChar(TokenCtx tc, int index) {
    if (index < 0 || index >= tc->chars.len) ErrorBugFound();
    return *(char*)ListGetIdx(&tc->chars, index);
}

struct str TokenGetFileName(TokenCtx tc) {
    if (!tc) return (struct str){0};
    return tc->fileName;
}

int TokenGetLineNrLastFedChar(TokenCtx tc) {
    if (tc->chars.cursor -1 < 0) return 1;
    if (*(char*)ListPrevious(&tc->chars) == '\n') return tc->charLineNr -1;
    return tc->charLineNr;
}

int TokenGetPrevNewline(TokenCtx tc, int cursor) { //returns first index on none found
    for (int i = cursor -1 ; i >= 0; i--) {
        if (*(char*)ListGetIdx(&tc->chars, i) == '\n') return i;
    }
    return -1;
}

int TokenGetNextOrThisNewline(TokenCtx tc, int cursor) { //returns last index on none found
    for (int i = cursor; i < tc->chars.len; i++) {
        if (*(char*)ListGetIdx(&tc->chars, i) == '\n') return i;
    }
    return tc->chars.len -1;
}

int TokenGetStrStart(TokenCtx tc, struct str str) {
    return str.ptr - (char*)tc->chars.ptr;
}

int TokenGetEOFIndex(TokenCtx tc) {
    return tc->chars.len -1;
}

struct token TokenPeek(TokenCtx tc)  {
    struct token* tokPtr = ListPeek(&tc->tokens);
    if (!tokPtr) return TokenEOF(tc);
    return *tokPtr;
}

struct token TokenFeed(TokenCtx tc) {
    struct token* tokPtr = ListFeed(&tc->tokens);
    if (!tokPtr) return TokenEOF(tc);
    return *tokPtr;
}

void TokenFeedUntil(TokenCtx tc, enum tokenType type) {
    struct token tok = TokenFeed(tc);
    while (tok.type != type && tok.type != TOKEN_EOF) tok = TokenFeed(tc);
}

void TokenUnfeed(TokenCtx tc) {
    ListUnfeed(&tc->tokens);
    if (tc->tokens.len <= 0) ErrorBugFound();
}

struct token TokenPrevious(TokenCtx tc) {
    struct token* tokPtr = ListPrevious(&tc->tokens);
    if (!tokPtr) ErrorBugFound();
    return *tokPtr;
}

void TokenReset(TokenCtx tc) {
    ListResetCursor(&tc->tokens);
}

struct token TokenMerge(struct token head, struct token tail) {
    if (head.owner != tail.owner) ErrorBugFound();
    head.type = TOKEN_MERGE;
    head.str = StrMerge(head.str, tail.str);
    head.tokId = tokIdCtrCount();
    return head;
}

int TokenGetCursor(TokenCtx tc) {
    return tc->tokens.cursor;
}

void TokenSetCursor(TokenCtx tc, int cursor) {
    ListSetCursor(&tc->tokens, cursor);
}

char* TokenTypeToString(enum tokenType type) {
    switch(type) {
        case TOKEN_MERGE: ErrorBugFound(); break;
        case TOKEN_EOF: return "end of file";
        case TOKEN_BOOL_LITERAL: return "bool literal";
        case TOKEN_INT_LITERAL: return "int literal";
        case TOKEN_FLOAT_LITERAL: return "float literal";
        case TOKEN_CHAR_LITERAL: return "character literal";
        case TOKEN_STRING_LITERAL: return "string literal";
        case TOKEN_IDENTIFIER: return "identifier";
        case TOKEN_IF: return "if";
        case TOKEN_ELSE: return "else";
        case TOKEN_COMPIF: return "compif";
        case TOKEN_COMPELSE: return "compelse";
        case TOKEN_FOR: return "for";
        case TOKEN_MATCH: return "match";
        case TOKEN_MATCHALL: return "matchall";
        case TOKEN_IS: return "is";
        case TOKEN_TYPE: return "type";
        case TOKEN_STRUCT: return "struct";
        case TOKEN_VOCAB: return "vocab";
        case TOKEN_FUNC: return "func";
        case TOKEN_MUT: return "mut";
        case TOKEN_IMPORT: return "import";
        case TOKEN_ADD: return "+";
        case TOKEN_SUB: return "-";
        case TOKEN_MUL: return "*";
        case TOKEN_DIV: return "/";
        case TOKEN_MODULO: return "%";
        case TOKEN_COMMA: return ",";
        case TOKEN_DOT: return ".";
        case TOKEN_ASSIGNMENT: return "=";
        case TOKEN_ASSIGNMENT_ADD: return "+=";
        case TOKEN_ASSIGNMENT_SUB: return "-=";
        case TOKEN_ASSIGNMENT_MUL: return "*=";
        case TOKEN_ASSIGNMENT_DIV: return "/=";
        case TOKEN_ASSIGNMENT_MODULO: return "%=";
        case TOKEN_ASSIGNMENT_EQUAL: return "===";
        case TOKEN_ASSIGNMENT_NOT_EQUAL: return "!==";
        case TOKEN_ASSIGNMENT_AND: return "&&=";
        case TOKEN_ASSIGNMENT_OR: return "||=";
        case TOKEN_ASSIGNMENT_XOR: return "^^=";
        case TOKEN_ASSIGNMENT_BITSHIFT_LEFT: return "<<=";
        case TOKEN_ASSIGNMENT_BITSHIFT_RIGHT: return ">>=";
        case TOKEN_ASSIGNMENT_BITWISE_AND: return "&=";
        case TOKEN_ASSIGNMENT_BITWISE_OR: return "|=";
        case TOKEN_ASSIGNMENT_BITWISE_XOR: return "^=";
        case TOKEN_INCREMENT: return "++";
        case TOKEN_DECREMENT: return "--";
        case TOKEN_EQUAL: return "==";
        case TOKEN_NOT: return "!";
        case TOKEN_NOT_EQUAL: return "!=";
        case TOKEN_AND: return "&&";
        case TOKEN_OR: return "||";
        case TOKEN_XOR: return "^^";
        case TOKEN_LESS_THAN: return "<";
        case TOKEN_LESS_THAN_OR_EQUAL: return "<=";
        case TOKEN_GREATER_THAN: return ">";
        case TOKEN_GREATER_THAN_OR_EQUAL: return ">=";
        case TOKEN_BITWISE_AND: return "&";
        case TOKEN_BITWISE_OR: return "|";
        case TOKEN_BITWISE_XOR: return "^";
        case TOKEN_BITWISE_COMPLEMENT: return "~";
        case TOKEN_BITSHIFT_LEFT: return "<<";
        case TOKEN_BITSHIFT_RIGHT: return ">>";
        case TOKEN_PAREN_OPEN: return "(";
        case TOKEN_PAREN_CLOSE: return ")";
        case TOKEN_SQUARE_BRACKET_OPEN: return "[";
        case TOKEN_SQUARE_BRACKET_CLOSE: return "]";
        case TOKEN_CURLY_BRACKET_OPEN: return "{";
        case TOKEN_CURLY_BRACKET_CLOSE: return "}";
    }
    return "";
}
