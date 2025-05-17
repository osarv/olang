#ifndef ERROR_H
#define ERROR_H

#include "token.h"
#include "parser.h"
#include "var.h"
#include "operation.h"

//error message strings
#define EXPECTED_TYPE_DEFINITION "expected type definition"
#define EXPECTED_TYPE_NAME "expected type name"
#define EXPECTED_VAR_NAME "expected variable name"
#define EXPECTED_OPENING_CURLY "expected \"{\""
#define EXPECTED_CLOSING_CURLY "expected \"}\""
#define EXPECTED_CLOSING_SQUARE_BRACKET "expected \"]\""
#define EXPECTED_CLOSING_PAREN "expected \")\""
#define EXPECTED_CLOSING_CURLY_OR_COMMA "expected \"}\" or \",\""
#define EXPECTED_CLOSING_PAREN_OR_COMMA "expected \")\" or \",\""
#define EXPECTED_FILE_NAME "expected file name"
#define EXPECTED_VOCAB_WORD "expected vocabulary word"
#define EXPECTED_FILE_ALIAS "expected file alias"
#define UNKNOWN_TYPE "unknown type"
#define UNKNOWN_VAR "unknown variable"
#define UNKNOWN_FILE_ALIAS "unknown file alias"
#define TYPE_NAME_IN_USE "type already name in use"
#define VAR_NAME_IN_USE "variable already name in use"
#define WORD_ALREADY_IN_USE "word already in use"
#define INVALID_ARRAY_SIZE "invalid array size"
#define UNKNOWN_SYMBOL "unknown symbol"
#define INVALID_ESCAPE_CHAR "invalid escape character"
#define NEWLINE_BEFORE_CLOSING_OF_CHAR_LITERAL "newline before closing of character literal"
#define EMPTY_CHAR_LITERAL "empty character literal"
#define EXPECTED_CLOSING_CHAR_LITERAL "expected closing of character literal"
#define MULTIPLE_DECIMAL_POINTS "multiple decimal points"
#define LAST_WAS_DECIMAL_POINT "float literals may not end in a decimal point"
#define STRUCT_NOT_YET_DEFINED "this struct has not yet been defined"
#define TYPE_IS_PRIVATE "this type is private"
#define VAR_IS_PRIVATE "this variable is private"
#define FUNC_ARG_PUBLIC "function arguments may not be declared public"
#define OPERATION_REQUIRES_INT "operand must be an integer"
#define OPERATION_REQUIRES_NUMBER "operand must be a number"
#define OPERATION_REQUIRES_BOOL "operand must be a boolean"
#define OPERATION_REQUIRES_BYTE_OR_INT "operand must be byte or integer"
#define OPERANDS_NOT_SAME_TYPE "operand must be the same type"
#define OPERANDS_NOT_SAME_SIZE "operand must be the same size"
#define EXPECTED_OPERAND "expected operand"
#define VAR_NOT_INITIALIZED "variable used before being initialized"
#define INVALID_TYPECAST "operand may not be cast to this type"
#define TRAILING_PAREN "trailing parenthesis"
#define TRAILING_CURLY "trailing curly bracket"
#define EXPECTED_ASSIGNMENT "expected assignment"
#define VAR_IMMUTABLE "variable is immutable"

void FinishCompilation();
void CheckAllocPtr(void* ptr);
void ErrorBugFound();
void ErrorUnableToOpenFile(char* fileName);
void SyntaxErrorLastFedChar(TokenCtx tc, char* errMsg); //NULL errMsg is defined
void SyntaxErrorInvalidToken(struct token tok, char* errMsg); //NULL errMsg is defined
void SyntaxErrorOperandIncompatibleType(struct operand* o, char* errMsg);
void SyntaxErrorOperandsNotSameType(struct operand* a, struct operand* b);
void SyntaxErrorOperandsNotSameSize(struct operand* a, struct operand* b);

#endif //ERROR_H
