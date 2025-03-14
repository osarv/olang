#ifndef ERROR_H
#define ERROR_H

#include "token.h"
#include "parser.h"

//error message strings
#define EXPECTED_TYPE_DEFINITION "expected type definition"
#define EXPECTED_TYPE_NAME "expected type name"
#define EXPECTED_VAR_NAME "expected variable name"
#define EXPECTED_CLOSING_SQUARE_BRACKET "expected \"]\""
#define EXPECTED_CLOSING_CURLY_OR_COMMA "expected \"}\" or \",\""
#define EXPECTED_CLOSING_PAREN_OR_COMMA "expected \")\" or \",\""
#define EXPECTED_FILE_NAME "expected file name"
#define EXPECTED_VOCAB_WORD "expected vocabulary word"
#define TYPE_NAME_IN_USE "type already name in use"
#define VAR_NAME_IN_USE "variable already name in use"
#define WORD_ALREADY_IN_USE "word already in use"
#define INVALID_ARRAY_SIZE "invalid array size"
#define UNKNOWN_SYMBOL "unknown symbol"
#define INVALID_ESCAPE_CHAR "invalid escape character"
#define NEWLINE_BEFORE_CLOSING_OF_CHAR_LITERAL "newline before closing of character literal"
#define EMPTY_CHAR_LITERAL "empty character literal"
#define EXPECTED_CLOSING_CHAR_LITERAL "expected closing of character literal"
#define MULTIPLE_DECIMAL_POINTS "mutliple decimal points"

void FinishCompilation();
void CheckAllocPtr(void* ptr);
void ErrorBugFound();
void ErrorUnableToOpenFile(char* fileName);
void SyntaxErrorLastFedChar(TokenCtx tc, char* errMsg); //NULL errMsg is defined
void SyntaxErrorInvalidToken(struct token tok, char* errMsg); //NULL errMsg is defined

#endif //ERROR_H
