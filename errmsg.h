#ifndef ERRMSG_H
#define ERRMSG_H
#include "token.h"

struct type;

//B11: every diagnostic is one row - "path:line:col: error[RULE]: message" - then the source line and a caret under
//what it is about, and any notes as rows of their own ("path:line:col: note: ..."). RULE is the rule of the
//specification the diagnostic applies, and "olang -e RULE" prints that rule's text (B11a): the long explanation lives
//there, under the rule, and a message says what is wrong here, in a few words, and what to write instead where that is
//obvious. Messages are lowercase, one line, with no period at the end.
//
//Each diagnostic is one entry below: its id, the rule it applies ("" for none - never an invented one) and its message.
//A message's %-directives take the call's arguments, in order:
//    %s  char*          inserted as it is
//    %S  struct str     inserted as it is
//    %n  struct token   as a reader sees it: 'text' in quotes, or end of line, or end of file
//    %t  struct type*   the type as source writes it (I32, Array<U8>&, lib.Point)
//    %d  int            %l  long long
//    %c  char           escaped where it is no printable character (\t, \x80), no quotes
//    %%  a '%'
//checks/checks.olang holds every call to the number of arguments its message takes, and every rule to one the
//specification states.
#define DIAGNOSTICS(X) \
    /* ---- the command line ---- */ \
    X(ERR_USAGE,                        "B1",    "nothing to do - write a mode and a file, as 'olang -b main.olang'") \
    X(ERR_NOT_A_MODE,                   "B1",    "'%s' is not a mode - the modes are -b, -c, -t, -i and -e") \
    X(ERR_MODE_ONE_FILE,                "B1",    "%s takes exactly one file") \
    X(ERR_MODE_NEEDS_FILE,              "B1",    "%s needs a file") \
    X(ERR_UNKNOWN_FLAG,                 "B1",    "unknown flag '%s' - the flags are -b -c -t -i -e -r -d -u -a -D") \
    X(ERR_TARGET_MISSING,               "B12",   "-a needs a target after it, as '-a x86-64-v3'") \
    X(ERR_TARGET_UNKNOWN,               "B12",   "unknown target '%s' - write native, x86-64, x86-64-v2, x86-64-v3, x86-64-v4, a CPU clang knows ('clang --print-supported-cpus'), or a triple x86_64-linux-gnu or aarch64-linux-gnu, ':CPU' after it if wanted") \
    X(ERR_TARGET_UNSUPPORTED,           "B12",   "olang does not build for '%s' - it builds for x86_64 and aarch64 Linux with the GNU C library") \
    X(ERR_TARGET_NATIVE_FOREIGN,        "B12",   "'-a %s': native is this machine's CPU - name the other architecture's CPU after ':', or none for its default") \
    X(ERR_TARGET_FOREIGN_MODE,          "B12a",  "%s builds and runs on this machine, and '-a %s' is another architecture or system - only -c builds for it") \
    X(ERR_TARGET_NO_BACKEND,            "B12a",  "this clang cannot build for '%s': its back end for that architecture cannot generate the BF16 code the runtime holds") \
    X(ERR_TARGET_NO_CLANG,              "B12",   "clang not found on PATH - it is what builds the program, and what says what target '%s' is") \
    X(ERR_EXPLAIN_NEEDS_RULE,           "B11a",  "-e takes one rule, as 'olang -e B1'") \
    X(ERR_NO_SPEC,                      "B11a",  "no specification at %s") \
    X(ERR_NO_RULE,                      "B11a",  "the specification has no rule %s") \
    X(ERR_DEFINE_MISSING,               "B10",   "-D needs Name=value after it") \
    X(ERR_DEFINE_SHAPE,                 "B10",   "-D takes Name=value, found '%s'") \
    X(ERR_DEFINE_NOT_NAME,              "B10",   "-D %s=%s: the name is not an identifier") \
    X(ERR_DEFINE_TWICE,                 "B10",   "-D %s=%s: defined twice") \
    X(ERR_DEFINE_BAD_NUMBER,            "B10",   "-D %s=%s: not a number - '0x' and '0b' take digits of their own base") \
    X(ERR_DEFINE_INT_RANGE,             "B10",   "-D %s=%s: beyond 64 bits") \
    X(ERR_DEFINE_NEG_RANGE,             "B10",   "-D %s=%s: below I64's minimum") \
    X(ERR_DEFINE_FLOAT_RANGE,           "B10",   "-D %s=%s: beyond F64's range") \
    X(ERR_DEFINE_BUILTIN,               "B10a",  "-D cannot redefine the built-in constant %s") \
    /* ---- files and the toolchain ---- */ \
    X(ERR_CANNOT_OPEN,                  "",      "cannot open this file") \
    X(ERR_NOT_REGULAR,                  "",      "not a regular file") \
    X(ERR_IS_DIRECTORY,                 "M1",    "a directory - a module is one .olang file") \
    X(ERR_NO_MAIN,                      "B4",    "no main function - a program starts at 'fn main() ? { }'") \
    X(ERR_NO_CLANG,                     "",      "clang not found on PATH - install clang-20 (the IR is in %s)") \
    X(ERR_CLANG_FAILED,                 "",      "clang could not compile %s") \
    X(ERR_LINK_FAILED,                  "",      "linking %s failed") \
    /* ---- characters and tokens ---- */ \
    X(ERR_UNKNOWN_CHAR,                 "L16",   "unexpected character '%c'") \
    X(ERR_NON_ASCII,                    "L1",    "non-ASCII byte '%c' - olang source is ASCII") \
    X(ERR_CARRIAGE_RETURN,              "L3",    "carriage return - save the file with LF line endings") \
    X(ERR_NUL_BYTE,                     "L1",    "NUL byte in the source - is this a text file?") \
    X(ERR_UNCLOSED_COMMENT,             "L4a",   "unterminated block comment - '##' closes it") \
    X(ERR_UNCLOSED_STRING,              "L14",   "unterminated string literal") \
    X(ERR_STRING_NEWLINE,               "L14",   "string literal not closed on its line - write \\n for a newline") \
    X(ERR_UNCLOSED_CHAR,                "L13",   "unterminated character literal") \
    X(ERR_CHAR_NEWLINE,                 "L13",   "character literal not closed on its line") \
    X(ERR_EMPTY_CHAR,                   "L13",   "empty character literal") \
    X(ERR_LONG_CHAR,                    "L13",   "character literal holds more than one character - text is written in \"\"") \
    X(ERR_BAD_ESCAPE,                   "L15",   "unknown escape '\\%c' - the escapes are \\n \\t \\r \\0 \\\\ \\' \\\"") \
    X(ERR_HEX_NO_DIGITS,                "L10a",  "'0x' needs hexadecimal digits") \
    X(ERR_BIN_NO_DIGITS,                "L10c",  "'0b' needs binary digits") \
    X(ERR_HEX_DIGIT,                    "L10a",  "'%c' is not a hexadecimal digit") \
    X(ERR_BIN_DIGIT,                    "L10c",  "'%c' is not a binary digit") \
    X(ERR_DIGIT_SEPARATOR,              "L10b",  "'_' in a number must stand between two digits") \
    X(ERR_POINT_NO_DIGIT,               "L12",   "a decimal point needs a digit after it") \
    X(ERR_TWO_POINTS,                   "L12",   "a number has at most one decimal point") \
    /* ---- syntax ---- */ \
    X(ERR_EXPECTED,                     "",      "expected %s, found %n") \
    X(ERR_BLOCK_NOT_CLOSED,             "",      "the block opened on line %d has no '}' - found %n") \
    X(ERR_NESTING,                      "L21",   "nested more than %d levels deep - split it into locals or functions") \
    X(ERR_SEPARATOR_COMMA,              "T17, T19, C2", "entries are separated by line ends, not commas") \
    X(ERR_KEYWORD_AS_NAME,              "L9",    "%n is a keyword, not a name - choose another") \
    X(ERR_DESTRUCT_IN_BODY,             "C7",    "'destruct' follows the constructor's body - close the body first: 'type T struct(...) { ... } destruct { ... }'") \
    X(ERR_JOIN_PIECE,                   "E11b",  "a join piece is a text literal or a '$' rendering - write '$%S'") \
    X(ERR_TRAILING_COMMA,               "L18a",  "a comma before %n ends a list only where %n begins a line of its own - remove it") \
    X(ERR_VAR_LIST_COUNT,               "D12b",  "%d names need as many values, found %d") \
    X(ERR_ERROR_AFTER_QUESTION,         "R15",   "'?' alone is the default error - write '?', or name the types: '? IoError'") \
    X(ERR_VALUE_AFTER_EQ,               "D12",   "a declaration's value follows '=' - write '%s = %s', or '%s := %s'") \
    /* ---- top-level conditions (each message takes the token it is about) ---- */ \
    X(ERR_COND_NAME,                    "B9a",   "%n is not a build constant or an immutable global of this module") \
    X(ERR_COND_MUTABLE,                 "B9a",   "%n is mutable, so a top-level condition cannot read it") \
    X(ERR_COND_GLOBAL_INIT,             "B9a",   "%n is not computed from literals and build constants alone") \
    X(ERR_COND_CYCLE,                   "B9a",   "%n is defined in terms of itself") \
    X(ERR_COND_TYPES,                   "B9",    "%n cannot combine these values") \
    X(ERR_COND_NO_MEET,                 "T6b",   "%n: these numbers' types do not meet - convert one, as I64(n)") \
    X(ERR_COND_NOT_BOOL,                "B9",    "the condition beginning %n is not a Bool") \
    /* ---- imports and modules ---- */ \
    X(ERR_IMPORT_REMOTE_BAD_NAME,       "M23a",  "a remote import's host, owner, repository and ref may hold only letters, digits, '.', '_' and '-'") \
    X(ERR_IMPORT_LOCK_NOT_A_COMMIT,     "M23b",  "olang.lock names no commit for %s - delete its line, or build with -u") \
    X(ERR_IMPORT_FETCH_FAILED,          "M23a",  "could not fetch %s with git - check the path and the connection") \
    X(ERR_IMPORT_LOCKED_FETCH_FAILED,   "M23b, M23c", "could not fetch the commit olang.lock names for %s - delete its line, or build with -u") \
    X(ERR_IMPORT_PATH_TOO_LONG,         "M23",   "this import path is too long to name a file") \
    X(ERR_IMPORT_FILE_NOT_FOUND,        "M23",   "no .olang file at %s") \
    X(ERR_IMPORT_HAS_EXTENSION,         "M23",   "an import names its file without '.olang'") \
    X(ERR_IMPORT_LEAVES_ROOT,           "M23",   "this relative import leaves %s - name a module outside it by its own path") \
    X(ERR_IMPORT_REMOTE_NEEDS_FILE,     "M23",   "a remote import names a file in the repository: host/owner/repo[@ref]/path") \
    X(ERR_IMPORT_ALIAS_INVALID,         "M4",    "'%S' is no identifier, so it cannot be this import's alias - write one: import Name \"...\"") \
    X(ERR_IMPORT_ALIAS_CONFLICT,        "M5",    "another import of this module is already named '%S' - give one an alias of its own") \
    X(ERR_UNKNOWN_IMPORT,               "M10",   "%n is no import here") \
    X(ERR_UNKNOWN_IMPORT_STD,           "M10",   "%n is no import here - std has it: 'import \"std/%S\"'") \
    X(ERR_IMPORT_IS_PRIVATE,            "M14",   "import %n is private to its module - only a capitalized alias is re-exported") \
    X(ERR_REEXPORT_CYCLE,               "M17",   "re-exporting %n reaches this module again") \
    X(ERR_IMPORT_REACHED_TWICE,         "M16",   "%n reaches a file another import of this module already reaches") \
    X(ERR_NAME_CLASHES_WITH_IMPORT,     "M20",   "%n is an import's alias in this module - rename one of them") \
    /* ---- names and declarations ---- */ \
    X(ERR_UNKNOWN_TYPE,                 "",      "unknown type %n") \
    X(ERR_UNKNOWN_TYPE_MEANT,           "",      "unknown type %n - did you mean '%S'?") \
    X(ERR_UNKNOWN_NUMBER_TYPE,          "T4",    "unknown type %n - the numbers are named by kind and width: did you mean '%S'?") \
    X(ERR_UNKNOWN_NAME,                 "",      "unknown name %n") \
    X(ERR_UNKNOWN_NAME_MEANT,           "",      "unknown name %n - did you mean '%S'?") \
    X(ERR_TYPE_NOT_A_VALUE,             "",      "%n is a type, not a value") \
    X(ERR_UNKNOWN_FUNCTION,             "",      "unknown function or type %n") \
    X(ERR_UNKNOWN_FUNCTION_MEANT,       "",      "unknown function or type %n - did you mean '%S'?") \
    X(ERR_UNKNOWN_ERROR_TYPE,           "R1",    "unknown error type %n") \
    X(ERR_TYPE_IS_PRIVATE,              "M6",    "type %n is private to its module") \
    X(ERR_TYPE_NAME_IN_USE,             "D2",    "type %n is already declared in this module") \
    X(ERR_BUILTIN_TYPE_REDECLARED,      "D3a",   "%n is a built-in type's name - choose another") \
    X(ERR_NAME_IS_TYPE,                 "D2",    "%n is already a type's name in this module - choose another") \
    X(ERR_BUILD_CONST_REDECLARED,       "B10",   "%n is a build constant - choose another name") \
    X(ERR_PRELUDE_WORD_REDECLARED,      "M19f",  "%n is the prelude's function, seen in every module - choose another name") \
    X(ERR_NAME_IN_USE,                  "D2",    "%n is already declared in this module") \
    X(ERR_UNKNOWN_SCOPE_NAME,           "O4a",   "%n names no variable visible here - a marker names where the reference lives, as '&x'") \
    X(ERR_RETURN_SCOPE_NONE,            "O26",   "'&return' names the result scope, and this function has none") \
    /* ---- types ---- */ \
    X(ERR_CONSTRAINT_DISAGREES,         "G19",   "%n is constrained differently elsewhere in this declaration - one constraint per variable") \
    X(ERR_CONSTRAINT_UNMET,             "G19",   "%t does not satisfy the constraint %S on %S") \
    X(ERR_CONSTRAINT_UNMET_METHOD,      "G19",   "%t does not satisfy the constraint %S on %S: it has no method %S that fits") \
    X(ERR_CONSTRAINT_UNMET_HASH,        "G19, E10b", "%t does not satisfy the constraint %S on %S: it has no Hash - declare 'Hash() I64', agreeing with '=='") \
    X(ERR_UNBOUNDED_INSTANTIATION,      "G17",   "this generic's instantiations never end - each one requires a larger one") \
    X(ERR_TYPE_HOLDS_ITSELF,            "T16",   "%S cannot hold itself by value - hold it through a reference ('&')") \
    X(ERR_ARRAY_TYPE_HOLDS_ITSELF,      "T29",   "%S holds itself through the array it is declared over - hold the array in a struct: 'type %S struct(items %t&)'") \
    X(ERR_MISSING_TYPE_ARGS,            "G7",    "%n is generic - write its type arguments, as '%S<I32>'") \
    X(ERR_TYPE_ARG_COUNT,               "G7",    "type arguments for %S: expected %d, found %d") \
    X(ERR_TYPE_ARGS_ON_NON_GENERIC,     "G7",    "%S is not generic, so it takes no type arguments") \
    X(ERR_CONST_PARAM_TYPE,             "G20",   "a constant parameter is an integer, a Bool or an enum without payloads, found %t") \
    X(ERR_CONST_PARAM_EQ,               "G20",   "%t declares Eq - a constant parameter's type compares by its value alone") \
    X(ERR_CONST_ARG_IS_TYPE,            "G21",   "%S's parameter %S is a constant - write a value, as '%S<..., 3>'") \
    X(ERR_TYPE_ARG_IS_VALUE,            "G21",   "%S's parameter %S is a type, and this is a value") \
    X(ERR_CONST_ARG_NOT_COMPUTABLE,     "G21",   "a constant argument must be computable while compiling: %s") \
    X(ERR_CONST_ARG_RANGE,              "G21",   "%s does not fit %t") \
    X(ERR_CONST_ARG_KIND,               "G21",   "this constant argument is not a value of %t") \
    X(ERR_CONST_VAR_UNKNOWN,            "G22",   "%S is no constant variable of this declaration") \
    X(ERR_CONST_VAR_TYPE_AND_CONST,     "G22",   "%S is a type in one place and a constant in another") \
    X(ERR_CONST_VAR_TWO_TYPES,          "G22",   "%S fills constant parameters of two types, %t and %t") \
    X(ERR_CONST_VAR_CONSTRAINED,        "G22",   "a constant variable takes no constraint - %S's type is its parameter's, or one written '<N I64>' where it is introduced") \
    X(ERR_CONST_VAR_AS_TYPE,            "G22",   "%S is a constant, not a type") \
    X(ERR_TYPE_VAR_AS_VALUE,            "G23",   "%S is a type variable, not a value") \
    X(ERR_CONST_VAR_ONLY_IN_EXPR,       "G4, G24", "constant variable %S appears in no parameter's type as a whole argument, so no call can give it a value - introduce it in a parameter's type, or use a run-time length") \
    X(ERR_CONST_VAR_MISMATCH,           "G24",   "%S is %l by one argument and %l by another") \
    X(ERR_CONST_VAR_NOT_IN_TYPE,        "G24, E32b", "%t's length is known only at run time - view it with 'x as Array<T, N>&'") \
    X(ERR_ARRAY_LENGTH_RANGE,           "T7c",   "an array's length is from 0 to the largest whose bytes fit an I64, found %l") \
    X(ERR_AS_ARRAY_SHAPE,               "E32b",  "an array is viewed with 'as' only as a reference to one of a known length and the same element type - %t is not %t") \
    X(ERR_AS_ARRAY_LENGTH,              "E32b",  "this array's length is %l, not %l") \
    X(ERR_VAR_WRITTEN_AGAIN,            "G22",   "%S was introduced already - write it '%S', not '<%S>'") \
    X(ERR_VAR_BEFORE_INTRO,             "G22",   "%n is introduced later in this signature - its first use is written '<%S>'") \
    X(ERR_CONST_VAR_SHADOWED,           "G22, D3a", "%n is a constant variable of this declaration - a name means one thing, so name this apart") \
    X(ERR_CONST_ARG_PAREN,              "G21",   "%n in a type argument is written in parentheses, as '(1 << 12)' - a bare '<' or '>' there reads as the list's own") \
    X(ERR_TYPE_MATCH_VALUE_CASE,        "G13",   "%S is a type variable, so its cases are types") \
    X(ERR_FIXED_ARRAY_CALL,             "T8",    "Array<T, N>() takes no arguments - a filled one is a copy, as 'a Array<T, N> = Array<T>(N, v)'") \
    X(ERR_ARRAY_TOO_MANY_ARGS,          "T7",    "Array takes an element type and at most a length, found %d arguments") \
    X(ERR_NAMED_SCOPE_ON_ELEMENT,       "T24",   "a nested reference lives in its container's scope - write a bare '&' here") \
    X(ERR_ARRAY_NESTED_BY_VALUE,        "T7a, T7c", "an array inside an array or a struct is held by reference - write %t&, or a length, Array<T, N>, to hold it in place") \
    X(ERR_CONSTRAINT_NOT_TRAIT,         "G19",   "%t is not a trait, so it cannot constrain a type variable") \
    X(ERR_TYPE_VAR_WRITTEN_AGAIN,       "G8b",   "%S was introduced already - write it '%S', not '<%S>'") \
    X(ERR_TYPE_VAR_BEFORE_INTRO,        "G8b",   "%n is introduced later in this signature - its first use is written '<%S>'") \
    X(ERR_TYPE_ARG_NAMED_SCOPE,         "G11",   "a type argument's reference marker is bare, as 'List<String&>' - its references live in the container") \
    X(ERR_INVALID_REFERENCE_TARGET,     "T24",   "%t cannot be a reference - only a struct, an enum or an array can") \
    X(ERR_DOUBLE_REFERENCE_MARKER,      "T24",   "a type takes at most one reference marker") \
    X(ERR_DESTRUCT_TYPE_BY_VALUE,       "C11",   "%t has a destructor, so it is held only by reference - write %t&") \
    X(ERR_TRAIT_NOT_A_TYPE,             "T30",   "%t is a trait - a constraint on a type variable, never the type of a value") \
    X(ERR_ENUM_CASE_IN_USE,             "T17",   "enum case %n is already declared") \
    X(ERR_DECLARED_TWICE,               "",      "%n is declared twice") \
    X(ERR_FIELD_HAS_PARAM_NAME,         "C2a",   "field %n has a parameter's name - write it bare to take the parameter's value, or name it apart") \
    X(ERR_TRAIT_METHOD_GENERIC,         "T35",   "trait method %n may not be generic in a type of its own") \
    X(ERR_CTOR_FIELD_NO_VALUE,          "C4",    "field %n names no parameter of the constructor - give it a value, with '=' or ':='") \
    X(ERR_ARRAY_PARAM_BY_VALUE,         "D9a",   "array parameter %n is passed by reference - write %t&") \
    X(ERR_DEFAULT_NOT_TRAILING,         "D8a",   "%n has no default, but a parameter before it does - defaulted parameters come last") \
    X(ERR_SCOPE_DECL,                   "O3",    "a scope has no name to declare - write a bare '&', or '&x' for where 'x' lives") \
    X(ERR_TYPE_VAR_NAMES_TYPE,          "G1",    "type variable %n is named after a type - choose a name no type has, as '<T>'") \
    X(ERR_TYPE_VAR_NOT_INFERABLE,       "G4",    "type variable %S appears in no parameter's type, so no call can infer it - introduce it in a parameter's type") \
    X(ERR_EXTERN_TYPE,                  "X2",    "%t cannot cross the C boundary - an extern parameter or result is a number, or a parameter an array of numbers") \
    X(ERR_MUT_ON_VALUE_TYPE,            "T25b",  "'mut' makes a reference writable, and %t is no reference") \
    X(ERR_MUT_ON_VALUE_PARAM,           "D9",    "a by-value parameter is the callee's own copy, always writable - 'mut' is for a reference, and %t is none") \
    X(ERR_MUT_ON_VALUE_FIELD,           "C3",    "a field is writable wherever its instance is - 'mut' is for a reference, and %t is none") \
    X(ERR_PRIM_CTOR_NOT_PRIMITIVE,      "T29d",  "only a type over a primitive has a constructor written this way - a struct writes 'struct(params) { ... }'") \
    X(ERR_PRIM_CTOR_PARAM,              "T29d",  "this constructor takes one parameter, of type %t - the value it checks") \
    X(ERR_TYPE_DEFINED_THROUGH_ITSELF,  "",      "%S is used while it is still being declared") \
    X(ERR_ERROR_WORD_IN_USE,            "T19",   "error word %n is already declared") \
    X(ERR_EXTENDS_NOT_BASE,             "T29f",  "only a type over a number or an array extends its base") \
    X(ERR_GENERIC_NOT_STRUCT,           "G6",    "only a struct or a trait takes type parameters") \
    X(ERR_DECLARED_OVER_AGGREGATE,      "T29",   "a type is declared over a number or an array, not over %t - hold it in a struct's field instead") \
    /* ---- methods and operators ---- */ \
    X(ERR_NOT_THE_OPERATOR,             "E31",   "%t's %S takes %s besides its receiver - an ordinary method, not the one %s calls, which takes %s") \
    X(ERR_TRY_MULTI_INDEX_NEEDS_TRYAT,  "E31a",  "'try' on several indices needs %t to declare %s - a check derived from Len checks one position") \
    X(ERR_ARRAY_ONE_INDEX,              "E31",   "%t takes one index - several are passed to a type's At or SetAt") \
    X(ERR_OPERATOR_RESULT,              "E31",   "%s gives one result") \
    X(ERR_SETAT_RESULT,                 "E31",   "SetAt gives no result") \
    X(ERR_OPERATOR_FALLIBLE,            "E31a",  "%s cannot fail - its checked form is a method of its own, Try%s, which 'try' calls") \
    X(ERR_TRY_FORM_MUST_FAIL,           "E31a",  "%s is a checked form, so it declares the errors it fails with") \
    X(ERR_METHOD_CANNOT_FAIL,           "E31",   "%s cannot fail - the operation calling it has nowhere to write 'try'") \
    X(ERR_LESS_NOT_BOOL,                "E31",   "Less, which '<' calls, gives a Bool") \
    X(ERR_LEN_SHAPE,                    "E31",   "Len gives an I64") \
    X(ERR_EQ_SHAPE,                     "E10a",  "Eq takes one parameter of its receiver's own type and gives a Bool") \
    X(ERR_STR_SHAPE,                    "E11c",  "Str gives a String") \
    X(ERR_EQ_STR_WRITES,                "E10a, E11c", "%s only reads - neither its receiver nor a parameter may be 'mut'") \
    X(ERR_PROTOCOL_BOTH_SPELLINGS,      "M6b",   "%t declares %s twice, public and private - keep one: %s, or %s for its own module only") \
    X(ERR_PROTOCOL_PRIVATE,             "M6b",   "%n needs %t's %S, which is private to its module - declare it %s to use it here") \
    X(ERR_OVERRIDE_SIGNATURE,           "M19e",  "%S does not have the signature of the default it overrides - match it, or choose another name") \
    X(ERR_DEFAULT_OUTSIDE_TRAIT,        "M19e",  "a default of trait %S is declared in that trait's module") \
    X(ERR_METHOD_ON_FOREIGN_TYPE,       "M19",   "a method of %t is declared in that type's module") \
    X(ERR_DEFAULT_SHADOWS_REQUIRED,     "M19e",  "trait %S already requires a method %S - choose another name for this default") \
    X(ERR_METHOD_CLASHES_INHERITED,     "T29e",  "%t inherits a method %S from its base - choose another name") \
    X(ERR_METHOD_CLASHES_SUPPLIED,      "E23, E33, P9", "the compiler supplies %S for %t - choose another name") \
    X(ERR_METHOD_ON_BUILTIN_TYPE,       "M19d",  "only the prelude declares methods of %t - declare a type of your own over it: 'type T extends ...'") \
    X(ERR_METHOD_IN_USE,                "M21",   "%t already has a method %S in this module") \
    X(ERR_UNDERSCORE_DECLARED,          "D8c",   "'_' discards a value and names nothing, so it cannot be declared") \
    X(ERR_SHADOWS_GLOBAL,               "D3a",   "%n is already declared in this module - a name means one thing in it") \
    X(ERR_SHADOWS_FUNCTION,             "D3a",   "%n names a function of this module - a name means one thing in it, so name this apart") \
    X(ERR_SHADOWS_BUILD_CONST,          "D3a",   "%n is a build constant - choose another name") \
    X(ERR_SHADOWS_TYPE,                 "D3a",   "%n is a type's name - choose another") \
    X(ERR_TYPE_HAS_NO_CONSTRUCTOR,      "",      "type %n has no constructor - an enum's values are its cases") \
    X(ERR_METHOD_CALLED_AS_FUNCTION,    "M19",   "%n is a method - call it on its receiver: x.%S(...)") \
    X(ERR_NOT_IN_MODULE,                "",      "%S declares no %n") \
    X(ERR_VAR_IS_PRIVATE,               "M6",    "%n is private to its module") \
    X(ERR_SHIFT_UNADAPTED,              "E8a, E4a", "this shift is past its literal's width, and nothing adapts it to a wider type - convert the literal, as I64(1) << 40") \
    /* ---- values fitting their targets ---- */ \
    X(ERR_SCOPE_MAY_NOT_OUTLIVE,        "O10",   "this reference lives in a scope that may not outlive where it is put") \
    X(ERR_OWN_CANNOT_OUTLIVE,           "O10d",  "this value lives in this function's own scope, which closes first") \
    X(ERR_OWN_FROM_BARE_REF_PARAM,      "O10d",  "this value lives in this function's own scope, so it cannot satisfy anything longer-lived") \
    X(ERR_ARRAY_SIZE_MISMATCH,          "T7d",   "%t does not fit %t - a fixed length is part of the type") \
    X(ERR_LITERAL_RANGE,                "T6",    "%n does not fit %t") \
    X(ERR_ELEM_REF_SHAPE,               "T25a",  "expected %t, found %t - they differ in whether the elements are references") \
    X(ERR_TYPE_MISMATCH,                "E12",   "expected %t, found %t") \
    X(ERR_NUMBER_DOES_NOT_FLOW,         "T6b",   "%t does not flow into %t - convert it, as %t(x)") \
    X(ERR_LITERAL_EXPR_RANGE,           "E4a",   "this literal expression's value does not fit %t") \
    X(ERR_LITERAL_NEEDS_CTOR,           "T29d",  "a value of %t is made by its constructor - write %t(...)") \
    X(ERR_READ_ONLY_TO_WRITABLE,        "T25c",  "a read-only reference cannot become writable - pass a writable one, or drop the 'mut'") \
    X(ERR_READ_ONLY_TO_BUILT_RESULT,    "T25c, O14", "a built result is new storage and writable, and this reference is read-only - borrow it: '%S'") \
    X(ERR_READ_ONLY_TO_BUILT_RESULT_NO, "T25c, O14", "a built result is new storage and writable, and this reference is read-only - return a copy, or borrow the result from the parameter it is read through") \
    X(ERR_TYPE_NOT_INFERABLE,           "D15",   "':=' takes its type from the initializer, and a call returning nothing has none") \
    X(ERR_DECL_FROM_NULL,               "D15",   "':=' takes its type from the initializer, and null has none - write the type: 'x T& = null'") \
    X(ERR_SCOPE_ARG_PROGRAM,            "E25, O1b", "%n lives in the program's scope, which a result reaches by being stored there, not by a scope argument") \
    X(ERR_BUILD_INTO_UNKNOWN_SCOPE,     "O11, O12", "where this reference's referent lives is not known here, and the callee may build there - give it one known scope") \
    X(ERR_BUILD_THROUGH_UNKNOWN_SCOPE,  "C2d",   "this builds through a '&p' field whose scope is not known here - build where it lives, in the function that knows") \
    X(ERR_SCOPE_ARG_UNKNOWN,            "E25",   "%n is no local or parameter here - a scope argument names where the result is built") \
    X(ERR_RETURN_TYPE_MISMATCH,         "D8",    "this function returns %t, found %t") \
    /* ---- calls ---- */ \
    X(ERR_ARG_COUNT,                    "E14",   "expected %d argument%s, found %d") \
    X(ERR_ARG_COUNT_RANGE,              "E14",   "expected %d to %d arguments, found %d") \
    X(ERR_SPREAD_COUNT,                 "D8d",   "these results are passed as the arguments, so there must be as many - destructure them first: 'a, b := g()'") \
    X(ERR_SCOPE_ARG_NOT_ACCEPTED,       "E25",   "%S builds no result a scope argument could place") \
    X(ERR_SCOPE_ARGS_DISAGREE,          "O25e",  "these arguments live in different scopes, and the signature requires one ('&p')") \
    X(ERR_BORROW_SPLIT_SCOPES,          "O17",   "this value's references live where its own storage does not, and the callee can store through it - declare it a reference where they live ('x T&y = ...')") \
    X(ERR_BORROW_SPLIT_VALUE,           "O17a",  "this value's references live where its own storage does not, so it is not held by reference - use the value itself") \
    X(ERR_FIELD_BINDING_UNKNOWN,        "O23, O11", "this stores into a '&p' field whose binding is not known through this path - store through a variable holding the instance") \
    X(ERR_SCOPE_OBLIGATION_UNMET,       "O10c",  "the callee needs one argument's scope to outlive another's, and nothing here shows it - pass them from one scope") \
    X(ERR_REFERENCE_NARROWED,           "O25",   "a reference never narrows - keep its scope: name where it lives ('x T&y'), or declare it with ':='") \
    X(ERR_REF_TYPEVAR_NOT_AGGREGATE,    "G11",   "%t cannot be held through '%S&' - only a struct, an enum or an array can") \
    X(ERR_TYPE_ARGS_NOT_INFERABLE,      "G9",    "the type arguments of %S cannot be inferred from these arguments") \
    X(ERR_CTOR_TYPE_ARGS_NOT_INFERABLE, "G10c",  "the type arguments of %S cannot be inferred from these arguments - write them: %S<...>(...)") \
    X(ERR_CTOR_VARS_NOT_INFERABLE,      "G10d",  "what %S's constructor introduces cannot be inferred from these arguments") \
    X(ERR_CTOR_FIELD_NAMES_VAR,         "G10d",  "the type of field %n names %S, which only the constructor introduces - for a field to hold it, declare it the type's parameter: 'type %S<%S>'") \
    X(ERR_CTOR_GENERIC_INFERRED_FIELD,  "G10d",  "field %n takes its type from ':=', and the constructor introduces %S, so its body is checked per call - write the field's type") \
    X(ERR_CTOR_VAR_OF_GENERIC,          "G10d",  "%S is not one of %S's parameters, and a generic type's constructor introduces none of its own - add %S to the type's list") \
    X(ERR_DEFAULT_ARG_NO_DEFAULT,       "E14a",  "parameter %S declares no default, so 'default' cannot stand in for it") \
    X(ERR_ATOMIC_NOT_PLACE,             "P9",    "an atomic operation acts on a place - a variable, a field or an element") \
    X(ERR_ATOMIC_NOT_WRITABLE,          "P9",    "this atomic operation writes its place, which must be writable") \
    X(ERR_CONVERSION_REPRESENTATION,    "T29",   "%t cannot become %t - their representations differ") \
    X(ERR_CONVERT_NOT_NUMBER,           "E26",   "%t is no number, so %t(x) cannot convert it") \
    /* ---- indexing and members ---- */ \
    X(ERR_NOT_INDEXABLE,                "E16",   "%t cannot be indexed") \
    X(ERR_INDEX_NOT_INT,                "E16",   "an index is an integer, found %t") \
    X(ERR_INDEX_OUT_OF_RANGE,           "E16",   "index %l is outside the array's %l elements") \
    X(ERR_NOT_SLICEABLE,                "E16a",  "%t cannot be sliced") \
    X(ERR_SLICE_BOUND_NOT_INT,          "E16a",  "a slice's bounds are integers, found %t") \
    X(ERR_NO_SUCH_MEMBER,               "",      "%t has no member '%S'") \
    X(ERR_MEMBER_IS_PRIVATE,            "M6a",   "member '%S' of %t is private to its module") \
    /* ---- operators and literals ---- */ \
    X(ERR_NOT_ASSIGNABLE,               "S4",    "this cannot be written - a variable, an element or a member can") \
    X(ERR_INCDEC_NOT_NUMBER,            "S3a",   "%n takes a number, found %t") \
    X(ERR_CAPTURE_READ_ONLY,            "D16c",  "a lambda's captures are read-only - capture a reference to change what is outside it") \
    X(ERR_READ_ONLY_REF_WRITE,          "T25b",  "this writes through a read-only reference - one with no 'mut' in its type") \
    X(ERR_WRITE_INTO_CALL_VALUE,        "E31",   "this writes into a value a call gave back, a copy no one holds - store the whole element: x[i] = v") \
    X(ERR_IMMUTABLE,                    "S6",    "%S cannot be written - only a local, a parameter or a 'mut' global can") \
    X(ERR_STR_HAS_EFFECT,               "E11c",  "Str runs as often as '$' needs, so it must have no effect - it cannot be evaluated while compiling: %s") \
    X(NOTE_HERE,                        "",      "here") \
    X(NOTE_IN_LIBRARY,                  "",      "in the standard library's code, here") \
    X(NOTE_ZERO_BY_REFERENCE,           "",      "'%s' holds it by reference, whose zero value is null") \
    X(NOTE_ZERO_REFERENCE_HAS_ONE,      "",      "a reference has one, null - hold %t as '%t&' where this use names it") \
    X(NOTE_OTHER_SIGNATURE,             "",      "'%S' is declared here, with another signature") \
    X(NOTE_PRIVATE_SPELLING,            "",      "'%S' is private to its module, and only a public %S meets the constraint") \
    X(NOTE_PROTOCOL_SPELLING,           "",      "'%S' is %s's private spelling with %s's parameters, so it is held to its shape") \
    X(NOTE_DECLARED_HERE,               "",      "%n is declared here") \
    X(NOTE_DECLARE_WRITABLE,            "",      "'%S' is declared read-only here - declare it '%S mut %t' to write through it") \
    X(NOTE_INTRODUCED_HERE,             "",      "%S is introduced here") \
    X(ERR_STR_OF_NOTHING,               "E11a",  "'$' has nothing to render - this call returns no value") \
    X(ERR_INT_LITERAL_TOO_LARGE,        "L10",   "%n is beyond 64 bits - the largest decimal literal is U64's 18446744073709551615") \
    X(ERR_NEG_LITERAL_TOO_LARGE,        "L10",   "-%n is below I64's minimum") \
    X(ERR_OPERAND_NOT_BOOL,             "E7",    "%n takes a Bool, found %t") \
    X(ERR_OPERAND_NOT_INT,              "E8",    "%n takes an integer, found %t") \
    X(ERR_OPERAND_NOT_NUMBER,           "E6",    "%n takes numbers, found %t") \
    X(ERR_TUPLE_NOT_A_VALUE,            "D8c",   "several results are not one value - destructure them ('a, b := f()'), or pass them as all of a call's arguments") \
    X(ERR_LITERAL_EXPR_NO_VALUE,        "E4a",   "this literal expression has no value - it overflows every type") \
    X(ERR_LITERAL_DOES_NOT_MEET,        "E6d",   "this literal does not fit %t, and %t does not flow into %t - convert one") \
    X(ERR_SHIFT_OUT_OF_RANGE,           "E8a",   "shifting %t by %l is outside its width of %l bits") \
    X(ERR_DIVIDE_BY_ZERO,               "E6a",   "division by zero") \
    X(ERR_NUMBERS_DO_NOT_MEET,          "T6b",   "%t and %t do not meet - neither flows into the other; convert one") \
    X(ERR_OPERANDS_DIFFER,              "",      "%n takes operands of one type, found %t and %t") \
    X(ERR_FLOAT_LITERAL_RANGE,          "L12b",  "%n is beyond F64's range") \
    X(ERR_NO_SUCH_ERROR_WORD,           "T19",   "%t has no word %n") \
    X(ERR_NO_SUCH_CASE,                 "T17",   "%t has no case %n") \
    X(ERR_NO_SUCH_CASE_MEANT,           "T17",   "%t has no case %n - did you mean '%S'?") \
    X(ERR_SCOPE_ARG_COUNT,              "E25",   "a call takes at most one scope argument") \
    X(ERR_ONLY_TRY_FORM,                "E31a",  "%t has only the checked form of this operation, %s - write it under 'try'") \
    X(ERR_MATMUL_UNDECLARED,            "E31",   "'@' has no built-in meaning, and %t declares no MatMul") \
    X(ERR_NOT_EXTENDED_OP,              "T29f",  "%t does not extend its base, so it takes no %n - declare its method %s, or declare it with 'extends'") \
    X(ERR_COND_NOT_BOOL_TYPE,           "",      "a condition is a Bool, found %t") \
    X(ERR_COND_BRANCH_TYPES,            "E28",   "both values of 'a if c else b' have one type, found %t and %t") \
    X(ERR_MEMBERSHIP_NO_METHOD,         "E29",   "'x in c' calls %s, and %t has none") \
    X(ERR_MEMBERSHIP_NOT_BOOL,          "E29",   "%s, which 'in' calls, gives a Bool") \
    X(ERR_MEMBERSHIP_NEEDS_TRY,         "E29",   "%s can fail here - write 'try (x in c)'") \
    X(ERR_INCDEC_IN_EXPRESSION,         "S3a",   "%n is a statement of its own, never part of an expression") \
    X(ERR_NOT_CALLABLE,                 "E13b",  "%t is not a function, and declares no Call") \
    X(ERR_JOIN_PIECE_CALLED,            "E11b",  "'(' after a piece of text calls it - to join the value inside, write '$(...)'") \
    X(ERR_UNHANDLED_FALLIBLE_CALL,      "E15",   "this call can fail - write 'try', and catch or pass on its errors") \
    X(ERR_IS_NOT_REFERENCES,            "E10c",  "'a is b' asks whether two references name one instance, and %t and %t are not both references") \
    X(ERR_IS_NOT_ONE_TYPE,              "E10c",  "%t and %t are different types, so they never name one instance") \
    X(ERR_AS_NEEDS_CASE,                "E32",   "after 'is' or 'as' comes a case of %t, found %s") \
    X(ERR_PATTERN_TYPE,                 "S13b",  "a pattern here names a case of %t, found %s") \
    X(ERR_CASE_IS_PRIVATE,              "M6a",   "case %n is private to its module") \
    X(ERR_IS_AS_MARKER,                 "E32",   "'&%S' after the type is read as a reference marker, not the operator '&' - parenthesize: '(x %s T) & %S'") \
    X(ERR_AS_NOTHING,                   "E32",   "case %S carries nothing for 'as' to give - ask with 'is'") \
    X(ERR_IS_AS_NOT_ENUM,               "E32",   "'is' and 'as' ask which case an enum value is, and this is %t") \
    X(ERR_TRY_INDEX_NEEDS_LEN,          "E31a",  "'try c[i]' checks against Len, and %t has neither TryAt nor Len") \
    X(ERR_TRY_SLICE_NEEDS_LEN,          "E31a",  "'try c[lo:hi]' checks against Len, and %t has neither TrySlice nor Len") \
    X(ERR_SLICE_NEEDS_LEN,              "E31",   "a slice with no end runs to Len(), and %t has none") \
    X(ERR_AT_UNDECLARED,                "E31",   "%t declares SetAt but not At, which reading x[i] calls") \
    X(ERR_SETAT_UNDECLARED,             "E31",   "%t declares At but not SetAt, which x[i] = v calls") \
    X(ERR_DEFAULT_ARG_NOT_ALLOWED,      "E14a",  "'default' stands only for a parameter's declared default, in a call") \
    X(ERR_DEFER_ERROR_ESCAPES,          "S19b",  "an error may not leave deferred code - catch it here") \
    X(ERR_TRY_NOWHERE_TO_GO,            "R13",   "an error tried here has nowhere to go - catch every one it can be") \
    X(ERR_TRY_ERROR_NOT_DECLARED,       "R9",    "%t can escape here, and this function does not declare it - add it after '?', or catch it") \
    X(ERR_UNKNOWN_METHOD,               "M19",   "%t has no method %n") \
    X(ERR_METHOD_NOT_INHERITED,         "T29f",  "%t declares no %n, and does not extend its base, which has one - declare it with 'extends'") \
    X(ERR_ATOMIC_NOT_INTEGER,           "P9",    "the atomic operations are methods of the integer types, and %t is none") \
    X(ERR_FROM_BITS_RECEIVER,           "E33",   "%n is a method of the unsigned type of its float's width - convert first, as U64(x).F64FromBits()") \
    /* ---- try and catch ---- */ \
    X(ERR_DEFAULT_COUNT,                "R11",   "expected %d defaults, one per result, found %d") \
    X(ERR_DEFAULT_HOLDS_REFERENCES,     "R11",   "a default for a value holding references builds all it holds - a constructor call of numbers and written text, as 'List<String&>()'") \
    X(ERR_DEFAULT_SCOPE,                "R11, O25", "a reference default lives where the call's result does - or is null, or built there") \
    X(ERR_CATCH_AFTER_CATCH_ALL,        "R11a",  "a catch with no error types takes every error left, so no clause can follow it") \
    X(ERR_CATCH_UNREACHABLE,            "R11a",  "an earlier clause already takes every error this one names") \
    X(ERR_DEFAULT_IN_STATEMENT,         "R11",   "a try written as a statement gives no value, so it takes no default") \
    X(ERR_DEFAULT_DEAD,                 "R11",   "this clause's block always leaves, so its default is never the value - remove it") \
    X(ERR_CATCH_MUST_LEAVE,             "R11",   "a clause here leaves, or gives the value with 'default v'") \
    X(ERR_DEFAULT_NO_VALUE,             "R11",   "this call returns no value, so there is nothing for a default to stand in for") \
    X(ERR_DEFAULT_NEEDS_CATCH,          "R11",   "a default belongs to a catch clause: 'catch default v'") \
    X(ERR_TRY_NOTHING_FAILS,            "R20",   "'try' needs something that can fail - a fallible call, or an operation it can check") \
    /* ---- literals and constructions ---- */ \
    X(ERR_NESTED_ARRAY_LITERAL,         "E21",   "there are no nested array literals - an array of arrays holds references: Array<I32>&[r0, r1]") \
    X(ERR_ARRAY_OF_ERRORS,              "",      "%t has no values to put in an array") \
    X(ERR_COMPREHENSION_REFERENCES,     "E27",   "a comprehension's elements may not be or hold references yet - build the array with a loop") \
    X(ERR_NOT_AN_ENUM,                  "E22",   "%n is not an enum type, so it has no values 'T.Case'") \
    X(ERR_TAKES_NO_ARGS,                "E14",   "%n takes no arguments") \
    X(ERR_METHOD_AMBIGUOUS,             "M22",   "two imported modules declare %n for this type - import only the one meant") \
    X(ERR_DEFAULT_AMBIGUOUS,            "M19e",  "two traits %t satisfies both declare a default %n - the call cannot choose") \
    X(ERR_METHOD_IS_PRIVATE,            "M6",    "method %n is private to its module") \
    X(ERR_GENERIC_NOT_A_VALUE,          "G12",   "generic function %n is not a value - call it") \
    X(ERR_ARRAY_LENGTH_NOT_INT,         "E13a",  "an array's length is an integer, found %t") \
    X(ERR_ASSIGN_LIST_COUNT,            "S4c",   "%d targets need as many values, found %d") \
    X(ERR_DESTRUCT_NOT_NAME,            "D8c",   "':=' declares each target, so each is a name or '_' - use '=' to assign into places") \
    X(ERR_DESTRUCT_ONE_VALUE,           "D8c",   "only several results can be destructured, and this is one %t") \
    X(ERR_DESTRUCT_COUNT,               "D8c",   "%d targets for %d results - write '_' for one not wanted") \
    /* ---- where stored references live ---- */ \
    X(ERR_STORED_REF_OUTLIVED,          "O20",   "the container outlives what this refers to - build it where the container lives ('x T&c', 'f&c(...)')") \
    X(ERR_PAYLOAD_SCOPES_DISAGREE,      "T17c",  "this payload holds references into two scopes, and it lives in one - build what it holds in one scope") \
    X(ERR_ELEM_NOT_IN_ARRAY_SCOPE,      "O25c",  "this element can be stored through, so it lives exactly where the array is put - build it there") \
    X(ERR_ELEM_OUTLIVED,                "O25c",  "the array outlives what this element refers to - build the element where the array goes") \
    X(ERR_PAYLOAD_OUTLIVED,             "T17c",  "this value's payload refers to storage the value would outlive - build it where that storage lives ('v E&x')") \
    X(ERR_INSTANCE_OUTLIVES_REFERENT,   "C2d",   "this instance would outlive what its '&p' field refers to - keep it in that block, or build it there ('T&x(...)')") \
    X(ERR_INSTANCE_OUTLIVES_ARG,        "C2d",   "this instance holds a reference to an argument it would outlive - make the argument where the instance goes, or the instance where the argument lives ('T&x(...)')") \
    X(ERR_GLOBAL_HOLDS_SHORTER,         "O1b",   "a global holds only what lives as long as the program - store something built here, or another global's") \
    X(ERR_VALUE_REFS_OUTLIVED,          "O25h",  "this value holds references into a scope the target outlives - build it where the target is") \
    X(ERR_CONTAINER_SCOPE_UNBUILDABLE,  "O25a",  "this container's scope cannot be built into from here - write through the global itself") \
    /* ---- statements ---- */ \
    X(ERR_MUT_ON_LOCAL,                 "D11a",  "a local is always writable - 'mut' is for a reference, and %t is none") \
    X(ERR_MUT_ON_INFERRED_LOCAL,        "D11a",  "':=' gives a local its initializer's permission - remove 'mut', or write the type: 'x mut T& = ...'") \
    X(ERR_TRY_SETAT_NEEDS_LEN,          "E31a",  "'try c[i] = v' checks against Len, and %t has neither TrySetAt nor Len") \
    X(ERR_NOT_A_STATEMENT,              "S3",    "this computes a value and discards it - only a call, '++' or '--' stands alone") \
    X(ERR_JOIN_NEXT_LINE,               "S3, E11b", "text on a line of its own does nothing - a join continues onto the next line only inside parentheses") \
    X(ERR_CONDITION_CONSTANT,           "S8a",   "this condition is the same on every build, so one branch is dead - depend on a build constant, or remove it") \
    X(ERR_RANGE_NOT_INT,                "S9b",   "a range's bounds and step are integers, found %t") \
    X(ERR_RANGE_STEP,                   "S9b",   "a range only counts upward, so its step is positive") \
    X(ERR_COMPR_NEEDS_TRY,              "E27, S9e", "this comprehension's own calls can fail - write 'try T[e for x in c]'") \
    X(ERR_FOR_IN_NEEDS_TRY,             "S9e",   "this loop's own calls can fail - write 'for x in try c', with catch clauses after the body") \
    X(ERR_FOR_IN_TRY_NOTHING,           "S9e",   "nothing this loop calls by itself can fail - drop the 'try'") \
    X(ERR_FOR_IN_CLAUSE_EXIT,           "S9e",   "a loop's catch clause runs after the loop has ended, so it has no loop to break or continue - set a flag") \
    X(ERR_FOR_IN_NAME_EXISTS,           "D3a, E29", "%n is already declared, and a for-in declares new names - choose another, or to loop while it is in c write 'for { if %S not in c { break } }'") \
    X(ERR_NOT_ITERABLE,                 "S9a",   "%t cannot be walked - 'for ... in' takes an array, a range, an iterator ('mut Next() T ? Exhausted') or a type with Iter()") \
    /* ---- match ---- */ \
    X(ERR_ALT_BINDS_OTHER_NAMES,        "S13c",  "every alternative binds the same names - bind it in each, write '_', or split the case") \
    X(ERR_BOUND_TWICE,                  "S13c",  "%n is bound twice in one alternative") \
    X(ERR_ALT_BINDING_TYPE,             "S13c",  "%n is bound as %t by an earlier alternative - split the case") \
    X(ERR_CASE_VALUE_TYPE,              "S13",   "a case value here is %t, found %t") \
    X(ERR_PATTERN_ARITY,                "S13b",  "case %S holds %d fields, and a pattern names each - write '_' for one not wanted") \
    X(ERR_ARROW_IN_STATEMENT,           "S12b",  "'=>' gives a value, which only a match used as a value takes - a statement's case runs a block") \
    X(ERR_ARROW_LEAVES,                 "S12b",  "'=>' gives a value, and %n gives none - a clause that leaves is a block: '{ %S }'") \
    X(ERR_LINE_STARTS_WITH_OPERATOR,    "L18",   "a line cannot begin with %n - the line before ended its statement; end that line with %n, or put the expression in parentheses") \
    X(ERR_CASE_BLOCK_STAYS,             "S12b",  "this block can finish without leaving - give the value with '=> v'") \
    X(ERR_GUARD_NOT_BOOL,               "S13e",  "a guard is a Bool, found %t") \
    X(ERR_UNKNOWN_TYPE_VAR,             "",      "unknown type variable %S") \
    X(ERR_TYPE_MATCH_GUARD,             "S13e",  "a type match chooses its case while compiling, so it takes no guard - test the value inside the case") \
    X(ERR_TYPE_MATCH_UNCOVERED,         "G15",   "no case covers %t, which this generic is instantiated with - add one, or 'nomatch'") \
    X(ERR_MATCH_VALUE_TYPES,            "S12b",  "every value of this match is %t, found %t") \
    X(ERR_MATCH_NOT_EXHAUSTIVE,         "S13a",  "case %S of %t is not covered - add it, or 'nomatch { }'") \
    X(ERR_MATCH_VALUE_NEEDS_NOMATCH,    "S12b",  "a match over %t gives a value only when its cases cover every value - add 'nomatch => v'") \
    X(ERR_MATCH_VALUE_ONE,              "S12b, D8c", "a match gives one value - to give several, return them from each case of a match statement: 'case P { return a, b }'") \
    X(ERR_WILDCARD_NOT_ALONE,           "S13f",  "'_' matches every value, so it is its case's only alternative") \
    X(ERR_CASE_AFTER_WILDCARD,          "S13f",  "no value reaches this - an earlier 'case _' with no guard takes every one") \
    X(ERR_CASE_UNKNOWN_NAME,            "S13f",  "unknown name %n - a name in a case is a value compared by '=='; to take any value and test it, write 'case _ if ...'") \
    X(ERR_CASE_IS_SUBJECT,              "S13f",  "%n is the value being matched, so this compares it with itself - to take any value and test it, write 'case _ if ...'") \
    /* ---- return and error ---- */ \
    X(ERR_RETURN_BORROW_AS_BUILT,       "O14",   "this returns a parameter's data, and the result's bare '&' is built - borrow it: 'T&p'") \
    X(ERR_RETURN_OWN_STORAGE,           "O26",   "this value refers to this function's own storage, which dies at the return - build it in '&return'") \
    X(ERR_DEFER_RETURNS,                "S19b",  "deferred code may not return - it runs while its block is left") \
    X(ERR_RETURN_COUNT,                 "D8c",   "this function returns %d value%s, found %d") \
    X(ERR_RETURN_IN_CTOR,               "C2b",   "a constructor gives no value - its fields are the instance; fail with 'error'") \
    X(ERR_RETURN_IN_TEST,               "S15",   "a test has nothing to return to - end it with 'done' or 'fail'") \
    X(ERR_RETURN_VALUE_IN_VOID,         "D8",    "this function returns no value") \
    X(ERR_RETURN_NEEDS_VALUE,           "D8",    "this function returns %t, so 'return' needs a value") \
    X(ERR_ERROR_OUTSIDE_FUNCTION,       "R3",    "'error' fails a function, and this is not inside one") \
    X(ERR_DEFAULT_ERROR_NAMED_SIG,      "R16",   "this function names its errors, so it fails with one of them: 'error T.WORD'") \
    X(ERR_DEFAULT_ERROR_UNDECLARED,     "R16",   "this function declares no errors - add '?' to fail with the default error") \
    X(ERR_ERROR_WORD_IS_PRIVATE,        "M6a",   "error word %n is private to its module") \
    X(ERR_ERROR_UNDECLARED,             "R3",    "this function does not declare %n - add it after '?'") \
    /* ---- join and spawn ---- */ \
    X(ERR_JOIN_WITHOUT_SPAWN,           "P1a",   "this join spawns nothing, so it waits for nothing") \
    X(ERR_SPAWN_LAMBDA_PARAMS,          "D16e",  "a spawned lambda takes no parameters - it captures what it needs") \
    X(ERR_SPAWN_IN_DEFER,               "S19b, P1a", "a spawn in deferred code needs a join written in the deferred code") \
    X(ERR_SPAWN_OUTSIDE_JOIN,           "P1",    "'spawn' is written inside a 'join' block, which waits for the task") \
    X(ERR_SPAWN_NOT_CALL,               "P1",    "'spawn' takes a call") \
    X(ERR_SPAWN_FALLIBLE,               "P4",    "a spawned function may not declare errors - they would have nowhere to go") \
    X(ERR_SPAWN_ARG_TOO_SHORT,          "P2",    "this argument's storage closes before the join does - declare it at the join's level or wider") \
    X(ERR_SPAWN_ARG_HOLDS_SHORT,        "P2",    "this argument refers to storage that closes before the join does - declare that at the join's level or wider") \
    X(ERR_SPAWN_CAPTURE_TOO_SHORT,      "P2, D16e", "this lambda captures a variable declared inside the join, which closes while the task may run") \
    X(ERR_SPAWN_FUNC_TOO_SHORT,         "P2, D16e", "this function value closes before the join does - make it outside, or spawn the lambda itself") \
    X(ERR_SPAWN_RESULT_VOID,            "P1g",   "this call returns nothing to bind - drop the target") \
    X(ERR_SPAWN_RESULT_TYPE,            "P1g",   "a spawn target has exactly the call's type %t, found %t - convert after the join") \
    X(ERR_SPAWN_RESULT_TOO_SHORT,       "P1g",   "this target closes before the join does - declare it at the join's level or wider") \
    X(ERR_SPAWN_RESULTS_DISAGREE,       "P1g",   "these targets live in different scopes, and the results are built in one") \
    /* ---- lambdas ---- */ \
    X(ERR_FUNC_VALUE_OBLIGATIONS,       "T22a",  "'%S' relates its arguments' scopes, which a call through a function value cannot check - call it directly") \
    X(ERR_LAMBDA_VALUE_OBLIGATIONS,     "T22a",  "this lambda keeps '%S' beyond the call, which a call through a function value cannot check - keep a copy instead") \
    X(ERR_LAMBDA_VALUE_RELATES,         "T22a",  "this lambda relates its arguments' scopes, which a call through a function value cannot check") \
    X(ERR_CAPTURE_HOLDS_REFERENCES,     "D16c",  "a lambda copies what it captures, and a copy of this loses its references' scopes - capture a reference to it") \
    X(ERR_LAMBDA_RESULT_UNINFERABLE,    "D16b",  "this value gives the lambda no result type - write one") \
    X(ERR_LAMBDA_ARITY,                 "D16a",  "%t takes %d parameter%s, and this lambda %d") \
    X(ERR_LAMBDA_SIGNATURE,             "D16a",  "this lambda's signature disagrees with %t - leave that part out, or make them agree") \
    X(ERR_LAMBDA_PARAM_UNTYPED,         "D16a",  "lambda parameter %n has no type, and nothing gives it one - write it") \
    X(ERR_ALREADY_DECLARED,             "",      "%n is already declared here") \
    X(ERR_MISSING_RETURN,               "D10a",  "the end can be reached without returning %t - return on every path, or end it with 'unreachable'") \
    X(ERR_BREAK_OUTSIDE_LOOP,           "S11",   "%n acts on the innermost loop, and there is none here") \
    X(ERR_DEFER_LOOP_JUMP,              "S19b",  "%n may not leave deferred code - it runs while its block is left") \
    X(ERR_CATCH_DEFAULT_NOT_PRODUCED,   "R18",   "the call does not fail with the default error") \
    X(ERR_CATCH_NOT_PRODUCED,           "R14",   "the call does not fail with %t") \
    X(ERR_TRY_CATCH_ON_SLICE,           "R10",   "a try statement discards its value, leaving a slice nothing - write 's := try a[lo:hi]' and catch where it is used") \
    /* ---- decided while compiling ---- */ \
    X(ERR_EMPTY_DESTRUCTOR,             "C7a",   "this destructor does nothing - remove it") \
    X(ERR_LITERAL_CTOR_FAILS,           "T29d",  "this literal enters %t through its constructor, which does not run on it while compiling: %s") \
    X(ERR_ZERO_VALUE_SHARED,            "D13c",  "%t's zero value holds references, which a fill would share - give a fill, or build the elements") \
    X(ERR_NO_ZERO_VALUE,                "D13c",  "%t has no zero value, so this needs one - its constructor does not run on zeros while compiling: %s") \
    X(ERR_DEFAULT_NOT_COMPUTABLE,       "D8a",   "a default is computed while compiling, and this one cannot be: %s") \
    X(ERR_ASSERT_FALSE,                 "S18c",  "this assertion is false, evaluated while compiling") \
    X(ERR_ASSERT_FALSE_MESSAGE,         "S18c",  "this assertion is false, evaluated while compiling: %s") \
    X(ERR_ASSERT_MESSAGE_NOT_TEXT,      "S18a",  "an assertion's message is text, found %t - write it as text: \"x is \" $x") \
    X(ERR_ASSERT_ABORTS,                "S18c",  "this assertion aborts the program, evaluated while compiling: %s") \
    X(ERR_GLOBAL_ABORTS,                "K2",    "this global's initializer aborts the program, evaluated while compiling: %s") \
    X(ERR_COND_TOO_DEEP,                "B9c",   "conditions decide branches holding further conditions more than %d levels deep") \
    /* ---- the program as a whole ---- */ \
    X(ERR_MAIN_SIGNATURE,               "B4",    "main takes no parameters, returns no value and declares '?': 'fn main() ? { }'") \
    X(NOTE_OBLIGATION_ORIGIN,           "",      "the callee requires it because of this statement") \
    X(NOTE_MAKE_WHERE,                  "",      "'%S' is made here, in a block that closes first - make it where '%S' lives: '%S&%S(...)'") \
    X(NOTE_DECLARE_WHERE,               "",      "'%S' is declared here, in a block that closes first - declare it where '%S' lives: '%S %S&%S = ...'") \
    X(NOTE_LOOP_COPY,                   "",      "'%S' is the loop's copy of an element, made in the loop's block - lend the element itself: '%S[i]', with 'for i in range %S.Len()'") \
    X(ERR_COND_UNDECIDABLE,             "B9c",   "this top-level condition cannot be decided while compiling: %s") \
    X(ERR_COND_UNSEEN,                  "B9c",   "this top-level condition uses what exists only in the branches it decides, or does not check") \
    X(ERR_COND_DECIDED_NOT_BOOL,        "B9",    "a top-level condition is true or false") \
    X(ERR_GLOBAL_READS_ITSELF,          "B5a",   "%S's initializer reads %S, which is not set until the initializer is done") \
    X(ERR_GLOBALS_CYCLE,                "B5a",   "these globals' initializers read each other, so none can be set first: %s") \
    X(ERR_MODULE_IDENTITY_CLASH,        "M22a",  "this module has the same identity as %S - rename one, or import it by a relative path")

enum diag {
    DIAG_NONE, //no diagnostic - what a function that may find one returns when it found none
#define DIAG_ENUM(id, rule, fmt) id,
    DIAGNOSTICS(DIAG_ENUM)
#undef DIAG_ENUM
    DIAG_COUNT
};

//an error about the token at
void Err(struct token at, enum diag d, ...);
//the same, counted as a syntax error too - which may have hidden a declaration, so a missing one is not reported
void ErrSyntax(struct token at, enum diag d, ...);
//an error about the whole of a file
void ErrFile(struct str file, enum diag d, ...);
//an error that ends the compilation: what is already certain is shown, then this - about the file, or with no
//location where file is empty
void ErrFatal(struct str file, enum diag d, ...);
//a mistake in the command line itself: reported, and the process ends - no compilation began
void ErrUsage(enum diag d, ...);
//a note on the error just reported, about the token at
void Note(struct token at, enum diag d, ...);
//B11: between Start and End (a statement), only the first error about where something lives is reported; End takes
//what Start returned, so groups nest
int ErrMsgScopeGroupStart(void);
void ErrMsgScopeGroupEnd(int saved);
//G16b: the error just reported had to spell an instantiation's types where the generic's own were wanted - the same
//error from another instantiation that can spell them is written in its place (one error for every instantiation)
void ErrMsgWeakSpelling(void);
//B11a: prints rule's text from the specification; the process's exit status
int ErrMsgExplain(char* rule);
//code, a terminal colour, where diagnostics go to a terminal, and "" where they do not (a file, a pipe, an agent)
const char* ErrMsgColor(const char* code);

int ErrMsgGetNErrors();
int ErrMsgGetNSyntaxErrors();
void ErrMsgFinishCompilation();
//every error reported until the matching pop carries a note at tok saying msg - "instantiated here" (G16)
void ErrMsgPushContext(struct token tok, char* msg);
void ErrMsgPopContext(void);
//G27: the contexts open now, to report an error found later as though inside them (NULL when none is)
struct errContextSaved;
struct errContextSaved* ErrMsgSaveContext(void);
void ErrMsgPushSaved(struct errContextSaved* s);
void ErrMsgPopSaved(struct errContextSaved* s);
//B11: an error in the standard library's code, met while it is checked for one of the program's uses of it (a generic
//instantiated with the program's types), is reported at that use - the innermost open context in the program's own
//files - with a note at the library's line. isLibrary says which files are the library's.
void ErrMsgSetLibraryTest(bool (*isLibrary)(struct str file));
//...the same for an error reported later, once the contexts are closed: where it is to be reported, if not at `at`
bool ErrMsgProgramUse(struct token at, struct token* use);
//K4: hold diagnostics back, then print them (Flush) or drop them and their count (Discard)
void ErrMsgBufferStart(void);
void ErrMsgBufferFlush(void);
void ErrMsgBufferDiscard(void);
void ErrMsgMuteStart(void);
void ErrMsgMuteEnd(void);
bool ErrMsgMuted(void); //inside a muted stretch: nothing reported now would be seen
void ErrMsgFlush(void);
//a crash of the calling thread is reported rather than silent, even after a stack overflow - call once per thread the
//compiler runs on, before it does anything else
void ErrMsgInstallCrashHandler(void);
//B3e: the program being run is the interpreted one - its own abort is not a crash, and a crash may be its
void ErrMsgSetInterpreting(bool on);
void ErrMsgSetRunCrashMessage(const char* msg, long long len);

#endif //ERRMSG_H
