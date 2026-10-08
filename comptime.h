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
};

//evaluates op, as a value of type want, entirely at compile time. False when it cannot be - it reads
//something only known at run time, does something only a running program can, or exceeds the step budget -
//with *why saying which, at *whyTok.
//*usedBuild (when given) says whether a build constant was read along the way, directly or through a global
bool CtEvaluate(struct operand* op, struct type want, struct ctVal** out, struct token* whyTok, const char** why,
                bool* usedBuild);
extern const char* CT_WHY_INCOMPLETE;

//K2c: CtEvaluate for a global's own initializer, which may build an instance whose destructor has an effect -
//the program's scope it lands in never closes, so that destructor never runs (O1b)
bool CtEvaluateGlobalInit(struct operand* op, struct type want, struct ctVal** out);

//S8b: the initializer that fixes a local's value where a condition reads it, or NULL when nothing does
typedef struct operand* (*CtLocalFixer)(struct var* local, void* ctx);
//CtEvaluate for a condition inside a function: a local of that function it reads is evaluated from the
//initializer fixer gives, and is otherwise known only when the program runs
bool CtEvaluateIn(struct operand* op, struct type want, struct ctVal** out, struct token* whyTok, const char** why,
                  bool* usedBuild, CtLocalFixer fixer, void* fixerCtx);

//K3: why a call of func can never be evaluated at compile time - the first operation, in its body or in
//anything it reaches, that no evaluation can perform, at *where - or NULL when nothing stops it
const char* CtWhyNotEvaluable(struct var* func, struct token* where);

//forgets every global evaluated so far - a new analysis has new variables
void CtReset(void);

//true when v holds no reference anywhere, so it can be written out as plain constant data
bool CtIsPlainData(struct ctVal* v);

//D13c: true when v is all zero bits - what an uninitialized declaration of its type already holds
bool CtIsZero(struct ctVal* v);

//B3e: "-i" - runs mainFunc (and every global's initializer before it, imports first) as the built program would,
//performing what compile-time evaluation refuses; returns the process's exit status. done/fail and a failed check
//end the process from inside, as they would there
int CtRunProgram(struct var* mainFunc);

#endif
