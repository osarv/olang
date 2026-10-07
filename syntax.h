#ifndef SYNTAX_H
#define SYNTAX_H

#include "token.h"
#include "util.h"

enum syntaxType {
    SNTX_TOP_DECL,
    SNTX_IMPORT,
    SNTX_NAME,
    SNTX_TYPE_VAR,        //"<T>" standing where a whole type-expr would go - a generic type variable
                           //(§12.1 G1). Distinct from SNTX_TYPE_ARGS by position: a type-var opens a type
                           //expression, type-args always follow a name
    SNTX_TYPE_CONSTRAINT, //G19: the constraint after a declared type parameter, applying to the item before it
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
    SNTX_CHOICE_BODY,
    SNTX_CHOICE_CASE,  //"IDEN [ \"(\" param-list \")\" ]" - one case of a choice type. The optional
                        //parameter list is the case's PAYLOAD; a case without one is a bare tag, which is
                        //every case a choice had before payloads existed
    SNTX_CASE_PATTERN, //"[alias-chain] Type . Case ( IDEN {, IDEN} )" - a match case that BINDS a
                        //payload-carrying choice case's fields to new names for that arm
    SNTX_INTERFACE_BODY, //"interface { method-sig STMNT_END ... }" - parts are SNTX_METHOD_SIG (T30)
    SNTX_METHOD_SIG,      //"[mut] IDEN func-sig" - one entry of an interface body. The optional leading
                           //TOK_MUT says the method needs a MUTABLE receiver; the name is the sole IDEN
    SNTX_CTOR_FIELD,      //one field inside a constructor-bearing struct's body - "name = expr" (bound to a
                           //param or any expr), "name Type [= expr]", "name := expr", or a bare "name" pun
                           //(binds directly to a same-named constructor param) - see the report
    SNTX_CTOR_BODY,       //a constructor's whole body: CTOR_FIELDs and ordinary STMNTs interleaved in
                           //textual order (a constructor is a function whose top-level locals are the
                           //fields of the value it builds - see the report)
    SNTX_PRIM_CTOR,       //T29d: "(PARAM_LIST) ERROR_LIST? BLOCK" after a declared primitive type's underlying type
    SNTX_STRUCT_CTOR,     //"struct(PARAM_LIST) ERROR_LIST? { CTOR_BODY } DESTRUCT?" - only reachable
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
    SNTX_RECEIVER,          //M19: "( param )" between "func" and the name - marks a METHOD, and is the only
                            //thing that does. Its param is also spliced in as the signature's parameter 0.
    SNTX_PARAM_LIST,
    SNTX_FUNC_SIG,
    SNTX_FUNC_TYPE,
    SNTX_FUNC_DEF,
    SNTX_LAMBDA,            //"fn ( params ) [ret] [? errs] block" in expression position - a parameter's type may be
                            //left out, to be taken from where the lambda is passed
    SNTX_EXTERN_PARAM,      //"IDEN type-expr" - no "mut", unlike SNTX_PARAM (see the report on §11) -
                             //the restriction to a numeric-primitive-or-array-of-them type is checked
                             //semantically, not by a separate type-expr grammar
    SNTX_EXTERN_PARAM_LIST,
    SNTX_EXTERN_FUNC_DECL,  //"extern func IDEN ( EXTERN_PARAM_LIST ) RET_TYPE? STMNT_END" - a top-level
                             //declaration only, no body, no error-list - see the report on §11
    SNTX_VAR_DECL,
    SNTX_VAR_DECLS,   //D12b: "a, b [mut] T [= x, y]" - one SNTX_VAR_DECL (or SNTX_CTOR_FIELD) per name, in order
    SNTX_ASSIGN_OP,
    SNTX_STMNT_ASSIGN,
    SNTX_STMNT_DESTRUCT, //D8c: "a, b := f()" / "a, b = f()" - two or more targets, "_" discarding one
    SNTX_STMNT_EXPR,
    SNTX_STMNT_IF,
    SNTX_STMNT_UNDECIDED, //S8b: a local if whose condition is still being decided and whose branches did not
                          //parse this attempt - skipped; the attempt is redone once it is decided
    SNTX_COND_DEAD,       //S8a: marks an if whose condition compile-time evaluation found fixed, build-free
    SNTX_BODY_INCOMPLETE, //S8b: marks a top-level item holding an SNTX_STMNT_UNDECIDED
    SNTX_STMNT_CHOSEN, //S8b: a local if the build decides, reduced at parse time to the branch it chose
                       //(its one SNTX_BLOCK part), or to nothing when it chose none
    SNTX_FOR_INIT,
    SNTX_STMNT_FOR,
    SNTX_STMNT_FOR_IN, //S9a: "for x in a" / "for i, x in a"
    SNTX_RANGE,        //S9b: "range end" / "range start, end [, step]", only ever after a for's "in"
    SNTX_COMPREHENSION, //E27: "for NAME [, NAME] in (expr | range ...) [if expr]" after an array literal's one item
    SNTX_STMNT_DO,
    SNTX_STMNT_CASE,
    SNTX_STMNT_NOMATCH,
    SNTX_STMNT_MATCH,
    SNTX_STMNT_RET,
    SNTX_STMNT_JOIN,  //"join" followed by a block (P1)
    SNTX_STMNT_SPAWN, //"spawn" followed by a call expression
    SNTX_STMNT_BREAK,
    SNTX_STMNT_CONTINUE,
    SNTX_STMNT_ABORT,
    SNTX_STMNT_UNREACHABLE,
    SNTX_STMNT_DONE,
    SNTX_STMNT_FAIL,
    SNTX_STMNT_ASSERT,
    SNTX_STMNT_ERROR,
    SNTX_CATCH_ERR,
    SNTX_CATCH_ERR_LIST,
    SNTX_CATCH_CLAUSE,
    SNTX_STMNT_TRY_CATCH,
    SNTX_STMNT_TRY_STORE, //E31: "try x[i] = v", "try x[i] += v", "try x++" - [try, ASSIGN | EXPR, clauses...]
    SNTX_STMNT,
    SNTX_BLOCK,
    SNTX_SCOPE_DECL,     //"&name" right after a func/type declaration's own name (§8 O3) - declares a
                          //scope variable the signature's own types never mention, the only case that
                          //needs one; a name the types already declare is rejected here as redundant
    SNTX_SCOPE_ARG,      //"&name" between a call target's name and its "(" (§5.11 E25) - the scope the
                          //caller supplies for the callee's one supplied scope variable (§8 O18).
                          //Adjacency-constrained, which is what tells it from the binary "&" operator.
    SNTX_EXPR_ARGS,
    SNTX_EXPR_CALL,
    SNTX_EXPR_SLICE, //"[" [expr] ":" [expr] "]" - a slice postfix (E16a). Either bound may be absent,
                      //defaulting to 0 and len(base) respectively.
    SNTX_EXPR_INDEX,
    SNTX_EXPR_MEMBR,
    SNTX_EXPR_VALUE_CALL, //E13b: "(args)" after any postfix expression - a call through the function value it gives
    SNTX_EXPR_TRY,
    SNTX_ARR_LIT_ARGS,   //array literal's own argument list - each item is either a plain EXPR or a nested
                          //SNTX_ARR_LIT_NESTED bracket group (for a 2D+ literal) - see parseArrLiteralArgs
    SNTX_ARR_LIT_NESTED, //"[" ARR_LIT_ARGS "]" - a nested row with no restated type, only ever valid as one
                          //item inside an enclosing array literal's own arg list - see parseArrayLiteral
    SNTX_EXPR_LITERAL,        //array literal only now - "T[v1, ...]" (dimensionality/size come entirely
                               //from the argument list's own nesting/counts) - see ParseSyntax
    SNTX_EXPR_CHOICE_VALUE,   //"Type.Case" - a choice value - type-name-aware, see ParseSyntax
    SNTX_EXPR_DEFAULT,        //the "default" keyword in a call's argument position (E14a) - produced
                              //only by parseExprArgs, so it can never appear inside a larger expression
    SNTX_EXPR_PRIMARY,
    SNTX_EXPR_POSTFIX,
    SNTX_EXPR_UNARY_OP,
    SNTX_EXPR_UNARY,
    SNTX_EXPR_TEXT, //E11b: adjacent text pieces - string literals and "$x" renderings - joined into one
    SNTX_EXPR_COND,   //E28: "a if c else b" - parts: the value (a binary-level node), "if", the condition, "else", an EXPR
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
//aliasChain = ["a", "b"]) names a known struct/choice/error type - consulted only to disambiguate
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

//B10: a build constant - one "-D Name=value", or one the compiler defines itself (B10a). Each is an
//immutable global visible in every module, typed as a literal of its value would be, and each may be used
//in a top-level condition (B9).
enum buildConstKind { BUILD_INT, BUILD_FLOAT, BUILD_BOOL, BUILD_STR };
struct buildConst {
    struct str name;
    enum buildConstKind kind;
    long long i;       //BUILD_INT, and BUILD_BOOL as 0/1
    double f;          //BUILD_FLOAT
    struct str text;   //BUILD_INT/BUILD_FLOAT: the literal as written; BUILD_STR: the text itself
    bool builtin;      //defined by the compiler rather than by -D
};
//false for a name that is not an identifier, or that is already defined
bool SyntaxDefineBuildConst(char* name, char* value, bool builtin);
struct list* SyntaxBuildConsts(void);
void SyntaxResetBuildConsts(void);
//B9c: a top-level condition only compile-time evaluation can decide, met by this attempt at compiling
struct pendingCond {
    struct str file;
    int at;              //token position just after its "if"
    struct syntax* cond; //the parsed condition
    void* mod;           //the module it is in (the parser's typeCtx)
    struct token tok;    //its first token
    bool local;          //S8b: in a function body - undecidable means an ordinary runtime if, not an error
    bool skipped;        //S8b: its branches were skipped unparsed this attempt
    void* op;            //S8b: the condition as checked in its own function (a struct operand*), for a
                         //local one - set by the checker when it reaches the if
    int bodyId;          //S8b: which function or test body it is in, for the locals it reads
};
//S8b: what compile-time evaluation made of a local condition
enum condDecisionKind { COND_VALUE, COND_RUNTIME, COND_DEAD, COND_ERROR };
void SyntaxDecideLocalCondition(struct str file, int at, enum condDecisionKind kind, bool value);
void SyntaxResetConditionDecisions(void);
//records a decision (err NULL) or why none could be made (err set) for the condition at file/at
void SyntaxDecideCondition(struct str file, int at, bool value, char* err);
struct list* SyntaxPendingConditions(void); //struct pendingCond
void SyntaxClearPendingConditions(void);

//B9b: the token streams (TokenCtx) of every file of the module about to be scanned and parsed
void SyntaxSetConditionFiles(struct list* tcs);

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
struct syntax* newNode(enum syntaxType type);
void addSntx(struct syntax* s, struct syntax* child);

#endif //SYNTAX_H
