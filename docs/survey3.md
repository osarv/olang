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

1. Part A: functional languages
   - A1 Functions and calls
   - A2 Effects, purity and totality
   - A3 Types
   - A4 Pattern matching
   - A5 Data and walks
   - A6 Memory ideas from functional runtimes
   - A7 Concurrency
   - A8 GUIs: the Elm architecture
   - A9 The proof languages
2. Part B: languages like olang
   - B1 Facts the compiler can check about a function
   - B2 The region and ownership languages
   - B3 Array and data-parallel languages
   - B4 Systems-language details
   - B5 Tooling
3. (section 4) Already covered
4. (section 5) Considered in earlier surveys or the ledger
5. (section 6) Shortlist, ranked
6. (section 7) Method and sources

---

# Part A: functional languages

Haskell, OCaml, F#, Standard ML, Elm, Roc, Gleam, Elixir/Erlang, Clojure, Scala, Lean/Idris/Agda, Koka, Unison,
PureScript and Racket. Grouped by theme.

## A1. Functions and calls

### A1.1 Pipelines

**From:** F# and OCaml `|>`, Elixir `|>`, Elm, Gleam, Roc, Clojure's `->`, Haskell's `&`.

```fsharp
text |> String.trim |> parse |> List.map double
```

**In olang.** Methods already chain left to right: `t.Trim().Split(",")`. The pipe is wanted for *free* functions,
which cannot chain: `json.Encode(order.Sorted(load(p)))` reads inside out. A pipe would read
`load(p) |> order.Sorted |> json.Encode`, or in words, `load(p) then order.Sorted then json.Encode`.

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
`scale(_, expensive())`, is `expensive()` run once, when the lambda is made, or on every call? Gleam evaluates it
on every call, and both answers surprise someone. The capture rules (D16c) would apply unchanged, since the form
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

**From:** GHC's typed holes, Agda and Idris holes (`?goal`), Lean's `sorry`, Gleam's and Elm's `todo`.

```haskell
area w h = w * _
-- Found hole: _ :: Double
-- Relevant bindings include h :: Double, w :: Double
```

**In olang.** `_` in an expression is "unknown name '_'" today (checked). The proposal turns that error into a hole
report, with no new syntax:

```
area.olang:3:40: error: a hole - a F64 is wanted here
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

**From:** Scala, OCaml and Haskell, where a guard and the pattern together decide what the body may assume; Kotlin's
`when` guards with smart casts; TypeScript's narrowing.

**The gap (checked with the compiler).** The narrowing walk (S8d, S8e, "one narrowing walk", 2026-10-26) covers
`and`/`or`/`not`, conditionals, asserts and loops, but not a `case` guard:

```
match w {
    case Wrap.One(s) if s == Shape.Circle {
        io.Println($s.r)!      # error[S8d] today: 's' is not narrowed to Circle
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

**In olang.** A `Map` is a handle, and a lambda's copy of one is a second name for the same Map (D16), so a std `Memo<K, V>` holding a Map and a
function is a few lines: `m := memo.Of(fib)`, `try m.Get(40)`. A recursive function memoizing itself takes the memo
as a parameter.

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
the same type: `n = rebalance(n)` on a tree node, an interpreter's `env = env.With(name, v)`, a state machine's
`s = Step(s)`. Without it, the chunk pool reuses the memory but the program pays a release and an allocation, and
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

**Cost.** Medium in std: a versioned-lock design (TL2), a retry loop, and the evaluator running tasks in sequence.

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
