# Function values followed into calls, promises on their types, and scopes found at run time (fnvalues)

The design note for function values and the section-8 decisions that came with them (2026-11-08, for review; nothing
built). It designs what the user decided on 2026-11-08 ("Function values DECIDED" in `.claude/memory/decisions.md`,
and the decisions that followed the same day, through the coordinator):

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
4. **A value's destructor runs where its storage lives** - "it's about scope closure": storage holding a value with a
   destructor that a kept view needs is built where the view is kept, and the destructor runs as that scope closes.
5. **C1: the right scope.** A build through a field whose referent's scope is known only per instance goes where the
   referent lives: passed by a call that knows it, found at run time where none does.
6. **Scopes found at run time from an address** (the user's choice of two): chunks aligned so a masked pointer gives its
   header and its scope, a lookup for large chunks, nothing stored per object - used only where no call knows the scope
   while compiling. It lets go of every "not known here" refusal of a build.
7. **`x.Destroy()` removed**: blocks, stores and a collection's removals end values.

The current state is SPEC.md T21-T22a, D8e, D16c-D16d, D17d/D17f, G42, L9-L9c, C9b, E11c and section 8 (O10b-O17b,
O11-O12, O15, O23a, O25i, O27, O8d), D9h, E31b and M19g; docs/sec8.md section 5 (records), its round 4 and questions 1
and 2 (the "scope twins" designed here, and the destructor views).

## Progress

Hand-off for a fresh agent after a restart. Output: this file only, committed on wt-fnvalues and pushed (docs/README.md
needs one line for it - `make consistency` lists docs/ - left to the merge, the brief allowing this file alone).
Probes: the compiler of 1879ade (`/home/user/wt/merge/build/olang`, copied to the scratchpad) run with
`OLANG_STD=/home/user/wt/fnvalues/std`; a copy of std with runtime.ll counting every scope allocation, used to build a
counting compiler; scratch programs, none committed.

- [x] read: SPEC T21-T22a, L9-L9c, D7/D8/D8e, D16c/D16d, D17-D17g, G42, O10b-O17b, O23a, O13c, O15, O27, C9b, E11c, D9h,
  E31b; docs/sec8.md; DEPENDENTS.md; decisions.md (2026-11-08 entries); scope.olang (records, `summary`, `boundary`,
  `valueRels`, `valueCovered`, the call through a value, `buildsThrough`, the view refusals), effects.olang, free.olang
  (calls, Part C, `escapedHolder`), lower.olang (`escapedHome`), parse.olang, api.olang, runtime.ll (chunks, the pool,
  the bump path)
- [x] measured (section 1, 11.1, 12.7, 13.2): the shapes refused today, effects "anything" through values and generator
  walks, the indirect call per comparison in a merge sort, the names the one-tier keywords take, C1's growth (197 MB
  against 12.5 MB), the self-build's and bench's allocations (what a word per object would cost), `Destroy()`'s uses
- [x] the user's decisions folded in as they came (2026-11-08, through the coordinator): the spellings (words after a
  function type's signature, function types only, `noreturn` no promise in kind, `keeps n in list`, `borrows a`,
  `noborrow`, `returns`, `pure`), one tier of keywords; destructors follow storage; C1 to find the right scope; scopes
  found from an address; `Destroy()` removed; the reference-counting comparison cut to a paragraph. Dropped drafts:
  promises in the contract brackets, `noreturn` moved, promises on declarations, a destructor staying with its holder
  while a view keeps its storage, C1's program-scope fallback as the answer
- [x] sections 0-16
- next: nothing - the note is complete; a build starts from section 14's round 1

## 0. Summary

A function value hides which body runs, so every analysis that reads bodies goes blind at a call through one: the scope
pass judges it by the written type (T22) and refuses at a boundary any function whose relations are more (T22a), the
effect summaries say "anything" (G42), early freeing keeps (O8d), lending (O17), D9h's left-out copies and E31b's
in-place calls give up, and nothing is inlined. The most common callback shape is refused today -
`words.Count(fn(w String&) Bool { o.Push(w); return true })` - and the most common higher-order calls make their
callers' effects "anything". Beside it, section 8 still refuses every build into a scope it cannot name while
compiling, builds C1's into the program's scope (197 MB where 12.5 MB will do, 11.1), and refuses a view of storage
holding a destructor value.

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
5. **Destructors follow storage (O27, O15, section 10).** One rule with bulk review 7's F4: a value's destructors run
   as the scope its storage was built in closes - so a view kept longer moves the value's end with its storage, said by
   `-memory`. `ViewKeptDestructor` and `PartKeptDestructor` go.
6. **C1 (O23a, section 11).** A body building through a field with a binding of its own takes a hidden scope parameter
   for it - passed by a call that knows the binding, else found at run time; a holder's drop knows it. The measured loop
   goes from 197 MB to the 12.5 MB of the direct form.
7. **Scopes found at run time (O29, section 12).** Chunks of up to 128 KB sit in 128 KB-aligned slots of one reserved
   range, so `p & ~(128K - 1)` is a chunk's header, which now names its scope; larger chunks are found in a sorted
   table; storage in no chunk is the program's. Nothing per object (the self-build makes 96.6 million allocations of 105
   bytes on average: a word each would be 772 MB more); a lookup only where the compiler could not place. O12's, E11c's,
   O25i's and O23a's refusals of a build become programs (about forty cases in checks/).
8. **`x.Destroy()` removed (section 13)**, with `tools/destroy_migrate.olang`.

**Rounds** (section 14): 1 keywords one tier; 2 `Destroy()` removed; 3 destructors follow storage; 4 promise words and
the relation words; 5 effect words and effects through parameters (beside 4); 6 scopes found at run time; 7 following
into calls (twins); 8 derived scopes passed; 9 clones; 10 early freeing, lending, D9h, E31b and M19g read what is
followed and promised; 11 the tools; 12 (only if question 1 or 2 says yes) functions fixed in a constructor's field
followed, and promises on a trait's methods for `any`.

## 1. Where things stand (measured at 1879ade)

Each shape was built with the compiler of 1879ade, or is a case in `checks/cases` (named).

| shape | today | after |
|---|---|---|
| `o mut Vec<String&>& = out` then `words.Count(fn(w String&) Bool { o.Push(w); return w.Len() > 1 })` | T22a: "this lambda keeps 'w' beyond the call, and this argument holds only what its written function type says" | compiles (round 7): Count judged once for the lambda's pattern, `keep(x)` as the direct call |
| `apply(hang, a, b)` (t22aobligation), `put(link, x, 42)` (t22sharedscope), `put(link, x)` with a local (t22sharedscopetype) | T22a | compile (round 7); put's twin builds `N(i)` where `a` lives (O18b through link's relation) - a plan of its own |
| `keep<F>(f F) F`, `f := keep(link)` (t22sharedscopegeneric) | T22a (sec8 question 1's default) | compiles (round 7): the result gives back what was given for `f` |
| `put(get, x)` with `get` giving `link` (t22agivenvalue); `use(adder(gone))` (t22agivesarg); `use(keepIt<Blob>, v)` (t22ainstancename) | T22a | compile (round 7) |
| `keepVia(kp, fn() I64 { ... })` with `kp` a `Call` adapter keeping it (callvaluekeeps, callvaluekeepsframe) | T22a | compile (round 7) |
| a lambda capturing `g := link` and calling it (t22acapture) | T22a (a capture is a boundary, sec8 decision 15) | compiles (round 7: captured function values followed) |
| `fs.Push(g)` into `Vec<fn&(a mut N&, b N&)>` (t22apushed); `c.onEvict = fn(k String&) { goneRef.Push(k) }` (t22alambdakeeps) | T22a | refused, the error naming `keeps b in a` / `keeps k` for the element's or field's type; compile once written (round 4) |
| `pick` calling itself and returning `link` (t22areturncycle) | T22a | refused unless its result type writes `keeps b in a` (round 4) |
| a version of a cursor reached in a loop's next turn before it is judged (t22alatelambda) | T22a | unchanged (judged at the read as at a boundary, sec8 5.2) |
| a method an `any` calls requiring a scope relation (t32anyscopes) | T32a | unchanged unless question 2 (round 12) |
| effects of `Use() { return Apply(Twice, 3) }`, of `xs.Fold(0, fn(a I64, x I64) I64: return a + x)`'s caller | "anything - it calls through a function value or an 'any'" | `Twice`'s facts, the lambda's facts (round 5) |
| effects of a `for x in Gen(4)` over a generator | "anything" (the walk calls `Generator.next`, a field) | unchanged, unless question 1 (round 12) |
| `assert not Apply.Allocates` with `f fn&(x I64) I64` (g42factvalue) | false: decided while compiling | unchanged; true with `f fn&(x I64) I64 noalloc` (round 5) |
| `v.Sort(fn(x I64, y I64) Bool: return x < y)` | an indirect call per comparison through `sortMergeRuns`, `sortMergeForward` ... | a clone of the sort with the comparison direct, inlined by LLVM (round 9) |

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

`WritesGlobals` and `Terminates` stay facts with no word (`pure` and `returns` say more; 15, decision 9). D17d ("a
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
only where they move a row (15, decision 7).

**As built (round 9, 2026-11-09).** Lowering's `KnownValues` reads what a MIR function's locals hold of function values
(a closure, or a parameter nothing assigns, through single copies), `LoopDepths` the loops each block is in, and a
callee's `CloneSum` its calls through each parameter and its hand-ons (at the callee's parameter of the very same type,
so no adapter stands between); emit collects the sites while it writes the root's object, `DecideClones` chooses, the
calling functions are written again with their calls to the clones, and each clone is the base's MIR written with
`fnEm.clone` set. A site is only in the root's object (its own code, the instances), so no module's object depends on
which clones a program makes (B3i). The 3% limit has a floor of 256 KB of IR: a small program's 3% (the prelude's
~0.75 MB) would not hold one sort's chain (~43 KB, a MIR instruction ~64 bytes of IR measured). LLVM's memory attributes
on calls through `pure` values were not added (no row asked for them). `OLANG_CLONES` prints the sites, the choice and
each callee's summary. compiler/'s self-build makes 50 clones, +0.35% of its IR (its root's sorts and the prelude's sorts by positions);
its IR differs only by them, the calls reaching them and the lambdas copied beside them.

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

**As built (round 10, 2026-11-09).** The scope pass keeps, by (body, site), the bodies a call through a value was judged
as where its records are all known (`Scoper.ValueRecsAt`, written by its reporting judging), and says whether a local is
ever assigned (`AssignedLocal`). free.olang's `valueCall` judges such a call as direct calls of each record (`asRecord`:
its stores, keeps, whole moves and let-goes, shifted one for an adapter's instance); a call through a parameter its body
never assigns (`fixedParam`, the first 62) records `letsVia`/`viaMut` bits and `escVia` triples (p, q, j) instead of
letting go of anything and keeping a parameter's value, and each call of the body resolves them by its argument
(`viaCall`: a function or a lambda written there - through a conversion to the parameter's type - by its body's summary,
the caller's own fixed parameter composed again, else by the type); in the body's own final walk the call is still an
event for any place, so views it holds across it are judged as before. Anything else keeps every argument, as before -
item (2)'s `keeps` words are not relied on: a value followed into a twin (T22c) may keep more than its parameter's type
says, and a body's analysis is its twins' too - and lets go of nothing where its type is `pure` and it is given nothing
that may write (effects are never followed past a type's words: T22b refuses an impure value held as `pure`). `-memory`'s note at such a let-go
says "it calls through a function value not followed whose type does not promise 'pure'" or "it is given ..., and calls
through it". D9h (lower.olang's `quietCall`), E31b (check.olang's `plainArg`, `pureFnArg`, `collWalk`, `settleInPlace`:
`Through` only with `Impure`) and M19g (views.olang's value calls) read `pure` through `types.ReachesImpure`,
`ReachesWrite(t, clean = true)` and `PromisesPure`; a lambda written for a `pure` parameter arrives as a conversion to
that type, read through. M19g follows only a function written where it is called (views.olang runs before the scope
pass, with no records); D9h judges a call through a value only by its type. Twins share the ordinary body's analysis.

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
  program accepted today no twin is made and its plans are unchanged (round 7's gate: compiler/'s and bench's IR
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
| parse.olang | the five old words read as tokens where they stood (`packedWord`, `commutes`, `any`); T21c's words after a function type's signature (`sig` for a type), the list ending as 3.1 says | 1, 4 |
| ast.olang, unparse.olang, fmt.olang | `ast.Sig` holds the words and the names they take; written back one space apart | 4 |
| types.olang | a function type's promises - canonical, by position - part of its identity (`Canon`, G16a's spelling) and its rendering (`$`, E11a); what `ScopesOf` and `ResultFrom` read of `borrows`/`noborrow` | 4 |
| check.olang | `Destroy` gone; T21c's errors; E12 fits a function value across words and records the place for the passes; E31b reads `pure` | 2, 4, 5, 10 |
| typed.olang | `PrimOp.Destroy` gone; `Scope.Inert` becomes `Scope.Found`; `ScopeVar.Follow(input, k)`, `ScopeVar.Passed(p, V)`, `Plan.Twin(site)`, the per-site records free.olang reads; the core otherwise unchanged | 2, 6, 7, 8 |
| scope.olang | destructor storage placed for a view; `valueRels` and `valueCovered` read the words, 2.2.1's capture check, T22a/T22b's errors naming the word, O17 by the words; sites placed `Found` where a build's scope is not known, the refusals of 12.4 gone; patterns, pass-through results, arguments and captures followed, symbolic records, twins as call-graph nodes, limits, the twin a call reaches in the plan; derived scopes passed | 3, 4, 6, 7, 8 |
| effects.olang | `Destroy` gone; `Calls` bits, per-fact bounds for unknown calls, `Pure` and `Returns`, `Fact.Named`, the effect words checked at the places check recorded | 2, 5 |
| free.olang | the destroy targets gone; a twin with its own plan analysed on its own; calls through followed functions as direct calls, the words, `letsVia`/`escVia` | 2, 7, 10 |
| lower.olang | `__olang_scope_of` where a site is `Found`; a twin's code from its plan; the derived scopes' hidden parameter; clones; D9h reading `pure` and followed functions | 6, 7, 8, 9, 10 |
| emit.olang | the found scope's call; twins' and clones' symbols, the hidden parameters, the root object only | 6, 7, 8, 9 |
| views.olang | M19g reading `pure` and followed functions | 10 |
| std/runtime/runtime.ll, san.ll | slots, the chunk's `owner`, the large table, `__olang_scope_of`; quarantined slots | 6 |
| eval.olang, interp.olang | `interpret` runs a moved destructor where its storage's scope closes, builds a found scope in the referent's own, follows a call into its twin's plan | 3, 6, 7 |
| olang.olang, session.olang | `-memory`'s row and the language server's hint for a moved destructor | 3 |
| explain.olang, doc.olang, session.olang, lsp.olang, mcp.olang, api.olang | `# fits:`, twins and clones listed, hover, completion, `api`'s variance | 11 |
| msgs.olang, goldens/diag.txt | `Destroy`'s and the destructor views' messages gone; T21c's errors, T22a/T22b reworded to name the word; the refusals 12.4 lets go; the limits' error | 2-8 |
| std/net.olang, tests, checks, fuzz/scopegen.olang | `Destroy()` uses migrated (13.2); higher-order calls given keeping callbacks, chains, fields with words | 2, 7 |
| tools/ | `keyword_rename.olang`, `destroy_migrate.olang` in `olang fix` | 1, 2 |
| bench/ | the measured C1 loop; a sort with a lambda beside the same sort with `<` | 8, 9 |
| seed/ | regenerated: the runtime is in it | 6 |

## 7. The evaluator and `interpret` (K1, B3e)

- **Compile-time evaluation** runs before the scope pass on lowering's stand-in placement: twins, words and clones change
  nothing it computes (a call through a value is evaluated when the function it reaches is, K1, and its words are no
  run-time thing). Each round still gives it tests it runs, beside the run-time ones (checklist step 3): round 4 a global
  baked through a call through a field written `keeps k` (K2); round 5 top-level asserts reading facts through a promised
  parameter (S17a: `assert not Apply.Allocates` with `f fn&(x I64) I64 noalloc`, `assert Sum.Pure`, `assert
  Sum.Returns`); round 7 a global baked through `Count` given a keeping lambda, and an assert decided (S18c) in a callee
  given a keeping function.
- **`interpret`** places by the plans (B3e): a call the plan routes to a twin uses the twin's plan, so the interpreted
  run reclaims what the built run reclaims; clones are code only. The comparison (`interp@FILE`) runs every new test file;
  no new entry in evaldiff's `Expected` is foreseen.
- **The dead-region evaluator** (`OLANG_DEADREGIONS=1`) runs over the new tests in round 10, where early freeing starts
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
  t22agivesarg, t22ainstancename, t22acapture, callvaluekeeps, callvaluekeepsframe (round 7); with the word written, new
  run cases beside t22apushed, t22alambdakeeps and t22areturncycle, whose fail cases stay with their messages naming the word (round 4).
- **Staying refused**: t22alatelambda; t32anyscopes (unless question 2); g42factvalue (its parameter writes no word -
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
- **A runtime function** (DEPENDENTS.md's section): `__olang_scope_of` and `__olang_san_check_owner` in runtime.ll and
  san.ll, emit's declarations, the evaluator's equivalent (12.6), a C-driven test beside the region test, the seed.
- **A rule removed**: C9b, L9b and L9c leave gaps; their messages leave msgs.olang and diag.txt.
- **DEPENDENTS.md**: "A word of one place" goes; "A promise word" comes - SPEC T21c and G42's table; token.olang (the
  keyword rows); parse.olang, ast.olang, unparse.olang (the words); types.olang (identity, spelling); scope.olang (a
  relation word) or effects.olang (an effect word: its fact in `Fact.Named`); explain's `# fits:`; session.olang's
  completion; editors/nvim; msgs.olang and diag.txt; `checks/cases`. One new **[checked]** edge for `make consistency`:
  every effect word and `pure`/`returns` has its G42 fact in effects.olang's `Fact.Named` and SPEC G42's table.


## 10. A value's destructor runs where its storage lives (O27, O15)

The user, 2026-11-08, on docs/sec8.md question 2 (storage holding a value with a destructor, kept for a view): the
destructor runs "when the value that has the destructor leaves any scope. So if we place it in a list, then that list
also has to go ... it's about scope closure." Today O27 refuses it - `ViewKeptDestructor` ("this keeps a view of 'f',
whose destructor runs when its block ends"), `PartKeptDestructor` - in checks/cases o27destructorview,
o27destructorcall and o27destructorgen.

### 10.1 The rule, as SPEC would state it

**One rule: a value's destructors run where its storage lives - as the scope the compiler built its storage in closes,
wherever placement put it.** It is bulk review 7's F4 (a whole value whose storage flows out is registered where the
storage lives, `escapedHome`) extended to storage built longer for a view (O27).

**O27** loses the last of its refusals ("and storage holding a value whose destructor is still to run ... so `f :=
File(p); keep.Push(f.name[0:1])` in a loop is refused") and gains: "Storage holding a value with a destructor to run is
built where the view is kept like any other storage, and the value goes with it: its destructors run as that scope
closes (O15), not where its variable's block ends - `for i in range 3 { f := Res($i \"-file\"); keep.Push(f.name[0:1])
}` keeps each turn's `f` open until the scope `keep` lives in closes. `-memory` says so for each (B18)."

**O15**, its item for a variable whose storage flows out of its block, becomes: "A variable whose storage the compiler
builds outside its block - flowing out whole (returned as a reference or an `any`, held by a returned value's reference
field, stored by reference, captured by a returned closure, O26a) or built where a view of it, or of a part of it, is kept
(O27) - lets go where that storage lives: as its block is left it is registered with that scope, as a value no place
takes is (O16), and its destructors run as that scope closes."

**B18** (`-memory`) gains a row for each destructor so moved: `p.olang:12:9: memory: 'f' is built where 'keep' lives
(main's scope), a new one each time it is made, for a view of it kept here - its destructor runs as that scope closes,
not at the end of its turn; keep a copy ('$f.name[0:1]') to end it with its turn`. The language server's placement
hint says the same.

### 10.2 What changes, and where

- **scope.olang**: `liftable` stops refusing a local whose type `mayHoldDtor` for a view's, a part's or a capture's
  lift; `viewKeptMsg`'s and `partKept`'s destructor messages go; the placement is recorded (`placed`) as every view's.
- **lower.olang**: nothing - `escapedHome` already registers a holder whose plan stores it outside its block where the
  storage lives, whatever moved it. **free.olang**: nothing new - `escapedHolder` registers it there too, and Part C
  lets go of no leaf at the variable's block end (the value is not ended there). Early freeing reclaims it with its
  scope, or earlier where that scope's place lets go of it (O8d).
- **olang.olang** (`-memory`) and **session.olang** (the hint): the destructor's sentence on a placement whose local
  `mayHoldDtor`.
- **msgs.olang**: `ViewKeptDestructor` and `PartKeptDestructor` go; `make diaggold`.
- **The evaluator and `interpret`**: `interpret` places by the plans and runs a registered value's destructors as its
  scope closes (B3e) - so it ends `f` where the build does; compile-time evaluation refuses destructor-bearing values
  outside a global's own frame (K2c), unchanged.

### 10.3 Why it is sound

Storage and destructor move together, so no view ever reads a value whose destructor has run: the storage a view names
is built where the view is kept (O27's placement, sound by sec8 4.5), the value is registered there (O16) and ended as
that scope closes, after every holder of a view in it is gone. Each destructor still runs exactly once - the variable's
own drop is replaced by the registration, as F4's are - in the reverse order of registrations (O16). Nothing at run
time changes for a program accepted today: none of them places a destructor-holding local for a view (the gate: bench's
and compiler/'s IR byte-identical).

### 10.4 Programs

o27destructorview, o27destructorcall (both shapes) and o27destructorgen become run cases (`-debug -sanitize`, read back
after a churn, keeping their comments and saying what they were): the kept views print first, then every destructor's
line as the outer scope closes; o27destructorgen's walk ends each turn's value where the generator's home closes
(D18c). New cases: a `-memory` scenario showing the moved destructor's row; a loop keeping views of files, the
descriptors open until the list's scope closes (read back through `/proc/self/fd`, as the earlyfree fixtures do).

## 11. Building where a field's referent lives (C1, O23a)

The user, 2026-11-08, on C1 (a call building through a reference field whose referent's scope is a derived scope builds
into the program's scope today, SPEC O23a and C2d, HISTORY "C1: a destructor building through its instance's reference
field"): "they should find the right scope" - at compile time first, and by run-time scope finding (section 12) where
no call knows it.

### 11.1 Today, measured

`type Logged unique struct(id I64, log mut Tally&) { id, log } destruct { log.Saw(id) }`, `Saw` pushing into the
Tally's Vec. A loop of 200,000 turns, each making a `Tally` and 64 `Logged` holding it (the shape of tests/drops.olang),
built with the compiler of 1879ade: **197 MB peak and 0.166 s**; the same pushes written directly into the turn's Tally:
**12.5 MB and 0.028 s**. The destructor's call of `Saw` is passed the program's scope for the Tally's referent (O23a: a
derived scope exists at no run time), so every grown buffer stays until the program ends - about 1 KB a turn.

### 11.2 At compile time: a derived scope passed where a call knows it

A derived scope `Derived(p, V)` - where the argument for parameter `p` bound its field's binding `V` (O23a) - is resolved
at each call already, for judging. A body that may build into one (its summary records it: `Builds` over its derived
positions, which `buildsThrough` drops today) takes a **hidden scope parameter** for it, as every reference parameter's
scope is passed (O4b) - per call, never a word stored with the instance:

- **A call that knows it passes it.** The argument's per-instance bindings (O23a, O13c: carried through locals from a
  constructor's call, through a call's result, through a for-in's hidden locals) give it: a block, a scope variable or the
  program's scope of the caller, or a derived scope the caller was itself passed. A holder's drop knows its local's
  bindings (`a Logged = Logged(j + k, t)`: `log` was bound where `t` lives), and a collection's conditional destructor
  ending its elements knows them where the collection's element claim is one known scope.
- **A call that does not, passes "find".** The parameter is then null, and the body finds the scope from the field's
  referent's address where it builds (section 12). A value registered with a scope (O16) is ended by the runtime walking
  the scope's list, which passes "find".
- **In the body**, a build through the field goes to the passed scope, else the found one; a callee given the field's
  referent (`log.Saw(id)`: Saw's receiver) is passed it as its receiver's scope - an ordinary scope argument, so `Saw`
  itself needs nothing new; every relation is still judged against the derived scope (O23a).

One body, no twin: the parameter is an argument like a reference parameter's scope. So the measured loop's destructor
is passed the turn's Tally scope at each holder's drop, `Saw` grows the Vec there, and the turn's buffers go with the
turn - the 12.5 MB of the direct form. Where nothing passes it (a `Logged` read out of a collection of mixed origins),
the find gives the same answer at the cost of a lookup (section 12.7).

**O23a** (revised): its sentence "A callee that may build into a derived scope ... is passed the program's scope for
it" becomes "A callee that may build into a derived scope is passed, by a call that knows where the argument's field
refers - the binding its value carries, a block, a scope variable or the program's scope of the caller, or a derived
scope the caller was passed - that scope, as a reference parameter's is (O4b), and builds there; given none, it builds
where the field's referent is found to live (O29)"; and "it exists at no run time, so nothing is built into it: a
temporary put where a derived scope's referent lives, or a result that would land there, is a compile-time error"
goes - such a temporary or result is built where the referent is passed or found to live. **C2d**'s sentence on C1 the
same.

### 11.3 Why it is sound

A field with a binding of its own refers into the scope the binding names, and every write of the field is held to it
(O23a's last sentence), so a binding a call reads from the argument is where the referent lives; building there is what
a reference parameter's build is (O18c), sound by the same argument (I1: what is stored into the referent was built in
its scope; I2: the binding is that scope exactly, a reference's tag being exact, O25). A found scope is where the
referent's storage is (section 12.8). A passed scope is passed as every scope argument is - a task given one gets its
private stand-in (P2).

### 11.4 Programs

The measured loop becomes a run case reading its own peak (within a few MB of the direct form) and a bench row;
tests/drops.olang's `Logged` keeps its output, now building in the Tally's scope; derivedcopybuild and
strderivedcallback (run cases since C1) read back after a churn as before; new run cases: a `Logged` read out of a
collection whose elements hold different Tallies (found), a temporary built where a derived scope's referent lives
(refused today). Evaluator: a global baked through a destructor's build in a known scope (K2c's own frame) and an S17a
assert over `logged()` (as tests/drops.olang has).

## 12. Finding a scope at run time from an address (O29)

The user, 2026-11-08, chose it (option b of the coordinator's two: a word per object, or the scope found from where the
storage is): a scope that no call knows while compiling is found while running, from the base address of storage that
lives in it - chunks aligned so a pointer masked gives its chunk's header, a lookup for large mapped chunks, **nothing
stored per object**. Used only where no call knows the scope while compiling.

### 12.1 The rule, as SPEC would state it

**O29 (a scope found at run time).** Where something is built into a scope the compiler cannot name while compiling -
a derived scope no call passes (O23a), one of several (O12, E28), one a cursor's versions differ on (O25i), one not
traced (O11), where a rendering's `Str` reaches (E11c) - it is built in the scope the storage it is built through or
into lives in, found while the program runs from that storage's address. Nothing is stored per value for it: a value's
size, `T.Size`, a struct's layout and C's view of it (X11) are what they are without it. Storage on a stack, in a global,
in constant data or in memory C made is found as the program's scope. A scope found is the one the storage lives in -
or, for storage in no chunk, the program's, which outlives it - so what is built there lives as long as what it is
reached through, exactly where the storage is in a chunk (I1, I2). Nothing else is decided at run time:
every judgment of section 8 about existing storage - that a reference outlives what it is stored in, exactly where
something can be stored through it - is made while compiling, as before.

**O12** (revised): "... it may be read, compared, walked and passed where outliving suffices; what is built through it
is built where its referent is found to live (O29); a reference of it bound to a callee's scope variable through which
something can be stored passes the scope found from it at the call." **E11c**: "`$` passes a `Str` the scopes its
receiver's references are found in (O29), so a `Str` may build and store where its receiver reaches" (the
"builds and stores nothing" restriction goes). **O25i** (item 2): "nothing is built through it" becomes "what is built
through it is built where its referent is found to live (O29)". **O11** likewise.

### 12.2 The allocator (std/runtime/runtime.ll)

Today a chunk is a 64-byte header and a data area, its size one of four classes per power of two from 4 KB, taken from
`aligned_alloc` (64-byte aligned) below 128 KB and from `mmap` above, pooled per thread (O8b); its header holds `next,
used, cap, maplen, fresh, class, prev, stamp` - nothing names the scope using it. The changes:

- **Slots.** At start the runtime reserves one large range of address space (1 TB, `MAP_NORESERVE`, halved until the
  system grants it - a 39-bit address space grants 256 GB; down to 4 GB at the least) and carves it into **slots** of
  `G = 128 KB`, each `G`-aligned (where the system refuses a `MAP_NORESERVE` range - strict overcommit - the range is
  reserved `PROT_NONE` and each slot made writable as it is first carved, one `mprotect` on the slow path). Every chunk of up to `G` - every class below today's mmap threshold - is placed at the
  start of a slot of its own, its capacity its class's as today: the pages it never touches cost no memory (address
  space only). Carving is a bump of the range's next slot (an atomic add on the slow path, `__olang_new_chunk`), so a
  small chunk needs no `aligned_alloc` call; a slot given back to the system is `madvise(MADV_DONTNEED)`d and stays the
  pool's, so its address is reused, never unmapped.
- **The header names its scope.** The header gains `owner` - the scope, part (P2) or region (O8d) whose list holds the
  chunk - written where a scope takes a chunk (`__olang_new_chunk`, the pool's hand-out, the spare's, a region's: the
  slow path, one store) and cleared as it goes back to the pool. Packing `fresh` and `class` into one word keeps the
  header at 64 bytes, so data stays 64-aligned (O8a).
- **Large chunks** (above `G`) are mapped as today, their size rounded up to `G`, and entered in a **large table**: a
  sorted array of `(start, end, header)` behind a reader-writer spin lock, written where one is mapped or unmapped,
  read by a binary search. There are few: a scope's chunk above 128 KB.
- **`__olang_scope_of(p)`**: `p` within the slot range - the slot's header at `p & ~(G - 1)` (one mask), its `owner`; else
  the large table's; else none, the program's scope (a stack, a global, constant data such as `@__olang_empty_array`, C's
  memory). A region found is read as the scope the region lives in (a region is released at its place's let-go, O8d, and
  nothing found may be built into storage early freeing has not planned for). The scope found is then this thread's
  part of it, `__olang_capture_scope` (decision 48: scope parts per thread, folded at the close), so a build found into a
  scope another thread owns takes its own part as a closure's does today; a task's stand-in (P2) forwards as it does.
- **-sanitize (B2f).** Closed chunks are poisoned and protected as today; a quarantined slot is not reused until the
  quarantine lets it go. `__olang_scope_of` on storage whose scope has closed reads a protected header and stops there -
  the sanitizer's report for a use of dead storage, which it is. A sanitized build checks `owner` against the scope list
  it is on (`__olang_san_check_owner`).
- **Threads.** The slot range is shared; carving is atomic; each thread's pool holds its own slots as today (O8b). A
  header's `owner` is written by the thread taking the chunk and read by another only through a reference to storage in
  it, which a happens-before edge carried there (P8) - as the storage itself is read.

### 12.3 The compiler

The plan's `Scope.Inert` ("a live scope nothing is built in", lowering opening one and the MIR verifier refusing a build
into it) becomes **`Scope.Found(x)`**: a scope found from an operand at run time - the reference built through, the
field's referent, the receiver of a `Str`, the argument for a callee's scope variable. Lowering emits
`__olang_scope_of(x)` where the scope is first needed in a statement and reuses it within the statement; a callee's
hidden scope parameter given "find" (11.2) calls it in the callee at its first build. The scope pass places a site
`Found` where today it reports a build into a scope not known here.

### 12.4 What it lets go

Refusals that become programs (each a run case, `-debug -sanitize`, read back after a churn):

| rule | today | after |
|---|---|---|
| O12 (`BuildIntoUnknownScope`, `StoreIntoUnknownScope`'s build half) | building through a reference, or into a place, whose scope is one of several - a conditional's (E28), a `match`'s, a member read out of one: rv3condstore, rv5condmember, condvaluefield, o12spawntarget | built where the referent is found |
| O25i (`VersionsDiffer`'s build half) | building through a cursor whose versions differ (nllmerge) | found |
| E11c (`'$' does not say where a value it renders lives, so Str builds and stores nothing`) | 35 cases (`str*`, c2dcapturebuild) | a `Str` builds where its receiver reaches, found |
| O23a / C2d (`BuildThroughUnknownScope`; a temporary or a result landing where a derived scope's referent lives) | refused; C1's builds into the program's scope | passed (11.2) or found |
| O11 | building through an untraced reference | found |
| O27 (`ViewKept`'s "where it is kept is not known here") | a view kept where its keeper's scope is one of several | its storage built where the keeper's referent is found |

What stays refused: storing **existing** storage into a place whose scope is not known exactly where something can be
stored through it (O25g's exactness, which no run-time finding can make true of storage already built), and every
judgment that a reference outlives what it is stored in - the compile-time proof is section 8's, unchanged.

Compiler machinery that goes: `typed.Scope.Inert` and the MIR verifier's rule for it; C1's program-scope special case
in `scope.buildsThrough`; `buildsIntoSet` and the three refusals above; E11c's no-build rule for a rendering and its
`Str` checks; O23a's refusal of a build into a derived scope, and the giving back of a field's promotion it forced
(HISTORY "C1": "refused and the field's promotion given back", 2.6 step 4) - promotion stays only as precision (a field
promoted needs no lookup). The judging of derived and unknown scopes (obligations, `Set` terms, underestimates) stays:
it decides what may be stored, and finding decides only where new storage goes.

### 12.5 What it does not change

The compile-time proof that no reference outlives its target (FIT, O10b/O10c, I1 and I2 for existing storage);
placement where the compiler knows the scope - every build it can place is placed while compiling, and a lookup is made
only where it cannot; obligations; where a lambda lives (D16d); tasks (P2); destructors (registered where they are
built, O16 - a value built in a found scope is registered with that scope); early freeing's plans (a found region is
read as its scope, 12.2).

### 12.6 The evaluator and `interpret`

The evaluator knows each storage's scope (its values carry where they were built), so a found build in `interpret` is
built in the referent's own scope - exactly what the lookup gives; compile-time evaluation places everything in the
program's scope (lowering's stand-in), where a find is the program's. Values agree; the dead-region evaluator
(`OLANG_DEADREGIONS`) runs over the newly compiling cases.

### 12.7 Cost, measured

Counted with a copy of runtime.ll counting every scope allocation (scratch, not committed):

| program | allocations | bytes | average | a word per object would add |
|---|---|---|---|---|
| the self-build's front end (`build -quick compiler/olang.olang`, one process) | 96,565,710 | 10.17 GB | 105 B | 772 MB (+7.6%) and 96.6M stores |
| bench/binarytrees | 135,869 | 2.17 MB | 16 B | +50% |
| bench/text | 2,019 | 55.8 KB | 28 B | +29% (16 KB) |
| bench/knucleotide | 317 | 661 KB | 2.1 KB | +0.4% |
| bench/regex | 236 | 12.7 MB | 54 KB | negligible |

Finding by address adds **nothing per allocation**; per chunk, one store on the slow path (its `owner`); per found
build, a range check, a mask and two loads (`owner`, and the part `__olang_capture_scope` reads on its fast path) -
about the cost of the bump itself (~12 instructions), made only where the compiler could not place; address space
(1 TB reserved, nothing resident untouched). Small chunks come from slots instead of `aligned_alloc` - one atomic add
in place of a malloc call on the slow path. To be measured in its round: the self-build's and bench's time and peak with
the new allocator (gate: within noise; the slot carving may save time), and how many builds a program finds (a counter
under `OLANG_SCOPESTATS`; expected none in compiler/, which compiles today).

### 12.8 Why it is sound

A reference is valid where it is used (section 8's proof), so the storage it names is alive, its chunk is held by the
scope that built it, and that chunk's `owner` names that scope (written when the scope took the chunk, cleared only when
it gives the chunk back, which it does only as it closes - when no valid reference into it remains). So the scope found
is the one the storage lives in, open where the build is; what is built there lives exactly as long as the storage it is
reached through - I1 (what is stored into the referent lives in the referent's scope) and I2 (exactly there) hold. A
region found is read as its enclosing scope, which outlives it, so nothing found is reclaimed by a let-go early freeing
did not plan. Storage in no chunk is found as the program's scope, which outlives everything. Threads build into their
own part of a found scope (decision 48), so no two threads bump one chunk.

### 12.9 Reference counting (QCR 2), in short

The counting carve-out (decided 2026-11-03, not built, being reconsidered by the user) answers *when* the last of
several holders lets go of a value mid-scope; finding answers *where* to build when no call knows the scope. Neither
stands in for the other: a found scope still frees only at its close, and a count says nothing about where to build.
Their costs differ in kind: a count is paid on every copy of a counted reference; a find only at a build through a scope
not known while compiling. Finding needs no decision on counting.

## 13. `x.Destroy()` removed (C9b)

The user, 2026-11-08: "I think .destruct doesn't really do anything extra. So maybe we should not even have it" - then
decided: removed.

### 13.1 Why nothing is lost but one form

A value with a destructor is ended where its holder lets go (O15): a block's end - and a block is a scope, so `{ f :=
File(p) ... }` ends `f` at its `}`; a store over its place (`y = Res(6, t)` ends the old value after making the new one);
a collection's removal giving nothing (`Truncate`, `Clear`, `RemoveAt`, `Remove` ...); a by-value parameter's end. With
section 10, a value's destructor runs where its storage lives, and `Destroy()` of a value whose storage placement put
further out would contradict that unless proven the only way left to reach it - C9b's proof machinery. What a program
loses is the one-path early end (`if k > 5 { e.Destroy() }`): written instead with a block, or a helper function, around
the part of the code the value lives in.

### 13.2 What uses it (measured)

| where | uses | what each becomes |
|---|---|---|
| std/net.olang | 2 | `echoOnce`'s `c.Destroy()` at its body's end: nothing (its end ends it); the test's `l.Destroy()` before dialing: `l` in a block of its own, its address kept in a local declared before it (D13d) |
| tests/drops.olang | 7 | blocks around each value's span; `defer x.Destroy()` / `errdefer x.Destroy()` are what O15 does already for a by-value holder (ended on every way out but a hand-on) - removed; `y.Destroy(); y = Res(6, t)` becomes the store (the new value made first, then the old ended - the order the test reads changes, and its expected text with it) |
| tests/shared.olang | 10 | C9b's own tests: those testing Destroy's rules go with the rule; those testing an early end become blocks |
| checks/cases | 18 `c9b*` and g42dtor | the `c9b*` cases test C9b's own rules and go with it (the rule is removed, so no case is kept for it); g42dtor's Destroy becomes a block |
| checks/fixtures/earlyfree | 2 | the server holding sockets in a `Map<I64, net.UDP&>`, each taken out and destroyed: a `Map<I64, net.UDP>` by value (C11 relaxed) with `s.socks.Remove(i)`, which ends it - memory and descriptors flat as before (the fixture's own check) |
| compiler/ | typed.olang (`PrimOp.Destroy`), check.olang (11 mentions), free.olang (67: the destroy targets), effects.olang, msgs.olang | removed |
| fuzz/scopegen.olang | 6 | its Destroy scenarios go; its block scenarios stay |

Early freeing loses nothing it cannot get from block ends, stores and removals: its destroy targets were the one
analysis proving a local "the only way left to reach" an instance a reference held; a value held by value - in a
variable, a field, a collection - is ended where its holder lets go, and Part C frees its storage there. A program that
held destructor values by reference to end them one by one (the earlyfree fixture) holds them by value.

### 13.3 The rules

**C9b** is removed (its number left as a gap). Everything citing it changes: O15's "unless it no longer holds the value
there: ... a variable's `Destroy()` (C9b)" and its last item ("unless a `Destroy()` ran them before"); O8d's sentence on
`x.Destroy()`; B18's rows naming it; G42's facts (a destructor run "at `x.Destroy()`"); T13b's rule 10; PRINCIPLES.md's
principle 1 ("or sooner, at an `x.Destroy()` the compiler proves leaves nothing reaching what it ends" becomes "or
sooner, where a block, a store or a collection's removal lets go of it"); CLAUDE.md's entries "Destructors run where the
holder lets go", "Letting go" and "Recorded limits"; docs/memory.md's notes are history and stay. A program writing
`x.Destroy()` then calls a method that does not exist - an ordinary error, since a removed spelling is simply gone
(PRINCIPLES.md); `Destroy` becomes an ordinary name a type may declare as a method.

**A migration**: `tools/destroy_migrate.olang` rewrites the two mechanical forms - `defer x.Destroy()` and `errdefer
x.Destroy()` on a by-value holder (deleted: O15 does it), and `x.Destroy()` as the last statement of the block declaring
`x` (deleted) - and lists every other use for a person (a block to write), status 1 as `olang fix -check` defines. In
`olang fix`'s table (a text tool).

## 14. The build plan

One agent per round, each starting from this note and a PROGRESS.md hand-off, committing coherent pieces as it goes;
targeted tests and `make quick` while developing, one full `make verify` through `/home/user/vlock` at the end. The rounds
changing scope.olang (3, 4, 6, 7, 8) run one after another, never beside each other or beside another scope.olang batch;
round 1 touches nearly every file lightly and runs alone, first. Every round walks the checklist (CLAUDE.md) and
DEPENDENTS.md (section 9).

### Round 1 - keywords, one tier (section 5; sonnet, medium)

- **Spec**: L9's list, L9a's field list; L9b and L9c removed (gaps); T13a-T13c, E31c, T32 lose "a word only ...".
- **Code**: token.olang (`Tok`, `Text`, `Keyword`); parse.olang reads `any`, `unique`, `immut`, `packed`, `commutes`
  as tokens where they stood; session.olang's `Keywords`; editors/nvim's syntax; the ~20 names renamed by meaning;
  `tools/keyword_rename.olang` (with its tests) in `compiler/fix.olang`'s table and tools/README.md.
- **Tests**: checks cases `keywordlocal` (fail: a local named `keeps`, L9), `keywordfield` (run: fields named `keeps` and
  `returns` declared with their types, reached after `.`; a method named `pure`, L9a); the tool's test blocks;
  `make tokgold astgold`.
- **Gates**: verify; `make consistency`.

### Round 2 - `x.Destroy()` removed (section 13; sonnet, medium)

- **Spec**: C9b removed; O15, O8d, B18, G42, T13b's citations; PRINCIPLES.md principle 1.
- **Code**: typed.olang, check.olang, free.olang (the destroy targets), effects.olang, msgs.olang; std/net.olang; the
  tests, cases and fixtures of 13.2; fuzz/scopegen.olang; `tools/destroy_migrate.olang` in `olang fix`; evaldiff's
  `Expected`/`Skipped` lists where they name a removed case; `make diaggold rungold`.
- **Gates**: verify, fuzz free, dead regions; the earlyfree fixtures flat (their own checks).

### Round 3 - a value's destructor runs where its storage lives (section 10; opus, high)

- **Spec**: O27, O15, B18 (10.1).
- **Code**: scope.olang's `liftable`/`viewKeptMsg`/`partKept`; olang.olang and session.olang (the moved destructor's
  row and hint); msgs.olang, `make diaggold`.
- **Tests**: the three o27destructor cases as run cases; the cases of 10.4.
- **Gates**: verify, scopesan, scopefuzz, fuzz free, dead regions; bench and compiler/ IR byte-identical.

### Round 4 - promise words and the relation words (sections 2.2, 3; opus, xhigh)

Built 2026-11-08 (wt-promises; HISTORY.md, "Promise words and the relation words"). Where it went otherwise than
below: no promise says an argument is kept in a global (2.2.1's named function keeping `x` in a global is refused - a
value held in a block-scoped field would otherwise let a call keep block storage in a global), and a named function
held as a `keeps x` type is constant data fitting any home; `keeps b in a.f` where `f` has no binding of its own means
`keeps b in a` (bindings are inferred, so it is no error); a type writing `keeps x` is one something can be stored
through, so its values are held exactly where they live, and a lambda held as it is never placed in a caller's frame;
the boundary's coverage was found looser than what a call discharges (a result kept in an argument, through a
read-only result type) and now follows the bound exactly. The effect words are parsed, kept in identity and spelled;
round 5 judges them (check records no place list yet - round 5 adds it).

- **Spec**: T21's grammar, T21c, T22, T22b, T22a (3.4's boundary and error), O17's sentence.
- **Code**: parse.olang, ast.olang, unparse.olang, fmt.olang (the words, where they end); types.olang (identity,
  spelling, `$`, what `ScopesOf`/`ResultFrom` read of `borrows`/`noborrow`); check.olang (T21c's errors, E12's fit across
  words with its places recorded); scope.olang (`valueRels` and `valueCovered` read the words, 2.2.1's capture check, the
  boundary errors naming the word, O17 by the words); msgs.olang, `make diaggold`.
- **Tests**: tests/promises.olang (run): a cache's `onEvict fn?&(k String&) keeps k` holding a keeping lambda, called
  through after an arena churn; `Vec<fn&(a mut N&, b N&) keeps b in a>` pushed into and called through; `borrows a`
  letting a temporary second argument go early, `noborrow` keeping a result past both arguments - each read back after a
  churn; a K2 global baked through a call through a `keeps k` field; an S18c assert decided. Checks: fail - a word naming
  no parameter, written twice, `borrows` on a result holding no reference, `keeps x` of a lambda keeping into an outer
  capture (2.2.1), `keeps b in a.f.g`; t22apushed, t22alambdakeeps, t22areturncycle reworded to name the word, and run
  cases beside them with the word written.
- **Gates**: verify, scopesan, scopefuzz; compiler/'s and bench's IR byte-identical.

### Round 5 - effect words, and effects through parameters (sections 3.5, 4.5; opus, high)

Built 2026-11-08 (wt-effects; HISTORY.md, "Effect words, and effects through parameters"). Where it went otherwise than
below: `returns` and `norecurse` are judged with no call through an unfollowed value relied on, whatever its type says
(3.5 relied on the bound where it was being established: a lambda stored in a `returns` field calling through that
field was accepted and looped); locals are followed by every value given them, not by typed.Versions; a call's result
is followed where its callee's returns give named functions; a value handed to a call through another value sets no
`Calls` bit (that value's bound covers it); a type writing no effect word stays "anything", so programs writing none
read what they read before; the scope pass no longer judges effect words type to type - the effects pass owns them,
its message for an unfollowed value the same.

Beside round 4 once its grammar and types have merged (effects.olang, and check.olang's place list only).

- **Spec**: G42 (its table gains `Pure` and `Returns`; its last paragraph, 3.5), T21c's effect rows.
- **Code**: effects.olang (`Calls` bits, per-fact bounds for unknown calls, `Pure`, `Returns`, `Fact.Named`, the effect
  words checked at the places check records, its own records through `typed.Versions`); explain's `# effects:` line.
- **Tests**: tests/facts.olang: S17a asserts `not Apply.Allocates` with `f fn&(x I64) I64 noalloc`, `Sum.Pure`,
  `Sum.Returns`, `not Use.Allocates` through `Twice`; g42factvalue kept, a passing twin of it; checks: fail - a lambda
  calling `io.Println` given for `noalloc`, a lambda writing through a captured reference given for `pure`, one reaching
  an `assert` given for `returns`, a field of type `fn&() noblock` given a value of type `fn&()`.
- **Gates**: verify; the effects pass's time on compiler/ (`explain -caps`) within +5%.

### Round 6 - finding a scope at run time (section 12; opus, xhigh)

- **Spec**: O29 (new), O12, O11, O25i, E11c, O23a's refusal sentence, X11/T-size statement ("nothing stored per value").
- **Code**: std/runtime/runtime.ll (the slot range, slots, `owner`, the large table, `__olang_scope_of`, the pool's
  `madvise`), san.ll (quarantined slots, `__olang_san_check_owner`), compiler/runtime.olang if a fact is needed;
  typed.olang (`Scope.Found`), scope.olang (sites placed `Found` where it reports today; the refusals of 12.4 go),
  lower.olang (the call, reused per statement), emit.olang; eval.olang/interp.olang (a found build in the referent's
  scope); msgs.olang; the seed regenerated (the runtime is in it).
- **Tests**: the cases of 12.4 as run cases (`-debug -sanitize`, read back after a churn); the 35 E11c cases as run
  cases; a C-driven runtime test (as the region test is) of `__olang_scope_of` over slot, large, stack and constant
  addresses and another thread's scope; a task building into a found scope its spawner owns (P2).
- **Gates**: verify, scopesan, scopefuzz, fuzz free, dead regions, `make race` (the owner word's reads), `make cross`
  (aarch64: the reservation on a smaller address space); bench and the self-build's time and peak within noise.

### Round 7 - following into calls: twins (sections 4.1-4.3, 4.6's lending; opus, xhigh)

- **Spec**: T22c, T22a's boundary list, O13c's pass-through, D16c (a captured function value followed), O17's
  sentence; B2c's sentence.
- **Code**: scope.olang (patterns and their interning, pass-through `ResFn`, arguments and captures followed, symbolic
  records, twins as call-graph nodes, limits, errors at the asking call, `Plan.Twin`); typed.olang
  (`ScopeVar.Follow`, `Plan.Twin`); lower.olang and emit.olang (a twin's code where its plan differs, its symbol, hidden
  follow parameters); interp.olang (a call routed to its twin's plan); free.olang (a twin with a plan of its own analysed
  on its own); fuzz/scopegen.olang (higher-order calls given keeping callbacks, chains, captures); msgs.olang.
- **Tests**: tests/follow.olang (run, read back after churns): the Count shape, a chain three deep, a recursive callee
  handing its parameter on, a captured function value, `keep(link)`, a twin with a plan of its own (`put(link, x, 42)`),
  checked by a checks IR scenario (`irHas`: two symbols for `put`); K2 and S18c through a twin; the ten cases of 8 as run
  cases; fail cases - followed into a store into a field (the error at the call, with a note in the callee, naming the
  word), a pattern past a limit; the `-debug` compiler's pattern check (4.7) over the suite.
- **Gates**: verify, scopesan, scopefuzz (`COUNT=300`), fuzz free, dead regions; compiler/'s and bench's IR
  byte-identical; the scope phase within +1% (`OLANG_TIMES`).

### Round 8 - derived scopes passed (section 11; opus, high)

- **Spec**: O23a, C2d.
- **Code**: scope.olang (`Builds` over derived positions, the hidden parameter `ScopeVar.Passed(p, V)`, calls passing
  what they know, drops passing the holder's bindings, a collection's element claim); lower.olang/emit.olang (the hidden
  parameter, "find" as null, the find at the first build).
- **Tests**: the measured loop as a run case reading its own peak and a bench row; tests/drops.olang's `Logged`
  unchanged in output; the cases of 11.4.
- **Gates**: as round 7. Then a **narrow soundness review** (opus, high) of rounds 3, 6, 7 and 8 - destructors following
  storage, found scopes, followed values and patterns, passed derived scopes - before clones build on the twins.

### Round 9 - clones (section 4.4; opus, high)

- **Code**: lower.olang (where it pays, the limits, the clone's direct calls, the chain), emit.olang (symbols, the root
  object only, `-debug` none); optional LLVM memory attributes on calls through `pure` values, kept only where measured.
- **Tests**: a checks IR scenario: a `-O3` build of a sort given a lambda has no indirect call in its merge loop and the
  recursion calls the clone; bench's new row; compiler/'s IR diffed - only clones added.
- **Gates**: verify; the self-build's time and peak memory within +2%; bench within noise but the new rows.

### Round 10 - lending, early freeing, D9h, E31b, M19g read what is followed and promised (section 4.6; opus, high)

- **Spec**: O8d, D9h, E31b, M19g sentences (4.6).
- **Code**: free.olang (followed records as direct calls, the words, `letsVia`/`escVia`), lower.olang (D9h),
  check.olang (E31b), views.olang (M19g); `-memory`'s reasons.
- **Tests**: `-memory` rows for a Vec let go inside a higher-order call given a `pure` callback; a D9h view read across
  a `pure` callback left uncopied; an E31b in-place call given a `pure` callback; an M19g case through a `pure` value.
- **Gates**: verify, scopesan, scopefuzz, fuzz free, dead regions. Then the **bulk review** of rounds 1-10 with its fixes.

### Round 11 - the tools (section 9; sonnet, medium)

explain's `# fits:`, twins and clones listed; doc; the language server's hover and completion; mcp; `olang api`'s
variance with the checks scenario `apicaps` extended; DEPENDENTS.md's "A promise word" and its consistency edge;
compiler/README.md, checks/README.md counts. Gates: verify; explain's and doc's goldens.

### Round 12 - only if question 1 (or 2) is answered yes (opus, xhigh)

Functions a constructor fixes in a field followed with the instance (`Generator.next`, the lazy walks, `Heap`'s
`less`), as O23a's per-instance bindings are: a field no code assigns after its constructor (read off the program, as
G42's facts are) carries its value's records through the instance's locals and call results, and a method of the
instance calling through it is judged per pattern (the receiver an input of the twin's key). And, for question 2, a
trait's method signatures taking the words, a call through an `any` relying on them (T32a relaxed). Design pass first.

**As designed (2026-11-10, wt-f12; the user's yes to questions 1 and 2 of 2026-11-08).** The details are mine, within
the answers: "followed as far as the compiler can know them, constructor-fixed fields included, code specialized only
where it pays"; "written where relied on, inferred on implementations; a call through an `any` relies on them".

*Part A - functions a constructor fixes in a field (T22d, G42).*

1. **A fixed field.** A field of a struct is **fixed** where its constructor gives it its value once - its declaration
   a parameter's pun or an initializer reading one parameter (`pred fn&(x T) Bool ? E = keep`), never assigned in the
   constructor after - and no body of the program assigns it after the constructor, nor writes a whole instance of the
   struct through a reference (the scope pass's `fieldsAssigned`, read off every body as G42's facts are; the effects
   pass reads the same with a scan of its own, made once and only where it is asked). A fixed field holding a function
   value carries the records of what the constructor was given; one holding a struct by value carries that instance's
   records in turn (`TakeWhileIter.it`), so records form a tree, four levels at most (15, decision 5's depth).
2. **What carries them (scope).** An **instance record** - by field, the records of a fixed function field and the
   record of a fixed struct field - is made by a constructor call from its arguments' records; a local declared once
   and never assigned whole carries its initializer's, and a borrow of it the same; a call's result carries its
   callee's `ResInst` (what every return's instance carried, in the callee's terms, through the call as `ResFn` is,
   O13c), none for a body in a cycle. Inside a twin, a followed parameter's instance holds its seeded record. A read of a
   fixed field of a place whose instance record is known (`t.pred`) carries that field's records, so a call through it
   is judged as the direct calls it is (T22a). Generators' walks are not followed by the scope pass: D18's rules for
   their elements and homes stand, and a walk's relations are what its `Generator.next` type says, as before.
3. **Twins keyed by an instance (T22c extended).** An argument whose instance record carries, anywhere in its tree,
   records all known and some uncovered by their field's type (T22b) is followed into the callee: the twin's key gains,
   for that parameter, each field's path and its bodies; its seed is the tree with each capture a derived scope of the
   parameter (`capCode`, numbered over the tree's records in depth-first order), resolved by the caller from its
   argument's tree as a function argument's captures are (`capturedAt`). The receiver is such an argument, so a
   method calling through its own fixed field (`TakeWhileIter.Next`, `Heap.Push`) is judged per what its instance
   holds. The limits are T22c's.
4. **Boundaries (T22a).** A constructor's argument for a fixed field is no boundary where the instance is followed - a
   local declared whole, a `return` the caller follows (`ResInst`), an argument followed into its callee; anywhere
   else the instance meets a boundary (a store into a field, an element, a payload, a global; an argument not followed;
   an `any`; a task; a `yield`; a return no caller follows), and there every record in its tree is judged by its field's
   type, the error naming the field's type and the word that would say it. So nothing reaches code judged once for
   many values with more than that code's types say.
5. **Effects (G42, 4.5).** A body's slots gain **field slots**: for each parameter whose type is (a reference to) a
   struct, each path of fixed fields from it to a function field (depth 4), numbered after its parameters and captures
   (all slots at most 63; past that a field slot is its type's bound). A call through a fixed field of a parameter's
   instance sets that slot's `Calls` bit; at a call, the caller gives each field slot what its argument's instance holds
   there - a constructor's argument, every value given a local, a field slot of its own, or what a callee's returns put
   there (`fieldRets`, resolved once the callee is walked; a parameter of the callee's given back is resolved by what
   the call gave it). A lambda or adapter reaching a field is made by some body whose facts already hold what calling it
   does ("a body's lambdas are its own"), so a call through a field holding one adds nothing; a value not followed adds
   its type's bound. So `for x in gen()` has the generator's own facts, and `xs.Iter().TakeWhile(p)` its predicate's.
6. **Code.** Twins with plans of their own are compiled as round 7's are; nothing else is specialized (clones stay
   round 9's: a call through a field is no parameter, so no clone is made for it - "only where it pays" is left to the
   inliner, which sees the constructor's argument where the instance does not escape).

*Part B - promise words on a trait's methods (T30, T32a, T21c).*

7. **Where written.** A trait's method signature may end with the words, as a function type's does
   (`type Shape trait { Area() F64 noalloc pure }`); a method a type declares still writes none (T21c). They name the
   method's written parameters; the receiver has no name, and is the method's **home**: `keeps x` keeps `x` in the
   instance, as an adapter's receiver is its value's home (E31). Misuse is T21c's error, said at the trait.
8. **The bound.** A trait method's function type with the receiver first (its `any` slot) takes the words shifted past
   the receiver, `keeps x` becoming "keeps x in the receiver"; its bound is T22b's: without `borrows`/`noborrow` the
   result may borrow from the receiver and every reference parameter. A call through an `any` is judged as a call through
   a value of that type whose functions are not followed (T22a): it discharges the bound's relations and has the effect
   words' facts (an `any` call with no effect word stays "anything"). T32a's refusal of a method with any obligation
   becomes the bound's: a method whose obligations the bound does not cover is refused at the table, naming the word
   that would say it (t32anyscopes, a result borrowing from the instance, compiles; t32anyobligations, keeping its
   argument in the instance, is refused with "write 'keeps n'").
9. **Held where relied on.** Each method a type gives a trait's table (T32b: its own, or the default it takes) is held
   to the words where the table is made - its relations by the scope pass, its facts by the effects pass (T22b's error
   naming the trait, the method and the word, with a note at what breaks it). A constrained generic's call (G19) is a
   direct call of the type's own method, judged by its body; the words rely on nothing there, so a type meets a trait
   as before (T31) and is held to the words only where an `any` of it is made.
10. **Identity.** A trait method's words are part of the trait's declaration, not of any type the program names; an
    `any`'s slots carry them. `olang api` reads them as a function type's (a word lost breaks callers relying on it).

### The checklist, per round

1 spec first (above); 2 the passes named; 3 the evaluator - `interpret` follows twins' plans (round 7), builds found
scopes in the referent's own (round 6), runs moved destructors where their storage's scope closes (round 3); each round
gives it the tests of section 7 and its own (K2 globals, S17a/S18c asserts); 4 tests and cases (above); 5 migration:
round 1's renames and round 2's `destroy_migrate` - every other change accepts more, and the cases that were refused
become run cases (old tests kept where their rule stands); 6 diagnostics (above, `make diaggold`); 7 CLAUDE.md's
"Function types (T22, T22a)", "Function facts", "Storage kept for a view", "Derived and unknown scopes", "Destructors run
where the holder lets go", "Letting go", "Keywords as names" entries, HISTORY.md, the ledger; 8 DEPENDENTS.md (section 9);
9 verify.

## 15. Decided here (mine, within the user's decisions - to object to)

1. Twins are keyed by **patterns**, never by function, and an argument its parameter's type covers takes no part in the
   key: programs accepted today get no twin and keep their plans byte for byte.
2. A function value a lambda captures is followed into the lambda's body (sec8's decision 15 reversed): a capture is a
   copy made once and never repointed (D16c).
3. A `return` of a followed parameter is a pass-through the caller resolves - so `keep<F>(f F) F` needs no twin.
4. A value with any unknown function is not followed; its known ones are judged at the boundary, as today.
5. Limits: 16 twins of one body, patterns nested 4 deep, twins at most 2% of the program's bodies (at least 256); past
   one, the argument is a boundary and the error names the limit and the word to write.
6. Twins are made in the root object only and share the ordinary code wherever their plans agree; a twin's symbol spells
   its key's canonical text injectively, as G16a spells instances.
7. Clones are lowering's: in `-O3` and `-quick` builds, where a call through the parameter is in a loop (or a callee it
   is handed to has one) and the callee is not one LLVM inlines whole; at most 8 per callee and 3% of the program's MIR;
   followed 4 deep. LLVM memory attributes on calls through `pure` values only where a bench row moves.
8. Effects compose through per-parameter `Calls` bits, and an unknown call contributes its type's bound fact by fact (no
   single `Unknown`); effects.olang reads the records it needs itself (syntactic ones and `typed.Versions`), so it keeps
   running before the scope pass, as G42's facts need.
9. `WritesGlobals` and `Terminates` stay facts with no word; `Pure` and `Returns` are added to G42, so every promise word
   is a fact a library can pin with S17a.
10. `returns` is G42's `Terminates` and no ending the program writes (a `noreturn` call, `unreachable`, `!`, an `assert`
    not decided true); the language's own checks (slice bounds, array lengths, memory, stack) aside.
11. `pure` writes only through `mut` parameters - a `Call` adapter's receiver is none -, reads and writes no mutable
    global, calls only what is pure, runs only pure destructors; it may allocate, wait and start tasks whose calls are
    pure.
12. `keeps x` means "where the function value lives"; a lambda keeping `x` in a capture that lives longer than it is
    refused where it comes to be held with the word (2.2.1), never moved.
13. `keeps b in a.f` names one field with a binding of its own; a longer path is an error.
14. Promises are part of a function type's identity, by position; a value fits across them at the outermost level only
    (E12), never inside a type argument; the checker accepts the fit and the pass owning each fact judges it.
15. T21c's misuses are errors: a word naming no parameter, written twice, contradicting another, or saying nothing about
    the type (`borrows` on a result holding no reference, `keeps` of a plain value).
16. Where the words end is the table of 3.1; they never need parentheses, and after an error set the first word ends it.
17. `os.RunOnStack`'s runtime call is followed as the call `f()` it is, as K1 evaluates it.
18. std writes no promise word in this work; words come where a caller needs one, measured.
19. explain's `# fits:` line - the tightest function type a function is a value of - replaces `# not a value` / `# as a
    value`; twins and clones are listed as a generic's instances are.
20. `olang api` compares each exported function's `# fits:` type by variance (a word lost breaks, a word gained does
    not), and written function types in signatures by their position (parameters contravariant, results and fields
    covariant, a declared function type either way).
21. The repository's names that become keywords are renamed by meaning; `tools/keyword_rename.olang` appends `_` for
    other code; L9b's and L9c's numbers are left as gaps.
22. A destructor moved with its storage is said by `-memory` and the language server's hint, with the copy that would
    keep it in its turn.
23. A derived scope is a hidden scope parameter of the body building into it - passed by a call that knows it, "find"
    (null) by one that does not - one body, no twin; a holder's drop passes its local's bindings.
24. The slot granule is 128 KB (today's mmap threshold), the reservation 1 TB halved until granted (4 GB at least), the
    header kept at 64 bytes by packing `fresh` and `class`; large chunks in a sorted table behind a spin lock; a found
    region is read as its enclosing scope; storage in no chunk is found as the program's scope.
25. `tools/destroy_migrate.olang` deletes the two mechanical forms and lists the rest for a person; the `c9b*` cases go
    with their rule.
26. A narrow soundness review of rounds 3, 6, 7 and 8 before clones; the bulk review after round 10.
27. Round order: keywords alone first; Destroy's removal before destructors follow storage; the scope.olang rounds (3,
    4, 6, 7, 8) one after another; effects beside round 4.

## 16. Direction questions

1. **Functions a constructor fixes in a field.** `Generator.next` (every generator's walk), the lazy walks' `pred`,
   `make` and `step` (`TakeWhile`, `SkipWhile`, `FlatMap`, `Scan`, `ChunkBy`) and `Heap`'s `less` are stored in a field
   by a constructor and never assigned again. Followed with the instance - as O23a's per-instance bindings are, through
   its locals and call results, the instance's methods judged per pattern - every `for x in gen()` gets the generator's
   own effects instead of "anything", and `xs.Iter().TakeWhile(fn(x) { kept.Push(x); ... })` compiles. It is a field,
   which the user's rule keeps dynamic; this would be the one exception, read off the program (no code assigns the field
   after its constructor). **Recommended:** yes, as round 12. **Default if unanswered:** dynamic (judged by the field's
   type).
2. **Promises on a trait's methods.** An `any` holds a value whose calls go through its trait's method signatures; the
   words on those signatures (`type Shape trait { Area() F64 noalloc pure }`) would be checked against every method a
   type gives the trait and relied on by every call through an `any` - so t32anyscopes' shape (a method whose result
   borrows from the instance) could be said, and an `any`'s calls stop being "anything". The user's decision named
   function types only. **Recommended:** yes, with round 12. **Default if unanswered:** no words on trait methods; an
   `any`'s call does anything, and T32a refuses a method requiring a relation.
