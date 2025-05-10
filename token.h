#ifndef TOKEN_H
#define TOKEN_H

#include "str.h"

typedef struct tokenContext* TokenCtx;

enum tokenType {
    TOKEN_MERGE, //merge tokens have no type and can not be produced by the context
    TOKEN_EOF,
    TOKEN_BOOL_LITERAL,
    TOKEN_INT_LITERAL,
    TOKEN_FLOAT_LITERAL,
    TOKEN_CHAR_LITERAL,
    TOKEN_STRING_LITERAL,
    TOKEN_IDENTIFIER,
    TOKEN_IF,
    TOKEN_ELSE,
    TOKEN_COMPIF,
    TOKEN_COMPELSE,
    TOKEN_FOR,
    TOKEN_TYPE,
    TOKEN_STRUCT,
    TOKEN_VOCAB,
    TOKEN_FUNC,
    TOKEN_MUT,
    TOKEN_IMPORT,
    TOKEN_ADD,
    TOKEN_SUB,
    TOKEN_MUL,
    TOKEN_DIV,
    TOKEN_MODULO,
    TOKEN_COMMA,
    TOKEN_DOT,
    TOKEN_ASSIGNMENT,
    TOKEN_ASSIGNMENT_ADD,
    TOKEN_ASSIGNMENT_SUB,
    TOKEN_ASSIGNMENT_MUL,
    TOKEN_ASSIGNMENT_DIV,
    TOKEN_ASSIGNMENT_MODULO,
    TOKEN_ASSIGNMENT_EQUAL,
    TOKEN_ASSIGNMENT_NOT_EQUAL,
    TOKEN_ASSIGNMENT_AND,
    TOKEN_ASSIGNMENT_OR,
    TOKEN_ASSIGNMENT_XOR,
    TOKEN_ASSIGNMENT_BITSHIFT_LEFT,
    TOKEN_ASSIGNMENT_BITSHIFT_RIGHT,
    TOKEN_ASSIGNMENT_BITWISE_AND,
    TOKEN_ASSIGNMENT_BITWISE_OR,
    TOKEN_ASSIGNMENT_BITWISE_XOR,
    TOKEN_INCREMENT,
    TOKEN_DECREMENT,
    TOKEN_EQUAL,
    TOKEN_NOT,
    TOKEN_NOT_EQUAL,
    TOKEN_AND,
    TOKEN_OR,
    TOKEN_XOR,
    TOKEN_LESS_THAN,
    TOKEN_LESS_THAN_OR_EQUAL,
    TOKEN_GREATER_THAN,
    TOKEN_GREATER_THAN_OR_EQUAL,
    TOKEN_BITWISE_AND,
    TOKEN_BITWISE_OR,
    TOKEN_BITWISE_XOR,
    TOKEN_BITWISE_COMPLEMENT,
    TOKEN_BITSHIFT_LEFT,
    TOKEN_BITSHIFT_RIGHT,
    TOKEN_PAREN_OPEN,
    TOKEN_PAREN_CLOSE,
    TOKEN_SQUARE_BRACKET_OPEN,
    TOKEN_SQUARE_BRACKET_CLOSE,
    TOKEN_CURLY_BRACKET_OPEN,
    TOKEN_CURLY_BRACKET_CLOSE
};

struct token {
    enum tokenType type;
    struct str str;
    int lineNr;
    int tokId;
    TokenCtx owner; //filled in when added into the ctx
};

TokenCtx TokenizeFile(struct str fileName);
int TokenGetCharCursor(TokenCtx tc);
char TokenGetChar(TokenCtx tc, int index);
struct str TokenGetFileName(TokenCtx tc);
int TokenGetLineNrLastFedChar(TokenCtx tc);
int TokenGetPrevNewline(TokenCtx tc, int cursor); //returns first index on none found
int TokenGetNextOrThisNewline(TokenCtx tc, int cursor); //returns last index on none found
int TokenGetStrStart(TokenCtx tc, struct str str);
int TokenGetEOFIndex(TokenCtx tc);
struct token TokenPeek(TokenCtx);
struct token TokenFeed(TokenCtx tc);
void TokenFeedUntil(TokenCtx tc, enum tokenType type);
void TokenUnfeed(TokenCtx tc);
struct token TokenPrevious(TokenCtx tc);
void TokenReset(TokenCtx tc);
int TokenGetCursor(TokenCtx tc);
void TokenSetCursor(TokenCtx tc, int cursor);
struct token TokenMerge(struct token head, struct token tail);
char* TokenTypeToString(enum tokenType type);

#endif //TOKEN_H
