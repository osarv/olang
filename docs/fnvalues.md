# Function values followed into calls, and promises on their types (fnvalues)

The design note for function values (2026-11-08, for review; nothing built). It designs what the user decided on
2026-11-08 ("Function values DECIDED" in `.claude/memory/decisions.md`, and the spellings that followed the same day):

1. **Specialization, no syntax.** A function taking a function value through a parameter is followed per function or
   lambda a call passes, wherever the call can see it, through chains of calls - judged once per relation **pattern**
   for checking (most functions have none beyond their type, so few instances), compiled once per function only where
   that pays, capped; past the cap or through recursion, today's rule (judged by the written type). Values stored in
   fields, collections, an `any` or handed to C stay dynamic and are judged by their written type.
2. **Written promises** on function types and declarations, in the contract brackets (D17), by the listing rule (L18a),
   all of them built: the relations (`a keeps b`, `keeps x`, `a.f keeps b`, `borrows a`, `noborrow`), the effects
   (`noalloc`, `noblock`, `nospawn`, `norecurse`, `noextern`, `returns`) and the write promise (`pure`). Checked against
   every body that lands there, never trusted; relied on at every call through the type; at a boundary the error names
   the exact item to add; on a declaration a checked promise `olang api` compares.
3. **Spelling.** One-word lowercase keywords, one tier of them (the words of one place, L9b and L9c, become ordinary
   keywords too), and `noreturn` moved into the brackets, so every promise is written in one place:
   `fn name(params) [conditions and promises] Result ? Errors { body }`.

The current state is SPEC.md T21-T22a, D8e, D16c-D16d, D17-D17g, G42, L9-L9c and section 8 (O10b-O17b, O23a, O8d),
D9h and E31b; docs/sec8.md section 5 (records), its round 4 and question 1 (the "scope twins" this note designs).

## Progress

Hand-off for a fresh agent after a restart. Output: this file only, committed on wt-fnvalues and pushed (docs/README.md
needs one line for it - `make consistency` lists docs/ - left to the merge, the brief allowing this file alone).
Probes: the compiler of 1879ade (`/home/user/wt/merge/build/olang`, copied to the scratchpad) run with
`OLANG_STD=/home/user/wt/fnvalues/std`; scratch programs, not committed.

- [x] read: SPEC T21-T22a, L9-L9c, D7/D8/D8e, D16c/D16d, D17-D17g, G42, O10b-O17b, O23a, O13c, D9h, E31b; docs/sec8.md;
  DEPENDENTS.md; decisions.md (2026-11-08 entries); scope.olang (records, `summary`, `boundary`, `valueRels`,
  `valueCovered`, the call through a value), effects.olang (`Facts`, the call, lambdas), free.olang (calls), parse.olang
  (`sig`, `contract`)
- [x] measured (section 1): the shapes refused today, effects "anything" through values and generator walks, the
  indirect call per comparison in a merge sort, the names the one-tier keywords would take, `noreturn`'s uses
- [x] the coordinator's spelling updates folded in: `noalloc ... noextern`, `pure` (not `confined`), `returns` (not
  `halts`/`terminates`), `borrows a` (not `return a`), `noborrow`; one tier of keywords; `noreturn` moved; the placement
  rule for the brackets
- [x] sections 0-12
- next: nothing - the note is complete; a build starts from section 10's round 1

## 0. Summary

A function value hides which body runs, so every analysis that reads bodies goes blind at a call through one: the scope
pass judges it by the written type (T22) and refuses at a boundary any function whose relations are more (T22a), the
effect summaries say "anything" (G42), early freeing keeps (O8d), lending (O17), D9h's left-out copies and E31b's
in-place calls give up, and nothing is inlined. The most common callback shape is refused today -
`words.Count(fn(w String&) Bool { o.Push(w); return true })` - and the most common higher-order calls make their
callers' effects "anything".

**The design in a few lines.**

1. **Followed into calls (T22c).** A value whose functions the inference already follows (sec8's records: through
   locals, conditionals, call results) is now followed into the callee it is passed to, into the lambdas that capture
   it, and back out of the callee's `return`. The callee is judged with that parameter holding those functions - but
   once per **pattern** (2.1: what a direct call of a body reads of its summary, in the function type's positions),
   never per function, and only where the pattern exceeds what the parameter's written type allows (otherwise its one
   judgment of today serves, unchanged). A judgment per pattern is a **twin** of the callee (sec8 round 4's scope twin):
   the same typed body with its own plan, code of its own only where its plan differs. Separately, where it pays (a call
   through the parameter in a loop), the compiler compiles a callee once per known function with the call made directly
   - a **clone**, the compiler's choice, capped (4.4). Stored values - fields, elements, globals, an `any`, a task's
   function, C - stay dynamic.
2. **Promises (D17d revised, D17h, D17i, T22b).** The contract brackets hold conditions (checked on entry, as today) and
   promises (checked against the body while compiling). Thirteen items: `noreturn`, `returns`, `noalloc`, `noblock`,
   `nospawn`, `norecurse`, `noextern`, `pure`, `a keeps b`, `keeps x`, `a.f keeps b`, `borrows a`, `noborrow`. A
   function type's items are its **bound** (2.2) - what a call through it may do; a value fits where what it does is
   within the bound; a call through the type relies on the bound. Written on a declaration they are checked against its
   body and are part of its type as a value.
3. **Effects compose through parameters (G42 revised).** The effect summaries need no instances: a body's facts record
   which of its function parameters it calls through, resolved at each call by the argument - its functions' facts, or
   its type's promises. A higher-order call's caller gets the facts of what it passed.
4. **Keywords (L9) and `noreturn`.** Every promise word is an ordinary reserved keyword, and so are `commutes`, `immut`,
   `unique`, `packed` and `any` (L9b and L9c removed); about twenty names in the repository are renamed. `noreturn`
   moves into the brackets (D8e). Both by `olang fix` tools.

**Rounds** (section 10): 1 keywords one tier; 2 the brackets' grammar and `noreturn` moved; 3 relation promises; 4
effect promises and effects through parameters (beside 3); 5 following into calls (twins); 6 clones; 7 early freeing,
lending, D9h, E31b and M19g read what is followed and promised; 8 the tools; 9 (only if question 2 says yes) functions
fixed in a constructor's field followed, and promises on trait methods for `any`.

## 1. Where things stand (measured at 1879ade)

Each shape was built with the compiler of 1879ade, or is a case in `checks/cases` (named).

| shape | today | after |
|---|---|---|
| `o mut Vec<String&>& = out` then `words.Count(fn(w String&) Bool { o.Push(w); return w.Len() > 1 })` | T22a: "this lambda keeps 'w' beyond the call, and this argument holds only what its written function type says" | compiles (round 5): Count judged once for the lambda's pattern, `keep(x)` as the direct call |
| `apply(hang, a, b)` (t22aobligation), `put(link, x, 42)` (t22sharedscope), `put(link, x)` with a local (t22sharedscopetype) | T22a | compile (round 5); put's twin builds `N(i)` where `a` lives (O18b through link's relation) - a plan of its own |
| `keep<F>(f F) F`, `f := keep(link)` (t22sharedscopegeneric) | T22a (sec8 question 1's default) | compiles (round 5): the result gives back what was given for `f` |
| `put(get, x)` with `get` giving `link` (t22agivenvalue); `use(adder(gone))` (t22agivesarg); `use(keepIt<Blob>, v)` (t22ainstancename) | T22a | compile (round 5) |
| `keepVia(kp, fn() I64 { ... })` with `kp` a `Call` adapter keeping it (callvaluekeeps, callvaluekeepsframe) | T22a | compile (round 5) |
| a lambda capturing `g := link` and calling it (t22acapture) | T22a (a capture is a boundary, sec8 decision 15) | compiles (round 5: captured function values followed) |
| `fs.Push(g)` into `Vec<fn&(a mut N&, b N&)>` (t22apushed); `c.onEvict = fn(k String&) { goneRef.Push(k) }` (t22alambdakeeps) | T22a | refused, the error naming `[a keeps b]` / `[keeps k]` on the element's or field's type; compile once written (round 3) |
| `pick` calling itself and returning `link` (t22areturncycle) | T22a | refused unless its result type writes `[a keeps b]` (round 3) |
| a version of a cursor reached in a loop's next turn before it is judged (t22alatelambda) | T22a | unchanged (judged at the read as at a boundary, sec8 5.2) |
| a method an `any` calls requiring a scope relation (t32anyscopes) | T32a | unchanged until round 9 (trait methods' promises) |
| effects of `Use() { return Apply(Twice, 3) }`, of `xs.Fold(0, fn(a I64, x I64) I64: return a + x)`'s caller | "anything - it calls through a function value or an 'any'" | `Twice`'s facts, the lambda's facts (round 4) |
| effects of a `for x in Gen(4)` over a generator | "anything" (the walk calls `Generator.next`, a field) | unchanged, unless question 2 (round 9) |
| `assert not Apply.Allocates` with `f fn&(x I64) I64` (g42factvalue) | false: decided while compiling | unchanged; true with `f fn&(x I64) [noalloc] I64` (round 4) |
| `v.Sort(fn(x I64, y I64) Bool: return x < y)` | an indirect call per comparison through `sortMergeRuns`, `sortMergeForward` ... | a clone of the sort with the comparison direct, inlined by LLVM (round 6) |

The cost of the indirect comparison, measured on the C equivalent (a recursive merge sort of 4M `long`s, clang 18
`-O3`, a comparator through a pointer against the same comparison written in): 0.51 s against 0.36 s - 1.4x. Clang 18
did not specialize the recursive function for its constant comparator (its IR keeps `call i32 %3(...)` with a
`!callees` hint), so the clone is the compiler's to make (4.4).

Two things the probes showed that shape the design:

- **Nearly every function value given to a parameter is covered by the parameter's type.** compiler/ compiles today, so
  every one of its ~91 lambdas written as arguments and every named function it passes is within its parameter's
  type - else T22a would have refused it. A judgment per pattern is needed only where a pattern exceeds the type, so on
  every program accepted today it makes none: its plans, and so its code, stay byte-identical (a gate, 10).
- **Effects and the scope pass want different things.** A scope judgment of a call depends on the callee's whole
  summary (relations, what it keeps and builds), which is why it needs instances; effects are a union of facts, so a
  callee's facts can name "what the function given for parameter k does" and be resolved at each call with no instance
  at all (4.5).

## 2. The model

### 2.1 Records, patterns and twins

- **A record** (sec8 5.2, `scope.fnRec`) is what a function value is known to call: a body and, for a lambda, the term
  each capture had where the lambda was made (an adapter's receiver, E31). A value carries a set of them, **full**
  where every member is known.
- **A pattern** is what a direct call of a body reads of the body's summary (`scope.summary`), written in the positions
  of the function type it is called through rather than in the body's own numbering: the positions are each parameter's
  scope variable, the result scope, each capture by its index (for a lambda; the receiver for an adapter), the derived
  scope of each parameter's field with a binding of its own (O23a), and the program's scope. A pattern holds:
  - the body's obligations among those positions (O10b, its `Rels`), each with its exactness (O25g);
  - by parameter, whether the body keeps, stores or puts into what it names (O17's `Keeps`, `Stores`, `Puts`), and the
    same of each capture (`CapKeeps` ...);
  - by position, whether the body may build there (O18c's `Builds`, `Real`);
  - what its result carries (O13c): the per-instance bindings of a returned instance (`ResBind`), and, for a result
    that is a function value, the patterns of what every return gives (`ResFn`), or "the function given for parameter
    k" (a **pass-through**, 4.2);
  - whether a return may hand back existing storage (`HandsBack`).

  Its canonical text - positions by number, relations sorted - names it; two records with the same text are one pattern.
  Everything scope.olang's `call` reads of a callee for a direct call is in it, so a call through a value is judged the
  same for every body of one pattern.
- **A type's pattern** is what a function type allows (2.2): the relations of its bound, nothing kept but what that
  allows, building only into its result scope and what its keeps items name, results borrowing as its items say. A
  pattern is **covered** by a type when it is within that bound (2.2) - `valueCovered` today, extended to the items.
- **A twin** of a body is its judgment with some of its function inputs (parameters, a lambda's captures) holding
  records of given patterns: the same typed body (`typed.Body`), its own plan and summary. The twin with every input
  unknown - each judged by its written type - is the body's ordinary judgment, today's. A twin is named by the body and
  the pattern of each input it follows (its **key**).
- **A clone** is a body's code compiled once more with the calls through one function parameter made directly to one
  known body - a matter of code only, made in lowering (4.4).

### 2.2 The bound of a function type

A function type `fn&(params) [items] Result ? Errors` - or a declaration's signature - says what a call through it may
do. Its **bound**, by kind:

| part | default (no item) | what items change |
|---|---|---|
| a result holding references (O13) | borrows from every reference parameter (T22, "open point 5"): each such parameter's scope outlives the result scope, and is it exactly where something can be stored through both (O25g) | `borrows a` (one item per parameter) narrows it to the parameters named; `noborrow` to none |
| what a call keeps of its arguments beyond the call | nothing but what the result borrows | `a keeps b` adds "b outlives a" (and its exact half where something can be stored through b); `a.f keeps b` adds "b outlives where a's field f refers" (a derived scope, O23a); `keeps x` adds "x outlives where the function value lives" (2.2.1) |
| effects (G42) | anything | `noalloc` `noblock` `nospawn` `norecurse` `noextern` `returns`: the fact is false (true for `returns`) |
| writes | through its `mut` parameters, its captures' writable references, globals | `pure`: only through its `mut` parameters, and no mutable global read or written |
| returning at all | it may return (or not) | `noreturn`: never returns (D8e) |

A value **fits** a function type where everything its functions do is within the type's bound: each record's pattern
(its relations, keeps and results) covered by the type's relation part, its facts within the effect part. A value of
another function type whose functions are not followed fits where that type's bound is within this one's. So a type
writing more promises (keeping less, borrowing less, allocating nothing) fits where one writing fewer is wanted, and one
allowing more keeps (`a keeps b`) is wanted where its values keep.

#### 2.2.1 "Where the function value lives"

`keeps x` lets a function keep `x` in what it captured. A call through a value it does not follow knows only where the
value lives - a lambda where its captures do, the innermost of their scopes (D16d); a named function and a lambda
capturing nothing in the program's scope (T21); an adapter where its receiver is (E31) - so `keeps x` adds the relation
"x outlives where the value lives" and nothing more. A lambda capturing references from two scopes lives in the inner
one; if it keeps `x` in what it captured from the outer one, "x outlives the inner scope" would not hold up the store.
So at the place such a lambda reaches a type with `keeps x`, every capture it keeps `x` into must live exactly where
the lambda does - true of every lambda capturing from one scope, and said as the error otherwise (3.10). A named function
keeping `x` in a global is covered (it lives in the program's scope); a lambda doing so is covered only where it captures
nothing.

## 3. Promises: the rules as SPEC would state them

### 3.1 What the brackets hold (D17, revised)

**D17 (contracts).** A function, a method, a constructor or a function type (T21) may state, in one bracketed block
written right after its parameter list - before its results, its error set or its body - what its body is held to and
its callers rely on:

```
fn name(params) [conditions and promises] Result ? Errors { body }

fn pick(x I32, y I32) [y > x] I32 ? ArgumentError { return y - x }
fn link(a mut N&, b N&) [a keeps b, noalloc, returns] { a.next = b }
fn Exit(code I32) [noreturn] { ... }
onEvict fn?&(k String&) [keeps k] = null
```

```
contract       ::= "[" list(contract-item) "]"                                    (L18a)
contract-item  ::= promise | expr
promise        ::= "noreturn" | "returns" | "noalloc" | "noblock" | "nospawn" | "norecurse" | "noextern"
                 | "pure" | "noborrow" | "borrows" IDEN | [ IDEN [ "." IDEN ] ] "keeps" IDEN
```

Everything in the brackets is checked and nothing is trusted. An item is a **condition** (D17a), an expression of type
`Bool` over the arguments, checked on entry in every build; or a **promise** (D17d), a statement about the body, checked
against it while compiling (D17h). An item is a promise where it begins with one of the promise words or is `NAME keeps
NAME` or `NAME.NAME keeps NAME`; every other item is a condition. The promise words are keywords (L9), so no condition
is spelled like one. Items follow the listing rule (L18a): `,` between items on one line, a line's end between lines.

The words of a declaration are no items: they say what a type or a method **is**, not what a body is held to - `unique`,
`immut` and `packed` before a type's body say how its values are laid out, copied and changed (T13a-T13c), and
`commutes` after an operator method's result says how a call finds the method (it defines what `2.0 * v` means and
claims nothing to check, E31c) - so they stay where they are. `noreturn` is a promise about the body (D8e checks it
there), so it is written in the brackets.

Promises add nothing to a function's error set: only a condition makes a call able to fail with `ArgumentError`
(D17b). A function type's brackets hold promises only - a function type requires nothing of its callers, so a condition
there is a compile-time error naming D17a (a condition is written on the function it belongs to).

### 3.2 Where the brackets stand (D7, D8, T21)

`func-sig ::= "(" param-list ")" [ contract ] [ ret-type ] [ "?" [ error-list ] ]` - for a declaration as today, and now
for a function type too (`func-type ::= "fn" reference-marker func-sig`, T21; a declared function type's base, T21b).
The `"noreturn"` alternative of D8 leaves the signature: `noreturn` is an item. The brackets stand on the line of the
parameter list's `)` (as a declaration's contract does today, `contractHere`). A lambda writes none: its promises are
read off its body and checked where it is held (D16, D17i). A function type written as an item of a list (L18c) keeps
its brackets inside its one item: `f (fn&(I64) [noalloc] I64 ? ParseError, io.Error)`.

### 3.3 The promises (D17d, replacing "a contract states no scope relation")

**D17d (promises).** A promise says what the function's body does not do, or does only as far as it says. Its words
are worded by what the function does with its parameters, never by a scope (T23): no scope is written, and a promise is
only ever checked. The promises:

| item | the body ... | a call through a type writing it relies on |
|---|---|---|
| `noreturn` | never returns to its caller (D8e: no path reaches a `return` or the body's end) | the call leaves (D10a), and fits where any value is wanted |
| `returns` | always comes back to its caller, with a value or an error: every loop of it is counted (G42's `Terminates`), it is not recursive, it waits for nothing, calls no C not known to return, and reaches no ending it writes - no `noreturn` call, no `unreachable`, no `!`, no `assert` not decided true while compiling (S18c); the language's own checks aside (a slice or an array length out of range, running out of memory or stack: E16b, D14b, D14c), which stand beside every function | `f.Returns` (G42) |
| `noalloc` | asks the runtime for no storage (G42's `Allocates` false) | no allocation |
| `noblock` | waits for nothing (`Blocks` false) | no wait |
| `nospawn` | starts no task (`Spawns` false) | no task |
| `norecurse` | never calls itself, directly or through others (`Recursive` false) | no re-entry |
| `noextern` | calls no C - no `extern fn`, no C import's function, a library's included - but C's math functions (X8) and the runtime's own (`CallsC` false) | no C |
| `pure` | writes nothing but through its `mut` parameters (the receiver among them): it stores only into storage it builds itself and storage reached through a `mut` reference parameter; reads and writes no mutable global; calls only what is pure - a body that is, a value whose type promises `pure` or whose functions are followed and are, C's math functions and the runtime's own; runs only pure destructors. It may allocate, wait and start tasks whose calls are pure | the call changes nothing it was not given writably (`f.Pure`, G42) |
| `borrows a` | gives a result that refers only into what `a` refers to (whole, or a view of it), or into what it builds or the program's scope holds; one item per such parameter | the result outlives nothing but the arguments named |
| `noborrow` | gives a result that refers into nothing its parameters refer to | the result needs nothing of the arguments |
| `a keeps b` | may keep `b` - what it refers to, the references it holds, or, for a by-value unique `b`, the value itself handed on (T13b) - in what `a` refers to, beyond the call | `b` outlives `a` (3.4) |
| `a.f keeps b` | may keep `b` in what `a`'s field `f` refers to, where that field has a binding of its own (O23a) | `b` outlives where that field refers |
| `keeps x` | may keep `x` in what the function value itself holds: what a lambda captured, an adapter's receiver (E31), or, for a function that captures nothing, the program's scope (a global) | `x` outlives where the function value lives (2.2.1) |

Without `borrows` or `noborrow`, a result holding references may refer into what every reference parameter refers to,
as T22 says today. Without a `keeps` item, the function keeps nothing of its arguments beyond the call but what its
result refers to. Without an effect item, it may do anything of that kind.

It is a compile-time error naming D17d: an item naming no parameter of the signature (an unnamed parameter, `fn&(I32)`,
is named by none); `a keeps a`; a `keeps` item whose kept parameter holds no reference and is not unique (a copy is
kept, which needs no item); `a keeps b` where nothing can be stored through `a` (a parameter holding no reference);
`a.f keeps b` where `f` is no field of `a`'s type with a binding of its own, or names a path of more than one field;
`borrows a` or `noborrow` where the result holds no reference, `borrows a` where `a` holds none, and the two together;
`noreturn` beside `returns` or a result; an item written twice. `a keeps b, b keeps a` keeps each in the other (their
arguments from one scope - O10c's equality).

### 3.4 The relation items in section 8's terms

Each relation item stands for obligations (O10b) between the positions of the signature (2.1) - what a body may
require of its callers and a caller of the type discharges (O10c):

| item | the obligations it allows the body (O10b) |
|---|---|
| `borrows a` (and every reference parameter by default) | `a` outlives the result scope; the result scope outlives `a` where something can be stored through both (O25g) |
| `a keeps b` | `b` outlives `a`; `a` outlives `b` where something can be stored through `b` (O25g) |
| `a.f keeps b` | `b` outlives `Derived(a, f)` (O23a); the reverse where something can be stored through `b` |
| `keeps x` | `x` outlives the value's home: a capture's scope variable for each capture `x` may be kept into (2.2.1), the program's scope for a function capturing nothing, the receiver's for an adapter; the reverse where something can be stored through `x` |

A body's obligations are within its items where each is one of these or follows from them (its set is transitively
closed, O10b). A by-value parameter holding references takes part through its own scope variable (O4b); a unique one
handed on is `b` of `a keeps b` with its storage (T13b's move: callers build the argument where it is stored).

### 3.5 `noreturn` in the brackets (D8e, revised)

**D8e** keeps every rule but its spelling: a function whose contract holds `noreturn` - `fn Exit(code I32)
[noreturn]`, `fn (q Q&) Stop() [noreturn]`, `extern fn exit(code I32) [noreturn]`, a function type
`fn&(I32) [noreturn]` - never returns to its caller; it writes no result and no `?`. "A function type may write it too"
becomes "a function type's brackets may hold it". The old spelling after the parameter list is gone (it is an unknown
word there, PRINCIPLES "a spelling that is removed is simply gone"); `tools/noreturn_migrate.olang` moves it (5.3).

### 3.6 Checking and relying (D17h, new)

**D17h (promises checked and relied on).** A declaration's promises are checked against its body once the program has
checked: the relation items by section 8 - an obligation of the body beyond them is a compile-time error at the item,
with a note at the statement that requires it (as O10c's error names one) and the item that would allow it; the effect
items and `pure` by the facts (G42) - a note naming the statement or call that does what the item says it does not; and
`noreturn` by D8e. A function type's promises are checked at every place a value comes to be held as one (T22a, T22b).
Nothing is trusted: a promise holds of every body a call through it can reach. A call relies on them: a call through a
value whose functions are not followed is judged by its type's bound (T22b) - the relations it allows are the callee's
obligations (O10c), what it may keep is what the callee keeps (O17), its effect items are the callee's facts (G42) - and
a call of a declared function is judged by its body as always, its promises adding a check and nothing else. An
`extern fn` may hold `noreturn` and nothing else - its body is C's, so it is trusted as its prototype is (X1a), and a C
function's effects are what G42 knows of C.

### 3.7 Where promises stand (D17i, new)

**D17i (where promises stand).** A function, a method (its receiver named as a parameter is), a builder (D19), an
operator method (E31) and `main` may write every promise; a generator's promises are about the call that makes its walk
and the walk's own steps both (D18: its body is the walk's). A constructor writes effect items and `pure` only: what it
keeps is its instance's (C2d). A function type - written, a declared one's base (T21b), a parameter's, a field's, an
element's, a type argument's - writes promises only. A trait's method signature writes the effect items, `pure`, and the
relation items over its named parameters, its `keeps x` keeping `x` in the instance (T31, T32b) [round 9]. An
`extern fn` writes `noreturn` only (D17h). A lambda, a destructor and a test write none: a lambda's promises are read
off its body (D16a, D16b) and checked where it is held.

### 3.8 Function types: identity, fit and bound (T22, T22b)

**T22** (revised, the first sentence): "Two function types are the same type (§2.10) only if they agree on parameter
count, each parameter's type, permission included (T25b), in order, presence and identity of a return type, their
error lists ... and their promises (D17d), each by the position it names - so `fn&(a mut N&, b N&) [a keeps b]` and
`fn&(x mut N&, y N&) [x keeps y]` are one type." Its later sentences gain: "A function value **fits** a function type
that differs from its own only in promises where everything its functions do is within that type's bound (T22b) -
decided where it comes to be held (T22a), not by its type alone." And the sentence "A function type says nothing more
of where its references live (QCB): every parameter its own scope, and a result holding references may hand back what
its reference parameters refer to" becomes "... unless its promises say otherwise (T22b)".

**T22b (a function type's bound).** A function type's promises are a **bound** on every call through a value of it:
its relation items (with their defaults, D17d) are the obligations a call may require (§8 O10c) and all it may keep of
its arguments (O17); its effect items and `pure` are facts every call has (G42); `noreturn` is part of its identity
(D8e). Where a value comes to be held as a function type - an argument, a store, an initializer, a `return`, a
conversion - each function it may call fits only if what it does is within the bound: its obligations, what it keeps
and what its result refers to (section 8, its summary), and its facts (G42); a value whose functions are not followed
fits only if its own type's bound is within this one's. So a function promising more (keeping less, borrowing less,
allocating nothing) fits a type allowing more, and a type writing `a keeps b` holds functions that keep `b` in `a`.
Nothing in a bound is written as a scope; nothing at run time changes: a value is two words whatever its type promises.

The checker accepts a function value for a function type that differs only in promises (E12, at the outermost level, as
it accepts one differing in permission where safe); whether it fits is said by the pass that owns each fact - section 8
for the relation items, the facts (effects.olang) for the rest - at the place it is held. Inside a type argument
(`Vec<fn&(x I64) [noalloc] I64>`) promises are part of the instance's identity (G16a) and no fit crosses them, as no
other conversion does there (E12).

### 3.9 The boundary (T22a, revised)

**T22a** keeps its first half (records follow a value through locals, conditionals, `match`es, `catch` defaults,
conversions and call results; a call through a value carrying them is judged as the direct calls they are), and gains
T22c's: an argument for a parameter of a function type, a capture, and a `return` the caller follows are no
boundaries - the value is followed (T22c). A **boundary** is what is left: a store into anything but a whole local (a
field, an element, a payload, a global, a constructor's field), a value an array, a tuple or an enum case is made of, a
task's function, argument or result, an `any` (T32a), a `yield`, a binding of a pattern, a `return` of a function in a
cycle of calls (O13c), a call a cursor's version reaches before it is given (O25i), an argument for an `extern fn`
(C, X1), and every place where T22c stops following (its caps). At a boundary every function the value may call must
fit the place's type (T22b) - else a compile-time error naming the function (a lambda by the parameter it keeps), what it
does that the type does not say, the place, and **the item to write on the place's type**:

```
p.olang:9:5: error[T22a]: 'link' keeps 'b' in 'a', and this field's type says nothing of that - write [a keeps b] on it
p.olang:12:16: error[T22b]: this argument's type promises noalloc, and 'logTo' may allocate
    note: p.olang:4:5: its call of 'io.Println' allocates
```

An item that cannot be written - a relation to a capture the lambda does not keep `x` into (2.2.1), a result that
refers into what the lambda captured, a store into a global from a lambda that captures - is said with its fix (hold the
value in a local, or call the function directly), as today. `olang explain` says of each function the promises a type
must write to hold it (B11b, section 9).

### 3.10 Function facts (G42, revised)

G42's table gains two facts, so every promise word is a fact read through a name: `Pure` (the body is `pure`, D17d) and
`Returns` (it `returns`). Its last paragraph changes: "A call through a function value or an `any` may do anything" becomes

> A call through a function value does what the functions it may call do, where they are followed (T22a, T22c) -
> through a parameter, what the functions given for it at each call do (4.5) - and otherwise what its type promises: an
> effect item makes its fact false (`Returns` true), `pure` makes `Pure` true; anything else it may do. A call through an
> `any` does what its trait's method signature promises (D17i), and otherwise anything. A function's facts read through
> its name (`apply.Allocates`) take each function parameter's calls by its written type; a call of it takes them by the
> functions the call gives.

`WritesGlobals` and `Terminates` stay facts with no promise word (`pure` and `returns` say more; 11, decision 9).

### 3.11 Why it is sound

- *Every promise is checked where a body meets it.* A declaration's against its own body (D17h); a function type's at
  every place a value comes to be held as one (T22b) - an argument, a store, an initializer, a return, a conversion, the
  places check's E12 fits a function value - by the functions the value may call where they are followed (their exact
  summaries and facts), and by the source type's bound otherwise, which was itself checked where its value came to be
  held. By induction over the places a value passes through, every function a call through a type can reach is within
  its bound. `extern fn`'s `noreturn` is the one trusted item, as before (D8e, X1a).
- *The bound is what a call relies on, and only that.* A call through an unfollowed value discharges exactly the
  relations the bound allows (O10c) - every relation any reachable body requires is among them, so each holds at the
  call; it lends as though the callee keeps what the bound says (O17), which over-approximates every reachable body;
  its facts are the bound's, which over-approximate every reachable body's (true facts are only promised where checked).
- *Relation items are obligations, which section 8 already judges.* An item adds no new kind of relation: `borrows`
  narrows T22's default to some of its own relations, `a keeps b` and `a.f keeps b` are relations between a parameter
  and a parameter or a derived scope (O10b, O23a), and `keeps x` a relation to the value's home - a term the caller knows
  (where the value lives, D16d), required at the boundary to be where every capture `x` is kept into lives (2.2.1). So
  run-time invariants I1 and I2 (docs/scope-model.md) follow from O10c's argument unchanged.
- *Nothing at run time.* Promises change no code and no representation; a program's meaning is the same with every
  promise removed (it is then refused or accepted, never different).
