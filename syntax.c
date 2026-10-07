#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "syntax.h"
#include "errmsg.h"
#include "token.h"
#include "util.h"

/* Hand-written recursive-descent parser (previously a generic table-driven PEG engine interpreting
 * grammar-rule strings at runtime - see the report for why that was replaced: no way to embed a
 * "semantic predicate" like isKnownType, error messages that only ever named the deepest single expected
 * token, and a structural inability to backtrack into an already-matched repetition once a later sibling
 * failed. All three are gone here: predicates are just C function calls, error messages are written by
 * hand at the point that actually knows what's wrong, and backtracking is exactly whatever save/restore
 * this code chooses to do. */

typedef struct syntaxContext* SyntaxCtx;

struct syntaxContext {
    TokenCtx tc;
    int furthestPos;
    struct token furthestTok;
    char* furthestExpected;
    void* typeCtx;
    TypeNameLookup isKnownType; //see the report on struct syntax's declaration - only ever consulted to
                                //tell a struct literal's type name apart from an ordinary variable/block
    struct list localNames; //S8b: every parameter and local declared so far in the current top-level item
                            //- over-approximated (never removed as blocks close), which errs toward
                            //treating a name as a local and a condition as a runtime one
    int blockDepth;         //S8b: nesting of "{ }" bodies, so a declaration inside one is a local
    bool itemIncomplete;    //S8b: the current top-level item skipped a branch still being decided
    int defaultListAt; //R9a: the token cursor where a "try ... default a, b" may take SEVERAL defaults - the
                       //start of a destructuring's right-hand side or of a return's value, and nowhere else,
                       //so "g(try f() default 3, 4)" can never read the 4 as a second default. -1 otherwise.
};

// ---- token-stream primitives ----

struct token peekTok(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token t = TokenFeed(sc->tc);
    TokenSetCursor(sc->tc, cur);
    return t;
}

void recordFurthestError(SyntaxCtx sc, struct token found, char* expected) {
    int pos = TokenGetCursor(sc->tc);
    if (pos < sc->furthestPos) return;
    sc->furthestPos = pos;
    sc->furthestTok = found;
    sc->furthestExpected = expected;
}

//consumes and returns the next token unconditionally (callers that already peeked use this to commit)
struct token advanceTok(SyntaxCtx sc) {
    return TokenFeed(sc->tc);
}

//consumes and returns the next token if it matches `type`; otherwise records the failure (for error
//reporting) and returns a TOK_NONE token, leaving the cursor untouched - callers check .type
struct token acceptTok(SyntaxCtx sc, enum tokenType type) {
    int cur = TokenGetCursor(sc->tc);
    struct token t = TokenFeed(sc->tc);
    if (t.type == type) return t;
    recordFurthestError(sc, t, TokenStrFromType(type));
    TokenSetCursor(sc->tc, cur);
    return (struct token){0};
}

//the token immediately before the current cursor (the one just consumed), without moving anything
struct token prevTok(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    if (cur == 0) return (struct token){0};
    TokenSetCursor(sc->tc, cur - 1);
    struct token t = TokenFeed(sc->tc); //advances back to `cur`
    return t;
}

//a statement normally needs an explicit TOK_STMNT_END, synthesized by ASI after most token kinds - but
//deliberately never after "}" (blocks are never followed by one, so stmntEndTriggerType in token.c
//excludes it on purpose). A struct literal also ends in "}", though, and unlike a block it always sits at
//the tail of some larger construct (a var-decl's value, an expression statement, ...) that genuinely
//needs a terminator right there - so this accepts a real STMNT_END token OR, when the token just consumed
//was "}", treats that as the terminator too, with nothing extra to consume.
//a statement's own closing token can implicitly terminate it with no real TOK_STMNT_END at all - TOK_CURLY_C
//because no grammar rule ever expects a TOK_STMNT_END after one (see stmntEndTriggerType), and
//TOK_BTWSE_AND because the tokenizer can't tell a bare reference marker ('&') apart from the bitwise-and
//operator at the token level (both are just TOK_BTWSE_AND), so it's never added to stmntEndTriggerType
//either - but the two can never actually be confused here: a genuine bitwise '&' can only ever appear
//mid-expression (parseExpr keeps consuming past it, looking for a right-hand operand), so it can never be
//the LAST token of an already-fully-parsed statement - only a bare marker's own '&' (parseTypeRef) can. A
//named marker ('&name') ends in TOK_IDEN, which is an ordinary stmntEndTriggerType, so it never gets here.
bool acceptStmntEnd(SyntaxCtx sc) {
    if (acceptTok(sc, TOK_STMNT_END).type == TOK_STMNT_END) return true;
    //a closing "}" terminates the statement before it, so a whole block can be written on one line
    //("func g(a int32) int32 { return a }"). Peeked, never consumed - the "}" is the enclosing block's
    //own, and whoever is parsing that block still needs it. No newline precedes it, so the tokenizer
    //synthesizes no STMNT_END of its own; nothing else can follow a statement inside a block either, so
    //this can never swallow something a longer parse would have wanted.
    if (peekTok(sc).type == TOK_CURLY_C) return true;
    enum tokenType prev = prevTok(sc).type;
    //TOK_MUT: a constructor's bare-pun field may be written "name mut" (C2/C3), the one statement-shaped
    //form in the language whose last token is that keyword - no ordinary statement can end in it, so
    //accepting it here terminates the pun without making "mut" a stmntEndTriggerType everywhere
    //TOK_GRT/TOK_BTSFT_R: a type's argument list closing a declaration with no initializer ("none <T>",
    //"q Pair<Int32, <T>>") - a "greater than" is never a complete statement's last token, since the
    //expression parser always goes on to its right operand, so this cannot end a comparison early
    if (prev == TOK_CURLY_C) return true;
    if (!(prev == TOK_BTWSE_AND || prev == TOK_MUT || prev == TOK_GRT || prev == TOK_BTSFT_R)) return false;
    //L20a: only as the LAST token - one the line goes on past ("state Array<Float32>(n)") is not a statement's end
    struct token next = peekTok(sc);
    return next.type == TOK_NONE || next.lineNr > prevTok(sc).lineNr;
}

// ---- tree-building primitives ----

struct syntax* newNode(enum syntaxType type) {
    struct syntax* s = MallocOrCrash(sizeof(struct syntax));
    s->type = type;
    s->parts = ListInit(sizeof(struct syntaxPart));
    return s;
}

void addTok(struct syntax* s, struct token t) {
    struct syntaxPart p = {0};
    p.isToken = true;
    p.tok = t;
    ListAdd(&s->parts, &p);
}

void addSntx(struct syntax* s, struct syntax* child) {
    struct syntaxPart p = {0};
    p.isToken = false;
    p.sntx = child;
    ListAdd(&s->parts, &p);
}

// ---- forward declarations (grammar is mutually recursive throughout) ----

struct syntax* parseName(SyntaxCtx sc);
struct syntax* parseTypeRef(SyntaxCtx sc);
struct syntax* parseTypeExpr(SyntaxCtx sc);
struct syntax* parseTypeVar(SyntaxCtx sc);
struct syntax* parseTypeArgs(SyntaxCtx sc);
struct syntax* parseBlock(SyntaxCtx sc);
struct syntax* parseFuncErrorList(SyntaxCtx sc);
struct syntax* parseStmnt(SyntaxCtx sc);
struct syntax* parseExpr(SyntaxCtx sc);
struct syntax* parseExprPrimary(SyntaxCtx sc);
struct syntax* parseExprPostfix(SyntaxCtx sc);
struct syntax* parseExprArgs(SyntaxCtx sc);
struct syntax* parseCatchErrList(SyntaxCtx sc);
struct list parseScopeDecls(SyntaxCtx sc);

// ---- names, types ----

//"IDEN (DOT IDEN)*" - an arbitrary-length dotted identifier chain (all but the trailing one or two
//identifiers are alias hops through a chain of re-exports - see resolveAliasChain in semantic.c; that's a
//semantic question, not a grammar one, so this commits to any dotted chain unconditionally). Never fails
//if a leading IDEN is present; callers check the leading token first. Used for type refs and call targets,
//both parsed from a position the parser already knows is unambiguous, and also for a struct/array
//literal's own type name (parseExprPrimary's TOK_IDEN case) - there, the parser's own type-name-awareness
//(nameIsKnownType/isKnownTypeForParsing) decides whether to commit to literal syntax, and walks this same
//chain hop by hop to any depth (not limited to one or two hops) before answering. A choice value
//(trailingWordFollowsKnownType) works the same way, just one identifier further left: everything but the
//trailing word must name a known type, so "lib.Dir.North" resolves through an import like any other name.
static struct token acceptFnKeyword(SyntaxCtx sc) {
    return acceptTok(sc, TOK_FUNC);
}

struct syntax* parseName(SyntaxCtx sc) {
    struct token first = acceptTok(sc, TOK_IDEN);
    if (first.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_NAME);
    addTok(s, first);
    while (true) {
        int cur = TokenGetCursor(sc->tc);
        struct token dot = TokenFeed(sc->tc);
        if (dot.type != TOK_DOT) { TokenSetCursor(sc->tc, cur); break; }
        struct token next = TokenFeed(sc->tc);
        if (next.type != TOK_IDEN) { TokenSetCursor(sc->tc, cur); break; }
        addTok(s, dot);
        addTok(s, next);
    }
    return s;
}

//"[" EXPR? "]" - self-contained, backtracks fully on any failure so a caller's "*" loop can just stop
struct syntax* parseRefMarker(SyntaxCtx sc, enum syntaxType nodeType);

//semantic.c has its own firstPartOfType; this is the same one-line lookup, needed here only to ask whether
//a just-parsed suffix carried a marker
static struct syntax* firstPartOfTypeSntx(struct syntax* s, enum syntaxType t) {
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = ListGetIdx(&s->parts, i);
        if (!p->isToken && p->sntx->type == t) return p->sntx;
    }
    return NULL;
}

//"<" IDEN ">" - a generic type variable written where a whole type expression would go (G1). Only ever
//tried at the START of a type expression, so it can never be confused with a type-args list (which always
//follows a name) or with the reference marker (now "&", see below).
struct syntax* parseTypeVar(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token open = acceptTok(sc, TOK_LST);
    if (open.type == TOK_NONE) return NULL;
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token close = acceptTok(sc, TOK_GRT);
    //"List<<T>>": the variable's ">" and the list's ">" lex as one ">>"
    if (close.type == TOK_NONE && TokenSplitShiftRight(sc->tc)) close = acceptTok(sc, TOK_GRT);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_TYPE_VAR);
    addTok(s, name);
    return s;
}

//"<" type-expr ("," type-expr)* ">" - a type-argument list instantiating a generic (G8), or, with
//IDEN-only items, a type-parameter list on a declaration (G6 - same shape, so one parser serves both,
//with the node type telling them apart). Nested generics ("Vec<Vec<int32>>") close with a single ">>"
//token, so a TOK_BTSFT_R at the end of an argument list is split into two ">"s - the same fix C++11,
//Rust, Java and C# all make, and the only place this grammar needs it.
struct syntax* parseTypeArgsInto(SyntaxCtx sc, enum syntaxType nodeType) {
    int cur = TokenGetCursor(sc->tc);
    //"List<<T>>": a list whose first item is a type variable opens with the "<<" token - split it, and
    //join it back on any failure so an ordinary shift is never disturbed
    bool splitOpen = TokenSplitShiftLeft(sc->tc);
    struct token open = acceptTok(sc, TOK_LST);
    if (open.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(nodeType);
    while (true) {
        struct syntax* item = parseTypeExpr(sc);
        if (!item) break;
        addSntx(s, item);
        if (acceptTok(sc, TOK_COMMA).type != TOK_NONE) continue;
        if (acceptTok(sc, TOK_GRT).type != TOK_NONE) return s;
        if (TokenSplitShiftRight(sc->tc)) { //">>" closing a nested list - consume one ">", leave the other
            if (acceptTok(sc, TOK_GRT).type != TOK_NONE) return s;
        }
        break;
    }
    TokenSetCursor(sc->tc, cur);
    if (splitOpen) TokenJoinShiftLeft(sc->tc, cur);
    return NULL;
}

struct syntax* parseTypeArgs(SyntaxCtx sc) {
    return parseTypeArgsInto(sc, SNTX_TYPE_ARGS);
}

//"NAME ARR_SFX* (TOK_BTWSE_AND IDEN?)?" - the optional trailing "&name" names which scope a heap-indirect
//reference belongs to; bare "&" means the value's own private scope - see the report. Fourth and final
//spelling: "{}"/"{name}", briefly "&"/"&name", back to "{}", then "<>"/"<name>", now "&"/"&name" again -
//see HISTORY.md for the full story. The move back off "<>" is what frees "<>" for generic type
//parameters/arguments; "<>"'s own justification was that it "reads the way a type-parameter annotation
//does in most other languages", which stops being a helpful intuition the moment this language has real
//ones, and that parseTypeRef "is only ever called from a position the parser already knows is a type
//expression, never from general expression parsing" - a premise generics void outright, since generic
//calls and literals do live in expression position. "&" has no such collision: there is no unary "&" in
//olang (no pointers, so no address-of operator), so a marker's postfix-on-a-type position never overlaps
//the binary bitwise-and, and "&&"/"&=" can only mislex on "Point&&..."/"Point&=...", neither ever legal.
//Note "&" here marks scope-tagged heap indirection, NOT a borrow or an address - olang has no pointer that
//ever surfaces and no general borrow checker, only the static scope-containment checker (see the report).
//"&" IDEN? as its own node - there is nothing to backtrack over, since a "&" in a type position is always
//a marker (olang has no unary "&", no pointers, so no address-of operator), so the optional scope name is
//the only thing left to look for.
struct syntax* parseRefMarker(SyntaxCtx sc, enum syntaxType nodeType) {
    int before = TokenGetCursor(sc->tc);
    struct token marker = TokenFeed(sc->tc);
    if (marker.type != TOK_BTWSE_AND) { TokenSetCursor(sc->tc, before); return NULL; }
    struct syntax* s = newNode(nodeType);
    addTok(s, marker);
    int beforeIden = TokenGetCursor(sc->tc);
    struct token iden = TokenFeed(sc->tc);
    //the scope name must sit on the marker's own line. "&" is not a stmntEndTriggerType (it can't be, see
    //acceptStmntEnd), so no STMNT_END is synthesized after a bare marker and an IDEN opening the NEXT line
    //would otherwise be swallowed as this marker's scope name - "x Point&" followed by a line starting
    //"q := 5" would silently parse as "x Point&q". No valid program reaches that (a no-initializer
    //reference var-decl is rejected outright), but without this the diagnostic would point somewhere
    //baffling. The old "<...>" spelling got this for free from its closing ">".
    //O26: "&return" names the result scope - adjacent, so a marker ending a type never takes a "return" after it
    if (iden.type == TOK_IDEN && iden.lineNr == marker.lineNr) addTok(s, iden);
    else if (iden.type == TOK_RET && iden.str.ptr == marker.str.ptr + marker.str.len) addTok(s, iden);
    else TokenSetCursor(sc->tc, beforeIden);
    return s;
}

struct syntax* parseTypeRef(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    //the head is either a type variable ("<T>") or a name, optionally instantiated ("Vec<int32>"). Both
    //then share the identical tail below - array suffixes and reference markers apply to a type variable
    //exactly as to a named type (G2), so "<T>&[3]&" is well-formed and needs no separate grammar.
    struct syntax* head = parseTypeVar(sc);
    if (!head) head = parseName(sc);
    if (!head) return NULL;
    struct syntax* s = newNode(SNTX_TYPE_REF);
    addSntx(s, head);
    if (head->type == SNTX_NAME) {
        //"Vec<int32>" - a type-args list instantiating a generic, always immediately after the name and
        //before any marker or array suffix (G8)
        struct syntax* args = parseTypeArgs(sc);
        if (args) addSntx(s, args);
    }
    //T24: a marker binds to whatever is written immediately to its left - the head marker to the element
    //type ("Point&[3]" - 3 references to Point), each suffix's own marker to the level that suffix
    //introduces ("Point[3]&" - one reference to an array of 3 Points, since the first suffix is the
    //outermost level). Suffix markers are consumed by parseArrSfx itself.
    struct syntax* elemMarker = parseRefMarker(sc, SNTX_ELEM_REF_MARKER);
    if (elemMarker) addSntx(s, elemMarker);
    //nothing above leaves a marker unconsumed, so anything still here is a SECOND marker on a level that
    //already has one ("Point&s&a", "Point[3]&s&a"). Parsed rather than left to fail as an unexpected token
    //purely so resolveTypeRef can report DOUBLE_REFERENCE_MARKER, which says what is actually wrong.
    struct syntax* dup = parseRefMarker(sc, SNTX_REF_MARKER);
    if (dup) addSntx(s, dup);
    (void)cur;
    return s;
}

//one case of a choice type: "IDEN" (a bare tag) or "IDEN ( params )" (a tag carrying a payload). The
//payload is written exactly as a parameter list, and becomes one anonymous struct behind the scenes, so
//sizing, comparison and field access all reuse machinery that already exists for structs.
struct syntax* parseParamList(SyntaxCtx sc);

struct syntax* parseChoiceCase(SyntaxCtx sc) {
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_CHOICE_CASE);
    addTok(s, name);
    int before = TokenGetCursor(sc->tc);
    struct token open = acceptTok(sc, TOK_PAREN_O);
    if (open.type == TOK_NONE) return s;
    struct syntax* params = parseParamList(sc);
    struct token close = acceptTok(sc, TOK_PAREN_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, before); return s; }
    addTok(s, open);
    addSntx(s, params);
    addTok(s, close);
    return s;
}

struct syntax* parseChoiceBody(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_CHOICE);
    if (kw.type == TOK_NONE) return NULL;
    struct token open = acceptTok(sc, TOK_CURLY_O);
    if (open.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_CHOICE_BODY);
    addTok(s, kw);
    addTok(s, open);
    //cases are STMNT_END-separated, not comma-separated: the same move the constructor body made, and for
    //the same reason - a case is a declaration, not an item in a list, and a trailing comma after a
    //payload's ")" reads as noise. L20 still lets a one-case choice sit on a single line.
    bool any = false;
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token end = TokenFeed(sc->tc);
        if (end.type == TOK_STMNT_END) { addTok(s, end); continue; }
        TokenSetCursor(sc->tc, before);
        struct syntax* c = parseChoiceCase(sc);
        if (!c) break;
        addSntx(s, c);
        any = true;
    }
    if (!any) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token close = acceptTok(sc, TOK_CURLY_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    addTok(s, close);
    return s;
}

struct syntax* parseParamList(SyntaxCtx sc);
struct syntax* parseFuncSig(SyntaxCtx sc);
struct syntax* parseStructCtor(SyntaxCtx sc);

//one entry of an interface body: "[mut] IDEN func-sig" (T30). No leading "func" - the name followed by "("
//is already unambiguous here, and the list reads as the set of calls the interface admits rather than as a
//list of declarations. The optional "mut" says the method needs a MUTABLE receiver; it is written on the
//interface because the concrete receiver is invisible at a dispatch site, so without it whether "w.M()" may
//write to what w names would depend on a type the call cannot see.
struct syntax* parseMethodSig(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    int beforeMut = TokenGetCursor(sc->tc);
    struct token mut = TokenFeed(sc->tc);
    if (mut.type != TOK_MUT) { TokenSetCursor(sc->tc, beforeMut); mut.type = TOK_NONE; }
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* sig = parseFuncSig(sc);
    if (!sig) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_METHOD_SIG);
    if (mut.type != TOK_NONE) addTok(s, mut);
    addTok(s, name);
    addSntx(s, sig);
    return s;
}

//"interface { [STMNT_END] { method-sig STMNT_END } }" (T30). Entries are STMNT_END-separated rather than
//comma-separated like a struct/choice body: an entry is signature-shaped, not field-shaped, and L20's
//closing-"}" rule still lets a one-method interface be written on a single line.
struct syntax* parseInterfaceBody(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_INTERFACE);
    if (kw.type == TOK_NONE) return NULL;
    struct token open = acceptTok(sc, TOK_CURLY_O);
    if (open.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_INTERFACE_BODY);
    addTok(s, kw);
    addTok(s, open);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token end = TokenFeed(sc->tc);
        if (end.type == TOK_STMNT_END) { addTok(s, end); continue; }
        TokenSetCursor(sc->tc, before);
        struct syntax* m = parseMethodSig(sc);
        if (!m) break;
        addSntx(s, m);
    }
    struct token close = acceptTok(sc, TOK_CURLY_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    addTok(s, close);
    return s;
}

static bool lambdaParams; //parsing a lambda's parameter list, where a type may be left out

struct syntax* parseFuncType(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptFnKeyword(sc);
    if (kw.type == TOK_NONE) return NULL;
    bool prevLambda = lambdaParams; //a function TYPE written inside a lambda's parameters types every parameter
    lambdaParams = false;
    struct syntax* sig = parseFuncSig(sc);
    lambdaParams = prevLambda;
    if (!sig) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_FUNC_TYPE);
    addTok(s, kw);
    addSntx(s, sig);
    return s;
}

//"CHOICE_BODY|INTERFACE_BODY|FUNC_TYPE|TYPE_REF"
struct syntax* parseTypeExpr(SyntaxCtx sc) {
    //T25b: "mut" before a type makes a reference writable - kept after the shape, so the shape stays part 0
    int cur = TokenGetCursor(sc->tc);
    struct token mut = acceptTok(sc, TOK_MUT);
    struct syntax* inner = parseChoiceBody(sc);
    if (!inner) inner = parseInterfaceBody(sc);
    if (!inner) inner = parseFuncType(sc);
    if (!inner) inner = parseTypeRef(sc);
    if (!inner) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_TYPE_EXPR);
    addSntx(s, inner);
    if (mut.type != TOK_NONE) addTok(s, mut);
    return s;
}

struct syntax* parseTypeDecl(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_TYPE);
    if (kw.type == TOK_NONE) return NULL;
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    //"type Vec<T> struct(...)" - the parameter list sits after the NAME, mirroring the use site
    //("Vec<int32>") rather than attaching to "struct"; it also scopes over the whole declaration, not
    //just the body (G6), and keeps type parameters out of the anonymous struct-shape grammar (T3)
    struct syntax* typeParams = parseTypeArgsInto(sc, SNTX_TYPE_PARAMS);
    //"type T&s struct(...)" - same fallback declaration, attached to the constructor node below (a plain
    //struct has no signature for a scope variable to mean anything in, and is rejected semantically)
    struct list scopeDecls = parseScopeDecls(sc);
    //a constructor-bearing struct ("struct(params) { ... }") is only ever reachable here, never as a
    //general type expression - disambiguated purely by "(" immediately following "struct", so a plain
    //"struct { ... }" (parseTypeExpr's path, unchanged) never even attempts this
    struct syntax* ctor = parseStructCtor(sc);
    struct syntax* type = ctor ? ctor : parseTypeExpr(sc);
    if (!type) { TokenSetCursor(sc->tc, cur); return NULL; }
    //T29d: "type Percent Int32(v mut Int32) { ... }" - a constructor for a declared primitive type, written on
    //the same line as the type it is declared over
    struct syntax* primCtor = NULL;
    if (!ctor) {
        int beforeCtor = TokenGetCursor(sc->tc);
        struct token open = acceptTok(sc, TOK_PAREN_O);
        struct syntax* params = open.type != TOK_NONE ? parseParamList(sc) : NULL;
        struct token close = params ? acceptTok(sc, TOK_PAREN_C) : (struct token){0};
        struct syntax* errs = close.type != TOK_NONE ? parseFuncErrorList(sc) : NULL;
        struct syntax* body = close.type != TOK_NONE ? parseBlock(sc) : NULL;
        if (body) {
            primCtor = newNode(SNTX_PRIM_CTOR);
            addTok(primCtor, open);
            addSntx(primCtor, params);
            addTok(primCtor, close);
            if (errs) addSntx(primCtor, errs);
            addSntx(primCtor, body);
        } else TokenSetCursor(sc->tc, beforeCtor);
    }
    for (int i = 0; i < scopeDecls.len; i++) addSntx(type, *(struct syntax**)ListGetIdx(&scopeDecls, i));
    struct syntax* s = newNode(SNTX_TYPE_DECL);
    addTok(s, kw);
    addTok(s, name);
    if (typeParams) addSntx(s, typeParams);
    addSntx(s, type);
    if (primCtor) addSntx(s, primCtor);
    int beforeEnd = TokenGetCursor(sc->tc);
    struct token end = TokenFeed(sc->tc);
    if (end.type == TOK_STMNT_END) addTok(s, end); else TokenSetCursor(sc->tc, beforeEnd);
    return s;
}

//"import ALIAS "path"" or "import "path"" (alias derived from the file's own name - see
//deriveImportAlias/the report); the alias token is optional, so this node may carry either 2 or 3 tokens.
struct syntax* parseImport(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_IMPORT);
    if (kw.type == TOK_NONE) return NULL;
    struct token alias = acceptTok(sc, TOK_IDEN);
    struct token path = acceptTok(sc, TOK_STR_LIT);
    if (path.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_IMPORT);
    addTok(s, kw);
    if (alias.type != TOK_NONE) addTok(s, alias);
    addTok(s, path);
    int beforeEnd = TokenGetCursor(sc->tc);
    struct token end = TokenFeed(sc->tc);
    if (end.type == TOK_STMNT_END) addTok(s, end); else TokenSetCursor(sc->tc, beforeEnd);
    return s;
}

struct syntax* parseErrorDecl(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_ERROR);
    if (kw.type == TOK_NONE) return NULL;
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token open = acceptTok(sc, TOK_CURLY_O);
    if (open.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token first = acceptTok(sc, TOK_IDEN);
    if (first.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_ERROR_DECL);
    addTok(s, kw);
    addTok(s, name);
    addTok(s, open);
    addTok(s, first);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token comma = TokenFeed(sc->tc);
        if (comma.type != TOK_COMMA) { TokenSetCursor(sc->tc, before); break; }
        struct token iden = acceptTok(sc, TOK_IDEN);
        if (iden.type == TOK_NONE) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, comma);
        addTok(s, iden);
    }
    int beforeEnd = TokenGetCursor(sc->tc);
    struct token end = TokenFeed(sc->tc);
    if (end.type == TOK_STMNT_END) addTok(s, end); else TokenSetCursor(sc->tc, beforeEnd);
    struct token close = acceptTok(sc, TOK_CURLY_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    addTok(s, close);
    return s;
}

//one "error-list-item" (see the report on "the bare error"): either an ordinary declared error
//type's name, or the bare "error" keyword standing in for it, matching literally (never a valid IDEN,
//L7) so it can never be confused with a real type name in this position
struct syntax* parseErrorListItem(SyntaxCtx sc) {
    return parseName(sc);
}

//appends "(+ error-list-item)*" onto s, whose first item has already been parsed and added by the
//caller - factored out because both an ordinary function's signature and a constructor's build the
//same '?'-marked list (parseFuncErrorList), differing only in where it sits in the declaration
void addErrorListTail(SyntaxCtx sc, struct syntax* s) {
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token plus = TokenFeed(sc->tc);
        if (plus.type != TOK_ADD) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* item = parseErrorListItem(sc);
        if (!item) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, plus);
        addSntx(s, item);
    }
}

//a constructor's own error-list, e.g. "struct(params) ErrA + ErrB { ... }" - bare, no leading marker,
//an ordinary function's error-list is marked with a leading '?' - the marker moved here (from ret-type,
//see parseRetType) so a signature reads "(params) [ret-type] [? errors]": the return value first, then,
//if there is one, the error set
struct syntax* parseFuncErrorList(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token q = acceptTok(sc, TOK_QSNTMRK);
    if (q.type == TOK_NONE) return NULL;
    (void)cur;
    struct syntax* s = newNode(SNTX_ERROR_LIST);
    addTok(s, q);
    //R16: "?" alone is the default error; any types named after it are added to it
    struct syntax* first = parseErrorListItem(sc);
    if (!first) return s;
    addSntx(s, first);
    addErrorListTail(sc, s);
    return s;
}

//bare, no marker - unlike before, nothing here distinguishes it from a following error-list positionally
//other than trying it first (see parseFuncSig): a type-expr can never itself start with '?', so there's no
//ambiguity between "this is the ret-type" and "this is actually the error-list"
//"type-expr" or, D8c, "(" type-expr "," type-expr { "," type-expr } ")" - several results. A type expression
//never begins with "(", so the two cannot be confused.
struct syntax* parseRetType(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    if (acceptTok(sc, TOK_PAREN_O).type != TOK_NONE) {
        struct syntax* s = newNode(SNTX_RET_TYPE);
        int n = 0;
        do {
            struct syntax* type = parseTypeExpr(sc);
            if (!type) { TokenSetCursor(sc->tc, cur); return NULL; }
            addSntx(s, type);
            n++;
        } while (acceptTok(sc, TOK_COMMA).type != TOK_NONE);
        if (n < 2 || acceptTok(sc, TOK_PAREN_C).type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
        return s;
    }
    struct syntax* type = parseTypeExpr(sc);
    if (!type) return NULL;
    struct syntax* s = newNode(SNTX_RET_TYPE);
    addSntx(s, type);
    return s;
}

struct syntax* parseParam(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_PARAM);
    addTok(s, name);
    int beforeMut = TokenGetCursor(sc->tc);
    struct token mut = TokenFeed(sc->tc);
    if (mut.type == TOK_MUT) addTok(s, mut); else TokenSetCursor(sc->tc, beforeMut);
    //a lambda's parameter may leave its type out ("fn(a, b)"), to be taken from where it is passed
    struct token nextTok = peekTok(sc);
    if (lambdaParams && (nextTok.type == TOK_COMMA || nextTok.type == TOK_PAREN_C)) {
        ListAdd(&sc->localNames, &name.str); //S8b
        return s;
    }
    struct syntax* type = parseTypeExpr(sc);
    if (!type) { TokenSetCursor(sc->tc, cur); return NULL; }
    addSntx(s, type);
    //D8a: an optional "= expr" default. Parsed as an ordinary expression and restricted to a literal in
    //semantic.c, so a bad default gets a real diagnostic instead of a parse failure pointing elsewhere
    int beforeAss = TokenGetCursor(sc->tc);
    struct token ass = TokenFeed(sc->tc);
    if (ass.type == TOK_ASS) {
        struct syntax* def = parseExpr(sc);
        if (!def) { TokenSetCursor(sc->tc, cur); return NULL; }
        addTok(s, ass);
        addSntx(s, def);
    } else TokenSetCursor(sc->tc, beforeAss);
    ListAdd(&sc->localNames, &name.str); //S8b
    return s;
}

//"(PARAM (COMMA PARAM)*)?" - always succeeds (possibly with zero params)
struct syntax* parseParamList(SyntaxCtx sc) {
    struct syntax* s = newNode(SNTX_PARAM_LIST);
    struct syntax* first = parseParam(sc);
    if (!first) return s;
    addSntx(s, first);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token comma = TokenFeed(sc->tc);
        if (comma.type != TOK_COMMA) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* p = parseParam(sc);
        if (!p) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, comma);
        addSntx(s, p);
    }
    return s;
}

struct syntax* parseFuncSig(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token open = acceptTok(sc, TOK_PAREN_O);
    if (open.type == TOK_NONE) return NULL;
    struct syntax* params = parseParamList(sc);
    struct token close = acceptTok(sc, TOK_PAREN_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_FUNC_SIG);
    addTok(s, open);
    addSntx(s, params);
    addTok(s, close);
    struct syntax* ret = parseRetType(sc);
    if (ret) addSntx(s, ret);
    struct syntax* errs = parseFuncErrorList(sc);
    if (errs) addSntx(s, errs);
    return s;
}

//one field inside a constructor-bearing struct's body. Tries, in order: ":=" inference, an explicit type
//(optionally followed by "= expr"), and finally a bare pun (just the name, possibly "mut") when no type
//expression follows at all - see the report for what each form means
struct syntax* parseCtorField(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_CTOR_FIELD);
    addTok(s, name);

    int beforeMut = TokenGetCursor(sc->tc);
    struct token mut = TokenFeed(sc->tc);
    if (mut.type == TOK_MUT) addTok(s, mut); else TokenSetCursor(sc->tc, beforeMut);

    int beforeInfer = TokenGetCursor(sc->tc);
    struct token infer = TokenFeed(sc->tc);
    if (infer.type == TOK_ASS_INFER) {
        struct syntax* rhs = parseExpr(sc);
        if (!rhs) { TokenSetCursor(sc->tc, cur); return NULL; }
        addTok(s, infer);
        addSntx(s, rhs);
        return s;
    }
    TokenSetCursor(sc->tc, beforeInfer);

    struct syntax* type = parseTypeExpr(sc);
    if (type) {
        addSntx(s, type);
        int beforeAss = TokenGetCursor(sc->tc);
        struct token ass = TokenFeed(sc->tc);
        if (ass.type == TOK_ASS) {
            struct syntax* rhs = parseExpr(sc);
            if (!rhs) { TokenSetCursor(sc->tc, cur); return NULL; }
            addTok(s, ass);
            addSntx(s, rhs);
        } else {
            TokenSetCursor(sc->tc, beforeAss);
        }
        return s;
    }

    //no type, no "=", no ":=" - a bare pun, valid only if it turns out to name one of the constructor's
    //own parameters (checked in semantic.c, which has the param list this parser doesn't)
    return s;
}

//"(CTOR_FIELD STMNT_END | STMNT)*" - always succeeds (possibly empty). A constructor's body is an
//ordinary statement block in which a field declaration is one more kind of statement: the fields ARE the
//constructor's own top-level locals, and everything between them ("if", "error", "try ... catch") is
//ordinary code running in textual order. A field is tried first at every position and must be terminated
//like any other statement, so anything that isn't one ("x = 5", "f()", "if ...") backtracks cleanly into
//parseStmnt - "x" alone parses as a field (a bare pun) rather than as a useless expression statement,
//which is exactly the classification wanted.
struct syntax* parseCtorBody(SyntaxCtx sc) {
    struct syntax* s = newNode(SNTX_CTOR_BODY);
    while (true) {
        int cur = TokenGetCursor(sc->tc);
        struct syntax* f = parseCtorField(sc);
        if (f && acceptStmntEnd(sc)) { addSntx(s, f); continue; }
        TokenSetCursor(sc->tc, cur);
        struct syntax* stmt = parseStmnt(sc);
        if (!stmt) break;
        addSntx(s, stmt);
    }
    return s;
}

struct syntax* parseDestruct(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_DESTRUCT);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_DESTRUCT);
    addTok(s, kw);
    addSntx(s, block);
    return s;
}

//"STRUCT PAREN_O PARAM_LIST PAREN_C ('?' ERROR_LIST)? CURLY_O CTOR_BODY CURLY_C DESTRUCT?" - only called
//from parseTypeDecl, right after "type NAME"; committing to this (vs. a plain "struct { ... }") is decided
//purely by whether "(" immediately follows "struct"
struct syntax* parseStructCtor(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_STRUCT);
    if (kw.type == TOK_NONE) return NULL;
    struct token open = acceptTok(sc, TOK_PAREN_O);
    if (open.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* params = parseParamList(sc);
    struct token close = acceptTok(sc, TOK_PAREN_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STRUCT_CTOR);
    addTok(s, kw);
    addTok(s, open);
    addSntx(s, params);
    addTok(s, close);
    struct syntax* errs = parseFuncErrorList(sc);
    if (errs) addSntx(s, errs);
    struct token curlyO = acceptTok(sc, TOK_CURLY_O);
    if (curlyO.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    addTok(s, curlyO);
    struct syntax* body = parseCtorBody(sc);
    addSntx(s, body);
    struct token curlyC = acceptTok(sc, TOK_CURLY_C);
    if (curlyC.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    addTok(s, curlyC);
    struct syntax* destruct = parseDestruct(sc);
    if (destruct) addSntx(s, destruct);
    return s;
}

struct syntax* parseFuncDef(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptFnKeyword(sc);
    if (kw.type == TOK_NONE) return NULL;
    //M19: "func (recv T) Name(...)". The receiver clause is what makes a function a method - nothing is
    //inferred from a parameter's type any more - and it is parsed as an ordinary param, so "mut", a "&"
    //marker and a scope tag all read exactly as they would anywhere else.
    struct syntax* receiver = NULL;
    int beforeRecv = TokenGetCursor(sc->tc);
    struct token rOpen = acceptTok(sc, TOK_PAREN_O);
    if (rOpen.type != TOK_NONE) {
        struct syntax* rp = parseParam(sc);
        struct token rClose = rp ? acceptTok(sc, TOK_PAREN_C) : (struct token){0};
        if (!rp || rClose.type == TOK_NONE) { TokenSetCursor(sc->tc, beforeRecv); return NULL; }
        receiver = newNode(SNTX_RECEIVER);
        addTok(receiver, rOpen);
        addSntx(receiver, rp);
        addTok(receiver, rClose);
    }
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    //O3: "func f&b(...)" - scope declarations ride on the signature node, where resolveFuncSig finds them
    //alongside everything else it needs
    struct list scopeDecls = parseScopeDecls(sc);
    struct syntax* sig = parseFuncSig(sc);
    if (!sig) { TokenSetCursor(sc->tc, cur); return NULL; }
    for (int i = 0; i < scopeDecls.len; i++) addSntx(sig, *(struct syntax**)ListGetIdx(&scopeDecls, i));
    //the receiver becomes parameter 0 of the signature. Every rule that governs a parameter - D9's axes,
    //E12's conversions, §8's containment - then governs it with no special case, which is the property M19
    //was built on; only where it is WRITTEN moved.
    if (receiver) {
        struct syntax* plist = NULL;
        for (int i = 0; i < sig->parts.len && !plist; i++) {
            struct syntaxPart* sp = ListGetIdx(&sig->parts, i);
            if (!sp->isToken && sp->sntx->type == SNTX_PARAM_LIST) plist = sp->sntx;
        }
        if (!plist) { TokenSetCursor(sc->tc, cur); return NULL; }
        struct syntaxPart rpart = {0};
        rpart.sntx = ((struct syntaxPart*)ListGetIdx(&receiver->parts, 1))->sntx;
        ListInsertIdx(&plist->parts, 0, &rpart);
    }
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_FUNC_DEF);
    addTok(s, kw);
    addTok(s, name);
    addSntx(s, sig);
    addSntx(s, block);
    if (receiver) addSntx(s, receiver);
    return s;
}

//"IDEN type-expr" - unlike parseParam, never accepts "mut" (see the report on §11 X2) - reuses the
//ordinary type-expr grammar for the type itself; the restriction to a numeric-primitive-or-array-of-
//them type is checked semantically (resolveExternParamList in semantic.c), not by a separate grammar
struct syntax* parseExternParam(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_EXTERN_PARAM);
    addTok(s, name);
    struct syntax* type = parseTypeExpr(sc);
    if (!type) { TokenSetCursor(sc->tc, cur); return NULL; }
    addSntx(s, type);
    return s;
}

//"(EXTERN_PARAM (COMMA EXTERN_PARAM)*)?" - always succeeds (possibly with zero params), mirroring
//parseParamList
struct syntax* parseExternParamList(SyntaxCtx sc) {
    struct syntax* s = newNode(SNTX_EXTERN_PARAM_LIST);
    struct syntax* first = parseExternParam(sc);
    if (!first) return s;
    addSntx(s, first);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token comma = TokenFeed(sc->tc);
        if (comma.type != TOK_COMMA) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* p = parseExternParam(sc);
        if (!p) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, comma);
        addSntx(s, p);
    }
    return s;
}

//"extern func IDEN ( EXTERN_PARAM_LIST ) RET_TYPE? STMNT_END" - a top-level declaration only (see the
//report on §11): no error-list (an external function is never fallible in olang's own sense, X4), and
//no body at all - STMNT_END ends the declaration directly where an ordinary parseFuncDef's own block
//would begin. Reuses parseRetType as-is (already bare, no marker, see the signature-reorder entry in
//the report) - identical grammar to an ordinary function's own optional return type.
struct syntax* parseExternFuncDecl(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kwExtern = acceptTok(sc, TOK_EXTERN);
    if (kwExtern.type == TOK_NONE) return NULL;
    struct token kwFunc = acceptFnKeyword(sc);
    if (kwFunc.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token open = acceptTok(sc, TOK_PAREN_O);
    if (open.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* params = parseExternParamList(sc);
    struct token close = acceptTok(sc, TOK_PAREN_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_EXTERN_FUNC_DECL);
    addTok(s, kwExtern);
    addTok(s, kwFunc);
    addTok(s, name);
    addTok(s, open);
    addSntx(s, params);
    addTok(s, close);
    struct syntax* retType = parseRetType(sc);
    if (retType) addSntx(s, retType);
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    return s;
}

struct syntax* parseTestDecl(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_TEST);
    if (kw.type == TOK_NONE) return NULL;
    struct token desc = acceptTok(sc, TOK_STR_LIT);
    if (desc.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_TEST_DECL);
    addTok(s, kw);
    addTok(s, desc);
    addSntx(s, block);
    return s;
}

//":=" declares with the type read off the (required-to-be-literal) initializer - a distinct token from
//"=" so this can never be confused with an assignment to an existing variable. An explicit-type decl's
//own "= EXPR" is optional (unlike ":=", which always needs something to infer from) - semantic.c is the
//one that decides which declared types can actually go without an initializer (an uninitialized array,
//zero-filled or arena-allocated - see the report); the grammar just leaves the door open for any type,
//"parse liberally, reject semantically".
struct syntax* parseVarDecl(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_VAR_DECL);
    addTok(s, name);
    int beforeMut = TokenGetCursor(sc->tc);
    struct token mut = TokenFeed(sc->tc);
    if (mut.type == TOK_MUT) addTok(s, mut); else TokenSetCursor(sc->tc, beforeMut);

    int beforeInfer = TokenGetCursor(sc->tc);
    struct token infer = TokenFeed(sc->tc);
    bool hasNoInitializer = false;
    if (infer.type == TOK_ASS_INFER) {
        addTok(s, infer);
    } else {
        TokenSetCursor(sc->tc, beforeInfer);
        struct syntax* type = parseTypeExpr(sc);
        if (!type) { TokenSetCursor(sc->tc, cur); return NULL; }
        addSntx(s, type);
        struct token ass = acceptTok(sc, TOK_ASS);
        if (ass.type == TOK_NONE) hasNoInitializer = true;
        else addTok(s, ass);
    }
    if (!hasNoInitializer) {
        struct syntax* rhs = parseExpr(sc);
        if (!rhs) { TokenSetCursor(sc->tc, cur); return NULL; }
        addSntx(s, rhs);
    }
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    if (sc->blockDepth > 0) ListAdd(&sc->localNames, &name.str); //S8b: a local, not a global
    return s;
}

//same shape as VAR_DECL but no trailing statement-end (a for-loop's init clause is followed by ",")
struct syntax* parseForInit(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) return NULL;
    ListAdd(&sc->localNames, &name.str); //S8b - recorded even if this turns out not to be one: safe
    struct syntax* s = newNode(SNTX_FOR_INIT);
    addTok(s, name);
    int beforeMut = TokenGetCursor(sc->tc);
    struct token mut = TokenFeed(sc->tc);
    if (mut.type == TOK_MUT) addTok(s, mut); else TokenSetCursor(sc->tc, beforeMut);

    int beforeInfer = TokenGetCursor(sc->tc);
    struct token infer = TokenFeed(sc->tc);
    if (infer.type == TOK_ASS_INFER) {
        addTok(s, infer);
    } else {
        TokenSetCursor(sc->tc, beforeInfer);
        struct syntax* type = parseTypeExpr(sc);
        if (!type) { TokenSetCursor(sc->tc, cur); return NULL; }
        struct token ass = acceptTok(sc, TOK_ASS);
        if (ass.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
        addSntx(s, type);
        addTok(s, ass);
    }
    struct syntax* rhs = parseExpr(sc);
    if (!rhs) { TokenSetCursor(sc->tc, cur); return NULL; }
    addSntx(s, rhs);
    return s;
}

enum tokenType assignOpToks[] = {
    TOK_ASS, TOK_ASS_ADD, TOK_ASS_SUB, TOK_ASS_MUL, TOK_ASS_DIV, TOK_ASS_MOD,
    TOK_ASS_BTSFT_L, TOK_ASS_BTSFT_R,
    TOK_ASS_BTWSE_AND, TOK_ASS_BTWSE_OR, TOK_ASS_BTWSE_XOR
};
#define N_ASSIGN_OP_TOKS ((int)(sizeof(assignOpToks) / sizeof(assignOpToks[0])))

struct syntax* parseAssignOp(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token t = TokenFeed(sc->tc);
    for (int i = 0; i < N_ASSIGN_OP_TOKS; i++) {
        if (t.type == assignOpToks[i]) {
            struct syntax* s = newNode(SNTX_ASSIGN_OP);
            addTok(s, t);
            return s;
        }
    }
    TokenSetCursor(sc->tc, cur);
    return NULL;
}

struct syntax* parseStmntAssign(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct syntax* lhs = parseExprPostfix(sc);
    if (!lhs) return NULL;
    struct syntax* op = parseAssignOp(sc);
    if (!op) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* rhs = parseExpr(sc);
    if (!rhs) { TokenSetCursor(sc->tc, cur); return NULL; }
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_ASSIGN);
    addSntx(s, lhs);
    addSntx(s, op);
    addSntx(s, rhs);
    return s;
}

struct syntax* parseStmntExpr(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct syntax* e = parseExpr(sc);
    if (!e) return NULL;
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_EXPR);
    addSntx(s, e);
    return s;
}

//S8b: a local if whose condition the build decides - evaluable before the program runs (the same class as a
//top-level condition, B9a, less anything that is a local here) and depending on a build constant - is
//conditional compilation, like a top-level one: only the branch it chooses is parsed and checked. A
//condition fixed WITHOUT a build constant is left to the checker, which rejects it as dead code (S8a).
static void skipBraceBody(TokenCtx tc);
static bool evalLocalCond(SyntaxCtx sc, bool* value, bool* deferrable);
struct condDecision { struct str file; int at; bool value; char* err; enum condDecisionKind kind; };
static struct condDecision* condDecisionFor(TokenCtx tc, int at);
static struct token firstTokAnywhereSyntax(struct syntax* s);
static void condTablesInit(void);
static struct list condPending;

static void skipBalancedTo(SyntaxCtx sc, enum tokenType stop) {
    int depth = 0;
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token t = TokenFeed(sc->tc);
        if (t.type == TOK_NONE) return;
        if (depth == 0 && t.type == stop) { TokenSetCursor(sc->tc, before); return; }
        if (t.type == TOK_PAREN_O || t.type == TOK_SQUARE_O) depth++;
        if (t.type == TOK_PAREN_C || t.type == TOK_SQUARE_C) depth--;
    }
}

//after a chosen branch: the rest of the chain ("else if ... { } else { }"), none of it parsed
static void skipElseChain(SyntaxCtx sc) {
    while (true) {
        int before = TokenGetCursor(sc->tc);
        if (TokenFeed(sc->tc).type != TOK_ELSE) { TokenSetCursor(sc->tc, before); return; }
        if (acceptTok(sc, TOK_IF).type != TOK_NONE) skipBalancedTo(sc, TOK_CURLY_O);
        if (acceptTok(sc, TOK_CURLY_O).type == TOK_NONE) return;
        skipBraceBody(sc->tc);
    }
}

struct syntax* parseStmntIf(SyntaxCtx sc);

static struct syntax* chosenNode(struct token kw, struct syntax* block) {
    struct syntax* s = newNode(SNTX_STMNT_CHOSEN);
    addTok(s, kw);
    if (block) addSntx(s, block);
    return s;
}

//cond is already parsed; value is what the build decided
static struct syntax* parseChosenIf(SyntaxCtx sc, int cur, struct token kw, bool value) {
    if (value) {
        struct syntax* block = parseBlock(sc);
        if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
        skipElseChain(sc);
        return chosenNode(kw, block);
    }
    if (acceptTok(sc, TOK_CURLY_O).type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    skipBraceBody(sc->tc);
    int before = TokenGetCursor(sc->tc);
    if (TokenFeed(sc->tc).type != TOK_ELSE) { TokenSetCursor(sc->tc, before); return chosenNode(kw, NULL); }
    int afterElse = TokenGetCursor(sc->tc);
    if (peekTok(sc).type == TOK_IF) {
        struct syntax* next = parseStmntIf(sc); //runtime or decided, whichever that condition is
        if (!next) { TokenSetCursor(sc->tc, cur); return NULL; }
        return next;
    }
    TokenSetCursor(sc->tc, afterElse);
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    return chosenNode(kw, block);
}

static struct syntax* parseStmntIfRuntime(SyntaxCtx sc, int cur, struct token kw);

//S8b: a local if. Its condition is decided at parse time when the token evaluator can (and it depends on a
//build constant); otherwise compile-time evaluation decides it after an attempt at the whole program (as
//B9c does at the top level) - with the locals it reads counting when their values are provably fixed. The
//first attempt parses it as an ordinary if when its branches parse, or skips them and marks the item
//incomplete when they do not, and queues the condition. A later attempt finds the decision: a value makes
//it conditional compilation; "runtime" (it cannot be evaluated) keeps it an ordinary if; "dead" (evaluated
//without depending on the build) is S8a's error.
struct syntax* parseStmntIf(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_IF);
    if (kw.type == TOK_NONE) return NULL;
    int condStart = TokenGetCursor(sc->tc);
    bool value, deferrable;
    bool decided = evalLocalCond(sc, &value, &deferrable);
    (void)deferrable; //every undecided local condition is queued: one naming a local may still be decided,
                      //when that local provably holds one value - which only the checker can tell
    TokenSetCursor(sc->tc, condStart);
    struct condDecision* d = condDecisionFor(sc->tc, condStart);
    if (!decided && d && d->kind == COND_VALUE) { decided = true; value = d->value; }
    if (decided) {
        if (!parseExpr(sc)) { TokenSetCursor(sc->tc, cur); return NULL; } //checked for syntax, and consumed
        return parseChosenIf(sc, cur, kw, value);
    }
    struct syntax* s = parseStmntIfRuntime(sc, cur, kw);
    if (!d) {
        struct pendingCond p = (struct pendingCond){0};
        p.file = TokenGetFileName(sc->tc);
        p.at = condStart;
        p.mod = sc->typeCtx;
        p.local = true;
        if (!s) {
            //its branches do not parse here - most likely what they use exists only where the condition
            //holds - so they are skipped this attempt, and the attempt redone once the condition is decided
            TokenSetCursor(sc->tc, condStart);
            p.cond = parseExpr(sc);
            if (!p.cond || acceptTok(sc, TOK_CURLY_O).type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
            skipBraceBody(sc->tc);
            skipElseChain(sc);
            s = newNode(SNTX_STMNT_UNDECIDED);
            addTok(s, kw);
            addSntx(s, p.cond); //still checked, in place, so it can be decided
            p.skipped = true;
            sc->itemIncomplete = true;
        } else {
            p.cond = firstPartOfTypeSntx(s, SNTX_EXPR);
        }
        p.tok = firstTokAnywhereSyntax(p.cond);
        condTablesInit();
        ListAdd(&condPending, &p);
    }
    if (s && d && d->kind == COND_DEAD) addSntx(s, newNode(SNTX_COND_DEAD));
    return s;
}

static struct syntax* parseStmntIfRuntime(SyntaxCtx sc, int cur, struct token kw) {
    struct syntax* cond = parseExpr(sc);
    if (!cond) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_IF);
    addTok(s, kw);
    addSntx(s, cond);
    addSntx(s, block);
    int beforeElse = TokenGetCursor(sc->tc);
    struct token elseKw = TokenFeed(sc->tc);
    if (elseKw.type == TOK_ELSE) {
        struct syntax* elseIf = parseStmntIf(sc);
        if (elseIf && elseIf->type == SNTX_STMNT_UNDECIDED) return s; //S8b: decided on a later attempt
        if (elseIf && elseIf->type == SNTX_STMNT_CHOSEN) {
            //S8b: the build decided the rest of the chain - it is this if's else block, or no else at all
            struct syntax* chosen = firstPartOfTypeSntx(elseIf, SNTX_BLOCK);
            if (chosen) { addTok(s, elseKw); addSntx(s, chosen); }
            return s;
        }
        if (elseIf) { addTok(s, elseKw); addSntx(s, elseIf); return s; }
        struct syntax* elseBlock = parseBlock(sc);
        if (elseBlock) { addTok(s, elseKw); addSntx(s, elseBlock); return s; }
        //an "else" whose branch does not parse makes the whole if fail to parse. It used to be dropped and the
        //if returned without it, leaving the stray "else" for the enclosing block to fail on - the error then
        //pointed past the real one, and S8b could not tell this if's branches did not parse
        TokenSetCursor(sc->tc, cur);
        return NULL;
    } else {
        TokenSetCursor(sc->tc, beforeElse);
    }
    return s;
}

//S9a: "for NAME [, NAME] in expr block"
static struct syntax* parseStmntForIn(SyntaxCtx sc, struct token kw) {
    int cur = TokenGetCursor(sc->tc);
    struct token n1 = acceptTok(sc, TOK_IDEN);
    if (n1.type == TOK_NONE) return NULL;
    struct token n2 = (struct token){0};
    struct token comma = acceptTok(sc, TOK_COMMA);
    if (comma.type != TOK_NONE) {
        n2 = acceptTok(sc, TOK_IDEN);
        if (n2.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    }
    struct token in = acceptTok(sc, TOK_IN);
    if (in.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    ListAdd(&sc->localNames, &n1.str); //S8b: the loop's names are locals
    if (n2.type != TOK_NONE) ListAdd(&sc->localNames, &n2.str);
    struct syntax* e = NULL;
    struct token rangeKw = acceptTok(sc, TOK_RANGE);
    if (rangeKw.type != TOK_NONE) {
        //S9b: "range end" or "range start, end [, step]" - one to three expressions, no parentheses
        e = newNode(SNTX_RANGE);
        addTok(e, rangeKw);
        int n = 0;
        while (true) {
            struct syntax* arg = parseExpr(sc);
            if (!arg) { TokenSetCursor(sc->tc, cur); return NULL; }
            addSntx(e, arg);
            n++;
            if (acceptTok(sc, TOK_COMMA).type == TOK_NONE) break;
        }
        if (n > 3) { TokenSetCursor(sc->tc, cur); return NULL; }
    } else {
        e = parseExpr(sc);
    }
    if (!e) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_FOR_IN);
    addTok(s, kw);
    addTok(s, n1);
    if (n2.type != TOK_NONE) addTok(s, n2);
    addTok(s, in);
    addSntx(s, e);
    addSntx(s, block);
    return s;
}

//S9: "for block" (forever), "for expr block" (while), "for init, cond, post block", and S9a's "for x in a"
struct syntax* parseStmntFor(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_FOR);
    if (kw.type == TOK_NONE) return NULL;
    if (peekTok(sc).type == TOK_CURLY_O) {
        struct syntax* block = parseBlock(sc);
        if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
        struct syntax* s = newNode(SNTX_STMNT_FOR);
        addTok(s, kw);
        addSntx(s, block);
        return s;
    }
    struct syntax* forIn = parseStmntForIn(sc, kw);
    if (forIn) return forIn;
    int afterKw = TokenGetCursor(sc->tc);
    struct syntax* init = parseForInit(sc);
    struct token c1 = init ? acceptTok(sc, TOK_COMMA) : (struct token){0};
    if (!init || c1.type == TOK_NONE) {
        TokenSetCursor(sc->tc, afterKw);
        struct syntax* cond = parseExpr(sc);
        if (!cond) { TokenSetCursor(sc->tc, cur); return NULL; }
        struct syntax* block = parseBlock(sc);
        if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
        struct syntax* s = newNode(SNTX_STMNT_FOR);
        addTok(s, kw);
        addSntx(s, cond);
        addSntx(s, block);
        return s;
    }
    struct syntax* cond = parseExpr(sc);
    if (!cond) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token c2 = acceptTok(sc, TOK_COMMA);
    if (c2.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    //S9: the post clause is a SIMPLE statement - an assignment, or an expression S3 admits - so a loop can
    //advance by "c = c.next" and not only by "i++". Parsed as an assignment first, with no STMNT_END since
    //the block follows directly.
    struct syntax* post = NULL;
    int beforePost = TokenGetCursor(sc->tc);
    struct syntax* lhs = parseExprPostfix(sc);
    struct syntax* op = lhs ? parseAssignOp(sc) : NULL;
    struct syntax* rhs = op ? parseExpr(sc) : NULL;
    if (rhs) {
        post = newNode(SNTX_STMNT_ASSIGN);
        addSntx(post, lhs);
        addSntx(post, op);
        addSntx(post, rhs);
    } else {
        TokenSetCursor(sc->tc, beforePost);
        struct syntax* e = parseExpr(sc);
        if (e) {
            post = newNode(SNTX_STMNT_EXPR);
            addSntx(post, e);
        }
    }
    if (!post) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_FOR);
    addTok(s, kw);
    addSntx(s, init);
    addTok(s, c1);
    addSntx(s, cond);
    addTok(s, c2);
    addSntx(s, post);
    addSntx(s, block);
    return s;
}

struct syntax* parseStmntDo(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_DO);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token whileKw = acceptTok(sc, TOK_FOR); //S10: "do { } for cond"
    if (whileKw.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* cond = parseExpr(sc);
    if (!cond) { TokenSetCursor(sc->tc, cur); return NULL; }
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_DO);
    addTok(s, kw);
    addSntx(s, block);
    addTok(s, whileKw);
    addSntx(s, cond);
    return s;
}

//"case <expr|type-expr> block". A type match (G13) writes types where a value match writes values, so
//when the enclosing match's operand was a type variable the case items are parsed as type expressions -
//the flag is passed down rather than guessed here, since "case int32" is a perfectly good expression
//shape too (a bare name) and only the operand can settle which reading is meant.
//T17b: "case Shape.Circle(r)" - a case that BINDS a payload-carrying choice case's fields to fresh names
//for that arm, rather than comparing against a value. The identifiers inside the parens are always binding
//occurrences, never expressions, which is what makes the form unambiguous against a construction written
//with the same characters; it is also what every language with sum types does. Committed to only when the
//exact shape "<chain>.Case( IDEN {, IDEN} )" parses, so anything else still parses as an ordinary
//expression case.
struct syntax* parseCasePattern(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct syntax* name = parseName(sc);
    if (!name) return NULL;
    struct token open = acceptTok(sc, TOK_PAREN_O);
    if (open.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_CASE_PATTERN);
    addSntx(s, name);
    addTok(s, open);
    while (true) {
        struct token iden = acceptTok(sc, TOK_IDEN);
        if (iden.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
        addTok(s, iden);
        ListAdd(&sc->localNames, &iden.str); //S8b: a payload binding is a local
        int before = TokenGetCursor(sc->tc);
        struct token comma = TokenFeed(sc->tc);
        if (comma.type != TOK_COMMA) { TokenSetCursor(sc->tc, before); break; }
    }
    struct token close = acceptTok(sc, TOK_PAREN_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    addTok(s, close);
    return s;
}

struct syntax* parseStmntCaseKind(SyntaxCtx sc, bool typeMatch) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_CASE);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* val = typeMatch ? parseTypeExpr(sc) : parseCasePattern(sc);
    if (!val) val = typeMatch ? NULL : parseExpr(sc);
    if (!val) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_CASE);
    addTok(s, kw);
    addSntx(s, val);
    addSntx(s, block);
    return s;
}

struct syntax* parseStmntNomatch(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_NOMATCH);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_NOMATCH);
    addTok(s, kw);
    addSntx(s, block);
    return s;
}

struct syntax* parseStmntMatch(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_MATCH);
    if (kw.type == TOK_NONE) return NULL;
    //"match <T>" (G13) - the operand is a type variable, not a value. Unambiguous: "<" never opens an
    //expression, so seeing one here settles that this is a type match and that the cases are types too.
    struct syntax* typeOperand = parseTypeVar(sc);
    struct syntax* val = typeOperand ? typeOperand : parseExpr(sc);
    if (!val) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token open = acceptTok(sc, TOK_CURLY_O);
    if (open.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_MATCH);
    addTok(s, kw);
    addSntx(s, val);
    addTok(s, open);
    while (true) {
        struct syntax* c = parseStmntCaseKind(sc, typeOperand != NULL);
        if (!c) break;
        addSntx(s, c);
    }
    struct syntax* nomatch = parseStmntNomatch(sc);
    if (nomatch) addSntx(s, nomatch);
    struct token close = acceptTok(sc, TOK_CURLY_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    addTok(s, close);
    return s;
}

struct syntax* parseStmntRet(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_RET);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_STMNT_RET);
    addTok(s, kw);
    sc->defaultListAt = TokenGetCursor(sc->tc);
    struct syntax* val = parseExpr(sc);
    sc->defaultListAt = -1;
    if (val) addSntx(s, val);
    //D8c: "return a, b" - one value per result of a function returning several
    while (val && acceptTok(sc, TOK_COMMA).type != TOK_NONE) {
        val = parseExpr(sc);
        if (!val) { TokenSetCursor(sc->tc, cur); return NULL; }
        addSntx(s, val);
    }
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    return s;
}

//"spawn { f(a)  g(b) }" (P1) - each statement in the block is one task, and the block's own end is the
//join. Two things follow from that shape, and both are the reason for it. Each task is a CALL rather than
//a body, because olang has no closures: an argument list is the only way to say what a task may touch, and
//saying it explicitly is what keeps the sharing rule (P3) checkable by reading the statement. And the
//spawner runs NOTHING between the spawn and the join - it is blocked at the block's end - so no parent
//access can race a task, which is what a per-statement "spawn" could not promise without dataflow.
//P1: "join { ... }" - an ordinary block, which happens to wait at its end for every task spawned in it
struct syntax* parseStmntJoin(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_JOIN);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_JOIN);
    addTok(s, kw);
    addSntx(s, block);
    return s;
}

//P1: "spawn <call>" - one task. A call rather than a body because there are no closures, so an argument
//list is the only way to state what the task is handed.
//P1: "spawn <call>" - one task. A call rather than a body because there are no closures, so an argument
//list is the only way to state what a task is handed.
struct syntax* parseStmntSpawn(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_SPAWN);
    if (kw.type == TOK_NONE) return NULL;
    //P1g: "spawn TARGET = CALL" binds the call's result. The target is parsed as a postfix expression,
    //exactly as an assignment's lvalue is, which is also what lets the checker tell the two apart by
    //node type rather than by counting. Only plain "=" - a compound assignment would read the target
    //on the task's own thread, which is a race written by accident.
    //D8c: "spawn a, b = CALL" binds each result of a call returning several, "_" discarding one
    struct list targets = ListInit(sizeof(struct syntax*));
    int afterKw = TokenGetCursor(sc->tc);
    struct syntax* target;
    while ((target = parseExprPostfix(sc))) {
        ListAdd(&targets, &target);
        if (acceptTok(sc, TOK_COMMA).type == TOK_NONE) break;
    }
    if (targets.len == 0 || acceptTok(sc, TOK_ASS).type == TOK_NONE) {
        targets.len = 0;
        TokenSetCursor(sc->tc, afterKw);
    }
    struct syntax* call = parseExpr(sc);
    if (!call) { TokenSetCursor(sc->tc, cur); return NULL; }
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_SPAWN);
    addTok(s, kw);
    for (int i = 0; i < targets.len; i++) addSntx(s, *(struct syntax**)ListGetIdx(&targets, i));
    addSntx(s, call);
    return s;
}

//S11: bare statements, the same shape as done/fail. Whether they sit inside a loop is a semantic
//question (buildBreakStmnt), not a grammatical one.
struct syntax* parseStmntBreak(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_BREAK);
    if (kw.type == TOK_NONE) return NULL;
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_BREAK);
    addTok(s, kw);
    return s;
}

struct syntax* parseStmntContinue(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_CONTINUE);
    if (kw.type == TOK_NONE) return NULL;
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_CONTINUE);
    addTok(s, kw);
    return s;
}

//S16c/S16d: bare statements, the same shape as done/fail
struct syntax* parseStmntAbort(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_ABORT);
    if (kw.type == TOK_NONE) return NULL;
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_ABORT);
    addTok(s, kw);
    return s;
}

struct syntax* parseStmntUnreachable(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_UNREACHABLE);
    if (kw.type == TOK_NONE) return NULL;
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_UNREACHABLE);
    addTok(s, kw);
    return s;
}

struct syntax* parseStmntDone(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_DONE);
    if (kw.type == TOK_NONE) return NULL;
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_DONE);
    addTok(s, kw);
    return s;
}

struct syntax* parseStmntFail(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_FAIL);
    if (kw.type == TOK_NONE) return NULL;
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_FAIL);
    addTok(s, kw);
    return s;
}

//"assert EXPR" - takes its operand directly like "return" does, not a function call ("assert(cond)"
//still parses fine too, unchanged: the parens are just an ordinary parenthesized sub-expression, which
//EXPR already handles on its own - see the report)
struct syntax* parseStmntAssert(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_ASSERT);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* val = parseExpr(sc);
    if (!val) { TokenSetCursor(sc->tc, cur); return NULL; }
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_ASSERT);
    addTok(s, kw);
    addSntx(s, val);
    return s;
}

//"error TYPE.word" (same-module) or "error alias...TYPE.word" (cross-module, through an alias chain of
//any length, originating a foreign module's own error type directly - see the report) - always ends in
//exactly "TYPE.word" (never a bare type alone), so every identifier before the last two is unambiguously
//an alias hop, unlike a catch clause's own "TYPE.word"/"alias.TYPE" ambiguity. A bare "error", with no
//operand at all, is the bare error (see the report) - a separate, simpler shape entirely, so it's
//tried first, before committing to the ordinary TYPE.word grammar below.
struct syntax* parseStmntError(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_ERROR);
    if (kw.type == TOK_NONE) return NULL;
    struct token first = acceptTok(sc, TOK_IDEN);
    if (first.type == TOK_NONE) {
        struct syntax* bare = newNode(SNTX_STMNT_ERROR);
        addTok(bare, kw);
        if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
        return bare;
    }
    struct token dot1 = acceptTok(sc, TOK_DOT);
    if (dot1.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token second = acceptTok(sc, TOK_IDEN);
    if (second.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_ERROR);
    addTok(s, kw);
    addTok(s, first);
    addTok(s, dot1);
    addTok(s, second);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token dot = TokenFeed(sc->tc);
        if (dot.type != TOK_DOT) { TokenSetCursor(sc->tc, before); break; }
        struct token next = TokenFeed(sc->tc);
        if (next.type != TOK_IDEN) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, dot);
        addTok(s, next);
    }
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    return s;
}

//"IDEN (DOT IDEN)*" - an alias chain of any length, then either a whole TYPE or a TYPE.word; which
//trailing shape it is (and where the alias chain actually ends) gets disambiguated later, in semantic
//analysis (resolveCatchAliasChain - an import alias and an error type live in different namespaces, see
//the report), not here - this grammar rule just commits to any dotted chain unconditionally.
struct syntax* parseCatchErr(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    //the bare error (see the report) - bare "error", never followed by ".word" (it has no addressable
    //word of its own), so this commits without looking for a trailing dot at all, unlike the ordinary
    //IDEN-chain shape below
    struct token first = acceptTok(sc, TOK_IDEN);
    if (first.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_CATCH_ERR);
    addTok(s, first);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token dot = TokenFeed(sc->tc);
        if (dot.type != TOK_DOT) { TokenSetCursor(sc->tc, before); break; }
        struct token iden = TokenFeed(sc->tc);
        if (iden.type != TOK_IDEN) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, dot);
        addTok(s, iden);
    }
    (void)cur;
    return s;
}

//"+" joins entries here, not "||" - a catch clause is matching against a *set* of error types/words, the
//same thing "+" already means combining in a function signature's error list ("ErrA + ErrB ? T"); "||"
//would misleadingly read as a boolean-OR condition rather than "these belong to one combined set" (it
//never actually produces a new set value the way this reads, per the report - kept only as the general
//boolean-OR expression operator elsewhere in the language, unrelated to this).
struct syntax* parseCatchErrList(SyntaxCtx sc) {
    struct syntax* first = parseCatchErr(sc);
    if (!first) return NULL;
    struct syntax* s = newNode(SNTX_CATCH_ERR_LIST);
    addSntx(s, first);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token sepTok = TokenFeed(sc->tc);
        if (sepTok.type != TOK_ADD) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* e = parseCatchErr(sc);
        if (!e) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, sepTok);
        addSntx(s, e);
    }
    return s;
}

struct syntax* parseExprUnary(SyntaxCtx sc);

//R9b: "catch [items] [block] [default d {, d}]" - no items catches every error an earlier clause did not; at
//least one of the block and the default is written. Several defaults (one per result of a call returning
//several) are read only when listOk, i.e. where the try is the whole value of a destructuring or a return.
struct syntax* parseCatchClause(SyntaxCtx sc, bool listOk) {
    int cur = TokenGetCursor(sc->tc);
    //a clause may begin on a following line: no statement starts with "catch", so line ends in front of one
    //can only mean the clause continues this try
    while (acceptTok(sc, TOK_STMNT_END).type != TOK_NONE) {}
    struct token kw = acceptTok(sc, TOK_CATCH);
    if (kw.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_CATCH_CLAUSE);
    addTok(s, kw);
    struct syntax* errs = parseCatchErrList(sc);
    if (errs) addSntx(s, errs);
    struct syntax* block = parseBlock(sc);
    if (block) addSntx(s, block);
    struct token dkw = acceptTok(sc, TOK_DEFAULT);
    if (dkw.type != TOK_NONE) {
        addTok(s, dkw);
        do {
            struct syntax* d = parseExprUnary(sc);
            if (!d) { TokenSetCursor(sc->tc, cur); return NULL; }
            addSntx(s, d);
        } while (listOk && acceptTok(sc, TOK_COMMA).type != TOK_NONE);
    }
    if (!block && dkw.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    return s;
}

//"try f()" alone propagates (see parseExprTry, a general expression); this is the catch-handling
//statement form - control flow only, the caught error is never exposed as a value
struct syntax* parseStmntTryCatch(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_TRY);
    if (kw.type == TOK_NONE) return NULL;
    //postfix, for the same reason parseExprTry takes one: a slice is a postfix on a primary (E16c)
    struct syntax* primary = parseExprPostfix(sc);
    if (!primary) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* clause = parseCatchClause(sc, false);
    if (!clause) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_STMNT_TRY_CATCH);
    addTok(s, kw);
    addSntx(s, primary);
    do addSntx(s, clause); while ((clause = parseCatchClause(sc, false))); //R9b: clauses, tried in order
    return s;
}

//wrapped in a genuine SNTX_STMNT node - buildBlock finds statements by searching for that exact type
//(allPartsOfType(blockNode, SNTX_STMNT)), and buildStatement then unwraps part[0] itself - same reasoning
//as parseTopDecl's own wrapper
//D8c: "t1, t2 [, ...] := expr" or "t1, t2 [, ...] = expr" - each target a postfix expression (an lvalue
//for "=", a name for ":="), "_" discarding that result. Two targets at least, or it is an ordinary
//declaration or assignment.
struct syntax* parseStmntDestruct(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct syntax* s = newNode(SNTX_STMNT_DESTRUCT);
    int n = 0;
    do {
        //S8b: a target that is a bare name may be a new local
        int at = TokenGetCursor(sc->tc);
        struct token first = TokenFeed(sc->tc);
        TokenSetCursor(sc->tc, at);
        if (first.type == TOK_IDEN) ListAdd(&sc->localNames, &first.str);
        struct syntax* t = parseExprPostfix(sc);
        if (!t) { TokenSetCursor(sc->tc, cur); return NULL; }
        addSntx(s, t);
        n++;
    } while (acceptTok(sc, TOK_COMMA).type != TOK_NONE);
    if (n < 2) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct token op = acceptTok(sc, TOK_ASS_INFER);
    if (op.type == TOK_NONE) op = acceptTok(sc, TOK_ASS);
    if (op.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    addTok(s, op);
    sc->defaultListAt = TokenGetCursor(sc->tc);
    struct syntax* rhs = parseExpr(sc);
    sc->defaultListAt = -1;
    if (!rhs) { TokenSetCursor(sc->tc, cur); return NULL; }
    addSntx(s, rhs);
    if (!acceptStmntEnd(sc)) { TokenSetCursor(sc->tc, cur); return NULL; }
    return s;
}

struct syntax* parseStmnt(SyntaxCtx sc) {
    struct syntax* inner;
    if ((inner = parseStmntDestruct(sc))) {}
    else if ((inner = parseVarDecl(sc))) {}
    else if ((inner = parseStmntAssign(sc))) {}
    else if ((inner = parseStmntIf(sc))) {}
    else if ((inner = parseStmntFor(sc))) {}
    else if ((inner = parseStmntDo(sc))) {}
    else if ((inner = parseStmntMatch(sc))) {}
    else if ((inner = parseStmntRet(sc))) {}
    else if ((inner = parseStmntJoin(sc))) {}
    else if ((inner = parseStmntSpawn(sc))) {}
    else if ((inner = parseStmntBreak(sc))) {}
    else if ((inner = parseStmntContinue(sc))) {}
    else if ((inner = parseStmntAbort(sc))) {}
    else if ((inner = parseStmntUnreachable(sc))) {}
    else if ((inner = parseStmntDone(sc))) {}
    else if ((inner = parseStmntFail(sc))) {}
    else if ((inner = parseStmntAssert(sc))) {}
    else if ((inner = parseStmntError(sc))) {}
    else if ((inner = parseStmntTryCatch(sc))) {}
    else if ((inner = parseStmntExpr(sc))) {}
    else return NULL;
    struct syntax* s = newNode(SNTX_STMNT);
    addSntx(s, inner);
    return s;
}

struct syntax* parseBlock(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token open = acceptTok(sc, TOK_CURLY_O);
    if (open.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_BLOCK);
    addTok(s, open);
    sc->blockDepth++;
    while (true) {
        struct syntax* stmt = parseStmnt(sc);
        if (!stmt) break;
        addSntx(s, stmt);
    }
    sc->blockDepth--;
    struct token close = acceptTok(sc, TOK_CURLY_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    addTok(s, close);
    return s;
}

// ---- expressions ----

//"(EXPR (COMMA EXPR)*)?" - always succeeds (possibly with zero args)
//one argument: an ordinary expression, or the bare "default" keyword (E14a). The keyword is wrapped in a
//SNTX_EXPR so it occupies an argument slot positionally like any other - the whole point, since it stands
//in for one particular parameter - while being reachable ONLY from here, so it can never turn up inside a
//larger expression
struct syntax* parseExprArg(SyntaxCtx sc) {
    int before = TokenGetCursor(sc->tc);
    struct token kw = TokenFeed(sc->tc);
    if (kw.type == TOK_DEFAULT) {
        struct syntax* d = newNode(SNTX_EXPR_DEFAULT);
        addTok(d, kw);
        struct syntax* e = newNode(SNTX_EXPR);
        addSntx(e, d);
        return e;
    }
    TokenSetCursor(sc->tc, before);
    return parseExpr(sc);
}

struct syntax* parseExprArgs(SyntaxCtx sc) {
    struct syntax* s = newNode(SNTX_EXPR_ARGS);
    struct syntax* first = parseExprArg(sc);
    if (!first) return s;
    addSntx(s, first);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token comma = TokenFeed(sc->tc);
        if (comma.type != TOK_COMMA) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* e = parseExprArg(sc);
        if (!e) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, comma);
        addSntx(s, e);
    }
    return s;
}

//E25: "&s" written between a call target's name and its "(", as in "makeVec&a()" or "Vec<int32>&a(4)".
//Adjacency is the whole disambiguator: "f&a(x)" and "f & a(x)" tokenize identically, and the second is a
//legal bitwise-and expression, so the "&" must physically touch the name and the IDEN must touch the "&"
//- checked on the source pointers, since every real token points into the one source buffer.
struct syntax* parseScopeMarkerRun(SyntaxCtx sc, enum syntaxType nodeType) {
    int cur = TokenGetCursor(sc->tc);
    struct token prev = prevTok(sc);
    struct token amp = TokenFeed(sc->tc);
    if (amp.type != TOK_BTWSE_AND || amp.str.ptr != prev.str.ptr + prev.str.len) {
        TokenSetCursor(sc->tc, cur);
        return NULL;
    }
    struct token name = TokenFeed(sc->tc);
    if ((name.type != TOK_IDEN && name.type != TOK_RET) || name.str.ptr != amp.str.ptr + amp.str.len) {
        TokenSetCursor(sc->tc, cur);
        return NULL;
    }
    struct syntax* s = newNode(nodeType);
    addTok(s, amp);
    addTok(s, name);
    return s;
}

struct syntax* parseScopeArg(SyntaxCtx sc) { return parseScopeMarkerRun(sc, SNTX_SCOPE_ARG); }

//O3: "func f&b(...)" / "type T&s struct(...)" - declares a scope variable for the one case appearance
//alone cannot cover: a scope the signature's own types never mention, used only inside the body. Adjacent
//to the name, same rule as a call's scope argument and for the same reason.
//O3b: at most ONE. Two adjacent markers were the only construct in the language where "&x&y" meant a
//list rather than the double reference T24 forbids everywhere else, and that collision is not worth what
//it bought: a signature needing two scope variables that no argument determines is a signature that
//should take a reference instead, which determines one of them (O17). Keeping the list also kept the
//"own" keyword alive, whose sole purpose was filling a positional slot - with one slot there is nothing
//to fill, since O18 already reads an omitted scope as the caller's own.
struct list parseScopeDecls(SyntaxCtx sc) {
    struct list decls = ListInit(sizeof(struct syntax*));
    struct syntax* d = parseScopeMarkerRun(sc, SNTX_SCOPE_DECL);
    if (d) ListAdd(&decls, &d);
    return decls;
}

struct syntax* parseExprCall(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token open = acceptTok(sc, TOK_PAREN_O);
    if (open.type == TOK_NONE) return NULL;
    struct syntax* args = parseExprArgs(sc);
    struct token close = acceptTok(sc, TOK_PAREN_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_EXPR_CALL);
    addTok(s, open);
    addSntx(s, args);
    addTok(s, close);
    return s;
}

struct syntax* parseExprUnary(SyntaxCtx sc);
struct syntax* parseCatchClause(SyntaxCtx sc, bool listOk);
struct syntax* parseExprTry(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_TRY);
    if (kw.type == TOK_NONE) return NULL;
    //a POSTFIX expression, not just a primary: a call is parsed inside the primary, but a slice
    //("try buf[2:n]", E16c) is a postfix on one, and with only the primary consumed here the "[...]" was
    //left to attach OUTSIDE the try - so the try saw a bare variable and rejected it.
    struct syntax* operand = parseExprPostfix(sc);
    if (!operand) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_EXPR_TRY);
    addTok(s, kw);
    addSntx(s, operand);
    //R9a: a default is a UNARY expression, binding as tightly as the try itself (a primary), so
    //"try f() catch default 0 == 3" compares the result; a compound default is parenthesized. Several are
    //taken only where the try is the whole value of a destructuring or a return (defaultListAt).
    bool listOk = cur == sc->defaultListAt;
    //R9b: "try X catch ... [catch ...]" - clauses in value position, each ending by leaving or with a
    //default of its own. A default written straight after the operand was R9a's catch-everything shorthand,
    //now spelled "catch default d"; it is still parsed so the checker can name the replacement.
    struct token dkw = acceptTok(sc, TOK_DEFAULT);
    if (dkw.type != TOK_NONE) {
        addTok(s, dkw);
        do {
            struct syntax* d = parseExprUnary(sc);
            if (!d) { TokenSetCursor(sc->tc, cur); return NULL; }
            addSntx(s, d);
        } while (listOk && acceptTok(sc, TOK_COMMA).type != TOK_NONE);
    }
    struct syntax* clause;
    while ((clause = parseCatchClause(sc, listOk))) addSntx(s, clause);
    return s;
}

struct syntax* parseArrLiteralArgs(SyntaxCtx sc);

//"[" ARR_LIT_ARGS "]" - a nested row with no restated type, only ever reachable as one item inside an
//enclosing array literal's own argument list (see parseArrLiteralArgs) - the outer literal states the
//scalar element type once; nesting depth and each level's size come entirely from the bracket structure
//and item counts here, not from any restated type/size on the nested group itself.
struct syntax* parseArrLiteralNestedGroup(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token open = acceptTok(sc, TOK_SQUARE_O);
    if (open.type == TOK_NONE) return NULL;
    struct syntax* args = parseArrLiteralArgs(sc);
    struct token close = acceptTok(sc, TOK_SQUARE_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_ARR_LIT_NESTED);
    addTok(s, open);
    addSntx(s, args);
    addTok(s, close);
    return s;
}

//"(ITEM (COMMA ITEM)*)?" where ITEM is either a nested bracket group (parseArrLiteralNestedGroup, tried
//first) or a plain EXPR - always succeeds, possibly with zero items. Mirrors parseExprArgs exactly, just
//with the one extra alternative per item.
struct syntax* parseArrLiteralArgs(SyntaxCtx sc) {
    struct syntax* s = newNode(SNTX_ARR_LIT_ARGS);
    struct syntax* first = parseArrLiteralNestedGroup(sc);
    if (!first) first = parseExpr(sc);
    if (!first) return s;
    addSntx(s, first);
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token comma = TokenFeed(sc->tc);
        if (comma.type != TOK_COMMA) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* e = parseArrLiteralNestedGroup(sc);
        if (!e) e = parseExpr(sc);
        if (!e) { TokenSetCursor(sc->tc, before); break; }
        addTok(s, comma);
        addSntx(s, e);
    }
    return s;
}

//"NAME [ ARR_LIT_ARGS ]" - array literal. NAME states the base (scalar) element type once; dimensionality
//and each level's size come entirely from the argument list's own bracket nesting and item counts (see
//parseArrLiteralArgs/parseArrLiteralNestedGroup) - no separate "[N]"/"[]" size/length-kind suffix on the
//literal itself any more (that's now decided by whatever the literal is checked against - see the report).
//This also incidentally fixes the old gap where a single-value (or empty) value list was indistinguishable
//from a trailing array suffix and silently swallowed by a suffix loop: there is no more suffix loop here.
//true for one of the fixed set of built-in primitive type names ("int32[1, 2, 3]" needs this gate just as
//much as a struct/choice/error name does - see parseExprPrimary - but primitives were never added to
//declaredTypeNames/isKnownType, which only ever tracked user "type"/"error" declarations). Mirrors the
//exact same name set resolveLiteralBaseType (semantic.c) falls back to for a name isKnownType doesn't
//recognize either. Never alias-qualified - a primitive name is always exactly one identifier.
bool nameIsPrimitiveTypeName(struct syntax* name) {
    if (name->parts.len != 1) return false;
    struct syntaxPart* p0 = ListGetIdx(&name->parts, 0);
    struct str n = p0->tok.str;
    return StrCmp(n, StrFromCStr("Bool")) || StrCmp(n, StrFromCStr("Int32")) || StrCmp(n, StrFromCStr("Int64"))
        || StrCmp(n, StrFromCStr("Byte")) || StrCmp(n, StrFromCStr("Float32")) || StrCmp(n, StrFromCStr("Float64"));
}

//"NAME [ ARR_LIT_ARGS ]" - array literal tail. `name` is already parsed and confirmed by the caller
//(parseExprPrimary) to be a known type or a primitive name before this is ever reached - see the report
//for why that's what makes this safe to commit to hard, the same reasoning choice values
//rely on: without it, "NAME [ ARR_LIT_ARGS ]" is structurally identical to ordinary indexing
//("variable[index]"), since this grammar (unlike the old suffix-then-args shape) is always exactly one
//bracket group - type-name-awareness is now load-bearing here, not just a convenience.
struct syntax* parseArrayLiteralTail(SyntaxCtx sc, struct syntax* name, struct token open) {
    struct syntax* args = parseArrLiteralArgs(sc);
    struct token close = acceptTok(sc, TOK_SQUARE_C);
    if (close.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_EXPR_LITERAL);
    addSntx(s, name);
    addTok(s, open);
    addSntx(s, args);
    addTok(s, close);
    return s;
}

//name->parts is 2N-1 long for N identifiers ("IDEN (DOT IDEN)*" - see parseName): every identifier but the
//last is an alias hop, the last is the type name itself.
bool nameIsKnownType(SyntaxCtx sc, struct syntax* name) {
    if (!sc->isKnownType) return false;
    int nIdens = (name->parts.len +1) /2;
    struct list aliasChain = ListInit(sizeof(struct str));
    for (int i = 0; i < nIdens -1; i++) {
        struct syntaxPart* p = ListGetIdx(&name->parts, i *2);
        struct str a = Str(p->tok.str.ptr, p->tok.str.len);
        ListAdd(&aliasChain, &a);
    }
    struct syntaxPart* pLast = ListGetIdx(&name->parts, (nIdens -1) *2);
    struct str n = Str(pLast->tok.str.ptr, pLast->tok.str.len);
    return sc->isKnownType(sc->typeCtx, aliasChain, n);
}

//true if a qualified name's last-but-one identifier, reached through however many alias hops precede it,
//names a known type - i.e. the name has the shape "[alias.]* Type . word", which is a choice value (M12).
//Everything but the trailing word is asked of isKnownType exactly as nameIsKnownType asks it, so
//"lib.Dir.North" resolves through an import the same way "wk.Base.BasePoint{...}" already does.
//This used to consult only the FIRST identifier with an empty alias chain, so a choice value could never be
//alias-qualified: the restriction predated the chain-walking lookup (added for struct/array literals) and
//was then kept as "by design", which had become circular - it was by design because the parser could not,
//and stayed because it was by design. The ambiguity it avoided is with an ordinary "localVar.field.sub"
//member access, and that is the same ambiguity the local case always had ("Direction.NORTH" vs a variable
//named Direction with a field NORTH); asking whether the qualified name is a known type answers it the
//same way at any depth. Wrong guesses cost nothing: this only decides whether to COMMIT to choice syntax,
//and buildChoiceValueExpr re-checks everything for real, privacy included.
bool trailingWordFollowsKnownType(SyntaxCtx sc, struct syntax* name) {
    if (!sc->isKnownType) return false;
    int nIdens = (name->parts.len +1) /2;
    if (nIdens < 2) return false;
    struct list aliasChain = ListInit(sizeof(struct str));
    for (int i = 0; i < nIdens -2; i++) {
        struct syntaxPart* p = ListGetIdx(&name->parts, i *2);
        struct str a = Str(p->tok.str.ptr, p->tok.str.len);
        ListAdd(&aliasChain, &a);
    }
    struct syntaxPart* pType = ListGetIdx(&name->parts, (nIdens -2) *2);
    struct str n = Str(pType->tok.str.ptr, pType->tok.str.len);
    return sc->isKnownType(sc->typeCtx, aliasChain, n);
}

//"TOK_BOOL_LIT|TOK_NULL_LIT|TOK_INT_LIT|TOK_FLOAT_LIT|TOK_CHAR_LIT|TOK_STR_LIT|EXPR_TRY|
// (NAME EXPR_CALL)|EXPR_LITERAL|TOK_IDEN|(PAREN_O EXPR PAREN_C)"
//"fn ( params ) [ret-type] [? errors] block" in expression position: a lambda (D16)
static struct syntax* parseLambda(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptFnKeyword(sc);
    if (kw.type == TOK_NONE) return NULL;
    bool prev = lambdaParams;
    lambdaParams = true;
    struct syntax* sig = parseFuncSig(sc);
    lambdaParams = prev;
    if (!sig) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* block = parseBlock(sc);
    if (!block) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_LAMBDA);
    addTok(s, kw);
    addSntx(s, sig);
    addSntx(s, block);
    return s;
}

struct syntax* parseExprPrimary(SyntaxCtx sc) {
    struct token t = peekTok(sc);
    switch (t.type) {
        case TOK_FUNC: {
            struct syntax* lam = parseLambda(sc);
            if (!lam) return NULL;
            struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
            addSntx(s, lam);
            return s;
        }
        case TOK_BOOL_LIT: case TOK_NULL_LIT: case TOK_INT_LIT: case TOK_FLOAT_LIT: case TOK_CHAR_LIT:
        case TOK_STR_LIT: {
            struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
            addTok(s, advanceTok(sc));
            return s;
        }
        case TOK_TRY: {
            struct syntax* tryExpr = parseExprTry(sc);
            if (!tryExpr) return NULL;
            struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
            addSntx(s, tryExpr);
            return s;
        }
        case TOK_PAREN_O: {
            int cur = TokenGetCursor(sc->tc);
            struct token open = advanceTok(sc);
            struct syntax* e = parseExpr(sc);
            if (!e) { TokenSetCursor(sc->tc, cur); return NULL; }
            struct token close = acceptTok(sc, TOK_PAREN_C);
            if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
            struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
            addTok(s, open);
            addSntx(s, e);
            addTok(s, close);
            return s;
        }
        case TOK_IDEN: {
            int save = TokenGetCursor(sc->tc);
            struct syntax* name = parseName(sc);
            //a scope argument only ever precedes a "(" - anything else that looked like one was really the
            //binary "&", so put the tokens back and let the ordinary branches below see them
            int afterName = TokenGetCursor(sc->tc);
            struct list scopeArgs = ListInit(sizeof(struct syntax*));
            struct syntax* sa = parseScopeArg(sc); //O3b: at most one
            if (sa) ListAdd(&scopeArgs, &sa);
            if (scopeArgs.len != 0 && peekTok(sc).type != TOK_PAREN_O) {
                TokenSetCursor(sc->tc, afterName);
                scopeArgs.len = 0;
            }
            struct token after = peekTok(sc);
            //T17: "Shape.Circle(3)" is a choice value carrying a payload, not a cross-module call - and
            //the two have the same shape, so the choice test has to come first. It commits only when the
            //name's last-but-one identifier is a genuinely known choice/struct type (the same predicate
            //the payload-free form already used), which "alias.func(args)" never satisfies.
            if (after.type == TOK_PAREN_O && trailingWordFollowsKnownType(sc, name)) {
                struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
                struct syntax* vv = newNode(SNTX_EXPR_CHOICE_VALUE);
                addSntx(vv, name);
                //E25: "Parcel.Held&outer(Crate(3))" - the scope to allocate this payload into, for the
                //case where the payload is a fresh value so no argument determines the tag (O18). Same
                //adjacency-constrained form a constructor call uses, attached here rather than to the
                //enclosing primary so OperandChoiceValue can reach it
                for (int i = 0; i < scopeArgs.len; i++) addSntx(vv, *(struct syntax**)ListGetIdx(&scopeArgs, i));
                struct token argOpen = advanceTok(sc);
                struct syntax* args = parseExprArgs(sc);
                struct token argClose = acceptTok(sc, TOK_PAREN_C);
                if (argClose.type != TOK_NONE) {
                    addTok(vv, argOpen);
                    addSntx(vv, args);
                    addTok(vv, argClose);
                    addSntx(s, vv);
                    return s;
                }
                TokenSetCursor(sc->tc, save);
            }
            if (after.type == TOK_PAREN_O) {
                struct syntax* call = parseExprCall(sc);
                if (call) {
                    struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
                    addSntx(s, name);
                    for (int i = 0; i < scopeArgs.len; i++) addSntx(s, *(struct syntax**)ListGetIdx(&scopeArgs, i));
                    addSntx(s, call);
                    return s;
                }
                TokenSetCursor(sc->tc, save);
            } else if (trailingWordFollowsKnownType(sc, name)) {
                //"Type.WORD" - a choice value (see the report on communicating a fixed set/selection, not
                //a C-enum-style number). Committed the same way struct literals are: "Direction" being a
                //known local type here is never a coincidence worth backtracking out of.
                struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
                struct syntax* vv = newNode(SNTX_EXPR_CHOICE_VALUE);
                addSntx(vv, name);
                //T17: a payload-carrying case is constructed by writing its payload - "Shape.Circle(3)".
                //A bare tag takes no parens at all, exactly as every case did before payloads existed.
                int beforeArgs = TokenGetCursor(sc->tc);
                struct token argOpen = acceptTok(sc, TOK_PAREN_O);
                if (argOpen.type != TOK_NONE) {
                    struct syntax* args = parseExprArgs(sc);
                    struct token argClose = acceptTok(sc, TOK_PAREN_C);
                    if (argClose.type == TOK_NONE) TokenSetCursor(sc->tc, beforeArgs);
                    else { addTok(vv, argOpen); addSntx(vv, args); addTok(vv, argClose); }
                }
                addSntx(s, vv);
                return s;
            } else if ((after.type == TOK_LST || after.type == TOK_BTSFT_L) && nameIsKnownType(sc, name)) {
                //"Pair<int32, int64>{...}" or "Vec<int32>[...]" - a literal of an instantiated generic
                //type. This is the one genuinely ambiguous position for type arguments (a bare "a < b" is
                //a comparison, and inside a call "f(Pair<int32, int64>{1,2})" the commas could be argument
                //separators - the exact C++ ambiguity), so it commits only once the whole "<...>" list has
                //parsed AND a "{" or "[" follows it. Anything else backtracks and leaves "<" as an
                //operator. A generic FUNCTION call needs no such branch: its arguments are inferred (G9)
                //and are never written.
                int save = TokenGetCursor(sc->tc);
                struct syntax* targs = parseTypeArgs(sc);
                if (targs) {
                    int afterArgs = TokenGetCursor(sc->tc);
                    //"Vec<int32>&a(4)" - a scope argument (E25) sits between the type-argument list and
                    //the "(", exactly as it does after a plain name above
                    struct list gScopeArgs = ListInit(sizeof(struct syntax*));
                    struct syntax* gsa = parseScopeArg(sc); //O3b: at most one
                    if (gsa) ListAdd(&gScopeArgs, &gsa);
                    int afterScope = TokenGetCursor(sc->tc);
                    struct token open2 = TokenFeed(sc->tc);
                    if (gScopeArgs.len != 0 && open2.type != TOK_PAREN_O) {
                        TokenSetCursor(sc->tc, afterArgs);
                        gScopeArgs.len = 0;
                        afterScope = afterArgs;
                        open2 = TokenFeed(sc->tc);
                    }
                    if (open2.type == TOK_PAREN_O) {
                        //"Vec<int32>(...)" - a CONSTRUCTOR call on an instantiated generic type. Same
                        //commit rule as the two literal forms below; the type arguments ride on the call
                        //node, where resolveCallTarget picks them up to instantiate the type and reach
                        //that copy's own monomorphized constructor (G10/G16).
                        TokenSetCursor(sc->tc, afterScope); //parseExprCall consumes the "(" itself
                        struct syntax* call = parseExprCall(sc);
                        if (call) {
                            addSntx(call, targs);
                            struct syntax* s2 = newNode(SNTX_EXPR_PRIMARY);
                            addSntx(s2, name);
                            for (int i = 0; i < gScopeArgs.len; i++) addSntx(s2, *(struct syntax**)ListGetIdx(&gScopeArgs, i));
                            addSntx(s2, call);
                            return s2;
                        }
                        recordFurthestError(sc, peekTok(sc), "')'");
                        return NULL;
                    }
                    //"Array<Int32>&[r0, r1]" - an array literal whose element type is a reference to an
                    //instantiated type; the marker is committed only once a "[" follows it
                    struct syntax* litMarker = NULL;
                    if (open2.type == TOK_BTWSE_AND && peekTok(sc).type == TOK_SQUARE_O) {
                        TokenSetCursor(sc->tc, afterScope);
                        litMarker = parseRefMarker(sc, SNTX_ELEM_REF_MARKER);
                        open2 = TokenFeed(sc->tc);
                    }
                    if (open2.type == TOK_SQUARE_O) {
                        struct syntax* lit = parseArrayLiteralTail(sc, name, open2);
                        if (lit) {
                            if (litMarker) addSntx(lit, litMarker);
                            addSntx(lit, targs);
                            struct syntax* s2 = newNode(SNTX_EXPR_PRIMARY);
                            addSntx(s2, lit);
                            return s2;
                        }
                        recordFurthestError(sc, peekTok(sc), "']'");
                        return NULL;
                    }
                }
                TokenSetCursor(sc->tc, save);
            } else if (after.type == TOK_BTWSE_AND && nameIsKnownType(sc, name)) {
                //"Handle&[...]" - an array literal whose ELEMENT type is a reference. Only committed once
                //a "[" is confirmed to follow the marker: a bare "Handle&" in expression position is not a
                //literal at all, and "x & y" must still parse as bitwise-and, so this backtracks cleanly
                //when the marker turns out not to introduce a literal. (No primitive case: a primitive can
                //never carry a reference marker - see INVALID_REFERENCE_TARGET.)
                int save = TokenGetCursor(sc->tc);
                struct syntax* elemMarker = parseRefMarker(sc, SNTX_ELEM_REF_MARKER);
                struct token open = acceptTok(sc, TOK_SQUARE_O);
                if (elemMarker && open.type == TOK_SQUARE_O) {
                    struct syntax* lit = parseArrayLiteralTail(sc, name, open);
                    if (lit) {
                        addSntx(lit, elemMarker);
                        struct syntax* s2 = newNode(SNTX_EXPR_PRIMARY);
                        addSntx(s2, lit);
                        return s2;
                    }
                    recordFurthestError(sc, peekTok(sc), "']'");
                    return NULL;
                }
                TokenSetCursor(sc->tc, save);
            } else if (after.type == TOK_SQUARE_O && (nameIsKnownType(sc, name) || nameIsPrimitiveTypeName(name))) {
                //"NAME [ ... ]" is structurally identical to indexing ("variable[index]") now that array
                //literals no longer restate a size/length-kind suffix before the value list - see
                //parseArrayLiteralTail. Committed the same way struct literals are: name being a known
                //type (or a primitive - never a real variable either) here is never a coincidence.
                struct token open = advanceTok(sc); //consume the "[" now that we're committing
                struct syntax* lit = parseArrayLiteralTail(sc, name, open);
                if (lit) {
                    struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
                    addSntx(s, lit);
                    return s;
                }
                recordFurthestError(sc, peekTok(sc), "']'");
                return NULL;
            }
            TokenSetCursor(sc->tc, save);
            struct token bare = advanceTok(sc);
            struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
            addTok(s, bare);
            return s;
        }
        default:
            recordFurthestError(sc, t, "expression");
            return NULL;
    }
}

//"[" expr "]" (an index) or "[" [expr] ":" [expr] "]" (a slice, E16a). One function because the two are
//indistinguishable until the ":" is reached, or isn't: a slice's lower bound parses exactly as an index
//would. An absent bound is simply an absent SNTX_EXPR child, which the colon token's position tells apart -
//so the node carries the colon to mark itself a slice and each present bound in written order.
struct syntax* parseExprIndex(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token open = acceptTok(sc, TOK_SQUARE_O);
    if (open.type == TOK_NONE) return NULL;
    int beforeLo = TokenGetCursor(sc->tc);
    struct syntax* lo = parseExpr(sc);
    if (!lo) TokenSetCursor(sc->tc, beforeLo);
    struct token colon = acceptTok(sc, TOK_COLON);
    if (colon.type == TOK_NONE) {
        //an ordinary index - its single expression is mandatory
        if (!lo) { TokenSetCursor(sc->tc, cur); return NULL; }
        struct token close = acceptTok(sc, TOK_SQUARE_C);
        if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
        struct syntax* s = newNode(SNTX_EXPR_INDEX);
        addTok(s, open);
        addSntx(s, lo);
        addTok(s, close);
        return s;
    }
    int beforeHi = TokenGetCursor(sc->tc);
    struct syntax* hi = parseExpr(sc);
    if (!hi) TokenSetCursor(sc->tc, beforeHi);
    struct token close = acceptTok(sc, TOK_SQUARE_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_EXPR_SLICE);
    addTok(s, open);
    if (lo) addSntx(s, lo);
    addTok(s, colon);
    if (hi) addSntx(s, hi);
    addTok(s, close);
    return s;
}

struct syntax* parseExprArgs(SyntaxCtx sc);

struct syntax* parseExprMembr(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token dot = acceptTok(sc, TOK_DOT);
    if (dot.type == TOK_NONE) return NULL;
    struct token iden = acceptTok(sc, TOK_IDEN);
    if (iden.type == TOK_NONE) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* s = newNode(SNTX_EXPR_MEMBR);
    addTok(s, dot);
    addTok(s, iden);
    //M19/M19a: a method call whose receiver is not a plain name chain - "arr[i].M()", "f(x).M()". The
    //call form built around an alias-chain name (parseExprPrimary) covers only identifiers, so without
    //this the single most ordinary thing to write about a collection of interface values - call a method
    //on an element - did not parse at all.
    int beforeParen = TokenGetCursor(sc->tc);
    struct token open = acceptTok(sc, TOK_PAREN_O);
    if (open.type == TOK_NONE) return s;
    struct syntax* args = parseExprArgs(sc);
    struct token close = acceptTok(sc, TOK_PAREN_C);
    if (close.type == TOK_NONE) { TokenSetCursor(sc->tc, beforeParen); return s; }
    addTok(s, open);
    addSntx(s, args);
    addTok(s, close);
    return s;
}

struct syntax* parseExprPostfix(SyntaxCtx sc) {
    struct syntax* primary = parseExprPrimary(sc);
    if (!primary) return NULL;
    struct syntax* s = newNode(SNTX_EXPR_POSTFIX);
    addSntx(s, primary);
    while (true) {
        struct syntax* idx = parseExprIndex(sc);
        if (idx) { addSntx(s, idx); continue; }
        struct syntax* mem = parseExprMembr(sc);
        if (mem) { addSntx(s, mem); continue; }
        //E13b: "(args)" calls whatever the chain has built - "id(dbl)(3)", "fs[i](x)". A line end before
        //"(" ends the statement (L18), so a parenthesized expression on the next line is never taken for one
        int beforeCall = TokenGetCursor(sc->tc);
        struct token open = acceptTok(sc, TOK_PAREN_O);
        if (open.type != TOK_NONE) {
            struct syntax* args = parseExprArgs(sc);
            struct token close = acceptTok(sc, TOK_PAREN_C);
            if (args && close.type != TOK_NONE) {
                struct syntax* call = newNode(SNTX_EXPR_VALUE_CALL);
                addTok(call, open);
                addSntx(call, args);
                addTok(call, close);
                addSntx(s, call);
                continue;
            }
            TokenSetCursor(sc->tc, beforeCall);
        }
        int before = TokenGetCursor(sc->tc);
        struct token t = TokenFeed(sc->tc);
        if (t.type == TOK_INC || t.type == TOK_DEC) { addTok(s, t); continue; }
        TokenSetCursor(sc->tc, before);
        break;
    }
    return s;
}

bool isUnaryOpTok(enum tokenType t) {
    return t == TOK_SUB || t == TOK_BTWSE_INV || t == TOK_INC || t == TOK_DEC
            || t == TOK_STR_OF; //E11a
}

static struct syntax* parseExprUnaryOne(SyntaxCtx sc);

//E11b: the STR_LIT token a unary node consists of, when it is nothing but a bare string literal
static struct syntaxPart* bareStrLit(struct syntax* u) {
    if (u->type != SNTX_EXPR_UNARY || u->parts.len != 1) return NULL;
    struct syntaxPart* p = ListGetIdx(&u->parts, 0);
    if (p->isToken || p->sntx->type != SNTX_EXPR_POSTFIX || p->sntx->parts.len != 1) return NULL;
    p = ListGetIdx(&p->sntx->parts, 0);
    if (p->isToken || p->sntx->type != SNTX_EXPR_PRIMARY || p->sntx->parts.len != 1) return NULL;
    p = ListGetIdx(&p->sntx->parts, 0);
    return (p->isToken && p->tok.type == TOK_STR_LIT) ? p : NULL;
}

//E11b: a text piece is a bare string literal or a "$" rendering
static bool isTextPiece(struct syntax* u) {
    if (bareStrLit(u)) return true;
    if (u->type != SNTX_EXPR_UNARY || u->parts.len < 2) return false;
    struct syntaxPart* p = ListGetIdx(&u->parts, 0);
    return !p->isToken && p->sntx->type == SNTX_EXPR_UNARY_OP
            && ((struct syntaxPart*)ListGetIdx(&p->sntx->parts, 0))->tok.type == TOK_STR_OF;
}

//E11b: "a" "b" - two literals side by side are ONE literal, joined here. Their raw text (escapes still
//undecoded) is concatenated between one pair of quotes, which decodes exactly as the two did apart
static void joinStrLit(struct syntaxPart* into, struct token next) {
    struct token a = into->tok;
    int n = a.str.len - 2 + next.str.len - 2;
    char* buf = MallocOrCrash((size_t)n + 3);
    buf[0] = '"';
    memcpy(buf + 1, a.str.ptr + 1, (size_t)a.str.len - 2);
    memcpy(buf + 1 + a.str.len - 2, next.str.ptr + 1, (size_t)next.str.len - 2);
    buf[n + 1] = '"';
    buf[n + 2] = '\0';
    into->tok.str = Str(buf, n + 2);
}

//E11b: "text-piece text-piece { text-piece }" - adjacency joins text. Literals next to each other are
//joined into one literal here; anything else becomes a TEXT node the checker lowers to one run-time
//concatenation. A single piece is just itself.
struct syntax* parseExprUnary(SyntaxCtx sc) {
    struct syntax* first = parseExprUnaryOne(sc);
    if (!first || !isTextPiece(first)) return first;
    struct list pieces = ListInit(sizeof(struct syntax*));
    ListAdd(&pieces, &first);
    while (true) {
        struct token t = peekTok(sc);
        if (t.type != TOK_STR_LIT && t.type != TOK_STR_OF) break;
        int before = TokenGetCursor(sc->tc);
        struct syntax* next = parseExprUnaryOne(sc);
        if (!next || !isTextPiece(next)) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* last = *(struct syntax**)ListGetIdx(&pieces, pieces.len - 1);
        struct syntaxPart* lastLit = bareStrLit(last);
        struct syntaxPart* nextLit = bareStrLit(next);
        if (lastLit && nextLit) { joinStrLit(lastLit, nextLit->tok); continue; }
        ListAdd(&pieces, &next);
    }
    if (pieces.len == 1) return first;
    struct syntax* s = newNode(SNTX_EXPR_TEXT);
    for (int i = 0; i < pieces.len; i++) addSntx(s, *(struct syntax**)ListGetIdx(&pieces, i));
    return s;
}

static struct syntax* parseExprUnaryOne(SyntaxCtx sc) {
    struct list ops = ListInit(sizeof(struct token));
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token t = TokenFeed(sc->tc);
        if (!isUnaryOpTok(t.type)) { TokenSetCursor(sc->tc, before); break; }
        ListAdd(&ops, &t);
    }
    struct syntax* postfix = parseExprPostfix(sc);
    if (!postfix) return NULL; //note: any consumed unary-op tokens are simply not attached to anything;
                                //a real prefix-op-with-no-operand is always a hard error further up anyway
    struct syntax* s = newNode(SNTX_EXPR_UNARY);
    for (int i = 0; i < ops.len; i++) {
        struct token* opTok = ListGetIdx(&ops, i);
        struct syntax* opNode = newNode(SNTX_EXPR_UNARY_OP);
        addTok(opNode, *opTok);
        addSntx(s, opNode);
    }
    addSntx(s, postfix);
    return s;
}

//standard precedence-climbing, replacing the old 11-rule grammar chain (SNTX_EXPR_MUL..SNTX_EXPR_OR) with
//one table + one function - see the report. Precedence numbers below match that chain's nesting exactly
//(1 = loosest/"||", 11 = tightest/"* / %"); every olang binary operator is left-associative, so ties
//always recurse at prec+1.
int binOpPrecedence(enum tokenType t) {
    switch (t) {
        case TOK_OR: return 1;
        case TOK_XOR: return 2;
        case TOK_AND: return 3;
        case TOK_BTWSE_OR: return 4;
        case TOK_BTWSE_XOR: return 5;
        case TOK_BTWSE_AND: return 6;
        case TOK_EQ: case TOK_NEQ: return 7;
        case TOK_LST: case TOK_LSE: case TOK_GRT: case TOK_GRE: return 8;
        case TOK_BTSFT_L: case TOK_BTSFT_R: return 9;
        case TOK_ADD: case TOK_SUB: return 10;
        case TOK_MUL: case TOK_DIV: case TOK_MOD: return 11;
        default: return 0; //not a binary operator
    }
}

//E7a: "not" binds looser than every comparison and bitwise operator and tighter than "and"/"or", the way
//it reads: "not a == b" is "not (a == b)". Its operand is therefore a whole expression at the level just
//above "and", and it builds the ordinary unary node with that expression as its operand.
#define NOT_OPERAND_PREC 4
struct syntax* parseBinaryExpr(SyntaxCtx sc, int minPrec);
static struct syntax* parseNotOrUnary(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token t = TokenFeed(sc->tc);
    if (t.type != TOK_NOT) { TokenSetCursor(sc->tc, cur); return parseExprUnary(sc); }
    struct syntax* operand = parseBinaryExpr(sc, NOT_OPERAND_PREC);
    if (!operand) { TokenSetCursor(sc->tc, cur); return NULL; }
    struct syntax* opNode = newNode(SNTX_EXPR_UNARY_OP);
    addTok(opNode, t);
    struct syntax* s = newNode(SNTX_EXPR_UNARY);
    addSntx(s, opNode);
    addSntx(s, operand);
    return s;
}

struct syntax* parseBinaryExpr(SyntaxCtx sc, int minPrec) {
    struct syntax* left = parseNotOrUnary(sc);
    if (!left) return NULL;
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token opTok = TokenFeed(sc->tc);
        int prec = binOpPrecedence(opTok.type);
        if (prec == 0 || prec < minPrec) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* right = parseBinaryExpr(sc, prec + 1); //left-assoc: recurse tighter, not equal
        if (!right) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* bin = newNode(SNTX_EXPR_BINARY);
        addSntx(bin, left);
        addTok(bin, opTok);
        addSntx(bin, right);
        left = bin;
    }
    return left;
}

struct syntax* parseExpr(SyntaxCtx sc) {
    struct syntax* inner = parseBinaryExpr(sc, 1);
    if (!inner) return NULL;
    struct syntax* s = newNode(SNTX_EXPR);
    addSntx(s, inner);
    return s;
}

// ---- top level ----

//wrapped in a genuine SNTX_TOP_DECL node (rather than just returning the matched alternative directly) -
//semantic.c's module-walking passes all expect one part[0] to unwrap, the same shape the old table-driven
//engine always produced for every rule (even a pure alternation still got its own wrapper node)
struct syntax* parseTopDecl(SyntaxCtx sc) {
    struct syntax* inner;
    if ((inner = parseTypeDecl(sc))) {}
    else if ((inner = parseImport(sc))) {}
    else if ((inner = parseErrorDecl(sc))) {}
    else if ((inner = parseExternFuncDecl(sc))) {}
    else if ((inner = parseFuncDef(sc))) {}
    else if ((inner = parseVarDecl(sc))) {}
    else if ((inner = parseTestDecl(sc))) {}
    else return NULL;
    struct syntax* s = newNode(SNTX_TOP_DECL);
    addSntx(s, inner);
    return s;
}

//derives an import's own alias from its path when none is given explicitly ("import "Math"" instead of
//"import m "Math"", M4): the last path element, so "some/dir/Math" becomes "Math" (a trailing ".olang" is
//stripped too, though an import written with one is rejected - M23). Doesn't validate the
//result is a legal identifier shape (a filename with a hyphen, or starting with a digit, isn't) - see
//isValidAliasShape, checked once real semantic analysis has a token to anchor the error to.
struct str deriveImportAlias(struct str path) {
    int start = 0;
    for (int i = 0; i < path.len; i++) {
        if (path.ptr[i] == '/') start = i +1;
    }
    int end = path.len;
    struct str suffix = StrFromCStr(".olang");
    if (end - start >= suffix.len && !strncmp(path.ptr + end - suffix.len, suffix.ptr, suffix.len)) {
        end -= suffix.len;
    }
    if (end < start) end = start;
    return Str(path.ptr + start, end - start);
}

//true if alias has the shape of a real identifier (letter/underscore, then letters/digits/underscores) -
//the same rule the tokenizer's own identifier rule enforces. An EXPLICIT alias is always already valid
//(it came from a real TOK_IDEN); this only ever matters for a DERIVED one, since an arbitrary filename
//isn't guaranteed to be one (a leading digit, a hyphen, ...) - such a file needs an explicit alias instead.
bool isValidAliasShape(struct str alias) {
    if (alias.len == 0) return false;
    if (!isLetter(alias.ptr[0]) && alias.ptr[0] != '_') return false;
    for (int i = 1; i < alias.len; i++) {
        char c = alias.ptr[i];
        if (!isLetter(c) && !isDigit(c) && c != '_') return false;
    }
    return true;
}

// ---- declaration scan (see syntax.h) ----

// ---- B9/B10: build constants and top-level conditions ----
//
//A top-level "if" is conditional compilation: nothing runs at the top level, so it can only mean "these
//declarations or those". Which ones exist has to be settled before any type is resolved - the pre-scan
//below needs it to know the module's type names and imports - so a condition is evaluated right here, on
//tokens, and may use only literals and build constants, whose values are known before parsing starts.

static struct list buildConsts;
static bool buildConstsReady;

static void buildConstsInit(void) {
    if (!buildConstsReady) { buildConsts = ListInit(sizeof(struct buildConst)); buildConstsReady = true; }
}

struct list* SyntaxBuildConsts(void) { buildConstsInit(); return &buildConsts; }
void SyntaxResetBuildConsts(void) { buildConstsReady = false; buildConstsInit(); }

long long parseIntLiteralText(char* buf); //semantic.c - the one reading of an integer literal (L10)

static bool isIdentText(const char* p) {
    if (!*p || !((*p >= 'a' && *p <= 'z') || (*p >= 'A' && *p <= 'Z') || *p == '_')) return false;
    for (; *p; p++) if (!((*p >= 'a' && *p <= 'z') || (*p >= 'A' && *p <= 'Z') || (*p >= '0' && *p <= '9') || *p == '_')) return false;
    return true;
}

//"true"/"false" is a bool; text shaped as an integer or float literal (L10/L12, separators and a leading
//"-" allowed) is that number; anything else, or anything in double quotes, is text
bool SyntaxDefineBuildConst(char* name, char* value, bool builtin) {
    buildConstsInit();
    if (!isIdentText(name) || !strcmp(name, "_")) return false;
    for (int i = 0; i < buildConsts.len; i++) {
        struct buildConst* b = ListGetIdx(&buildConsts, i);
        if ((int)strlen(name) == b->name.len && !strncmp(name, b->name.ptr, (size_t)b->name.len)) return false;
    }
    struct buildConst b = (struct buildConst){0};
    b.name = StrFromCStr(name);
    b.builtin = builtin;
    size_t vl = strlen(value);
    char* clean = MallocOrCrash(vl + 1);
    size_t w = 0;
    for (size_t r = 0; r < vl; r++) if (value[r] != '_') clean[w++] = value[r];
    clean[w] = '\0';
    char* digits = clean[0] == '-' ? clean + 1 : clean;
    bool isInt = digits[0] >= '0' && digits[0] <= '9', isFloat = false;
    if (isInt) {
        bool hex = digits[0] == '0' && (digits[1] == 'x' || digits[1] == 'X');
        bool bin = digits[0] == '0' && (digits[1] == 'b' || digits[1] == 'B');
        for (char* c = digits + ((hex || bin) ? 2 : 0); *c; c++) {
            bool ok = hex ? ((*c >= '0' && *c <= '9') || (*c >= 'a' && *c <= 'f') || (*c >= 'A' && *c <= 'F'))
                    : bin ? (*c == '0' || *c == '1') : (*c >= '0' && *c <= '9');
            if (!ok) { isInt = false; break; }
        }
        if (!isInt && !hex && !bin) {
            char* end = NULL;
            strtod(clean, &end);
            isFloat = end && *end == '\0' && (strchr(digits, '.') || strchr(digits, 'e') || strchr(digits, 'E'));
        }
    }
    if (!strcmp(value, "true") || !strcmp(value, "false")) {
        b.kind = BUILD_BOOL;
        b.i = !strcmp(value, "true");
    } else if (isInt) {
        b.kind = BUILD_INT;
        b.text = StrFromCStr(clean);
        char* tmp = MallocOrCrash(strlen(digits) + 1);
        strcpy(tmp, digits);
        b.i = parseIntLiteralText(tmp);
        if (clean[0] == '-') b.i = -b.i;
    } else if (isFloat) {
        b.kind = BUILD_FLOAT;
        b.text = StrFromCStr(clean);
        b.f = strtod(clean, NULL);
    } else {
        b.kind = BUILD_STR;
        if (vl >= 2 && value[0] == '"' && value[vl - 1] == '"') {
            char* t = MallocOrCrash(vl);
            memcpy(t, value + 1, vl - 2);
            t[vl - 2] = '\0';
            b.text = StrFromCStr(t);
        } else {
            b.text = StrFromCStr(value);
        }
    }
    ListAdd(&buildConsts, &b);
    return true;
}

struct condVal {
    enum buildConstKind kind;
    long long i;
    double f;
    struct str s;
};

struct condCtx {
    TokenCtx tc;
    bool failed;
    struct token errTok;
    char* err;
    int depth; //globals evaluated through other globals, to stop a cycle
    bool deferrable; //B9c: it failed on something compile-time evaluation can still decide - a call, or a
                     //global computed by one - rather than on something wrong
    struct list* locals; //S8b: names that are locals here, which no global or build constant can stand for
    bool usedBuild;      //S8a/S8b: it read a build constant, directly or through a global
};

//B9c: conditions decided by compile-time evaluation in an earlier attempt at this compilation, and the ones
//this attempt met undecided. Keyed by file and the token position just after "if", which re-tokenizing the
//same source reproduces exactly.
static struct list condDecisions;
static struct list condPending;
static bool condTablesReady;

static void condTablesInit(void) {
    if (condTablesReady) return;
    condDecisions = ListInit(sizeof(struct condDecision));
    condPending = ListInit(sizeof(struct pendingCond));
    condTablesReady = true;
}

void SyntaxResetConditionDecisions(void) {
    condTablesReady = false;
    condTablesInit();
}

void SyntaxDecideCondition(struct str file, int at, bool value, char* err) {
    condTablesInit();
    struct condDecision d = { file, at, value, err, err ? COND_ERROR : COND_VALUE };
    ListAdd(&condDecisions, &d);
}

void SyntaxDecideLocalCondition(struct str file, int at, enum condDecisionKind kind, bool value) {
    condTablesInit();
    struct condDecision d = { file, at, value, NULL, kind };
    ListAdd(&condDecisions, &d);
}

struct list* SyntaxPendingConditions(void) { condTablesInit(); return &condPending; }
void SyntaxClearPendingConditions(void) { condTablesInit(); condPending = ListInit(sizeof(struct pendingCond)); }

static struct condDecision* condDecisionFor(TokenCtx tc, int at) {
    condTablesInit();
    struct str file = TokenGetFileName(tc);
    for (int i = 0; i < condDecisions.len; i++) {
        struct condDecision* d = ListGetIdx(&condDecisions, i);
        if (d->at == at && StrCmp(d->file, file)) return d;
    }
    return NULL;
}

//B9b: the token stream of the module being loaded - its one file (M1) - where a condition may find
//an immutable global. Set by the loader before it scans or parses the module.
static struct list condFiles;
static bool condFilesReady;
void SyntaxSetConditionFiles(struct list* tcs) {
    condFiles = ListInit(sizeof(TokenCtx));
    for (int i = 0; i < tcs->len; i++) ListAdd(&condFiles, ListGetIdx(tcs, i));
    condFilesReady = true;
}

static struct condVal condOr(struct condCtx* c);
static struct condVal condGlobal(struct condCtx* c, struct token name);

static void condFail(struct condCtx* c, struct token t, char* msg) {
    if (c->failed) return;
    c->failed = true;
    c->errTok = t;
    c->err = msg;
}

static struct token condPeek(struct condCtx* c) {
    int cur = TokenGetCursor(c->tc);
    struct token t = TokenFeed(c->tc);
    TokenSetCursor(c->tc, cur);
    return t;
}

static struct condVal condOr(struct condCtx* c);

//a string literal's text, escapes decoded - what a text build constant is compared against
static struct str condDecodeStr(struct token t) {
    char* out = MallocOrCrash((size_t)t.str.len + 1);
    int n = 0;
    for (int i = 1; i < t.str.len - 1; i++) {
        char ch = t.str.ptr[i];
        if (ch == '\\' && i + 1 < t.str.len - 1) {
            char e = t.str.ptr[++i];
            ch = e == 'n' ? '\n' : e == 't' ? '\t' : e == 'r' ? '\r' : e == '0' ? '\0' : e;
        }
        out[n++] = ch;
    }
    return Str(out, n);
}

static struct condVal condPrimary(struct condCtx* c) {
    struct condVal v = (struct condVal){0};
    struct token t = TokenFeed(c->tc);
    char buf[128];
    switch (t.type) {
        case TOK_BOOL_LIT:
            v.kind = BUILD_BOOL;
            v.i = t.str.len == 4 && !strncmp(t.str.ptr, "true", 4);
            return v;
        case TOK_INT_LIT:
            snprintf(buf, sizeof(buf), "%.*s", t.str.len, t.str.ptr);
            v.kind = BUILD_INT;
            v.i = parseIntLiteralText(buf);
            return v;
        case TOK_FLOAT_LIT: {
            int w = 0;
            for (int i = 0; i < t.str.len && w < 127; i++) if (t.str.ptr[i] != '_') buf[w++] = t.str.ptr[i];
            buf[w] = '\0';
            v.kind = BUILD_FLOAT;
            v.f = strtod(buf, NULL);
            return v;
        }
        case TOK_STR_LIT:
            v.kind = BUILD_STR;
            v.s = condDecodeStr(t);
            return v;
        case TOK_IDEN: {
            if (c->locals) {
                for (int i = 0; i < c->locals->len; i++) {
                    struct str* l = ListGetIdx(c->locals, i);
                    if (l->len == t.str.len && !strncmp(l->ptr, t.str.ptr, (size_t)t.str.len)) {
                        condFail(c, t, BUILD_COND_NAME); //a local: known only when the program runs
                        return v;
                    }
                }
            }
            struct list* bcs = SyntaxBuildConsts();
            for (int i = 0; i < bcs->len; i++) {
                struct buildConst* b = ListGetIdx(bcs, i);
                if (b->name.len != t.str.len || strncmp(b->name.ptr, t.str.ptr, (size_t)t.str.len)) continue;
                v.kind = b->kind;
                v.i = b->i;
                v.f = b->f;
                v.s = b->text;
                c->usedBuild = true;
                return v;
            }
            return condGlobal(c, t);
        }
        case TOK_PAREN_O: {
            v = condOr(c);
            struct token close = TokenFeed(c->tc);
            if (close.type != TOK_PAREN_C) condFail(c, close, BUILD_COND_SHAPE);
            return v;
        }
        default:
            condFail(c, t, BUILD_COND_SHAPE);
            return v;
    }
}

static struct condVal condUnary(struct condCtx* c) {
    struct token t = condPeek(c);
    if (t.type == TOK_SUB) {
        TokenFeed(c->tc);
        struct condVal v = condUnary(c);
        if (v.kind == BUILD_INT) {
            v.i = -v.i;
        } else if (v.kind == BUILD_FLOAT) {
            v.f = -v.f;
        } else {
            condFail(c, t, BUILD_COND_TYPES);
        }
        return v;
    }
    return condPrimary(c);
}

static bool condNumeric(struct condVal v) { return v.kind == BUILD_INT || v.kind == BUILD_FLOAT; }
static double condAsF(struct condVal v) { return v.kind == BUILD_FLOAT ? v.f : (double)v.i; }

static struct condVal condArith(struct condCtx* c, struct token op, struct condVal a, struct condVal b) {
    struct condVal r = (struct condVal){0};
    if (!condNumeric(a) || !condNumeric(b)) { condFail(c, op, BUILD_COND_TYPES); return r; }
    if (a.kind == BUILD_INT && b.kind == BUILD_INT) {
        r.kind = BUILD_INT;
        if ((op.type == TOK_DIV || op.type == TOK_MOD) && b.i == 0) { condFail(c, op, BUILD_COND_TYPES); return r; }
        switch (op.type) {
            case TOK_ADD: r.i = a.i + b.i; break;
            case TOK_SUB: r.i = a.i - b.i; break;
            case TOK_MUL: r.i = a.i * b.i; break;
            case TOK_DIV: r.i = a.i / b.i; break;
            default:      r.i = a.i % b.i; break;
        }
        return r;
    }
    if (op.type == TOK_MOD) { condFail(c, op, BUILD_COND_TYPES); return r; }
    r.kind = BUILD_FLOAT;
    double x = condAsF(a), y = condAsF(b);
    r.f = op.type == TOK_ADD ? x + y : op.type == TOK_SUB ? x - y : op.type == TOK_MUL ? x * y : x / y;
    return r;
}

static struct condVal condMul(struct condCtx* c) {
    struct condVal v = condUnary(c);
    while (true) {
        struct token t = condPeek(c);
        if (t.type != TOK_MUL && t.type != TOK_DIV && t.type != TOK_MOD) return v;
        TokenFeed(c->tc);
        v = condArith(c, t, v, condUnary(c));
    }
}

static struct condVal condAdd(struct condCtx* c) {
    struct condVal v = condMul(c);
    while (true) {
        struct token t = condPeek(c);
        if (t.type != TOK_ADD && t.type != TOK_SUB) return v;
        TokenFeed(c->tc);
        v = condArith(c, t, v, condMul(c));
    }
}

//text compares by content (B9): a top-level condition is decided before any type exists, so there is no
//array identity for "==" to mean
static struct condVal condCmp(struct condCtx* c) {
    struct condVal a = condAdd(c);
    struct token t = condPeek(c);
    if (t.type != TOK_EQ && t.type != TOK_NEQ && t.type != TOK_LST && t.type != TOK_LSE
            && t.type != TOK_GRT && t.type != TOK_GRE) return a;
    TokenFeed(c->tc);
    struct condVal b = condAdd(c);
    struct condVal r = (struct condVal){0};
    r.kind = BUILD_BOOL;
    bool eqOp = t.type == TOK_EQ || t.type == TOK_NEQ;
    if (a.kind == BUILD_STR && b.kind == BUILD_STR && eqOp) {
        r.i = a.s.len == b.s.len && !memcmp(a.s.ptr, b.s.ptr, (size_t)a.s.len);
    } else if (a.kind == BUILD_BOOL && b.kind == BUILD_BOOL && eqOp) {
        r.i = a.i == b.i;
    } else if (condNumeric(a) && condNumeric(b)) {
        bool ints = a.kind == BUILD_INT && b.kind == BUILD_INT;
        double x = condAsF(a), y = condAsF(b);
        switch (t.type) {
            case TOK_EQ:  r.i = ints ? a.i == b.i : x == y; break;
            case TOK_NEQ: r.i = ints ? a.i != b.i : x != y; break;
            case TOK_LST: r.i = ints ? a.i < b.i : x < y; break;
            case TOK_LSE: r.i = ints ? a.i <= b.i : x <= y; break;
            case TOK_GRT: r.i = ints ? a.i > b.i : x > y; break;
            default:      r.i = ints ? a.i >= b.i : x >= y; break;
        }
        return r;
    } else {
        condFail(c, t, BUILD_COND_TYPES);
        return r;
    }
    if (t.type == TOK_NEQ) r.i = !r.i;
    return r;
}

//E7a: "not" binds looser than a comparison and tighter than "and", so "not a == b" is "not (a == b)"
static struct condVal condNot(struct condCtx* c) {
    struct token t = condPeek(c);
    if (t.type != TOK_NOT) return condCmp(c);
    TokenFeed(c->tc);
    struct condVal v = condNot(c);
    if (v.kind != BUILD_BOOL) condFail(c, t, BUILD_COND_TYPES);
    v.i = !v.i;
    return v;
}

static struct condVal condAnd(struct condCtx* c) {
    struct condVal v = condNot(c);
    while (condPeek(c).type == TOK_AND) {
        struct token t = TokenFeed(c->tc);
        struct condVal b = condNot(c);
        if (v.kind != BUILD_BOOL || b.kind != BUILD_BOOL) condFail(c, t, BUILD_COND_TYPES);
        v.i = v.i && b.i;
    }
    return v;
}

static struct condVal condOr(struct condCtx* c) {
    struct condVal v = condAnd(c);
    while (condPeek(c).type == TOK_OR) {
        struct token t = TokenFeed(c->tc);
        struct condVal b = condAnd(c);
        if (v.kind != BUILD_BOOL || b.kind != BUILD_BOOL) condFail(c, t, BUILD_COND_TYPES);
        v.i = v.i || b.i;
    }
    return v;
}

//B9b: an immutable global declared at the top level of the module - outside every conditional, in any of its
//files - whose initializer is itself something a condition can evaluate. It is found on tokens, since
//nothing is parsed yet: "Name [type] = expr" or "Name := expr" as a whole top-level statement. A mutable
//global has no value a build could fix, so it is rejected, as is one computed by anything else (a call
//would need its body analysed before the module's declarations are even settled).
static struct condVal condGlobal(struct condCtx* c, struct token name) {
    struct condVal v = (struct condVal){0};
    if (!condFilesReady) { condFail(c, name, BUILD_COND_NAME); return v; }
    if (c->depth > 64) { condFail(c, name, BUILD_COND_CYCLE); return v; }
    for (int f = 0; f < condFiles.len; f++) {
        TokenCtx tc = *(TokenCtx*)ListGetIdx(&condFiles, f);
        int saved = TokenGetCursor(tc);
        TokenSetCursor(tc, 0);
        int depth = 0;
        bool atStmtStart = true;
        while (true) {
            struct token t = TokenFeed(tc);
            if (t.type == TOK_NONE) break;
            if (t.type == TOK_CURLY_O) { depth++; atStmtStart = false; continue; }
            if (t.type == TOK_CURLY_C) { depth--; atStmtStart = true; continue; }
            if (t.type == TOK_STMNT_END) { atStmtStart = true; continue; }
            bool start = atStmtStart;
            atStmtStart = false;
            if (depth != 0 || !start || t.type != TOK_IDEN || t.str.len != name.str.len
                    || strncmp(t.str.ptr, name.str.ptr, (size_t)name.str.len)) continue;
            //a declaration: the name, then an optional "mut" and type, then "=" or ":=" at bracket depth 0
            bool isMut = false, isFloat = false;
            int paren = 0;
            struct token u;
            while (true) {
                u = TokenFeed(tc);
                if (u.type == TOK_NONE || u.type == TOK_STMNT_END || u.type == TOK_CURLY_O) break;
                if (u.type == TOK_PAREN_O || u.type == TOK_SQUARE_O) paren++;
                if (u.type == TOK_PAREN_C || u.type == TOK_SQUARE_C) paren--;
                if (u.type == TOK_MUT) isMut = true;
                if (u.type == TOK_IDEN && ((u.str.len == 7 && !strncmp(u.str.ptr, "Float32", 7))
                        || (u.str.len == 7 && !strncmp(u.str.ptr, "Float64", 7)))) isFloat = true;
                if (paren == 0 && (u.type == TOK_ASS || u.type == TOK_ASS_INFER)) break;
            }
            if (u.type != TOK_ASS && u.type != TOK_ASS_INFER) continue; //not a declaration of it
            if (isMut) { TokenSetCursor(tc, saved); condFail(c, name, BUILD_COND_MUTABLE); return v; }
            struct condCtx inner = *c;
            inner.tc = tc;
            inner.depth = c->depth + 1;
            inner.locals = NULL; //a global's initializer sees no function's locals
            v = condOr(&inner);
            c->usedBuild = c->usedBuild || inner.usedBuild;
            if (inner.failed && !c->failed) {
                c->failed = true;
                c->errTok = name;
                c->err = BUILD_COND_GLOBAL_INIT;
                c->deferrable = inner.deferrable; //a global computed by a call can still be evaluated
            }
            if (!inner.failed && TokenFeed(tc).type != TOK_STMNT_END) condFail(c, name, BUILD_COND_GLOBAL_INIT);
            if (isFloat && v.kind == BUILD_INT) { v.kind = BUILD_FLOAT; v.f = (double)v.i; }
            TokenSetCursor(tc, saved);
            return v;
        }
        TokenSetCursor(tc, saved);
    }
    //not a build constant or a constant global: a function, a computed global, another module's name -
    //which compile-time evaluation can still decide (B9c), once the rest of the program is known
    if (!c->failed) c->deferrable = true;
    condFail(c, name, BUILD_COND_NAME);
    return v;
}

//evaluates the condition starting at the cursor, leaving the cursor after it. *ok is false when it could
//not be evaluated, with the reason in *errTok/*err (the pre-scan ignores those; the parser reports them).
static bool evalTopCond(TokenCtx tc, bool* ok, struct token* errTok, char** err, bool* deferrable) {
    struct condCtx c = (struct condCtx){0};
    c.tc = tc;
    struct token first = condPeek(&c);
    struct condVal v = condOr(&c);
    if (!c.failed && v.kind != BUILD_BOOL) condFail(&c, first, BUILD_COND_NOT_BOOL);
    *ok = !c.failed;
    if (errTok) *errTok = c.errTok;
    if (err) *err = c.err;
    if (deferrable) *deferrable = c.failed && c.deferrable;
    return !c.failed && v.i;
}

//S8b: does the build decide this local condition - evaluable before the program runs, reading no local, and
//depending on a build constant? The cursor is left wherever evaluation stopped.
static bool evalLocalCond(SyntaxCtx sc, bool* value, bool* deferrable) {
    int start = TokenGetCursor(sc->tc);
    struct condCtx c = (struct condCtx){0};
    c.tc = sc->tc;
    c.locals = &sc->localNames;
    struct condVal v = condOr(&c);
    *value = v.i != 0;
    *deferrable = c.failed && c.deferrable;
    bool decided = !c.failed && v.kind == BUILD_BOOL && c.usedBuild && condPeek(&c).type == TOK_CURLY_O;
    if (*deferrable) {
        //the evaluator stops at the first thing it cannot read, so a local further on was never seen: a
        //condition naming a local ANYWHERE is the running program's, and is never deferred
        TokenSetCursor(sc->tc, start);
        int depth = 0;
        while (true) {
            struct token t = TokenFeed(sc->tc);
            if (t.type == TOK_NONE || t.type == TOK_STMNT_END || (depth == 0 && t.type == TOK_CURLY_O)) break;
            if (t.type == TOK_PAREN_O || t.type == TOK_SQUARE_O) depth++;
            if (t.type == TOK_PAREN_C || t.type == TOK_SQUARE_C) depth--;
            if (t.type != TOK_IDEN) continue;
            for (int i = 0; i < sc->localNames.len && *deferrable; i++) {
                struct str* l = ListGetIdx(&sc->localNames, i);
                if (l->len == t.str.len && !strncmp(l->ptr, t.str.ptr, (size_t)t.str.len)) *deferrable = false;
            }
        }
    }
    return decided;
}

static void scanRegion(TokenCtx tc, struct scanResult* r, bool inBranch);

//consumes a "{ ... }" body whose "{" was just read, through its matching "}"
static void skipBraceBody(TokenCtx tc) {
    int depth = 1;
    while (depth > 0) {
        struct token t = TokenFeed(tc);
        if (t.type == TOK_NONE) return;
        if (t.type == TOK_CURLY_O) depth++;
        if (t.type == TOK_CURLY_C) depth--;
    }
}

//B9: after a top-level "if" - scans the one branch that is taken as top level, skips the rest
//B9c: a condition the token evaluator could not decide - decided by an earlier attempt, or not yet (and
//then, for this attempt, not taken)
static bool condFromDecision(TokenCtx tc, int at, bool* ok) {
    struct condDecision* d = condDecisionFor(tc, at);
    if (!d || d->err) { *ok = false; return false; }
    *ok = true;
    return d->value;
}

static bool scanCond(TokenCtx tc, bool* ok) {
    int at = TokenGetCursor(tc);
    bool deferrable;
    bool cond = evalTopCond(tc, ok, NULL, NULL, &deferrable);
    if (!*ok && deferrable) cond = condFromDecision(tc, at, ok);
    return cond;
}

static void scanTopIf(TokenCtx tc, struct scanResult* r) {
    bool taken = false;
    bool cond;
    bool ok;
    cond = scanCond(tc, &ok);
    while (true) {
        if (TokenFeed(tc).type != TOK_CURLY_O) return; //malformed - the parser reports it
        if (!taken && ok && cond) { scanRegion(tc, r, true); taken = true; }
        else skipBraceBody(tc);
        int before = TokenGetCursor(tc);
        if (TokenFeed(tc).type != TOK_ELSE) { TokenSetCursor(tc, before); return; }
        int afterElse = TokenGetCursor(tc);
        if (TokenFeed(tc).type == TOK_IF) { cond = scanCond(tc, &ok); continue; }
        TokenSetCursor(tc, afterElse);
        cond = true;
        ok = true;
    }
}

static void scanRegion(TokenCtx tc, struct scanResult* r, bool inBranch) {
    int depth = 0;
    while (true) {
        struct token t = TokenFeed(tc);
        if (t.type == TOK_NONE) break;
        if (t.type == TOK_CURLY_O) { depth++; continue; }
        if (t.type == TOK_CURLY_C) {
            if (depth == 0 && inBranch) return; //the end of the taken branch
            depth--;
            continue;
        }
        if (depth != 0) continue;
        if (t.type == TOK_IF) { scanTopIf(tc, r); continue; }
        if (t.type == TOK_TYPE) {
            struct token name = TokenFeed(tc);
            if (name.type == TOK_IDEN) {
                struct str n = Str(name.str.ptr, name.str.len);
                ListAdd(&r->typeNames, &n);
            }
        } else if (t.type == TOK_ERROR) {
            //a real error-decl ("error IDEN { ... }") registers a type name; the bare bare error
            //(see the report) is never followed by an IDEN at all (it's always immediately followed by
            //"{", "+", or a statement end, in an error-list/error-stmnt/catch-item) - a real, confirmed
            //bug found here: naively always consuming "whatever comes after error" the way TOK_TYPE's
            //own branch does swallowed a function's own opening "{" whenever its error-list ended in the
            //bare marker ("? RangeError + error {"), silently discarding it as "not an IDEN, never mind" -
            //but that consumed token then never reached the depth-tracking check above, permanently
            //desyncing "depth" for the rest of the scan (every following declaration misjudged as still
            //being inside a function body, or not, one level off). Fixed by only actually consuming the
            //peeked token when it turns out to be a real name; otherwise the cursor is restored so the
            //main loop sees it fresh, exactly like every other token that isn't part of this scan's own
            //narrow pattern.
            int before = TokenGetCursor(tc);
            struct token name = TokenFeed(tc);
            if (name.type == TOK_IDEN) {
                struct str n = Str(name.str.ptr, name.str.len);
                ListAdd(&r->typeNames, &n);
            } else {
                TokenSetCursor(tc, before);
            }
        } else if (t.type == TOK_IMPORT) {
            //"import ALIAS "path"" (explicit) or "import "path"" (alias derived from the file's own name -
            //see deriveImportAlias/the report) - either shape is accepted here; a real, anchored error for
            //an invalid derived alias is reported later, once semantic analysis has full context
            //(semaLoadModule), matching how this scan never reports errors of its own.
            struct token afterImport = TokenFeed(tc);
            struct token aliasTok = afterImport;
            struct token path;
            bool hasAlias = afterImport.type == TOK_IDEN;
            if (hasAlias) {
                path = TokenFeed(tc);
            } else {
                path = afterImport;
            }
            if (path.type != TOK_STR_LIT) continue;
            struct scannedImport imp = {0};
            imp.path = Str(path.str.ptr +1, path.str.len -2); //strip surrounding quotes
            imp.pathTok = path;
            imp.alias = hasAlias ? Str(aliasTok.str.ptr, aliasTok.str.len) : deriveImportAlias(imp.path);
            imp.aliasTok = hasAlias ? aliasTok : path;
            ListAdd(&r->imports, &imp);
        }
    }
}

struct scanResult ScanTopLevelDecls(TokenCtx tc) {
    struct scanResult r = {0};
    r.typeNames = ListInit(sizeof(struct str));
    r.imports = ListInit(sizeof(struct scannedImport));
    TokenSetCursor(tc, 0);
    scanRegion(tc, &r, false);
    TokenSetCursor(tc, 0);
    return r;
}

// ---- driver ----

static bool parseTopIf(SyntaxCtx sc, struct list* out);

static struct syntax* partSntxOf(struct syntax* s) {
    struct syntaxPart* p = ListGetIdx(&s->parts, 0);
    return p->sntx;
}

//the first token anywhere under a node - where a diagnostic about the whole node points
static struct token firstTokAnywhereSyntax(struct syntax* s) {
    for (int i = 0; i < s->parts.len; i++) {
        struct syntaxPart* p = ListGetIdx(&s->parts, i);
        if (p->isToken) return p->tok;
        struct token t = firstTokAnywhereSyntax(p->sntx);
        if (t.type != TOK_NONE) return t;
    }
    return (struct token){0};
}

static void skipStmntEnds(SyntaxCtx sc) {
    while (acceptTok(sc, TOK_STMNT_END).type != TOK_NONE) {}
}

//one top-level declaration, or a nested top-level "if", added to out; reports and recovers from a
//declaration that does not parse, exactly as the file-level loop does
//after a top-level item failed to parse: skips the whole item from its start - through any block it opens,
//so the statements inside a broken function or test are not read again as top-level declarations, each
//reported once more - to the end of its line, or of its last block
static void skipTopItem(SyntaxCtx sc, int start) {
    TokenSetCursor(sc->tc, start);
    int depth = 0;
    while (true) {
        int at = TokenGetCursor(sc->tc);
        struct token t = TokenFeed(sc->tc);
        if (t.type == TOK_NONE) return;
        if (t.type == TOK_CURLY_O) depth++;
        else if (t.type == TOK_CURLY_C) {
            if (depth == 0) { TokenSetCursor(sc->tc, at); return; } //an enclosing branch's own "}"
            if (--depth == 0) {
                struct token next = peekTok(sc);
                if (next.type == TOK_NONE || next.type == TOK_STMNT_END || next.lineNr > t.lineNr) return;
            }
        } else if (depth == 0 && t.type == TOK_STMNT_END) return;
    }
}

//the token a failed top-level item is reported at; where nothing got past the item's first token, every
//alternative failed there and the last one tried says nothing useful - "a declaration" is what was wanted
static void reportTopItemFailure(SyntaxCtx sc, int start) {
    bool atFirst = sc->furthestPos <= start +1;
    ErrMsgUnexpectedToken(sc->furthestTok, !atFirst && sc->furthestExpected ? sc->furthestExpected : "declaration");
}

static void parseTopItem(SyntaxCtx sc, struct list* out) {
    sc->localNames = ListInit(sizeof(struct str)); //S8b: a fresh function, test or type
    sc->itemIncomplete = false;
    int start = TokenGetCursor(sc->tc);
    sc->furthestPos = start;
    if (peekTok(sc).type == TOK_IF) {
        if (!parseTopIf(sc, out)) {
            reportTopItemFailure(sc, start);
            skipTopItem(sc, start);
        }
        return;
    }
    struct syntax* decl = parseTopDecl(sc);
    if (!decl) {
        reportTopItemFailure(sc, start);
        skipTopItem(sc, start);
        return;
    }
    if (sc->itemIncomplete) addSntx(partSntxOf(decl), newNode(SNTX_BODY_INCOMPLETE)); //S8b
    ListAdd(out, decl);
}

//"{ declarations }" of a top-level if's branch
static bool parseTopBranch(SyntaxCtx sc, struct list* out) {
    if (acceptTok(sc, TOK_CURLY_O).type == TOK_NONE) return false;
    while (true) {
        skipStmntEnds(sc);
        struct token peek = peekTok(sc);
        if (peek.type == TOK_NONE) return false;
        if (peek.type == TOK_CURLY_C) { TokenFeed(sc->tc); return true; }
        parseTopItem(sc, out);
    }
}

//B9: a top-level "if [else if ...] [else]" is conditional compilation. Only the taken branch is parsed;
//the others are skipped by matching braces and never looked at again - not merely left unchecked, but
//unparsed, because parsing itself depends on which type names exist ("T{...}" is a literal only when T is
//a type), and in a branch not taken those names may exist only on another target.
static bool skipTopBranch(SyntaxCtx sc) {
    if (acceptTok(sc, TOK_CURLY_O).type == TOK_NONE) return false;
    skipBraceBody(sc->tc);
    return true;
}

static bool parseTopIf(SyntaxCtx sc, struct list* out) {
    if (acceptTok(sc, TOK_IF).type == TOK_NONE) return false;
    bool taken = false;
    while (true) {
        int condStart = TokenGetCursor(sc->tc);
        struct syntax* cond = parseExpr(sc);
        if (!cond) return false;
        int afterCond = TokenGetCursor(sc->tc);
        TokenSetCursor(sc->tc, condStart);
        bool ok;
        struct token errTok;
        char* err;
        bool deferrable;
        bool value = evalTopCond(sc->tc, &ok, &errTok, &err, &deferrable);
        TokenSetCursor(sc->tc, afterCond);
        if (!ok && deferrable) {
            //B9c: left to compile-time evaluation - decided by an earlier attempt, or queued for this one
            struct condDecision* d = condDecisionFor(sc->tc, condStart);
            if (d && d->err) {
                ErrMsgSemantic(firstTokAnywhereSyntax(cond), d->err);
            } else if (d) {
                ok = true;
                value = d->value;
            } else {
                struct pendingCond p = (struct pendingCond){0};
                p.file = TokenGetFileName(sc->tc);
                p.at = condStart;
                p.cond = cond;
                p.mod = sc->typeCtx;
                p.tok = firstTokAnywhereSyntax(cond);
                condTablesInit();
                ListAdd(&condPending, &p);
            }
        } else if (!ok) {
            ErrMsgSemantic(errTok, err);
        }
        if (!taken && ok && value) {
            if (!parseTopBranch(sc, out)) return false;
            taken = true;
        } else if (!skipTopBranch(sc)) {
            return false;
        }
        int before = TokenGetCursor(sc->tc);
        if (TokenFeed(sc->tc).type != TOK_ELSE) { TokenSetCursor(sc->tc, before); return true; }
        if (acceptTok(sc, TOK_IF).type != TOK_NONE) continue;
        return taken ? skipTopBranch(sc) : parseTopBranch(sc, out);
    }
}

struct syntaxModule ParseSyntax(TokenCtx tc, void* typeCtx, TypeNameLookup isKnownType) {
    struct syntaxContext sc = {0};
    sc.defaultListAt = -1;
    sc.localNames = ListInit(sizeof(struct str));
    sc.tc = tc;
    sc.furthestPos = -1;
    sc.typeCtx = typeCtx;
    sc.isKnownType = isKnownType;

    struct syntaxModule mod = {0};
    mod.tc = tc;
    mod.decls = ListInit(sizeof(struct syntax));

    while (true) {
        struct token peek = peekTok(&sc);
        if (peek.type == TOK_NONE) break;

        parseTopItem(&sc, &mod.decls);
    }
    return mod;
}
