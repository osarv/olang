#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <limits.h>
#include <math.h>
#include <stdint.h>
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

//one parse remembered by the token position it started at: what it produced and where it stopped. Several statement
//forms begin with an expression and only what follows it tells them apart, so each would otherwise read that
//expression - and every block and lambda inside it - again, which nests: an expression statement holding a lambda
//holding one ... was parsed 3^depth times. Positions are only meaningful for one shape of the token list, so an entry
//records the list's version (+1, so a zeroed slot is empty) and is ignored once the parser has split a token since.
struct memoSlot { int version; int end; struct syntax* result; };
struct parseMemo { struct memoSlot* slots; int cap; };

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
    struct parseMemo postfixMemo; //parseExprPostfix's results, by position
    struct parseMemo blockMemo;   //parseBlock's
    int depth;                    //nesting of expressions and blocks being parsed - see nestEnter
    bool tooDeep;                 //the current top-level item went past MAX_NESTING, and that was reported
};

// ---- token-stream primitives ----

//The one invariant every parse function keeps: one that fails leaves the cursor where it found it - so each
//alternative a caller tries reads from the same place, and nothing a failed attempt consumed (a lone "-" in "f(-)") is
//silently dropped. Every failure path returns through here.
static struct syntax* parseFail(SyntaxCtx sc, int cur) {
    TokenSetCursor(sc->tc, cur);
    return NULL;
}

//tries one alternative: on failure the cursor is back where it was, and so is the list of locals - a name an abandoned
//reading took for a declaration ("TargetOs" in "TargetOs.Trim()", tried first as a destructuring) is no local (S8b)
static struct syntax* attempt(SyntaxCtx sc, struct syntax* (*parse)(SyntaxCtx)) {
    int cur = TokenGetCursor(sc->tc);
    int names = sc->localNames.len;
    struct syntax* s = parse(sc);
    if (s) return s;
    sc->localNames.len = names;
    return parseFail(sc, cur);
}

//every pass after this one recurses once per level of nesting - a parenthesis, a block, a "not", one link of a long
//"a + b + ..." chain - so a program nested past this is refused here, once, rather than running a later pass out of
//stack. It is far past anything written by hand, and far inside the stack the compiler runs on (main.c)
#define MAX_NESTING 20000
struct token peekTok(SyntaxCtx sc);
static bool nestEnter(SyntaxCtx sc, int levels) {
    if (sc->depth + levels <= MAX_NESTING) { sc->depth += levels; return true; }
    if (!sc->tooDeep) ErrSyntax(peekTok(sc), ERR_NESTING, MAX_NESTING);
    sc->tooDeep = true;
    return false;
}

static struct memoSlot* memoSlotAt(struct parseMemo* m, int pos) {
    if (pos >= m->cap) {
        int cap = m->cap ? m->cap : 256;
        while (cap <= pos) cap *= 2;
        m->slots = ReallocOrCrash(m->slots, sizeof(struct memoSlot) * (size_t)cap);
        memset(m->slots + m->cap, 0, sizeof(struct memoSlot) * (size_t)(cap - m->cap));
        m->cap = cap;
    }
    return &m->slots[pos];
}

//parse, through the memo m: the same position read twice under the same token list gives the same answer, and the
//second time costs nothing
static struct syntax* memoized(SyntaxCtx sc, struct parseMemo* m, struct syntax* (*parse)(SyntaxCtx)) {
    int pos = TokenGetCursor(sc->tc);
    struct memoSlot* slot = memoSlotAt(m, pos);
    if (slot->version == TokenListVersion(sc->tc) + 1) {
        TokenSetCursor(sc->tc, slot->end);
        return slot->result;
    }
    struct syntax* s = attempt(sc, parse);
    slot = memoSlotAt(m, pos); //the parse may have grown the table
    slot->version = TokenListVersion(sc->tc) + 1;
    slot->end = TokenGetCursor(sc->tc);
    slot->result = s;
    return s;
}

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
//excludes it on purpose). A statement ending in a block's "}" - a lambda's, a match's - is complete there,
//so this accepts a real STMNT_END token OR, when the token just consumed was "}", treats that as the
//terminator too, with nothing extra to consume (L20a).
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
    if (name.type == TOK_NONE) return parseFail(sc, cur);
    //G19: "<T Iterator<Int32>>" - a constraint, an interface T must satisfy
    struct syntax* constraint = NULL;
    enum tokenType next = peekTok(sc).type;
    if (next != TOK_GRT && next != TOK_BTSFT_R) {
        constraint = parseTypeExpr(sc);
        if (!constraint) return parseFail(sc, cur);
    }
    struct token close = acceptTok(sc, TOK_GRT);
    //"List<<T>>": the variable's ">" and the list's ">" lex as one ">>"
    if (close.type == TOK_NONE && TokenSplitShiftRight(sc->tc)) close = acceptTok(sc, TOK_GRT);
    if (close.type == TOK_NONE) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_TYPE_VAR);
    addTok(s, name);
    if (constraint) addSntx(s, constraint);
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
    int mark = TokenEditMark(sc->tc);
    TokenSplitShiftLeft(sc->tc);
    struct token open = acceptTok(sc, TOK_LST);
    if (open.type == TOK_NONE) { TokenEditRewind(sc->tc, mark); return NULL; }
    struct syntax* s = newNode(nodeType);
    while (true) {
        struct syntax* item = parseTypeExpr(sc);
        if (!item) break;
        addSntx(s, item);
        //G19: a declared parameter may carry a constraint - "type Map<K Hashable<<K>>, V>"
        if (nodeType == SNTX_TYPE_PARAMS) {
            enum tokenType next = peekTok(sc).type;
            if (next != TOK_COMMA && next != TOK_GRT && next != TOK_BTSFT_R) {
                struct syntax* constraint = parseTypeExpr(sc);
                if (!constraint) break;
                struct syntax* cn = newNode(SNTX_TYPE_CONSTRAINT);
                addSntx(cn, constraint);
                addSntx(s, cn);
            }
        }
        if (acceptTok(sc, TOK_COMMA).type != TOK_NONE) continue;
        if (acceptTok(sc, TOK_GRT).type != TOK_NONE) return s;
        if (TokenSplitShiftRight(sc->tc)) { //">>" closing a nested list - consume one ">", leave the other
            if (acceptTok(sc, TOK_GRT).type != TOK_NONE) return s;
        }
        break;
    }
    TokenSetCursor(sc->tc, cur);
    TokenEditRewind(sc->tc, mark); //every split made inside, nested lists' included
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
    if (marker.type != TOK_BTWSE_AND) return parseFail(sc, before);
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

//L18a: after a list's comma, whether the list ends there - "a, b," with its closing bracket beginning a line of its
//own, as a list running over several lines may end. On the same line the comma is left for the caller to fail at
//(reported as a trailing comma by syntaxHint)
static bool trailingComma(SyntaxCtx sc, struct token comma, enum tokenType closer) {
    struct token next = peekTok(sc);
    return next.type == closer && next.lineNr > comma.lineNr;
}

//T17/T19/C2: a comma where line ends separate entries (an enum's cases, an error type's words, a constructor's
//fields) is reported and then read past as though it were the line end it stands for, so one stray comma is one error
static bool rejectSeparatorComma(SyntaxCtx sc) {
    if (peekTok(sc).type != TOK_COMMA) return false;
    Err(TokenFeed(sc->tc), ERR_SEPARATOR_COMMA);
    return true;
}

struct syntax* parseChoiceBody(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_CHOICE);
    if (kw.type == TOK_NONE) return NULL;
    struct token open = acceptTok(sc, TOK_CURLY_O);
    if (open.type == TOK_NONE) return parseFail(sc, cur);
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
        if (rejectSeparatorComma(sc)) continue;
        //T17: a case ends at its line's end, or at the body's "}" - "enum { North South }" is not two cases
        if (!acceptStmntEnd(sc)) break;
    }
    if (!any) return parseFail(sc, cur);
    struct token close = acceptTok(sc, TOK_CURLY_C);
    if (close.type == TOK_NONE) return parseFail(sc, cur);
    addTok(s, close);
    return s;
}

struct syntax* parseParamList(SyntaxCtx sc);
struct syntax* parseFuncSig(SyntaxCtx sc);
struct syntax* parseStructCtor(SyntaxCtx sc);

//one entry of a trait body: "[mut] IDEN func-sig" (T30). No leading "fn" - the name followed by "(" is already
//unambiguous here, and the list reads as the set of calls the trait admits rather than as a list of declarations.
//The optional "mut" says the method needs a MUTABLE receiver.
struct syntax* parseMethodSig(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    int beforeMut = TokenGetCursor(sc->tc);
    struct token mut = TokenFeed(sc->tc);
    if (mut.type != TOK_MUT) { TokenSetCursor(sc->tc, beforeMut); mut.type = TOK_NONE; }
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) return parseFail(sc, cur);
    struct syntax* sig = parseFuncSig(sc);
    if (!sig) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_METHOD_SIG);
    if (mut.type != TOK_NONE) addTok(s, mut);
    addTok(s, name);
    addSntx(s, sig);
    return s;
}

//"trait { [STMNT_END] { method-sig STMNT_END } }" (T30). Entries are STMNT_END-separated, as an enum's cases are, and
//L20's closing-"}" rule still lets a one-method trait be written on a single line.
struct syntax* parseInterfaceBody(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_INTERFACE);
    if (kw.type == TOK_NONE) return NULL;
    struct token open = acceptTok(sc, TOK_CURLY_O);
    if (open.type == TOK_NONE) return parseFail(sc, cur);
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
        //T30: a signature ends at its line's end - one ending in a type's ">" or a marker's "&" too (L20a) - or at the
        //body's "}"
        if (!acceptStmntEnd(sc)) break;
    }
    struct token close = acceptTok(sc, TOK_CURLY_C);
    if (close.type == TOK_NONE) return parseFail(sc, cur);
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
    if (!sig) return parseFail(sc, cur);
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
    if (!inner) return parseFail(sc, cur);
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
    if (name.type == TOK_NONE) return parseFail(sc, cur);
    //"type Vec<T> struct(...)" - the parameter list sits after the NAME, mirroring the use site
    //("Vec<int32>") rather than attaching to "struct"; it also scopes over the whole declaration, not
    //just the body (G6), and keeps type parameters out of the anonymous struct-shape grammar (T3)
    struct syntax* typeParams = parseTypeArgsInto(sc, SNTX_TYPE_PARAMS);
    struct token ext = acceptTok(sc, TOK_EXTENDS); //T29f
    //"type T&s struct(...)" - same fallback declaration, attached to the constructor node below (a plain
    //struct has no signature for a scope variable to mean anything in, and is rejected semantically)
    struct list scopeDecls = parseScopeDecls(sc);
    //a constructor-bearing struct ("struct(params) { ... }") is only ever reachable here, never as a
    //general type expression - disambiguated purely by "(" immediately following "struct", so a plain
    //"struct { ... }" (parseTypeExpr's path, unchanged) never even attempts this
    struct syntax* ctor = parseStructCtor(sc);
    struct syntax* type = ctor ? ctor : parseTypeExpr(sc);
    if (!type) return parseFail(sc, cur);
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
    if (ext.type != TOK_NONE) addTok(s, ext);
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
    if (path.type == TOK_NONE) return parseFail(sc, cur);
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
    if (name.type == TOK_NONE) return parseFail(sc, cur);
    struct token open = acceptTok(sc, TOK_CURLY_O);
    if (open.type == TOK_NONE) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_ERROR_DECL);
    addTok(s, kw);
    addTok(s, name);
    addTok(s, open);
    //T19: words are separated by statement ends, as an enum's cases are - one per line, or a single one on the
    //declaration's own line (L20)
    bool any = false;
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token end = TokenFeed(sc->tc);
        if (end.type == TOK_STMNT_END) { addTok(s, end); continue; }
        TokenSetCursor(sc->tc, before);
        struct token iden = acceptTok(sc, TOK_IDEN);
        if (iden.type == TOK_NONE) break;
        addTok(s, iden);
        any = true;
        if (rejectSeparatorComma(sc)) continue;
        if (peekTok(sc).type != TOK_CURLY_C && acceptTok(sc, TOK_STMNT_END).type == TOK_NONE) break;
    }
    if (!any) return parseFail(sc, cur);
    struct token close = acceptTok(sc, TOK_CURLY_C);
    if (close.type == TOK_NONE) return parseFail(sc, cur);
    addTok(s, close);
    return s;
}

//one "error-list-item": a declared error type's name, possibly through an alias chain - "?" alone already stands for
//the default error (R15), which no name spells
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
            if (!type) return parseFail(sc, cur);
            addSntx(s, type);
            n++;
        } while (acceptTok(sc, TOK_COMMA).type != TOK_NONE);
        if (n < 2 || acceptTok(sc, TOK_PAREN_C).type == TOK_NONE) return parseFail(sc, cur);
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
    if (!type) return parseFail(sc, cur);
    addSntx(s, type);
    //D8a: an optional "= expr" default. Parsed as an ordinary expression and restricted to a literal in
    //semantic.c, so a bad default gets a real diagnostic instead of a parse failure pointing elsewhere
    int beforeAss = TokenGetCursor(sc->tc);
    struct token ass = TokenFeed(sc->tc);
    if (ass.type == TOK_ASS) {
        struct syntax* def = parseExpr(sc);
        if (!def) return parseFail(sc, cur);
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
        if (trailingComma(sc, comma, TOK_PAREN_C)) break; //L18a
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
    if (close.type == TOK_NONE) return parseFail(sc, cur);
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
        if (!rhs) return parseFail(sc, cur);
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
            if (!rhs) return parseFail(sc, cur);
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
struct syntax* parseMultiDecl(SyntaxCtx sc, enum syntaxType nodeType);
struct syntax* parseCtorBody(SyntaxCtx sc) {
    struct syntax* s = newNode(SNTX_CTOR_BODY);
    while (true) {
        int cur = TokenGetCursor(sc->tc);
        struct syntax* fs = parseMultiDecl(sc, SNTX_CTOR_FIELD); //D12b: several fields at once
        if (fs && acceptStmntEnd(sc)) {
            for (int i = 0; i < fs->parts.len; i++) addSntx(s, ((struct syntaxPart*)ListGetIdx(&fs->parts, i))->sntx);
            continue;
        }
        TokenSetCursor(sc->tc, cur);
        struct syntax* f = parseCtorField(sc);
        if (f && acceptStmntEnd(sc)) { addSntx(s, f); continue; }
        TokenSetCursor(sc->tc, cur);
        struct syntax* stmt = parseStmnt(sc);
        if (stmt) { addSntx(s, stmt); continue; }
        //T17/C2: only now is a comma after a field a separator written where a line end belongs - "a, b = b, a" is a
        //parallel assignment (S4c), read as the statement it is above
        f = parseCtorField(sc);
        if (f && rejectSeparatorComma(sc)) { addSntx(s, f); continue; }
        TokenSetCursor(sc->tc, cur);
        break;
    }
    return s;
}

struct syntax* parseDestruct(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_DESTRUCT);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* block = parseBlock(sc);
    if (!block) return parseFail(sc, cur);
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
    if (open.type == TOK_NONE) return parseFail(sc, cur);
    struct syntax* params = parseParamList(sc);
    struct token close = acceptTok(sc, TOK_PAREN_C);
    if (close.type == TOK_NONE) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_STRUCT_CTOR);
    addTok(s, kw);
    addTok(s, open);
    addSntx(s, params);
    addTok(s, close);
    struct syntax* errs = parseFuncErrorList(sc);
    if (errs) addSntx(s, errs);
    struct token curlyO = acceptTok(sc, TOK_CURLY_O);
    if (curlyO.type == TOK_NONE) return parseFail(sc, cur);
    addTok(s, curlyO);
    struct syntax* body = parseCtorBody(sc);
    addSntx(s, body);
    struct token curlyC = acceptTok(sc, TOK_CURLY_C);
    if (curlyC.type == TOK_NONE) return parseFail(sc, cur);
    addTok(s, curlyC);
    struct syntax* destruct = parseDestruct(sc);
    if (destruct) addSntx(s, destruct);
    return s;
}

//"fn [(receiver)] NAME [scope declarations] SIG" - everything of a function definition but its body. Leaves the cursor
//after the signature and returns the definition node without its block, or NULL (cursor restored) on failure.
static struct syntax* parseFuncHead(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptFnKeyword(sc);
    if (kw.type == TOK_NONE) return NULL;
    //M19: "func (recv T) Name(...)". The receiver clause is what makes a function a method - nothing is
    //inferred from a parameter's type any more - and it is parsed as an ordinary param, so "mut", a "&"
    //marker and a scope tag all read exactly as they would anywhere else.
    struct syntax* receiver = NULL;
    struct token rOpen = acceptTok(sc, TOK_PAREN_O);
    if (rOpen.type != TOK_NONE) {
        struct syntax* rp = parseParam(sc);
        struct token rClose = rp ? acceptTok(sc, TOK_PAREN_C) : (struct token){0};
        if (!rp || rClose.type == TOK_NONE) return parseFail(sc, cur);
        receiver = newNode(SNTX_RECEIVER);
        addTok(receiver, rOpen);
        addSntx(receiver, rp);
        addTok(receiver, rClose);
    }
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) return parseFail(sc, cur);
    //O3: "func f&b(...)" - scope declarations ride on the signature node, where resolveFuncSig finds them
    //alongside everything else it needs
    struct list scopeDecls = parseScopeDecls(sc);
    struct syntax* sig = parseFuncSig(sc);
    if (!sig) return parseFail(sc, cur);
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
        if (!plist) return parseFail(sc, cur);
        struct syntaxPart rpart = {0};
        rpart.sntx = ((struct syntaxPart*)ListGetIdx(&receiver->parts, 1))->sntx;
        ListInsertIdx(&plist->parts, 0, &rpart);
    }
    struct syntax* s = newNode(SNTX_FUNC_DEF);
    addTok(s, kw);
    addTok(s, name);
    addSntx(s, sig);
    if (receiver) addSntx(s, receiver);
    return s;
}

struct syntax* parseFuncDef(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct syntax* s = parseFuncHead(sc);
    if (!s) return NULL;
    struct syntax* block = parseBlock(sc);
    if (!block) return parseFail(sc, cur);
    //the block goes before the receiver, where every reader of a definition finds it
    struct syntaxPart bpart = {0};
    bpart.sntx = block;
    ListInsertIdx(&s->parts, 3, &bpart);
    return s;
}

//a function definition whose body did not parse, as the declaration its signature still is: the body empty and marked
//unparsed (SNTX_BODY_UNPARSED), so calls to it are checked against the signature instead of each being an unknown
//function, and the body - its error already reported - is never checked. NULL unless a whole signature and the body's
//"{" are there. The cursor is left where it was.
static struct syntax* salvageFuncDecl(SyntaxCtx sc, int start) {
    int resume = TokenGetCursor(sc->tc);
    TokenSetCursor(sc->tc, start);
    struct syntax* s = parseFuncHead(sc);
    struct token open = s ? peekTok(sc) : (struct token){0};
    TokenSetCursor(sc->tc, resume);
    if (!s || open.type != TOK_CURLY_O) return NULL;
    struct syntax* block = newNode(SNTX_BLOCK);
    addTok(block, open);
    struct syntaxPart bpart = {0};
    bpart.sntx = block;
    ListInsertIdx(&s->parts, 3, &bpart);
    addSntx(s, newNode(SNTX_BODY_UNPARSED));
    struct syntax* top = newNode(SNTX_TOP_DECL);
    addSntx(top, s);
    return top;
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
    if (!type) return parseFail(sc, cur);
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
        if (trailingComma(sc, comma, TOK_PAREN_C)) break; //L18a
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
    if (kwFunc.type == TOK_NONE) return parseFail(sc, cur);
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) return parseFail(sc, cur);
    struct token open = acceptTok(sc, TOK_PAREN_O);
    if (open.type == TOK_NONE) return parseFail(sc, cur);
    struct syntax* params = parseExternParamList(sc);
    struct token close = acceptTok(sc, TOK_PAREN_C);
    if (close.type == TOK_NONE) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_EXTERN_FUNC_DECL);
    addTok(s, kwExtern);
    addTok(s, kwFunc);
    addTok(s, name);
    addTok(s, open);
    addSntx(s, params);
    addTok(s, close);
    struct syntax* retType = parseRetType(sc);
    if (retType) addSntx(s, retType);
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
    return s;
}

struct syntax* parseTestDecl(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_TEST);
    if (kw.type == TOK_NONE) return NULL;
    struct token desc = acceptTok(sc, TOK_STR_LIT);
    if (desc.type == TOK_NONE) return parseFail(sc, cur);
    struct syntax* block = parseBlock(sc);
    if (!block) return parseFail(sc, cur);
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
        if (!type) return parseFail(sc, cur);
        addSntx(s, type);
        struct token ass = acceptTok(sc, TOK_ASS);
        if (ass.type == TOK_NONE) hasNoInitializer = true;
        else addTok(s, ass);
    }
    if (!hasNoInitializer) {
        struct syntax* rhs = parseExpr(sc);
        if (!rhs) return parseFail(sc, cur);
        addSntx(s, rhs);
    }
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
    if (sc->blockDepth > 0) ListAdd(&sc->localNames, &name.str); //S8b: a local, not a global
    return s;
}

//D12b: "a, b [mut] T [= x, y]" - several names declared with one type, each its own declaration of nodeType
//(SNTX_VAR_DECL, or a constructor's SNTX_CTOR_FIELD) taking its value from the list in order. A constructor's fields
//may also be puns ("a, b mut") or inferred ("a, b := x, y"); a local or global inferred list is a destructuring
//(parseStmntDestruct). The statement end is the caller's. Each initializer sees the names declared before it.
struct syntax* parseMultiDecl(SyntaxCtx sc, enum syntaxType nodeType) {
    int cur = TokenGetCursor(sc->tc);
    struct list names = ListInit(sizeof(struct token));
    do {
        struct token n = acceptTok(sc, TOK_IDEN);
        if (n.type == TOK_NONE) return parseFail(sc, cur);
        ListAdd(&names, &n);
    } while (acceptTok(sc, TOK_COMMA).type != TOK_NONE);
    if (names.len < 2) return parseFail(sc, cur);
    struct token mut = acceptTok(sc, TOK_MUT);
    bool field = nodeType == SNTX_CTOR_FIELD;
    struct token infer = field ? acceptTok(sc, TOK_ASS_INFER) : (struct token){0};
    struct syntax* type = infer.type == TOK_NONE ? parseTypeExpr(sc) : NULL;
    if (infer.type == TOK_NONE && !type && !field) return parseFail(sc, cur);
    struct token ass = type ? acceptTok(sc, TOK_ASS) : (struct token){0};
    struct list values = ListInit(sizeof(struct syntax*));
    if (infer.type != TOK_NONE || ass.type != TOK_NONE) {
        do {
            struct syntax* v = parseExpr(sc);
            if (!v) return parseFail(sc, cur);
            ListAdd(&values, &v);
        } while (acceptTok(sc, TOK_COMMA).type != TOK_NONE);
        if (values.len != names.len) Err(*(struct token*)ListGetIdx(&names, 0), ERR_VAR_LIST_COUNT, names.len, values.len);
    }
    struct syntax* s = newNode(SNTX_VAR_DECLS);
    for (int i = 0; i < names.len; i++) {
        struct token n = *(struct token*)ListGetIdx(&names, i);
        struct syntax* d = newNode(nodeType);
        addTok(d, n);
        if (mut.type != TOK_NONE) addTok(d, mut);
        if (infer.type != TOK_NONE) addTok(d, infer);
        if (type) addSntx(d, type);
        if (ass.type != TOK_NONE) addTok(d, ass);
        if (i < values.len && (infer.type != TOK_NONE || ass.type != TOK_NONE)) addSntx(d, *(struct syntax**)ListGetIdx(&values, i));
        else if (infer.type != TOK_NONE || ass.type != TOK_NONE) {
            //a count mismatch, already reported: the name gets no initializer, so it still declares something
            d = newNode(nodeType);
            addTok(d, n);
            if (mut.type != TOK_NONE) addTok(d, mut);
            if (type) addSntx(d, type);
        }
        addSntx(s, d);
        if (!field && sc->blockDepth > 0) ListAdd(&sc->localNames, &n.str); //S8b
    }
    return s;
}

//same shape as VAR_DECL but no trailing statement-end (a for-loop's init clause is followed by ",")
struct syntax* parseForInit(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token name = acceptTok(sc, TOK_IDEN);
    if (name.type == TOK_NONE) return NULL;
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
        if (!type) return parseFail(sc, cur);
        struct token ass = acceptTok(sc, TOK_ASS);
        if (ass.type == TOK_NONE) return parseFail(sc, cur);
        addSntx(s, type);
        addTok(s, ass);
    }
    struct syntax* rhs = parseExpr(sc);
    if (!rhs) return parseFail(sc, cur);
    addSntx(s, rhs);
    ListAdd(&sc->localNames, &name.str); //S8b - its own initializer cannot read it, so recorded once it is one
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
    if (!op) return parseFail(sc, cur);
    struct syntax* rhs = parseExpr(sc);
    if (!rhs) return parseFail(sc, cur);
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
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
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
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
struct condDecision { struct str file; int at; bool value; enum diag err; char* reason; enum condDecisionKind kind; };
static struct condDecision* condDecisionFor(TokenCtx tc, int at);
static struct token firstTokAnywhereSyntax(struct syntax* s);
static void condTablesInit(void);
static struct list condPending;
static void condPendingAdd(struct pendingCond p);

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

//after a chosen branch: the rest of the chain ("else if ... { } else { }"), none of its blocks parsed. A condition is
//read by the expression parser, since one may hold braces of its own ("else if match x { ... } { ... }"); only where
//it does not parse is it skipped by brackets, to the first "{"
static void skipElseChain(SyntaxCtx sc) {
    while (true) {
        int before = TokenGetCursor(sc->tc);
        if (TokenFeed(sc->tc).type != TOK_ELSE) { TokenSetCursor(sc->tc, before); return; }
        if (acceptTok(sc, TOK_IF).type != TOK_NONE) {
            int names = sc->localNames.len;
            if (!parseExpr(sc)) skipBalancedTo(sc, TOK_CURLY_O);
            sc->localNames.len = names; //nothing in a skipped condition is a local of what follows
        }
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
        if (!block) return parseFail(sc, cur);
        skipElseChain(sc);
        return chosenNode(kw, block);
    }
    if (acceptTok(sc, TOK_CURLY_O).type == TOK_NONE) return parseFail(sc, cur);
    skipBraceBody(sc->tc);
    int before = TokenGetCursor(sc->tc);
    if (TokenFeed(sc->tc).type != TOK_ELSE) { TokenSetCursor(sc->tc, before); return chosenNode(kw, NULL); }
    int afterElse = TokenGetCursor(sc->tc);
    if (peekTok(sc).type == TOK_IF) {
        struct syntax* next = parseStmntIf(sc); //runtime or decided, whichever that condition is
        if (!next) return parseFail(sc, cur);
        return next;
    }
    TokenSetCursor(sc->tc, afterElse);
    struct syntax* block = parseBlock(sc);
    if (!block) return parseFail(sc, cur);
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
        if (!parseExpr(sc)) return parseFail(sc, cur); //checked for syntax, and consumed
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
            if (!p.cond || acceptTok(sc, TOK_CURLY_O).type == TOK_NONE) return parseFail(sc, cur);
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
        condPendingAdd(p);
    }
    if (s && d && d->kind == COND_DEAD) addSntx(s, newNode(SNTX_COND_DEAD));
    return s;
}

static struct syntax* parseStmntIfRuntime(SyntaxCtx sc, int cur, struct token kw) {
    struct syntax* cond = parseExpr(sc);
    if (!cond) return parseFail(sc, cur);
    struct syntax* block = parseBlock(sc);
    if (!block) return parseFail(sc, cur);
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

//S9a/S9b: what follows a for's "in" - an expression, or "range end" / "range start, end [, step]" (one to three
//expressions, no parentheses)
struct syntax* parseExprNoCond(SyntaxCtx sc);
static struct syntax* parseForInSource(SyntaxCtx sc, bool inComprehension) {
    int cur = TokenGetCursor(sc->tc);
    struct token rangeKw = acceptTok(sc, TOK_RANGE);
    if (rangeKw.type == TOK_NONE) return inComprehension ? parseExprNoCond(sc) : parseExpr(sc);
    struct syntax* e = newNode(SNTX_RANGE);
    addTok(e, rangeKw);
    int n = 0;
    while (true) {
        struct syntax* arg = parseExpr(sc);
        if (!arg) return parseFail(sc, cur);
        addSntx(e, arg);
        n++;
        if (acceptTok(sc, TOK_COMMA).type == TOK_NONE) break;
    }
    if (n > 3) return parseFail(sc, cur);
    return e;
}

//E27: "for NAME [, NAME] in source [if expr]" - a comprehension's clause, after its element expression
static struct syntax* parseComprehensionClause(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_FOR);
    if (kw.type == TOK_NONE) return NULL;
    struct token n1 = acceptTok(sc, TOK_IDEN);
    if (n1.type == TOK_NONE) return parseFail(sc, cur);
    struct token n2 = (struct token){0};
    if (acceptTok(sc, TOK_COMMA).type != TOK_NONE) {
        n2 = acceptTok(sc, TOK_IDEN);
        if (n2.type == TOK_NONE) return parseFail(sc, cur);
    }
    struct token in = acceptTok(sc, TOK_IN);
    if (in.type == TOK_NONE) return parseFail(sc, cur);
    ListAdd(&sc->localNames, &n1.str);
    if (n2.type != TOK_NONE) ListAdd(&sc->localNames, &n2.str);
    struct syntax* src = parseForInSource(sc, true);
    if (!src) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_COMPREHENSION);
    addTok(s, kw);
    addTok(s, n1);
    if (n2.type != TOK_NONE) addTok(s, n2);
    addTok(s, in);
    addSntx(s, src);
    struct token ifKw = acceptTok(sc, TOK_IF);
    if (ifKw.type != TOK_NONE) {
        struct syntax* cond = parseExprNoCond(sc);
        if (!cond) return parseFail(sc, cur);
        addTok(s, ifKw);
        addSntx(s, cond);
    }
    return s;
}

struct syntax* parseCatchClause(SyntaxCtx sc, bool listOk);
//S9a: "for NAME [, NAME] in expr block"
static struct syntax* parseStmntForIn(SyntaxCtx sc, struct token kw) {
    int cur = TokenGetCursor(sc->tc);
    struct token n1 = acceptTok(sc, TOK_IDEN);
    if (n1.type == TOK_NONE) return NULL;
    struct token n2 = (struct token){0};
    struct token comma = acceptTok(sc, TOK_COMMA);
    if (comma.type != TOK_NONE) {
        n2 = acceptTok(sc, TOK_IDEN);
        if (n2.type == TOK_NONE) return parseFail(sc, cur);
    }
    struct token in = acceptTok(sc, TOK_IN);
    if (in.type == TOK_NONE) return parseFail(sc, cur);
    ListAdd(&sc->localNames, &n1.str); //S8b: the loop's names are locals
    if (n2.type != TOK_NONE) ListAdd(&sc->localNames, &n2.str);
    //S9e: "for x in try c" - the try covers what the loop calls by itself, with catch clauses after the body
    struct token tryKw = acceptTok(sc, TOK_TRY);
    struct syntax* e = parseForInSource(sc, false);
    if (!e) return parseFail(sc, cur);
    struct syntax* block = parseBlock(sc);
    if (!block) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_STMNT_FOR_IN);
    addTok(s, kw);
    addTok(s, n1);
    if (n2.type != TOK_NONE) addTok(s, n2);
    addTok(s, in);
    if (tryKw.type != TOK_NONE) addTok(s, tryKw);
    addSntx(s, e);
    addSntx(s, block);
    if (tryKw.type != TOK_NONE) {
        struct syntax* clause;
        while ((clause = parseCatchClause(sc, false))) addSntx(s, clause);
    }
    return s;
}

//S9: "for block" (forever), "for expr block" (while), "for init, cond, post block", and S9a's "for x in a"
struct syntax* parseStmntFor(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_FOR);
    if (kw.type == TOK_NONE) return NULL;
    if (peekTok(sc).type == TOK_CURLY_O) {
        struct syntax* block = parseBlock(sc);
        if (!block) return parseFail(sc, cur);
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
        if (!cond) return parseFail(sc, cur);
        struct syntax* block = parseBlock(sc);
        if (!block) return parseFail(sc, cur);
        struct syntax* s = newNode(SNTX_STMNT_FOR);
        addTok(s, kw);
        addSntx(s, cond);
        addSntx(s, block);
        return s;
    }
    struct syntax* cond = parseExpr(sc);
    if (!cond) return parseFail(sc, cur);
    struct token c2 = acceptTok(sc, TOK_COMMA);
    if (c2.type == TOK_NONE) return parseFail(sc, cur);
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
    if (!post) return parseFail(sc, cur);
    struct syntax* block = parseBlock(sc);
    if (!block) return parseFail(sc, cur);
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
    if (!block) return parseFail(sc, cur);
    struct token whileKw = acceptTok(sc, TOK_FOR); //S10: "do { } for cond"
    if (whileKw.type == TOK_NONE) return parseFail(sc, cur);
    struct syntax* cond = parseExpr(sc);
    if (!cond) return parseFail(sc, cur);
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_STMNT_DO);
    addTok(s, kw);
    addSntx(s, block);
    addTok(s, whileKw);
    addSntx(s, cond);
    return s;
}

//S13b/S13d: "[alias.]Type.Case [ ( sub-pattern {, sub-pattern} ) ]" - a case of an enum, and what its payload must
//hold. Committed to only when everything before the last name is a known type (the test a choice value's own
//syntax makes), so "Point(1, 2)", "lib.f(x)" and "v.m(1)" stay calls, and only when every position parses as a
//sub-pattern: anything else is read as an ordinary expression case, compared by "==" (S13).
static struct syntax* parseSubPattern(SyntaxCtx sc);
bool trailingWordFollowsKnownType(SyntaxCtx sc, struct syntax* name);
struct syntax* parseExprUnary(SyntaxCtx sc);
struct syntax* parseCasePattern(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct syntax* name = parseName(sc);
    if (!name || !trailingWordFollowsKnownType(sc, name)) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_CASE_PATTERN);
    addSntx(s, name);
    struct token open = acceptTok(sc, TOK_PAREN_O);
    if (open.type == TOK_NONE) return s; //the case whatever its payload holds
    addTok(s, open);
    while (peekTok(sc).type != TOK_PAREN_C) {
        struct syntax* sub = parseSubPattern(sc);
        if (!sub) return parseFail(sc, cur);
        addSntx(s, sub);
        struct token comma = acceptTok(sc, TOK_COMMA);
        if (comma.type == TOK_NONE) break;
        addTok(s, comma);
    }
    struct token close = acceptTok(sc, TOK_PAREN_C);
    if (close.type == TOK_NONE) return parseFail(sc, cur);
    addTok(s, close);
    return s;
}

//S13d: a literal, possibly negated - nothing else is a value in a payload pattern, so no name ever is
static bool isLiteralUnary(struct syntax* u) {
    if (u->type != SNTX_EXPR_UNARY || u->parts.len < 1 || u->parts.len > 2) return false;
    struct syntaxPart* p = ListGetIdx(&u->parts, u->parts.len - 1);
    if (p->isToken || p->sntx->type != SNTX_EXPR_POSTFIX || p->sntx->parts.len != 1) return false;
    p = ListGetIdx(&p->sntx->parts, 0);
    if (p->isToken || p->sntx->type != SNTX_EXPR_PRIMARY || p->sntx->parts.len != 1) return false;
    p = ListGetIdx(&p->sntx->parts, 0);
    if (!p->isToken) return false;
    enum tokenType lit = p->tok.type;
    if (u->parts.len == 1) {
        return lit == TOK_BOOL_LIT || lit == TOK_NULL_LIT || lit == TOK_INT_LIT || lit == TOK_FLOAT_LIT
               || lit == TOK_CHAR_LIT || lit == TOK_STR_LIT;
    }
    struct syntaxPart* op = ListGetIdx(&u->parts, 0);
    if (op->isToken || op->sntx->type != SNTX_EXPR_UNARY_OP) return false;
    return ((struct syntaxPart*)ListGetIdx(&op->sntx->parts, 0))->tok.type == TOK_SUB
           && (lit == TOK_INT_LIT || lit == TOK_FLOAT_LIT);
}

//S13b/S13d: one position of a payload pattern, which must be followed by "," or ")": a name binding the field ("_"
//binding nothing), a nested enum case, or a literal
static struct syntax* parseSubPattern(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct syntax* s = NULL;
    if (peekTok(sc).type == TOK_IDEN) {
        s = parseCasePattern(sc);
        if (!s) {
            struct token iden = acceptTok(sc, TOK_IDEN);
            s = newNode(SNTX_PAT_BIND);
            addTok(s, iden);
            ListAdd(&sc->localNames, &iden.str); //S8b: a payload binding is a local
        }
    } else {
        struct syntax* u = parseExprUnary(sc);
        if (u && isLiteralUnary(u)) {
            struct syntax* e = newNode(SNTX_EXPR);
            addSntx(e, u);
            s = newNode(SNTX_PAT_VALUE);
            addSntx(s, e);
        }
    }
    enum tokenType next = peekTok(sc).type;
    if (!s || (next != TOK_COMMA && next != TOK_PAREN_C)) return parseFail(sc, cur);
    return s;
}

//S12b: what a case or nomatch does - a block, or "=> expr" giving a match used as a value its value. The value runs
//to the end of its line (a statement end after it is taken here) or to the next clause; which of the two a match
//accepts is the checker's to say, so a stray "=>" in a statement is reported as what it is
static struct syntax* parseCaseBody(SyntaxCtx sc) {
    struct token arrow = acceptTok(sc, TOK_ARROW);
    if (arrow.type == TOK_NONE) return parseBlock(sc);
    int cur = TokenGetCursor(sc->tc);
    struct syntax* e = parseExpr(sc);
    if (!e) return parseFail(sc, cur);
    acceptTok(sc, TOK_STMNT_END);
    struct syntax* v = newNode(SNTX_CASE_VALUE);
    addTok(v, arrow);
    addSntx(v, e);
    return v;
}

//"case alt {, alt} [if guard] block". A type match (G13) writes types where a value match writes values, so
//when the enclosing match's operand was a type variable the alternatives are parsed as type expressions - the
//flag is passed down rather than guessed here, since "case I32" is a perfectly good expression shape too (a bare
//name) and only the operand can settle which reading is meant.
//S13c: each alternative is a pattern (S13b) or a value; a value is an expression with no top-level conditional
//(E28), so the "if" of a guard (S13e) is never read as one - the comprehension filter's rule. A pattern must be
//followed by what can follow an alternative, or it is read as an expression after all.
struct syntax* parseStmntCaseKind(SyntaxCtx sc, bool typeMatch) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_CASE);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_STMNT_CASE);
    addTok(s, kw);
    while (true) {
        struct syntax* alt = NULL;
        if (typeMatch) alt = parseTypeExpr(sc);
        else {
            int at = TokenGetCursor(sc->tc);
            alt = parseCasePattern(sc);
            enum tokenType next = peekTok(sc).type;
            if (alt && next != TOK_COMMA && next != TOK_IF && next != TOK_CURLY_O && next != TOK_ARROW) {
                TokenSetCursor(sc->tc, at);
                alt = NULL;
            }
            if (!alt) alt = parseExprNoCond(sc);
        }
        if (!alt) return parseFail(sc, cur);
        addSntx(s, alt);
        struct token comma = acceptTok(sc, TOK_COMMA);
        if (comma.type == TOK_NONE) break;
        addTok(s, comma);
    }
    struct token ifKw = acceptTok(sc, TOK_IF);
    if (ifKw.type != TOK_NONE) {
        struct syntax* cond = parseExpr(sc);
        if (!cond) return parseFail(sc, cur);
        struct syntax* g = newNode(SNTX_CASE_GUARD);
        addTok(g, ifKw);
        addSntx(g, cond);
        addSntx(s, g);
    }
    struct syntax* body = parseCaseBody(sc);
    if (!body) return parseFail(sc, cur);
    addSntx(s, body);
    return s;
}

struct syntax* parseStmntNomatch(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_NOMATCH);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* block = parseCaseBody(sc);
    if (!block) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_STMNT_NOMATCH);
    addTok(s, kw);
    addSntx(s, block);
    return s;
}

//S12/S12b: one parser for both uses - a statement, or (asValue) an expression whose node is SNTX_EXPR_MATCH
static struct syntax* parseMatch(SyntaxCtx sc, bool asValue);
struct syntax* parseStmntMatch(SyntaxCtx sc) { return parseMatch(sc, false); }
static struct syntax* parseMatch(SyntaxCtx sc, bool asValue) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_MATCH);
    if (kw.type == TOK_NONE) return NULL;
    //"match <T>" (G13) - the operand is a type variable, not a value. Unambiguous: "<" never opens an
    //expression, so seeing one here settles that this is a type match and that the cases are types too.
    struct syntax* typeOperand = parseTypeVar(sc);
    struct syntax* val = typeOperand ? typeOperand : parseExpr(sc);
    if (!val) return parseFail(sc, cur);
    struct token open = acceptTok(sc, TOK_CURLY_O);
    if (open.type == TOK_NONE) return parseFail(sc, cur);
    struct syntax* s = newNode(asValue ? SNTX_EXPR_MATCH : SNTX_STMNT_MATCH);
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
    if (close.type == TOK_NONE) return parseFail(sc, cur);
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
        if (!val) return parseFail(sc, cur);
        addSntx(s, val);
    }
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
    return s;
}

//S20: "{ ... }" as a statement - a block of its own, whose scope (and memory) ends at its "}". No expression begins with
//"{", so a statement that does is one
struct syntax* parseStmntBlock(SyntaxCtx sc) {
    if (peekTok(sc).type != TOK_CURLY_O) return NULL;
    struct syntax* block = parseBlock(sc);
    if (!block) return NULL;
    struct syntax* s = newNode(SNTX_STMNT_BLOCK);
    addSntx(s, block);
    return s;
}

//P1: "join { ... }" - an ordinary block, which happens to wait at its end for every task spawned in it
struct syntax* parseStmntJoin(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_JOIN);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* block = parseBlock(sc);
    if (!block) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_STMNT_JOIN);
    addTok(s, kw);
    addSntx(s, block);
    return s;
}

//P1: "spawn <call>" - one task: a call, whose arguments are what the task is handed, or a lambda (D16e), whose
//captures are
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
    if (!call) return parseFail(sc, cur);
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_STMNT_SPAWN);
    addTok(s, kw);
    for (int i = 0; i < targets.len; i++) addSntx(s, *(struct syntax**)ListGetIdx(&targets, i));
    addSntx(s, call);
    return s;
}

//S19: "defer { ... }" or "defer STATEMENT". The second is the first holding one statement, so both reach the
//checker as a block: what is deferred is always a block, run as one nested in the block the defer is in.
struct syntax* parseStmntDefer(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_DEFER);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* block = parseBlock(sc);
    if (!block) {
        struct syntax* stmt = parseStmnt(sc);
        if (!stmt) return parseFail(sc, cur);
        block = newNode(SNTX_BLOCK);
        addSntx(block, stmt);
    }
    struct syntax* s = newNode(SNTX_STMNT_DEFER);
    addTok(s, kw);
    addSntx(s, block);
    return s;
}

//S11: bare statements, the same shape as done/fail. Whether they sit inside a loop is a semantic
//question (buildBreakStmnt), not a grammatical one.
struct syntax* parseStmntBreak(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_BREAK);
    if (kw.type == TOK_NONE) return NULL;
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_STMNT_BREAK);
    addTok(s, kw);
    return s;
}

struct syntax* parseStmntContinue(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_CONTINUE);
    if (kw.type == TOK_NONE) return NULL;
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_STMNT_CONTINUE);
    addTok(s, kw);
    return s;
}

//S16c/S16d: bare statements, the same shape as done/fail
struct syntax* parseStmntAbort(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_ABORT);
    if (kw.type == TOK_NONE) return NULL;
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_STMNT_ABORT);
    addTok(s, kw);
    return s;
}

struct syntax* parseStmntUnreachable(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_UNREACHABLE);
    if (kw.type == TOK_NONE) return NULL;
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_STMNT_UNREACHABLE);
    addTok(s, kw);
    return s;
}

struct syntax* parseStmntDone(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_DONE);
    if (kw.type == TOK_NONE) return NULL;
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_STMNT_DONE);
    addTok(s, kw);
    return s;
}

struct syntax* parseStmntFail(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_FAIL);
    if (kw.type == TOK_NONE) return NULL;
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
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
    if (!val) return parseFail(sc, cur);
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_STMNT_ASSERT);
    addTok(s, kw);
    addSntx(s, val);
    return s;
}

//"error TYPE.word" (same-module) or "error alias...TYPE.word" (cross-module, through an alias chain of
//any length, originating a foreign module's own error type directly - see the report) - always ends in
//exactly "TYPE.word" (never a bare type alone), so every identifier before the last two is unambiguously
//an alias hop, unlike a catch clause's own "TYPE.word"/"alias.TYPE" ambiguity. A bare "error", with no
//operand at all, raises the default error (R16) - a separate, simpler shape entirely, so it's tried first.
struct syntax* parseStmntError(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_ERROR);
    if (kw.type == TOK_NONE) return NULL;
    struct token first = acceptTok(sc, TOK_IDEN);
    if (first.type == TOK_NONE) {
        struct syntax* bare = newNode(SNTX_STMNT_ERROR);
        addTok(bare, kw);
        if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
        return bare;
    }
    struct token dot1 = acceptTok(sc, TOK_DOT);
    if (dot1.type == TOK_NONE) return parseFail(sc, cur);
    struct token second = acceptTok(sc, TOK_IDEN);
    if (second.type == TOK_NONE) return parseFail(sc, cur);
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
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
    return s;
}

//"IDEN (DOT IDEN)*" - an alias chain of any length, then either a whole TYPE or a TYPE.word; which
//trailing shape it is (and where the alias chain actually ends) gets disambiguated later, in semantic
//analysis (resolveCatchAliasChain - an import alias and an error type live in different namespaces, see
//the report), not here - this grammar rule just commits to any dotted chain unconditionally.
struct syntax* parseCatchErr(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
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
    if (kw.type == TOK_NONE) return parseFail(sc, cur);
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
            if (!d) return parseFail(sc, cur);
            addSntx(s, d);
        } while (listOk && acceptTok(sc, TOK_COMMA).type != TOK_NONE);
    }
    if (!block && dkw.type == TOK_NONE) return parseFail(sc, cur);
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
    if (!primary) return parseFail(sc, cur);
    struct syntax* clause = parseCatchClause(sc, false);
    if (!clause) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_STMNT_TRY_CATCH);
    addTok(s, kw);
    addSntx(s, primary);
    do addSntx(s, clause); while ((clause = parseCatchClause(sc, false))); //R9b: clauses, tried in order
    return s;
}

//an increment written as a whole expression: "x++" (a postfix ending in the operator) or "++x" (a unary starting with it)
static bool syntaxIsIncDec(struct syntax* n) {
    while (n->parts.len == 1 && !((struct syntaxPart*)ListGetIdx(&n->parts, 0))->isToken)
        n = ((struct syntaxPart*)ListGetIdx(&n->parts, 0))->sntx;
    if (n->parts.len < 2) return false;
    struct syntaxPart* last = ListGetIdx(&n->parts, n->parts.len - 1);
    if (n->type == SNTX_EXPR_POSTFIX) return last->isToken && (last->tok.type == TOK_INC || last->tok.type == TOK_DEC);
    if (n->type == SNTX_EXPR_UNARY && n->parts.len == 2) {
        struct syntaxPart* op = ListGetIdx(&n->parts, 0);
        if (op->isToken || op->sntx->parts.len != 1) return false;
        struct syntaxPart* t = ListGetIdx(&op->sntx->parts, 0);
        return t->isToken && (t->tok.type == TOK_INC || t->tok.type == TOK_DEC);
    }
    return false;
}

//E31: "try" before an assignment or an increment checks the statement as "try (...)" checks an expression - the
//store, the value and the operator it implies - with catch clauses, as a try-catch statement has, after it
struct syntax* parseStmntTryStore(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct token kw = acceptTok(sc, TOK_TRY);
    if (kw.type == TOK_NONE) return NULL;
    struct syntax* inner = NULL;
    int at = TokenGetCursor(sc->tc);
    struct syntax* lhs = parseExprPostfix(sc);
    struct syntax* op = lhs ? parseAssignOp(sc) : NULL;
    struct syntax* rhs = op ? parseExpr(sc) : NULL;
    if (rhs) {
        inner = newNode(SNTX_STMNT_ASSIGN);
        addSntx(inner, lhs);
        addSntx(inner, op);
        addSntx(inner, rhs);
    } else {
        TokenSetCursor(sc->tc, at);
        struct syntax* e = parseExpr(sc);
        if (!e || !syntaxIsIncDec(e)) return parseFail(sc, cur);
        inner = e;
    }
    struct syntax* s = newNode(SNTX_STMNT_TRY_STORE);
    addTok(s, kw);
    addSntx(s, inner);
    struct syntax* clause;
    while ((clause = parseCatchClause(sc, false))) addSntx(s, clause);
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
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
    struct list names = ListInit(sizeof(struct str));
    int n = 0;
    do {
        //S8b: a target that is a bare name may be a new local - once this turns out to be a destructuring
        int at = TokenGetCursor(sc->tc);
        struct token first = TokenFeed(sc->tc);
        TokenSetCursor(sc->tc, at);
        if (first.type == TOK_IDEN) ListAdd(&names, &first.str);
        struct syntax* t = parseExprPostfix(sc);
        if (!t) return parseFail(sc, cur);
        addSntx(s, t);
        n++;
    } while (acceptTok(sc, TOK_COMMA).type != TOK_NONE);
    if (n < 2) return parseFail(sc, cur);
    struct token op = acceptTok(sc, TOK_ASS_INFER);
    if (op.type == TOK_NONE) op = acceptTok(sc, TOK_ASS);
    if (op.type == TOK_NONE) return parseFail(sc, cur);
    addTok(s, op);
    sc->defaultListAt = TokenGetCursor(sc->tc);
    struct syntax* rhs = parseExpr(sc);
    sc->defaultListAt = -1;
    if (!rhs) return parseFail(sc, cur);
    addSntx(s, rhs);
    //S4c: or one value per target - "a, b = b, a"
    while (acceptTok(sc, TOK_COMMA).type != TOK_NONE) {
        struct syntax* more = parseExpr(sc);
        if (!more) return parseFail(sc, cur);
        addSntx(s, more);
    }
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
    for (int i = 0; i < names.len; i++) ListAdd(&sc->localNames, ListGetIdx(&names, i));
    return s;
}

//D12b as a statement (a local) or a top-level declaration (globals)
static struct syntax* parseMultiDeclStmnt(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct syntax* s = parseMultiDecl(sc, SNTX_VAR_DECL);
    if (!s) return NULL;
    if (!acceptStmntEnd(sc)) return parseFail(sc, cur);
    return s;
}

//the statement forms, in the order they are tried. Each is tried through attempt(), so a form that fails costs
//nothing but the time; the expression several of them begin with is read only once (parseExprPostfix's memo)
static struct syntax* (*const stmntForms[])(SyntaxCtx) = {
    parseStmntDestruct, parseMultiDeclStmnt, parseVarDecl, parseStmntTryStore, parseStmntAssign, parseStmntIf,
    parseStmntFor, parseStmntDo, parseStmntMatch, parseStmntRet, parseStmntJoin, parseStmntBlock, parseStmntSpawn, parseStmntDefer,
    parseStmntBreak, parseStmntContinue, parseStmntAbort, parseStmntUnreachable, parseStmntDone, parseStmntFail,
    parseStmntAssert, parseStmntError, parseStmntTryCatch, parseStmntExpr,
};

struct syntax* parseStmnt(SyntaxCtx sc) {
    struct syntax* inner = NULL;
    for (size_t i = 0; !inner && i < sizeof(stmntForms) / sizeof(stmntForms[0]); i++) inner = attempt(sc, stmntForms[i]);
    if (!inner) return NULL;
    struct syntax* s = newNode(SNTX_STMNT);
    addSntx(s, inner);
    return s;
}

static struct syntax* parseBlockUncached(SyntaxCtx sc) {
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
    if (close.type == TOK_NONE) return parseFail(sc, cur);
    addTok(s, close);
    return s;
}

//a block is read once wherever it is (see struct memoSlot) - the body of a lambda or a catch clause is reached by every
//reading of the statement around it
struct syntax* parseBlock(SyntaxCtx sc) {
    if (peekTok(sc).type != TOK_CURLY_O) { acceptTok(sc, TOK_CURLY_O); return NULL; } //records what was expected
    if (!nestEnter(sc, 1)) return NULL;
    struct syntax* s = memoized(sc, &sc->blockMemo, parseBlockUncached);
    sc->depth--;
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
        if (trailingComma(sc, comma, TOK_PAREN_C)) break; //L18a
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
    if (close.type == TOK_NONE) return parseFail(sc, cur);
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
    //R9a: decided before the operand is read - a return statement inside it (in a lambda) resets defaultListAt
    bool listOk = cur == sc->defaultListAt;
    //a POSTFIX expression, not just a primary: a call is parsed inside the primary, but a slice
    //("try buf[2:n]", E16c) is a postfix on one, and with only the primary consumed here the "[...]" was
    //left to attach OUTSIDE the try - so the try saw a bare variable and rejected it.
    struct syntax* operand = parseExprPostfix(sc);
    if (!operand) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_EXPR_TRY);
    addTok(s, kw);
    addSntx(s, operand);
    //R9a: a default is a UNARY expression, binding as tightly as the try itself (a primary), so
    //"try f() catch default 0 == 3" compares the result; a compound default is parenthesized. Several are
    //taken only where the try is the whole value of a destructuring or a return (defaultListAt).
    //R9b: "try X catch ... [catch ...]" - clauses in value position, each ending by leaving or with a
    //default of its own. A default written straight after the operand was R9a's catch-everything shorthand,
    //now spelled "catch default d"; it is still parsed so the checker can name the replacement.
    struct token dkw = acceptTok(sc, TOK_DEFAULT);
    if (dkw.type != TOK_NONE) {
        addTok(s, dkw);
        do {
            struct syntax* d = parseExprUnary(sc);
            if (!d) return parseFail(sc, cur);
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
    if (close.type == TOK_NONE) return parseFail(sc, cur);
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
        if (trailingComma(sc, comma, TOK_SQUARE_C)) break; //L18a
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
    static const char* names[] = { "Bool", "I8", "I16", "I32", "I64", "U8", "U16", "U32", "U64", "F16", "BF16", "F32", "F64" };
    for (size_t i = 0; i < sizeof(names) / sizeof(names[0]); i++) if (StrCmp(n, StrFromCStr((char*)names[i]))) return true;
    return false;
}

//"NAME [ ARR_LIT_ARGS ]" - array literal tail. `name` is already parsed and confirmed by the caller
//(parseExprPrimary) to be a known type or a primitive name before this is ever reached - see the report
//for why that's what makes this safe to commit to hard, the same reasoning choice values
//rely on: without it, "NAME [ ARR_LIT_ARGS ]" is structurally identical to ordinary indexing
//("variable[index]"), since this grammar (unlike the old suffix-then-args shape) is always exactly one
//bracket group - type-name-awareness is now load-bearing here, not just a convenience.
struct syntax* parseArrayLiteralTail(SyntaxCtx sc, struct syntax* name, struct token open) {
    struct syntax* args = parseArrLiteralArgs(sc);
    //E27: one item followed by "for" is a comprehension - "Int32[x * 2 for x in a if x > 3]"
    struct syntax* compr = NULL;
    if (args->parts.len == 1 && peekTok(sc).type == TOK_FOR) {
        compr = parseComprehensionClause(sc);
        if (!compr) return NULL;
    }
    struct token close = acceptTok(sc, TOK_SQUARE_C);
    if (close.type == TOK_NONE) return NULL;
    struct syntax* s = newNode(SNTX_EXPR_LITERAL);
    addSntx(s, name);
    addTok(s, open);
    addSntx(s, args);
    if (compr) addSntx(s, compr);
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
    if (!sig) return parseFail(sc, cur);
    struct syntax* block = parseBlock(sc);
    if (!block) return parseFail(sc, cur);
    struct syntax* s = newNode(SNTX_LAMBDA);
    addTok(s, kw);
    addSntx(s, sig);
    addSntx(s, block);
    return s;
}

struct syntax* parseExprPrimary(SyntaxCtx sc) {
    int start = TokenGetCursor(sc->tc);
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
        case TOK_MATCH: { //S12b: a match used as a value
            struct syntax* m = parseMatch(sc, true);
            if (!m) return NULL;
            struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
            addSntx(s, m);
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
            if (!e) return parseFail(sc, cur);
            struct token close = acceptTok(sc, TOK_PAREN_C);
            if (close.type == TOK_NONE) return parseFail(sc, cur);
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
                int mark = TokenEditMark(sc->tc);
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
                        TokenEditRewind(sc->tc, mark);
                        return parseFail(sc, start);
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
                        TokenEditRewind(sc->tc, mark);
                        return parseFail(sc, start);
                    }
                }
                TokenSetCursor(sc->tc, save);
                TokenEditRewind(sc->tc, mark); //"a < B >> c": the ">>" a type-argument list split is a shift again
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
                    return parseFail(sc, start);
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
                return parseFail(sc, start);
            }
            TokenSetCursor(sc->tc, save);
            struct token bare = advanceTok(sc);
            struct syntax* s = newNode(SNTX_EXPR_PRIMARY);
            addTok(s, bare);
            return s;
        }
        default: {
            //recorded as acceptTok records - just past the token it failed on - so it competes fairly with the
            //other alternatives' failures for the furthest one
            int cur = TokenGetCursor(sc->tc);
            TokenFeed(sc->tc);
            //E27/E4: an array literal or a comprehension states its element type before the "["
            recordFurthestError(sc, t, t.type == TOK_SQUARE_O ? "an element type before the [, as in I32[...]" : "an expression");
            TokenSetCursor(sc->tc, cur);
            return NULL;
        }
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
        if (!lo) return parseFail(sc, cur);
        struct token close = acceptTok(sc, TOK_SQUARE_C);
        if (close.type == TOK_NONE) return parseFail(sc, cur);
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
    if (close.type == TOK_NONE) return parseFail(sc, cur);
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
    if (iden.type == TOK_NONE) return parseFail(sc, cur);
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

static struct syntax* parseExprPostfixUncached(SyntaxCtx sc) {
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

//the operand every statement form and every operator starts by reading, so it is read once per position (struct
//memoSlot) - except where a try there may take several defaults, the one reading that depends on where it is
struct syntax* parseExprPostfix(SyntaxCtx sc) {
    if (!nestEnter(sc, 1)) return NULL;
    struct syntax* s = TokenGetCursor(sc->tc) == sc->defaultListAt ? attempt(sc, parseExprPostfixUncached)
                       : memoized(sc, &sc->postfixMemo, parseExprPostfixUncached);
    sc->depth--;
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
//undecoded) is concatenated between one pair of quotes, which decodes exactly as the two did apart. The joined literal
//is a node of its own: the pieces' nodes are remembered by position (struct memoSlot) and are never changed
static struct syntax* joinStrLit(struct token a, struct token next) {
    int n = a.str.len - 2 + next.str.len - 2;
    char* buf = MallocOrCrash((size_t)n + 3);
    buf[0] = '"';
    memcpy(buf + 1, a.str.ptr + 1, (size_t)a.str.len - 2);
    memcpy(buf + 1 + a.str.len - 2, next.str.ptr + 1, (size_t)next.str.len - 2);
    buf[n + 1] = '"';
    buf[n + 2] = '\0';
    a.str = Str(buf, n + 2);
    struct syntax* primary = newNode(SNTX_EXPR_PRIMARY);
    addTok(primary, a);
    struct syntax* postfix = newNode(SNTX_EXPR_POSTFIX);
    addSntx(postfix, primary);
    struct syntax* u = newNode(SNTX_EXPR_UNARY);
    addSntx(u, postfix);
    return u;
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
        struct syntax** last = ListGetIdx(&pieces, pieces.len - 1);
        struct syntaxPart* lastLit = bareStrLit(*last);
        struct syntaxPart* nextLit = bareStrLit(next);
        if (lastLit && nextLit) { *last = joinStrLit(lastLit->tok, nextLit->tok); continue; }
        ListAdd(&pieces, &next);
    }
    if (pieces.len == 1) return *(struct syntax**)ListGetIdx(&pieces, 0);
    struct syntax* s = newNode(SNTX_EXPR_TEXT);
    for (int i = 0; i < pieces.len; i++) addSntx(s, *(struct syntax**)ListGetIdx(&pieces, i));
    return s;
}

static struct syntax* parseExprUnaryOne(SyntaxCtx sc) {
    int cur = TokenGetCursor(sc->tc);
    struct list ops = ListInit(sizeof(struct token));
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token t = TokenFeed(sc->tc);
        if (!isUnaryOpTok(t.type)) { TokenSetCursor(sc->tc, before); break; }
        ListAdd(&ops, &t);
    }
    struct syntax* postfix = parseExprPostfix(sc);
    if (!postfix) return parseFail(sc, cur); //the operators too: "f(-)" is not "f()"
    //E32: "x as T" binds as tightly as a postfix - "(s as Circle&).r" - and a prefix operator applies to its result
    while (peekTok(sc).type == TOK_AS) {
        int before = TokenGetCursor(sc->tc);
        struct token asTok = TokenFeed(sc->tc);
        struct syntax* t = parseTypeExpr(sc);
        if (!t) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* a = newNode(SNTX_EXPR_AS);
        addSntx(a, postfix);
        addTok(a, asTok);
        addSntx(a, t);
        struct syntax* wrap = newNode(SNTX_EXPR_POSTFIX);
        addSntx(wrap, a);
        postfix = wrap;
    }
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
        case TOK_LST: case TOK_LSE: case TOK_GRT: case TOK_GRE: case TOK_IN: return 8; //E29: "in" beside them
        case TOK_BTSFT_L: case TOK_BTSFT_R: return 9;
        case TOK_ADD: case TOK_SUB: return 10;
        case TOK_MUL: case TOK_DIV: case TOK_MOD: case TOK_AT: return 11; //E31: "@" beside "*"
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
    if (!nestEnter(sc, 1)) return parseFail(sc, cur);
    struct syntax* operand = parseBinaryExpr(sc, NOT_OPERAND_PREC);
    sc->depth--;
    if (!operand) return parseFail(sc, cur);
    struct syntax* opNode = newNode(SNTX_EXPR_UNARY_OP);
    addTok(opNode, t);
    struct syntax* s = newNode(SNTX_EXPR_UNARY);
    addSntx(s, opNode);
    addSntx(s, operand);
    return s;
}

//E10c/E32: whether the type-ref read after "is" is one - a name that is a known type, a case of one ("Shape.Circle"),
//a primitive or "Array", or anything that is no plain name. A plain name that is none of those is a value, and the
//right side is read again as an expression: a local never shares a type's name (D3a), so the two never meet
static bool isRightNamesType(SyntaxCtx sc, struct syntax* t) {
    if (t->parts.len != 1) return true; //"mut T"
    struct syntaxPart* inner = ListGetIdx(&t->parts, 0);
    if (inner->isToken || inner->sntx->type != SNTX_TYPE_REF) return true;
    struct syntaxPart* head = ListGetIdx(&inner->sntx->parts, 0);
    if (head->isToken || head->sntx->type != SNTX_NAME) return true; //"<T>"
    struct syntax* name = head->sntx;
    if (name->parts.len == 1 && StrCmp(((struct syntaxPart*)ListGetIdx(&name->parts, 0))->tok.str, StrFromCStr("Array"))) return true;
    return nameIsPrimitiveTypeName(name) || nameIsKnownType(sc, name) || trailingWordFollowsKnownType(sc, name);
}

struct syntax* parseBinaryExpr(SyntaxCtx sc, int minPrec) {
    int start = TokenGetCursor(sc->tc);
    struct syntax* left = parseNotOrUnary(sc);
    if (!left) return NULL;
    int links = 0; //each operator applied makes the tree on the left one level deeper (MAX_NESTING)
    while (true) {
        int before = TokenGetCursor(sc->tc);
        struct token opTok = TokenFeed(sc->tc);
        //E29: "not in" - the one operator spelled with two words; "not" anywhere else after an operand ends it
        struct token notTok = (struct token){0};
        if (opTok.type == TOK_NOT && peekTok(sc).type == TOK_IN) { notTok = opTok; opTok = TokenFeed(sc->tc); }
        //E32/E10c: "x is T" - at the comparisons' level. What follows names a type or a case of one (E32), or is a
        //value, and "a is b" asks whether two references name one instance; "is not" negates either
        if (opTok.type == TOK_IS) {
            if (8 < minPrec) { TokenSetCursor(sc->tc, before); break; }
            struct token notTok = acceptTok(sc, TOK_NOT);
            int rhs = TokenGetCursor(sc->tc);
            int mark = TokenEditMark(sc->tc);
            struct syntax* t = parseTypeExpr(sc);
            if (t && !isRightNamesType(sc, t)) {
                TokenSetCursor(sc->tc, rhs);
                TokenEditRewind(sc->tc, mark);
                t = NULL;
            }
            struct syntax* r = t ? t : parseBinaryExpr(sc, 9);
            if (!r) { TokenSetCursor(sc->tc, before); break; }
            struct syntax* is = newNode(t ? SNTX_EXPR_IS : SNTX_EXPR_IS_SAME);
            addSntx(is, left);
            addTok(is, opTok);
            addSntx(is, r);
            if (notTok.type != TOK_NONE) { //"a is not b" is "not (a is b)", built as that
                struct syntax* opNode = newNode(SNTX_EXPR_UNARY_OP);
                addTok(opNode, notTok);
                struct syntax* u = newNode(SNTX_EXPR_UNARY);
                addSntx(u, opNode);
                addSntx(u, is);
                is = u;
            }
            left = is;
            if (!nestEnter(sc, 1)) { sc->depth -= links; return parseFail(sc, start); }
            links++;
            continue;
        }
        int prec = binOpPrecedence(opTok.type);
        if (prec == 0 || prec < minPrec) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* right = parseBinaryExpr(sc, prec + 1); //left-assoc: recurse tighter, not equal
        if (!right) { TokenSetCursor(sc->tc, before); break; }
        struct syntax* bin = newNode(SNTX_EXPR_BINARY);
        addSntx(bin, left);
        if (notTok.type != TOK_NONE) addTok(bin, notTok);
        addTok(bin, opTok);
        addSntx(bin, right);
        left = bin;
        if (!nestEnter(sc, 1)) { sc->depth -= links; return parseFail(sc, start); }
        links++;
    }
    sc->depth -= links;
    return left;
}

//an expression with no top-level "a if c else b" - what a comprehension takes after "in" and after "if", where an
//"if" belongs to the comprehension (E27); a conditional there is written in parentheses
struct syntax* parseExprNoCond(SyntaxCtx sc) {
    struct syntax* inner = parseBinaryExpr(sc, 1);
    if (!inner) return NULL;
    struct syntax* s = newNode(SNTX_EXPR);
    addSntx(s, inner);
    return s;
}

//E28: "value if cond else other" - looser than every operator, and grouping to the right, so "a if c else b if d
//else e" is "a if c else (b if d else e)". An "if" with no "else" after its condition is not one, and is left
//to whatever follows the expression (a comprehension's filter)
struct syntax* parseExpr(SyntaxCtx sc) {
    struct syntax* inner = parseBinaryExpr(sc, 1);
    if (!inner) return NULL;
    int before = TokenGetCursor(sc->tc);
    struct token ifKw = acceptTok(sc, TOK_IF);
    if (ifKw.type != TOK_NONE) {
        struct syntax* cond = parseBinaryExpr(sc, 1);
        struct token elseKw = cond ? acceptTok(sc, TOK_ELSE) : (struct token){0};
        struct syntax* other = elseKw.type != TOK_NONE ? parseExpr(sc) : NULL;
        if (other) {
            struct syntax* c = newNode(SNTX_EXPR_COND);
            addSntx(c, inner);
            addTok(c, ifKw);
            addSntx(c, cond);
            addTok(c, elseKw);
            addSntx(c, other);
            struct syntax* s = newNode(SNTX_EXPR);
            addSntx(s, c);
            return s;
        }
        TokenSetCursor(sc->tc, before);
    }
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
    else if ((inner = parseMultiDeclStmnt(sc))) {}
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


static bool isIdentText(const char* p) {
    if (!*p || !((*p >= 'a' && *p <= 'z') || (*p >= 'A' && *p <= 'Z') || *p == '_')) return false;
    for (; *p; p++) if (!((*p >= 'a' && *p <= 'z') || (*p >= 'A' && *p <= 'Z') || (*p >= '0' && *p <= '9') || *p == '_')) return false;
    return true;
}

static bool literalIntValue(const char* text, int len, long long* out, bool* isU64);

//L10b: a run of digits of one radix, each "_" followed by another digit; returns how many digits, or -1 for a misplaced
//separator, and leaves *p past the run
static int buildDigitRun(const char** p, bool (*isRadix)(char)) {
    int n = 0;
    while (true) {
        if (isRadix(**p)) { n++; (*p)++; continue; }
        if (**p != '_') return n;
        while (**p == '_') (*p)++;
        if (!isRadix(**p)) return -1;
    }
}

static bool isDecDigit(char c) { return c >= '0' && c <= '9'; }
static bool isHexDigitChar(char c) { return isDecDigit(c) || (c >= 'a' && c <= 'f') || (c >= 'A' && c <= 'F'); }
static bool isBinDigitChar(char c) { return c == '0' || c == '1'; }

//B10: "true"/"false" is a Bool; text that is - after an optional "-" - a whole integer or float literal, as the lexer
//reads one (L10, L12), is that number; anything else, or anything in double quotes, is text. A value with a "0x" or
//"0b" prefix is always a number, and must be a valid one; a number must be one a literal can be - an integer no wider
//than 64 bits, a float that is not an infinity. DIAG_NONE when it is defined, or what is wrong
enum diag SyntaxDefineBuildConst(char* name, char* value, bool builtin) {
    buildConstsInit();
    if (!isIdentText(name) || !strcmp(name, "_")) return ERR_DEFINE_NOT_NAME;
    for (int i = 0; i < buildConsts.len; i++) {
        struct buildConst* b = ListGetIdx(&buildConsts, i);
        if ((int)strlen(name) == b->name.len && !strncmp(name, b->name.ptr, (size_t)b->name.len)) return ERR_DEFINE_TWICE;
    }
    struct buildConst b = (struct buildConst){0};
    b.name = StrFromCStr(name);
    b.builtin = builtin;
    size_t vl = strlen(value);
    bool neg = value[0] == '-';
    const char* digits = value + (neg ? 1 : 0);
    bool radix = digits[0] == '0' && (digits[1] == 'x' || digits[1] == 'X' || digits[1] == 'b' || digits[1] == 'B');
    bool isInt = false, isFloat = false;
    if (radix) {
        const char* p = digits + 2;
        int n = buildDigitRun(&p, digits[1] == 'x' || digits[1] == 'X' ? isHexDigitChar : isBinDigitChar);
        if (n <= 0 || *p) return ERR_DEFINE_BAD_NUMBER;
        isInt = true;
    } else if (isDecDigit(digits[0])) {
        const char* p = digits;
        bool ok = buildDigitRun(&p, isDecDigit) > 0;
        if (ok && *p == '.') { p++; ok = buildDigitRun(&p, isDecDigit) > 0; isFloat = true; }
        if (ok && (*p == 'e' || *p == 'E')) {
            p++;
            if (*p == '+' || *p == '-') p++;
            ok = buildDigitRun(&p, isDecDigit) > 0;
            isFloat = true;
        }
        if (ok && !*p) isInt = !isFloat;
        else isFloat = false; //not one whole literal ("1.2.3", "12abc"): text
    }
    char* clean = MallocOrCrash(vl + 1);
    size_t w = 0;
    for (size_t r = 0; r < vl; r++) if (value[r] != '_') clean[w++] = value[r];
    clean[w] = '\0';
    if (!strcmp(value, "true") || !strcmp(value, "false")) {
        b.kind = BUILD_BOOL;
        b.i = !strcmp(value, "true");
    } else if (isInt) {
        b.kind = BUILD_INT;
        long long v;
        bool u64;
        const char* lit = clean + (neg ? 1 : 0);
        //L10/T6a: a decimal value is at most U64's largest - above I64's maximum a U64 - and negated at least I64's most
        //negative; a "0x"/"0b" one is a bit pattern of at most 64 bits, read as an I64
        if (!literalIntValue(lit, (int)strlen(lit), &v, &u64)) return ERR_DEFINE_INT_RANGE;
        if (neg) {
            if (u64 && (unsigned long long)v == 9223372036854775808ULL) { v = LLONG_MIN; neg = false; u64 = false; }
            else if (u64 || v == LLONG_MIN) return ERR_DEFINE_NEG_RANGE;
        }
        b.i = neg ? -v : v;
        b.u64 = u64;
        char* canon = MallocOrCrash(32);
        if (u64) snprintf(canon, 32, "%llu", (unsigned long long)b.i);
        else snprintf(canon, 32, "%lld", b.i);
        b.text = StrFromCStr(canon); //the value, written as the build module's literal is read
    } else if (isFloat) {
        b.kind = BUILD_FLOAT;
        b.text = StrFromCStr(clean);
        b.f = strtod(clean, NULL);
        if (isinf(b.f)) return ERR_DEFINE_FLOAT_RANGE;
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
    return DIAG_NONE;
}

//B9a: the token evaluator. A condition it decides is decided exactly as the program would decide it, or not at all:
//anything whose value depends on a width it does not model - arithmetic that could leave its operands' type (which
//wraps, E6c), a global of a float type narrower than F64, a number of a declared type - is left to compile-time
//evaluation (B9c), which knows the types. So it computes integers exactly, in 64 bits with every overflow caught, and
//checks that every result fits the type the program computes it in.
struct condVal {
    enum buildConstKind kind;
    long long i;
    double f;
    struct str s;
    int bits;     //a number's type: its width, 0 for a literal-only value - a literal has no type of its own until
                  //something adapts it (T6); every float here is an F64 or such a literal
    bool uns;     //an integer's type is unsigned
    bool anyKind; //not evaluated - part of the side of an "and"/"or" its left had already decided (E7) - and of no
                  //kind this evaluator could tell; it satisfies every check on kinds
};

struct condCtx {
    TokenCtx tc;
    bool failed;
    struct token errTok;
    enum diag err; //what is wrong, about errTok
    int depth; //globals evaluated through other globals, to stop a cycle
    bool deferrable; //B9c: it failed on something compile-time evaluation can still decide - a call, or a
                     //global computed by one - rather than on something wrong
    struct list* locals; //S8b: names that are locals here, which no global or build constant can stand for
    bool usedBuild;      //S8a/S8b: it read a build constant, directly or through a global
    int skip;            //E7: inside the right side of an "and"/"or" whose left decided it, which never runs - only a
                         //mistake in how its values combine is reported there, and nothing it reads counts
};

//B9c: conditions decided by compile-time evaluation in an earlier attempt at this compilation, and the ones
//this attempt met undecided. Keyed by file and the token position just after "if", which re-tokenizing the
//same source reproduces exactly - and found through a hash of that key, since a module can hold thousands
static struct list condDecisions;
static struct list condPending;
static bool condTablesReady;
static int* condDecisionTable; //index + 1 into condDecisions, 0 empty; open addressing
static int condDecisionCap;
static void** condPendingKeys; //a pending condition's node, or NULL for an empty slot; open addressing
static int* condPendingIdx;
static int condPendingCap;

static void condTablesInit(void) {
    if (condTablesReady) return;
    condDecisions = ListInit(sizeof(struct condDecision));
    condPending = ListInit(sizeof(struct pendingCond));
    if (condPendingCap) memset(condPendingKeys, 0, sizeof(void*) * (size_t)condPendingCap);
    free(condDecisionTable);
    condDecisionTable = NULL;
    condDecisionCap = 0;
    condTablesReady = true;
}

static unsigned condDecisionHash(struct str file, int at) {
    unsigned h = 2166136261u;
    for (int i = 0; i < file.len; i++) h = (h ^ (unsigned char)file.ptr[i]) * 16777619u;
    return (h ^ (unsigned)at) * 2654435761u;
}

static void condDecisionIndex(int idx) {
    struct condDecision* d = ListGetIdx(&condDecisions, idx);
    unsigned m = (unsigned)condDecisionCap - 1;
    for (unsigned k = condDecisionHash(d->file, d->at) & m; ; k = (k + 1) & m) {
        if (!condDecisionTable[k]) { condDecisionTable[k] = idx + 1; return; }
    }
}

static void condDecisionAdd(struct condDecision d) {
    condTablesInit();
    ListAdd(&condDecisions, &d);
    if (condDecisions.len * 2 > condDecisionCap) {
        condDecisionCap = condDecisionCap ? condDecisionCap * 2 : 64;
        free(condDecisionTable);
        condDecisionTable = MallocOrCrash(sizeof(int) * (size_t)condDecisionCap);
        memset(condDecisionTable, 0, sizeof(int) * (size_t)condDecisionCap);
        for (int i = 0; i < condDecisions.len; i++) condDecisionIndex(i);
    } else {
        condDecisionIndex(condDecisions.len - 1);
    }
}

void SyntaxResetConditionDecisions(void) {
    condTablesReady = false;
    condTablesInit();
}

void SyntaxDecideCondition(struct str file, int at, bool value, enum diag err, char* reason) {
    condDecisionAdd((struct condDecision){ file, at, value, err, reason, err ? COND_ERROR : COND_VALUE });
}

void SyntaxDecideLocalCondition(struct str file, int at, enum condDecisionKind kind, bool value) {
    condDecisionAdd((struct condDecision){ file, at, value, DIAG_NONE, NULL, kind });
}

//the conditions met undecided are also found by their parsed node - the checker looks one up for every local if

static void condPendingIndex(int idx) {
    struct pendingCond* p = ListGetIdx(&condPending, idx);
    unsigned m = (unsigned)condPendingCap - 1;
    for (unsigned k = (unsigned)(((uintptr_t)p->cond >> 4) * 2654435761u) & m; ; k = (k + 1) & m) {
        if (!condPendingKeys[k]) { condPendingKeys[k] = p->cond; condPendingIdx[k] = idx; return; }
    }
}

static void condPendingAdd(struct pendingCond p) {
    condTablesInit();
    ListAdd(&condPending, &p);
    if (condPending.len * 2 > condPendingCap) {
        condPendingCap = condPendingCap ? condPendingCap * 2 : 64;
        free(condPendingKeys);
        free(condPendingIdx);
        condPendingKeys = MallocOrCrash(sizeof(void*) * (size_t)condPendingCap);
        condPendingIdx = MallocOrCrash(sizeof(int) * (size_t)condPendingCap);
        memset(condPendingKeys, 0, sizeof(void*) * (size_t)condPendingCap);
        for (int i = 0; i < condPending.len; i++) condPendingIndex(i);
    } else {
        condPendingIndex(condPending.len - 1);
    }
}

struct pendingCond* SyntaxPendingFor(struct syntax* cond) {
    if (!condPendingCap || !cond) return NULL;
    unsigned m = (unsigned)condPendingCap - 1;
    for (unsigned k = (unsigned)(((uintptr_t)cond >> 4) * 2654435761u) & m; condPendingKeys[k]; k = (k + 1) & m) {
        if (condPendingKeys[k] == cond) return ListGetIdx(&condPending, condPendingIdx[k]);
    }
    return NULL;
}

struct list* SyntaxPendingConditions(void) { condTablesInit(); return &condPending; }
void SyntaxClearPendingConditions(void) {
    condTablesInit();
    condPending = ListInit(sizeof(struct pendingCond));
    if (condPendingCap) memset(condPendingKeys, 0, sizeof(void*) * (size_t)condPendingCap);
}

static struct condDecision* condDecisionFor(TokenCtx tc, int at) {
    condTablesInit();
    if (!condDecisionCap) return NULL;
    struct str file = TokenGetFileName(tc);
    unsigned m = (unsigned)condDecisionCap - 1;
    for (unsigned k = condDecisionHash(file, at) & m; condDecisionTable[k]; k = (k + 1) & m) {
        struct condDecision* d = ListGetIdx(&condDecisions, condDecisionTable[k] - 1);
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

//a value no evaluation produced - what a failure leaves behind, of no kind any check could object to
static struct condVal condNone(void) {
    struct condVal v = (struct condVal){0};
    v.anyKind = true;
    return v;
}

//a mistake in the condition itself (values that do not combine, a cycle): reported wherever it is written
static struct condVal condFail(struct condCtx* c, struct token t, enum diag msg) {
    if (!c->failed) {
        c->failed = true;
        c->errTok = t;
        c->err = msg;
    }
    return condNone();
}

//a value this evaluator cannot know - it depends on a type's width, or on something it does not evaluate (a call, a
//computed global): decided by compile-time evaluation instead (B9c). Where it would never be read (E7), nothing.
static struct condVal condDefer(struct condCtx* c, struct token t) {
    if (c->skip) return condNone();
    if (!c->failed) c->deferrable = true;
    return condFail(c, t, ERR_COND_NAME);
}

//a value known only when the program runs - a local, a mutable global: a local condition reading one is an ordinary
//if, and a top-level one is wrong (B9a). Where it would never be read (E7), nothing.
static struct condVal condRuntime(struct condCtx* c, struct token t, enum diag msg) {
    if (c->skip) return condNone();
    return condFail(c, t, msg);
}

static struct token condPeek(struct condCtx* c) {
    int cur = TokenGetCursor(c->tc);
    struct token t = TokenFeed(c->tc);
    TokenSetCursor(c->tc, cur);
    return t;
}

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

//L10: an integer literal's value - a hexadecimal or binary one a bit pattern of up to 64 bits read as an I64 (L10a), a
//decimal one up to U64's largest, *isU64 set where it is above I64's maximum (a U64, T6a). False for one needing more than
//64 bits, which no type holds
static bool literalIntValue(const char* text, int len, long long* out, bool* isU64) {
    int i = 0;
    unsigned base = 10;
    if (len > 2 && text[0] == '0' && (text[1] == 'x' || text[1] == 'X')) { base = 16; i = 2; }
    else if (len > 2 && text[0] == '0' && (text[1] == 'b' || text[1] == 'B')) { base = 2; i = 2; }
    unsigned long long v = 0;
    int digits = 0;
    for (; i < len; i++) {
        char ch = text[i];
        if (ch == '_') continue;
        unsigned d = ch >= '0' && ch <= '9' ? (unsigned)(ch - '0') : ch >= 'a' && ch <= 'f' ? (unsigned)(ch - 'a' + 10)
                     : ch >= 'A' && ch <= 'F' ? (unsigned)(ch - 'A' + 10) : 99;
        if (d >= base) return false;
        if (__builtin_mul_overflow(v, base, &v) || __builtin_add_overflow(v, d, &v)) return false;
        digits++;
    }
    if (!digits) return false;
    *isU64 = base == 10 && v > (unsigned long long)LLONG_MAX;
    *out = (long long)v;
    return true;
}

static bool intFits(long long v, int bits, bool uns) {
    if (bits == 0) return true;
    if (uns) return v >= 0 && (bits == 64 || (unsigned long long)v < (1ULL << bits));
    if (bits == 64) return true;
    long long lim = 1LL << (bits - 1);
    return v >= -lim && v < lim;
}

//T6a: a literal's own type - I32 where its value fits one, I64 otherwise
static int literalBits(long long v) { return intFits(v, 32, false) ? 32 : 64; }

//T6b: an integer type flows into a wider one of its signedness, and an unsigned one into a strictly wider signed one
static bool intFlows(struct condVal from, struct condVal to) {
    if (from.bits >= to.bits) return false;
    return from.uns == to.uns || (from.uns && !to.uns);
}

//the integer type two integers meet at (T6b) - a literal adapting to the other's type, or, where that type cannot hold
//it, meeting it at the literal's own type (E6d). False where they do not meet, which is a mistake
static bool intMeet(struct condVal a, struct condVal b, int* bits, bool* uns) {
    if (a.bits && b.bits) {
        if (a.bits == b.bits && a.uns == b.uns) { *bits = a.bits; *uns = a.uns; return true; }
        if (intFlows(a, b)) { *bits = b.bits; *uns = b.uns; return true; }
        if (intFlows(b, a)) { *bits = a.bits; *uns = a.uns; return true; }
        return false;
    }
    if (a.bits || b.bits) {
        struct condVal typed = a.bits ? a : b, lit = a.bits ? b : a;
        if (intFits(lit.i, typed.bits, typed.uns)) { *bits = typed.bits; *uns = typed.uns; return true; }
        struct condVal own = (struct condVal){ .kind = BUILD_INT, .bits = literalBits(lit.i) };
        if (!intFlows(typed, own) && !(typed.bits == own.bits && !typed.uns)) return false;
        *bits = own.bits;
        *uns = false;
        return true;
    }
    *bits = 0;
    *uns = false;
    return true;
}

//an integer meeting a float: only a literal adapts to one (T6) - an integer of a type of its own does not meet a float
//(T6b) - and only one a double holds exactly
static bool intAsFloat(struct condVal v, double* out) {
    if (v.bits || v.i > (1LL << 53) || v.i < -(1LL << 53)) return false;
    *out = (double)v.i;
    return true;
}

static struct condVal condPrimary(struct condCtx* c) {
    struct condVal v = (struct condVal){0};
    struct token t = TokenFeed(c->tc);
    switch (t.type) {
        case TOK_BOOL_LIT:
            v.kind = BUILD_BOOL;
            v.i = t.str.len == 4 && !strncmp(t.str.ptr, "true", 4);
            return v;
        case TOK_INT_LIT: {
            v.kind = BUILD_INT;
            //a U64 literal is beyond the 64-bit signed arithmetic here, and one past 64 bits is the checker's to report
            //(L10): compile-time evaluation decides either (B9c)
            bool u64;
            if (!literalIntValue(t.str.ptr, t.str.len, &v.i, &u64) || u64) return condDefer(c, t);
            return v;
        }
        case TOK_FLOAT_LIT: {
            char buf[128];
            int w = 0;
            for (int i = 0; i < t.str.len && w < 127; i++) if (t.str.ptr[i] != '_') buf[w++] = t.str.ptr[i];
            buf[w] = '\0';
            v.kind = BUILD_FLOAT;
            v.f = strtod(buf, NULL);
            if (isinf(v.f)) return condDefer(c, t); //the checker reports it (L12b)
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
                        return condRuntime(c, t, ERR_COND_NAME); //a local: known only when the program runs
                    }
                }
            }
            struct list* bcs = SyntaxBuildConsts();
            for (int i = 0; i < bcs->len; i++) {
                struct buildConst* b = ListGetIdx(bcs, i);
                if (b->name.len != t.str.len || strncmp(b->name.ptr, t.str.ptr, (size_t)t.str.len)) continue;
                //a U64 constant (L10): beyond the 64-bit signed arithmetic here, so compile-time evaluation decides (B9c)
                if (b->kind == BUILD_INT && b->u64) return condDefer(c, t);
                v.kind = b->kind;
                v.i = b->i;
                v.f = b->f;
                v.s = b->text;
                //B10: typed as its literal would be (T6a) - an integer is an I32 or an I64, a float an F64
                if (b->kind == BUILD_INT) v.bits = literalBits(b->i);
                if (b->kind == BUILD_FLOAT) v.bits = 64;
                if (!c->skip) c->usedBuild = true;
                return v;
            }
            return condGlobal(c, t);
        }
        case TOK_PAREN_O: {
            v = condOr(c);
            struct token close = TokenFeed(c->tc);
            if (close.type != TOK_PAREN_C) return condDefer(c, close);
            return v;
        }
        default:
            //anything else - a character, an array, "$x", a match - is compile-time evaluation's to decide (B9c)
            return condDefer(c, t);
    }
}

static struct condVal condUnary(struct condCtx* c) {
    struct token t = condPeek(c);
    if (t.type != TOK_SUB) return condPrimary(c);
    TokenFeed(c->tc);
    struct condVal v = condUnary(c);
    if (v.anyKind) return v;
    if (v.kind == BUILD_FLOAT) { v.f = -v.f; return v; }
    if (v.kind != BUILD_INT) return condFail(c, t, ERR_COND_TYPES);
    //E6c: negating its type's most negative value, or any unsigned value but 0, wraps
    if (v.i == LLONG_MIN || !intFits(-v.i, v.bits, v.uns)) return condDefer(c, t);
    v.i = -v.i;
    return v;
}

static bool condNumeric(struct condVal v) { return v.kind == BUILD_INT || v.kind == BUILD_FLOAT; }

static struct condVal condArith(struct condCtx* c, struct token op, struct condVal a, struct condVal b) {
    if (a.anyKind || b.anyKind) return condNone();
    if (!condNumeric(a) || !condNumeric(b)) return condFail(c, op, ERR_COND_TYPES);
    struct condVal r = (struct condVal){0};
    if (a.kind == BUILD_INT && b.kind == BUILD_INT) {
        r.kind = BUILD_INT;
        if (!intMeet(a, b, &r.bits, &r.uns)) return condFail(c, op, ERR_COND_NO_MEET);
        bool over = false;
        switch (op.type) {
            case TOK_ADD: over = __builtin_add_overflow(a.i, b.i, &r.i); break;
            case TOK_SUB: over = __builtin_sub_overflow(a.i, b.i, &r.i); break;
            case TOK_MUL: over = __builtin_mul_overflow(a.i, b.i, &r.i); break;
            default:
                //E6a: a zero divisor, and MIN / -1, are undefined - compile-time evaluation says so where it is written
                if (b.i == 0 || (a.i == LLONG_MIN && b.i == -1)) return condDefer(c, op);
                r.i = op.type == TOK_DIV ? a.i / b.i : a.i % b.i;
        }
        //E6c: a result its type cannot hold wraps in the program - not a value this evaluator has (a literal-only one
        //is computed in its literals' own type, T6a)
        int bits = r.bits ? r.bits : literalBits(a.i) > literalBits(b.i) ? literalBits(a.i) : literalBits(b.i);
        if (over || !intFits(r.i, bits, r.uns)) return condDefer(c, op);
        return r;
    }
    //an F64 or a float literal, and an integer literal adapting to it (T6) - computed in a double, as the program does
    double x = a.f, y = b.f;
    if ((a.kind == BUILD_INT && a.bits) || (b.kind == BUILD_INT && b.bits)) return condFail(c, op, ERR_COND_NO_MEET);
    if ((a.kind == BUILD_INT && !intAsFloat(a, &x)) || (b.kind == BUILD_INT && !intAsFloat(b, &y))) return condDefer(c, op);
    if (op.type == TOK_MOD) return condDefer(c, op);
    r.kind = BUILD_FLOAT;
    r.bits = a.bits || b.bits ? 64 : 0;
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

//text compares by content (B9): a top-level condition is decided before any type exists, and a String's "==" is
//its Eq (E10a)
static struct condVal condCmp(struct condCtx* c) {
    struct condVal a = condAdd(c);
    struct token t = condPeek(c);
    if (t.type != TOK_EQ && t.type != TOK_NEQ && t.type != TOK_LST && t.type != TOK_LSE
            && t.type != TOK_GRT && t.type != TOK_GRE) return a;
    TokenFeed(c->tc);
    struct condVal b = condAdd(c);
    struct condVal r = (struct condVal){0};
    r.kind = BUILD_BOOL;
    if (a.anyKind || b.anyKind) return c->skip ? r : condNone(); //a Bool, whatever it compared
    bool eqOp = t.type == TOK_EQ || t.type == TOK_NEQ;
    int order; //-1, 0 or 1: a against b
    if (a.kind == BUILD_STR && b.kind == BUILD_STR && eqOp) {
        order = a.s.len == b.s.len && !memcmp(a.s.ptr, b.s.ptr, (size_t)a.s.len) ? 0 : 1;
    } else if (a.kind == BUILD_BOOL && b.kind == BUILD_BOOL && eqOp) {
        order = a.i == b.i ? 0 : 1;
    } else if (a.kind == BUILD_INT && b.kind == BUILD_INT) {
        int bits;
        bool uns;
        if (!intMeet(a, b, &bits, &uns)) return condFail(c, t, ERR_COND_NO_MEET);
        order = a.i < b.i ? -1 : a.i > b.i ? 1 : 0;
    } else if (condNumeric(a) && condNumeric(b)) {
        double x = a.f, y = b.f;
        if ((a.kind == BUILD_INT && a.bits) || (b.kind == BUILD_INT && b.bits)) return condFail(c, t, ERR_COND_NO_MEET);
        if ((a.kind == BUILD_INT && !intAsFloat(a, &x)) || (b.kind == BUILD_INT && !intAsFloat(b, &y))) return condDefer(c, t);
        if (x != x || y != y) { //a NaN is unordered: only "!=" holds
            r.i = t.type == TOK_NEQ;
            return r;
        }
        order = x < y ? -1 : x > y ? 1 : 0;
    } else {
        return condFail(c, t, ERR_COND_TYPES);
    }
    switch (t.type) {
        case TOK_EQ:  r.i = order == 0; break;
        case TOK_NEQ: r.i = order != 0; break;
        case TOK_LST: r.i = order < 0; break;
        case TOK_LSE: r.i = order <= 0; break;
        case TOK_GRT: r.i = order > 0; break;
        default:      r.i = order >= 0; break;
    }
    return r;
}

//E7a: "not" binds looser than a comparison and tighter than "and", so "not a == b" is "not (a == b)"
static struct condVal condNot(struct condCtx* c) {
    struct token t = condPeek(c);
    if (t.type != TOK_NOT) return condCmp(c);
    TokenFeed(c->tc);
    struct condVal v = condNot(c);
    if (v.anyKind) return v;
    if (v.kind != BUILD_BOOL) return condFail(c, t, ERR_COND_TYPES);
    v.i = !v.i;
    return v;
}

static bool condBoolOrAny(struct condVal v) { return v.anyKind || v.kind == BUILD_BOOL; }

//E7: "a and b" / "a or b" with a decided by its left - false, or true - never evaluates b. Its right side is still
//read, for where the condition ends and for values that cannot combine, but nothing in it is a value: not a call to
//defer, nor a local, nor a build constant to depend on
static struct condVal condLogic(struct condCtx* c, enum tokenType op, struct condVal (*operand)(struct condCtx*)) {
    struct condVal v = operand(c);
    while (condPeek(c).type == op) {
        struct token t = TokenFeed(c->tc);
        bool decided = !c->failed && !v.anyKind && v.kind == BUILD_BOOL && v.i == (op == TOK_OR);
        if (decided) c->skip++;
        struct condVal b = operand(c);
        if (decided) { c->skip--; continue; }
        if (!condBoolOrAny(v) || !condBoolOrAny(b)) { v = condFail(c, t, ERR_COND_TYPES); continue; }
        if (v.anyKind || b.anyKind) { v = condNone(); continue; }
        v.i = op == TOK_OR ? v.i || b.i : v.i && b.i;
    }
    return v;
}

static struct condVal condAnd(struct condCtx* c) { return condLogic(c, TOK_AND, condNot); }
static struct condVal condOr(struct condCtx* c) { return condLogic(c, TOK_OR, condAnd); }

//B9b: an immutable global declared at the top level of the module - outside every conditional - whose initializer is
//itself something a condition can evaluate. It is found on tokens, since nothing is parsed yet: "Name [type] = expr" or
//"Name := expr" as a whole top-level statement. Each file's such declarations are indexed once (they were looked for
//by reading the whole file again for every name a condition used, which made a module of many local ifs quadratic).
enum condDeclared { DECLARED_NONE, DECLARED_INT, DECLARED_FLOAT, DECLARED_BOOL, DECLARED_TEXT, DECLARED_OTHER };
struct condGlobalDecl {
    struct str name;
    int init;          //the cursor just past its "=" or ":="
    bool mut;
    enum condDeclared declared; //its written type, as far as this evaluator tells one from another
    int bits;          //DECLARED_INT/DECLARED_FLOAT: the primitive's width
    bool uns;
};
struct condGlobalIndex { TokenCtx tc; int version; struct list decls; };
static struct list condIndexes;
static bool condIndexesReady;

static void condDeclaredType(struct token t, struct condGlobalDecl* d) {
    static const struct { char* name; enum condDeclared kind; int bits; bool uns; } prims[] = {
        {"I8", DECLARED_INT, 8, false}, {"I16", DECLARED_INT, 16, false}, {"I32", DECLARED_INT, 32, false},
        {"I64", DECLARED_INT, 64, false}, {"U8", DECLARED_INT, 8, true}, {"U16", DECLARED_INT, 16, true},
        {"U32", DECLARED_INT, 32, true}, {"U64", DECLARED_INT, 64, true}, {"F16", DECLARED_FLOAT, 16, false},
        {"BF16", DECLARED_FLOAT, 16, false}, {"F32", DECLARED_FLOAT, 32, false}, {"F64", DECLARED_FLOAT, 64, false},
        {"Bool", DECLARED_BOOL, 0, false}, {"String", DECLARED_TEXT, 0, false},
    };
    d->declared = DECLARED_OTHER;
    for (size_t i = 0; i < sizeof(prims) / sizeof(prims[0]); i++) {
        if ((int)strlen(prims[i].name) != t.str.len || strncmp(prims[i].name, t.str.ptr, (size_t)t.str.len)) continue;
        d->declared = prims[i].kind;
        d->bits = prims[i].bits;
        d->uns = prims[i].uns;
    }
}

static struct condGlobalIndex* condIndexFor(TokenCtx tc) {
    if (!condIndexesReady) { condIndexes = ListInit(sizeof(struct condGlobalIndex)); condIndexesReady = true; }
    struct condGlobalIndex* ix = NULL;
    for (int i = 0; i < condIndexes.len && !ix; i++) {
        struct condGlobalIndex* x = ListGetIdx(&condIndexes, i);
        if (x->tc == tc) ix = x;
    }
    if (ix && ix->version == TokenListVersion(tc)) return ix;
    if (!ix) {
        struct condGlobalIndex fresh = { tc, 0, ListInit(sizeof(struct condGlobalDecl)) };
        ListAdd(&condIndexes, &fresh);
        ix = ListGetIdx(&condIndexes, condIndexes.len - 1);
    }
    ix->version = TokenListVersion(tc);
    ix->decls.len = 0;
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
        if (depth != 0 || !start || t.type != TOK_IDEN) continue;
        //a declaration: the name, then an optional "mut" and type, then "=" or ":=" at bracket depth 0
        struct condGlobalDecl d = (struct condGlobalDecl){0};
        d.name = t.str;
        d.declared = DECLARED_NONE;
        int paren = 0, typeToks = 0;
        struct token u, typeTok = (struct token){0};
        while (true) {
            u = TokenFeed(tc);
            if (u.type == TOK_NONE || u.type == TOK_STMNT_END || u.type == TOK_CURLY_O) break;
            if (paren == 0 && (u.type == TOK_ASS || u.type == TOK_ASS_INFER)) break;
            if (u.type == TOK_PAREN_O || u.type == TOK_SQUARE_O) paren++;
            if (u.type == TOK_PAREN_C || u.type == TOK_SQUARE_C) paren--;
            if (u.type == TOK_MUT) { d.mut = true; continue; }
            typeToks++;
            typeTok = u;
        }
        if (u.type != TOK_ASS && u.type != TOK_ASS_INFER) {
            //not a declaration with a value: the token that ended it still counts for where statements begin and
            //how deep the braces go
            if (u.type != TOK_NONE) TokenSetCursor(tc, TokenGetCursor(tc) - 1);
            continue;
        }
        if (typeToks == 1 && typeTok.type == TOK_IDEN) condDeclaredType(typeTok, &d);
        else if (typeToks) d.declared = DECLARED_OTHER;
        d.init = TokenGetCursor(tc);
        bool known = false;
        for (int i = 0; i < ix->decls.len && !known; i++) known = StrCmp(((struct condGlobalDecl*)ListGetIdx(&ix->decls, i))->name, d.name);
        if (!known) ListAdd(&ix->decls, &d); //the first declaration of a name is the one a condition reads
    }
    TokenSetCursor(tc, saved);
    return ix;
}

//a declared global's value as its type makes it: an integer that fits it, a float of F64's width - anything else (a
//narrower float, a number of a declared type) is a value only compile-time evaluation reproduces exactly
static struct condVal condAsDeclared(struct condCtx* c, struct token name, struct condGlobalDecl* d, struct condVal v) {
    if (v.anyKind) return v;
    if (d->declared == DECLARED_NONE) { //":=": its initializer's own type (T6a)
        if (v.kind == BUILD_INT && !v.bits) v.bits = literalBits(v.i);
        if (v.kind == BUILD_FLOAT) v.bits = 64;
        return v;
    }
    switch (d->declared) {
        case DECLARED_INT:
            if (v.kind != BUILD_INT || !intFits(v.i, d->bits, d->uns)) return condDefer(c, name);
            v.bits = d->bits;
            v.uns = d->uns;
            return v;
        case DECLARED_FLOAT: {
            if (d->bits != 64) return condDefer(c, name);
            double f = v.f;
            if (v.kind == BUILD_INT && !intAsFloat(v, &f)) return condDefer(c, name);
            if (v.kind != BUILD_INT && v.kind != BUILD_FLOAT) return condDefer(c, name);
            v.kind = BUILD_FLOAT;
            v.f = f;
            v.bits = 64;
            return v;
        }
        case DECLARED_BOOL: return v.kind == BUILD_BOOL ? v : condDefer(c, name);
        case DECLARED_TEXT: return v.kind == BUILD_STR ? v : condDefer(c, name);
        default:            return v.kind == BUILD_STR || v.kind == BUILD_BOOL ? v : condDefer(c, name);
    }
}

//a name that is not a local or a build constant: a global this module declares - immutable, found by condIndexFor,
//whose initializer evaluates - or else something only compile-time evaluation can read (a function, a computed global,
//another module's name, B9c)
static struct condVal condGlobal(struct condCtx* c, struct token name) {
    if (!condFilesReady) return condDefer(c, name);
    if (c->depth > 64) return condFail(c, name, ERR_COND_CYCLE);
    for (int f = 0; f < condFiles.len; f++) {
        TokenCtx tc = *(TokenCtx*)ListGetIdx(&condFiles, f);
        struct condGlobalIndex* ix = condIndexFor(tc);
        struct condGlobalDecl* d = NULL;
        for (int i = 0; i < ix->decls.len && !d; i++) {
            struct condGlobalDecl* x = ListGetIdx(&ix->decls, i);
            if (x->name.len == name.str.len && !strncmp(x->name.ptr, name.str.ptr, (size_t)name.str.len)) d = x;
        }
        if (!d) continue;
        if (d->mut) return condRuntime(c, name, ERR_COND_MUTABLE);
        struct condGlobalDecl decl = *d; //the index may be rebuilt while its initializer is read
        int saved = TokenGetCursor(tc);
        TokenSetCursor(tc, decl.init);
        struct condCtx inner = *c;
        inner.tc = tc;
        inner.depth = c->depth + 1;
        inner.locals = NULL; //a global's initializer sees no function's locals
        inner.failed = false;
        inner.deferrable = false;
        struct condVal v = condOr(&inner);
        c->usedBuild = c->usedBuild || inner.usedBuild;
        bool whole = TokenFeed(tc).type == TOK_STMNT_END;
        TokenSetCursor(tc, saved);
        if (inner.failed) {
            if (c->failed || c->skip) return condNone();
            c->failed = true;
            c->errTok = name;
            c->err = inner.err == ERR_COND_CYCLE ? ERR_COND_CYCLE : ERR_COND_GLOBAL_INIT;
            c->deferrable = inner.deferrable; //a global computed by a call can still be evaluated
            return condNone();
        }
        //more than tokens can evaluate - a method call, a member, an index: compile-time evaluation can (B9c)
        if (!whole) return condDefer(c, name);
        return condAsDeclared(c, name, &decl, v);
    }
    return condDefer(c, name);
}

//evaluates the condition starting at the cursor, leaving the cursor after it. *ok is false when it could
//not be evaluated, with the reason in *errTok/*err (the pre-scan ignores those; the parser reports them).
static bool evalTopCond(TokenCtx tc, bool* ok, struct token* errTok, enum diag* err, bool* deferrable) {
    struct condCtx c = (struct condCtx){0};
    c.tc = tc;
    struct token first = condPeek(&c);
    struct condVal v = condOr(&c);
    //stopped short of the branch: what follows - a method call, a member, an index, "xor" - is past what tokens can
    //evaluate, and compile-time evaluation decides it (B9c). Without this the condition was judged on its prefix:
    //"if Seven.Hash() != 3" was "not true or false", having read only "Seven"
    if (!c.failed && condPeek(&c).type != TOK_CURLY_O) condDefer(&c, first);
    if (!c.failed && v.kind != BUILD_BOOL) condFail(&c, first, ERR_COND_NOT_BOOL);
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

//from a condition's start to just before its branch's "{": the first "{" outside every bracket that does not open the
//body of something inside the condition itself - a match, a lambda, a catch clause
static void skipCondTokens(TokenCtx tc) {
    int depth = 0;
    bool bodyNext = false;
    while (true) {
        int before = TokenGetCursor(tc);
        struct token t = TokenFeed(tc);
        if (t.type == TOK_NONE) return;
        if (t.type == TOK_PAREN_O || t.type == TOK_SQUARE_O) depth++;
        else if (t.type == TOK_PAREN_C || t.type == TOK_SQUARE_C) depth--;
        else if (t.type == TOK_MATCH || t.type == TOK_FUNC || t.type == TOK_CATCH) bodyNext = true;
        else if (t.type == TOK_CURLY_O) {
            if (depth > 0 || bodyNext) { skipBraceBody(tc); bodyNext = false; continue; }
            TokenSetCursor(tc, before);
            return;
        }
    }
}

//B9/B9c: the cursor ends in front of the branch's "{" whatever the evaluator read - it stops at the first thing it
//cannot evaluate, and a condition compile-time evaluation decides is exactly one it stopped inside
static bool scanCond(TokenCtx tc, bool* ok) {
    int at = TokenGetCursor(tc);
    bool deferrable;
    bool cond = evalTopCond(tc, ok, NULL, NULL, &deferrable);
    if (!*ok && deferrable) cond = condFromDecision(tc, at, ok);
    TokenSetCursor(tc, at);
    skipCondTokens(tc);
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
            //a real error-decl ("error IDEN { ... }") registers a type name. "error" alone - the statement raising
            //the default error - is followed by no name, and what does follow it is left for the main loop, which
            //tracks brace depth: consuming it unread once desynced the depth for the rest of the scan
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

//a syntax error the bare "expected X, found Y" would leave a reader puzzling over, said in terms of what was probably
//meant - reported here, or false where the plain report says it best
//a word the language keeps for itself - a keyword, or the literal true, false or null
static bool isKeywordTok(struct token t) {
    return t.type != TOK_IDEN && t.type != TOK_NONE && t.str.len > 0 && isLetter(t.str.ptr[0]);
}

static bool isOperandEndTok(enum tokenType t) {
    return t == TOK_IDEN || t == TOK_PAREN_C || t == TOK_SQUARE_C || t == TOK_INT_LIT || t == TOK_FLOAT_LIT
           || t == TOK_CHAR_LIT || t == TOK_BOOL_LIT || t == TOK_NULL_LIT;
}

//the first token of the postfix operand ending at last - "a.b(c)[d]" from its "]" - or a NONE token where it is
//not one (a rendering's "$" before it makes it a join piece already)
static struct token operandStartBefore(struct token last) {
    struct token t = last;
    for (int guard = 0; guard < 256; guard++) {
        if (t.type == TOK_PAREN_C || t.type == TOK_SQUARE_C) {
            enum tokenType closer = t.type, opener = t.type == TOK_PAREN_C ? TOK_PAREN_O : TOK_SQUARE_O;
            int depth = 0;
            for (; t.type != TOK_NONE; t = TokenBefore(t)) {
                if (t.type == closer) depth++;
                else if (t.type == opener && --depth == 0) break;
            }
            if (t.type == TOK_NONE) return t;
            struct token b = TokenBefore(t);
            if (b.lineNr == t.lineNr && (b.type == TOK_IDEN || b.type == TOK_PAREN_C || b.type == TOK_SQUARE_C)) { t = b; continue; }
        } else if (isOperandEndTok(t.type)) {
            struct token b = TokenBefore(t);
            if (b.type == TOK_DOT) {
                struct token bb = TokenBefore(b);
                if (bb.type == TOK_IDEN || bb.type == TOK_PAREN_C || bb.type == TOK_SQUARE_C) { t = bb; continue; }
            }
        } else return (struct token){0};
        return TokenBefore(t).type == TOK_STR_OF ? (struct token){0} : t;
    }
    return (struct token){0};
}

//the last token of the postfix operand starting at first - "a.b(c)[d]" from its "a"
static struct token operandEndAfter(struct token first) {
    struct token t = first;
    for (int guard = 0; guard < 256; guard++) {
        if (t.type == TOK_PAREN_O || t.type == TOK_SQUARE_O) {
            enum tokenType opener = t.type, closer = t.type == TOK_PAREN_O ? TOK_PAREN_C : TOK_SQUARE_C;
            int depth = 0;
            for (; t.type != TOK_NONE; t = TokenAfter(t)) {
                if (t.type == opener) depth++;
                else if (t.type == closer && --depth == 0) break;
            }
            if (t.type == TOK_NONE) return first;
        }
        struct token n = TokenAfter(t);
        if (n.lineNr != t.lineNr) return t;
        if (n.type == TOK_DOT && TokenAfter(n).type == TOK_IDEN) { t = TokenAfter(n); continue; }
        if (n.type == TOK_PAREN_O || n.type == TOK_SQUARE_O) { t = n; continue; }
        return t;
    }
    return t;
}

//E11b: "f(x "a")", "f("a" x)" - a value beside text with no "$": the hint shows the rendering to write
static bool joinPieceHint(struct token from, struct token to) {
    if (from.type == TOK_NONE || to.type == TOK_NONE || from.owner != to.owner || from.lineNr != to.lineNr) return false;
    struct str text = Str(from.str.ptr, (int)(to.str.ptr + to.str.len - from.str.ptr));
    if (text.len <= 0 || text.len > 60) text = from.str;
    ErrSyntax(from, ERR_JOIN_PIECE, text);
    return true;
}

static bool syntaxHint(struct token found, char* expected) {
    struct token prev = TokenBefore(found);
    //"done mut Bool = false" - a keyword beginning a line as a name would ("done" ended the statement there)
    if (isKeywordTok(prev) && prev.lineNr == found.lineNr && TokenBefore(prev).lineNr < prev.lineNr
        && (found.type == TOK_MUT || found.type == TOK_ASS_INFER || found.type == TOK_ASS || found.type == TOK_COMMA
            || (found.type == TOK_IDEN && (prev.type == TOK_DONE || prev.type == TOK_FAIL || prev.type == TOK_BREAK
                                           || prev.type == TOK_CONTINUE || prev.type == TOK_ABORT || prev.type == TOK_UNREACHABLE
                                           || prev.type == TOK_JOIN)))) {
        ErrSyntax(prev, ERR_KEYWORD_AS_NAME, prev);
        return true;
    }
    //"fn join(", "x I32, done I32" - a keyword where a name was wanted
    if (isKeywordTok(found) && found.type != TOK_MUT && expected && (!strcmp(expected, TokenStrFromType(TOK_IDEN))
                                            || (TokenAfter(found).lineNr == found.lineNr
                                                && (TokenAfter(found).type == TOK_IDEN || TokenAfter(found).type == TOK_MUT
                                                    || TokenAfter(found).type == TOK_ASS_INFER)))) {
        ErrSyntax(found, ERR_KEYWORD_AS_NAME, found);
        return true;
    }
    //"type T struct() { ... destruct { } }" - a destructor follows the constructor's body (C7)
    if (found.type == TOK_DESTRUCT) {
        ErrSyntax(found, ERR_DESTRUCT_IN_BODY);
        return true;
    }
    //E11b: a value joined to text has to be rendered - "pretty(t) \"\\n\"" or "\"n=\" n"
    if ((found.type == TOK_STR_LIT || found.type == TOK_STR_OF) && prev.lineNr == found.lineNr && isOperandEndTok(prev.type)
        && joinPieceHint(operandStartBefore(prev), prev)) return true;
    if (prev.type == TOK_STR_LIT && prev.lineNr == found.lineNr
        && (isOperandEndTok(found.type) || found.type == TOK_PAREN_O) && found.type != TOK_PAREN_C && found.type != TOK_SQUARE_C
        && joinPieceHint(found, operandEndAfter(found))) return true;
    //"f(a, b,)" - a trailing comma ends a list only where its closing bracket begins a line (L18a)
    if ((found.type == TOK_PAREN_C || found.type == TOK_SQUARE_C) && prev.type == TOK_COMMA && prev.lineNr == found.lineNr) {
        ErrSyntax(prev, ERR_TRAILING_COMMA, found, found);
        return true;
    }
    //"fn f() ?error {" - '?' is the whole of the default error, and 'error' names no error type
    if (found.type == TOK_ERROR && prev.type == TOK_QSNTMRK) {
        ErrSyntax(found, ERR_ERROR_AFTER_QUESTION);
        return true;
    }
    //"state Array<F32>(n)" - a declaration's value comes after '='
    if (found.type == TOK_PAREN_O && expected && !strcmp(expected, TokenStrFromType(TOK_STMNT_END))
        && (prev.type == TOK_GRT || prev.type == TOK_BTSFT_R || prev.type == TOK_IDEN) && prev.lineNr == found.lineNr) {
        TokenCtx tc = found.owner;
        int paren = TokenGetStrStart(found);
        int lineStart = TokenGetLineStart(tc, paren) +1;
        int lineEnd = TokenGetLineEnd(tc, paren);
        char line[256];
        int n = 0;
        for (int i = lineStart; i < lineEnd && n < (int)sizeof(line) -1; i++) line[n++] = TokenGetChar(tc, i);
        line[n] = '\0';
        int at = paren - lineStart;
        if (at <= 0 || at >= n) return false;
        int i = 0;
        while (i < at && (line[i] == ' ' || line[i] == '\t')) i++;
        int nameStart = i;
        while (i < at && line[i] != ' ' && line[i] != '\t') i++;
        int nameEnd = i;
        while (i < at && (line[i] == ' ' || line[i] == '\t')) i++;
        if (!strncmp(line + i, "mut ", 4)) { i += 4; while (i < at && line[i] == ' ') i++; }
        int typeStart = i;
        int typeEnd = at;
        while (typeEnd > typeStart && line[typeEnd -1] == ' ') typeEnd--;
        if (nameEnd == nameStart || typeEnd == typeStart) return false;
        for (int k = nameStart; k < at; k++) if (line[k] == '=' || line[k] == ':' || line[k] == '(') return false;
        int depth = 0, close = at;
        for (; close < n; close++) {
            if (line[close] == '(') depth++;
            else if (line[close] == ')' && --depth == 0) break;
        }
        if (close >= n) return false;
        //"state Array<F32>", "Array<F32>(n)" and "state"
        char decl[256], value[256], name[256];
        snprintf(decl, sizeof(decl), "%.*s", typeEnd - nameStart, line + nameStart);
        snprintf(value, sizeof(value), "%.*s%.*s", typeEnd - typeStart, line + typeStart, close - at +1, line + at);
        snprintf(name, sizeof(name), "%.*s", nameEnd - nameStart, line + nameStart);
        ErrSyntax(found, ERR_VALUE_AFTER_EQ, decl, value, name, value);
        return true;
    }
    return false;
}

//the token a failed top-level item is reported at; where nothing got past the item's first token, every
//alternative failed there and the last one tried says nothing useful - "a declaration" is what was wanted
static void reportTopItemFailure(SyntaxCtx sc, int start) {
    if (sc->tooDeep) return; //that is what stopped it, and it was said
    bool atFirst = sc->furthestPos <= start +1;
    char* expected = !atFirst && sc->furthestExpected ? sc->furthestExpected : "a declaration";
    if (!syntaxHint(sc->furthestTok, expected)) ErrSyntax(sc->furthestTok, ERR_EXPECTED, expected, sc->furthestTok);
}

static void parseTopItem(SyntaxCtx sc, struct list* out) {
    sc->localNames = ListInit(sizeof(struct str)); //S8b: a fresh function, test or type
    sc->itemIncomplete = false;
    sc->tooDeep = false;
    sc->depth = 0;
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
        struct syntax* salvaged = salvageFuncDecl(sc, start);
        if (salvaged) ListAdd(out, salvaged);
        return;
    }
    if (sc->itemIncomplete) addSntx(partSntxOf(decl), newNode(SNTX_BODY_INCOMPLETE)); //S8b
    //D12b: several globals declared at once are each a declaration of their own from here on
    struct syntax* inner = partSntxOf(decl);
    if (inner->type == SNTX_VAR_DECLS) {
        for (int i = 0; i < inner->parts.len; i++) {
            struct syntax* one = newNode(SNTX_TOP_DECL);
            addSntx(one, ((struct syntaxPart*)ListGetIdx(&inner->parts, i))->sntx);
            ListAdd(out, one);
        }
        return;
    }
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
        enum diag err;
        bool deferrable;
        bool value = evalTopCond(sc->tc, &ok, &errTok, &err, &deferrable);
        TokenSetCursor(sc->tc, afterCond);
        if (!ok && deferrable) {
            //B9c: left to compile-time evaluation - decided by an earlier attempt, or queued for this one
            struct condDecision* d = condDecisionFor(sc->tc, condStart);
            if (d && d->err) {
                if (d->reason) Err(firstTokAnywhereSyntax(cond), d->err, d->reason);
                else Err(firstTokAnywhereSyntax(cond), d->err);
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
                condPendingAdd(p);
            }
        } else if (!ok) {
            Err(errTok, err, errTok); //each condition diagnostic takes the token it is about
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
        //a "}" closing nothing - the end of a function whose body failed to parse partway, its item skipped only
        //that far - is skipped too: skipTopItem stops in front of a "}" it did not open, which at the top level
        //would be forever
        if (peek.type == TOK_CURLY_C) {
            TokenFeed(sc.tc);
            continue;
        }

        parseTopItem(&sc, &mod.decls);
    }
    return mod;
}
