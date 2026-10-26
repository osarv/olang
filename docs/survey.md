# Survey: features from other languages, and what an announcement needs

Written 2026-10-24 for the question "have I missed anything before announcing olang?". Nothing here is decided; each
item is a candidate to discuss, with a recommendation.

**Summary.** The language itself has few real gaps left. Most features a newcomer looks for are present, decided or
deliberately declined. The large gaps are around it. It runs on one platform (Linux, glibc, x86-64, with clang 18
installed). C interop cannot reach a typical C library (no structs, handles, callbacks or linked libraries) and nothing
can call olang. Errors carry no data. Long-running programs grow, because early freeing is decided but not built. std
has no sockets, mutex, regex, Set, argument parser or Unicode, and there is no LSP, doc generator, README or tutorial.

## 1. The shortlist: what to decide before announcing

Ranked by how much an early user would hit it. "Decide" means a direction question for the user. The rest are work
orders that only need a yes.

1. **Platforms and installing.** Today the compiler only targets Linux with glibc, on x86-64 (B12). aarch64 is
   refused because LLVM 18 cannot compile BF16 there. Every build also needs clang 18 on the PATH. A Mac user, the
   largest group of people trying a new language, cannot run "hello world". *Recommendation:* announce with Linux
   x86-64 and aarch64, plus macOS arm64. That needs a move to LLVM 19 or later (it lifts the aarch64 refusal) and a
   Darwin row in the runtime's C-library table. Ship a release archive holding the compiler and a pinned clang/lld, as
   Zig ships its LLVM. Say plainly that Windows and WASM come later.
2. **C interop, second version, and being called from C and Python.** X2 admits only numbers and arrays of them: no
   structs, no `Bool`, no opaque handles (`sqlite3*`), no callbacks into olang, and no pointer results. A program also
   has no way to say "link `-lsqlite3`", because the driver links only `-lm -lpthread -ldl [-lffi]`. Nothing can call
   an olang function (no `export`). So the "systems work" and "GUI" domains in PRINCIPLES.md have no route to SDL, GTK,
   sqlite, zlib or CUDA. The AI and data domain has no route into Python, where the users are: Mojo, Nim (nimpy) and
   Rust (PyO3) all lead with this. *Decide* the shape now, even if only part is built:
   - `extern type Db` for an opaque handle, held as a value and passed back;
   - declared-layout structs (already in recorded future work);
   - `link "sqlite3"` beside the externs;
   - callbacks C may call, with a runtime-made thread entry where X2's reason requires one;
   - `export fn f(x F64) F64` for a C-ABI shared library.

   *Recommendation:* opaque handles, `link` and `export fn` (numbers and arrays) before announcing, plus a demo
   calling olang from Python through `ctypes`. Struct layouts and callbacks after.
3. **Long-running programs only grow.** Under QF and docs/memory.md, what a long-lived List, Map or struct lets go of
   stays in its scope until the scope closes. Early freeing (round 6, the port's scope pass) and `x.Destroy()` are
   decided but not built. A Go or Rust programmer's first serious test will be a server or an interpreter loop, and it
   will grow. *Recommendation:* build round 6 before announcing, or announce only with three things in place: the
   `-memory` report, the restart-a-block pattern written up with an example, and the known limit stated on the front
   page.
4. **Errors that carry data.** An error is a word (T20, QAM). `io.Error.NOT_FOUND` cannot say which path, and
   `json.Parse` has to report its position through an out-parameter. Swift, Rust and Kotlin's rich errors carry fields,
   and Go wraps errors with context. Zig has olang's limit, and it is one of the most-asked Zig questions. *Decide*
   before QAM (errors as values) is built, because it changes the error ABI. *Recommendation:* let an error word have
   a payload that holds no references, written `NOT_FOUND(code I32)` like an enum case, and bound by `catch io.Error e`.
   Copying it up the frames is safe because it names no scope. Text context stays the caller's job (catch and raise
   your own word), and that idiom gets documented. The cost is one payload slot in the result union, never a check.
5. **Text literals.** There is no raw or multi-line text, and no `\x1b` or `\u{...}` escapes (L13-L15). Embedded JSON,
   SQL, regexes, help text, expected test output and terminal colours need them. Every language listed below has at
   least one form. *Recommendation:* add `\xHH` and `\u{H...}` (written as UTF-8) to ordinary literals. Add one block
   form, `"""` on lines of its own: raw, no escapes, with the closing `"""`'s indentation stripped from every line
   (Swift's rule, which keeps code indented). This is cheap and lexer-only, and a syntax change is cheapest before
   announcing.
6. **A stability promise, a licence, and a version.** Principle 4 says a removed spelling "is simply gone". That is
   right for the language, but a public user needs to know what happens to their code. *Decide:* announce as 0.x, with
   breaking changes shipped alongside `olang fix`, generalizing tools/*_migrate.olang the way `go fix` and
   `cargo fix --edition` do, so principle 4 holds and no user is stranded. Editions or deprecation attributes are not
   needed yet. **The repository has no licence.** Announced like that, nobody may legally use, fork or contribute to
   it. This is the user's call; the usual choices for a language are permissive: Rust is MIT/Apache-2.0, Zig MIT, Go BSD.
7. **Concurrency in std: locks, timers, sockets.** std has `chan` and `cancel`, but no mutex type: chan uses pthread
   internally, so shared state between tasks is atomics or a channel. There is no `Sleep` (os.olang calls nanosleep
   privately), no sockets (`std/http` runs curl), and no `select`. *Recommendation:* before announcing, add
   `std/sync` with `Mutex<T>` (reached only through `m.With(fn(x mut T&) { ... })`, so a guarded value never escapes
   its lock, by the scope rules), `Once` and a `RWLock`, plus `time.Sleep` and a `Duration` type. Add `std/net` with
   blocking TCP/UDP and a thread per connection, which fits spawn's 1:1 threads. Say explicitly that there is no
   async/await and why. `select` over channels comes later.
8. **std breadth for scripting and data.** Missing pieces, roughly by demand:
   - `Set<T>`;
   - regex (RE2-style, linear time);
   - a CLI argument parser (`std/flag`);
   - Unicode code points (`s.Runes()`, a `Rune` type; Utf8/Utf32 are recorded future work);
   - date and time formatting;
   - base64 and hex;
   - sha256 and OS random bytes;
   - gzip/zlib;
   - logging;
   - iterator adapters `Zip`, `Enumerate`, `Take`, `Skip`, `Reverse`, `Sum`, `Min`/`Max`, `Sorted`;
   - Deque and Heap.

   *Recommendation:* one std batch; `Set`, `flag`, regex and `Runes` are the minimum for "scripting".
9. **Numeric basics.** There is no way to write a type's limits (`I64.Max`, `F32.Epsilon`, `T.Max` in generic code)
   and no bit operations (`LeadingZeros`, `TrailingZeros`, `PopCount`, `RotateLeft`, `ByteSwap`). text.olang hand-codes
   a `leadingZeros`. Go's math/bits, Rust, Zig builtins and C++20 `<bit>` all have them, and they are one instruction
   each. *Recommendation:* compiler-supplied methods like `Bits()` (E33), plus type constants through reflection's
   `T.` namespace (decided, item 5 of the build list), so `I64.Max` and `T.Max` are the same spelling.
10. **Short lambdas.** `xs.Filter(fn(x) { return x > 3 })` is the commonest lambda, and it is longer than in any
    language listed. `return` stays written (the user's rule). *Recommendation:* let S1b's one-line body apply to a
    lambda, giving `xs.Filter(fn(x): return x > 3)`. That reuses `:` with nothing new.
11. **Using a nullable reference.** `Node?&` is decided. Before it is built, settle the "guard" shape, which Kotlin,
    Swift, C#, TS and Dart users will try first. *Recommendation:* no `?.` or `??`, since `?` already marks error sets
    and natural language argues against symbol chains. Make sure narrowing also holds **after a leaving test**
    (`if n is null: return 0` and then `n.v`), as Kotlin smart casts and Swift `guard let` do. With `!` and that, the
    common cases are covered.
12. **Editor support and doc comments.** No LSP exists. Rust, Go, Zig, Gleam and Roc treat an LSP as part of the
    language now, and many people will not try a language without one. *Decide* the doc-comment rule now (doc tests are
    deferred until a doc generator, but the rule shapes every comment written meanwhile). *Recommendation:* Go's rule:
    the `#` lines directly above a declaration are its documentation, so no new syntax. Then a minimal LSP on the
    port's front end (diagnostics, go to definition, hover through `explain`) before announcing. A doc generator comes
    after.

## 2. Method

**What was read.** PRINCIPLES.md, CLAUDE.md's settled decisions, the ledger (`.claude/memory/decisions.md`, especially
2026-10-17 to 10-24), plan.md's build list and recorded future work, docs/ideas.md and docs/prover.md, SPEC.md's
contents and sections 1, 10 and 11, and std/ (README, every exported type and function signature).

**What was compared.** Each language in the brief, from what I know of it as of mid-2026. A few recent points were
checked on the web: C++26 reflection and contracts, Kotlin's rich errors, and Zig's new `std.Io` (sources at the end).

**What is excluded.** Anything olang already has, has decided, or has declined is left out of the tables, or listed
as "already covered" or "settled" only where a newcomer would ask about it. Verdicts weigh each feature against
PRINCIPLES.md's five judging questions.

**Verdicts.**
- **worth discussing**: decide before or soon after announcing;
- **covered by X**: olang has an equivalent, so say so in the docs;
- **conflicts with principle N**;
- **later**: fits, but not needed for an announcement;
- **settled**: decided earlier; only listed because newcomers will ask.

## 3. Candidates by area

### Types

| Feature | What | Who | Fit / conflict | Cost | Verdict |
|---|---|---|---|---|---|
| Error payloads | `NOT_FOUND(code I32)` on an error word | Swift, Rust, Kotlin (rich errors), OCaml | fits; references in a payload meet §8 | ABI change, before QAM | **worth discussing** (shortlist 4) |
| Type constants | `I64.Max`, `F64.Epsilon`, `T.Bits` | Rust, Go, Zig, Swift, C# | fits via reflection's `T.` | small | **worth discussing** (shortlist 9) |
| Transparent type alias | `type Env = Map<String&, List<Var&>>` | Go, Rust, TS, Swift, Zig | olang's `type X Y` is nominal (T29); an alias is a second name for one type, which is mild against principle 4 | small | later; revisit if long generic spellings pile up in the port |
| Opaque foreign type | `extern type Db` | Zig, Rust, Swift (C import), Odin | fits; X2 has nothing for it | small | **worth discussing** (shortlist 2) |
| Declared-layout and packed structs, bit fields | exact offsets, `U3` fields | Zig `packed struct`/`extern struct`, Odin `bit_field`, Ada rep clauses | recorded future work; arbitrary-width integers decided | medium | later, with C interop v2 |
| Unions (untagged) | overlapping fields | C, Zig, Odin | conflicts with T36 and memory safety | - | conflicts (principles: safety) |
| Range-restricted integers | `type Percent I32 range 0..100` | Ada, Pascal, Nim | covered by T29d constructors plus contracts and `fits` | - | covered |
| Union and intersection types | `I32 or String` | TS, Scala 3, Python typing | enums for closed data; traits side by side for intersection | - | covered |
| Tuples, anonymous records | `(I64, String)` values | Rust, Swift, Python, C# | several results plus named structs (D8c); `Pair` in std | - | settled |
| Option/Maybe type | `Option<T>` | Rust, Swift, Haskell, OCaml | `Node?&` decided instead | - | settled |
| Result type | `Result<T, E>` | Rust, Swift, Kotlin | dropped 2026-10-24; error sets, errors as values | - | settled |
| Linear and affine types, typestate | a value used exactly once | Austral, Rust, Vale | `own`/`take` built and removed (QAB); against principle 1's simplicity | - | settled (declined) |
| Generational references | `h.Get()` checked against a generation | Vale | a check per dereference conflicts with principle 2; a pool with checked handles can be a std library | - | conflicts as language; later as a std `Pool<T>` |
| Big integers and decimals | `BigInt`, `Decimal` | Python, Java, C#, Julia | library | medium | later (std) |
| SoA layout | `#soa [N]Particle`, a column per field | Jai, Odin, Zig `MultiArrayList` | fits data work; can be a library once reflection exists | medium | later |
| Built-in small vector and matrix types, swizzles | `v.xyz`, `matrix[4,4]f32` | Odin, HLSL/GLSL, Mojo `SIMD` | lane-wise array operators decided; matrices are oann's | - | covered or decided |
| Units of measure | `F64<m/s>` | F# | declined by the user 2026-10-18 and 2026-10-24 | - | settled |

### Control flow and expressions

| Feature | What | Who | Fit / conflict | Cost | Verdict |
|---|---|---|---|---|---|
| Narrowing after a leaving test | `if n is null: return` then `n.v` | Kotlin, Swift `guard let`, TS, Rust `let-else` | fits the decided narrowing | small | **worth discussing** (shortlist 11) |
| `?.` and `??` | `a?.b`, `x ?? d` | Kotlin, Swift, C#, TS, Dart | `?` means error sets; symbols against principle 3 | small | worth discussing, recommend no |
| Struct patterns in `match` | `case Point(x, 0)` | Rust, Swift, Scala, Python 3.10, C# | enums already have patterns; deferred "if code needs them" | small | later |
| Range patterns | `case 1..5` | Rust, Swift, Ada, Kotlin | covered by guards (`case _ if 1 <= x <= 5`, a chain) | - | covered |
| Reverse ranges and iteration | `range 10, 0, -1`, `a.Reversed()` | Python, Rust, Kotlin | the user made `range` count upward only; a reversed iterator is a std item | small | std (shortlist 8) |
| Zip, enumerate, take and other adapters | `a.Iter().Zip(b.Iter())` | Rust, Python, C# LINQ, Kotlin | `for i, x in a` covers enumerate; the rest is std | small | std (shortlist 8) |
| Map and set comprehensions | `Map<K,V>[k: v for ...]` | Python, Julia | deferred comprehension relaxations | small | later |
| Lazy pipelines and generators | `yield` | Python, C#, Rust (gen), JS | generators decided | - | decided |
| Guaranteed tail calls | `return become f(x)` | Scheme, Zig `.always_tail`, Clang `musttail`, Lua | useful for interpreters and state machines; LLVM supports it | small | later |
| Labeled break | `break outer` | Rust, Go, Java, Zig | declined by the user | - | settled |
| async/await | coloured async functions | Rust, C#, JS, Python, Swift, Kotlin | declined (ideas.md): colouring and a scheduler; Zig removed its version | - | settled; explain |
| Effect handlers | resumable effects | Koka, OCaml 5, Unison | strong, but a large semantic addition; overlaps generators and errors | large | later at most |
| Pipelines | `x \|> f` | F#, Elixir, OCaml, Gleam | declined (methods chain) | - | settled |
| Short lambdas | `x => x * 2`, `\|x\| x * 2`, `it` | almost all | `return` stays written; S1b's `:` can shorten | small | **worth discussing** (shortlist 10) |
| Trailing lambdas | `l.Each { x -> ... }` | Kotlin, Swift, Ruby | a second call syntax, against principle 4 | - | conflicts with principle 4 |
| Computed goto, `switch` fallthrough | | C, GNU C | no | - | conflicts (minimal syntax) |
| Named arguments | `connect(host: h, port: 9)` | Python, Swift, Kotlin, C# | rejected (names become API); `default` slot instead | - | settled; explain |
| Variadic functions | `max(a, b, c)` | C, Go, Python, Rust macros | covered by array arguments (`max(I64[a, b, c])`) and `$` joins | - | covered |

### Errors

| Feature | What | Who | Fit / conflict | Cost | Verdict |
|---|---|---|---|---|---|
| Error payloads and context | see Types | | | | **worth discussing** (shortlist 4) |
| Error wrapping and chains | `fmt.Errorf("open %s: %w", p, err)` | Go, Rust `anyhow`, Java causes | needs payloads; the error return trace (S18d) already shows where an error travelled | medium | after payloads |
| `errdefer` | defer only on an error | Zig, D `scope(failure)` | decided | - | decided |
| Panic/recover | catch a crash | Go, Rust `catch_unwind` | hidden control flow | - | conflicts (deliberately not) |
| Release-build backtraces on a crash | symbolized trace on abort or segfault | Rust (`RUST_BACKTRACE`), Go | `os.OnCrash` prints a message; the trace exists only in test and debug builds | small | later (tooling) |

### Memory

| Feature | What | Who | Fit / conflict | Cost | Verdict |
|---|---|---|---|---|---|
| Freeing before scope close | a long-lived Map stays flat | every GC'd language, Rust | decided (O8d, docs/memory.md round 6), not built | large | **worth discussing** (shortlist 3) |
| Explicit allocators and arenas as values | `alloc: Allocator` parameters | Zig, Odin `context.allocator`, Jai temp allocator | conflicts with principle 1 (manual memory) | - | conflicts with principle 1 |
| Reference counting and weak references | `Rc`, `Weak`, `weak var` | Rust, Swift, Nim ORC, Koka Perceus | principle 1 rules out RC | - | conflicts with principle 1 |
| Tracing GC opt-in | | D, Nim | principle 1 | - | conflicts |
| Stack allocation of non-escaping objects | escape analysis | Go, Java | parked (needs a benchmark) | medium | later |

### Concurrency

| Feature | What | Who | Fit / conflict | Cost | Verdict |
|---|---|---|---|---|---|
| Mutex, RWLock, Once, a wait group | `Mutex<T>` with `With` | every systems language | fits; P8c already makes pthread the ordering | small | **worth discussing** (shortlist 7) |
| `select` over channels | wait for the first of several | Go, Rust crossbeam, Kotlin | recorded future work | medium | later |
| Non-blocking I/O, poll loop | epoll, io_uring, `std.Io` | Go runtime, Rust tokio, Zig, Node | 1:1 threads suffice until thousands of connections; a library over poll fits without async | medium | later; state the limit |
| Static race freedom | `Send`/`Sync`, Swift 6 strict concurrency, Pony capabilities | Rust, Swift, Pony | dropped with `own` (QAC); `-race` detects (Go's position) | - | settled; explain |
| Actors and supervisors | `GenServer`, restart trees | Erlang/Elixir, Akka, Swift actors | a library on chan, later | medium | later |
| Parallel loops | `forall`, `@threads`, Rayon `par_iter` | Chapel, Julia, Rust, OpenMP | `join` + `a.Chunks(n)` + `spawn out[i] = f(i)`; a std `ParallelMap` helper is cheap | small | later (std) |
| GPU kernels | `@cuda`, Mojo GPU, Triton | Julia, Mojo, Python | the AI domain's elephant; no backend; FPGA is the planned second backend | large | later; **say so at announcement** |
| Thread-local variables | `threadlocal var x` | Zig, C, Rust | only the runtime uses TLS | small | later |

### Generics and metaprogramming

| Feature | What | Who | Fit / conflict | Cost | Verdict |
|---|---|---|---|---|---|
| Compile-time reflection, derive | `T.Fields`, `#[derive]` | Zig, C++26, Rust, D | decided | - | decided |
| Runtime trait objects | `any Trait&` | Rust `dyn`, Go interfaces, Swift `any` | decided | - | decided |
| Generic enums | `Tree<T>` | Rust, Swift, ML | decided | - | decided |
| Associated types and constants in traits | `type Item`, `const ZERO` | Rust, Swift | trait parameters cover associated types; constants need the `T.` namespace | small | with shortlist 9 |
| Extension methods | add `s.Slug()` to `String` | Kotlin, C#, Swift, Dart, Scala | only the prelude may add methods to built-in types, and only a type's module to its type (M19, M19d) | - | settled; explain (write `slug(s)`) |
| Overloading | by parameter types | C++, Java, C#, Swift | declined 2026-10-24 (generics, defaults) | - | settled; explain |
| Macros | hygienic or procedural | Rust, Nim, Elixir, Julia, Scala | declined (principle 4; comptime covers) | - | settled |
| Functions returning types | `fn List(T: type) type` | Zig | olang generics plus reflection; a second generics mechanism | - | conflicts with principle 4 |
| Variadic generics | parameter packs | C++, Swift 5.9, TS | no tuples, no variadics | - | later at most |
| Higher-kinded types, typeclass hierarchies | `Functor<F>` | Haskell, Scala | not in the language's spirit; no domain needs them | - | conflicts with principle 4 |

### Syntax and ergonomics

| Feature | What | Who | Fit / conflict | Cost | Verdict |
|---|---|---|---|---|---|
| Raw and multi-line text | `"""` blocks, `r#"..."#`, backticks | Python, Swift, Rust, Go, Zig, Kotlin, C# 11 | missing (L14) | small | **worth discussing** (shortlist 5) |
| `\x` and `\u{}` escapes | `"\x1b[31m"`, `"\u{e9}"` | nearly all | missing (L15) | tiny | **worth discussing** (shortlist 5) |
| String interpolation | `"n is {n}"`, f-strings, t-strings (Python 3.14) | Python, Kotlin, Swift, C#, JS | covered by adjacency `"n is " $n` (E11a, the user's design) | - | settled; explain |
| Format specs | `{x:.2f}`, `{n:>8}` | Python, Rust, C# | covered by `x.Fixed(2)`, `PadStart`, `Format(16)` | - | covered |
| Struct update | `p with { X = 3 }`, Kotlin `copy(x=3)` | C#, F#, Kotlin, OCaml | covered by a copy and an assignment | - | covered |
| Doc comments | `///`, docstrings | Rust, Python, Go, Zig | none; deferred with doc tests | small | **worth discussing** (shortlist 12) |
| Attributes and annotations | `@deprecated`, `#[inline]`, `#[test]` | Rust, Java, C#, Zig | `test` is a keyword; principle 4 argues against an attribute zoo; deprecation is answered by `olang fix` | - | settled by shortlist 6 |
| Properties and getters | `p.Area` computed | C#, Swift, Kotlin, Python | methods; a field and a method may not share a name | - | settled |
| Numeric literal suffixes | `1u8`, `1.0f32` | Rust, C, Zig | covered by conversion and adaptation (`U8(1)`, T6) | - | covered |
| Implicit `self`/`this` | | most OO languages | a receiver is named | - | settled |

### Modules, packaging and interop

| Feature | What | Who | Fit / conflict | Cost | Verdict |
|---|---|---|---|---|---|
| Package registry and discovery | crates.io, pkg.go.dev, PyPI | Rust, Go, Python, Gleam (Hex), Dart (pub) | git imports plus `olang.lock` are Go's early model; a registry is recorded future work | large | later; an index page of known packages at announcement is enough |
| A manifest (name, version, dependencies) | `Cargo.toml`, `go.mod`, `build.zig.zon` | Rust, Go, Zig, Gleam | import paths carry dependencies; no project name or version is recorded anywhere | small | later, when a registry needs one |
| Build scripts | `build.rs`, `build.zig` | Rust, Zig | `-define` + top-level `if`; linking C libraries needs `link` (shortlist 2) | - | covered except linking |
| C header import | `@cImport`, Swift and Carbon C++ interop, Rust bindgen | Zig, Swift, Carbon, Rust | declined (disproportionate); a clang probe is held in reserve | large | settled; a bindgen-style tool written in olang later |
| Exporting to C, Python and WASM hosts | `export fn`, `#[no_mangle]`, PyO3, nimpy | Rust, Zig, Nim, Mojo, Go cgo | missing | medium | **worth discussing** (shortlist 2) |
| Embedding olang as a scripting host | Lua C API | Lua, JS engines, Wren | `interpret` exists but cannot be embedded | large | later |
| WASM target | wasm32-wasi, browser | Rust, Zig, Go, C, Odin, Gleam (JS) | LLVM has it; the runtime is pthread/glibc | medium | later; it would also give a playground |

### Tooling

| Feature | Who | olang today | Verdict |
|---|---|---|---|
| LSP | Rust (rust-analyzer), Go (gopls), Zig (zls), Gleam and Roc built in | none | **worth discussing** (shortlist 12) |
| Formatter | gofmt, rustfmt, zig fmt, gleam format | `olang format` | done |
| Doc generator | rustdoc, godoc, zig autodoc | none | after doc comments |
| REPL | Python, Julia, OCaml, Elixir, Swift, Kotlin | `interpret` runs files; no REPL | later (the evaluator could back one) |
| Debugger story | DWARF + gdb/lldb | `-debug` DWARF, verified in gdb | done; needs a page |
| Test runner filters | `cargo test NAME`, `go test -run` | runs a file's tests, no name filter | small, add (`-run NAME`) |
| Benchmarks | `go test -bench`, criterion, `zig build` | `bench/` for the compiler only | later (a `bench` block or std helper) |
| Fuzzing for users | `go test -fuzz`, cargo-fuzz, libFuzzer | `fuzz/` fuzzes the compiler | later |
| Property tests | Hypothesis, QuickCheck | none | later (std library) |
| Profiler | pprof, perf with symbols | perf works on DWARF builds (unchecked) | document; a page |
| Race detector | `go -race`, TSan | `-race` | done |
| Memory checker | ASan, Valgrind | `-sanitize` (scope sanitizer) | done; unusual, explain |
| Cross-compilation | `zig cc`, Go `GOOS` | `-target` to aarch64-linux, compile only (and refused under LLVM 18) | shortlist 1 |
| Playground | play.rust-lang.org, Go playground, Gleam's | none | later (a server, or WASM) |
| Error messages | Elm, Rust, Gleam | one row each, rule ids, `olang explain RULE`, notes | done, strong |
| Stability and versioning | Rust editions, Go 1 promise | none stated | shortlist 6 |
| Migration tool | `go fix`, `cargo fix` | tools/*_migrate.olang one by one | shortlist 6 (generalize to `olang fix`) |

### Standard library

| Area | What newcomers expect | olang today | Verdict |
|---|---|---|---|
| Files, processes, environment | open, read, write, exec, args, env | `std/os`, `std/io` (good: Exec without a shell, Start/Process, MkTemp) | done |
| CLI arguments | flag, argparse, clap | `os.Args()` only | **std** (shortlist 8) |
| Networking | TCP/UDP, DNS, HTTP client and server, TLS | HTTP client via curl only | **std** (shortlist 7) |
| Concurrency primitives | mutex, condvar, once, semaphore, select | chan, cancel, atomics | **std** (shortlist 7) |
| Time | now, sleep, durations, formatting, time zones | `Now`, `Since`, `Wall` | **std** (Sleep, Duration, format) |
| Text | Unicode code points, case, normalization, regex | byte-wise ASCII methods, rich set of String methods | **std** (Runes, regex) |
| Formats | JSON, CSV, TOML, base64, hex | JSON, CSV | base64/hex small; TOML later |
| Collections | set, deque, heap, sorted map | Array, Vec, List, Map | **std** (Set first) |
| Compression | gzip/zlib/zstd | none | later (or through C interop) |
| Crypto | sha256, hmac, OS random bytes, TLS | none (rand is xoshiro, not cryptographic) | sha256 + OS random small; TLS through C interop |
| Logging | levels, structured | none | small, later |
| Math and numerics | math functions, stats, linear algebra, complex, F16/BF16/F8 | strong: methods on numbers, `std/stats`, complex, F8 (matrices and GEMM are oann's) | done; a selling point |
| Data frames | pandas, polars, DataFrames.jl | none | later, after reflection (columns from a struct's fields) |

## 4. Announcement readiness beyond language features

| Item | Status |
|---|---|
| A README at the root (what olang is, hello world, install, a link to the tour) | **missing** - there is no README.md at the repository root |
| Licence file | **missing** (the user's earlier call: no licence); blocks legal use |
| Install: prebuilt binaries, or one documented `make bootstrap` with its requirements (clang 18, xz) | partial - `make bootstrap` from the seed works; no release archives |
| Platforms: Linux x86-64 | done |
| Platforms: Linux aarch64, macOS, Windows, WASM | missing (shortlist 1) |
| A tour or tutorial (Go's tour, the Rust book's first chapters): scopes, errors, generics, join/spawn | missing - SPEC.md (6,700 lines) is the only reference |
| Example programs (CLI tool, data script, HTTP fetch, parallel map, small server) | missing as a folder; the tests and bench hold real programs |
| Language reference | done - SPEC.md, with rule ids that diagnostics link to |
| Design rationale | done - PRINCIPLES.md, HISTORY.md (long; a short "why olang" page is missing) |
| Self-hosting | done - the compiler builds itself from a committed seed, with the C compiler retired |
| Test suite and fuzzers | done - corpus, checks, std tests, two fuzzers, the scope sanitizer |
| Benchmarks against C | done - `bench/` with a README; a selling point worth a published page |
| Formatter | done |
| Diagnostics, `explain RULE`, `explain FILE NAME` | done |
| Debugger (DWARF) | done; needs a page |
| LSP | missing (shortlist 12) |
| Doc comments and generator | missing |
| Package story (git imports, lock file, `-update`) | done (Go's early model); needs a page; no registry |
| Stability and versioning statement | missing (shortlist 6) |
| Compile speed stated honestly (`-quick`, incremental objects) | partial - measured in HISTORY.md, not public |
| Known limits page (unchecked index, extern, data races; long-running growth; no async; Linux only) | missing; much of the content exists in SPEC (E16e, X1a, P8b) |
| Website and playground | missing |
| Issue tracker and contribution guide | missing |

## 5. What will look unusual and needs explaining

Each of these is a deliberate choice that a newcomer will at first read as a mistake. The announcement should give
each one sentence of "why", and the tour a section.

1. **Scopes instead of a GC or a borrow checker.** Every block is an arena reclaimed in one step, a reference's type
   carries where it lives (`Node&`, `Node&x`, `&return`), and the compiler proves containment. There is no `free`, no
   RC and no lifetime parameters. The rules a user meets are where a returned value lives (O26a, which is Go's escape
   analysis done statically) and why a local cannot hold something shorter-lived. The honest limit (shortlist 3) goes
   right beside it.
2. **`&` is not an address.** No pointer type, no address-of, no references to numbers. `&` marks a reference-shaped
   type; assignment to a reference repoints.
3. **`try`, `checked` and `!`.**
   - `try` handles what fails as written.
   - `checked` adds the optional checks (overflow, bounds, conversions).
   - `!` ends the program on failure.
   - No exceptions, and inferred `?` sets as in Zig.
   - Plain indexing and arithmetic are unchecked, and integers wrap (E6c). Rust and Swift trap in debug builds, so
     this needs saying, with the reason: principle 2, and `checked` being local.
4. **No overloading, no named arguments, one constructor per struct, no struct literals.** Generics with `match T`,
   defaults and `default` take their place.
5. **Methods only where the type is declared; built-in types get methods only from the prelude.** So there are no
   extension methods; a free function is the answer. Traits are satisfied implicitly, as in Go.
6. **Text is joined by adjacency, and `$x` renders anything.** `"n is " $n "!"`, with no `{}` holes and no `+` on
   text.
7. **Words for logic and control.** `and`/`or`/`not`, `a if c else b`, `x in c`, one `for`, `:` one-line bodies, `#`
   comments, no semicolons.
8. **Capitalization exports**, members and error words included. A file's own capitalization is part of its
   interface.
9. **No shadowing anywhere**, types included. Newcomers from Rust (`let x = x.trim()`) will hit this on day one.
10. **Compile-time evaluation everywhere with no `constexpr`.** Asserts are decided while compiling, immutable globals
    are baked, and a top-level `if` on build constants replaces the preprocessor. A failing assert in code that never
    runs is a compile error, which surprises at first.
11. **Collections are handles.** A copy of a `List` or `Map` is a second name for the same collection (`Clone()`
    copies), while an `Array` value copies. A `Vec` view goes stale after growth (M19g). This is the one place where
    copying does not mean copying, so say it early.
12. **Concurrency is `join { spawn ... }` on real threads, with no async.** Data races are detected by `-race`, not
    prevented, which is Go's position, not Rust's.
13. **Modules are files, imported by path; dependencies are git URLs pinned by `olang.lock`.** There is no registry
    and no manifest.
14. **Integer literals are `I64` and float literals `F64`, and numbers widen implicitly but never narrow.** `I32(x)`
    is written, and is unchecked unless `checked`.
15. **The compiler emits LLVM IR and uses clang.** So a C toolchain is a dependency, and the default is `-O3` + LTO
    (`-quick` for development).

## Sources

Language features are cited from each language's own reference.

- Rust: <https://doc.rust-lang.org/reference/>, editions <https://doc.rust-lang.org/edition-guide/>
- Go: spec <https://go.dev/ref/spec>, the compatibility promise <https://go.dev/doc/go1compat>, `go fix`
  <https://pkg.go.dev/cmd/fix>, math/bits <https://pkg.go.dev/math/bits>
- Zig: <https://ziglang.org/documentation/master/>; the new `std.Io` and async through it:
  [Loris Cro, "Zig's new async I/O"](https://kristoff.it/blog/zig-new-async-io/),
  [0.15.1 I/O overhaul overview](https://dev.to/bkataru/zig-0151-io-overhaul-understanding-the-new-readerwriter-interfaces-30oe)
- Swift: typed throws SE-0413 <https://github.com/swiftlang/swift-evolution/blob/main/proposals/0413-typed-throws.md>,
  multi-line strings <https://docs.swift.org/swift-book/documentation/the-swift-programming-language/stringsandcharacters/>
- Kotlin: null safety <https://kotlinlang.org/docs/null-safety.html>; rich errors (KEEP-0462):
  [KotlinConf 2025 write-up](https://computas.com/blogg/exploring-rich-errors-in-kotlin-a-game-changer-from-kotlinconf-2025/)
- C#: extension members and records <https://learn.microsoft.com/dotnet/csharp/whats-new/>
- C++26 reflection (P2996) and contracts (P2900): [GCC 16.1](https://isocpp.org/blog/2026/04/gcc-16.1),
  [State of C++ 2026](https://devnewsletter.com/p/state-of-cpp-2026/), [Herb Sutter's trip reports](https://herbsutter.com/2024/11/)
- Python: PEP 750 template strings <https://peps.python.org/pep-0750/>, PEP 703 free threading
  <https://peps.python.org/pep-0703/>
- Julia: broadcasting and multiple dispatch <https://docs.julialang.org/en/v1/manual/>
- Mojo: <https://docs.modular.com/mojo/manual/>
- Odin: <https://odin-lang.org/docs/overview/> (SOA, `bit_field`, matrix types, context allocator)
- Nim: <https://nim-lang.org/docs/manual.html>, nimpy <https://github.com/yglukhov/nimpy>
- D: <https://dlang.org/spec/spec.html> (`scope(exit/failure)`, CTFE, UFCS)
- Ada/SPARK: <https://learn.adacore.com/>
- Haskell, OCaml 5 effects: <https://ocaml.org/manual/5.2/effects.html>
- F# units and computation expressions: <https://learn.microsoft.com/dotnet/fsharp/>
- Elixir/Erlang OTP: <https://hexdocs.pm/elixir/>
- TypeScript narrowing: <https://www.typescriptlang.org/docs/handbook/2/narrowing.html>
- Dart patterns and null safety: <https://dart.dev/language>
- Gleam (LSP and formatter built in): <https://gleam.run/>
- Roc: <https://www.roc-lang.org/>
- Koka (effects, Perceus): <https://koka-lang.github.io/koka/doc/book.html>
- Vale (generational references, regions): <https://vale.dev/>
- Austral (linear types, capabilities): <https://austral-lang.org/>
- Hare, V and Carbon: <https://harelang.org/>, <https://vlang.io/>, <https://github.com/carbon-language/carbon-lang>
- Lua coroutines and C API: <https://www.lua.org/manual/5.4/>
