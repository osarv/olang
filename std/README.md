# std - the standard library

Ordinary olang on top of the C library's headers, imported as modules (SPEC §11, X17). No module has a privilege the language does not give. Imports are
written `import "std/name"`; a module is one file, and a directory only groups files (M22).

## Modules

| file | what it is |
|---|---|
| `io.olang` | file descriptors, `Print`/`Println`, buffered `Writer`, `Lines` |
| `os.olang` | arguments, environment, files and directories, `Exec`/`Start` without a shell, `Exit` |
| `filepath.olang` | path text: `Dir`, `Base`, `Ext`, `Join`, `Clean`, `Rel` |
| `time.olang` | monotonic and wall clocks, `Duration` and `Sleep`, `Date` with RFC 3339 `Format`/`Parse` |
| `rand.olang` | seeded xoshiro256** generator |
| `list.olang` | `List<T>`: a growable sequence that never moves what it stores (chunks doubling in size) - for when a `Vec`'s growth copying its elements is what is to be avoided; `list.Of(a)`, `list.From(it)`, `list.Error`, `list.Iter` |
| `set.olang`, `deque.olang`, `heap.olang` | `Set<T>` over Map, a double-ended ring `Deque<T>`, a binary `Heap<T>` ordered by a function |
| `pair.olang` | `Pair<A, B>`: two values of any types held as one (a map key when both are) |
| `stats.olang` | mean, variance, percentiles, histograms (sums, minima and maxima are the arrays' own, E39) |
| `arith.olang` | arithmetic that fails instead of wrapping: `try arith.Add(a, b)`, `Sub`, `Mul`, `Div`, `Rem`, `Neg`, shifts, `Pow`, and `Checked<T>` whose operators are these - `arith.Error` |
| `utf8.olang` | Unicode code points: `Rune`, `Decode`/`Encode`, `Valid`, `Count`, `Runes` |
| `base64.olang`, `hex.olang` | RFC 4648 base64 (standard and URL-safe) and hex, strict decoding |
| `sha256.olang`, `crc32.olang` | the SHA-256 digest (`Sum`, `Hex`, a streaming `Hasher`) and the IEEE CRC-32 |
| `flags.olang` | command-line flags declared with types, defaults and help; `--help` text; `flags.Error` |
| `regex.olang` | RE2-style regular expressions, linear time (a lazy DFA and a Pike VM): `Compile`, `Matches`, `Find`, `FindAll`, `Replace`, `Split`, groups |
| `json.olang` | JSON parse into an immutable tree, and encode; `Encode`/`Decode<T>` of any value by reflection |
| `csv.olang` | RFC 4180 records, read and written |
| `net.olang` | blocking TCP (`Listen`, `Accept`, `Dial`, `Conn`) and UDP sockets, IPv4 and IPv6 addresses, names resolved (`Lookup`, `Resolve`), `net.Error` |
| `http.olang` | requests by running `curl` |
| `chan.olang`, `cancel.olang` | bounded blocking channel, cancellation tokens and deadlines |
| `sync.olang` | `Mutex<T>` (reached only inside `With`), `RWLock<T>`, `Once` - no `Mutex<I64>`: a number is guarded by its atomic methods (`x.AtomicAdd(1)`), or kept in a struct a `Mutex` holds |
| `fuzz.olang` | fuzz targets: `fuzz.Check(fn(data Array<U8>&) { })`, run per input by `olang test -fuzz NAME FILE` (libFuzzer; `-fuzztime`, `-sanitize`), and on every saved input in `testdata/fuzz/SLUG/` by a plain `olang test` - which also takes words naming the tests to run (`olang test FILE Target`, B7a) (B19) |
| `prop.olang` | property tests: `prop.Check(fn(xs Array<I64>&, p Point) { assert ... }, cases = 100)` - values made by reflection, cases in child processes, a failure shrunk, printed, saved and replayed; driven by the fuzzer's bytes under `-fuzz` (B19a) |
| `ffi.olang` | a C function called by a name chosen at run time (for `-i`) |

## Calling C: a header import, an extern block, or `std/ffi`

Call C through its header whenever one declares the function: `import c "unistd.h"`, `import z "zlib.h" link "z"`
(SPEC X17) - the declarations are translated while compiling, the compiler checks every call against them, the call
costs what C's does, and numbers, Bools, arrays, C's structs (at their exact size), handles, `void *` (`CVoid?&`) and
callbacks (`export fn`s) all cross; `import fast "fast.c"` compiles C of your own into the program, inlined both ways.
Where no header exists, `extern link "name" { fn ... type Handle }` declares the functions by hand (`olang bindgen
header.h` writes such a block from a header), and `extern { }` declares what is linked anyway (the runtime's
`__olang_` functions). `std/ffi` is for the rest: a function whose name, or whose kinds of arguments, are known only
while the program runs - what an interpreter needs. It looks the function up and builds the call each time, passes
only numbers and arrays of them, and links libffi into the program that imports it.

## Names

A name never repeats its module's: `io.Error`, not `io.IoError`; `os.Error`, `json.Error`, `csv.Error`, `stats.Error`,
`rand.Error`, `http.Error`, `chan.Error`, `ffi.Error` - the module is already written before the dot. Two exceptions:

- a module named for its main type keeps that type's name (`chan.Chan`, `json.Json`, `set.Set`, `heap.Heap`, `rand.Rand`,
  `list.List`, as Go's);
- a module with several error types names the others by subject (`http.HeaderError`,
  `regex.SyntaxError`), and the one for the module as a whole is still `Error`.

The prelude is the exception to the rule, since its names are bare everywhere (`VecError`, `MapError`, `TextError`,
`ArrayError`, `NumberError`, `CaseError`, `ArgumentError` keep their prefix) - and so it must never declare a plain `Error`, which would collide with
every module's own. `tools/stutter_rename.olang` renames the old names in other code (`olang fix` runs it).

## Subfolders

- `prelude/` - the prelude: every file here is loaded before every program, and its types and methods are visible
  without an import. It holds the built-in types' methods, the protocol traits and errors, and three collections - `vec`
  (`Vec`, the growable array), `map` and `text`'s `StringBuilder`; every other container is a module above (QZ2).
  `array`, `text` (`String`), `vec`, `map`, `iterator` (the helpers - `Map`, `Filter` and `ToVec` building a Vec - and the adapters `Take`, `Skip`, `Enumerate`, `Zip`, `Chain`, `TakeWhile`, `SkipWhile`, `StepBy`, `FlatMap`, `Sum`, `Min`/`Max`, `MinBy`/`MaxBy`, and `Partition` into two Vecs; `Reversed` for a Vec or any type with `At` and `Len`; an array's `Reversed`, `Windows`, `TakeWhile`/`SkipWhile` views and `Partition`), `hash`, `number` (the numeric traits,
  the constants `Pi`, `Euler`, `Inf`, `NaN`, and the numbers' methods: every C math function on the floats -
  `x.Sqrt()`, `y.Atan2(x)` - and `Abs`, `Min`, `Max`, `Clamp`, `Pow`, `Sqrt` on the integers), `float`, `complex`, `f8`,
  `argument` (`ArgumentError`, what a call whose contract's condition is false fails with, D17), `enums`
  (`CaseError`, what an enum's `From` and an `as` of another case fail with, T17e, E32). Only the prelude may give methods to built-in types (M19d).
  `prelude/tests/` holds the tests of some of its files; they are compiled only in test builds.
- `runtime/` - the runtime as LLVM IR text: `runtime.ll` (arena allocator, chunk pools, regions, worker cache),
  `san.ll` (scope sanitizer, linked only under `-s`), `prof.ll` (the sampling profiler, linked only into an
  `olang profile` build, B20), `dyncall.ll` (calls by name over libffi). The compiler
  fills it in for each build (`compiler/runtime.olang`).

## Tests

Each module has `test { }` blocks.

```
build/olang test std/json.olang          # one module
make test                            # all of std, with the rest of the suite
```
