# Language ideas to work through

Features from other languages that could suit olang, gathered 2026-10-17 for the user to go through one at a time.
None of them is decided or built. Each entry says what it is, what it would look like, why it fits, what it costs, and
the questions to settle. They are ordered by my estimate of value, highest first. Language constructs go into both compilers
(the user, 2026-10-18); only domain extras would be port-only.

When one is decided, it moves out of this file into `SPEC.md`, `CLAUDE.md` and `HISTORY.md` like any other decision.

| # | Feature | From | Status |
|---|---|---|---|
| 1 | Generators (`yield`) | C#, Python | decided 2026-10-18: `fn f(...) Iterator<T>` with `yield`, both compilers |
| 2 | Compile-time reflection | Zig, Rust derive | built 2026-10-25 (SPEC 12.8, G32-G38); `json.Encode`/`Decode` of any value |
| 3 | Units of measure | F# | declined 2026-10-18 (the user: "I don't want units") |
| 4 | Portable SIMD vectors | Zig, Rust | decided 2026-10-18 as lane-by-lane array operators, after self-hosting |
| 5 | Arbitrary-width integers and fixed point | Zig, VHDL | integers decided 2026-10-18; fixed point open |
| 6 | Embedding a file | Zig, Rust | decided 2026-10-18; built 2026-10-25 (SPEC E38) |
| 7 | `errdefer` | Zig | decided 2026-10-18; built 2026-10-25 (SPEC S19e) |
| 8 | Contracts (`requires` / `ensures`) | Ada/SPARK, Eiffel, D | open |
| 9 | Doc tests | Rust | open |
| 10 | Method overloading by parameters | C++, Java, C# | open (the user, 2026-10-18: maybe) |
| 11 | Constructor overloading | C++, Java, C# | open (the user, 2026-10-18: maybe) |
| 12 | Generic enums | Rust, Swift, ML | decided 2026-10-18 (the user: "generic enums go in for sure"); built 2026-10-25 (SPEC G6b) |

## 1. Generators (`yield`)

**Decided 2026-10-18 (the user):** a generator is an ordinary `fn` whose result is written `Iterator<T>` and whose
body yields - no keyword, no marker. `Iterator<T>` in a result position stands for the generator's own hidden type
(a struct of its parameters, locals and resume point), which satisfies the trait; callers use it through generics,
`for ... in` and `:=`. Rules: a function with that result yields and returns no value (the end or a bare `return`
ends the sequence); its `? E` is what `Next()` fails with besides `Exhausted` (the call itself runs nothing and cannot
fail); no `yield` inside a lambda, a join or deferred code; no `defer` open across a `yield`. Both compilers (the user: syntax goes in both). Its errors are the iterator's: `fn lines(p String&) Iterator<String ? io.Error>`, through the general
error-set parameters `<T ? E>` (decided the same day, both compilers); a generator has no `?` of its own.

**What:** a function that produces a sequence by `yield`ing values from ordinary code. The compiler turns it into an
iterator: a struct holding the function's locals and a `Next() T ? Exhausted` method that resumes where it stopped.

```
fn evens(n I64) Iterator<I64> {
    for i in range n {
        if i % 2 == 0 { yield i }
    }
}

for e in evens(10) { try io.Println($e) }
```

Today the same takes a struct, a constructor, a `Next` method and state kept by hand.

**Why it fits:** principle 3 (it reads like the sentence it means), and it lowers to code the program could write, so
scopes, errors and the evaluator apply unchanged. It costs nothing at run time: the iterator is a plain struct with a
state number, as C#'s and Rust's are, and needs no heap or coroutine stack.

**Costs:** a state-machine transformation in the compiler, the hardest part being locals that live across a `yield`
and `defer` blocks open across one.

**Questions:**
1. Is `Iterator<T>` the right result spelling, or a word like `fn evens(n I64) yields I64`?
2. May a generator fail (`? E`), its errors coming out of `Next`?
3. Does `yield` inside a `join` make sense, or is it an error?

## 2. Compile-time reflection

**Decided 2026-10-18 (the user: "I like the T.Fields style. We avoid intrinsics as much as possible", "do both"):**
compile-time only, asked through the type: `T.Name` (text), `T.Kind` (a prelude enum `Kind { Struct, Enum, Integer,
Float, Bool, Array, Function }` - coarse: I32 and I64 are both Integer, the exact type is `match T`), `T.Base` (what a
declared type is over, else T), `T.Fields` (a struct's fields: `f.Name`, `f.Type`, `f.Of(v)`; on an enum an error naming
Cases), `T.Cases` (an enum's cases, each with its Name and Fields; on a struct its one case, so one loop covers both),
`T.Params` (the constructor's parameters: name, type, has a default - decoding builds through the constructor so its
checks run). A loop over them is unrolled per instantiation; a `match T.Kind` is decided per instantiation and only the
chosen arm checked; counts are `.Len()`, constants. Private fields show only inside their own module. Not now: methods,
field attributes. Both compilers (a language construct). The text below is the original idea.

**Extended the same day (the user: "1) this is good yes. 2) yes. 3) we want this for sure ... let's build it now"):**
- `T.Fields` and the others are compile-time lists: a `for` over one is unrolled (the body checked per element), `.Len()`
  and a constant index work, nothing is stored or walked at run time; a comprehension makes a run-time array of names.
- `f.Of(v)` is the field `f` of `v`, a place (assignable through a writable `v`); a case's fields only where `v` is known
  to be that case, as `as`.
- `match T` takes trait cases (`case Iterable<E>`, `case Hashable`) and generic cases binding arguments (`case List<E>`,
  `case Map<K, V>`); the first matching case wins, an unreachable case is an error, exhaustiveness holds. No `T.Args`
  (a type argument is reached by matching, or by name inside the generic); `T.TypeArgs` only if a use appears.
- `Kind { Struct, Enum, Integer, Float, Bool, Array, Reference, Function }`; arrays `T.Element` (and `T.Length` when
  fixed), references `T.Target`, function types `T.Params`, `T.Results`, `T.Errors` (an error set usable in a
  signature, `? F.Errors`); a declared type takes its base's kind.
- Layout: `T.Size`, `T.Align` (as laid out, as C's sizeof/alignof), `f.Offset` - compile-time constants.
- Building a value: `T(decode(p, src) for p in T.Params)` - a comprehension in a call's argument list, one argument per
  parameter, unrolled; the constructor runs, so its checks do. Defaults (the user: "Both OK"): `p.HasDefault` (a
  constant, so an `if` on it is decided per unrolled parameter) and `p.Default` (the default's value, built in its
  declaration's context as D8a builds it; reading it on a parameter with none is a compile-time error) - a decoder
  writes `try src.Field(p.Name, p.Type) catch DecodeError.MISSING default p.Default`. A reflected member's type is
  usable as a type, constant per instance (`fn arg<P>(p P, ...) P.Type`).
- Reflection on a value is a generic call (`Describe(x)` binds T); no `x.Type`.

**Built 2026-10-25** (SPEC 12.8, G32-G38; CLAUDE.md, HISTORY.md "Compile-time reflection"): as decided, the kind enum
named `TypeKind`; a case descriptor called builds its case (`c(args)`); std/json encodes and decodes any value.

**What:** generic code that walks a type's fields and enum cases while compiling, with no run-time type information.

```
fn Encode<T>(v T, w mut io.Writer&) {
    match T {
        case struct {
            for f in fields(T) { w.Write(f.Name)  Encode(v.(f), w) }
        }
        ...
    }
}
```

**Why it fits:** JSON and binary serialization, debug printing, equality, hashing and comparison can be written once
in std instead of per type. The compiler already supplies `Hash` and `$` for plain data by hand; reflection would make
those ordinary library code. It also gives back what removing struct literals lost: rebuilding a valid value from its
parts. Serialization is already on the recorded future-work list, waiting for this.

**Costs:** a new generic form (iterating fields is a compile-time loop, unrolled per type), and naming a field
generically (`v.(f)` above is only a placeholder spelling).

**Questions:**
1. Syntax for "for each field" and "this field of v".
2. Do private fields show to reflection outside their module (M6a)? I would say no.
3. Are attributes on fields wanted (a JSON name, "skip")? That is a second feature, and it could wait.

## 3. Units of measure

**What:** numbers carry a unit in their type, checked while compiling and erased afterwards.

```
d F64<m> = 100.0
t F64<s> = 9.58
v := d / t                 # F64<m/s>
x := d + t                 # error: m and s cannot be added
```

**Why it fits:** it catches a whole class of bugs in data work, robotics and physics (the Mars Climate Orbiter's), and
costs nothing at run time. Declared types (`type Meters F64`) exist today, but without arithmetic between units:
`Meters / Seconds` cannot give a speed.

**Costs:** unit arithmetic in the type checker (products and powers of base units), generics over units, and how
conversions are written.

**Questions:**
1. Spelling: `F64<m/s>`, or units as declared types that compose?
2. Are units declared by the program (`unit m`), or a fixed SI set in std?
3. How does a plain literal meet a unit: does `2.0 * d` stay `F64<m>`?

## 4. Portable SIMD vectors

**Decided 2026-10-18 (the user), as lane-by-lane array operators instead of vector types:** an array's operators work
element by element - `a + b`, `a * b + c` - wherever the element type has the operator (a one-method prelude trait per
operator: built-in numbers, declared types through `extends`, C32/C64, F8, a user's types). They are ordinary prelude
operator methods whose bodies are comprehensions (E31; inherited by `extends` array types, never redefined, T29e).
Fixed-length arrays (lengths known while compiling - the arrays batch, incl. constant-width slices) give fixed results:
no allocation, vector instructions. Run-time-length arrays give a new array where the expression lands, as a
comprehension does; lengths checked once per operation (abort, or `CheckError.OUT_OF_BOUNDS` under `checked`);
assignment into an existing array of that length reuses its storage. General fusion: any method whose body is a single
comprehension over its inputs' positions is a map, and maps of maps compose into one loop - `a + b * c - d` and
`(a * b).Sum()` make no temporaries, for user functions of that shape too. Comparisons lane by lane are methods
(`a.LanesEqual(b)`, `a.LanesLess(b)` giving `Array<Bool>`), since `==` is whole-array equality; `mask.Select(a, b)`,
`a.Shuffle(...)` (constant positions), `mask.Bits()`/`FirstSet()`, `acc.DotAdd4(a, b)`, `mask.Some()`/`mask.Every()` (the user: "I like Any/All for sure", the helpers renamed Some/Every since; the existing
`Some(f)`/`Every(f)` with the predicate defaulting to the element itself, a default fitted per call so it is legal only
where the element is a Bool). Totals: `a.Sum()` (T has Plus;
an empty array gives T's zero value; replaces std/stats' Sum), `a.Max()`/`a.Min()` (T has Less; empty fails with
ArrayError.EMPTY, replacing stats' Min/Max). No implicit threads: parallelism stays explicit (join/spawn,
`a.Chunks`); a `parallel (e)` marker could come later. **Built 2026-10-26 (E39, SPEC 5.22)**: lanes are a
checker elaboration rather than prelude methods, so the fusion covers the language's operators and lane methods, not a
user's map-shaped functions; lengths abort once per operation (no checked form); `Shuffle`, `Bits`, `FirstSet` and
`DotAdd4` are not built.

**What:** a value type of N lanes with element-wise operators, compiled to the machine's vector instructions.

```
a := Vec<F32, 8>(1.0)
b := Vec<F32, 8>.Load(xs, i)
c := a * b + a             # one vector multiply and add
s := c.Sum()
```

**Why it fits:** principle 2, for when the auto-vectorizer gives up: kernels in oann could say what
they mean instead of relying on the optimizer. It serves AI and data work directly.

**Costs:** after the arrays batch there are no constant generic parameters, so the lane count needs a spelling of its
own (perhaps from `TargetVectorBits`); there are also masks, shuffles and loads from arrays.

**Questions:**
1. The lane count: written, or always the machine's natural width for T?
2. Is it a prelude type built on compiler support, or language syntax?

## 5. Arbitrary-width integers and fixed point

**Integers decided 2026-10-18 (the user: "Names are fine width is fine"):** `I1`-`I128` and `U1`-`U128`, any width,
named as today's eight are (Zig's form; the eight become ordinary members). The existing integer rules apply unchanged:
arithmetic wraps at the width (E6c), `checked` checks it, the T6b lattice widens them (wider within a signedness,
unsigned into a strictly wider signed), literals adapt, `$`, `Hash`, `Format`, the `Integer` trait. Storage is whole
bytes (a `U12` takes two); packing bits is the declared-layout work's. Cost on a CPU: one mask or sign-extension where a
result's width matters, a library call for 128-bit division; on an FPGA odd widths are the cheap ones. Fixed point
(`Q4.12`-style, saturating) is decided separately, with the FPGA work. **Integers built 2026-10-26 (T4a, SPEC 2.2)**: storage
the next of 1, 2, 4, 8 or 16 bytes, as LLVM and C's `_BitInt` lay them out; literals stay 64-bit; `Integer` lists every
width; atomics, `ByteSwap` of odd bit counts and the C boundary stay with the widths the machine has; `ParseAs<T>` reads
any width. Fixed point not built.

**What:** integer types of any bit width, and fixed-point numbers with saturating arithmetic.

```
x U12 = 4000
p Q4.12 = 1.5              # 4 integer bits, 12 fraction bits
q := p * p                 # saturates instead of wrapping, if declared so
```

**Why it fits:** the FPGA target for spiking neural networks needs exactly these (membrane potentials, Q formats), and
they help with packed binary data on any target.

**Costs:** the numeric lattice (T6b) grows from 12 types to an unbounded family, plus saturation semantics and how
they meet `checked`.

**Questions:**
1. Spelling: `U12`/`I24` as names, or `UInt<12>`?
2. Saturation as a type property, or an operation (`a.SatPlus(b)`)?
3. Part of the FPGA work, or useful before it?

## 6. Embedding a file

**Decided 2026-10-18 (the user: "It's good for spelling ... Do as you want"):** `embed PATH` is an expression giving the
file's bytes, read while compiling, as a read-only `Array<U8>` in the program's constant data (length known while
compiling); text is `String(embed "help.txt")`, a view. PATH is any compile-time constant text, relative to the
source file as imports are, kept inside a remote package. The evaluator can read the bytes (a table parsed and baked
while compiling). An object is rebuilt when an embedded file changes (its content is in the object's hash). A file up
to 64 KB is an LLVM constant, so the optimizer can fold reads of known bytes (a small lookup table); a larger one is
placed in the object as raw bytes (assembler `.incbin`), since nothing is folded out of a large blob and LLVM would
only be slow on it. Not now: directories,
globs. Built 2026-10-25 (SPEC E38) - every file an LLVM constant after all, measured: see HISTORY.md.

**What:** a file's bytes become constant data in the binary, read while compiling.

```
Weights := embed("model.bin")          # an Array<U8>, in the binary's read-only data
Help := embedText("help.txt")          # a String
```

**Why it fits:** "the compiler runs what it can"; it removes a run-time file read and a missing-file failure mode for
assets and models. It is tiny to build: the evaluator reads the file and baking already writes constant arrays.

**Costs:** the path rule (relative to the source file, and checked against escaping the repository?), and rebuilding
when the file changes (B3 staleness has to include it).

**Questions:**
1. A builtin word, or a std function the evaluator understands?
2. Can it read a directory, or files only?

## 7. `errdefer`

**Decided 2026-10-18 (the user: "1) errdefer 2) that's good 3) good"):** `errdefer STATEMENT` / `errdefer { block }`
registers deferred code of its block that runs only when the block is left by an error moving outward - out of the
function (try's propagation, an `error` statement), a failing join to its `try join` clauses, a `for x in try c` ended
by its own error; an error a clause catches inside the block does not leave it. Not on what ends the program or the test
(a failed assert, `unreachable`, `!`, `os.Exit`), as for `defer`. One list with `defer`, in reverse registration order
(an error exit runs both kinds, a normal exit only the defers - two lists would misorder `x := alloc(); errdefer
free(x); y := build(x); defer log(y)`). The error is not available inside (errors are no values, T20); restricting it
to some words (`errdefer io.Error.FULL { }`) can be added later. Built 2026-10-25 (SPEC S19e; CLAUDE.md, HISTORY.md).

**What:** a deferred block that runs only when its block is left by an error.

```
f := try os.Create(path)
errdefer { os.Remove(path)! }
try write(f, data)                      # if this fails, the half-written file is removed
```

**Why it fits:** cleanup of half-built state is otherwise written in every catch clause. It was noted as cheap when
`defer` was built (2026-10-08): one flag where errors leave a block.

**Costs:** small. Is there an `errdefer` in tests, where an error fails the test?

**Questions:**
1. The name: `errdefer` (Zig's), or something more like a sentence, e.g. `defer on error { }`?

## 8. Contracts (`requires` / `ensures`)

**What:** pre- and postconditions on a function's signature, decided at compile time at each call where the arguments
are known, checked under `checked` where they are not.

```
fn sqrt(x F64) F64 requires x >= 0.0 ensures result >= 0.0 {
    ...
}

y := sqrt(4.0)             # decided while compiling
z := sqrt(-1.0)            # compile-time error at the call
w := checked sqrt(v)       # run-time check, fails with a named error
```

**Why it fits:** it states a function's assumptions where a caller reads them, and the arrays batch's call-site
asserts (S18d) already go halfway: a function's leading asserts are decided at each call.

**Costs:** where the checks run, the error a failed contract gives, and `ensures` needing a name for the result.

**Questions:**
1. Are leading asserts enough (they already work this way after the arrays batch), or is signature syntax wanted?
2. Is an unchecked call allowed when the compiler cannot decide the contract (principle 2 says yes, with no check)?

## 9. Doc tests

**What:** examples in a function's comment are compiled and run as tests.

```
# Splits text at sep.
#     assert "a,b".Split(",").Len() == 2
fn (t String&) Split(sep String&) Array<String&>&t { ... }
```

**Why it fits:** the documentation in std stays true, since a wrong example fails `olang test`.

**Costs:** the comment syntax for an example, and where its imports come from.

**Questions:**
1. Which marker sets an example apart from prose (indentation, as above, or a fenced block)?

## Considered and not proposed

- **async/await:** it colours functions and needs a run-time scheduler; olang chose threads with `join` and `spawn`.
- **Exceptions:** hidden control flow (principles).
- **Macros:** principle 4; compile-time evaluation and generics cover the uses.
- **Pipelines (`x |> f |> g`):** methods already chain left to right.
- **Optional chaining (`a?.b`):** possible, but `?` already means error sets, and a null read already traps.

## 10. Method overloading by parameters

**What:** several functions or methods of one name, told apart by their parameters' types or number
(`p.Move(dx, dy)` and `p.Move(v Vec2)`). Today a name means one function; methods overload only by receiver (M21).

**Costs and questions:** a call is then resolved by its arguments, which meets inference head on - a literal adapts to
its target (T6) and a lambda takes its types from the expected function type (D16a), so with two candidates neither
target is known; ambiguous calls need a rule and a diagnostic. A function as a value (`f := p.Move`) no longer names one
function. Defaults (D8a) and `default` (E14) already cover the commonest use, the same operation with fewer arguments.
Protocol methods (E31, M6b) are told apart by shape, which overloading would also blur.

## 11. Constructor overloading

**What:** several constructors per type (`Color(r, g, b)` and `Color(hex String&)`). Today a type has exactly one
constructor (C2), and defaults cover its variants.

**Costs and questions:** the same resolution questions as #10, plus the zero value (D13c), which is made by the one
constructor from its defaults. The usual alternatives are named functions that build the value (`ColorFromHex(s)`,
Go's and Rust's way), which need nothing new, or named constructors (`Color.FromHex(s)`), which would need reaching a
function through a type name (as reflection's `T.Fields` already does).

## 12. Generic enums

**What:** `type Tree<T> enum { Leaf(v T)  Node(l Tree<T>&, r Tree<T>&) }`, monomorphized exactly as a generic struct is
(SPEC section 12 forbids it today: "an enum's payloads name their types as written" is the rule, not a reason). Case
constructors infer their arguments as a generic constructor does (G10c: `Tree.Leaf(3)` is a `Tree<I64>`); exhaustiveness,
layout and `match` patterns are per instance; reflection's `T.Cases` sees the instance's payload types.

**Why:** generic recursive data (trees, tries, rope text), `Either`-like choices, generic message types for channels.
It reuses the struct machinery wholesale.

**Not:** std gets no `Option<T>` or `Result<T, E>` - those are `null` and `? E` in olang, and stay so.

**Built 2026-10-25** (SPEC G6b; CLAUDE.md, HISTORY.md): as described, with `$` writing a case without its enum's
arguments (`Opt.Some(4)`); `T.Cases` reads an instance's cases (built with reflection, 2026-10-25).

