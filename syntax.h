#ifndef SYNTAX_H
#define SYNTAX_H

#include "token.h"
#include "util.h"

enum syntaxType {
    SNTX_TOP_DECL,
    SNTX_IMPORT,
    SNTX_NAME,
    SNTX_ARR_SFX,
    SNTX_TYPE_VAR,        //"<T>" standing where a whole type-expr would go - a generic type variable
                           //(§12.1 G1). Distinct from SNTX_TYPE_ARGS by position: a type-var opens a type
                           //expression, type-args always follow a name
    SNTX_TYPE_PARAMS,     //"<A, B>" after a type declaration's name - declares its parameters and, by
                           //their order, what a type-args list supplies positionally (§12.3 G6)
    SNTX_TYPE_ARGS,       //"<int32, T>" after a type name in a type-ref - instantiates a generic (G8)
    SNTX_ELEM_REF_MARKER, //"&" / "&name" written BEFORE any array suffixes - marks the ELEMENT type as a
                           //reference ("Point&[3]" is an array of 3 references to Point)
    SNTX_REF_MARKER,      //"&" / "&name" written AFTER any array suffixes - marks the type as a whole
                           //("Point[3]&" is one reference to an array of 3 Point values). With no array
                           //suffix at all the two positions coincide and the marker is parsed as the
                           //element one, which is the same type either way
    SNTX_TYPE_REF,
    SNTX_VOCAB_BODY,
    SNTX_STRUCT_MEMBR,
    SNTX_STRUCT_BODY,
    SNTX_CTOR_FIELD,      //one field inside a constructor-bearing struct's body - "name = expr" (bound to a
                           //param or any expr), "name Type [= expr]", "name := expr", or a bare "name" pun
                           //(binds directly to a same-named constructor param) - see the report
    SNTX_CTOR_FIELD_LIST,
    SNTX_STRUCT_CTOR,     //"struct(PARAM_LIST) ERROR_LIST? { CTOR_FIELD_LIST } DESTRUCT?" - only reachable
                           //from parseTypeDecl (never a general type expression) - see the report
    SNTX_DESTRUCT,        //"destruct BLOCK" - trails a SNTX_STRUCT_CTOR; no error union of its own, so every
                           //fallible call inside must be fully caught locally (same rule as test{} blocks)
    SNTX_TYPE_EXPR,
    SNTX_TYPE_DECL,
    SNTX_TEST_DECL,
    SNTX_ERROR_DECL,
    SNTX_ERROR_LIST,
    SNTX_BARE_ERROR,   //bare "error" keyword, standing in for a real name - see the report on "the
                          //bare error": valid as an error-list item, an error-stmnt's own bare form
                          //(where it's the whole SNTX_STMNT_ERROR node, not a child of it), and a catch-item
    SNTX_RET_TYPE,
    SNTX_PARAM,
    SNTX_PARAM_LIST,
    SNTX_FUNC_SIG,
    SNTX_FUNC_TYPE,
    SNTX_FUNC_DEF,
    SNTX_EXTERN_PARAM,      //"IDEN type-expr" - no "mut", unlike SNTX_PARAM (see the report on §11) -
                             //the restriction to a numeric-primitive-or-array-of-them type is checked
                             //semantically, not by a separate type-expr grammar
    SNTX_EXTERN_PARAM_LIST,
    SNTX_EXTERN_FUNC_DECL,  //"extern func IDEN ( EXTERN_PARAM_LIST ) RET_TYPE? STMNT_END" - a top-level
                             //declaration only, no body, no error-list - see the report on §11
    SNTX_VAR_DECL,
    SNTX_ASSIGN_OP,
    SNTX_STMNT_ASSIGN,
    SNTX_STMNT_EXPR,
    SNTX_STMNT_IF,
    SNTX_FOR_INIT,
    SNTX_STMNT_FOR,
    SNTX_STMNT_DO,
    SNTX_STMNT_CASE,
    SNTX_STMNT_NOMATCH,
    SNTX_STMNT_MATCH,
    SNTX_STMNT_RET,
    SNTX_STMNT_DONE,
    SNTX_STMNT_CRASH,
    SNTX_STMNT_ASSERT,
    SNTX_STMNT_ERROR,
    SNTX_CATCH_ERR,
    SNTX_CATCH_ERR_LIST,
    SNTX_CATCH_CLAUSE,
    SNTX_STMNT_TRY_CATCH,
    SNTX_STMNT,
    SNTX_BLOCK,
    SNTX_EXPR_ARGS,
    SNTX_EXPR_CALL,
    SNTX_EXPR_INDEX,
    SNTX_EXPR_MEMBR,
    SNTX_EXPR_TRY,
    SNTX_ARR_LIT_ARGS,   //array literal's own argument list - each item is either a plain EXPR or a nested
                          //SNTX_ARR_LIT_NESTED bracket group (for a 2D+ literal) - see parseArrLiteralArgs
    SNTX_ARR_LIT_NESTED, //"[" ARR_LIT_ARGS "]" - a nested row with no restated type, only ever valid as one
                          //item inside an enclosing array literal's own arg list - see parseArrayLiteral
    SNTX_EXPR_LITERAL,        //array literal only now - "T[v1, ...]" (dimensionality/size come entirely
                               //from the argument list's own nesting/counts) - see ParseSyntax
    SNTX_EXPR_STRUCT_LITERAL, //struct literal - "Type{v1, ...}" - type-name-aware, see ParseSyntax
    SNTX_EXPR_VOCAB_VALUE,    //"Type.WORD" - a vocab value - type-name-aware, see ParseSyntax
    SNTX_EXPR_DEFAULT,        //the "default" keyword in a call's argument position (E14a) - produced
                              //only by parseExprArgs, so it can never appear inside a larger expression
    SNTX_EXPR_PRIMARY,
    SNTX_EXPR_POSTFIX,
    SNTX_EXPR_UNARY_OP,
    SNTX_EXPR_UNARY,
    SNTX_EXPR_BINARY, //generic "left op right" - precedence resolved by the parser itself (precedence
                       //climbing), not by grammar nesting - see the report
    SNTX_EXPR,
    SNTX_NOT_FOUND
};

//a parse-tree node: pattern-matched shape identified by `type`, with the tokens/nested nodes it matched
struct syntax {
    enum syntaxType type;
    struct list parts; //list of struct syntaxPart
};

struct syntaxPart {
    bool isToken;
    struct token tok;    //valid when isToken
    struct syntax* sntx; //heap-allocated, valid when !isToken
};

//one parsed file: its token stream plus every top-level declaration (SNTX_TOP_DECL) found in it
struct syntaxModule {
    TokenCtx tc;
    struct list decls; //list of struct syntax
};

//true if `name` (aliasChain empty) or an alias chain of any length followed by `name` (e.g. "a.b.name" -
//aliasChain = ["a", "b"]) names a known struct/vocab/error type - consulted only to disambiguate
//"Type{values}" (a struct literal) from "condition { block }" while parsing; an alias hop the lookup
//doesn't recognize simply isn't treated as a type at the parser level (a real error, including privacy,
//is reported later, in semantic analysis, which has the authoritative name tables) - see the report for
//why the parser needs this at all instead of just trying alternatives blindly.
typedef bool (*TypeNameLookup)(void* ctx, struct list aliasChain, struct str name);

struct scannedImport {
    struct str alias; //explicit, or derived from path (deriveImportAlias in syntax.c) if "import "path""
                       //had no alias at all - see the report
    struct token aliasTok; //the explicit alias's own token, or (when derived) a copy of pathTok - always a
                            //real token either way, to anchor error reporting in semantic.c
    struct str path; //raw string-literal content, quotes stripped
    struct token pathTok;
};

struct str deriveImportAlias(struct str path);
bool isValidAliasShape(struct str alias);

struct scanResult {
    struct list typeNames; //list of struct str
    struct list imports;   //list of struct scannedImport
};

//scans an already-tokenized file for its own top-level "type NAME"/"error NAME" declarations and
//"import ALIAS "path"" lines, without parsing bodies at all (just enough brace-depth tracking to skip
//over them) - cheap, and run before the real parse specifically so the real parse can already answer "is
//this identifier a declared type" via TypeNameLookup (including "alias.Name", once the caller has
//recursively done the same scan for each imported file too). Resets the token cursor to 0 when done.
struct scanResult ScanTopLevelDecls(TokenCtx tc);

struct syntaxModule ParseSyntax(TokenCtx tc, void* typeCtx, TypeNameLookup isKnownType);

#endif //SYNTAX_H
