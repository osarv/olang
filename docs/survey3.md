# Third survey: functional languages, and the languages closest to olang

Written 2026-10-27 for the request "another sweep of features: I still didn't get any options from functional
languages, and I want to make sure we don't miss any features from languages more like us as well. Be thorough."
Nothing here is decided. Each item says what the feature is (with a short example in its own language), how it would
look in olang today, how it fits the principles and the rules it touches, what it costs, which domains it serves, and a
verdict: **yes**, **later** or **no**.

The first two surveys (`docs/survey.md`, `docs/survey2.md`) and `docs/ideas.md` are not repeated. Survey 2 dismissed
the functional languages' big ideas in one table row each; here each one gets a real look, with the olang form it
would take, and the question asked of it is "what part of this fits?" rather than "does all of it fit?". Where an item
was settled before, section 5 points at where.

**Summary.** The functional languages' headline features (effect handlers, laziness, currying, monads, pipelines,
higher-kinded types) still conflict with olang for the reasons given below. Their smaller ideas fit well, mostly with
no new syntax:
- a guard's test narrowing inside its clause (a gap, checked against the compiler);
- typed holes;
- a print-and-return debugging call;
- a third round of walks (`Scan`, `ChunkBy`, `GroupBy` and others);
- effects inferred and shown, which olang already computes and does not print;
- array patterns in `match`;
- reuse in place, as the next step of early freeing.

From the languages like olang, the strongest new idea is **facts the compiler proves about a function** - "allocates
nothing", "never blocks", "always ends" - from Ada's restriction profiles, Clang's `nonblocking`/`nonallocating`
attributes and D's attribute inference. Read through the function's name, they follow the user's three-way rule, and
they are the check the FPGA (and any GPU) subset needs anyway. The rest are smaller:
- floored division and modulo;
- comprehensions over lane expressions fusing (Fortran's elemental functions);
- a view of one function's generated code with LLVM's optimization remarks;
- a capability report on imported packages.

The ranked shortlist is section 6.

## Contents

1. What this survey adds (the summary above)
2. Part A: functional languages
   - A1 Functions and calls
   - A2 Effects, purity and totality
   - A3 Types
   - A4 Pattern matching
   - A5 Data and walks
   - A6 Memory ideas from functional runtimes
   - A7 Concurrency
   - A8 GUIs: the Elm architecture
   - A9 The proof languages
3. Part B: languages like olang
   - B1 Facts the compiler can check about a function
   - B2 The region and ownership languages
   - B3 Array and data-parallel languages
   - B4 Systems-language details
   - B5 Tooling
4. Already covered
5. Considered in earlier surveys or the ledger, not repeated
6. Shortlist, ranked
7. Method and sources

---

# 2. Part A: functional languages

Haskell, OCaml, F#, Standard ML, Elm, Roc, Gleam, Elixir/Erlang, Clojure, Scala, Lean/Idris/Agda, Koka, Unison,
PureScript and Racket. Grouped by theme.

## A1. Functions and calls

### A1.1 Pipelines

**From:** F# and OCaml `|>`, Elixir `|>`, Elm, Gleam, Roc, Clojure's `->`, Haskell's `&`.

```fsharp
text |> String.trim |> parse |> List.map double
```

**In olang.** Methods already chain left to right: `t.Trim().Split(",")`. The pipe is wanted for *free* functions,
which cannot chain: `json.Encode(summarize(load(p)))` reads inside out. A pipe would read
`load(p) |> summarize |> json.Encode`, or in words, `load(p) then summarize then json.Encode`.

**Fit.** This is the call form that UFCS gave, and M19 removed UFCS on purpose: a call is written either as a method
of the receiver's type or as a function with its arguments. A pipe is a second way to write every call (principle 4).
It also needs a rule for which argument slot the piped value fills (Elixir: the first, F#: the last), and a decision on
how a piped call with errors is covered by `try`.

**Cost.** Small in the parser. The real cost is that it is a second call syntax.

**Verdict: no.** Locals name the steps (`v := load(p)`), and methods chain. Revisit only if UFCS comes back for other
reasons.

### A1.2 Partial application and argument holes

**From:** Haskell sections `(* 2)` and currying; Gleam's function capture `add(1, _)`; Scala's `_ * 2`; Kotlin's `it`;
Swift's `$0`; Elixir's `&(&1 * 2)`.

```gleam
list.map(xs, add(1, _))
```

**In olang.** Today this is a one-line lambda: `xs.Map(fn(x): return add(1, x))`. The olang form would be Gleam's:
a call with `_` in argument slots is a lambda taking those slots in order, `xs.Map(add(1, _))`. `_` is never a name
(L9a), so `_` as an argument means nothing today.

**Fit.** It is a second way to write a lambda (principle 4). It also hides when the other arguments are evaluated: in
`scale(_, expensive())`, is `expensive()` run once, when the lambda is made, or on every call? Gleam's capture is sugar
for a lambda, so it runs on every call, and both answers surprise someone. The capture rules (D16c) would apply unchanged, since the form
lowers to a lambda.

**Cost.** Small: a desugaring in the checker.

**Domains.** Data and scripting code built on `Map`/`Filter`/`Sort`.

**Verdict: later at most.** First count how many of the one-line lambdas in std/ and compiler/ are a single call with
the parameter in one slot. If that is most of them, the form earns a second look; otherwise `fn(x): return ...` is
short enough.

### A1.3 Composition and point-free style

**From:** Haskell `f . g`, F# `>>`, OCaml `Fun.compose`, Clojure `comp`.

**In olang.** A std function could do it with no language change: `fn Then<A, B, C>(f fn(x A) B, g fn(x B) C) fn(x A) C`.

**Verdict: no.** As an operator it is a symbol that hides the data's name. As a library function nobody would reach
for it over a lambda.

### A1.4 Method values

**From:** Go's method values (`f := s.TrimSpace`), Haskell sections, Kotlin's `String::trim`, C#'s method groups,
Rust's `str::trim` as a path.

```go
handlers["close"] = win.Close     // a func() bound to win
```

**In olang.** `s.Trim` without parentheses is an error today: "String has no member 'Trim'" (checked with the
compiler). The bound form would be `b.OnClick(win.Close)`, the same function value as `fn() { win.Close() }`, with the
receiver captured as a lambda captures it. The unbound form, `xs.Map(String.Trim)`, reads a function through a type's
name, which the user declined for `String.FromC` ("I want to keep the namespaces to modules and objects", QAS), so it
is out.

**Fit.** It lowers to a lambda, so D16 applies unchanged. A method with scope obligations is no value (T22a), so
`x.M` would give the same refusal a lambda calling it gives. It is a second spelling of a short lambda.

**Cost.** Small: the checker, and a diagnostic for a method that cannot be a value.

**Domains.** GUI callbacks, command tables, event handlers.

**Verdict: later**, with the GUI work, which is where `button.OnClick(win.Close)` gets written hundreds of times.

### A1.5 Lazy (by-name) parameters

**From:** Scala's `=> T` parameters, Swift's `@autoclosure`, D's `lazy`, Kotlin's inline lambdas.

```scala
def debug(msg: => String) = if (enabled) println(msg)
debug(s"state: ${expensive()}")        // expensive() runs only when enabled
```

**In olang.** The use is logging. Today `log.Debug(fn(): return "state: " $expensive())` defers the work, or the
caller writes `if log.Enabled { ... }`. `assert` and `unreachable` already evaluate their message only on failure,
but they are statements of the language.

**Fit.** A by-name argument may run zero times or many times, and the call does not show it. That is hidden control
flow ("deliberately not").

**Verdict: no.** The lambda says what happens.

### A1.6 `where` clauses and local functions

**From:** Haskell and Idris `where`, OCaml `let ... in`, nested `def` in Python and Scala.

**In olang.** A function cannot declare another (G3a, settled). A helper is a top-level function, or a lambda held in
a local.

**Verdict: no.** `where` puts the definition after its use, which olang's top-to-bottom reading (and D13d's definite
initialisation) does not do. A lambda in a local covers the non-recursive case, and a top-level function the rest.

### A1.7 A function written as several clauses

**From:** Haskell and Erlang/Elixir function heads, OCaml's `function`, Elixir's guards on heads.

```elixir
def fact(0), do: 1
def fact(n) when n > 0, do: n * fact(n - 1)
```

**Verdict: no.** This is overloading by pattern, and the user declined overloading (2026-10-24). In olang it is one
`fn` whose body is a `match` (or an `if` chain), and exhaustiveness holds the same way.

## A2. Effects, purity and totality

### A2.1 Algebraic effects and handlers

**From:** Koka, OCaml 5, Unison's abilities, Eff, Effekt; Haskell's effect libraries.

```koka
effect ask { ctl ask() : int }
fun twice() : ask int { ask() + ask() }
with handler { ctl ask() resume(21) } { twice() }     // 42
```

**What olang already gives each use.** An effect system is one mechanism for many jobs, and olang has a separate,
explicit form for each one:
- exceptions are error sets, `try` and `catch`;
- generators are `yield`;
- async is `join`/`spawn` on threads;
- state is `mut T&` parameters;
- dependency injection (a logger, a clock, randomness) is a parameter with a default, and for the clock in tests
  `time.Virtual` (decided 2026-10-27, which is a handler for one effect built into std);
- non-determinism and backtracking (multi-shot continuations) have no olang form, and almost no program needs one.

**Fit.**
- A performed effect transfers control to a handler further up the stack and may come back, which is hidden control
  flow ("deliberately not").
- Typed effects put an effect row in every function type, which is the colouring the user declined for async.
- One-shot handlers could ride on the coroutine lowering that generators use (D18), but §8 would need a rule for
  where a handler running deeper on the stack builds what it returns.
- Multi-shot handlers need copied stacks.

**Verdict: no.** The jobs are covered one by one, each written at its use. What is worth taking from Koka is its
effect *inference*, shown to the reader (A2.3) and checkable (B1.1), not the handlers.

### A2.2 Monads, `do` notation and computation expressions

**From:** Haskell's `do`, F#'s computation expressions, Scala's `for` over monads, OCaml's `let*`, Elixir's `with`.

**Verdict: covered.** The uses in an imperative language with error sets are `try` over a whole expression (E24),
catch clauses, generators and plain statements. Survey 2's table already maps them.

### A2.3 Effects inferred and shown

**From:** Koka (effect types inferred for every function), Nim's effect system (`raises`, `tags`, `noSideEffect`,
inferred), D (`pure`, `nothrow`, `@nogc`, `@safe` inferred for templates and shown by tools), Roc's purity
inference, Haskell's `IO` in the type.

**What olang has.** The compiler already computes most of these facts for every function, and prints almost none:
- the error set (printed by `explain`, `# its error set inferred`);
- evaluability while compiling (K1a);
- "does nothing but compute its result" (`settleIdle`, behind S3's rule);
- what a body may build and where (the scope pass's summaries, `cgCheckMayBuild`, free.olang's may-summaries);
- what may grow a Vec (the views pass);
- scope obligations (printed by `explain`).

**In olang.** `olang explain FILE NAME`, `olang doc` and the LSP hover print one more line under the signature:

```
fn Trim(t String&) String&t
    # effects: none - computed while compiling where its argument is known
fn Save(p String&, v Config&) ? os.Error
    # effects: files (os.Write), builds in its frame
fn Mix(out mut Array<F32>&, a Array<F32>&)
    # effects: writes through 'out'; allocates nothing; never blocks
```

**Fit.** No syntax, nothing new in the language. It is principle 2's "a cost the reader should see" applied to reading
code, and it is the first half of B1.1.

**Cost.** Small for the facts that exist: they are summaries the passes already keep. "Blocks" and "allocates" need
a summary of their own (B1.1).

**Domains.** All; most for performance work and reviewing dependencies.

**Verdict: yes.**

### A2.4 Totality and termination checking

**From:** Idris's `total`, Agda (total by default), Lean 4 (`partial`, `termination_by`), Dhall (total by
construction), Koka's `div` effect.

```idris
total
len : List a -> Nat
```

**In olang.** The evaluator's step budget already turns a non-terminating compile-time computation into an error at
its use. At run time a loop that never ends is the program's choice (`for { }` servers).

**Fit.** A general termination checker rejects ordinary programs (a `for cond { }` whose condition depends on input),
and proving a loop ends needs the prover the user removed (2026-10-25). The one place it is required is hardware:
an FPGA circuit has no unbounded loops.

**Verdict: no** as a language rule. **Later** as one of the function facts in B1.1 (`f.Terminates`: every loop
bounded by a length or a `range`, no recursion), which the hardware subset asserts.

## A3. Types

### A3.1 Type classes and traits: what is already there

| Type-class feature (from) | olang |
|---|---|
| deriving `Eq`, `Show`, `Hash` (Haskell, PureScript, OCaml ppx) | `==`, `$` and `Hash` are supplied for plain data; reflection writes the rest in std (`json.Encode`, `order.ByFields`, `prop.Check`) |
| `deriving Ord` | `order.ByFields<T>` (built 2026-10-27) |
| coherence, no orphan instances (Haskell, Rust) | methods are declared only in their type's module (M19, M19d), so two modules can never give one type two implementations |
| conditional instances (`instance Eq a => Eq [a]`, Rust blanket impls) | generic bodies are checked per instance (G18): `Vec<T>.Hash` exists for every `T`, and is an error only in an instance whose `T` has none |
| default methods | methods on a constrained type variable, overridable (M19e) |
| multi-parameter classes, associated types | traits with type parameters (`Iterator<T ? E>`) |
| superclasses | `type A trait extends B, C` (T30a) |
| closed classes, sealed traits | `type Float trait for F16, BF16, F32, F64 { }` (T31a) |
| existentials (`forall a. Show a => a`) | `any Trait&` (T32) |

### A3.2 Higher-kinded types, GADTs, type families

**Verdict: no** (settled in surveys 1 and 2). No olang domain needs a `Functor<F>`, and each of these multiplies the
checker's cost for every program.

### A3.3 Open tag unions and polymorphic variants

**From:** Roc's tag unions (`[Red, Green]`, inferred and open), OCaml's polymorphic variants (`` `Red ``).

```roc
color = if x then Red else Green      # inferred type [Red, Green]
```

**In olang.** This is exactly what inferred error sets are (R1a, R1c): a bare `?` infers the union of the words the
body can fail with, a catch takes words out of it, and named sets (T19a) compose sets. For values, enums are closed and
declared.

**Verdict: covered** for errors, which is where Roc's users say they use open tags most. **No** for values: one way
to declare data (principle 4).

### A3.4 Row polymorphism and extensible records

**Verdict: no** (survey 2, settled): traits are already structural over methods, and anonymous records are the tuples
the user declined twice.

### A3.5 Refinement types

**From:** Liquid Haskell, F*, Ada subtypes with predicates.

```haskell
{-@ type Percent = {v:Int | 0 <= v && v <= 100} @-}
```

**In olang.** A type with a constructor and a contract holds the same predicate, checked on entry and decided while
compiling where the value is known (D17, T29d):

```
type Percent struct(v I64) [v >= 0 and v <= 100] { v }
```

**Verdict: covered.** The part of refinement types olang lacks is proving predicates statically for unknown values,
and that is the prover the user removed (2026-10-25).

### A3.6 Light dependent types

**From:** Idris's `Vect n a`, Lean's `Fin n`, Futhark's size types.

**Verdict: covered.** Lengths are inferred where arrays are made (T7c), functions get an instance per argument length
(G29), and a contract relates lengths, decided at calls where both are known: `fn dot(a Array<F32>&, b Array<F32>&)
[a.Len() == b.Len()] F32`.

### A3.7 Phantom types and typed identifiers

**From:** Haskell and OCaml phantom parameters, Rust's `PhantomData`, F#'s typed IDs.

**In olang.** A generic struct may leave its parameter unused, so typed identifiers work today (checked with the
compiler):

```
type Id<T> struct(v I64) { v }
u := Id<User>(3)          # an Id<User> is no Id<Order>
```

**Verdict: covered.** Worth one paragraph in the tour: the user declined units of measure, and this is the typed
handle that remains (database keys, entity IDs, file descriptors of different kinds).

### A3.8 Opaque types and newtypes

**From:** OCaml signature ascription, Elm and Gleam opaque types, Scala 3 opaque types, Haskell `newtype`.

**Verdict: covered.** A declared type is nominal (`type Meters F64`), and private fields hide a representation. A
constructor is as public as its type (the user, 2026-10-25), so validation lives in the constructor.

### A3.9 Immutability by default

**From:** Haskell, Elm, Clojure, OCaml, Rust's `let`.

**Verdict: covered** where it matters: a reference is read-only unless written `mut` (T25b), so a function's
parameters cannot be written through by default. Locals stay assignable (D11a, the user's call), and persistent
collections were declined (2026-10-27).

### A3.10 Typed holes

**From:** GHC's typed holes, Agda and Idris holes (`?goal`), Lean's `sorry`, Gleam's `todo`, Elm's `Debug.todo`.

```haskell
area w h = w * _
-- Found hole: _ :: Double
-- Relevant bindings include h :: Double, w :: Double
```

**In olang.** `_` in an expression is "unknown name '_'" today (checked). The proposal turns that error into a hole
report, with no new syntax:

```
area.olang:3:40: error: a hole - an F64 is wanted here
    note: locals that fit: h F64, w F64
    note: functions giving one: Pi, w.Sqrt(), w.Abs() ...
```

The LSP shows the same on hover. Together with `unreachable "todo"` as a value (decided 2026-10-27), a program can be
written top down: holes while it does not compile, `unreachable` stubs once it should run.

**Fit.** A diagnostic only. The checker already knows the type wanted at most positions, since a literal adapts to
it (T6). Did-you-mean (`msgs.Nearest`) is the same kind of help.

**Cost.** Small: the wanted type exists where literals adapt; the "functions giving one" list is a filter over the
module's and the prelude's names, capped at a few.

**Domains.** Learning, and writing code against an unfamiliar API.

**Verdict: yes.**

## A4. Pattern matching

olang has or-patterns (S13c), guards (S13e), nested patterns, literals in payloads and exhaustiveness (S13a,
Maranget's algorithm). What the functional languages add:

### A4.1 A guard's test narrows inside its clause

**From:** Kotlin's `when` guards (2.2) with smart casts, TypeScript's narrowing in `switch`, Typed Racket's
occurrence typing, Swift's `case let x where ...`. In the ML family a nested pattern does most of this job, and olang
has nested patterns too; what a pattern cannot say is a test that is not a case, such as "not null".

**The gap (checked with the compiler).** The narrowing walk (S8d, S8e, "one narrowing walk", 2026-10-26) covers
`and`/`or`/`not`, conditionals, asserts and loops, but not a `case` guard - neither a null test nor a case test:

```
match s {
    case Slot.Held(p) if p is not null {
        io.Println($p.v)!      # error[T2c] today: 'p' is a Node?&, which may be null
    }
    case Slot.Held(_), Slot.Empty { }
}

match w {
    case Wrap.One(s) if s == Shape.Circle and s.r > 1.0 {    # the guard itself narrows (checked) ...
        io.Println($s.r)!                                       # ... the body does not: error[S8d]
    }
    case Wrap.One(_) { }
}
```

**Proposal.** A guard's tests narrow its clause's names in the clause body, as an `if`'s condition narrows its
branch. A clause body is never entered when the guard is false, so this is sound by the same argument as `if`.

**Fit.** One narrowing walk with one more place it applies (solid and smooth). It also gives Haskell's as-patterns
(A4.2) for free.

**Cost.** Small: the guard is a condition the walk already understands; the clause body gets its facts pushed (check's
`pushFacts`).

**Verdict: yes.**

### A4.2 As-patterns

**From:** Haskell `all@(x:_)`, Rust `e @ Expr::Lit(_)`, OCaml `(Lit _ as l)`, Scala `x @ Some(_)`.

**In olang.** A payload position holds a name or a nested pattern, not both. With A4.1 the name and a guard say it:
`case Expr.Add(l, r) if l == Expr.Lit { use(l.v, r) }`.

**Verdict: covered by A4.1**, with no new pattern syntax.

### A4.3 Array patterns

**From:** Python 3.10 sequence patterns, Rust slice patterns, C# 11 list patterns, Erlang/Elixir `[h | t]`, Haskell
`x:xs`.

```python
match sys.argv[1:]:
    case ["build", file]: build(file)
    case ["test", file, *words]: test(file, words)
    case []: usage()
```

**In olang today.** An array literal in a case is a value compared by `==` (S13): `case I64[1, 2, 3]` works (checked),
but a name inside it is a value read, not a binding.

**Proposal.**

```
match os.Args()[1:] {
    case String&["build", file] { build(file) }
    case String&["test", file, ..words] { test(file, words) }
    case String&[] { usage() }
    nomatch { usage() }
}
```

- Inside an array alternative a fresh name binds an element, as it does in an enum payload (S13b).
- `..name` binds the rest as a slice of the matched array: a borrow, so it lives where the array does (E16a). `..`
  alone skips the rest. The spelling is open (`..rest` is Rust's and C#'s).
- A name that is already a local cannot be a binding, since D3a forbids shadowing. So `case I64[a, b]` with `a` and `b`
  locals becomes an error rather than silently changing meaning, and `olang fix` can list such sites.
- Exhaustiveness is not asked (S13a asks it only of enums), so a statement needs no `nomatch`; a value match needs one,
  as today.
- Lowering is a length test, element compares and slices, so the evaluator and `interpret` need nothing new.

**Fit.** It reuses the array literal and the pattern rules. It is the form Python's `match` was sold on, for
command-line dispatch.

**Cost.** Medium: the parser (`..`), the checker's binding rule for array alternatives, lowering, and the S13
wording.

**Domains.** Scripting (argument dispatch), parsers (token windows), data (header rows).

**Verdict: later**, worth doing: it is the most-used pattern form olang lacks. Decide the rest spelling with it.

### A4.4 View patterns, active patterns and extractors

**From:** F#'s active patterns, Haskell's view patterns, Scala's `unapply`.

```fsharp
let (|Even|Odd|) n = if n % 2 = 0 then Even else Odd
match x with Even -> ... | Odd -> ...
```

**Verdict: no.** A call inside a pattern hides its cost and its errors in a place S13b keeps structural ("an identifier
there is always a binding"), and exhaustiveness cannot see through a function. A guard calls functions; a value
computed before the `match` is matched instead.

### A4.5 Destructuring declarations

**From:** ML's `let (a, b) = ...`, Rust's `let Point { x, y } = p`, JavaScript's destructuring, Elixir's `=` match.

**Verdict: no.** `x, y := p.x, p.y` says it with parallel declaration (S4c), and a refutable declaration would need an
`else` (Rust's `let ... else`), which narrowing already covers.

### A4.6 Exhaustive matches over small integer types

**From:** Rust (exhaustive integer patterns with ranges), Ada's case statements over subtypes, VHDL.

**In olang.** S13a asks exhaustiveness only of enums and `Bool`. With `U1`-`U8` built (T4a), a hardware state
machine over a `U2` lists four values, and today a value match still needs a `nomatch`.

**Proposal.** A match over an integer type of at most 8 bits is exhaustive when its alternatives list every value
(or cover them with `case _`).

**Verdict: later**, with the FPGA work, where odd widths are the cheap ones.

## A5. Data and walks

### A5.1 The third round of walks

**From:** Haskell's `Data.List` (`scanl`, `groupBy`, `unfoldr`, `iterate`, `intersperse`), OCaml's `Seq`, F#'s `Seq`,
Clojure (`partition-by`, `frequencies`, `group-by`, `reductions`), Elixir's `Enum` (`chunk_by`, `group_by`, `scan`,
`dedup`), Kotlin (`groupBy`, `runningFold`), Rust (`scan`, `chunk_by`, `dedup`, `binary_search`, `partition_point`),
numpy (`cumsum`), Python's `itertools` and `bisect`.

The prelude has (listed from std/prelude): `Take Skip Enumerate Zip Chain Map Filter Fold Count Some Every Sum Min Max
MinBy MaxBy TakeWhile SkipWhile StepBy FlatMap Partition Reversed Windows Chunks Sort`. Missing, by how often other
languages' users reach for them:

| Walk | What | Example |
|---|---|---|
| `Scan(init, f)` | running fold, each step's accumulator | prefix sums: `a.Scan(0, fn(acc, x): return acc + x)` |
| `GroupBy(key)` | a `Map<K, Vec<T>>` by key | `people.GroupBy(fn(p): return p.City)` |
| `ChunkBy(key)` | runs of consecutive elements with one key | log lines grouped by request id |
| `Dedup()` | consecutive duplicates dropped | `uniq` |
| `Unzip()` | a walk of `Zipped<A, B>` into two Vecs | the inverse of `Zip` |
| `Product()` | the product, as `Sum` is the sum | combinatorics, probabilities |
| `Last()`, `Nth(n)` on iterators | failing with `Exhausted` past the end (errors are errors) | |
| `Cycle()` | the walk repeated forever | round robin |
| `BinarySearch(x)`, `LowerBound(x)` on sorted arrays and Vecs | `try a.BinarySearch(x)` fails with `NOT_FOUND`; `LowerBound` gives the insertion index, never failing | `bisect`, `partition_point` |

`Iterate`/`Unfold` is left out on purpose: a generator says it in three lines and reads better.

**Fit.** std only, the shape of the second survey's walks: each fails with what its callbacks fail with (`<T ? E>`),
is evaluated while compiling, and gets B7a examples.

**Domains.** Data and scripting most; the compiler itself (`GroupBy` over diagnostics, `BinarySearch` over line
tables).

**Verdict: yes** (std batch).

### A5.2 Lazy evaluation

**Verdict: no** (settled): a per-use hidden cost (principle 2). Generators are the explicit lazy sequence.

### A5.3 Reading back what `$` writes

**From:** Haskell's `Read` (the inverse of `Show`), Rust's RON, Python's `ast.literal_eval`.

```haskell
read "Point 1 2" :: Point
```

**In olang.** `$x` writes any value as source writes it: `Point(1, -2)`, `I64[1, 2]`, `Shape.Circle(2.0)`, `"text"`.
A std reader over reflection would read that text back into a `T`, as `json.Decode<T>` reads JSON, building through
constructors so their contracts run:

```
p := try value.Parse<Point>("Point(1, -2)")
```

**Uses.** Configuration and test fixtures in olang's own syntax, golden outputs read back, a future REPL.

**Cost.** A std module: a small reader of olang's literal syntax (or the scanner reused) and a reflection walk.

**Verdict: later.** JSON covers interchange; this is the nicer form for files written by olang programs for olang
programs.

### A5.4 Memoization

**From:** Haskell (lazy memo tables), Python's `functools.cache`, Clojure's `memoize`.

**In olang.** A `Map` is a handle, and a lambda's copy of one is a second name for the same Map (D16), so a std
`Memo<K, V>` holding a Map and a function is a few lines: `m := memo.Of(fib)`, `try m.Get(40)`. A recursive function
memoizing itself takes the memo as a parameter.

**Verdict: later** (std, small). No decorator syntax (survey 2, settled).

### A5.5 Print and return, for debugging

**From:** Roc's `dbg`, Rust's `dbg!`, Gleam's `echo` (1.9, 2025), Elixir's `IO.inspect`, Clojure's `doto prn`.

```rust
let n = dbg!(parse(t)) * 2;      // [src/main.rs:12] parse(t) = Ident("x")
```

**In olang.** Now possible as an ordinary std function, through `Place.Here` (E40) and `$` (E11a):

```
# writes "FILE:LINE:COLUMN: " and $v to the standard error, and gives v back
fn Show<T>(v T, at Place = Place.Here) T

n := io.Show(parse(t)) * 2       # main.olang:12:10: Token.Ident("x")
```

- The name is open (`io.Show`, `io.Peek`, `io.Inspect`); words, not `dbg`.
- A failed write to the standard error is ignored: it is a debugging aid, and no std function may end the program
  (R22). This is the one std call that swallows an error, and its doc comment says so.
- It does not print the expression's source, which only a compiler-known form could (Rust's macro, Gleam's keyword).
  The place points at it.
- Gleam made `echo` a keyword so the build tool can refuse to publish code holding one. Under the three-way rule that
  is not a reason for a keyword in olang; the capability report (B1.2) or a plain search finds the calls.

**Cost.** A few lines in std/io.

**Domains.** All.

**Verdict: yes.**

## A6. Memory ideas from functional runtimes

### A6.1 Reuse in place

**From:** Koka's FBIP ("functional but in-place") and Perceus reuse, Lean 4's reset/reuse ("Counting Immutable
Beans"), Roc's in-place updates of unique values.

```koka
fun map(xs, f)
  match xs
    Cons(x, xx) -> Cons(f(x), map(xx, f))    // the old Cons cell is reused when unique
```

**In olang.** Early freeing (O8d, free.olang) already releases a place's old value when the place lets go of it while
it was its only holder. The next step is for the new value to be built *into* the storage just released when it has
the same type: `n = rebalance(n)` on a tree node, an interpreter's `env = env.With(name, v)`. Without it, the chunk pool reuses the memory but the program pays a release and an allocation, and
copies the unchanged fields.

**Fit.** No syntax: the compiler's optimization, unobservable but in time and memory (principle 1's "freeing early is
the compiler's"). It never runs a destructor early (O15), and keeps wherever a fact is missing, as early freeing does.

**Cost.** Medium, in free.olang: pair a let-go with a build of the same type at the same place in the same statement.

**Verdict: later**, with a benchmark first (an interpreter loop and a tree rebalance). Arena allocation is a bump, so
the gain may be small; measure before building.

## A7. Concurrency

### A7.1 Software transactional memory

**From:** Haskell's STM, Clojure's refs and `dosync`, Scala's ZIO STM.

```haskell
atomically $ do
  a <- readTVar from
  writeTVar from (a - 10)
  modifyTVar to (+ 10)
```

**In olang.** A std library could give it with every access a written call, so no cost is hidden:

```
from, to := stm.Var<I64>(100), stm.Var<I64>(0)
try stm.Atomically(fn(tx mut stm.Tx&) {
    a := tx.Read(from)
    tx.Write(from, a - 10)
    tx.Write(to, tx.Read(to) + 10)
})
```

**Fit.**
- STM's selling point over `Mutex.With` is composition: two transactions combine, and two mutexes taken in
  different orders deadlock.
- A transaction is rerun on conflict, so its body must have no effect outside `tx`. olang cannot check that of a
  lambda today. The facts of B1.1 could, and without them it would be a stated hole like a data race (P8b).
- The log of reads and writes is a run-time cost, written at each use (`tx.Read`).

**Cost.** Medium in std: a versioned-lock design (TL2) and a retry loop. The evaluator, which runs tasks in sequence,
needs nothing.

**Domains.** Servers, games and simulations with shared state.

**Verdict: later at most**, after the function facts. `Mutex.With` and channels cover today's programs.

### A7.2 Actors, supervision trees and hot code reload

**Verdict: no** (survey 2, settled): a library on `std/chan` at most, and hot reload needs a stable ABI and runtime
olang does not have.

### A7.3 Deterministic parallelism

**From:** Haskell's `Par` monad and IVars, Futhark, Cilk.

**Verdict: covered.** `spawn x = f()` inside a `join` is an IVar written once and read after the join (P1g), and
`spawn out[i] = f(i)` is a race-free parallel map.

## A8. GUIs: the Elm architecture

**From:** Elm's Model-Update-View, adopted by Iced (Rust), Bubble Tea (Go), SwiftUI's and React's unidirectional
data flow, Gleam's Lustre.

```elm
update : Msg -> Model -> Model
view : Model -> Html Msg
```

**In olang.** Nothing new is needed from the language, and its scopes fit the pattern unusually well:
- the model is a struct;
- messages are an enum, and `update(m mut Model&, msg Msg)` matches them exhaustively, so a new message shows every
  place to handle it (S13a);
- `view(m Model&)` builds the widget tree each frame in the frame's block, and the whole tree is reclaimed in one step
  when the frame ends - what immediate-mode GUIs do with a hand-made arena, here by the language's rule;
- `any Widget&` holds the open set of widgets (principle 5's GUI line).

**Verdict: later**, as the design direction for a GUI library when one is written (the GUI style was left to me in
the ledger). It is also the strongest showcase of scopes for GUI work.

## A9. The proof languages

Lean, Idris, Agda and F* contribute a prover, which the user removed (2026-10-25), and dependent types, covered as
far as olang goes in A3.6. What remains:
- Lean's `#eval`/`#check` are `olang explain FILE NAME` and top-level `assert`s;
- typed holes are A3.10;
- termination is A2.4.

Nothing else is proposed.

---

# 3. Part B: languages like olang

Zig, Rust, Odin, Jai, C3, Hare, Nim, D, Carbon, Mojo, V, Swift, Go, Crystal, Julia, Vale, Hylo, Austral, Cyclone,
Pony, Lobster, Ada/SPARK, Fortran, Chapel, ISPC, Futhark, Halide, CUDA and SYCL. Most of what these languages have,
olang has or has settled (sections 4 and 5); this part is what is left.

## B1. Facts the compiler can check about a function

### B1.1 Function facts: "allocates nothing", "never blocks", "always ends"

**From:**
- Ada's `pragma Restrictions` (`No_Allocators`, `No_Recursion`, `No_Implicit_Heap_Allocations`) and the
  Ravenscar/Jorvik profiles; SPARK's `Global` and `Depends` contracts;
- Clang's function effect analysis (`[[clang::nonblocking]]`, `[[clang::nonallocating]]`, checked through every
  callee, made for real-time audio);
- D's `@nogc`, `nothrow` and `pure`, inferred for templates;
- Nim's `{.raises: [].}` and `{.tags: [].}`; Swift's experimental `@_noAllocation` and `@_noLocks`;
- Zig's convention that a function allocates only through an allocator it is given.

```cpp
void process(float* buf, int n) [[clang::nonblocking]] {
    std::vector<float> tmp(n);      // warning: allocates in a nonblocking function
}
```

**The need in olang.** Every block is an arena, so whether a function allocates is not visible in its text: a `$x`, a
`Vec` push, a call that builds its result. An audio callback, a frame loop, a hot kernel or an interrupt handler needs
"this allocates nothing and never blocks", and today only a profile or a careful reading says it. The FPGA back end
(recorded future work) needs a stricter set - no allocation, no recursion, no function values, no C, every loop
bounded - and so would a GPU back end.

**In olang.** By the three-way rule (PRINCIPLES.md: keywords are syntax, what the compiler knows is read through a
name, attributes are library data), these are facts read through the function's name, decided while compiling, and
pinned by a top-level `assert` (S17a):

```
assert not mix.Allocates, "the audio callback must not allocate"
assert not mix.Blocks
assert render.Terminates                  # every loop bounded by a length or a range, no recursion

for f in dsp.Functions {                  # G41's walk; the descriptors gain the same facts
    assert not f.Allocates, "dsp." f.Name " allocates"
}
```

The facts (a proposal):

| Fact | Holds when the function and everything it may call ... |
|---|---|
| `Allocates` | may ask the runtime for storage in any scope, its own frame's included (a fixed array in place or a plain value does not count) |
| `Blocks` | may take a lock, join, use a channel, sleep, or call C that is not known not to block |
| `WritesGlobals` | may store to a global |
| `CallsC` | may call an extern or a C import |
| `Spawns` | may start a task |
| `Recursive` | may call itself, directly or through others |
| `Terminates` | has only loops bounded by an array's length, a `range` or a generator walk of one, and no recursion |

A call through a function value or an `any` counts as everything, as S3's summary counts an unknown body as an
effect, so no fact is ever claimed wrongly. A hardware profile is then nothing new: the FPGA build asserts a fixed set
of facts for everything reachable from its entry.

**Fit.**
- Principle 2: a cost that matters is guaranteed, not hoped for, and written where the reader sees it.
- The three-way rule: not an attribute (`@NoAlloc` would give an attribute a compiler meaning, which the user ruled
  out), not a keyword on the declaration.
- It composes with top-level asserts, reflection (G41) and `explain` (A2.3, which prints the same facts).
- Spelling is open: `mix.Allocates` reads a member through a function's name, which means nothing today (a function
  value has no members). The alternative is reaching the facts only through descriptors.

**Cost.** Medium. Most summaries exist (what a body may build, `settleIdle`'s effects, the call graph's components);
`Blocks`, `Recursive` and `Terminates` are new fixed points of the same shape. The evaluator reads constants and runs
nothing.

**Domains.** Real-time audio and GUI frame loops, servers' hot paths, AI kernels, embedded and freestanding code, and
the FPGA and GPU subsets.

**Verdict: yes** for printing the facts (A2.3), **later** for asserting them, built with the FPGA work or when the
first real-time user asks. Designing it now matters, so the FPGA subset is this mechanism and not a second one.

### B1.2 A capability report on imported packages

**From:** Google's Capslock for Go (which privileged operations a package can reach, transitively; deps.dev shows
it, and `capcheck` fails CI when a dependency gains one); Austral's capability-based security; Deno's permissions;
WASI; Nim's effect tags.

**The need in olang.** Imports are git URLs pinned by commit (M23). An imported package can read files, open sockets,
run processes or call C, and an update can start to.

**In olang.** Tooling first, on B1.1's summaries:

```
$ olang explain -caps main.olang
github.com/x/parser@v1.4     none
github.com/y/fetch@v0.2      network (std/net), files (os.Write: cache)
std/http                     processes (curl), network
```

The classes are read off which std entry points (and externs) each module's reachable code may call: files, network,
processes, environment, C, threads. A lock-file update that gains a class is shown by `-update`. Later a top-level
assert could pin it per import (`assert not parser.Reaches(...)`; spelling open).

**Not proposed:** capabilities as values in the language (Austral: a `Filesystem` value is needed to open a file).
Every I/O call would take one more argument, and `main` takes none.

**Domains.** Scripting with third-party code, and oagent, whose oversight rules ("the system cannot change its own
evaluation") are easier to hold when a component's reach is checkable.

**Verdict: later** (tooling), after A2.3, sharing its summaries.

### B1.3 Type invariants

**From:** D's `invariant` blocks, Eiffel's class invariants, Ada 2012's `Type_Invariant`.

```d
struct Range { int lo, hi; invariant { assert(lo <= hi); } }
```

**Verdict: no.** An invariant is checked after every public method that may change the value: a per-call cost the
call does not show (principle 2), and the user dropped debug-only checking modes (QAI). The constructor's contract
checks construction (D17); `std/prop` checks an invariant method (`p.Valid()`) over generated values in tests.

### B1.4 Generics checked at their definition

**From:** Rust, Swift, Carbon and Haskell check a generic body once, against its bounds. C++ templates, Zig's
`comptime` and olang check each instance (G18, with G16b's note naming the instantiation).

**The consequence in olang.** As I read G18 and G16b, a library generic that uses something its constraint does not
promise compiles until some user instantiates it with a type lacking it, and the error lands inside the library with a
note at the user's call (the S18c batch recorded the same shape: "an S18c error inside an instance points at std's
assert"). Per-instance checking is also what makes `match T`, G35's decisions and per-length instances work, so full
definition checking would be wrong for olang.

**Proposal (tooling first).** `olang doc` and `explain` print what each type variable must have, read off the body,
beside the written constraint:

```
fn Max<T>(a T, b T) T
    # T needs: Less
```

Later, the checker could check each generic once more with every type variable bound to a placeholder holding only
its constraint's methods (an archetype), skipping `match T` arms and reflection-decided branches, and report a use
beyond the constraint at the definition. olang has no warnings, so whether that is an error is a direction question
for then.

**Domains.** Library authors (std first).

**Verdict: later.**

### B1.5 Library evolution: enums that may grow

**From:** Rust's `#[non_exhaustive]`, Swift's library evolution (`@frozen`, `@unknown default`), C#'s guidance on
enums in public APIs.

**The need in olang.** A library that adds a case to a public enum breaks every exhaustive `match` in every importer
(S13a), which is right inside one program and harsh across packages.

**In olang.** A keyword on the declaration (`type Event enum open { ... }`, spelling open) would require importers'
matches to carry a `nomatch`. It cannot be an attribute, since it changes what compiles.

**Verdict: later**, with a registry and a versioning story. Until then, pinned commits and `olang fix` cover it.

### B1.6 API differences between versions

**From:** Elm's `elm diff` and enforced semantic versioning, `cargo-semver-checks`, Go's `apidiff` and `gorelease`.

**In olang.** `olang doc`'s signatures already give a module's exported interface. `olang api OLD NEW` (two commits)
would list what was added, removed or changed, and say whether a change breaks importers: a removed name or a changed
signature does; a new enum case does (B1.5); a narrower error set does not; a wider one breaks an importer's complete
`catch`.

**Verdict: later** (tooling), with a registry.

## B2. The region and ownership languages

These are the languages closest to olang's memory model. Each was read for something olang could still take. The
answer is mostly that olang has the idea in another form, or settled it:

| Language and idea | olang |
|---|---|
| Cyclone: lexical regions, region polymorphism, never-null `@` pointers | scopes (O1), inferred obligations (O10b) instead of region parameters, never-null `T&` (T2c) |
| Cyclone: dynamic regions created and freed at run time | settled: QF's `Region<T>` became `own`, then early freeing (QAB: "the user should not have to deal with it") |
| Vale: generational references | survey 1: no in the language (a check per dereference), later as a std `Pool<T>` |
| Vale: region borrowing (a function sees a region read-only and skips checks) | read-only references (T25b), with no checks to skip |
| Vale "higher RAII", Austral linear types: values that must be ended by a named call | settled: `own`/`take` built and removed; `x.Destroy()` ends early where proven sole (C9b) |
| Hylo: mutable value semantics, parameter conventions `let`/`inout`/`sink`/`set` | by-value parameters are `let`, `mut T&` is `inout`, `sink` is what early freeing infers, `set` is several results |
| Hylo and Swift: projections (`subscript` yielding a place, `_modify`) | `At`/`SetAt` with E31b's read and write-back, or a borrowed result `T&p` |
| Pony: reference capabilities (`iso`, `val`, `ref`, `box`, `trn`, `tag`) | settled (QAC): no static race freedom without ownership; `-race` detects |
| Lobster: reference counting with compile-time elision | principle 1: no reference counting at all |
| Mojo: ASAP destruction (a value destroyed after its last use) | no: destructor timing is observable (a lock released early); O15 runs destructors at scope close or at a proven `Destroy()` |
| Rust: the borrow checker, lifetimes, two-phase borrows | §8's scope containment; no exclusivity rule; two-phase borrows recorded for when code needs them |
| Swift `~Copyable`, `consuming`/`borrowing` | settled with `own`'s removal |

Nothing here is proposed. The one lesson worth keeping: the region languages that let programmers name regions
(Cyclone, Rust's lifetimes) found that most annotations could be inferred, which is what olang does.

## B3. Array and data-parallel languages

### B3.1 Elemental functions in lane expressions

**From:** Fortran's `elemental` functions, Julia's dot fusion (`relu.(a .* w .+ b)` is one loop), Chapel's
promotion, numpy's ufuncs, APL.

```fortran
elemental real function relu(x)
    real, intent(in) :: x
    relu = max(x, 0.0)
end function
y = relu(a * w + b)              ! one loop, no temporaries
```

**In olang.** Lane operators fuse a whole expression into one loop (E39), but "a user's own map-shaped functions do not
fuse" (CLAUDE.md, E39). The olang way to apply a scalar function lane by lane is already a comprehension, and it works
(checked):

```
y := F32[relu(v) for v in a * w + b]
```

As E39's entry reads, though, the lane expression is first made as an array and the comprehension then walks it.
**Proposal:** a comprehension or `for` whose source is a lane expression reads it lane by lane, so the line above is one
loop with no temporary, and `relu` is inlined at `-O3`. No syntax: the comprehension is the elemental form.

**Fit.** Principle 2 (one loop, as C would write it), principle 4 (no `.(` or `elemental` keyword), and it
composes: anything a comprehension takes, scalar function or lambda, fuses.

**Cost.** Small to medium in the checker's lane elaboration (a for-in source is one more reader of a lane node).

**Domains.** AI and data: activation functions, normalization, any elementwise kernel.

**Verdict: yes** (check E39's materialization first; if it already fuses, document it).

### B3.2 Masked assignment

**From:** Fortran's `where (a > 0) a = sqrt(a)`, numpy's `np.where`, ISPC's `if` on varying values.

**Verdict: covered** by `mask.Select(a, b)` over lane expressions (E39).

### B3.3 Sizes in signatures

**From:** Futhark (`def dot [n] (xs: [n]f32) (ys: [n]f32): f32`), Dex, Idris.

**Verdict: covered** by a contract relating lengths (A3.6), decided at calls where both lengths are known.

### B3.4 Guaranteed vectorization (SPMD)

**From:** ISPC's `uniform`/`varying` and `foreach`, OpenCL C, CUDA's SIMT model as a CPU language.

**In olang.** Whether a loop vectorized is LLVM's decision, invisible today.

**Verdict: no** as language: a second programming model (every value either uniform or varying) for one domain. The
olang answer is to make the optimizer's decision visible, which is B5.1's remarks.

### B3.5 Separating an algorithm from its schedule

**From:** Halide (`blur(x, y) = ...` written once, `.tile().vectorize().parallel()` separately), TVM, Exo.

**Verdict: no** in the language: a domain-specific language with a code generator, which olang does not have (no
functions returning code, no macros). For oann: kernels written once with their tile sizes as compile-time arguments
(`comptime for`, decided 2026-10-27) give part of the effect.

### B3.6 GPU kernels

**From:** CUDA, SYCL (`parallel_for` with a lambda, single source), Triton, Mojo's GPU support, Julia's CUDA.jl.

**Verdict: later** (survey 1: "say so at announcement"). New here: a GPU back end needs the same restricted subset
the FPGA back end does - no allocation, no recursion, no function values, bounded loops - so B1.1's facts are the
shared front half of both. LLVM's NVPTX and AMDGPU targets would be the back half.

### B3.7 Parallel loops, multi-dimensional arrays, coarrays

**Verdict:** parallel loops (Chapel's `forall`, Fortran's `do concurrent`, OpenMP) are survey 1's "later, a std
`ParallelMap`"; multi-dimensional arrays are settled (the user: arrays of arrays; tensors are oann's); coarrays and
PGAS (Fortran, Chapel's locales, UPC) are **no**, as olang has no distributed-memory target.

## B4. Systems-language details

### B4.1 Floored division and modulo

**From:** Python (`-7 // 3 == -3`, `-7 % 3 == 2`), Haskell (`div`/`mod` beside `quot`/`rem`), Ada (`mod` beside
`rem`), Kotlin (`mod`, `floorDiv`), Rust (`rem_euclid`, `div_euclid`, `div_ceil`).

**In olang.** `/` and `%` truncate, as C's do: `-7 % 3` is `-1` (checked). Wrapping an index backwards, hashing into a
table, calendars and grids all want the floored form, and `(i % n + n) % n` is the usual workaround. Rounding a
division up (`(n + k - 1) / k`) overflows near the top of the range.

**Proposal.** Supplied methods of every integer type, as E37's bit operations are:
- `x.Mod(n)`: the remainder with the divisor's sign (Python's, Haskell's, Ada's), so `(i - 1).Mod(n)` is in `0..n-1`
  for a positive `n`;
- `x.DivFloor(n)`, so that `x == x.DivFloor(n) * n + x.Mod(n)`;
- `x.DivCeil(n)`, without the overflow.

Division by zero is undefined, as for `/` (E6a); `std/arith` gets the checked forms beside its `Div` and `Rem`.

**Fit.** Words, not a new symbol (Python's `//`). No per-operation cost: each is a named call.

**Cost.** Small: prelude methods over `Integer`, the evaluator computing them through the same code.

**Domains.** All.

**Verdict: yes.**

### B4.2 Lazily initialized globals

**From:** Go's `sync.OnceValue` (1.21), Rust's `LazyLock`, Swift (globals are lazy), Kotlin's `by lazy`.

**In olang.** A global is baked while compiling or set at startup (B5a), so a large table a program rarely uses costs
every start. `std/sync` has `Once`; the missing piece is the value form:

```
Table := sync.Lazy<Map<String&, I64>>(fn(): return loadTable())
t := Table.Get()          # built on the first call, once, on any thread
```

**Verdict: later** (std, small). `comptime` (decided) covers tables computable while compiling.

### B4.3 Interning

**From:** Go 1.23's `unique.Make`, Java's `String.intern`, Lisp symbols, compilers' symbol tables.

**Verdict: later** (std, small): a `Map` behind a handle giving one stored copy and a cheap key per distinct text. The
compiler itself would be its first user.

### B4.4 Blocks as expressions

**From:** Rust (`let x = { ...; v };`), Zig's labeled blocks, Kotlin's `run { }`, GCC's statement expressions.

**Verdict: no.** Since definite initialisation (D13d), `x I64` followed by assignments on every path says it, and a
conditional or `match` gives a value where the choice is the point.

### B4.5 Inline assembly and CPU intrinsics

**From:** Rust's `asm!` and `core::arch`, Zig's `asm`, D, C's `<immintrin.h>`.

**Verdict: covered** through C imports (X17-X22): a `.c` file holding the `asm` or the intrinsic in a function, imported
and inlined under LTO both ways. Worth one example in the docs (a `rdtsc` and an AVX-512 intrinsic).

### B4.6 Calling Python from olang

**From:** Mojo (imports Python modules directly), Nim's nimpy, PyO3's embedding direction, Julia's PythonCall.

**In olang.** Being called *from* Python is built (`build -library`, ctypes). The other direction is reachable today
through a C import of `Python.h` (its macros are static inline functions, which C imports reach through wrappers). A
std module would make it usable:

```
np := try py.Import("numpy")
a := try np.Call("arange", 10)
s := try a.Call("sum").As<I64>()
```

Python's reference counts are foreign (X10, outside §8), released by a destructor on `py.Object`.

**Domains.** AI and data, where the libraries are.

**Verdict: later** (std, on C imports).

### B4.7 Language-integrated queries

**From:** C#'s LINQ query syntax, V's `sql` blocks, Kotlin's Exposed DSL.

**Verdict: no.** A second sublanguage. The walks (A5.1) and a SQL library taking pieces cover it.

### B4.8 Run-time type information

**From:** Go's `reflect`, Jai's `type_info`, C#'s and Java's reflection.

**Verdict: no.** Reflection is compile-time (G32-G41), `$` renders any value, and an `any` carries only its table.
Run-time type data costs every program for the few that read it.

### B4.9 Anonymous trait implementations

**From:** Kotlin's `object : Listener { ... }`, Java's anonymous classes, F#'s object expressions, Go's
`http.HandlerFunc` adapter.

**Verdict: no.** For a one-method trait a function value is the answer (D16); for more, a small named struct. A std
adapter (`type Handler struct(f fn(r Request&))` with the method calling `f`) is Go's pattern and needs nothing new.

### B4.10 Specializing a function on constant arguments

**From:** Jai's `#bake_arguments`, C++ non-type template parameters, Zig's `comptime` parameters.

**Verdict: no.** Constant type parameters were removed (QP2); arrays get an instance per length (G29), and LLVM's
function specialization handles constant arguments at `-O3`.

### B4.11 Saturating and fixed-point arithmetic

**Verdict: decided later** (QAW item 4, a `Saturating<T>` wrapper; fixed point with the FPGA work). Listed so the
sweep shows it was considered: Zig's `+|`, Rust's `saturating_add`, Ada's fixed-point types and DSP languages all have
it.

## B5. Tooling

### B5.1 One function's generated code, with the optimizer's remarks

**From:** Julia's `@code_llvm` and `@code_native`, Compiler Explorer, `cargo asm`, Zig's `--emit asm`, LLVM's
optimization remarks (`-Rpass=loop-vectorize`, `-Rpass-missed=inline`), Mojo's and Julia's performance culture.

```julia
julia> @code_native sum([1, 2, 3])
```

**In olang.**

```
$ olang explain -asm main.olang Mix
$ olang explain -ir main.olang Vec.Push
    # loop at main.olang:14: vectorized (width 8, interleaved 2)
    # loop at main.olang:20: not vectorized - a call to 'next' it cannot see through
    # call to 'grow' at main.olang:22: not inlined - too large (cost 340 > 250)
```

The code is the function as the build compiled it (`-O3`, LTO), from the build's own objects, so what is shown is what
runs; the remarks come from clang's optimization record, mapped back to olang lines through the line tables the
profiler already writes (B20).

**Fit.** Principle 2's "you get what the machine can do" made checkable, and the honest answer to ISPC's guarantee
(B3.4). `-target`, `-quick` and `-define` apply as for `explain`.

**Cost.** Small to medium: names are predictable (the profiler's `ProfName`), the IR is in hand, and the remarks are a
clang flag plus a YAML reader.

**Domains.** AI kernels, the benchmarks, anyone checking a hot loop.

**Verdict: yes.**

### B5.2 Search by type

**From:** Haskell's Hoogle, Scala's and Rust's doc search by signature.

```
$ olang doc -find "fn(String&) I64"
std/prelude  String.Len, String.Hash ...
```

**Verdict: later** (tooling, small on `doc`'s signatures).

### B5.3 Also in this survey

The capability report is B1.2, the API diff B1.6, the effect line in `explain` A2.3, and the type variables'
requirements B1.4.

---

## 4. Already covered

Considered for this survey and dropped, because olang has it. One line each: the feature, where it comes from, and
olang's form.

**From the functional languages**
- Algebraic data types and exhaustive matching (all of them): enums with payloads, recursive through `&`, generic
  (T17, G6b); S13a.
- Or-patterns, guards, nested and literal patterns (Haskell, OCaml, Rust, Elixir): S13b-S13f.
- `Maybe`/`Option` (Haskell, Elm, OCaml): `T?&` with narrowing (T2c, S8e); values have zero values instead (D13c).
- `Either`, monads, `do` notation, Elixir's `with`, F#'s computation expressions: error sets, `try` over a whole
  expression, catch clauses.
- Open tag unions (Roc, OCaml): inferred error sets (R1a, R1c).
- Type classes, deriving, coherence, conditional instances, superclasses: section A3.1.
- Refinement types (Liquid Haskell): constructors with contracts (T29d, D17).
- Length-indexed vectors (Idris), size types (Futhark): inferred fixed lengths (T7c), instances per length (G29),
  contracts over lengths.
- Phantom types (Haskell, Rust): a generic struct may leave its parameter unused (A3.7).
- Newtypes and opaque types (Haskell, Elm, Gleam, Scala): declared types (T29), private fields.
- Immutability by default (Haskell, Elm, Clojure): read-only references unless `mut` (T25b).
- Laziness and infinite streams (Haskell, OCaml `Seq`, Clojure): generators (D18).
- Tail calls (Scheme, Erlang, Elixir): `become` (S21).
- Property tests (QuickCheck, Hypothesis): `std/prop` (B19a).
- Doctests (Elixir, Haskell): tests naming a target are its examples (B7a).
- `deriving Ord`: `order.ByFields<T>`; enum sets: `std/bitset`.
- Records of function values as modules, first-class modules (OCaml, SML): traits and `any Trait&`.
- SML signatures (a module checked against an interface): a top-level `assert` over `alias.Functions` (S17a, G41).
- Elixir protocols, Clojure protocols: traits, satisfied implicitly.
- Elixir sigils, Swift's regex literals checked while compiling: `comptime regex.Compile("...")` (decided
  2026-10-27), K1's evaluation of constant arguments.
- Clojure atoms, `core.async`, Erlang's selective receive: atomics (P9), `std/chan`, `chan.Select` (decided).
- Deterministic parallelism (Haskell `Par`, IVars): `spawn x = f()` in a `join`.
- Structured concurrency (Trio, Kotlin, Swift): `join { }`.
- Typed Racket's occurrence typing, Kotlin's smart casts: narrowing (S8d, S8e).
- Lean's `#eval`/`#check`: `olang explain FILE NAME`, top-level asserts.
- Racket's custodians (resources released as a group): scopes and destructors.
- Unison's and Roc's "no runtime exceptions" story: errors in signatures; aborts only on broken guarantees.

**From the languages like olang**
- Compile-time execution (Zig `comptime`, Jai `#run`, D CTFE, Nim `static`): K1, K2, and the decided `comptime e`
  and `comptime for`.
- `static if`, `when`, `version`, `$if` (D, Nim, C3): a top-level `if` on build constants (B9); debug-only code is
  `if DebugBuild { }` (B10a).
- Error unions, `errdefer`, error return traces (Zig, C3's faults, Odin's `or_return`): R1-R8, S19e, S18d; Odin's
  `or_else` is `catch default`.
- Result locations (Zig): a result is built where it lands (O18a).
- Temporary allocator scopes (C3's `@pool`, Jai's temporary storage): every block is an arena.
- `distinct` types (Nim, Odin): declared types; `extends` for their operators.
- `bit_set` (Odin), `set of` (Pascal): `std/bitset`.
- Enumerated constants (Go's `iota`, Nim's ordinal enums): enum raw values (T17e).
- Struct tags (Go), attributes read by libraries (C#, Java): typed attributes (G39-G41).
- `#[track_caller]`, `@src()`, `source_location`: `Place.Here` (E40).
- `Default` (Rust), zero values (Go): zero values from the constructor's defaults (D13c), definite initialisation
  (D13d).
- `From`/`Into` (Rust): conversions and constructors, written (`I32(x)`, `Name(x)`); no implicit conversions.
- Wide multiplication (`mulhi`, `u128`): `U128(a) * U128(b)` (T4a).
- `sink`/`lent` parameters (Nim), `owned`/`borrowed`/`inout` (Mojo): by-value and `mut T&` parameters, borrowed
  results (`T&p`), moves inferred by early freeing.
- Chapel's `config const` (settable from the command line): `flags.Read<T>` from a struct's parameters.
- Go's `iter.Pull`: generators are pull iterators already.
- Fortran's `where`: `mask.Select`; Futhark's `reduce`: `Sum`/`Min`/`Max` on lane expressions.
- Inline assembly and intrinsics (Rust, Zig, D): C imports (B4.5).
- SoA layouts, declared-layout and packed structs, thread-locals, big integers: survey 1, later (section 5).

## 5. Considered in earlier surveys or the ledger, not repeated

Each of these came up in the sweep and was already decided; this survey adds nothing to the decision.

| Feature | Where it was settled |
|---|---|
| Currying, effect handlers, laziness, HKT, GADTs, row polymorphism | survey 2 section 3 (handlers and pipelines looked at again in A1.1, A2.1, with the same verdict) |
| Pipelines, trailing lambdas, Gleam's `use`, Swift result builders | surveys 1 and 2 |
| Macros, decorators, templates, `#insert` | settled (principle 4; compile-time evaluation and generics) |
| Actors, supervision trees, hot code reload | survey 2 section 3 |
| Persistent collections | the user, 2026-10-27: "dont do them at all" |
| Tuples, anonymous records | the user, 2026-10-07 and 2026-10-25 |
| `Option` on values, `Result` | the user, 2026-10-25 (QAZ) and 2026-10-26 (QBI) |
| Implicit parameters and context (Scala, Odin, Jai) | survey 2 |
| Explicit allocators (Zig, Odin) | survey 1 (principle 1) |
| Reference counting, weak references, `Cow` | principle 1 |
| async/await | settled (colouring, a scheduler) |
| Multiple dispatch, overloading | the user, 2026-10-24 |
| Extension methods, UFCS | M19, M19d |
| Struct embedding, `using`, `alias this` | survey 2 |
| Linear and affine types, typestate | survey 1 (`own` built and removed, QAB) |
| Generational references | survey 1 (later as a std `Pool<T>`) |
| Static race freedom (Pony, Rust `Send`/`Sync`) | QAC |
| Units of measure | the user, 2026-10-18 and 2026-10-24 |
| `.Case` shorthand (Swift, Zig, Odin) | the user, 2026-10-27: "dont build" |
| `select` over channels | decided 2026-10-27: `chan.Select` in std |
| Guaranteed compile-time values | decided 2026-10-27: `comptime` |
| Cold paths | decided 2026-10-27: inferred |
| Test clocks (Go's synctest) | decided 2026-10-27: `time.Virtual` |
| Map and Set comprehensions, several `for` clauses | deferred by the user |
| Struct patterns, transparent type aliases | surveys 1 and 2: later |
| Declared-layout and packed structs, bit fields | survey 1: later, recorded future work |
| SoA layouts | survey 1: later |
| Thread-locals, big integers and decimals | survey 1: later |
| Parallel loops as a std helper | survey 1: later |
| GPU kernels | survey 1: later (B3.6 adds that the subset is shared with the FPGA work) |
| Saturating arithmetic, fixed point | QAW item 4; deferred to the FPGA work |
| REPL, notebooks, benchmarks, coverage, golden tests | survey 2 section 5 |
| Embedding directories (Go's `embed.FS`) | E38: files only, "not now" |
| Labeled break, `goto`, fallthrough | the user, 2026-10-08 |
| The prover (Lean, Dafny, SPARK proofs) | the user, 2026-10-25: removed |

## 6. Shortlist, ranked

The strongest items, numbered to answer by number. "yes" items are small and need only a go; "later" items fit and
wait for the work they belong to.

1. **A guard's test narrows inside its clause** (A4.1) - yes. A gap in the one narrowing walk, checked with the
   compiler; it also gives as-patterns.
2. **Floored division and modulo**: `x.Mod(n)`, `x.DivFloor(n)`, `x.DivCeil(n)` (B4.1) - yes. `-7 % 3` is `-1`
   today, and every index-wrapping loop works around it.
3. **Typed holes** (A3.10) - yes. `_` in an expression becomes a report of the wanted type and the locals that fit;
   a diagnostic only.
4. **Print and return for debugging**, `io.Show(v)` (A5.5) - yes. A few lines of std now that `Place.Here` exists.
5. **The third round of walks**: `Scan`, `GroupBy`, `ChunkBy`, `Dedup`, `Unzip`, `Product`, `Last`/`Nth`, `Cycle`,
   `BinarySearch`/`LowerBound` (A5.1) - yes (std).
6. **Effects inferred and shown** in `explain`, `doc` and hover (A2.3) - yes. The compiler computes them already.
7. **One function's generated code with the optimizer's remarks**, `olang explain -asm`/`-ir` (B5.1) - yes.
   "Vectorized or not, and why" for every hot loop.
8. **Comprehensions over lane expressions fuse**, Fortran's elemental functions in olang's form (B3.1) - yes. No
   syntax: `F32[relu(v) for v in a * w + b]` becomes one loop.
9. **Function facts the program can assert** - `Allocates`, `Blocks`, `Terminates`, `Recursive`, `CallsC` - read
   through a function's name and pinned by top-level asserts (B1.1) - later, design now. The real-time guarantee
   Clang and Ada give, and the check the FPGA and GPU subsets need.
10. **Array patterns in `match`**, `case String&["test", file, ..words]` (A4.3) - later, worth doing. The most-used
    pattern form olang lacks; the rest spelling is open.
11. **A capability report on imported packages** (B1.2) - later (tooling). Capslock for olang, on 6's summaries.
12. **Reuse in place**, the next step of early freeing (A6.1) - later, benchmark first.
13. **Generics' inferred requirements shown**, then checked at the definition (B1.4) - later.
14. **The Elm architecture as the GUI library's design** (A8) - later, when GUI work starts; nothing new in the
    language.
15. **Library evolution**: enums that may grow, and an API diff between versions (B1.5, B1.6) - later, with a
    registry.

Smaller "later" items not ranked: method values for callbacks (A1.4), argument holes (A1.2, after a count),
exhaustive matches over small integers (A4.6), reading back `$` (A5.3), `Memo` (A5.4), STM (A7.1), lazy globals
(B4.2), interning (B4.3), calling Python (B4.6), search by type (B5.2).

## 7. Method and sources

**What was read.** PRINCIPLES.md; CLAUDE.md's settled decisions; the memory's rules, plan and decisions ledger (survey
2's twelve answers of 2026-10-26/27 included); `docs/survey.md`, `docs/survey2.md`, `docs/ideas.md`; SPEC.md's
contents, sections 6.4 (`match`), 10.5 (build constants) and 12.3 (generic types); the prelude's method names
(`std/prelude/*.olang`) and `std/set.olang` for today's idiom.

**What was checked with the compiler** (`build/olang` of the merge worktree at 19bd8c6, `-quick`), each claim in the
text marked "checked":
- `type Id<T> struct(v I64) { v }` with `Id<User>(3)` compiles (A3.7);
- a guard `if s == Shape.Circle` does not narrow `s` in the clause body - `error[S8d]` - nor a guard `if p is not
  null` - `error[T2c]` - while `s == Shape.Circle and s.r > 1.0` inside the guard does narrow (A4.1);
- `f := s.Trim` is "String has no member 'Trim'" (A1.4);
- `_` in an expression is "unknown name '_'" (A3.10);
- `case I64[1, 2, 3]` matches an array by `==` (A4.3);
- `-7 % 3` prints `-1` (B4.1);
- `F32[relu(v) for v in a * b + 1.0]` runs and prints `F32[1.5, 0, 2.5]` (B3.1; whether it fuses was not checked).

**What was checked on the web** (search results only):
- Clang's function effect analysis (`nonblocking`, `nonallocating`):
  <https://clang.llvm.org/docs/FunctionEffectAnalysis.html>, the design patch
  <https://lists.llvm.org/pipermail/cfe-commits/Week-of-Mon-20240923/624813.html> (September 2024; its release in a
  specific clang version was not confirmed);
- Gleam's `echo` (1.9, 2025) and why it is a keyword: <https://gleam.run/news/hello-echo-hello-git/>;
- Capslock: <https://pkg.go.dev/github.com/google/capslock@v0.3.1>, <https://blog.deps.dev/capslock/>, and
  `capcheck` <https://pkg.go.dev/github.com/git-pkgs/capcheck>.

**From what I know as of mid-2026, not re-checked:** the functional languages' features (stable for years in the
respects that matter here); Koka's FBIP (Lorenzen, Leijen and Swierstra, ICFP 2023) and Perceus (PLDI 2021); Lean 4's
reset/reuse ("Counting Immutable Beans", 2019); Ada's restriction pragmas and profiles; D's attribute inference;
Swift's `@_noAllocation`; Go's `sync.OnceValue` (1.21) and `unique` (1.23); Fortran's `elemental` and `where`; ISPC,
Futhark and Halide.

**Counts.** Parts A and B give a verdict on 62 items: 9 yes (one of them, B1.1, yes only for its first half), 20
later, 21 no and 12 covered. Sections 4 and 5 list about 85 more features considered and dropped as covered or
already settled.
