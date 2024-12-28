#ifndef TOKEN_H
#define TOKEN_H

typedef struct tokenContext* TokenCtx;

enum tokenType {
    TOKEN_EOF,
    TOKEN_INT_LITERAL,
    TOKEN_FLOAT_LITERAL,
    TOKEN_CHAR_LITERAL,
    TOKEN_STRING_LITERAL,
    TOKEN_IDENTIFIER,
    TOKEN_IF,
    TOKEN_ELSE,
    TOKEN_FOR,
    TOKEN_ADD,
    TOKEN_SUB,
    TOKEN_MUL,
    TOKEN_DIV,
    TOKEN_INCREMENT,
    TOKEN_DECREMENT,
    TOKEN_ASSIGNMENT_ADD,
    TOKEN_ASSIGNMENT_SUB,
    TOKEN_ASSIGNMENT_MUL,
    TOKEN_ASSIGNMENT_DIV,
    TOKEN_ASSIGMENT_EQUAL,
    TOKEN_EQUAL,
    TOKEN_NOT,
    TOKEN_NOT_EQUAL,
    TOKEN_AND,
    TOKEN_OR,
    TOKEN_LESS_THAN,
    TOKEN_LESS_THAN_OR_EQUAL,
    TOKEN_GREATER_THAN,
    TOKEN_GREATER_THAN_OR_EQUAL,
    TOKEN_BITWISE_AND,
    TOKEN_BITWISE_OR,
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
    char* ptr;
    int len;
    int lineNr;
    int index; //filled in when added into the ctx
};

TokenCtx TokenizeFile(char* fileName);
int TokenGetCharCursor(TokenCtx tc);
char TokenGetChar(TokenCtx tc, int index);
char* TokenGetFileName(TokenCtx tc);
int TokenGetLineNrLastFedChar(TokenCtx tc);
int TokenGetPrevNewline(TokenCtx tc, int cursor); //returns first index on none found
int TokenGetNextOrThisNewline(TokenCtx tc, int cursor); //returns last index on none found

#endif //TOKEN_H
