#ifndef TOKEN_H
#define TOKEN_H

#include "util.h"

typedef struct tokenContext* TokenCtx;

enum tokenType {
    TOK_NONE = 0, //to indicate EOF and no token; set to zero to guarantee array indexing
    TOK_BOOL_LIT,
    TOK_INT_LIT,
    TOK_FLOAT_LIT,
    TOK_CHAR_LIT,
    TOK_STR_LIT,
    TOK_IDEN,
    TOK_IF,
    TOK_ELSE,
    TOK_COMPIF,
    TOK_COMPELSE,
    TOK_TRY,
    TOK_CATCH,
    TOK_RET,
    TOK_DONE,
    TOK_CRASH,
    TOK_ASSERT, //"assert EXPR" - a statement, takes its operand directly like "return" does, not a
                //function call - see the report
    TOK_FOR,
    TOK_DO,
    TOK_WHILE,
    TOK_MATCH,
    TOK_CASE,
    TOK_NOMATCH,
    TOK_TYPE,
    TOK_STRUCT,
    TOK_VOCAB,
    TOK_FUNC,
    TOK_ERROR,
    TOK_MUT,
    TOK_OWN, //an expression evaluating to the enclosing function's own private scope, usable anywhere a
             //"scope"-typed value is expected - see the report
    TOK_IMPORT,
    TOK_TEST,
    TOK_DESTRUCT, //struct destructor block - "destruct { ... }", trailing a "struct(params) { ... }"
                  //constructor-bearing type declaration - see the report
    TOK_ADD,
    TOK_SUB,
    TOK_MUL,
    TOK_DIV,
    TOK_MOD,
    TOK_COMMA,
    TOK_DOT,
    TOK_STMNT_END, //synthetic only - see asiTriggerType in token.c; ';' is not valid syntax and has no literal form
    TOK_QSNTMRK,
    TOK_ASS,
    TOK_ASS_INFER, //":=" - declares a new variable with its type read off the (required-to-be-literal)
                    //initializer, instead of stated explicitly - see SNTX_VAR_DECL/SNTX_FOR_INIT
    TOK_ASS_ADD,
    TOK_ASS_SUB,
    TOK_ASS_MUL,
    TOK_ASS_DIV,
    TOK_ASS_MOD,
    TOK_ASS_AND,
    TOK_ASS_OR,
    TOK_ASS_XOR,
    TOK_ASS_BTSFT_L,
    TOK_ASS_BTSFT_R,
    TOK_ASS_BTWSE_AND,
    TOK_ASS_BTWSE_OR,
    TOK_ASS_BTWSE_XOR,
    TOK_INC,
    TOK_DEC,
    TOK_EQ,
    TOK_NOT,
    TOK_NEQ,
    TOK_AND,
    TOK_OR,
    TOK_XOR,
    TOK_LST,
    TOK_LSE,
    TOK_GRT,
    TOK_GRE,
    TOK_BTWSE_AND,
    TOK_BTWSE_OR,
    TOK_BTWSE_XOR,
    TOK_BTWSE_INV,
    TOK_BTSFT_L,
    TOK_BTSFT_R,
    TOK_PAREN_O,
    TOK_PAREN_C,
    TOK_SQUARE_O,
    TOK_SQUARE_C,
    TOK_CURLY_O,
    TOK_CURLY_C
};

struct token {
    enum tokenType type;
    struct str str;
    int lineNr;
    int tokId;
    TokenCtx owner; //filled in when added into the ctx
};

TokenCtx TokenizeFile(char* fileName);
struct str TokenGetFileName(TokenCtx tc);
bool isLetter(char c);
bool isDigit(char c);
struct token TokenFeed(TokenCtx tc);
struct token TokenFeedUntil(TokenCtx tc, enum tokenType type);
void TokenFeedPast(TokenCtx tc, enum tokenType type);
void TokenUnfeed(TokenCtx tc);
int TokenGetStrStart(struct token tok);
int TokenGetLineStart(TokenCtx tc, int charIdx);
int TokenGetLineEnd(TokenCtx tc, int charIdx);
char TokenGetChar(TokenCtx tc, int charIdx);
struct token TokenMerge(struct token head, struct token tail);
struct token TokenMergeFromListRange(struct list l, int start, int end);
struct token TokenMergeFromList(struct list l);
int TokenGetCursor(TokenCtx tc);
void TokenSetCursor(TokenCtx tc, int cursor);
int TokenGetCharCursor(TokenCtx tc);
int TokenGetLineNr(TokenCtx tc);
char* TokenStrFromType(enum tokenType type);

#endif //TOKEN_H
