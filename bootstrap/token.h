#ifndef TOKEN_H
#define TOKEN_H

#include "util.h"

typedef struct tokenContext* TokenCtx;

enum tokenType {
    TOK_NONE = 0, //the end of the token stream, and "no token" from a parse that failed; never a token in the list -
                  //an unknown character is reported and dropped (L16); set to zero to guarantee array indexing
    TOK_BOOL_LIT,
    TOK_NULL_LIT, //"null" - the absent reference (T2a). A literal that adapts to any reference-shaped
                   //type, exactly as a numeric literal adapts to any numeric one, and is all-zero bits
    TOK_INT_LIT,
    TOK_FLOAT_LIT,
    TOK_CHAR_LIT,
    TOK_STR_LIT,
    TOK_IDEN,
    TOK_IF,
    TOK_ELSE,
    TOK_TRY,
    TOK_CATCH,
    TOK_RET,
    TOK_JOIN,  //"join { ... }" - a block that waits for every task spawned in it before it ends (P1)
    TOK_SPAWN, //"spawn <call>" - runs the call on a thread of its own, joined at the end of the enclosing join
                //block (P1)
    TOK_DEFER, //"defer STATEMENT" / "defer { ... }" - code run on every way out of the enclosing block (S19)
    TOK_BREAK,    //S11: leaves the innermost enclosing loop, closing every block scope it leaves
    TOK_CONTINUE, //S11: ends the current iteration, same unwinding
    TOK_ABORT,       //S16c: stop now, violently - no cleanup, a core dump, the OS's abort status
    TOK_UNREACHABLE, //S16d: control was believed never to get here; aborts if it does
    TOK_EXTENDS,     //T29f: "type Meters extends Int32" - the declared type inherits its base's methods and operators
    TOK_DONE,
    TOK_FAIL,
    TOK_ASSERT, //"assert EXPR" - a statement, takes its operand directly like "return" does, not a
                //function call - see the report
    TOK_FOR,
    TOK_DO,
    TOK_IN,    //"for x in a" (S9a)
    TOK_IS,    //"x is T" (E32)
    TOK_AS,    //"x as T" (E32)
    TOK_RANGE, //"for i in range end" / "range start, end [, step]" (S9b)
    TOK_MATCH,
    TOK_CASE,
    TOK_NOMATCH,
    TOK_TYPE,
    TOK_STRUCT,
    TOK_CHOICE, //"type Shape enum { ... }" - a closed set of alternatives, exactly one held at a time
    TOK_INTERFACE, //"type Shape trait { Area() F64 }" - method signatures, a constraint on a type variable only (T30)
    TOK_FUNC,
    TOK_ERROR,
    TOK_MUT,
    TOK_IMPORT,
    TOK_TEST,
    TOK_DESTRUCT, //struct destructor block - "destruct { ... }", trailing a "struct(params) { ... }"
                  //constructor-bearing type declaration - see the report
    TOK_EXTERN, //"extern fn NAME(params) [ret-type]" - a function defined elsewhere, resolved by the
                //linker at build time; no body, no error-list (X1)
    TOK_DEFAULT, //a call argument standing for the corresponding parameter's declared default (E14a),
                 //so a call can reach a later parameter without restating the values before it. Only
                 //ever valid as a direct call argument - never an expression of its own
    TOK_ADD,
    TOK_SUB,
    TOK_MUL,
    TOK_DIV,
    TOK_MOD,
    TOK_AT,    //E31: "@" - an operator with no built-in meaning, declared as a method
    TOK_COMMA,
    TOK_DOT,
    TOK_STMNT_END, //synthetic only - see asiTriggerType in token.c; ';' is not valid syntax and has no literal form
    TOK_QSNTMRK,
    TOK_ASS,
    TOK_COLON, //":" - separates a slice expression's bounds ("a[lo:hi]", E16a). Never anything else, so
                //maximal munch still gives ":=" its own token below.
    TOK_ASS_INFER, //":=" - declares a new variable with its type read off its initializer (D15) instead of
                    //stated explicitly - see SNTX_VAR_DECL/SNTX_FOR_INIT
    TOK_ASS_ADD,
    TOK_ASS_SUB,
    TOK_ASS_MUL,
    TOK_ASS_DIV,
    TOK_ASS_MOD,
    TOK_ASS_BTSFT_L,
    TOK_ASS_BTSFT_R,
    TOK_ASS_BTWSE_AND,
    TOK_ASS_BTWSE_OR,
    TOK_ASS_BTWSE_XOR,
    TOK_INC,
    TOK_DEC,
    TOK_EQ,
    TOK_ARROW, //S12b: "=>" - a match case's value
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
    TOK_STR_OF, //E11a: prefix "$", a value as text
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
bool TokenIfBeginsLine(TokenCtx tc, struct token t);
bool isLetter(char c);
bool isDigit(char c);
struct token TokenFeed(TokenCtx tc);
bool TokenSplitShiftRight(TokenCtx tc);
bool TokenSplitShiftLeft(TokenCtx tc);
int TokenEditMark(TokenCtx tc);
void TokenEditRewind(TokenCtx tc, int mark);
int TokenListVersion(TokenCtx tc);
void TokenUnfeed(TokenCtx tc);
int TokenGetStrStart(struct token tok);
int TokenGetLineStart(TokenCtx tc, int charIdx);
int TokenGetStrLen(struct token tok);
int TokenGetLineEnd(TokenCtx tc, int charIdx);
char TokenGetChar(TokenCtx tc, int charIdx);
int TokenGetCharCount(TokenCtx tc); //the file's bytes, and the '\0' after them
int TokenGetCursor(TokenCtx tc);
void TokenSetCursor(TokenCtx tc, int cursor);
int TokenGetCharCursor(TokenCtx tc);
int TokenGetLineNr(TokenCtx tc);
char* TokenStrFromType(enum tokenType type);
struct token TokenBefore(struct token t);
struct token TokenAfter(struct token t);

#endif //TOKEN_H
