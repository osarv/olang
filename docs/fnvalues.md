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

## 4. Following function values into calls

### 4.1 The rule, as SPEC would state it

**T22c (function values followed into calls).** A value whose functions are followed (T22a: every one of them known)
given as an argument for a parameter whose type is a function type - written (`fn&`, `fn?&`, a declared function type,
T21b) or a type variable bound to one (G16) - is **followed into the callee**: the callee is judged as though the
parameter held those very functions. There, a call through the parameter is judged as the direct calls it is (O10c,
O17, O18b), a `return` of it gives those functions back to the caller (O13c), an argument of it for another such
parameter follows them on, a lambda capturing it (D16c) is judged with them, and every other place it reaches is a
boundary judged by that place's type (T22a, T22b). A function value a lambda captures is followed into the lambda's
body the same way. What a call through such a parameter requires is what the functions' bodies require, read as their
**pattern** - their obligations, what they keep and build, what their results carry, in the positions of the
parameter's type - so a callee is judged once for each pattern its arguments bring, never once per function, and its
one judgment serves every argument its parameter's type covers (T22b), as before. Where following stops - a callee
already judged for an implementation-defined number of patterns, a pattern nested deeper than an implementation-defined
depth, an argument some of whose functions are not known - the argument is a boundary, judged by the parameter's
written type. Nothing is written for any of it, and nothing changes at run time but which compiled code a call reaches:
a program means the same whichever functions are followed.

**B2c** gains a sentence: "A function a call gives one known function for a parameter may be compiled once more for it,
its calls through the parameter made directly - unobservable but in speed and size."

### 4.2 What is followed, and what stays dynamic

Followed (a callee, a lambda or a caller sees the functions):

- an argument for a parameter of a function type, written or a type variable's (`keep<F>(f F) F`): the parameter holds
  the argument's records in the callee's judgment;
- a capture of a function value: the lambda's body is judged with the capture holding the records it had where the
  lambda was made (D16c's copy, never repointed) - sec8's decision 15 (a capture is a boundary) reversed;
- a `return` of a followed parameter, of a local holding one, of a conditional of them: the callee's summary records a
  **pass-through** ("what was given for parameter k", `summary.ResFn`), and the caller resolves it to the argument's
  records - so `f := keep(link)` holds `link`, with no twin at all (sec8 question 1);
- `os.RunOnStack`'s runtime call (`__olang_run_on_stack(bytes, f)`): followed as the call `f()` it is, as the evaluator
  already runs it (K1).

Dynamic (a boundary, judged by the place's written type, T22b): a store into a field, an element, a payload, a global
or a constructor's field - so `v.Push(f)` is followed into `Push`, whose store into its buffer is the boundary, judged
by the element type; a value an array, a tuple or an enum case is made of; a task's function, argument or result; an
`any`; a `yield`; a pattern's binding; an argument for an `extern fn`; a `return` in a cycle of calls; a value some of
whose functions are not known (a parameter's in a judgment that does not follow it, a field's, an element's) - its
known records judged at the boundary, as today.

So TakeWhile's `keep`, stored into `TakeWhileIter.pred` by its constructor, and every generator's walk, stored into
`Generator.next`, stay dynamic - question 1 asks whether a function a constructor fixes in a field and nothing assigns
again should be followed with the instance, as O23a's per-instance bindings are.

### 4.3 Twins: the key, the judging, the errors, the limits

- **When one is made.** At a call of a body (`Callee.Body`) the scope pass reads, for each parameter of a function
  type, the records of its argument (`recsOf`, as a call through a value does today). Where they are all known and some
  record's pattern is not covered by the parameter's type (T22b), the call is judged against the twin keyed by the body
  and the pattern set of each such argument; arguments whose patterns are covered take no part in the key (judged by
  their type, as today). Where every argument is covered, the call is today's.
- **The key.** The body, and for each followed input (a parameter, or a lambda's capture) the sorted canonical texts of
  its records' patterns. Twins are interned per program (`twins: Map<String, I64>`), so a pattern brought by any number of
  functions, through any number of calls, is judged once.
- **A symbolic record.** Inside a twin, a followed input holds records of a pattern, not of a body: `fnRec` gains a
  pattern in place of `Body` (sec8's `recRels` reads the pattern's relations, `Keeps`, `ResFn` instead of a summary's).
  A pattern's capture positions become scope variables of the twin (a new `typed.ScopeVar.Follow(input, k)`), bound at
  each call to the twin by the argument records' capture terms (sec8's `recBeta`), passed as hidden scope arguments
  where the twin builds there - the scope twins of sec8 round 4.
- **Judging.** Twins are nodes of the call graph beside bodies; Tarjan's components run over them, callees first, and a
  component is judged quietly to its fixed point and once more reporting, as bodies are. A twin's summary is what a call
  routed to it discharges (O10c), lends by (O17) and lands by (O18c). The plan of the calling body records which twin
  each call reaches (`Plan.Twin(site)`) for lowering, interpret and free.olang.
- **Errors.** A twin's errors are said at the call that first asked for it, as an instance's are (G16b): "this argument
  'link' is kept in a field of 'Wrapper' whose type says nothing of that - write 'keeps b in a' after its signature",
  with a note at the store in the callee. An error its ordinary judgment also gives is not said again (one cause, one
  error, as sec8's C4).
- **Recursion.** A twin calling its own body with the parameter handed on unchanged has its own key: a component of one
  node, judged to its fixed point like a recursive body. A call handing on a new lambda wrapping the parameter brings
  that lambda's pattern - its positions are its type's and its captures', so patterns are finitely many, though they may
  nest.
- **Limits.** At most 16 twins of one body, patterns nested at most 4 deep (a pattern of a function a captured function
  captured ...), and the program's twins at most 2% of its bodies (and at least 256). Past one, the argument is a
  boundary: where its pattern is not covered the error names the limit and the word that would let the parameter's type
  hold it - as G17 bounds generic instances, with an error, never a guess.

### 4.4 Code: twins with plans of their own, and clones where they pay

**A twin's code.** Where a twin's plan is the ordinary plan - every placement and scope argument the same, no hidden
scope variable of its own passed or built into - calls routed to it reach the ordinary code. Otherwise lowering reads the
typed body with the twin's plan and emit compiles it on its own, its name the body's with the key's canonical text
spelled injectively as G16a spells instances; its follow variables are hidden scope parameters (O4b). Twins are made in
the root object only, as instances are (B3d).

**Clones.** A clone is lowering's choice, made in the root object, in `-O3` and `-quick` builds (not `-debug`), where:

1. a call - of a body or a twin - gives a function parameter `k` a value whose functions are exactly one known body
   `L`: a named function, a lambda (its environment still passed as the value's second word), a type's `Call`;
2. the callee calls through `k` inside a loop, or hands `k` on, unchanged, to a callee that does (followed at most 4
   deep), and is not a body LLVM inlines whole anyway (an estimate: under ~32 MIR instructions with one call site); and
3. the limits allow it: at most 8 clones of one callee, and the clones' MIR at most 3% of the program's, the deepest
   loops first.

In the clone every call through `k` is a direct call of `L`'s code with the value's environment; a call handing `k` on
unchanged to a callee cloned for `L` goes to that clone (so a sort's whole chain - `sortMergeRuns`,
`sortMergeForward`, `sortInsert` - is cloned for one comparison); a call of itself handing `k` on unchanged goes to
itself. LLVM then inlines `L` where it is small. A clone is named by the callee's symbol and `L`'s. It computes exactly
what the call through the value computes (the same body with the same environment): unobservable. Calls through a value
whose type is `pure` may also carry LLVM's memory attributes (argument memory and the runtime's only) - measured, kept
only where they move a row (11, decision 8).

### 4.5 Effects through parameters, with no instances

effects.olang's `Facts` gain:

- `Calls I64`: by parameter, whether the body calls through the function value given for it - or hands it to code that
  may (a callee that calls through its own parameter, the `links` effects keeps for `Writes` already; a call through
  another value, which may call what it is given);
- for a lambda, the same of each captured function value;
- per-fact bounds in place of the one `Unknown`: a call through a value nothing is known of contributes its type's bound
  - every fact true but those its words make false - so `noalloc` alone still says "may block".

A body's own call through a value counts, by what the value is:

| the value | its facts |
|---|---|
| a named function, a lambda, an adapter written there; a local whose versions (`typed.Versions`) hold only such; a call's result where its callee's every return gives one such function | those bodies' facts, as calls (`curCalls`) |
| a parameter, or a capture | its `Calls` bit |
| anything else (a field, an element, an `any`, another call's result) | its type's bound (`pure` included: writes only through the call's `mut` arguments, mapped through `links`) |

At a call of a body, each `Calls` bit is resolved by the argument given for it: by its functions' facts where they are
known as above, by the caller's own bit where it is the caller's parameter or capture, and otherwise by its type's
bound. A function's facts read through its name (G42: `Apply.Allocates`) resolve its bits by its parameters' written
types. The least fixed point over the call graph's components is unchanged. effects.olang reads the records it needs
itself (syntactic ones and `typed.Versions`), so it keeps running after check and before the scope pass, as G42's
facts need (they are read back into check).

**Effect words checked.** Where check fits a function value to a function type with effect words or `pure` (E12), it
records the place; once the facts settle, each place is judged: the value's facts, as the table above gives them, must
be within the type's bound - else T22b's error, with a note at what breaks it ("its call of 'io.Println' allocates").
The effects pass runs in a build only where something asks: an explain or a doc line, a fact read (G42), or a function
type with an effect word or `pure` - so a program that writes no word pays nothing new.

### 4.6 Lending, early freeing, D9h, E31b and M19g

Every analysis that gave up at a call through a value now reads it in three ways - by the bodies where the value's
functions are followed, by the composition of 4.5 where it is a parameter, and by the type's words otherwise:

- **Lending (O17).** A call through followed functions lends by their bodies (since sec8's round 3), through a twin's
  followed parameter by the pattern's `Keeps`, `Stores`, `Puts`, and through an unfollowed value by its type's bound: a
  `keeps b in a` makes `a` stored into and `b` kept; without one it keeps nothing beyond the result (T22's sentence of
  O17, kept).
- **Early freeing (O8d, free.olang).** (1) A call through a value whose records the scope pass followed - its per-site
  records, written into the plan for free.olang - is judged as direct calls to each record's body (the union of their
  `resFrom`, `parStored`, `parEsc`, `lets`); (2) a call through an unfollowed value keeps what its type's `keeps` words
  name (an escape of the kept argument into the named place, `storeAs`) and, where its type is `pure`, lets go only
  through its `mut` arguments' places (`go` for those rather than `goAll`); otherwise today's; (3) a body's calls
  through a function parameter compose as effects' do - `letsVia` and `escVia` bits per function parameter, resolved at
  each call by the argument. A twin with a plan of its own is analysed as a body of its own; one sharing the ordinary
  plan shares its analysis.
- **D9h (lower.olang's quiet statements).** "A value reaching a function value" counts as a possible write today; now a
  call through followed functions counts what their bodies write, and one whose type is `pure` writes only through its
  `mut` arguments (judged by type, as D9h judges a direct call). So a view read across a call of a `pure` callback given
  nothing writable is left uncopied.
- **E31b (check.olang's in-place calls).** An argument, or an element's field, holding a function value no longer counts
  as a way to reach the collection where its type is `pure` (it writes only through its `mut` parameters, given by the
  method's body, which E31b already reads) or where it is a function or lambda written at the call whose body reaches no
  collection of the type (the attempts read bodies already).
- **M19g (views.olang).** A call through a `pure` value grows only what its `mut` arguments reach; a call through
  followed functions grows what their bodies grow.

### 4.7 Why it is sound

- *Patterns are complete.* Everything scope.olang's `call` reads of a callee for a direct call - the relations it
  discharges, where it forces a result or an argument to land (O18b, O18c), where it may build, what it keeps, stores and
  puts (O17), what its result carries (`ResBind`, `ResFn`), whether it hands back existing storage - is in the pattern,
  so a call through a symbolic record of pattern P is judged exactly as a direct call of any body of pattern P, and
  O10c's argument applies unchanged. A `-debug` compiler checks it: each call a twin judges through a followed
  parameter is judged again against each actual body the pattern stood for, and the two must agree.
- *Following is complete.* A followed parameter's value reaches in the callee only calls through it (judged by the
  pattern), returns (resolved by the caller to the argument's records), arguments for other function parameters
  (followed again), captures (followed into the lambda), locals (versions, O25i), and every other place - a boundary,
  judged by the place's type (T22b). Function values are immutable: nothing writes through one (T21) and a capture's copy
  is never repointed (D16c), so the records a parameter holds at the call are the records it holds wherever it reaches.
- *Twins only accept more.* The ordinary judgment is the twin with every input judged by its type; a call goes to a twin
  only where an argument's pattern is not covered by its parameter's type - exactly where T22a refuses today. For every
  program accepted today no twin is made and its plans are unchanged (round 4's gate: compiler/'s and bench's IR
  byte-identical before clones).
- *Limits fall back to today's rule*, which is sound, and they say so.
- *Clones and composition change no meaning.* A clone runs the same body with the same environment, its code pointer
  known; effects' and free.olang's composition takes, for each call through a parameter, every function the argument
  may be (followed records, else the type's bound, itself checked where values came to be held) - an over-approximation
  of what runs.
- *Nothing at run time* but which compiled code a call reaches; `interpret` follows the twins' plans (section 7).

### 4.8 Cost

- **Scope pass.** No twin on any program accepted today. The new work is, at each call passing a function value, its
  records' patterns (the projection of summaries already computed, interned once) and the coverage test T22a makes today
  at that very argument: ~200 calls in compiler/. Expected within the noise of the scope phase (~1.35 s on compiler/);
  measured with `OLANG_TIMES`, twins and patterns counted in `OLANG_SCOPESTATS`; gate +1%.
- **Effects.** A bit set per body and a resolution per call passing a function value; and it runs only where something
  asks (4.5), so a build of a program writing no word is unchanged.
- **Clones.** compiler/ passes ~91 lambdas and its named functions to ~81 calls of the walks (`Count`, `Some`, `Map`,
  `Fold`, `Sort` ...) and to ~14 function parameters of its own; most reach small walks LLVM inlines whole (no clone), so
  the clones that pay are the sorts and the folds over loops - an estimated few dozen of a few hundred instructions
  each, about +0.5% IR. Gate: the self-build's time and peak memory within +2%; bench within noise but its new row, a
  sort with a lambda against the same sort written with `<` (from the C measurement, ~1.4x faster with the clone).
- **Twins of programs refused today.** A whole judging of the body per twin, bounded by the limits.

## 5. One tier of keywords (L9)

**L9** (revised): the reserved words gain the promise words and the five words of one place:

```
if        else    try     catch   return  assert  noreturn
for       do      in      range   match   case    break   continue
is        as
and       or      not     xor
type      struct  enum    fn      error   mut     extends
trait     spawn   join    defer   errdefer yield   become
import    test    destruct embed  comptime
unreachable
extern    default
any       unique  immut   packed  commutes
returns   noalloc noblock nospawn norecurse noextern pure
keeps     borrows noborrow
```

**L9a** (its field list): every new word begins no statement and no value (`any` begins a type, never either), so each
may name a field declared with its type or `:=` and reached after `.` (`f.returns`), and, as every word, a method.
**L9b** and **L9c** are removed - their numbers left as gaps (a removed rule's number is never reused): the words are
reserved everywhere now, and each keeps the one place it means something - `immut`, `unique` and `packed` before a
type's body (T13a-T13c), `commutes` after an operator method's result (E31c), `any` before a trait's name where a type
is written (T32), the promises after a function type's signature (T21c).

**What it renames** (measured over the repository's code, comments and text left out): about twenty declarations in
twelve files, ~72 lines - in compiler/ the locals and parameters named `any` (free.olang five, scope.olang three, views,
cabi, generic, olang.olang), `keeps` (free, lower, scope - a parameter - and views), `pure` (check.olang's comparison
chain, a parameter and a local), `commutes` and `packed` (parse.olang); `any` in std/regex.olang and
tools/cli_words.olang. L9a keeps the rest: `types.Table.unique` and std/json's `writer.any<T>` are methods, free.olang's
`returns` a field. No name in the repository is spelled like a promise word but `keeps`, `pure` and `returns`.

**The tool.** `tools/keyword_rename.olang`, a text tool (srcmask) in `olang fix`'s table after the text tools: it renames
a local, parameter, function, type or global named by one of the new words, wherever it stands as that name - not after
`.`, not in the word's own place (above) - by appending `_` (L6 allows it; Python's convention for a name that became a
word), and leaves fields and methods (L9a). Idempotent. The repository's own names are renamed by meaning in the round
(`any` to `found`, `keeps` to `kept`, `pure` to `folded` ...), so no `_` name lands in the repository.

**DEPENDENTS.md**: the section "A word of one place" goes (its words are keywords: token.olang's `Tok` cases and
`Keyword`, session.olang's `Keywords`, editors/nvim's syntax - all [checked]), and a section "A promise word" is added
(section 9).

## 6. The passes, file by file

| file | what changes | round |
|---|---|---|
| token.olang | `Tok` cases, `Text`, `Keyword` for the seventeen words | 1 |
| parse.olang | the five old words read as tokens where they stood (`packedWord`, `commutes`, `any`); T21c's words after a function type's signature (`sig` for a type), the list ending as 3.1 says | 1, 2 |
| ast.olang, unparse.olang, fmt.olang | `ast.Sig` holds the words and the names they take; written back one space apart | 2 |
| types.olang | a function type's promises - canonical, by position - part of its identity (`Canon`, G16a's spelling) and its rendering (`$`, E11a); what `ScopesOf` and `ResultFrom` read of `borrows`/`noborrow` | 2 |
| check.olang | T21c's errors; E12 fits a function value across words and records the place for the passes; E31b reads `pure` | 2, 3, 6 |
| typed.olang | `ScopeVar.Follow(input, k)`, `Plan.Twin(site)`, the per-site records free.olang reads; the core otherwise unchanged | 4 |
| scope.olang | `valueRels` and `valueCovered` read the words; 2.2.1's capture check; T22a/T22b's errors naming the word; O17 by the words; then patterns, pass-through results, arguments and captures followed, symbolic records, twins as call-graph nodes with their components, limits, the twin a call reaches in the plan | 2, 4 |
| effects.olang | `Calls` bits, per-fact bounds for unknown calls, `Pure` and `Returns`, `Fact.Named`, the effect words checked at the places check recorded | 3 |
| free.olang | calls through followed functions as direct calls; the words; `letsVia`/`escVia`; a twin with its own plan analysed on its own | 4, 6 |
| lower.olang | a twin's code from its plan; clones; D9h reading `pure` and followed functions | 4, 5, 6 |
| emit.olang | twins' and clones' symbols, the hidden follow parameters, the root object only | 4, 5 |
| views.olang | M19g reading `pure` and followed functions | 6 |
| eval.olang, interp.olang | `interpret` follows a call into its twin's plan (B3e); nothing else | 4 |
| explain.olang, doc.olang, session.olang, lsp.olang, mcp.olang, api.olang | `# fits:`, twins and clones listed, hover, completion, `api`'s variance | 7 |
| msgs.olang, goldens/diag.txt | T21c's errors, T22a/T22b reworded to name the word, the limits' error | 2-4 |
| fuzz/scopegen.olang | higher-order calls given keeping callbacks, chains, fields with words | 4 |
| bench/ | a sort with a lambda beside the same sort with `<` | 5 |

## 7. The evaluator and `interpret` (K1, B3e)

- **Compile-time evaluation** runs before the scope pass on lowering's stand-in placement: twins, words and clones change
  nothing it computes (a call through a value is evaluated when the function it reaches is, K1, and its words are no
  run-time thing). Each round still gives it tests it runs, beside the run-time ones (checklist step 3): round 2 a global
  baked through a call through a field written `keeps k` (K2); round 3 top-level asserts reading facts through a promised
  parameter (S17a: `assert not Apply.Allocates` with `f fn&(x I64) I64 noalloc`, `assert Sum.Pure`, `assert
  Sum.Returns`); round 4 a global baked through `Count` given a keeping lambda, and an assert decided (S18c) in a callee
  given a keeping function.
- **`interpret`** places by the plans (B3e): a call the plan routes to a twin uses the twin's plan, so the interpreted
  run reclaims what the built run reclaims; clones are code only. The comparison (`interp@FILE`) runs every new test file;
  no new entry in evaldiff's `Expected` is foreseen.
- **The dead-region evaluator** (`OLANG_DEADREGIONS=1`) runs over the new tests in round 6, where early freeing starts
  reading followed functions and words.

## 8. Existing code and programs

- **Nothing to migrate** for following or promises: every change accepts more. The keyword round renames about twenty
  names (section 5).
- **std's higher-order functions** - the array and iterator walks (`Count`, `Some`, `Every`, `FindIndex`, `Map`,
  `Filter`, `Fold`, `Partition`, `MinBy`, `MaxBy`, `GroupBy` ...), the sorts of arrays, `Vec`, `Columns`, `ColumnVec` and
  `list.List`, `Map.Update`, std/sync's `With`, `Read`, `Write`, `Update` and `Do`, `time.Virtual`, `fuzz.Check`,
  `regex.ReplaceFunc`, `os.RunOnStack` - keep their source. Their callers may give them callbacks that keep their
  arguments in captured collections (`m.With(fn(v mut Vec<String&>&) { v.Push(name) })` keeping a caller's text), the
  callers' effects become what the callbacks do, and the sorts and the folds over loops are cloned per callback.
- **std writes no promise word in this work** (decision 18): a word on a parameter's type refuses callers whose callbacks
  do more, and gains nothing a followed call does not already know; words belong on stored function values, and std
  stores few - `heap.Heap`'s `less`, the lazy walks' fields and `Generator.next`, all fixed by a constructor (question 1).
- **Handler fields** - a GUI's `onClick fn?&(e Event&) keeps e`, a cache's `onEvict fn?&(k String&) keeps k`, an audio
  callback's `fn&(buf mut Array<F32>&) noalloc noblock` - are where programs write words.
- **Newly compiling** (each becomes a run case built `-debug -sanitize`, read back after a churn, keeping its comment and
  saying what it was): t22aobligation, t22sharedscope, t22sharedscopetype, t22sharedscopegeneric, t22agivenvalue,
  t22agivesarg, t22ainstancename, t22acapture, callvaluekeeps, callvaluekeepsframe (round 4); with the word written, new
  run cases beside t22apushed, t22alambdakeeps and t22areturncycle, whose fail cases stay with their messages naming the
  word (round 2).
- **Staying refused**: t22alatelambda; t32anyscopes (unless question 1); g42factvalue (its parameter writes no word -
  kept, with a passing twin writing `noalloc`); t22afallible and t22callunsafe (types); new fail cases for a lambda
  keeping `x` in a capture that outlives it (2.2.1), a pattern past a limit, an effect word broken, `pure` broken by a
  write through a capture, `returns` broken by an `assert`, and T21c's misplaced words.

## 9. Tools, and the walk of DEPENDENTS.md

- **explain (B11b).** Under a function, `# fits: fn&(a mut N&, b N&) keeps b in a noalloc noblock nospawn norecurse
  noextern returns pure` - the tightest function type it is a value of, words in canonical order, so a place holding it
  can copy the type. It replaces `# not a value` / `# as a value` (sec8 5.5); `# scopes:` and `# effects:` stay. A
  function judged in twins lists them as a generic lists its instances (`# followed for: 'link' (keeps b in a), at
  p.olang:12:5`), its clones after (`# compiled again for: 'less', at p.olang:20:9`). Every signature explain prints
  writes a function type's words.
- **doc (B14).** Signatures with their words; the `# fits:` line under each exported function.
- **The language server (B15).** Hover as explain; completion offers the promise words after a function type's
  signature, and the parameters' names after `keeps`, `in` and `borrows`; T22a/T22b's errors carry the word to write (a
  quick fix inserting it waits for code actions, which the server does not have).
- **mcp (B16).** `explain` and `doc` carry it.
- **api (B21).** Each exported function's `# fits:` type is compared by variance: a word it loses (it now allocates,
  keeps an argument, borrows from one more parameter) is breaking - an importer may hold it as a type with that word -
  and one it gains is `ok`. A function type written in an exported signature: a parameter's gaining a word, or losing a
  `keeps`, is breaking (its callers' functions must do less); the reverse is `ok`; a result's or a field's the other way
  round; a declared function type's words changing either way is breaking (it is held and given both).
- **The formatter (B13).** One space between words; `keeps b in a`, `keeps b in a.f`, `borrows a` as written;
  whitespace only.
- **`$`** of a function value renders its signature with its type's words (T21b, E11a).
- **editors/nvim**: the seventeen keywords (syntax/olang.vim, [checked]). **help**: no new mode or option.
- **DEPENDENTS.md**: "A word of one place" goes; "A promise word" comes - SPEC T21c and G42's table; token.olang (the
  keyword rows); parse.olang, ast.olang, unparse.olang (the words); types.olang (identity, spelling); scope.olang (a
  relation word) or effects.olang (an effect word: its fact in `Fact.Named`); explain's `# fits:`; session.olang's
  completion; editors/nvim; msgs.olang and diag.txt; `checks/cases`. One new **[checked]** edge for `make consistency`:
  every effect word and `pure`/`returns` has its G42 fact in effects.olang's `Fact.Named` and SPEC G42's table.
