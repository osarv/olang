#ifndef ERRMSG_H
#define ERRMSG_H
#include "token.h"

// ---- CLI ----

#define NO_FILE_SPECIFIED "no file specified"
#define EXPECTED_C_OR_T_FLAG "expected -c or -t"
#define EXPECTED_ONE_COMPILE_FILE "-c takes exactly one file"
#define EXPECTED_AT_LEAST_ONE_TEST_FILE "-t requires at least one file"
#define NOT_A_REGULAR_FILE "not a regular file (is this a directory?)"

// ---- tokenizer ----

#define UNKNOWN_SYMBOL "unknown symbol"
#define INVALID_ESCAPE_CHAR "invalid escape character"
#define NEWLINE_BEFORE_CLOSING_OF_CHAR_LITERAL "newline before closing of character literal"
#define EMPTY_CHAR_LITERAL "empty character literal"
#define EXPECTED_CLOSING_CHAR_LITERAL "expected closing of character literal"
#define MULTIPLE_DECIMAL_POINTS "multiple decimal points"
#define LAST_WAS_DECIMAL_POINT "float literals must not end in a decimal point"

// ---- names, visibility, declarations ----

#define TYPE_NAME_IN_USE "type name already in use"
#define VAR_NAME_IN_USE "variable name already in use"
#define VOCAB_WORD_ALREADY_IN_USE "vocab word already in use"
#define ERROR_WORD_ALREADY_IN_USE "error word already in use"
#define UNKNOWN_TYPE "unknown type"
#define UNKNOWN_ERROR "unknown error"
#define UNKNOWN_VAR "unknown variable"
#define UNKNOWN_SCOPE "unknown scope - not a parameter of type 'scope' visible here"
#define NOT_A_SCOPE "this name does not refer to a scope"
#define SCOPE_NOT_ALLOWED_HERE "'scope' may only be used as a function parameter's type"
#define OWN_OUTSIDE_FUNC "'own' is only valid inside a function"
#define BARE_SCOPE_RETURN_TYPE "a bare '<>' return type would always be dangling the instant this function returns - its own private scope closes at that exact point; tag it to a passed-in scope instead, e.g. '<s>'"
#define NESTED_BARE_SCOPE_RETURN_TYPE "this return type embeds a bare '<>' field somewhere inside it - if this function is the one allocating that field, it would dangle the instant this function returns for the same reason a bare '<>' return type would; give the field an explicit '<name>' tag instead"
#define UNKNOWN_NAMESPACE "unknown namespace"
#define UNKNOWN_STRUCT_MEMBER "unknown struct member"
#define TYPE_IS_PRIVATE "this type is private - only a capitalized name is visible outside its own module"
#define VAR_IS_PRIVATE "this variable is private - only a capitalized name is visible outside its own module"
#define IMPORT_IS_PRIVATE "this import is private - only a capitalized alias is visible through re-export (e.g. 'import Sh \"shared.olang\"', not 'import sh \"shared.olang\"')"
#define INVALID_IMPLICIT_IMPORT_ALIAS "this file's name isn't a valid identifier, so it can't be used as an implicit import alias ('import \"path\"' derives its alias from the file name) - give this import an explicit alias instead"
#define CYCLIC_IMPORT_REEXPORT "this import is reachable from itself through a chain of re-exports (a module publicly importing something that eventually publicly imports it back)"
#define DUPLICATE_IMPORT_REACHABILITY "this file is already reachable through another one of this module's own imports (directly, or via re-export) - the same file may only be reachable one way"
#define STRUCT_NOT_YET_DEFINED "this struct has not yet been defined"
#define INVALID_ARRAY_SIZE "invalid array size"
#define INVALID_REFERENCE_TARGET "only a struct or array type can be marked as a reference with '<>' - primitives are always by value"

// ---- types and values ----

#define NOT_CALLABLE "this is not a function"
#define NOT_AN_ARRAY "operand is not an array"
#define LEN_REQUIRES_ARRAY "len(...) requires an array argument"
#define NOT_AN_LVALUE "must be a variable, index, or member"
#define VAR_IMMUTABLE "variable is immutable"
#define WRONG_ARG_COUNT "wrong number of arguments"
#define INVALID_ARRAY_LITERAL_TYPE "only an array type can be constructed with a [ ] literal"
#define INVALID_STRUCT_LITERAL_TYPE "only a struct type can be constructed with a { } literal"
#define TYPE_REQUIRES_CONSTRUCTOR_CALL "this type declares a constructor - construct it with Type(...), not Type{...}"
#define CTOR_FIELD_NOT_INITIALIZED "a constructor field must be bound to a same-named parameter (a bare pun), or given an initializer ('= expr' or ':= expr')"
#define INVALID_VOCAB_VALUE_TYPE "only a vocab type has values of the form 'Type.word'"
#define UNKNOWN_VOCAB_WORD "unknown vocab word"
#define VALUE_TYPE_MISMATCH "this value's type doesn't match the target's declared type"
#define TYPE_CANNOT_BE_INFERRED "a variable declared with ':=' must be initialized with a literal"
#define OPERANDS_NOT_SAME_TYPE "both operands must have the same type"
#define MATCH_CASE_TYPE_MISMATCH "case value must have the same type as the matched expression"
#define OPERATION_REQUIRES_INT "operand must be an integer"
#define OPERATION_REQUIRES_NUMBER "operand must be a number"
#define OPERATION_REQUIRES_BOOL "operand must be a boolean"
#define SCOPE_MAY_NOT_OUTLIVE_TARGET "this reference's scope is not provably at least as long-lived as the target's declared scope - only the exact same scope, or a named scope flowing into a bare '<>' (this function's own scope), are provably safe"
#define VAR_DECL_MISSING_INITIALIZER "a variable declaration needs an initializer ('= expr' or ':= expr'), unless its declared type is an array with a size ('T[N]', zero-filled, or 'T[expr]', arena-allocated and zero-filled)"
#define ZERO_FILL_CONTAINS_REFERENCE "this array's element type contains a reference ('<>'/'<name>') or a dynamic array ('T[]') somewhere within it - neither has a valid zero value (there is no null literal in this language), so a compile-time-constant size alone isn't enough to zero-fill it; give it an initializer instead"
#define REDUNDANT_ARRAY_SIZE "a fixed-size array target ('T[N]') already knows its own size from the literal's own value count - restating it on both is redundant; either drop the size ('T[]', inferred from the literal) or drop the literal ('T[N]' alone, zero-filled)"

// ---- statements and control flow ----

#define RETURN_VALUE_IN_VOID_FUNC "this function has no declared return type - a return statement must not have a value here"
#define RETURN_MISSING_VALUE "this function's declared return type requires a return value"
#define RETURN_TYPE_MISMATCH "return value's type doesn't match the function's declared return type"
#define MAIN_FUNC_NOT_FOUND "could not find the main function"
#define INVALID_MAIN_SIGNATURE "main must take no parameters, declare no success type, and declare at least one error, e.g. 'func main() ? MyError { ... }'"

// ---- errors, try/catch ----

#define EXPECTED_ERROR_WORD "expected error word"
#define ERROR_NOT_DECLARED_IN_SIG "error type not declared in this function's signature"
#define ERROR_STMNT_OUTSIDE_FUNC "error statement is only valid inside a function"
#define UNHANDLED_FALLIBLE_CALL "call to a fallible function must be handled with try/catch"
#define TRY_REQUIRES_FALLIBLE_CALL "try requires a direct call to a fallible function"
#define TRY_ERROR_NOT_IN_SIGNATURE "this function's signature must declare every error the tried call can produce that isn't fully caught here"
#define TRY_OUTSIDE_FUNC "try/catch is only valid inside a function, unless every possible error is caught"
#define CATCH_ERROR_NOT_PRODUCED_BY_CALL "this error is not declared by the function being called"

// ---- external functions ----

#define EXTERN_TYPE_NOT_ALLOWED "an 'extern func' parameter/return type must be a numeric primitive (byte, int32, int64, float32, float64) or an array of one - no structs, references, or error unions cross the C ABI boundary"
#define EXTERN_FUNC_NOT_FALLIBLE "an 'extern func' call is never fallible - it has no error union, so it can't be the operand of try/try-catch"

int ErrMsgGetNErrors();
void ErrMsgFinishCompilation();
void ErrMsgFatal(char* errMsg);
void ErrMsgUnableToOpenFile(struct str fileName);
void ErrMsgNotARegularFile(struct str fileName);
void ErrMsgUnexpectedToken(struct token found, char* expected);
void ErrMsgUnexpectedChar(TokenCtx tc, char* errMsg);
void ErrMsgSemantic(struct token tok, char* errMsg);
void ErrMsgFile(struct str fileName, char* errMsg);

#endif //ERRMSG_H
