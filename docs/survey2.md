# Second survey: features from other languages, before announcing

Written 2026-10-26 for the question "one more scan for features from other languages we would reasonably implement -
functional languages too, and an extra check on Rust, Go, Python and C/C++". Nothing here is decided. Each item says
what it is, what it would look like in olang, what it costs, which principle it serves or works against, and a verdict.

The first survey (`docs/survey.md`, 2026-10-24) and `docs/ideas.md` covered most of the ground, and most of what they
raised is now built or decided. This survey does not re-propose what they settled. Where it has something new to say
about an item they covered, it says so (section 6).

**Summary.** The language has no large gaps left against Rust, Go, Python or C++. Five things are worth doing before
announcing, ranked:
1. case narrowing as wide as null narrowing (Rust's let-chains);
2. a call statement that does nothing is an error (`[[nodiscard]]` without the attribute);
3. unused imports are errors;
4. `std/json` key naming, which olang's capitalization rule makes necessary;
5. the missing walks: reversed, windowed, take-while and flat-map.

Fuzzing and property tests in the test runner are the strongest tooling item. The functional languages contribute
little that fits: olang already has their sum types, exhaustive matching and type classes, and the rest (effects,
laziness, currying, higher-kinded types) works against the principles. Section 5 maps other languages' features to
olang's forms, for the announcement's "if you know Rust/Go/Python" notes.

## Contents

1. Strong recommendations (ranked)
2. Worth considering
3. Considered and rejected
4. Already in olang under another name
5. Tooling and ecosystem
6. Items from the first survey, revisited
7. What changed in the closest languages (2024-2026)
8. Method and sources

## 1. Strong recommendations (ranked)

### 1.1 Case narrowing as wide as null narrowing

**From:** Rust's let-chains (stable in 1.88, 2024 edition), Swift's `if case let ..., cond`, Kotlin's smart casts,
TypeScript's control-flow narrowing.

**What.** S8e lets a null test narrow in the right operand of `and`/`or`, after an `assert`, in a loop on the test, and
after a loop that only ends by it. S8d, the case test (`e == Shape.Circle`), narrows only when the test is the whole
condition. So the two narrowings follow two rules, and the commonest combined test does not narrow:

```
if tok == Token.Ident and tok.name == "fn": return parseFn(p)   # error today: tok.name read where tok is not narrowed
assert e == Expr.Call, "the parser makes only calls here"
walk(e.args)                                                      # error today
```

The proposal is that S8d takes every form S8e has: `and`/`or` operands, `assert`, loop conditions, and after a loop
that ends only by the test.

**Cost.** Small. The checker already has the machinery for S8e, so this extends one rule to a second kind of fact. It
needs nothing in scopes, generics or errors, and the evaluator needs nothing, since narrowing only affects which reads
type-check. No new syntax.

**Principles.** Solid and smooth: one narrowing rule, not two. Natural language: the condition reads as the sentence.

**Verdict: recommend.** It is cheap, and Rust users try `if let ... && cond` first.

### 1.2 A call statement that does nothing is an error

**From:** C++17 and C23 `[[nodiscard]]`, Rust's `#[must_use]` (on `Result` and many std functions), Swift's
unused-result warning (default on, opted out with `@discardableResult`), Zig's `_ = f()` rule, and Go's `unusedresult`
vet check.

**What.** S3 already says an expression statement must do something, so `n` or `a + 1` alone is an error. A call whose
callee only computes its result does nothing either, yet it passes S3:

```
name.Trim()                  # error[S3]: 'Trim' only computes its result, and it is discarded
t := name.Trim()             # what was meant
v.Sorted()                   # the same mistake with any pure method
```

The rule is that a call statement is an error when the callee, read off its body, has no effect besides its result.
An effect means one of these:
- it writes through a reference or a by-value parameter's references;
- it writes a global;
- it calls an extern or a function value;
- it spawns;
- it may fail;
- it makes a value with a destructor;
- it is noreturn.

Unknown bodies count as effects, so a false error is impossible by construction. This is S3's own reason applied one
step further. It needs no attribute, which is what C++, Rust and Swift need.

**Alternative.** Zig's rule makes every discarded value need `_ = f()`. It is simpler to state, but it is noisy where a
result is legitimately ignored (`m.Remove(k)` gives a `Bool`). The effect rule catches the actual bug without that
noise.

**Cost.**
- An effect summary per function: a fixed point over the call graph, the same shape as K1a's evaluability and the
  views pass's summaries.
- In a generic body the statement is judged per instance, and an error is reported only where it holds for every
  instance. This is the rule a `try` covering nothing already follows.
- Nothing for scopes or the evaluator.

**Principles.** Errors are errors, applied to the compiler: a dropped result is a silent bug. Minimal syntax: no
attribute zoo.

**Verdict: recommend.** The commonest bug a Python or JavaScript user makes in a new language is calling `s.strip()`
for its effect.

### 1.3 Unused imports are errors

**From:** Go (an unused import is a compile error), Zig, and C#/Rust/TypeScript warnings.

```
import "std/os"              # error: nothing in this file uses 'os' - remove the import
```

**Why it matters more in olang than elsewhere.** An import's alias is reserved in its module (M20), a module is
compiled with everything it imports, and B3i's object keys hold every import. So a stale import costs names, compile
time and rebuilds. R11b already makes an unused catch name an error, so olang has this rule for one kind of name and not
for the one that matters most.

**Cost.** Small: names.olang marks an alias used when it resolves through it. A capitalized (re-exported) alias counts
as used, since it is part of the module's interface. `olang fix` can remove unused imports from old code, the way
gofmt's goimports does.

**Principles.** Minimal syntax and one rule, matching R11b.

**Verdict: recommend.** Unused locals are a harder call (section 2.1).

### 1.4 `std/json` key naming

**From:** serde's `rename_all`, Go's struct tags (`json:"name"`), Jackson's naming strategies, Python's
`dataclasses-json` letter case.

**Why olang specifically needs it.** A capitalized field is exported (M6a), and reflection shows a struct's private
fields only inside its own module (G32). `json.Encode`/`Decode` therefore see only `Name`, `LastSeen` and so on, and
write and read exactly those keys. Almost every external JSON uses `name` and `lastSeen` or `last_seen`. So decoding an
outside API into a struct is impossible today: a lowercase field is invisible to std/json, and a capitalized one does
not match the key. Go's tags exist for exactly this reason, because Go has the same export rule.

```
type User struct(Name String&, LastSeen I64) { Name, LastSeen }
u := try json.Decode<User>(body, keys = json.Keys.Camel)     # reads {"name": .., "lastSeen": ..}
out := json.Encode(u, keys = json.Keys.Snake)                # writes {"name": .., "last_seen": ..}
```

**Cost.** std only. `keys` is a new defaulted parameter, passed by name (named arguments for defaulted parameters are
decided, not built; positionally it would follow `at` and `indent`). `json.Keys` is an enum of policies:
- `Exact` (today's behaviour, the default);
- `Camel`;
- `Snake`;
- `Kebab`.

The converted name of each field is computed while compiling, since `f.Name` is a constant. Per-field renames would
need field attributes, which reflection declined ("not now"), so they are left out. A type wanting other keys writes its
own `Str` or encoder.

**Principles.** Multi-purpose (scripting and web data). No syntax.

**Verdict: recommend.** Without it, `json.Decode<T>` cannot read most real JSON.

### 1.5 The missing walks: reversed, windowed, take-while and flat-map

**From:** Rust's `rev`, `windows`, `take_while`, `skip_while`, `flat_map`, `step_by`, `partition`; Python's
`reversed` and itertools; C++23's `views::reverse`, `slide`, `stride`, `chunk_by`; Kotlin's `windowed` and
`partition`.

**What.** std has `Take`, `Skip`, `Enumerate`, `Zip`, `Chain`, `Map`, `Filter`, `Fold`, `Count`, `Some`, `Every`,
`Sum`, `Min`/`Max`(`By`) and `Chunks`. It is missing these:
- a **reverse walk**: `range` counts upward only, so a backward loop is index arithmetic, `a[n - 1 - i]`;
- sliding windows;
- the while forms;
- flat-map;
- a step;
- partition.

```
for x in a.Reversed(): acc = acc * 10 + x
for w in a.Windows(3) { smooth.Push(w.Sum() / 3.0) }
small := it.TakeWhile(fn(x): return x < 100).ToVec()
```

**Cost.** std only, and a good showcase. Generators make most of these a few lines each. `Windows` gives borrowed
slices, as `Split` and `Chunks` already do. `StepBy` overlaps `range s, e, step` for indices, but it is wanted for
iterators.

**Principles.** Natural language: `for x in a.Reversed()` against index arithmetic. Every domain uses these.

**Verdict: recommend** (std batch).

## 2. Worth considering

Each of these fits the language. None is needed before announcing.

### 2.1 Unused locals are errors

**From:** Go, Zig.

```
n := parse(t)                # error: 'n' is never read - use it or remove it
```

This is consistent with R11b and 1.3, and it catches dead code and typos for a name that was meant. Its cost is the
friction Go and Zig users know: commenting out a line breaks the build, so debugging takes edits. Parameters stay exempt,
since function types and traits fix them.

**Verdict: maybe later.** Take 1.3 first, and decide this after real use of the LSP, where an editor can show it as you
type.

### 2.2 The caller's place as a default argument

**From:** C++20's `std::source_location::current()` as a default argument, Swift's `#fileID`/`#line` defaults, Rust's
`#[track_caller]`, Zig's `@src()`, Go's `t.Helper()`.

**What.** A test helper or a logging function reports its own line where its caller's is wanted:

```
fn expectEq<T>(got T, want T, at Place = Here) {
    if got != want: io.PrintErrln($at ": got " $got ", want " $want)!
}
```

`Place` would be a prelude struct (`File`, `Line`, `Column`). `Here` is the place where it is written, and, as a default,
the place of the call. That is Swift's rule. Defaults are already built per call (D8a), so the per-call part is free;
`Here` itself is a new compiler-supplied constant.

**Cost.** Small in check and lowering. The evaluator builds it as a constant. It adds one special name.

**Principles.** It serves tests, logging and std's own error reports.

**Verdict: maybe later**, when std gets a logging module or a test library of helpers.

### 2.3 Guaranteed tail calls

**From:** Scheme; Rust's reserved `become` (explicit tail calls, unstable); Clang's `[[clang::musttail]]`; Zig's
`@call(.always_tail, ...)`; Lua; Elixir and Erlang loops.

```
fn sum(n I64, acc I64) I64 {
    if n == 0: return acc
    become sum(n - 1, acc + n)
}
```

**New since the first survey (which said "later").** §8 can decide legality exactly. A tail call closes the caller's
scopes before it jumps, so it is legal only where no argument borrows storage of those scopes, and only where no
`defer`, `errdefer` or destructor is pending in the closing scopes. Both are facts the scope pass already has. The
signature must give the same result and error set (LLVM's `musttail` rule). `become` reads as a word, as Rust chose.

**Cost.**
- One statement.
- A §8 check.
- Emit writes `musttail` on the call.
- The evaluator loops instead of recursing.
- The hidden scope arguments must line up.

**Domains.** Interpreters and state machines: the port's walkers and oagent.

**Verdict: maybe later.**

### 2.4 Sets of enum cases as bits

**From:** Pascal's `set of`, Ada, Odin's `bit_set`, Rust's `bitflags`, Python's `enum.Flag`, C#'s `[Flags]`.

```
p := bitset.Of(Perm[Perm.Read, Perm.Write])     # a BitSet<Perm>, one U64
if Perm.Write in p: save()
fd := try os.Open(path, p.Bits())               # the C flag word, via raw values
```

**Cost.** std only, over reflection: `T.Cases.Len() <= 64` is a compile-time assert, and a case's index or its raw
value gives its bit.

**Domains.** GUI state, C flag arguments, permissions.

**Verdict: maybe later.** Build it when the first GUI or C binding wants it.

### 2.5 Ordering derived from fields

**From:** Rust's `#[derive(PartialOrd, Ord)]`, C++20's defaulted `<=>`, Python's `dataclass(order=True)`, Haskell's
`deriving Ord`.

**What.** Records are sorted by several keys, and with no tuples the comparator is hand-written as
`a.k1 < b.k1 or (a.k1 == b.k1 and a.k2 < b.k2)`. A compiler-supplied `<` for plain data would make field order
silently significant, so the derived form should be written, as a std function over reflection:

```
people.Sort(order.ByFields<Person>)            # Last, then First, as declared
```

**Cost.** std only (a `for f in T.Fields` loop, unrolled).

**Verdict: maybe later.** No language change, and no compiler-supplied `Less`.

### 2.6 A top-level `assert`

**From:** C11/C++ `static_assert`, Zig's `comptime { assert(...) }`, Rust's `const _: () = assert!(...)`.

```
assert Header.Size == 16, "Header must match the wire format"
assert TargetVectorBits >= 128
```

Every top-level assert is decided while compiling (S18c), and one that cannot be decided is an error. With reflection
(`T.Size`, `f.Offset`) and C imports, this is how a layout is pinned. Today the same check lives in a `test`, which only
a test build decides.

**Cost.** Grammar and check. The evaluator already decides asserts.

**Verdict: maybe later.**

### 2.7 `unreachable` in value position

**From:** Rust's `unreachable!()` and `todo!()` of type `!`, Kotlin's `TODO()`, Gleam's `todo` and `panic`.

```
d := table[k] if k in table else unreachable "keys are checked above"
```

A `noreturn` call already fits any value position (D8e). `unreachable` is statement-only, so a conditional or match value
has to call something noreturn instead.

**Cost.** Grammar only. **Verdict: maybe later** (one rule, small).

### 2.8 Case names without the enum where the type is known

**From:** Swift's `.red`, Zig's enum and decl literals (0.14), Kotlin's `when` on a sealed type, OCaml constructors.

```
match s {
    case .Circle(r) => r * r * Pi
    case .Rect(w, h) => w * h
}
```

The verbosity audit counted 264 one-case matches in the compiler, and every pattern repeats the enum's name.

The cost is a second spelling of a case name (principle 4). The leading dot is a new use of `.`. A bare `Circle(r)`
collides with a constructor call and with `type-case`.

**Verdict: maybe later.** Decide it with the verbosity audit's other items (QAR).

### 2.9 Making sure a value is computed while compiling

**From:** C++20's `consteval`/`constinit`, Zig's `comptime`, Rust's `const` items.

An immutable global is baked when it can be, and is otherwise set at startup without a word. `olang explain` shows which
(`# set at startup`). The FPGA subset will need a guarantee. One way that adds no syntax is for `-memory`-style reporting
(or `explain`) to list a module's startup globals, plus a build option that makes them errors.

**Verdict: maybe later**, with the FPGA work. No keyword: the user declined `!` as "must be compile-time" (QV).

### 2.10 Cold paths, inferred

**From:** C++20's `[[likely]]`/`[[unlikely]]`, Zig's `@branchHint`, GCC's `__builtin_expect`, and Rust's `#[cold]`.

There is no syntax. The compiler would mark paths cold where they raise an error, take `!`, fail a guaranteed check or
reach `unreachable` (LLVM `cold` call attributes and branch weights). emit marks none today.

**Verdict: maybe later.** It is an optimization, so it needs a benchmark first (the bench rows that test error paths).

### 2.11 A test clock

**From:** Go 1.25's `testing/synctest` (a bubble with a fake clock that advances only when every goroutine waits).

std/cancel's timeout tests were flaky under load (HISTORY, 2026-10-09). A `time.Clock` that std/chan, std/cancel and
std/time read, with a fake one for tests, would make them exact. It would be explicit, not Go's implicit bubble.

**Verdict: maybe later** (std).

### 2.12 Persistent collections

**From:** Clojure, Scala's immutable collections, Haskell's `Data.Map`, Immer.

```
v2 := v1.With(k, x)          # v1 unchanged; the two share structure
```

Path copying needs no GC under scopes: old versions simply live until their scope closes. The uses are undo stacks,
snapshots handed to read-only tasks, and an interpreter's environments.

**Verdict: maybe later** (std), when an editor or an interpreter needs it. It does not solve QF (long-lived structures
grow), since old versions accumulate.

### 2.13 `select` over channels

Recorded future work; Go, Rust's crossbeam and Kotlin have it. Nothing new to add. **Verdict: maybe later.**

## 3. Considered and rejected

| Feature (from) | What it would be in olang | Why not |
|---|---|---|
| async/await (Rust, Python, C#, JS, Swift, Kotlin) | `async fn f()`, `await g()` | settled: colours functions, needs a scheduler; `join`/`spawn` on threads |
| Effect handlers (OCaml 5, Koka, Unison) | `handle { } with Log(m) => ...` | a second control-flow system beside errors and generators (principle 4); hidden control flow |
| Lazy evaluation (Haskell) | values computed on first use | hidden cost per use (principle 2); generators give lazy sequences explicitly |
| Currying and partial application (Haskell, OCaml, F#) | `add(1)` as a function | a call with too few arguments must stay an error (defaults exist); a lambda says it in one line |
| Higher-kinded types and type-class hierarchies (Haskell, Scala) | `Functor<F>` | settled; no domain needs them; generics plus `match T` |
| Row polymorphism and structural records (OCaml objects, Elm, PureScript) | `fn f(r { x I64 })` | traits are already structural for methods; anonymous record types are the tuples olang declined |
| GADTs (Haskell, OCaml) | typed syntax-tree enums | type-checker cost far beyond any use here |
| Pipelines and composition (F#, Elixir, OCaml, Gleam, C++ ranges `\|`) | `x \|> f \|> g`, `f >> g` | settled: methods chain left to right |
| Gleam's `use`, Kotlin's trailing lambdas, Swift result builders | a block passed as the last argument | a second call syntax and DSL machinery (principle 4) |
| Macros, decorators, templates, `#insert` (Rust, Python, Nim, Jai, Elixir) | `@memoize fn f` | settled: compile-time evaluation and generics cover the uses; a decorator is hidden wrapping |
| Actors, supervision trees, hot code reload (Erlang/Elixir, Akka, Swift actors) | `GenServer` | a library on `chan` at most; hot reload needs a stable ABI and a runtime olang does not have |
| Pattern matching on binaries (Erlang bit syntax) | `case <<len:16, rest>>` | waits for declared-layout types (recorded future work), which cover wire formats with types |
| Implicit context and implicit parameters (Scala `given`, Kotlin context parameters, Odin `context`, Jai) | an allocator or logger passed invisibly | hidden data flow; explicit parameters with defaults |
| Explicit allocators (Zig) | `alloc mut Allocator&` parameters | principle 1 (settled in survey 1) |
| Weak references, `Rc`, `Cow` (Rust, Swift, Go 1.24 `weak`) | `Weak<Node>` | principle 1: no reference counting |
| Inline-capacity vectors (C++26 `inplace_vector`, Rust `ArrayVec`/`SmallVec`) | `SmallVec<T, 8>` | arena allocation is a bump; fixed arrays are inferred where their length is known; constant type parameters were removed (QP2) |
| Struct embedding and promoted members (Go, Jai/Odin `using`, D `alias this`) | `type B struct(A) { ... }` | hidden delegation; `extends` covers declared types over primitives and arrays, fields name the rest |
| Multiple dispatch (Julia) | methods chosen by every argument's type | overloading declined (2026-10-24); generics with `match T` |
| Extension methods (Kotlin, C#, Swift, Dart, Scala) | `fn (s String&) Slug()` in any module | settled (M19d): only the prelude adds methods to built-in types; a free function |
| Scope functions and cascades (Kotlin `apply`/`let`, Dart `..`) | `b..Push(1)..Push(2)` | a second way to write a sequence of statements |
| Python's walrus and Go's `if x := f(); c` | `if (n := a.Len()) > 10` | a declaration inside a condition; no semicolons for Go's form; the line before says it |
| Python's `for ... else` | `else` when no `break` ran | rarely understood; a flag or a function with `return` |
| Negative indexes and slice steps (Python) | `a[-1]`, `a[::2]` | a hidden branch per index (principle 2); a stride would enter the array descriptor; `Last()`, `StepBy` |
| Star unpacking and variadic parameters (Python, Go, C) | `first, *rest := a`, `f(xs...)` | slices (`a[0]`, `a[1:]`) and array arguments (settled in survey 1) |
| Template strings (Python 3.14 t-strings, PEP 750) | `sql"select {x}"` handled by a function | text joins by adjacency; a safe-SQL builder is a std API taking pieces |
| Format specification mini-language (Python, Rust, C++ `std::format`) | `"{x:.2f}"` | covered: `x.Fixed(2)`, `PadStart`, `Format(16)` |
| Property wrappers, key paths, `@dynamicMemberLookup` (Swift) | `@Clamped var x` | hidden code at each access; reflection's `FieldInfo` names a field where needed |
| Type-level programming (TypeScript mapped and template literal types, C++ concepts' requires-expressions) | `keyof T` | reflection reads types; olang does not compute types from types beyond generics |
| `satisfies`/`implements` (TypeScript, Java) | `Circle satisfies Shape` | settled (implicit satisfaction); a test converting to `any Shape&`, or 2.6's top-level assert, states it |
| Labeled break, `goto`, `fallthrough`, labeled switch `continue` (Zig 0.14) | `break outer` | settled: the user declined labeled break; a `for { match state { } }` loop compiles to the same jump table |
| Option and Result types (Rust, Swift, Haskell, Gleam) | `Option<T>`, `Result<T, E>` | settled 2026-10-24/26: `T?&` and error sets; a program declares its own two-case enum where it stores outcomes |
| Tuples (Python, Rust, Swift, C++ `std::tuple`) | `(1, "a")` | settled twice (2026-10-07, 2026-10-25): several results and named structs |
| `?.` and `??` (Kotlin, Swift, C#, TS, Dart) | `a?.b ?? d` | settled in survey 1: `?` marks error sets; narrowing and `!` |
| Per-operation checks in a build mode (Rust debug overflow, Zig ReleaseSafe, C++26 hardened library) | `-debug` checking indexes and overflow | the user's rule, and QAI dropped exactly this mode (2026-10-18); `-sanitize` is the debugging mode, for scopes; `try a.Get(i)` and `std/arith` check where wanted |
| `[[assume]]`, `unreachable_unchecked`, `restrict` (C++23, Rust, C) | a claim the optimizer trusts | `unreachable` is checked, never assumed (S16d); an unchecked claim is undefined behaviour |
| `nodiscard`/`must_use` as attributes | `#[must_use] fn f()` | replaced by 1.2's rule, which needs no attribute |
| Generic lambdas and local named functions (Rust closures with `impl Fn`, Python nested `def`) | `fn<T>(x T)` in a body | G3a: a function type is never generic; a recursive helper is a top-level function |
| D's `scope(success)` | defer on success only | rarely needed; the statements after the `try` run on success |
| Immutable locals by default (Rust `let`, Kotlin `val`, Swift `let`) | `x := 1` read-only | settled (D11a, the user's call): locals are mutable, permission speaks about references |
| `for k, v in m` over a map (Go, Python `items()`, JS) | two names over a `Map` | the second name is already the index (S9a); `e.Key`/`e.Value` |
| Python's `with`, C#'s `using`, Java's try-with-resources | `with open(p) as f` | destructors at scope close, `x.Destroy()`, `defer`, `errdefer`, `Mutex.With` |
| Exception groups (Python 3.11 `except*`, `ExceptionGroup`) | a join reporting every failure | `try join` fails with the earliest-spawned failure (P4b); a program wanting all collects them into its own list |
| Go's `go:generate`, Rust's `build.rs` | code generators run by the build | compile-time evaluation, `embed` and C imports cover the uses |

## 4. Already in olang under another name

For the announcement's "if you know ..." notes. The olang column is what to write.

### Rust

| Rust | olang |
|---|---|
| `enum` with data, `match`, exhaustiveness | `type E enum { ... }`, `match`, S13a (Maranget) |
| `if let` / `let ... else` | `if e == Shape.Circle { e.r }`; after `if e != C { return }` the value is narrowed (S8d); for null `if p is null: return` (S8e) |
| let-chains (1.88) | for null, the right of `and`; for cases, recommendation 1.1 |
| `?` operator | `try f()` (covers the whole expression after it) |
| `.unwrap()` / `.expect()` | `f()!`, `x!` |
| `Result<T, E>` | `fn f() T ? E` (error sets, inferred with a bare `?`) |
| `Option<&T>` | `T?&` with narrowing |
| traits, generics, `where` bounds | `type Shape trait { ... }`, `fn f<T Shape>(x T)`, intersections `<T Shape House>` |
| `dyn Trait` | `any Trait&` |
| sealed traits / closed sets | `type Float trait for F16, BF16, F32, F64 { }` |
| `impl Trait for T` | implicit satisfaction (Go-style) |
| trait default methods | methods on a constrained type variable (M19e) |
| `#[derive(Debug, PartialEq, Hash)]` | `$x` renders any value, `==` is structural, `Hash` supplied for plain data |
| `Drop` / RAII | `destruct { }`, run at scope close; `x.Destroy()` |
| `const fn`, `const` items | no colouring: anything evaluable is evaluated (K1); immutable globals baked |
| `include_bytes!` | `embed "file"` |
| `#[cfg(...)]`, cargo features | top-level `if` on build constants, `-define Name=value` |
| slices `&a[1..3]` | `a[1:3]`, a borrow; checked once per slice |
| `get(i)` | `try a.Get(i)` |
| `checked_add` and the like | `try arith.Add(a, b)`, `try arith.Checked(a) * b` |
| `as` numeric casts | `I32(x)` (unchecked), `try x.Narrow<I32>()` |
| iterator adapters | `it.Map/Filter/Fold/Take/Skip/Zip/Enumerate/Chain/Sum/Min/Max` |
| `gen` blocks (unstable) | generators: `fn f() Iterator<T>` with `yield` |
| `cargo fix --edition` | `olang fix` |
| `rustc --explain` | `olang explain RULE`, `olang explain FILE NAME` |
| `#[test]`, doc tests | `test "desc" { }`, and `test Target "desc" { }` as the target's documented example (decided) |
| `std::mem::swap` | `a, b = b, a` |
| `#[repr(C)]` + bindgen | C imports (`import z "zlib.h" link "z"`), `extern type`, plain structs |
| Rayon `par_chunks_mut` | `join { for part in a.Chunks(n) { spawn work(part) } }` |
| `std::thread::scope` | `join { spawn ... }` (structured; tasks may borrow what outlives the join) |

### Go

| Go | olang |
|---|---|
| `defer` | `defer` (block-scoped, not function-scoped), plus `errdefer` |
| goroutines + `sync.WaitGroup` (and 1.25's `wg.Go`) | `join { spawn f(x) }`; the join waits on every way out |
| channels | `std/chan` (`Send`, `Recv`, `Close`, `for v in c`) |
| `context.Context` cancellation | `std/cancel` tokens; cancelling siblings on a failure is `errdefer tok.Cancel()` in each task |
| `go test -race` | `olang test -race` (ThreadSanitizer) |
| interfaces, implicit satisfaction | traits (as constraints) and `any Trait&` (run-time values) |
| `errors.Is` / `errors.AsType` (1.26) | `catch os.Error.NotFound { }`, `catch os.Error e { if e == ... }` |
| range-over-func (1.23), `iter.Seq` | generators and `Iterator<T>` |
| `for i := range 10` | `for i in range 10` |
| per-iteration loop variables (1.22) | lambdas copy their captures, so each iteration's value is captured |
| `min`/`max` builtins | `a.Min(b)`, `a.Max(b)`; `xs.Min()` on arrays and iterators |
| `//go:embed` | `embed "file"` |
| build tags, `_linux.go` | top-level `if TargetOs == "linux"` |
| `go vet` / `go fix` modernizers (1.26) | errors where checkable (1.2, 1.3 recommended); `olang fix` |
| `gofmt` | `olang format` |
| `go doc`, godoc | `olang doc`, `doc -html` |
| `gopls` | `olang lsp` |
| exported = capitalized | the same (M6), members and error words too |
| modules, `go.sum` | git imports pinned by `olang.lock`, `-update` |
| `os.Root` (1.24) | not built; a confined directory would be a std item |
| generic type aliases (1.24) | not built (section 6) |

### Python

| Python | olang |
|---|---|
| list/dict comprehensions | `I64[x * x for x in xs if x > 0]` (arrays; Map/Set comprehensions deferred) |
| `a if c else b` | `a if c else b` |
| `x in c`, `not in` | the same (`Has`/`Contains`) |
| `0 <= i < n` | the same (comparison chains) |
| `and`/`or`/`not` | the same |
| `match` (3.10) with guards | `match` with guards, alternatives, nested patterns (class patterns not yet - section 6) |
| f-strings | adjacency: `"n is " $n "!"`; `$x` renders any value |
| `"""` text | `"""` raw text, indentation stripped as Swift does |
| `yield` generators | `yield` in a `fn ... Iterator<T>` |
| `with` | destructors, `defer`, `Mutex.With` |
| `enumerate`, `zip`, `any`, `all`, `sum` | `Enumerate`, `Zip`, `Some`, `Every`, `Sum` |
| `dataclass` | a constructor whose parameters are its fields (`struct(x I64, y I64) { x, y }`), with `==`, `$` and `Hash` supplied |
| default arguments, keyword arguments | defaults and `default`; named arguments for defaulted parameters (decided) |
| `assert c, "msg"` | the same; decided while compiling where possible |
| doctest | tests naming a target, shown as its examples (decided) |
| running a script, `#!` | `olang file.olang args`, `#!/usr/bin/env olang` |
| dunder methods `__add__`, `__eq__`, `__getitem__`, `__iter__`, `__str__` | `Plus`, `Eq`, `At`, `Next`/`Iter`, `Str` |
| `pathlib`, `json`, `csv`, `re`, `argparse`, `hashlib` | `std/filepath`, `std/json`, `std/csv`, `std/regex`, `std/flags`, `std/sha256` |
| type hints | types are written; generics are monomorphized |

### C and C++

| C / C++ | olang |
|---|---|
| `constexpr`, `consteval` | no colouring: anything evaluable is evaluated (K1, K2) |
| C++20 concepts | traits as constraints (G19) |
| C++26 static reflection | `T.Fields`, `T.Cases`, `T.Params`, unrolled loops (G32-G38) |
| C++26 contracts (`pre`, `contract_assert`) | `fn f(x I32, y I32) [y > x] I32`, checked on entry, decided while compiling where known; `assert` |
| C++20 modules | a module is a file; no headers |
| ranges and views | iterators and generators |
| `std::expected` | error sets with `try` |
| `std::optional<T&>` (C++26) | `T?&` |
| `std::span`, C++26 `std::mdspan` | slices; multi-dimensional views are a library's (oann) |
| structured bindings | several results: `q, r := divmod(a, b)` |
| `<=>` | `Less` derives `>`, `<=`, `>=`; `Eq` for `==` |
| RAII, scope guards | destructors, `defer`, `errdefer` |
| `std::simd` (C++26) | lane operators: `a * b + c` over arrays, one fused loop |
| `#embed` (C23, C++26) | `embed "file"` |
| `_BitInt(N)` (C23) | `I1`-`I128`, `U1`-`U128` |
| `ckd_add` (C23) | `try arith.Add(a, b)` |
| `nullptr` | `null`, only for `T?&` |
| `[[nodiscard]]` | recommendation 1.2, with no attribute |
| designated initializers | named arguments for defaulted parameters (decided) |
| CTAD | inferred type arguments, constructors included (G10c) |
| `#include` of C headers | `import z "zlib.h" link "z"`, `import "fast.c"` |
| sanitizers | `-race` (TSan), `-sanitize` (scope sanitizer) |

### Functional languages and others

| Feature (from) | olang |
|---|---|
| algebraic data types (Haskell, ML, Elm, Gleam, Roc) | enums with payloads, recursive through `&`, generic (G6b) |
| exhaustive matching | S13a |
| type classes (Haskell, Rust traits) | traits with defaults; constraints |
| `deriving (Eq, Show)` | supplied `==`, `$`, `Hash` |
| newtype (Haskell), opaque types (Scala), value classes (Kotlin), `distinct` (Nim, Odin) | `type Meters F64` (nominal); `extends` to inherit operators |
| pure functions (Haskell, Roc) | inferred purity for compile-time evaluation (K1a) |
| `Maybe`/`Either` monads, `do` notation | `try` over a chain, catch clauses |
| infinite lazy lists | generators |
| guards in pattern matching | `case P if cond` |
| Elm's "no runtime exceptions" | no exceptions; errors in signatures; aborts only on broken guarantees |
| Erlang's let-it-crash | not taken: errors are handled where they happen |
| Elixir's `with` | a `try` over each step, one catch |
| Clojure transducers | iterator adapters (lazy) and fused lane operators |
| structured concurrency (Kotlin `coroutineScope`, Swift `TaskGroup`, Trio nurseries, Java 21 scopes) | `join { }`: every task ends before the block is left |
| Swift `async let` | `spawn x = f()` inside a `join` |
| Swift `guard let` | narrowing after a leaving test (S8d, S8e) |
| Swift typed throws | error sets |
| Swift `InlineArray` (6.2), `Span` | fixed arrays inferred where made; slices |
| Kotlin `when` guards (2.2), sealed classes, smart casts | `case ... if`, closed traits and enums, narrowing |
| Kotlin `require`/`check` | contracts in brackets, `assert` |
| Zig `comptime`, `defer`/`errdefer`, error sets, error return traces, `@embedFile` | compile-time evaluation, `defer`/`errdefer`, error sets with inference, S18d's trace, `embed` |
| Zig `inline for` over fields | `for f in T.Fields` (unrolled) |
| Julia broadcasting `.*` | lane operators |
| Ada ranges as types | a declared primitive with a constructor (`type Percent I64(v I64) [v >= 0 and v <= 100]`) |
| Ada `T'First`, `T'Last` | `T.Min`, `T.Max` |
| Mojo `SIMD`, `@parameter if` | lane operators; `if` on a constant, decided per instance |
| D `static if`, `scope(exit/failure)`, unittest blocks | `if` on build constants and `match T`; `defer`/`errdefer`; `test` |
| TypeScript narrowing and discriminated unions | S8d/S8e; enums with case tests by `==` |
| Dart sound null safety | `T&` never null, `T?&` with narrowing |

## 5. Tooling and ecosystem

olang already has:
- a formatter;
- an LSP and an MCP server;
- doc comments and `olang doc` (with HTML);
- `olang fix`;
- `explain`;
- `-race`, `-sanitize` and `-debug` with DWARF;
- cross-compilation to aarch64 (qemu for tests);
- a release archive with clang;
- the compiler's own differential and scope fuzzers.

| Tool (from) | What olang would have | Cost | Verdict |
|---|---|---|---|
| Fuzzing in the test runner (Go 1.18 `go test -fuzz`, cargo-fuzz, libFuzzer) | `test parse "fuzz" { fuzz.Check(fn(data Array<U8>&) { _ = json.Parse(String(data)) catch { } }) }`; `olang test -fuzz NAME` links libFuzzer through clang's `-fsanitize=fuzzer`; a plain `olang test` replays the saved corpus in `testdata/fuzz/NAME/` (Go's layout) | the driver plus a std module; libFuzzer is compiler-rt (installed with libclang-rt) | **recommend**: it pairs with `-sanitize` (fuzz plus the scope sanitizer finds use-after-scope in user code) and with the project's own fuzzing experience |
| Property tests (QuickCheck, Hypothesis, proptest, Go's `testing/quick`) | `prop.Check(fn(xs Array<I64>&) { assert xs.Sorted().Len() == xs.Len() })` - values of any type generated through reflection (`T.Kind`, `Fields`, `Cases`, `Params`, built through constructors so their contracts reject invalid values), shrunk on failure, driven by the same bytes as the fuzzer (Hypothesis's design) | std only, on reflection | **recommend**, with fuzzing as one batch |
| Test filtering (`go test -run`, `cargo test NAME`) | `olang test FILE Target` (decided with the doc examples); also a description filter | small | **recommend** (the decided part); description filter with it |
| Benchmarks (Go 1.24 `b.Loop`, criterion, Google Benchmark) | `std/bench`: `bench.Run("name", fn() { ... })`, interleaved medians (the project's own method in `bench/run.olang`), a `bench.Keep(v)` sink so the work is not optimized away; `olang test -bench` | std plus a driver mode | worth considering |
| Coverage (`go test -cover`, llvm-cov, gcov) | `olang test -coverage`: a counter per basic block of the MIR, a line report | medium (emit and a report); LLVM's source coverage needs a frontend coverage map | maybe later |
| Skipped and expected-failure tests (`t.Skip`, `#[ignore]`, `pytest.mark.xfail`, `#[should_panic]`) | a skip that shows as skipped (std/os's tests that need curl "pass" by returning today) | small | maybe later |
| Parallel tests within a file (`t.Parallel`, cargo's test threads) | tests of one file on several threads | medium (the harness's longjmp recovery is per thread) | maybe later; files already run side by side |
| Golden and snapshot tests (insta, Go `testdata`) | a std helper writing and comparing expected output | small | maybe later (checks/ has the pattern) |
| Lints beyond errors (`go vet`, clippy, staticcheck, ruff) | what is certainly wrong becomes an error (1.2, 1.3); a separate `olang vet` only for heuristics such as `x == x` or a float compared with `==` | medium | maybe later; prefer errors or nothing (Go's split) |
| Library-declared migrations (Go 1.26 `//go:fix inline`) | a library marks a deprecated function so `olang fix` rewrites callers to its body | needs a marker, which olang has no form for | maybe later |
| REPL (Python, Julia, OCaml utop, Swift, Kotlin, Clojure) | `olang` with no file: each line a statement of a growing `main`, run by the evaluator | medium; `interpret` reclaims no memory (stage 1) | maybe later |
| Notebooks (Jupyter kernels: IJulia, evcxr, gophernotes) | a Jupyter kernel over the REPL | medium, on the REPL | maybe later (the AI and data domain will ask) |
| Debugger pretty printers (Rust's gdb/lldb scripts, Go's runtime-gdb.py) | gdb showing a `String` as text and a `Vec` as its elements | Python scripts are not allowed in source (rules); DWARF dynamic arrays (a length as a location expression) can describe `{len, ptr}` with no script | maybe later, through DWARF |
| Profiling (pprof, `perf`) | a page: `perf record` on an `-O3` build (DWARF line tables) or `-debug` | a document | **recommend** (a page, no code) |
| A non-LLVM debug backend (Zig 0.15's x86 backend, Rust's Cranelift) | fast unoptimized builds without clang | very large | no; `-quick` and the compile-speed rounds |
| Package registry, hosted docs (crates.io, docs.rs, pkg.go.dev) | an index of packages, docs built from `doc -html` | large | later (survey 1); an index page at announcement |
| Vendoring (`go mod vendor`, `cargo vendor`) | copy locked dependencies into the repository for offline builds | small (the cache is keyed by commit) | maybe later |
| Advisories (govulncheck, cargo audit) | - | needs a registry | no until a registry |
| Playground | a web page compiling olang | needs WASM (survey 1) | later |

## 6. Items from the first survey, revisited

- **Guaranteed tail calls**: "later" in survey 1. New: §8 can decide where one is legal, which makes it a clean feature
  rather than a footgun (2.3).
- **Transparent and generic type aliases**: "later" in survey 1. Go 1.24 made its aliases generic. Nothing new for olang:
  long generic spellings have not piled up in the port, so it is still later.
- **Struct patterns in `match`**: "later" in survey 1. Python's class patterns, C#'s property patterns and Rust's
  struct patterns are the same idea. Case narrowing (S8d, and 1.1) covers most uses. Still later.
- **Narrowing after a leaving test**: survey 1's item 11 is built for null and for cases. What remains is the gap
  between the two (1.1).
- **`select`**, **SoA layouts**, **big integers and decimals**, **thread-locals**, **actors**: unchanged, later.
- **Error payloads**: deferred by the user (2026-10-24). Errors as values are decided (2026-10-26). Nothing new.

## 7. What changed in the closest languages (2024-2026)

Checked on the web where noted (section 8); the rest is from what I know as of mid-2026.

- **Rust**:
  - The 2024 edition (1.85, February 2025) brought async closures, RPIT lifetime capture and the `gen` keyword reserved.
  - Let-chains became stable in 1.88 (June 2025), for the 2024 edition only.
  - `gen` blocks (RFC 3513, accepted) and explicit tail calls (`become`) are still unstable.
  - For olang, let-chains is 1.1 and `become` is 2.3; olang's generators already cover `gen`.
- **Go**:
  - 1.23 added range-over-func iterators.
  - 1.24 brought generic type aliases, `testing.B.Loop`, `os.Root`, the `weak` package and `synctest` (experimental).
  - 1.25 made `testing/synctest` stable and added `sync.WaitGroup.Go`, container-aware `GOMAXPROCS` and DWARF 5.
  - 1.26 (February 2026) brought `new(expr)` and `errors.AsType`, rebuilt `go fix` as the modernizers with
    `//go:fix inline`, and made the Green Tea GC the default.
  - For olang: B.Loop's keep-alive is in section 5's benchmarks, synctest is 2.11, and `go fix` inline is section 5.
- **Python**:
  - 3.12 added PEP 695 type-parameter syntax, which is olang's `fn f<T>`.
  - 3.13 brought the free-threaded build and a new REPL.
  - 3.14 (October 2025) brought t-strings (PEP 750), deferred annotations (PEP 649), `except` without parentheses
    (PEP 758), a warning for `return`/`break` in `finally` (PEP 765), multiple interpreters and `compression.zstd`.
  - For olang, PEP 765 is what `defer`'s "may not leave" already says, and t-strings are rejected in section 3.
- **C++26** (feature-complete June 2025):
  - static reflection, contracts, `std::execution`, trivial relocation and standard library hardening;
  - `#embed`, `std::inplace_vector`, `std::simd`, `std::optional<T&>`, and erroneous behaviour for uninitialized reads.
  - Pattern matching did not make it.
  - olang has the language parts (reflection, contracts, embed, simd-like lanes, no uninitialized storage) and
    rejects hardening and `inplace_vector` (section 3).
- **C23**: `typeof`, `constexpr`, `nullptr`, `_BitInt(N)`, `#embed`, `auto`, standard attributes (`[[nodiscard]]`),
  `<stdckdint.h>`. All are covered (section 4) or replaced by 1.2.
- **Zig**:
  - 0.14 (March 2025) added labeled switch with `continue`, decl literals, `@branchHint` and `@FieldType`.
  - 0.15 removed `usingnamespace`, rebuilt the I/O interfaces (`std.Io`) and made its own x86 backend the debug
    default.
  - For olang: decl literals relate to 2.8 and branch hints to 2.10.
- **Swift 6.2** (September 2025): approachable concurrency (single-threaded by default, `@concurrent`), `InlineArray`
  (`[40 of T]`), `Span`, and strict memory safety as an opt-in. All are covered in olang's terms.
- **Kotlin 2.2**: guard conditions in `when` and context parameters, with rich errors proposed. The first is covered;
  the second and third are rejected or covered (sections 3, 4).

## 8. Method and sources

**What was read.**
- PRINCIPLES.md and CLAUDE.md's settled decisions.
- The memory's rules, plan and decisions ledger.
- `docs/survey.md`, `docs/ideas.md`, and SPEC.md's contents.
- SPEC sections 6.4 (`match`), 6.3 (S8d/S8e narrowing, S9a), S3, S16d, E29, E30 and 3.1.
- `std/prelude`'s exported methods.
- `std/json`'s Encode/Decode.
- `compiler/emit.olang` (cold paths, tail calls) and `compiler/msgs.olang` (unused-name diagnostics).

Each "exists" or "missing" claim was checked against SPEC, std/ or compiler/.

**What was checked on the web** (search results only: the language sites themselves did not resolve from the sandbox,
so the release-note pages were not opened):
- Go 1.24 release notes: <https://go.dev/doc/go1.24>; Go 1.25: <https://antonz.org/go-1-25/>,
  <https://lwn.net/Articles/1033646/>; Go 1.26: <https://go.dev/doc/go1.26>, <https://go.dev/blog/go1.26>,
  <https://antonz.org/go-1-26>
- Python 3.14: <https://discuss.python.org/t/python-3-14-0-final-is-here/104210.md>,
  <https://www.python.org/downloads/release/python-3140rc1/>
- Rust 1.88 (let-chains): <https://blog.rust-lang.org/2025/06/26/Rust-1.88.0>; gen blocks: RFC 3513
  <https://rust-lang.github.io/rfcs/3513-gen-blocks.html>, the 2024 edition guide
  <https://doc.rust-lang.org/nightly/edition-guide/rust-2024/gen-keyword.html>
- C++26: <https://www.infoq.com/news/2025/06/cpp-26-feature-complete>, <https://herbsutter.com/2024/11/>,
  <https://www.modernescpp.com/?p=9898>
- C23: <https://en.wikipedia.org/wiki/C23_(C_standard_revision)>, <https://cppreference.com/c/23>
- Zig 0.14: <https://ziglang.org/download/0.14.0/release-notes.html>
- Swift 6.2: <https://swift.org/blog/swift-6.2-released/>, <https://www.infoq.com/news/2025/09/swift-6-2-released>

**From memory, not re-checked**: Kotlin 2.2's guard conditions and context parameters; Rust's 2024 edition contents
beyond let-chains and `gen`; Zig 0.15's backend default; the functional languages' features, which have not changed in
the respects that matter here.

**Counts.**
- Strong recommendations: 5.
- Worth considering: 13.
- Rejected: 43 rows.
- Already covered: 5 tables, 121 rows.
- Tooling: 19 items, 4 of them recommended (fuzzing, property tests, test filtering, a profiling page).
