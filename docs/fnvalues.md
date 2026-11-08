# Function values followed into calls, and promises on their types (fnvalues)

The design note for function values (2026-11-08, for review; nothing built). It designs what the user decided on
2026-11-08 ("Function values DECIDED" in `.claude/memory/decisions.md`, and the spellings settled the same day):

1. **Followed into calls, no syntax.** A function taking a function value through a parameter is followed per function
   or lambda a call passes, wherever the call can see it, through chains of calls - judged once per relation
   **pattern** for checking (most functions have none beyond their type, so few judgments), compiled once per function
   only where that pays, capped; past the cap or through recursion, today's rule (judged by the written type). Values
   stored in fields, collections, an `any` or handed to C stay dynamic and are judged by their written type.
2. **Promises on function types.** Words after a function type's signature, space-separated, where `noreturn` already
   stands - `onClick fn&(e Event&) noalloc noblock pure`, `type Handler fn(e Event&) noalloc noblock`,
   `fn&(list mut Vec<Node&>&, n Node&) keeps n in list`, `fn&(a Node&, k String&) Node& borrows a` - all of them built:
   the relations (`keeps x`, `keeps b in a`, `keeps b in a.f`, `borrows a`, `noborrow`), the effects (`noalloc`,
   `noblock`, `nospawn`, `norecurse`, `noextern`, `returns`) and the write promise (`pure`). Only function types and
   declared function types write them; every function the program writes has them inferred. Checked against every
   function a value of the type can hold, never trusted; relied on at every call through the type; at a boundary the
   error names the exact word to add.
3. **One tier of keywords.** Every promise word is an ordinary reserved keyword, and so are the words of one place
   (L9b's `commutes`, `immut`, `unique`, `packed`, L9c's `any`).

The current state is SPEC.md T21-T22a, D8e, D16c-D16d, D17d/D17f, G42, L9-L9c and section 8 (O10b-O17b, O23a, O8d),
D9h, E31b and M19g; docs/sec8.md section 5 (records), its round 4 and question 1 (the "scope twins" designed here).

## Progress

Hand-off for a fresh agent after a restart. Output: this file only, committed on wt-fnvalues and pushed (docs/README.md
needs one line for it - `make consistency` lists docs/ - left to the merge, the brief allowing this file alone).
Probes: the compiler of 1879ade (`/home/user/wt/merge/build/olang`, copied to the scratchpad) run with
`OLANG_STD=/home/user/wt/fnvalues/std`; scratch programs, not committed.

- [x] read: SPEC T21-T22a, L9-L9c, D7/D8/D8e, D16c/D16d, D17-D17g, G42, O10b-O17b, O23a, O13c, D9h, E31b; docs/sec8.md;
  DEPENDENTS.md; decisions.md (2026-11-08 entries); scope.olang (records, `summary`, `boundary`, `valueRels`,
  `valueCovered`, the call through a value), effects.olang (`Facts`, the call, lambdas), free.olang (calls), parse.olang
  (`sig`, `contract`), api.olang
- [x] measured (section 1): the shapes refused today, effects "anything" through values and generator walks, the
  indirect call per comparison in a merge sort, the names the one-tier keywords would take
- [x] the user's settled spelling folded in (2026-11-08, through the coordinator): words after the signature, function
  types only, inferred elsewhere; `noreturn` stays as D8e has it and is no promise in kind; `keeps n in list`,
  `borrows a`, `noborrow`, `returns`, `pure`; one tier of keywords. The earlier drafts (promises in the contract
  brackets, `noreturn` moved into them, promises on declarations) are dropped
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
2. **Promises (T21c, T22b).** A function type may end with words saying what every call through it does not do, or
   does only as far as they say. Twelve: `returns`, `noalloc`, `noblock`, `nospawn`, `norecurse`, `noextern`, `pure`,
   `keeps x`, `keeps b in a`, `keeps b in a.f`, `borrows a`, `noborrow`. They are a type's **bound** (2.2): a value
   fits where what its functions do is within it; a call through the type relies on it. `noreturn` shares their
   position and is none of them in kind (3.1).
3. **Effects compose through parameters (G42 revised).** The effect summaries need no instances: a body's facts record
   which of its function parameters it calls through, resolved at each call by the argument - its functions' facts, or
   its type's promises. A higher-order call's caller gets the facts of what it passed.
4. **Keywords (L9).** Every promise word is an ordinary reserved keyword, and so are `commutes`, `immut`, `unique`,
   `packed` and `any` (L9b and L9c removed); about twenty names in the repository are renamed, by an `olang fix` tool for
   other code.

**Rounds** (section 10): 1 keywords one tier; 2 promises' grammar and the relation promises; 3 effect promises and
effects through parameters (beside 2's checking half); 4 following into calls (twins); 5 clones; 6 early freeing,
lending, D9h, E31b and M19g read what is followed and promised; 7 the tools; 8 (only if question 1 says yes) functions
fixed in a constructor's field followed, and promises on a trait's methods for `any`.

## 1. Where things stand (measured at 1879ade)

Each shape was built with the compiler of 1879ade, or is a case in `checks/cases` (named).

| shape | today | after |
|---|---|---|
| `o mut Vec<String&>& = out` then `words.Count(fn(w String&) Bool { o.Push(w); return w.Len() > 1 })` | T22a: "this lambda keeps 'w' beyond the call, and this argument holds only what its written function type says" | compiles (round 4): Count judged once for the lambda's pattern, `keep(x)` as the direct call |
| `apply(hang, a, b)` (t22aobligation), `put(link, x, 42)` (t22sharedscope), `put(link, x)` with a local (t22sharedscopetype) | T22a | compile (round 4); put's twin builds `N(i)` where `a` lives (O18b through link's relation) - a plan of its own |
| `keep<F>(f F) F`, `f := keep(link)` (t22sharedscopegeneric) | T22a (sec8 question 1's default) | compiles (round 4): the result gives back what was given for `f` |
| `put(get, x)` with `get` giving `link` (t22agivenvalue); `use(adder(gone))` (t22agivesarg); `use(keepIt<Blob>, v)` (t22ainstancename) | T22a | compile (round 4) |
| `keepVia(kp, fn() I64 { ... })` with `kp` a `Call` adapter keeping it (callvaluekeeps, callvaluekeepsframe) | T22a | compile (round 4) |
| a lambda capturing `g := link` and calling it (t22acapture) | T22a (a capture is a boundary, sec8 decision 15) | compiles (round 4: captured function values followed) |
| `fs.Push(g)` into `Vec<fn&(a mut N&, b N&)>` (t22apushed); `c.onEvict = fn(k String&) { goneRef.Push(k) }` (t22alambdakeeps) | T22a | refused, the error naming `keeps b in a` / `keeps k` for the element's or field's type; compile once written (round 2) |
| `pick` calling itself and returning `link` (t22areturncycle) | T22a | refused unless its result type writes `keeps b in a` (round 2) |
| a version of a cursor reached in a loop's next turn before it is judged (t22alatelambda) | T22a | unchanged (judged at the read as at a boundary, sec8 5.2) |
| a method an `any` calls requiring a scope relation (t32anyscopes) | T32a | unchanged unless question 1 (round 8) |
| effects of `Use() { return Apply(Twice, 3) }`, of `xs.Fold(0, fn(a I64, x I64) I64: return a + x)`'s caller | "anything - it calls through a function value or an 'any'" | `Twice`'s facts, the lambda's facts (round 3) |
| effects of a `for x in Gen(4)` over a generator | "anything" (the walk calls `Generator.next`, a field) | unchanged, unless question 1 (round 8) |
| `assert not Apply.Allocates` with `f fn&(x I64) I64` (g42factvalue) | false: decided while compiling | unchanged; true with `f fn&(x I64) I64 noalloc` (round 3) |
| `v.Sort(fn(x I64, y I64) Bool: return x < y)` | an indirect call per comparison through `sortMergeRuns`, `sortMergeForward` ... | a clone of the sort with the comparison direct, inlined by LLVM (round 5) |

The cost of the indirect comparison, measured on the C equivalent (a recursive merge sort of 4M `long`s, clang 18
`-O3`, a comparator through a pointer against the same comparison written in): 0.51 s against 0.36 s - 1.4x. Clang 18
did not specialize the recursive function for its constant comparator (its IR keeps `call i32 %3(...)` with a
`!callees` hint), so the clone is the compiler's to make (4.4).

Two things the probes showed that shape the design:

- **Nearly every function value given to a parameter is covered by the parameter's type.** compiler/ compiles today, so
  every one of its ~91 lambdas written as arguments and every named function it passes is within its parameter's
  type - else T22a would have refused it. A judgment per pattern is needed only where a pattern exceeds the type, so on
  every program accepted today it makes none: its plans, and so its code but for clones, stay byte-identical (a gate).
- **Effects and the scope pass want different things.** A scope judgment of a call depends on the callee's whole
  summary (relations, what it keeps and builds), which is why it needs twins; effects are a union of facts, so a
  callee's facts can name "what the function given for parameter k does" and be resolved at each call with no instance
  at all (4.5).

## 2. The model

### 2.1 Records, patterns, twins and clones

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
  allows, building only into its result scope and what its keeps words name, results borrowing as its words say. A
  pattern is **covered** by a type when it is within that bound - `valueCovered` today, extended to the words.
- **A twin** of a body is its judgment with some of its function inputs (parameters, a lambda's captures) holding
  records of given patterns: the same typed body (`typed.Body`), its own plan and summary. The twin with every input
  unknown - each judged by its written type - is the body's ordinary judgment, today's. A twin is named by the body and
  the pattern of each input it follows (its **key**).
- **A clone** is a body's code compiled once more with the calls through one function parameter made directly to one
  known body - a matter of code only, made in lowering (4.4).

### 2.2 The bound of a function type

A function type `fn&(params) Result ? Errors words` says what a call through it may do. Its **bound**, by kind:

| part | without a word | what the words change |
|---|---|---|
| a result holding references (O13) | borrows from every reference parameter (T22, "open point 5"): each such parameter's scope outlives the result scope, and is it exactly where something can be stored through both (O25g) | `borrows a` (one per parameter) narrows that to the parameters named; `noborrow` to none |
| what a call keeps of its arguments beyond the call | nothing but what the result borrows | `keeps b in a` adds "b outlives a" (and its exact half where something can be stored through b); `keeps b in a.f` adds "b outlives where a's field f refers" (a derived scope, O23a); `keeps x` adds "x outlives where the function value lives" (2.2.1) |
| effects (G42) | anything | `noalloc` `noblock` `nospawn` `norecurse` `noextern`: that fact is false; `returns`: every call comes back |
| writes | through its `mut` parameters, its captures' writable references, globals | `pure`: only through its `mut` parameters, and no mutable global read or written |

A value **fits** a function type where everything its functions do is within the type's bound: each record's pattern
(its relations, keeps and results) covered by the type's relation part, its facts within the effect part. A value of
another function type whose functions are not followed fits where that type's bound is within this one's. So a type
writing more promises (keeping less, borrowing less, allocating nothing) fits where one writing fewer is wanted, and one
allowing more keeps (`keeps b in a`) is wanted where its values keep.

#### 2.2.1 "Where the function value lives"

`keeps x` lets a function keep `x` in what it captured. A call through a value it does not follow knows only where the
value lives - a lambda where its captures do, the innermost of their scopes (D16d); a named function and a lambda
capturing nothing in the program's scope (T21); an adapter where its receiver is (E31) - so `keeps x` adds the relation
"x outlives where the value lives" and nothing more. A lambda capturing references from two scopes lives in the inner
one; if it keeps `x` in what it captured from the outer one, "x outlives the inner scope" would not hold up the store.
So at the place such a lambda comes to be held as a type with `keeps x`, every capture it keeps `x` into must live
exactly where the lambda does - true of every lambda capturing from one scope, and said as the error otherwise (3.4).
A named function keeping `x` in a global fits `keeps x` (it lives in the program's scope); a lambda doing so fits only
where it captures nothing.

## 3. Promises on function types: the rules as SPEC would state them

### 3.1 The words and where they end (T21, T21c)

**T21** (its grammar): `func-type ::= "fn" reference-marker "(" param-list ")" ( [ ret-type ] [ "?" [ error-list ] ] |
"noreturn" ) { promise }` - the signature of D8 with the promises of T21c after it. A declaration's `func-sig` (D8) is
unchanged: it writes no promise.

**T21c (promises).** A function type may end with **promises**: words after its signature, separated by spaces, each
saying what every call through a value of the type does not do, or does only as far as it says:

```
promise ::= "returns" | "noalloc" | "noblock" | "nospawn" | "norecurse" | "noextern" | "pure"
          | "noborrow" | "borrows" IDEN | "keeps" IDEN [ "in" IDEN [ "." IDEN ] ]
```

```
onClick fn&(e Event&) noalloc noblock pure
type Handler fn(e Event&) noalloc noblock
link fn&(list mut Vec<Node&>&, n Node&) keeps n in list
find fn&(a Node&, k String&) Node& ? Missing borrows a
add fn&(k String&) keeps k
less fn&(x T, y T) Bool returns pure
```

They are written only on function types - a place's (`fn&`, `fn?&`), a declared function type's base (T21b), a type
argument's: the type of something that holds a function value and calls through it. A function the program writes - a
declaration, a method, a lambda, a constructor - writes none: what it does is read off its body (its obligations O10b,
its facts G42), and it is a value of such a type where it does what the words say (T22b). A library fixes a fact of its
own function with a top-level assert (S17a: `assert not mix.Allocates`); `olang api` reports what a function's body
newly does (B21).

**`noreturn` is no promise.** It stands where it stood (D8e) - on a declaration, where a result would stand, and in a
function type in the same place - and promises follow it (`fn&(I32) noreturn nospawn`). It is of another kind: it
changes what code may be written - which paths of a body must leave (D10a), a call fitting where any value is expected
(D8e) - and it is written on declarations too. The promises change nothing about a body's paths or types: they are
requirements a holder of a function value places on the functions it accepts, and facts a call through such a value may
rely on. They only share `noreturn`'s position after the signature.

**Where the words end.** The promises are read for as long as a token begins one - a promise word, `keeps NAME` and an
`in NAME` and a `.NAME` after it, `borrows NAME` - so the list ends at the first token that does not:

| where the function type stands | what ends its words |
|---|---|
| a parameter's type, an argument's (D16a), a variadic's | the list's `,` or `)`, a default's `=`, a line's end (L18a) |
| a field's, a local's, a global's type | the initializer's `=`, a line's end |
| a type argument | the list's `,` or `>` |
| a declaration's result | the body's `{`, or a `?` (the declaration's own error set) - a function type's error set comes before its words, so a `?` after them is the declaration's: `fn adder(names mut Vec<String&>&) fn&(k String&) keeps k { ... }` |
| one of several results (D8c) | the results' `,` |
| after a function type's error set | the first word: an error item is a name, never a keyword (R1c), so `fn&(t String&) I64 ? ParseError noalloc` reads `ParseError` and then the words |
| a declared function type's base (T21b) | a line's end |

The words stand on the line the signature ends on (L18): a line's end ends the type. They hold no comma, so they never
make a type need L18c's parentheses: a function type written as an item of a list takes one result and one error item
and then its words (`f fn&(t String&) I64 ? ParseError noalloc, k I64`), and one of several results or error items is
parenthesized whole, its words inside the parentheses with the rest of it: `f (fn&(I64) I64 ? ParseError, io.Error
noalloc)`. In `keeps b in a`, `in` is read as part of the type, where the membership operator (E29) cannot stand.

### 3.2 What each word promises (T21c, continued)

| word | every function a value of the type can call ... | a call through the type relies on |
|---|---|---|
| `returns` | always comes back to its caller, with a value or an error: every loop of it is counted (G42's `Terminates`), it is not recursive, it waits for nothing, calls no C not known to return, and reaches no ending it writes - no `noreturn` call, no `unreachable`, no `!`, no `assert` not decided true while compiling (S18c); the language's own checks aside (a slice or an array length out of range, running out of memory or stack: E16b, D14b, D14c), which stand beside every call | the call comes back (`Returns`, G42) |
| `noalloc` | asks the runtime for no storage (G42's `Allocates` false) | no allocation |
| `noblock` | waits for nothing (`Blocks` false) | no wait |
| `nospawn` | starts no task (`Spawns` false) | no task |
| `norecurse` | never calls itself, directly or through others (`Recursive` false) | no re-entry |
| `noextern` | calls no C - no `extern fn`, no C import's function, a library's included - but C's math functions (X8) and the runtime's own (`CallsC` false) | no C |
| `pure` | writes nothing but through its `mut` parameters (a `Call` adapter's receiver is no parameter): it stores only into storage it builds itself and storage reached through a `mut` reference parameter; reads and writes no mutable global; calls only what is pure - a body that is, a value whose type is `pure` or whose functions are followed and are, C's math functions and the runtime's own; runs only pure destructors. It may allocate, wait and start tasks whose calls are pure | the call changes nothing it was not given writably (`Pure`, G42) |
| `borrows a` | gives a result that refers only into what `a` refers to (whole, or a view of it), or into what the function builds or the program's scope holds; one word per such parameter | the result needs nothing of the other arguments |
| `noborrow` | gives a result that refers into nothing its parameters refer to | the result needs nothing of the arguments |
| `keeps b in a` | may keep `b` - what it refers to, the references it holds, or, for a by-value unique `b`, the value itself handed on (T13b) - in what `a` refers to, beyond the call | `b` outlives `a` (3.3) |
| `keeps b in a.f` | may keep `b` in what `a`'s field `f` refers to, where that field has a binding of its own (O23a) | `b` outlives where that field refers |
| `keeps x` | may keep `x` in what the function value itself holds: what a lambda captured, an adapter's receiver (E31), or, for a function that captures nothing, the program's scope (a global) | `x` outlives where the function value lives (2.2.1) |

Without `borrows` or `noborrow`, a result holding references may refer into what every reference parameter refers to,
as T22 says today. Without a `keeps` word, a call keeps nothing of its arguments beyond the call but what its result
refers to. Without an effect word, it may do anything of that kind.

It is a compile-time error naming T21c: a word naming no parameter of the type (an unnamed parameter, `fn&(I32)`, is
named by none); `keeps a in a`; a `keeps` word whose kept parameter holds no reference and is not unique (a copy is
kept, which needs no word); `keeps b in a` where nothing can be stored through `a` (a parameter holding no reference);
`keeps b in a.f` where `f` is no field of `a`'s type with a binding of its own, or a path of more than one field;
`borrows a` or `noborrow` where the result holds no reference, `borrows a` where `a` holds none, and the two together;
`returns` after `noreturn`; a word written twice. `keeps b in a keeps a in b` keeps each in the other (their arguments
from one scope - O10c's equality).

### 3.3 The relation words in section 8's terms

Each relation word stands for obligations (O10b) between the positions of the type (2.1) - what a function it holds
may require of its callers, and what a call through the type discharges (O10c):

| word | the obligations it allows (O10b) |
|---|---|
| `borrows a` (and every reference parameter, by default) | `a` outlives the result scope; the result scope outlives `a` where something can be stored through both (O25g) |
| `keeps b in a` | `b` outlives `a`; `a` outlives `b` where something can be stored through `b` (O25g) |
| `keeps b in a.f` | `b` outlives `Derived(a, f)` (O23a); the reverse where something can be stored through `b` |
| `keeps x` | `x` outlives the value's home: the capture's scope for each capture `x` is kept into (2.2.1), the program's scope for a function capturing nothing, the receiver's for an adapter; the reverse where something can be stored through `x` |

A function's obligations are within the words where each is one of these or follows from them (its set is transitively
closed, O10b). A by-value parameter holding references takes part through its own scope variable (O4b); a unique one
handed on is the `b` of `keeps b in a` with its storage (T13b's move: callers build the argument where it is stored).

### 3.4 Fitting, identity and the bound (T22, T22b, T22a)

**T22** (revised, the first sentence): "Two function types are the same type (§2.10) only if they agree on parameter
count, each parameter's type, permission included (T25b), in order, presence and identity of a return type, `noreturn`
(D8e), their error lists ... and their promises (T21c), each by the position it names - so `fn&(a mut N&, b N&) keeps b
in a` and `fn&(x mut N&, y N&) keeps y in x` are one type." It gains: "A function value **fits** a function type that
differs from its own only in promises where everything its functions do is within that type's bound (T22b) - decided
where it comes to be held (T22a), not by its type alone." And "A function type says nothing more of where its
references live (QCB): every parameter its own scope, and a result holding references may hand back what its reference
parameters refer to" becomes "... unless its promises say otherwise (T21c)".

**T22b (a function type's bound).** A function type's promises are a **bound** on every call through a value of it:
its relation words (with their defaults, T21c) are the obligations a call may require (§8 O10c) and all it may keep of
its arguments (O17); its effect words and `pure` are facts every call has (G42). Where a value comes to be held as a
function type - an argument, a store, an initializer, a `return`, a conversion - each function it may call fits only if
what it does is within the bound: its obligations, what it keeps and what its result refers to (section 8, its
summary), and its facts (G42); a value whose functions are not followed fits only if its own type's bound is within
this one's. So a function promising more (keeping less, borrowing less, allocating nothing) fits a type allowing more,
and a type writing `keeps b in a` holds functions that keep `b` in `a`. Nothing in a bound is written as a scope; nothing
at run time changes: a value is two words whatever its type promises.

The checker accepts a function value for a function type that differs only in promises (E12, at the outermost level, as
it accepts one differing in permission where safe); whether it fits is said by the pass that owns each fact - section 8
for the relation words, the facts (effects.olang) for the rest - at the place it is held. Inside a type argument
(`Vec<fn&(x I64) I64 noalloc>`) promises are part of the instance's identity (G16a) and no fit crosses them, as no
other conversion does there (E12).

**T22a** keeps its first half (records follow a value through locals, conditionals, `match`es, `catch` defaults,
conversions and call results; a call through a value carrying them is judged as the direct calls they are), and loses
three of its boundaries to T22c: an argument for a parameter of a function type, a capture, and a `return` its callers
follow - the value is followed. A **boundary** is what is left: a store into anything but a whole local (a field, an
element, a payload, a global, a constructor's field), a value an array, a tuple or an enum case is made of, a task's
function, argument or result, an `any` (T32a), a `yield`, a binding of a pattern, a `return` of a function in a cycle of
calls (O13c), a call a cursor's version reaches before it is given (O25i), an argument for an `extern fn` (C, X1), and
every place where T22c stops following (its limits). At a boundary every function the value may call must fit the
place's type (T22b) - else a compile-time error naming the function (a lambda by the parameter it keeps), what it does
that the type does not say, the place, and **the word to write on the place's type**:

```
p.olang:9:5: error[T22a]: 'link' keeps 'b' in 'a', and this field's type says nothing of that - write 'keeps b in a' after its signature
p.olang:12:16: error[T22b]: this argument's type promises noalloc, and 'logTo' may allocate
    note: p.olang:4:5: its call of 'io.Println' allocates
```

What no word can say - a lambda keeping `x` in a capture that lives longer than the lambda (2.2.1), a result referring
into what a lambda captured, a lambda that captures keeping `x` in a global - is said with its fix (hold the value in a
local and call it there, or call the function directly), as today. `olang explain` gives each function the tightest
type it fits (B11b, section 9), words and all, so the fix can be copied.

### 3.5 Function facts (G42, revised)

G42's table gains two facts, so every promise word is a fact read through a name: `Pure` (the body is `pure`, T21c)
and `Returns` (every call of it `returns`). Its last paragraph changes: "A call through a function value or an `any`
may do anything" becomes

> A call through a function value does what the functions it may call do, where they are followed (T22a, T22c) -
> through a parameter, what the functions given for it at each call do (section 4.5's composition) - and otherwise what
> its type promises: an effect word makes its fact false (`Returns` true), `pure` makes `Pure` true; anything else it may
> do. A function's facts read through its name (`apply.Allocates`) take each call through a function parameter by that
> parameter's written type; a call of it takes them by the functions the call gives.

`WritesGlobals` and `Terminates` stay facts with no word (`pure` and `returns` say more; 11, decision 9). D17d ("a
contract states no scope relation") and D17f stand: a declaration states no promise, and a lambda takes no contract.

### 3.6 Why it is sound

- *Every promise is checked where a function meets it.* At every place a value comes to be held as a function type
  (T22b) - an argument, a store, an initializer, a return, a conversion: the places check's E12 fits a function value -
  by the functions the value may call where they are followed (their exact summaries and facts), and by the source
  type's bound otherwise, which was itself checked where its value came to be held. By induction over the places a
  value passes through, every function a call through a type can reach is within its bound. Nothing is trusted: no
  declaration and no `extern fn` writes a promise (an `extern fn`'s `noreturn` stays D8e's one trusted word).
- *The bound is what a call relies on, and only that.* A call through an unfollowed value discharges exactly the
  relations the bound allows (O10c) - every relation any reachable body requires is among them, so each holds at the
  call; it lends as though the callee keeps what the bound says (O17), which over-approximates every reachable body;
  its facts are the bound's, which over-approximate every reachable body's.
- *Relation words are obligations, which section 8 already judges.* A word adds no new kind of relation: `borrows`
  narrows T22's default to some of its own relations, `keeps b in a` and `keeps b in a.f` are relations between a
  parameter and a parameter or a derived scope (O10b, O23a), and `keeps x` a relation to the value's home - a term the
  caller knows (where the value lives, D16d), required where the value is held to be where every capture `x` is kept
  into lives (2.2.1). So the run-time invariants I1 and I2 (docs/scope-model.md) follow from O10c's argument unchanged.
- *Nothing at run time.* Promises change no code and no representation; a program's meaning is the same with every
  promise removed (it is then refused or accepted, never different).
