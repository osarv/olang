#ifndef SEMANTIC_H
#define SEMANTIC_H

#include "util.h"
#include "token.h"
#include "syntax.h"

struct operand; //defined below; forward-declared for struct type/struct var's pointer fields

enum baseType {
    BASETYPE_VOID, //result of a function call with no declared return type
    BASETYPE_NULL, //T2a: the type of the "null" literal alone, before it adapts. Never the declared
                    //type of anything - OperandFitsType retags it to whatever nullable target it
                    //meets, exactly as a numeric literal is retagged, so it never reaches codegen.
    BASETYPE_BOOL,
    //T4: the numeric primitives - their names, widths and kinds are the prim table's (PrimInfo), and every
    //question about them goes through it. BYTE/INT32/INT64/FLOAT32/FLOAT64 are U8/I32/I64/F32/F64.
    BASETYPE_BYTE,
    BASETYPE_INT32,
    BASETYPE_INT64,
    BASETYPE_FLOAT32,
    BASETYPE_FLOAT64,
    BASETYPE_I8,
    BASETYPE_I16,
    BASETYPE_U16,
    BASETYPE_U32,
    BASETYPE_U64,
    BASETYPE_F16,
    BASETYPE_BF16,
    BASETYPE_ARRAY,
    BASETYPE_STRUCT,
    BASETYPE_CHOICE,
    BASETYPE_INTERFACE, //a set of method signatures (T30), satisfied structurally and implicitly. `vars`
                         //holds one entry per method - name, a BASETYPE_FUNC type for its signature, and
                         //`mut` meaning "needs a mutable receiver". Always reference-only (T32), so
                         //structMAlloc/scopeParam carry the mandatory marker and its scope tag exactly as
                         //they do for a struct; the value itself is the two-word { itab, data } pair.
    BASETYPE_FUNC,
    BASETYPE_ERROR,
    BASETYPE_TYPEVAR, //a generic type variable ("<T>", §12.1 G1) - carries only its own name, and is
                       //replaced by a concrete type when the enclosing generic is instantiated (G16). No
                       //value ever has this type at run time; it exists purely between declaration and
                       //monomorphization.
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
    bool unknown;     //a stand-in for a type name already reported unknown - it fits anything, so that one
                      //misspelt name is one error
    bool extendsBase; //T29f: a declared type over a number or an array, written "extends" - it inherits the base's
                      //methods and operators
    bool resolving;   //cycle guard while resolving this type's body

    //BASETYPE_ARRAY
    struct type* arrElem; //heap-allocated element type; int32[][-2] = array[-2] of (array of int32)
    bool arrMalloc;        //true if this level has no compile-time length (allocated with a runtime one)
    struct operand* arrLen; //size expression for this level, NULL when arrMalloc

    //BASETYPE_STRUCT
    struct list vars; //list of struct var: struct members, or function/func-type parameters
    bool structMAlloc; //true when referenced via a trailing "{}" or "{name}" - heap-indirect, breaks
                        //recursive embedding
    bool refMut;       //T25b: a WRITABLE reference ("mut T&") - through a read-only one nothing may be written
    bool isTuple; //D8c: the anonymous result of a function returning several values - fields "0", "1", ...
                  //It is never a value in its own right: only destructured, returned, or discarded
    //valid only when structMAlloc: NULL for a bare "&" (O4: this value's own function's "own" scope);
    //non-NULL for an explicit "&name", pointing at the scope VARIABLE (O3) that value is tagged to -
    //an entry in the enclosing signature's own scopeVars below, synthesized by its first appearance in
    //that signature rather than declared anywhere
    //O2/O2a: when scopeParam is NULL the tag names a BLOCK's scope, and this says which one - the
    //nesting depth of the block the marker was written in (a body's top level is 1). Shallower
    //outlives deeper. Meaningless when scopeParam is set, and for a non-reference type it records
    //the depth the variable was declared at, which is what a borrow of it has to satisfy.
    int scopeDepth;
    struct var* scopeParam;
    //O4a: the tag was written as "&x" naming a variable living in a block - scopeParam is then NULL and
    //scopeDepth is that block's, and the tag is a written one, not a bare one to be inferred (O25a)
    bool scopeWritten;

    //BASETYPE_STRUCT, only when declared "struct(params) { ... }" - see the report. `vars` above still
    //holds the actual fields (in declaration order); these describe the constructor/destructor built
    //around them.
                    //several tasks in one spawn block hold it through "mut &" at once. The compiler takes
                    //the declaration's word for it: this is the one place a data race can be introduced,
                    //which is why it is written on the type and not inferred.
    bool hasCtor;
    //C2d: the scope a constructed instance lands in, as a scope variable of the constructor no signature
    //writes. A call binds it only where an argument for a reference parameter with no scope name of its
    //own is existing storage, whose scope the instance must not outlive; see bindCtorHere
    struct var* hereVar;
    struct var* ctorFunc; //synthetic BASETYPE_FUNC var (params = the constructor's own declared
                           //parameters, errors = its declared error union, retType = this struct's plain
                           //value type) registered under an internal, never-user-typable name so ordinary
                           //call-site machinery (OperandFuncCall/checkTrySuperset/cgFuncCall) handles
                           //"Type(args)" with no dedicated call path of its own - resolveCallTarget routes
                           //a bare type name with hasCtor here instead of failing with UNKNOWN_VAR
    struct list ctorFieldSyntax; //list of struct syntax* (SNTX_CTOR_FIELD), index-aligned with `vars` -
                                   //resolved (types only) in pass 2; checked into ctorFunc->codeBlock in
                                   //pass 3, once the constructor's own parameters are back in scope
    struct syntax* ctorBodySyntax; //raw SNTX_CTOR_BODY - fields AND ordinary statements, in textual
                                    //order. Pass 3 walks this (not ctorFieldSyntax) to build the
                                    //constructor's body, since a statement's position relative to the
                                    //fields around it is exactly what decides when it runs.

    bool hasDestruct;
    struct var* destructFunc; //synthetic BASETYPE_FUNC var, one param (the instance, by value, plain
                                //struct type), no return type, no error union - a destructor can never
                                //propagate a failure to anyone (see the report), so any fallible call in
                                //its body must be fully caught right there, same rule as a test{} block
    struct syntax* destructBlockSyntax; //raw SNTX_BLOCK trailing the constructor; NULL if !hasDestruct

    //BASETYPE_CHOICE, BASETYPE_ERROR
    struct list words; //list of struct token: choice or error member names

    //BASETYPE_FUNC
    bool hasRetType;
    struct type* retType; //heap-allocated, valid when hasRetType
    struct list errors; //list of struct type*: error types declared in the signature's error list
    //BASETYPE_FUNC, O13: the result scope of a BUILT result - a scope variable no parameter names, bound where
    //the call's result lands (O18a) or by a scope argument (E25). NULL for a borrowed result (T&p) and for a
    //result that neither is nor holds a reference.
    struct var* resultScope;
    struct list scopeVars; //BASETYPE_FUNC: list of struct var* - this signature's own scope variables
                            //(§8 O3), in first-appearance order across its parameter types and ret-type.
                            //Declared by appearing in a "&name" marker, never by any declaration list;
                            //each is a synthetic BASETYPE_SCOPE var that is NOT one of `vars`. A variable
                            //named by some parameter's type is UNIFIED at a call from that argument's own
                            //tag (O17); one named only by the ret-type is SUPPLIED by the caller's scope
                            //argument, defaulting to the caller's own scope (O18).
    struct list scopeObligations; //BASETYPE_FUNC: list of struct scopeObligation - relations between two
                                   //of THIS signature's own scopeVars that its body turned out to require
                                   //and O10a could not establish (O10b). Part of the signature: every
                                   //caller must discharge them through its own binding (O10c).
    //G8a: what this type was instantiated FROM, when it is a generic applied to arguments. Set on every
    //instantiation, including one whose arguments are still type variables ("Box<T>" inside a generic) -
    //which is the whole point: without it, substituting T later rewrites the field types but leaves the
    //name derived from the OLD arguments, so "Box$T" never becomes "Box$int32" and nothing matches.
    struct type* genericOrigin;   //the generic this was applied from; NULL if it is not an instantiation
    struct list typeArgs;         //list of struct type, index-aligned with genericOrigin->typeParams
    struct list typeParams; //list of struct str: for BASETYPE_FUNC, every distinct type variable in this
                             //signature, in first-appearance order (G3); for BASETYPE_STRUCT, the names
                             //declared in its own "<...>" list, whose ORDER is what a type-argument list
                             //supplies positionally (G6/G7). Empty for anything non-generic.
    //G19: BASETYPE_TYPEVAR - the interface written as this occurrence's constraint ("<T Iterator<Int32>>"), or NULL
    struct type* varConstraint;
    //G19: BASETYPE_FUNC and a generic declared type - the constrained variables, one BASETYPE_TYPEVAR per
    //constrained name, each carrying its varConstraint
    struct list typeConstraints;
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
//O10b: "longer outlives shorter", both scope variables of one signature - a requirement its body makes
//of every caller, recorded instead of rejected when O10a cannot decide it locally.
struct scopeObligation {
    struct var* longer;
    struct var* shorter;
    //O22: a DERIVED obligation, whose `shorter` is not one of this signature's own scope variables but a
    //scope variable of the TYPE of the parameter named here - "the scope parameter `p`'s own type was
    //constructed with". A body cannot decide such a relation (the binding was made wherever the value was
    //built, possibly in another function), and cannot name it in its signature either; but the caller can
    //resolve it, because the caller holds that binding on the very argument it is about to pass. NULL for
    //an ordinary obligation between two of the signature's own scope variables.
    struct var* shorterViaParam;
    //O25: the relation must be EQUALITY, not merely outliving - the value stored can itself hold
    //references, so a narrowed copy of it would be written through into the wrong scope
    bool exact;    //O10c: the statement in the body that required this, named by a call that fails to discharge it
    struct token origin;
};

struct scopeBinding {
    struct var* typeParam;
    struct var* boundTo;
    //C2d/O23: boundTo is only the container's scope, standing in for a binding made where the container was built -
    //good for reading, not for building through (the field's referent may live longer)
    bool containerFallback;
    //O2d: which BLOCK scope boundTo == NULL means. A binding determined by an argument (O17) refers to
    //wherever that argument's referent lives, which is not where the call happens to be written - a call
    //inside an "if" whose scope variable is determined by a local declared outside it must allocate into
    //the outer block, or the callee's result dangles the moment the "if" ends. 0 means "no depth of its
    //own", i.e. the call's own block, which is what an undetermined binding (O18) correctly wants.
    int boundDepth;
    //O25: the argument that determined this binding lives in a caller scope the calling function has no
    //name for (a bare "&" parameter's, or a global's), so a reference derived from the binding is exact for
    //reading and cannot be allocated into or stored through
    bool boundUnnamed;
    //O13b: when branches bind this key to two scopes with no locally known order, the meet is not a single
    //name - but it is still a perfectly definite scope, and every question anyone asks of it distributes:
    //"min(p,q) outlives T" is exactly "p outlives T and q outlives T". So the candidates are kept and each
    //consumer checks all of them, rather than collapsing to "unverifiable" and rejecting a safe program.
    //Empty for the overwhelmingly common case of a single, known binding; boundTo is then the whole answer.
    struct list candidates; //list of struct var* - populated only alongside boundTo == SCOPE_AMBIGUOUS
    //C2d (a constructor's instance-scope binding only): what was stored can itself hold references, so the
    //instance must land in exactly the bound scope rather than merely one it outlives (O25)
    bool needExact;
    //C2d: with several candidates from several arguments, which of them need exactness (a bool each);
    //empty when needExact speaks for all of them
    struct list candidateExact;
    //O18a: no argument determined this variable and none was written, so it follows the call's result:
    //rebound to wherever the result lands (landCall), the caller's own block until then
    bool landing;
    struct list viaPath; //list of struct var* - see the comment above
};

//a variable or function - the two share one namespace/list everywhere they're declared (module scope,
//function params, struct members), so one struct covers both
struct ctVal; //comptime.h
struct var {
    struct semaModule* owner; //the module this was declared in; NULL for locals/params (never called or
                               //read cross-module by name, so codegen never needs it for those) - used to
                               //mangle a cross-module call target under its own module, not the caller's
    struct str name;
    struct type type;
    struct token tok;
    bool mut; //local variables are mutable by default
    bool scopeUnnamed; //O25: a local reference adopted a scope this function cannot name - see RefExactScope
    //O25a: a value local holding references, declared with ":=", lives where its initializer built them - a
    //scope variable, or a block (valueHome NULL, at valueHomeDepth)
    bool valueHomeSet;
    struct var* valueHome;
    int valueHomeDepth;
    bool isMethod; //M19: declared with a receiver clause. Methods live in their own namespace, keyed by
                   //receiver type: invisible to every by-name lookup, reachable only as "x.f(...)"
    bool isFuncDecl; //module-level only: this name was declared by "func"/"extern func" rather than as a
                      //global variable. M21 lets several function declarations share a name (one method
                      //per receiver type) and nothing else share one, and pass 1 has no types resolved
                      //yet - this is what it can tell them apart by.
    bool mayBeInitialized; //access defined only through the origin member
    struct var* origin; //where the variable declaration is stored throughout the compilation process
    struct list codeBlock; //for functions
    struct operand* initExpr; //for module-level globals only: the checked initializer, used by codegen
    bool bodyIncomplete;      //S8b: a branch in this body is still being decided (it was skipped unparsed),
                              //so its body is not yet the program's and must not be evaluated
    bool isLambda;            //D16: a lambda's hidden function - emitted with the function it is written in
    struct list lambdaCaptures; //D16: struct lambdaCapture - what the lambda reads from the body around it
    bool isCapture;           //D16: a lambda's own copy of a variable it captured
    bool isBorrowedCapture;   //D16c: ...a read-only borrow of a captured value array
    bool isCaptureScope;      //D16: the scope variable of a captured reference, bound when the lambda is made
    struct var* lambdaHost;   //D16: the function the lambda is written in, NULL in a test or a global initializer
    bool lambdaInTest;        //D16: written in a test block, so emitted with the test harness
    bool inferRet;            //D16: a lambda whose result is taken from its first "return"
    bool inferErrs;           //D16: a lambda whose errors are taken from what its body raises and lets through
    bool bodyHadErrors;       //K3: checking this function's body reported errors, so its body is not the
                              //program's and must never be evaluated
    struct ctVal* constVal;   //K2: an immutable global whose initializer was computed at compile time - its
                              //value, which codegen writes out as the global's data instead of setting it
                              //at startup. NULL when it could not be.
    struct ctVal* bakeVal;    //K2a: the same for a value that holds references or arrays - written out as data
                              //with what it points at, but never read by a later evaluation (only plain data
                              //is a compile-time value: a reference there would be shared between evaluations)
    struct list scopeBindings; //list of struct scopeBinding - propagated one hop from a local's own
                                //initializing operand at declaration time (see buildVarDeclStmnt), so a
                                //later read of this var carries the same map its initializer had - see
                                //the report on extending the static scope checker past one function's frame
    //C2e, constructor fields only: 1 when an "Array<T>(n)" field is stored inline because n was computed at
    //compile time (its type is then the fixed-length T[n]); 2 while n is still to be computed (see
    //inlinePendings) - it is held in the arena until then, and T7a is not judged yet
    int inlineState;
    //C2d: this is a constructor type's instance-scope variable (struct type.hereVar). A value with no
    //binding for it simply was not built from existing storage, so it carries no constraint - unlike an
    //ordinary scope variable, whose missing binding means nothing is known
    bool isInstanceScope;
    //O4b: the anonymous scope variable a parameter written with a bare reference marker is passed with
    bool isImplicitScope;
    struct operand* defaultVal; //parameters only (D8a): the checked literal a call may omit or write
                                 //"default" for. NULL when the parameter declares no default. Built once,
                                 //in the DECLARING module's context - a literal has no call-site-dependent
                                 //meaning, which is exactly why D8a admits nothing else.
    struct syntax* bodySyntax; //generic functions only: the SNTX_BLOCK of the declaration, kept so each
                                //instantiation can check the same body again against its own concrete
                                //parameter types (G16). NULL for everything else.
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
    STATEMENT_JOIN,  //"join { ... }" (P1): block waits for every task spawned in it
    STATEMENT_SPAWN, //"spawn f(args)" (P1): op is the call operand, run on its own thread
    STATEMENT_DEFER, //S19: block is the deferred code, run on every way out of the block this statement is in
    STATEMENT_BREAK,    //S11: leaves the innermost enclosing loop
    STATEMENT_CONTINUE, //S11: ends the current iteration
    STATEMENT_ABORT,       //S16c
    STATEMENT_UNREACHABLE, //S16d
    STATEMENT_DONE,  //process exit, OS-standard success (0) - never takes a value
    STATEMENT_FAIL, //process exit, OS-standard failure (1) - never takes a value
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

//R9b: one "catch [items] [block] [default d, ...]" clause of a try. Clauses are tried in order.
struct catchClause {
    struct token tok;
    struct list matches;     //struct catchMatch - what the items name
    bool catchAll;           //no items: every error no earlier clause took
    bool hasBlock;
    struct list block;       //struct statement
    struct operand* dflt;    //value position: the value this clause gives (a tuple literal for several
                             //results), or NULL when its block leaves
};

//D16: one variable a lambda captured - as the body around it sees it, and the lambda's own copy
struct lambdaCapture {
    struct var* outer;
    struct var* inner;
};

//S13b/S13c: one way a case clause matches - test (a Bool over the match's held value) and, once it holds, the
//clause's bindings filled from the payload fields this alternative reads them from
struct caseBind {
    struct var* v;               //one of the clause's caseBindings
    struct operand* from;        //the field it takes, read from the match's held value through "as" (E32)
};
struct caseAlt {
    struct operand* test;
    struct list binds;           //struct caseBind
    long long coversTag;         //S13a: the enum case this alternative matches whatever its payload holds, else -1
};

struct statement {
    enum statementType sType;
    int line; //B2e: the source line the statement starts on, for -d's line table; 0 when synthesized
    struct str file; //B2e/M22: the source file that line is in - a package's functions come from several
    struct var var;              //VAR_DECL: the declared variable; FOR: the loop variable
    struct operand* target;      //ASSIGN: the lvalue being assigned to
    struct list spawnTargets;    //SPAWN (D8c/P1g): one operand* per result bound, NULL for a "_"; empty for a
                                  //plain "spawn f()"
    struct operand* op;          //VAR_DECL/ASSIGN: rhs value; IF/FOR/DO/MATCH/CASE/ASSERT: condition/matched
                                  //value; RET: value (NULL if bare); ERROR: the selected error word (never
                                  //NULL); TRY_CATCH: the tried call (OPERATION_FUNCCALL, never NULL); unused
                                  //for DONE/CRASH, which never carry a value
    //D15c: VAR_DECL only - "x T[N] = v" / "x T[expr] = v" fills every element with v. NULL for every
    //other declaration. When both this and `op` are set, `op` is the T[expr] allocation and this is
    //the value written into each of its slots.
    struct operand* fillValue;
    //VAR_DECL only: the local a constructor field declares (C2a). Its unnamed-scope references are built
    //in the scope the instance lands in (C2d), which the constructor receives as a hidden parameter
    bool ctorField;
    //VAR_DECL only: a declared-size array with no fill is its type's zero value rather than uninitialized
    //(an inline "Array<T>(n)" field, C2e - every "Array<T>(n)" is zero-filled)
    bool zeroFill;
    struct operand* forInit;     //FOR only: the loop variable's initial value expression
    struct statement* forPost;   //FOR only: the post clause - an assignment or an S3 expression statement
    struct list block;           //list of struct statement: the primary body; TRY_CATCH: the catch body
    struct statement* elseStmnt; //IF only: heap-allocated, NULL if no else clause
    bool elseIsBlock;            //IF only: true if elseStmnt is a bare block wrapper rather than a chained "else if"
    //S13-S13e: a CASE is its alternatives, any one of which selects it, and an optional guard. caseBindings holds
    //the clause's own locals (struct var*), one per name its patterns bind - every alternative binds the same ones
    //(S13c), so they are declared once and each alternative fills them its own way
    struct list caseAlts;        //CASE only: struct caseAlt, in source order
                                 //(a CASE's `op` is its value in a match used as one, S12b - NULL for a block)
    struct operand* caseGuard;   //CASE only: "if cond" after the patterns, NULL when none - read after the bindings
    struct list caseBindings;    //CASE only: list of struct var*
    struct list matchCases;      //MATCH only: list of struct statement (STATEMENT_CASE)
    struct list matchHold;       //MATCH only: statements run first - the matched value held in a hidden local, whose
                                 //read is `op`; empty when `op` is the matched expression itself (a local, read again)
    bool hasNomatch;             //MATCH only
    struct list nomatchBlock;    //MATCH only
    struct operand* nomatchValue; //MATCH used as a value only (S12b): "nomatch => v", NULL for a block
    struct list catchClauses;    //TRY_CATCH only: struct catchClause, in order (R9b)
};

enum operation {
    OPERATION_NONE,

    OPERATION_READ_VAR,
    OPERATION_FUNCCALL,
    OPERATION_INDEX,
    OPERATION_MEMBER,
    //P9: the atomic builtins. Each takes a mutable integer lvalue as its first argument and lowers to one
    //LLVM atomic instruction, sequentially consistent. args[0] is the target; the rest are values.
    OPERATION_ATOMIC_LOAD,
    OPERATION_ATOMIC_STORE,
    OPERATION_ATOMIC_ADD,
    OPERATION_ATOMIC_SWAP,
    OPERATION_ATOMIC_CAS,
    OPERATION_LEN, //"len(arr)" - a compiler builtin, not an ordinary function (needs to work over any
                    //array type regardless of element type/dimensionality, which no user-space signature
                    //can express without generics) - see the report
    OPERATION_COND,          //E28: "a if c else b" - args [c, a, b], op->type what both give
    OPERATION_CMP_CHAIN,     //E30: "a < b <= c" - args are the comparisons, each next one's left operand the
                             //previous one's right operand (one operand, evaluated once)
    OPERATION_SEQ,           //comprBody's statements run (in the enclosing block, not one of their own), then args[0]
    OPERATION_COMPREHENSION, //E27: "T[e for x in src if c]" - comprBody is the lowered loop; the array is built
                             //where it lands, as "Array<T>(n)" is (op->type is the same run-time-length type)
    OPERATION_COMPR_PUSH,    //E27: appends args[0] to the innermost comprehension being built
    OPERATION_COMPR_RESERVE, //E27: args[0] (an Int64) is how many elements the innermost one will hold at most
    OPERATION_ZERO, //D13c: the all-zero-bits value of op->type - an argument of a zero-value constructor call
    OPERATION_SIZED_ARRAY_ALLOC, //an uninitialized "T[expr]" var-decl (expr not a compile-time constant) -
                                   //a runtime-length array of expr zero-valued elements, arena-allocated (own by
                                   //default, or the declared type's own "&name" tag) - see the report.
                                   //args[0] is the (already-checked-integer) size expression; op->type is
                                   //the declared runtime-length array type (arrMalloc, element type, scope tag)
    OPERATION_SLICE, //"a[lo:hi]" (E16a) - args are [base, lo, hi], with lo and hi always present by this
                      //point (an omitted bound is materialised as 0 or len(base) when the operand is built).
                      //op->type is a runtime-length reference to base's element type, tagged to the scope
                      //base's own storage belongs to: a slice is a borrow, not an allocation.
    OPERATION_MATCH, //S12b: a match used as a value - comprBody holds its one STATEMENT_MATCH, whose cases give values
    OPERATION_IS, //E32: "x is Enum.Case" - args [x]; castTag the case
    OPERATION_AS, //E32: "x as Enum.Case" - args [x]; castTag the case, op->type its payload
    OPERATION_BOUNDS, //E31: a derived TryAt/TrySlice's bounds check - args [v, lo, hi]: v itself, once lo <= v < hi
                      //(<= hi when isInclusive); only ever built under "try", so it always has a checkRoot
    OPERATION_BITCAST, //E33: "x.Bits()", "u.F64FromBits()" - args[0]'s bits read as op->type, of the same width: a value
                       //made from a value, never a view of storage (T36)
    OPERATION_NUMERIC_CONVERT, //"TypeName(x)" where TypeName is one of the five numeric primitive types
    OPERATION_NOMINAL_CONVERT, //T29: "Name(x)" between a declared type and its underlying one - same
                                //representation, so it emits nothing
                                 //(byte/int32/int64/float32/float64) - the explicit conversion builtin (see
                                 //the report): a real runtime instruction (widen/narrow/int<->float), unlike
                                 //a numeric LITERAL's own implicit widening (numericLiteralFits in
                                 //semantic.c), which is pure reinterpretation with no instruction at all.
                                 //args[0] is the (already-checked-numeric) source operand; op->type is the
                                 //target numeric type named by TypeName

    //unary
    OPERATION_NOT,
    OPERATION_BTWSE_INV,
    OPERATION_MINUS,
    OPERATION_STR_OF, //E11a: prefix "$" - the operand rendered as text
    OPERATION_CONCAT, //E6b: "+" over two arrays
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
    //R20: the try whose BuiltinError check this operation is - set on every checkable operation inside "try (...)"
    //(and on a checked index or slice), so its failure runs that try's clauses or propagates
    struct operand* checkRoot;
    struct token tok;
    struct type type;
    //O18a: calls passed as this call's arguments whose landing scopes follow this call's own - a result
    //built for a parameter whose scope is itself still landing
    struct list landsWith;
    //C2d/O18a: a constructor call whose instance has been landed - built in landedTo (a scope variable of the
    //calling function, or NULL for one of its blocks, at landedDepth). Codegen builds the instance there.
    bool ctorLanded;
    struct var* landedTo;
    int landedDepth;
    bool hereChecked; //C2d/T17c: checkCtorHereFits has judged this value where it landed - once is enough
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
    bool noZeroFill; //D15b: OPERATION_SIZED_ARRAY_ALLOC only - allocate the storage and leave it as it
                      //comes. Set for a local "T[expr]" declaration, which is uninitialized like any
                      //other declared-size array; a D14a constructor field still zero-fills.
    bool zeroBits; //D13c: a zero-value constructor call found, while compiling, to give all zero bits - so nothing runs
    bool litCtorPending; //T29d: a literal entering a type with a constructor - recorded to be run while compiling
    bool litFoldedAway;  //E4a: part of a literal-only expression folded into the one literal holding its value - no
                          //longer in the program, so nothing deferred about it (a shift's amount, E8a) applies
    bool isNullLiteral; //T2a: this operand is the "null" literal. Survives the retag in
                         //OperandFitsType/OperandBinary, which is what tells codegen to emit the
                         //adapted type's zero value rather than treat it as an aggregate literal.
    bool ctProven; //S18c: an assert's condition proven true at compile time - no run-time check is emitted
    bool isTried; //OPERATION_FUNCCALL only: true if this call was written as "try f(...)" - see semantic.c
    bool isIncDec;              //E31: an OPERATION_SEQ standing for "x++" / "--x" on a type declaring its own
    bool isOperatorCall;        //E31: a call the compiler made for an operator, an index or a slice - "try" reaches
                                //through it to what is inside, as it does through a built-in operation (R20)
    bool isTryStmt;             //E31: an OPERATION_SEQ standing for "try x[i] = v" - its clauses are a statement's,
                                //falling through to after it; cgEndLbl is where (codegen)
    char* cgEndLbl;
    bool noCheck;               //S9e: an array element read a loop's lowering makes - in range by construction, so
                                //a "try" around the loop does not check it; S13b: an "as" a case pattern reads a
                                //payload with, once its own test has selected the case - nothing left to check
    int cgSlots, cgDepth;       //codegen: the open block scopes where a tried operand with clauses is emitted - a
    bool cgDepthSet;            //failure deeper inside it (a comprehension's loop) unwinds to there before a clause
    bool castEnum;              //E32: OPERATION_IS/AS on an enum value - castTag is the case
    long long castTag;
    bool isInclusive;           //E31: OPERATION_BOUNDS only - the upper bound itself is allowed (a slice's)
    bool isAtCall;              //E31: "x[i]" written on a type declaring At - args [x, i]; "x[i] = v" becomes SetAt
    struct list chainOperands;  //E30: OPERATION_CMP_CHAIN only - its operands in order (struct operand*), each read by
                                //the comparisons on either side of it
    char* cgCached;             //codegen: this operand's value is already computed - E30's shared operand
    void* ctCached;             //the evaluator's same (a struct ctVal*)
    struct list comprBody;      //E27: OPERATION_COMPREHENSION only - struct statement, the loop that fills it
    struct list catchClauses;   //R9b: a try in value position with catch clauses - struct catchClause, in
                                //order. Empty for a plain propagating try.
    bool tryNeedsSlot;          //R9b: some clause gives a value by default, so both outcomes meet in a slot
    struct type tryDefaultType; //R9a: the result type as seen from the caller - its scope variables replaced
                                //by what the call bound them to - which the default is stored against
    void* pendingLambda; //D16: a lambda not checked yet - it is checked where its expected type is known
    bool isMoveSource;   //T7b: a destructured result's element - its array is taken, not copied
    struct operand* callee; //E13b: a call through the function value this expression gives, rather than through a
                            //named function or variable - readVar is then a synthetic var of the callee's type
    bool isSpreadSource; //D8d: several results passed as a call's arguments - each argument reads one of them
                         //(an OPERATION_MEMBER on this operand), and the first read evaluates it for all
    int spreadIndex;     //D8d: on such an argument, which result it is (0 evaluates the source)
    void* spreadVal;     //D8d: the source's value, set when result 0 is read - an LLVM value name in codegen, a
                         //node in the evaluator
    bool lambdaHomeSet;  //D16: a lambda capturing references lives where they do - this scope - and its args are
    struct var* lambdaHome; //its captures' values, read where it is made
    int lambdaHomeDepth;
    bool isDefaultArg; //this operand is the "default" keyword standing in an argument slot (E14a). Never
                        //survives past OperandFuncCall, which replaces it with the parameter's own
                        //declared default; every other consumer of an argument list rejects it.

    bool isCtorCall; //OPERATION_FUNCCALL only: this call's target is a struct type's own constructor.
                      //":=" accepts one as an initializer (D15) even though it is not a literal: the type
                      //is written right there at the declaration, which is the whole point of the rule.
    struct list scopeBindings; //list of struct scopeBinding - see the type's own comment. Populated for a
                                //function/constructor call (from its own scope-typed params matched against
                                //the actual arguments) and for a member access whose field carries a scope
                                //tag resolvable through the base's own map; empty (the common case) for
                                //everything else. See resolveEffectiveScopeVar in semantic.c.
};

//T31: does `concrete` supply everything `iface` declares? InterfaceMethodImpl answers the same question
//for one method, handing back the function that would be called - which is also what codegen needs to
//build a dispatch table. Both are the M19 lookup underneath: a type's methods are its module's functions.
//T17: does any case of this choice type carry a payload, and how big is the largest? A choice where none
//does keeps the bare-i32 representation it has always had; one that does is { i64 tag, [N x i8] payload }.
bool ChoiceHasPayload(struct type t);
long long ChoicePayloadSize(struct type t);

struct var* InterfaceMethodImpl(struct type concrete, struct var* m);
//E31: a type's Call method, and whether it matches a function type exactly
struct var* SemanticCallOf(struct type t);
struct var* SemanticStrOf(struct type t); //E11c: the Str "$" renders a value of type t through, or NULL
bool SemanticCallMatches(struct type t, struct type fnType);
//S12b: the values a match used as one can give, in order
struct list SemanticMatchValues(struct operand* op);
extern struct semaModule* SemanticMethodScope;
struct list SemanticInitOrder(void); //B5a: imports before importers //M22: whose imports decide which built-in methods are visible
//M21: the type f is a method OF - its first parameter's type, when that type is declared in f's own module
//(M19's coherence rule). NULL when f is an ordinary function. Codegen needs the same answer semantic
//analysis does, since a method's symbol carries its receiver type.
struct type* SemanticMethodReceiver(struct var* f);
struct str typeShortName(struct type t); //a type as a symbol-safe name; used for built-in method receivers
bool TypeSatisfiesInterface(struct type concrete, struct type iface, struct var** failed);

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
    struct str fileName; //where it was loaded from: a .olang file, or a package directory (M22)
    struct str identity; //M22: what its symbols are mangled from - the base name for a local file or
                         //directory, the whole import path for std/... and a remote package
    struct str canonical; //realpath of fileName, which is what makes two spellings one module
    struct list files;   //char*: every source file, one for a file module, all of a package's
    struct list buildRefs; //B10b: struct str - the -D names this module's source mentions, so that its object
                           //depends on those values (and its importers' on them through it) and on no others
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
long long TypeGetAlign(struct type t);
struct type TypeVanilla(enum baseType bType);
struct type TypeFromType(struct str name, struct token tok, struct type tFrom);
bool TypeIsByteArray(struct type t);
struct type* TypeGetList(struct list* l, struct str name);
bool TypeIsSame(struct type a, struct type b);
bool TypeIsSameRepr(struct type a, struct type b);
//T4: one numeric primitive - its source name, width in bits, kind ('i' signed, 'u' unsigned, 'f' float) and LLVM type
struct primInfo { enum baseType b; const char* name; int bits; char kind; const char* llvm; };
const struct primInfo* PrimInfo(enum baseType b); //NULL for anything not a numeric primitive
bool PrimByName(struct str name, enum baseType* out);
//E33: a float type's bit pattern for the value a double holds, and back. A NaN of a type narrower than F64 is held in
//the double as LLVM writes one: its sign, and its payload at the top of the double's
unsigned long long FloatBits(double v, enum baseType b);
double FloatFromBits(unsigned long long bits, enum baseType b);
bool TypeIsUnsigned(struct type t);
bool TypeIsChar(struct type t); //T29h: the prelude's Char
struct type SemanticCharType(void);
bool TypeIsNumeric(struct type t);
bool TypeIsInt(struct type t);
bool TypeIsFloat(struct type t);
char* TypeDescribe(struct type t);

struct var* VarAllocSetOrigin();
struct var* VarGetList(struct list* l, struct str name);
void VarListAddSetOrigin(struct list* l, struct var v);

void StatementAdd(struct list* codeBlock, struct statement s);
bool StatementCatchCoversType(struct list* matches, struct type errType);

//requireMain: only "-b" (§10 B3) needs a "main" - "-c" compiles a plain module and "-t" runs tests,
//neither of which has or wants one
struct semaModule* SemanticAnalyzeFile(char* fileName, bool requireMain);
struct list* SemanticAllModules(void);
struct list* SemanticPreludeModules(void); //list of struct semaModule*: every file of <std>/prelude (M19d)
struct list* SemanticAllLambdas(void);
bool TypeIsPermRef(struct type t); //T25b: a reference type carrying a permission
bool TypeIsSameStrict(struct type a, struct type b); //T25b: identity including the outermost permission //D16: every lambda's hidden function
//which of the CALLING function's scopes a callee's scope variable was bound to at one call (§8 O17/O18).
//NULL means the caller's own scope. Codegen's one entry point into the scope-binding map.
struct var* SemanticBoundScope(struct operand* callOp, struct var* sv);
bool SemanticCtorLanding(struct operand* callOp, struct var** to, int* depth);
bool SemanticReferentScope(struct var* func, struct operand* op, struct var** to, int* depth);
bool varIsOwnParam(struct var* scopeVar, struct var* func);
int SemanticBoundScopeDepth(struct operand* callOp, struct var* sv, int callDepth);
//list of struct instantiation - every monomorphized copy of a generic (G16). Held separately from any
//module's own vars because that list stores struct var BY VALUE, and growing it during body checking
//would invalidate every struct var* already handed out.
struct list* SemanticAllInstantiations(void);
//list of struct type* - every monomorphized copy of a generic struct type (G10). Stored as pointers for
//the same stability reason as the function instantiations above.
struct list* SemanticAllTypeInstantiations(void);
struct instantiation { struct var* generic; struct list bindings; struct var* specialized; }; //list of struct semaModule*, in load order; index is used for codegen symbol mangling
struct type* SemanticGenericErrorType(void);
struct type* SemanticBuiltinErrorType(void);
int SemanticBuiltinErrorWord(char* word); //the bare error singleton (§7.6 R15) - codegen uses this
                                              //only to print a cleaner "unhandled error: error" message,
                                              //never for ordinal encoding (already generic, see the report)

//O18a: whether a call's binding for one of its callee's scope variables still follows the result
bool SemanticBindingIsLanding(struct operand* callOp, struct var* sv);
bool SemanticBindingIsUnnamed(struct operand* callOp, struct var* sv);
//M23c: "-u" - every remote repository the compilation reaches is resolved to its ref's current commit
void SemanticSetUpdate(bool on);

#endif //SEMANTIC_H
