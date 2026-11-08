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
