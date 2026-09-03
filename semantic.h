#ifndef SEMANTIC_H
#define SEMANTIC_H

#include "util.h"
#include "token.h"
#include "syntax.h"

struct operand; //defined below; forward-declared for struct type/struct var's pointer fields

enum baseType {
    BASETYPE_VOID, //result of a function call with no declared return type
    BASETYPE_BOOL,
    BASETYPE_BYTE,
    BASETYPE_INT32,
    BASETYPE_INT64,
    BASETYPE_FLOAT32,
    BASETYPE_FLOAT64,
    BASETYPE_ARRAY,
    BASETYPE_STRUCT,
    BASETYPE_VOCAB,
    BASETYPE_FUNC,
    BASETYPE_ERROR,
    BASETYPE_SCOPE, //an ownership scope - see the report; only ever a function parameter's type, never
                     //resolved through the general resolveTypeExpr/resolveTypeRef path (mirrors how error
                     //types have their own dedicated resolveErrorTypeName lookup, not the general one)
};

struct type {
    struct semaModule* owner; //the module a named type was declared in; NULL for anonymous/vanilla types
    enum baseType bType;
    struct str name;
    struct token tok;
    bool placeholder; //name collected, body not resolved yet
    bool resolving;   //cycle guard while resolving this type's body

    //BASETYPE_ARRAY
    struct type* arrElem; //heap-allocated element type; int32[][-2] = array[-2] of (array of int32)
    bool arrMalloc;        //true if this level has no compile-time length (allocated with a runtime one)
    struct operand* arrLen; //size expression for this level, NULL when arrMalloc

    //BASETYPE_STRUCT
    struct list vars; //list of struct var: struct members, or function/func-type parameters
    bool structMAlloc; //true when referenced via a trailing "{}" or "{name}" - heap-indirect, breaks
                        //recursive embedding
    //valid only when structMAlloc: NULL for a bare "{}" (this value's own private/local scope - not
    //further distinguished at the type-system level yet, see the report); non-NULL for an explicit
    //"{name}", pointing at the BASETYPE_SCOPE parameter that value is allocated into
    struct var* scopeParam;

    //BASETYPE_STRUCT, only when declared "struct(params) { ... }" - see the report. `vars` above still
    //holds the actual fields (in declaration order); these describe the constructor/destructor built
    //around them.
    bool hasCtor;
    struct var* ctorFunc; //synthetic BASETYPE_FUNC var (params = the constructor's own declared
                           //parameters, errors = its declared error union, retType = this struct's plain
                           //value type) registered under an internal, never-user-typable name so ordinary
                           //call-site machinery (OperandFuncCall/checkTrySuperset/cgFuncCall) handles
                           //"Type(args)" with no dedicated call path of its own - resolveCallTarget routes
                           //a bare type name with hasCtor here instead of failing with UNKNOWN_VAR
    struct list ctorFieldSyntax; //list of struct syntax* (SNTX_CTOR_FIELD), index-aligned with `vars` -
                                   //resolved (types only) in pass 2; checked into ctorFunc->codeBlock's
                                   //single return value in pass 3, once the constructor's own parameters
                                   //are back in scope

    bool hasDestruct;
    struct var* destructFunc; //synthetic BASETYPE_FUNC var, one param (the instance, by value, plain
                                //struct type), no return type, no error union - a destructor can never
                                //propagate a failure to anyone (see the report), so any fallible call in
                                //its body must be fully caught right there, same rule as a test{} block
    struct syntax* destructBlockSyntax; //raw SNTX_BLOCK trailing the constructor; NULL if !hasDestruct

    //BASETYPE_VOCAB, BASETYPE_ERROR
    struct list words; //list of struct token: vocab or error member names

    //BASETYPE_FUNC
    bool hasRetType;
    struct type* retType; //heap-allocated, valid when hasRetType
    struct list errors; //list of struct type*: error types declared in the signature's error list
    bool isExtern; //true for an "extern func" decl (§11) - never fallible (errors always empty), params/
                    //retType restricted to numeric primitives or arrays of them, codegen emits a bare C-ABI
                    //declare/call instead of the olang {code,payload} convention
};

//one entry of an operand/var's own scope-binding map (see resolveEffectiveScopeVar in semantic.c) - "at
//this specific call/access, the callee's/type's own scope parameter typeParam was concretely bound to
//boundTo" (NULL for own/bare). typeParam is always some OTHER function's or type's own declared scope
//parameter (a function's own return type, or a constructor's own field type); boundTo, when non-NULL, is
//always one of the CURRENT function's own scope parameters - the only two shapes a "scope"-typed argument
//can ever have (own, or a direct read of one of the current function's own scope params), so a binding is
//always a single, already-final hop - never itself needs further resolution through another map.
//viaPath disambiguates typeParam when it alone isn't a unique key within one call's own merged map: two
//DIFFERENT arguments of a constructor call may themselves be instances of the exact same constructor-
//bearing type (e.g. two bare-pun fields both "WrappedPoint<...>"), so their own inner scope params share
//the same typeParam identity even though they're unrelated. viaPath is a stack (list of struct var*,
//nearest/most-recent first) of the call parameters an entry has flowed through so far: OperandFuncCall's
//bare-pun merge step PUSHES the current call's own parameter onto whatever path an incoming entry already
//carried, and OperandMember's bare-pun carry-forward step (matched against struct var.punParam below)
//POPS exactly one frame - the one it's responsible for - when a field access consumes it, so an entry can
//be threaded correctly through however many levels of nested bare-pun forwarding it passes through, one
//hop (one push, or one pop) at a time, the same way the rest of this checker only ever resolves one hop
//per level rather than needing a general path/chain type of its own. An empty path means "unambiguous
//regardless of path" - true for a callee's own scope-typed parameter's direct binding (each such parameter
//is already a unique key on its own) and for anything already fully popped down to one field. See the
//report.
struct scopeBinding {
    struct var* typeParam;
    struct var* boundTo;
    struct list viaPath; //list of struct var* - see the comment above
};

//a variable or function - the two share one namespace/list everywhere they're declared (module scope,
//function params, struct members), so one struct covers both
struct var {
    struct semaModule* owner; //the module this was declared in; NULL for locals/params (never called or
                               //read cross-module by name, so codegen never needs it for those) - used to
                               //mangle a cross-module call target under its own module, not the caller's
    struct str name;
    struct type type;
    struct token tok;
    bool mut; //local variables are mutable by default
    bool mayBeInitialized; //access defined only through the origin member
    struct var* origin; //where the variable declaration is stored throughout the compilation process
    struct list codeBlock; //for functions
    struct operand* initExpr; //for module-level globals only: the checked initializer, used by codegen
    struct list scopeBindings; //list of struct scopeBinding - propagated one hop from a local's own
                                //initializing operand at declaration time (see buildVarDeclStmnt), so a
                                //later read of this var carries the same map its initializer had - see
                                //the report on extending the static scope checker past one function's frame
    struct var* punParam; //fields only: for a bare-pun field ("{ name }" alone, forwarding a same-named
                           //constructor parameter unchanged), the constructor parameter it puns - the
                           //canonical, type-level var from the declaring type's own ctorFunc.type.vars (set
                           //in resolveStructCtorInto). NULL for every other field kind. Lets OperandMember
                           //identify, at a bare-pun field access, which of the base's own scopeBinding
                           //entries (see viaPath above) actually belong to THIS field - see the report.
};

enum statementType {
    STATEMENT_VAR_DECL,
    STATEMENT_ASSIGN,
    STATEMENT_EXPR,
    STATEMENT_IF,
    STATEMENT_FOR,
    STATEMENT_DO,
    STATEMENT_MATCH,
    STATEMENT_CASE,
    STATEMENT_RET,
    STATEMENT_DONE,  //process exit, OS-standard success (0) - never takes a value
    STATEMENT_CRASH, //process exit, OS-standard failure (1) - never takes a value
    STATEMENT_ASSERT,
    STATEMENT_ERROR,
    STATEMENT_TRY_CATCH
};

//one "catch" match entry - either a whole error type (hasWord false, e.g. "catch MyError") or one specific
//word of it (hasWord true, e.g. "catch MyError.NotFound"); wordOrdinal is only valid when hasWord
struct catchMatch {
    struct type errType;
    bool hasWord;
    long long wordOrdinal;
};

struct statement {
    enum statementType sType;
    struct var var;              //VAR_DECL: the declared variable; FOR: the loop variable
    struct operand* target;      //ASSIGN: the lvalue being assigned to
    struct operand* op;          //VAR_DECL/ASSIGN: rhs value; IF/FOR/DO/MATCH/CASE/ASSERT: condition/matched
                                  //value; RET: value (NULL if bare); ERROR: the selected error word (never
                                  //NULL); TRY_CATCH: the tried call (OPERATION_FUNCCALL, never NULL); unused
                                  //for DONE/CRASH, which never carry a value
    struct operand* forInit;     //FOR only: the loop variable's initial value expression
    struct operand* forPost;     //FOR only: the post-iteration expression
    struct list block;           //list of struct statement: the primary body; TRY_CATCH: the catch body
    struct statement* elseStmnt; //IF only: heap-allocated, NULL if no else clause
    bool elseIsBlock;            //IF only: true if elseStmnt is a bare block wrapper rather than a chained "else if"
    struct list matchCases;      //MATCH only: list of struct statement (STATEMENT_CASE)
    bool hasNomatch;             //MATCH only
    struct list nomatchBlock;    //MATCH only
    struct list catchMatches;    //TRY_CATCH only: list of struct catchMatch
};

enum operation {
    OPERATION_NONE,

    OPERATION_READ_VAR,
    OPERATION_FUNCCALL,
    OPERATION_INDEX,
    OPERATION_MEMBER,
    OPERATION_LEN, //"len(arr)" - a compiler builtin, not an ordinary function (needs to work over any
                    //array type regardless of element type/dimensionality, which no user-space signature
                    //can express without generics) - see the report
    OPERATION_SIZED_ARRAY_ALLOC, //an uninitialized "T[expr]" var-decl (expr not a compile-time constant) -
                                   //a runtime-length array of expr zero-valued elements, arena-allocated (own by
                                   //default, or the declared type's own "&name" tag) - see the report.
                                   //args[0] is the (already-checked-integer) size expression; op->type is
                                   //the declared runtime-length array type (arrMalloc, element type, scope tag)
    OPERATION_NUMERIC_CONVERT, //"TypeName(x)" where TypeName is one of the five numeric primitive types
                                 //(byte/int32/int64/float32/float64) - the explicit conversion builtin (see
                                 //the report): a real runtime instruction (widen/narrow/int<->float), unlike
                                 //a numeric LITERAL's own implicit widening (numericLiteralCanWiden in
                                 //semantic.c), which is pure reinterpretation with no instruction at all.
                                 //args[0] is the (already-checked-numeric) source operand; op->type is the
                                 //target numeric type named by TypeName

    //unary
    OPERATION_NOT,
    OPERATION_BTWSE_INV,
    OPERATION_MINUS,
    OPERATION_PREFIX_INC,
    OPERATION_PREFIX_DEC,
    OPERATION_POSTFIX_INC,
    OPERATION_POSTFIX_DEC,

    //binary
    OPERATION_MOD,
    OPERATION_ADD,
    OPERATION_SUB,
    OPERATION_MUL,
    OPERATION_DIV,
    OPERATION_LST,
    OPERATION_LSE,
    OPERATION_GRT,
    OPERATION_GRE,
    OPERATION_EQ,
    OPERATION_NEQ,
    OPERATION_AND,
    OPERATION_OR,
    OPERATION_XOR,
    OPERATION_BTSFT_L,
    OPERATION_BTSFT_R,
    OPERATION_BTWSE_AND,
    OPERATION_BTWSE_OR,
    OPERATION_BTWSE_XOR
};

struct operand {
    struct token tok;
    struct type type;
    struct list args; //list of struct operand*: operator operands, call args, or [base, index]/[base] for index/member
    enum operation opType;
    bool isLiteral;
    struct var* readVar; //valid for OPERATION_READ_VAR and as the lvalue base for INC/DEC
    long long intLiteralVal;
    double floatLiteralVal; //valid for float literals only
    struct str memberName; //valid for OPERATION_MEMBER
    bool memberMut;        //valid for OPERATION_MEMBER: the FIELD's own mutability (C3), separate from
                            //whether the base is mutable - a constructor field is mutable only if declared
                            //"mut", while a plain (T13) struct's fields are always mutable
    bool isTried; //OPERATION_FUNCCALL only: true if this call was written as "try f(...)" - see semantic.c
    struct list scopeBindings; //list of struct scopeBinding - see the type's own comment. Populated for a
                                //function/constructor call (from its own scope-typed params matched against
                                //the actual arguments) and for a member access whose field carries a scope
                                //tag resolvable through the base's own map; empty (the common case) for
                                //everything else. See resolveEffectiveScopeVar in semantic.c.
};

struct semaImport {
    struct str alias;
    struct token aliasTok; //anchors error reporting for anything checked against this one import later
                            //(unknown-namespace lookups already use their own reference-site token instead,
                            //but the duplicate/cycle checks below don't have one of those to use)
    struct semaModule* mod;
};

//one test { } block, resolved and checked like a body-less function - see semaCheckBodies
struct semaTest {
    struct str description;
    struct list codeBlock; //list of struct statement
};

struct semaModule {
    struct str fileName;
    struct syntaxModule syn;
    struct list types;   //list of struct type
    struct list vars;    //list of struct var: globals and functions share one namespace
    struct list imports; //list of struct semaImport
    struct list tests;   //list of struct semaTest: only test{} blocks declared directly in this file
    struct list declaredTypeNames; //list of struct str: this file's own top-level "type"/"error" names,
                                    //from ScanTypeNames - populated before the real parse even runs, so
                                    //the parser can tell "Type{...}" (a struct literal) apart from
                                    //"condition { block }" by checking whether a name is a known type -
                                    //see the report
    //memoization + cycle guard for computePublicClosure (semantic.c) - the set of modules reachable from
    //this one via zero or more PUBLIC (capitalized-alias) import hops, including itself. See the report.
    bool publicClosureComputed;
    bool computingPublicClosure;
    struct list publicClosure; //list of struct semaModule*, only valid once publicClosureComputed
};

long long TypeGetSize(struct type t);
struct type TypeVanilla(enum baseType bType);
struct type TypeFromType(struct str name, struct token tok, struct type tFrom);
bool TypeIsByteArray(struct type t);
struct type* TypeGetList(struct list* l, struct str name);
bool TypeIsSame(struct type a, struct type b);
bool TypeIsNumeric(struct type t);
bool TypeIsInt(struct type t);
bool TypeIsFloat(struct type t);
char* TypeDescribe(struct type t);

struct var* VarAllocSetOrigin();
struct var* VarGetList(struct list* l, struct str name);
void VarListAddSetOrigin(struct list* l, struct var v);

void StatementAdd(struct list* codeBlock, struct statement s);
bool StatementCatchCoversType(struct list* matches, struct type errType);

struct semaModule* SemanticAnalyzeFile(char* fileName, bool testMode);
struct list* SemanticAllModules(void); //list of struct semaModule*, in load order; index is used for codegen symbol mangling
struct type* SemanticGenericErrorType(void); //the generic error singleton (§7.6 R15) - codegen uses this
                                              //only to print a cleaner "unhandled error: error" message,
                                              //never for ordinal encoding (already generic, see the report)

#endif //SEMANTIC_H
