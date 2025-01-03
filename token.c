#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "token.h"
#include "error.h"

struct tokenContext {
    char* fileName;

    char* chars;
    int charLen;
    int charCap;
    int charCursor;
    int charLineNr;

    struct token* tokens;
    int tokLen;
    int tokCap;
    int tokCursor;
};

bool isValidChar(char c) {
    if (c == '\n') return true;
    if (c == '\t') return true;
    if (c <= 31) return false;
    if (c >= 127) return false;
    return true;
}

char feedChar(TokenCtx tc) {
    char c = tc->chars[tc->charCursor];
    tc->charCursor++;
    return c;
}

void unfeedChar(TokenCtx tc) {
    if (tc->charCursor <= 0) ErrorBugFound();
    tc->charCursor--;
}

bool tryFeedChar(TokenCtx tc, char c) {
    char fed = feedChar(tc);
    if (fed != c) {
        unfeedChar(tc);
        return false;
    }
    return true;
}

#define CHAR_ALLOC_STEP 1000
void addChar(TokenCtx tc, char c) {
    if (tc->charLen >= tc->charCap) {
        tc->charCap += CHAR_ALLOC_STEP;
        tc->chars = realloc(tc->chars, sizeof(char) * tc->charCap);
        CheckAllocPtr(tc->chars);
    }
    tc->chars[tc->charLen] = c;
    tc->charLen++;
}

void readChars(TokenCtx tc) {
    FILE* fp = fopen(tc->fileName, "r");
    if (!fp) ErrorUnableToOpenFile(tc->fileName);

    int c;
    while ((c = fgetc(fp)) != EOF) {
        addChar(tc, (char)c);
        if (c == '\n') tc->charLineNr++;
    }
    addChar(tc, '\0');
    for (int i = 0; i < tc->charLen -1; i++) {
        if (!isValidChar(feedChar(tc))) SyntaxErrorLastFedChar(tc, "unknown symbol");
    }
    tc->charCursor = 0;
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

void discardComment(TokenCtx tc) {
    while (feedChar(tc) != '\n');
}

bool findNextTokStart(TokenCtx tc) {
    char c = feedChar(tc);
    while (c == ' ' || c == '\t' || c == '\n' || c == '#') {
        if (c == '#') discardComment(tc);
        if (c == '\n') tc->charLineNr++;
        c = feedChar(tc);
        if (c == '\0') return false;
    }
    unfeedChar(tc);
    return true;
}

void parseEscapeChar(TokenCtx tc, bool inString) {
    char c = feedChar(tc);
    if (c == 'n');
    else if (c == 't');
    else if (c == '\\');
    else if (inString && c == '\"');
    else if (!inString && c == '\'');
    else SyntaxErrorLastFedChar(tc, "invalid escape character");
}

bool parseCharInCharLiteral(TokenCtx tc) {
    char c = feedChar(tc);
    if (c == '\\') {
        parseEscapeChar(tc, false);
        return true;
    }
    else if (c == '\n') {
        SyntaxErrorLastFedChar(tc, "newline before closing of character literal");
        return false;
    }
    else if (c == '\'') {
        SyntaxErrorLastFedChar(tc, "empty character literal");
        return false;
    }
    return true;
}

bool parseCharInStringLiteral(TokenCtx tc) {
    char c = feedChar(tc);
    if (c == '\\') parseEscapeChar(tc, true);
    else if (c == '\n') {
        SyntaxErrorLastFedChar(tc, "newline before closing of character literal");
        return true;
    }
    else if (c == '"') return true;
    return false;
}


void parseCharLiteral(TokenCtx tc) {
    if (!parseCharInCharLiteral(tc)) return;
    if (feedChar(tc) != '\'') {
        SyntaxErrorLastFedChar(tc, "expected closing of character literal");
    }
}

void parseStringLiteral(TokenCtx tc) {
    while (!parseCharInStringLiteral(tc));
}

enum tokenType parsePlus(TokenCtx tc) {
    if (tryFeedChar(tc, '+')) return TOKEN_INCREMENT;
    if (tryFeedChar(tc, '=')) return TOKEN_ASSIGNMENT_ADD;
    return TOKEN_ADD;
}

enum tokenType parseHyphen(TokenCtx tc) {
    if (tryFeedChar(tc, '-')) return TOKEN_DECREMENT;
    if (tryFeedChar(tc, '=')) return TOKEN_ASSIGNMENT_SUB;
    return TOKEN_SUB;
}

enum tokenType parseAsterisk(TokenCtx tc) {
    if (tryFeedChar(tc, '=')) return TOKEN_ASSIGNMENT_MUL;
    return TOKEN_MUL;
}

enum tokenType parseSlash(TokenCtx tc) {
    if (tryFeedChar(tc, '=')) return TOKEN_ASSIGNMENT_DIV;
    return TOKEN_DIV;
}

enum tokenType parseExclamation(TokenCtx tc) {
    if (tryFeedChar(tc, '=')) return TOKEN_NOT_EQUAL;
    return TOKEN_NOT;
}

enum tokenType parseLessThan(TokenCtx tc) {
    if (tryFeedChar(tc, '=')) return TOKEN_LESS_THAN_OR_EQUAL;
    if (tryFeedChar(tc, '<')) return TOKEN_BITSHIFT_LEFT;
    return TOKEN_LESS_THAN;
}

enum tokenType parseGreaterThan(TokenCtx tc) {
    if (tryFeedChar(tc, '=')) return TOKEN_GREATER_THAN_OR_EQUAL;
    if (tryFeedChar(tc, '>')) return TOKEN_BITSHIFT_RIGHT;
    return TOKEN_GREATER_THAN;
}

enum tokenType parseAmpersand(TokenCtx tc) {
    if (tryFeedChar(tc, '&')) return TOKEN_AND;
    return TOKEN_BITWISE_AND;
}

enum tokenType parseVBar(TokenCtx tc) {
    if (tryFeedChar(tc, '|')) return TOKEN_OR;
    return TOKEN_BITWISE_OR;
}

enum tokenType parseIdentifier(TokenCtx tc) {
    char* start = tc->chars + tc->charCursor -1;
    while (isIdentifierBodyChar(feedChar(tc)));
    unfeedChar(tc);

    if (strcmp(start, "if")) return TOKEN_IF;
    else if (strcmp(start, "else")) return TOKEN_ELSE;
    else if (strcmp(start, "for")) return TOKEN_FOR;
    else if (strcmp(start, "type")) return TOKEN_TYPE;
    return TOKEN_IDENTIFIER;
}

enum tokenType parseNumberLiteral(TokenCtx tc) {
    int nDots = 0;
    char c = feedChar(tc);
    while (isDigit(c) || c == '.') {
        if (c == '.') nDots++;
        if (nDots > 1) SyntaxErrorLastFedChar(tc, "multiple decimal points");
    }
    unfeedChar(tc);
    if (nDots == 0) return TOKEN_INT_LITERAL;
    return TOKEN_FLOAT_LITERAL;
}

struct token parseToken(TokenCtx tc) {
    struct token tok;
    tok.startIdx = tc->charCursor;
    tok.lineNr = tc->charLineNr;
    enum tokenType type;

    char c = feedChar(tc);
    if (isLetter(c) || c == '_') type = parseIdentifier(tc);
    else if (isDigit(c)) type = parseNumberLiteral(tc);
    else switch (c) {
        case '\'': type = TOKEN_CHAR_LITERAL; parseCharLiteral(tc); break;
        case '"': type = TOKEN_STRING_LITERAL; parseStringLiteral(tc); break;
        case '+': type = parsePlus(tc); break;
        case '-': type = parseHyphen(tc); break;
        case '*': type = parseAsterisk(tc); break;
        case '/': type = parseSlash(tc); break;
        case '!': type = parseExclamation(tc); break;
        case '<': type = parseLessThan(tc); break;
        case '>': type = parseGreaterThan(tc); break;
        case '&': type = parseAmpersand(tc); break;
        case '|': type = parseVBar(tc); break;
        case '~': type = TOKEN_BITWISE_COMPLEMENT; break;
        case '(': type = TOKEN_PAREN_OPEN; break;
        case ')': type = TOKEN_PAREN_OPEN; break;
        case '[': type = TOKEN_SQUARE_BRACKET_OPEN; break;
        case ']': type = TOKEN_SQUARE_BRACKET_CLOSE; break;
        case '{': type = TOKEN_CURLY_BRACKET_OPEN; break;
        case '}': type = TOKEN_CURLY_BRACKET_CLOSE; break;
        default: SyntaxErrorLastFedChar(tc, "unexpected symbol");
    }
    tok.type = type;
    tok.endIdx = tc->charCursor;
    return tok;
}

#define TOK_ALLOC_STEP 1000
void tokenContextAdd(TokenCtx tc, struct token tok) {
    if (tc->tokLen <= tc->tokCap) {
        tc->tokCap += TOK_ALLOC_STEP;
        tc->tokens = realloc(tc->tokens, sizeof(struct token) * tc->tokCap);
        CheckAllocPtr(tc->tokens);
    }
    tok.tokListIdx = tc->tokLen;
    tok.owner = tc;
    tc->tokens[tc->tokLen] = tok;
    tc->tokLen++;
}

void parseTokensFromChars(TokenCtx tc) {
    while (tc->chars[tc->charCursor] != '\0') {
        if (!findNextTokStart(tc)) break;
        struct token tok = parseToken(tc);
        tokenContextAdd(tc, tok);
    }
}

struct token TokenEOF(TokenCtx tc) {
    struct token tok = (struct token){0};
    tok.type = TOKEN_EOF;
    tok.lineNr = tc->charLineNr;
    return tok;
}

TokenCtx TokenizeFile(char* fileName) {
    TokenCtx tc = calloc(sizeof(*tc), 1);
    CheckAllocPtr(tc);
    tc->charLineNr = 1;
    tc->fileName = fileName;

    readChars(tc);
    parseTokensFromChars(tc);
    tokenContextAdd(tc, TokenEOF(tc));
    return tc;
}

int TokenGetCharCursor(TokenCtx tc) {
    return tc->charCursor;
}

char TokenGetChar(TokenCtx tc, int index) {
    if (index < 0 || index >= tc->charLen) ErrorBugFound();
    return tc->chars[index];
}

char* TokenGetFileName(TokenCtx tc) {
    return tc->fileName;
}

int TokenGetLineNrLastFedChar(TokenCtx tc) {
    if (tc->chars[tc->charCursor] == '\n') return tc->charLineNr -1;
    return tc->charLineNr;
}

int TokenGetPrevNewline(TokenCtx tc, int cursor) { //returns first index on none found
    for (int i = cursor -1 ; i >= 0; i--) {
        if (tc->chars[i] == '\n') return i;
    }
    return -1;
}

int TokenGetNextOrThisNewline(TokenCtx tc, int cursor) { //returns last index on none found
    for (int i = cursor; i < tc->charLen; i++) {
        if (tc->chars[i] == '\n') return i;
    }
    return tc->charLen -1;
}

struct token TokenPeek(TokenCtx tc)  {
    if (tc->tokCursor >= tc->tokLen) ErrorBugFound();
    return tc->tokens[tc->tokCursor];
}

struct token TokenFeed(TokenCtx tc) {
    struct token tok = TokenPeek(tc);
    tc->tokCursor++;
    return tok;
}

void TokenUnfeed(TokenCtx tc) {
    if (tc->tokCursor <= 0) ErrorBugFound();
    tc->tokCursor--;
}
