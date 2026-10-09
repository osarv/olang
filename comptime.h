#ifndef COMPTIME_H
#define COMPTIME_H

#include "semantic.h"

//K1: a value computed at compile time. An aggregate (array, struct, tuple) holds its elements by value; a
//reference holds the node it refers to, so aliasing and identity behave exactly as they would at run time; a
//function value holds the function it names.
enum ctKind { CT_INT, CT_FLOAT, CT_BOOL, CT_AGG, CT_NULL, CT_REF, CT_FUNC };

struct ctVal {
    enum ctKind kind;
    struct type type;
    long long i;          //CT_INT (also a payload-free choice's ordinal), CT_BOOL
    double f;             //CT_FLOAT - a narrower type's NaN with its payload at the top of the double's (E33)
    bool nanExact;        //CT_FLOAT, E33: a NaN whose sign and payload are its own - made from bits, or written in the
                          //program, and only moved since. Any other NaN's are unspecified, so its bits are not evaluated
    int n;                //CT_AGG: element or field count
    struct ctVal** elems; //CT_AGG
    struct ctVal* target; //CT_REF (an interface value too: the instance it names)
    struct var* fn;       //CT_FUNC: the function a function value names
    bool callAdapter;     //CT_FUNC, E31: a value whose type declares Call, standing for a function value - fn is its Call,
                          //elems[0] a reference to the instance it calls it on
    struct ctVal* viewOf; //CT_AGG, an array that is a slice (E16a): the array whose storage it is part of, starting
    int viewOff;          //at element viewOff - a view shares that array's element nodes
};

//evaluates op, as a value of type want, entirely at compile time. False when it cannot be - it reads
//something only known at run time, does something only a running program can, or exceeds the step budget -
//with *why saying which, at *whyTok.
//*usedBuild (when given) says whether a build constant was read along the way, directly or through a global
bool CtEvaluate(struct operand* op, struct type want, struct ctVal** out, struct token* whyTok, const char** why,
                bool* usedBuild);
extern const char* CT_WHY_INCOMPLETE;

//K2: the value of immutable global v, computed at compile time - the same value every other evaluation reading v sees,
//so two globals sharing an instance share one node (K2b). Its own initializer may build an instance whose destructor
//has an effect - the program's scope it lands in never closes, so that destructor never runs (K2c, O1b)
bool CtEvaluateGlobal(struct var* v, struct ctVal** out);

//K2b: the global whose value first reached node - what it holds is that global's storage - or NULL
struct var* CtNodeOwner(struct ctVal* node);
//K2b: whether what node holds can be written while the program runs - it is reached through a writable ("mut")
//reference from a global's value - so its data must not be read-only
bool CtNodeWritable(struct ctVal* node);
//K2b: every aggregate and closure v reaches - through parts, references, captures and a slice's base - each once, into
//out (struct ctVal*)
void CtReachableNodes(struct ctVal* v, struct list* out);

//S8b: the initializer that fixes a local's value where a condition reads it, or NULL when nothing does
typedef struct operand* (*CtLocalFixer)(struct var* local, void* ctx);
//CtEvaluate for a condition inside a function: a local of that function it reads is evaluated from the
//initializer fixer gives, and is otherwise known only when the program runs
bool CtEvaluateIn(struct operand* op, struct type want, struct ctVal** out, struct token* whyTok, const char** why,
                  bool* usedBuild, CtLocalFixer fixer, void* fixerCtx);

//K3: why a call of func can never be evaluated at compile time - the first operation, in its body or in
//anything it reaches, that no evaluation can perform, at *where - or NULL when nothing stops it
const char* CtWhyNotEvaluable(struct var* func, struct token* where);

//B5a: each module's globals in the order they are initialized - after the globals each reads, directly or through what
//it calls, declaration order breaking ties - kept on the module (globalOrder); a cycle among them is an error
void CtOrderGlobals(void);

//forgets every global evaluated so far - a new analysis has new variables
void CtReset(void);

//X8: whether extern function f is one of the C math library's functions the language knows - by its name and exact
//prototype - and if so whether IEEE 754 requires its correctly rounded result (sqrt, fma, floor ...)
enum ctMathFn { CT_MATH_NONE, CT_MATH_EXACT, CT_MATH_INEXACT };
enum ctMathFn CtMathFn(struct var* f);

//T25d: op, reaching a place of type dst at a call or a return, is a static literal - the constant data itself, one
//instance per site however often the site is reached (E10). The generated code and the evaluator both ask this
bool CtIsStaticLiteral(struct operand* op, struct type dst);

//true when v holds no reference anywhere, so it can be written out as plain constant data
bool CtIsPlainData(struct ctVal* v);

//D13c: true when v is all zero bits - what an uninitialized declaration of its type already holds
bool CtIsZero(struct ctVal* v);

//B3e: "-i" - runs mainFunc (and every global's initializer before it, imports first) as the built program would,
//performing what compile-time evaluation refuses; returns the process's exit status. done/fail and a failed check
//end the process from inside, as they would there. argv (argc of them) is the program's command line (B3f), the
//file first
int CtRunProgram(struct var* mainFunc, int argc, char** argv);

//§11 X6: the class "__olang_err" reports for an errno value, 0 for any value not listed - one table, read by the
//runtime codegen emits and by -i's own runtime, so the two cannot disagree
struct osErrClass { int errnoVal; int cls; };
extern const struct osErrClass OsErrClasses[];
extern const int OsErrClassCount;

#endif
