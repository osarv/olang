# std - the standard library

Ordinary olang on top of `extern fn` (SPEC §11). No module has a privilege the language does not give. Imports are
written `import "std/name"`; a module is one file, and a directory only groups files (M22).

## Modules

| file | what it is |
|---|---|
| `io.olang` | file descriptors, `Print`/`Println`, buffered `Writer`, `Lines` |
| `os.olang` | arguments, environment, files and directories, `Exec`/`Start` without a shell, `Exit` |
| `filepath.olang` | path text: `Dir`, `Base`, `Ext`, `Join`, `Clean`, `Rel` |
| `time.olang` | monotonic and wall clocks, `Duration` and `Sleep`, `Date` with RFC 3339 `Format`/`Parse` |
| `rand.olang` | seeded xoshiro256** generator |
| `set.olang`, `deque.olang`, `heap.olang` | `Set<T>` over Map, a double-ended ring `Deque<T>`, a binary `Heap<T>` ordered by a function |
| `pair.olang` | `Pair<A, B>`: two values of any types held as one (a map key when both are) |
| `stats.olang` | sum, mean, variance, percentiles, histograms |
| `arith.olang` | arithmetic that fails instead of wrapping: `try arith.Add(a, b)`, `Sub`, `Mul`, `Div`, `Rem`, `Neg`, shifts, `Pow`, and `Checked<T>` whose operators are these - `arith.Error` |
| `linalg.olang` | `Matrix<T>`, GEMM, activations, convolutions by patches |
| `utf8.olang` | Unicode code points: `Rune`, `Decode`/`Encode`, `Valid`, `Count`, `Runes` |
| `base64.olang`, `hex.olang` | RFC 4648 base64 (standard and URL-safe) and hex, strict decoding |
| `sha256.olang`, `crc32.olang` | the SHA-256 digest (`Sum`, `Hex`, a streaming `Hasher`) and the IEEE CRC-32 |
| `flags.olang` | command-line flags declared with types, defaults and help; `--help` text; `flags.Error` |
| `regex.olang` | RE2-style regular expressions, linear time (a lazy DFA and a Pike VM): `Compile`, `Matches`, `Find`, `FindAll`, `Replace`, `Split`, groups |
| `json.olang` | JSON parse into an immutable tree, and encode |
| `csv.olang` | RFC 4180 records, read and written |
| `net.olang` | blocking TCP (`Listen`, `Accept`, `Dial`, `Conn`) and UDP sockets, IPv4 and IPv6 addresses, names resolved (`Lookup`, `Resolve`), `net.Error` |
| `http.olang` | requests by running `curl` |
| `chan.olang`, `cancel.olang` | bounded blocking channel, cancellation tokens and deadlines |
| `sync.olang` | `Mutex<T>` (reached only inside `With`), `RWLock<T>`, `Once` - no `Mutex<I64>`: a number is guarded by its atomic methods (`x.AtomicAdd(1)`), or kept in a struct a `Mutex` holds |
| `ffi.olang` | a C function called by a name chosen at run time (for `-i`) |

## Calling C: `extern fn` or `std/ffi`

Call C through `extern fn` (SPEC §11) whenever the function is known when the program is written: the compiler checks
every call against the prototype, the call costs what C's does, and numbers, Bools, arrays, extern types (`extern type
Db`, a handle C lays out), plain-data structs by reference or by value and callbacks (`export fn`s) all cross. `link
"name"` beside the declarations links the library, and `olang bindgen header.h` writes the declarations from a C
header. `std/ffi` is for the rest: a function whose name, or whose kinds of arguments, are known only while the program
runs - what an interpreter needs. It looks the function up and builds the call each time, passes only numbers and
arrays of them, and links libffi into the program that imports it.

## Names

A name never repeats its module's: `io.Error`, not `io.Error`; `os.Error`, `json.Error`, `csv.Error`, `stats.Error`,
`rand.Error`, `http.Error`, `chan.Error`, `ffi.Error` - the module is already written before the dot. Two exceptions:

- a module named for its main type keeps that type's name (`chan.Chan`, `json.Json`, `set.Set`, `heap.Heap`, `rand.Rand`,
  as Go's `list.List`);
- a module with several error types names the others by subject (`linalg.ShapeError`, `linalg.ActivationError`,
  `http.HeaderError`), and the one for the module as a whole is still `Error`.

The prelude is the exception to the rule, since its names are bare everywhere (`ListError`, `MapError`, `TextError`,
`ArrayError`, `NumberError`, `CaseError`, `ArgumentError` keep their prefix) - and so it must never declare a plain `Error`, which would collide with
every module's own. `tools/stutter_rename.olang` renames the old names in other code (`olang fix` runs it).

## Subfolders

- `prelude/` - the prelude: every file here is loaded before every program, and its types and methods are visible
  without an import. `array`, `text` (`String`), `list`, `vec`, `map`, `iterator` (the helpers and the adapters `Take`, `Skip`, `Enumerate`, `Zip`, `Chain`, `Sum`, `Min`/`Max`, `MinBy`/`MaxBy`), `hash`, `number` (the numeric traits,
  the constants `Pi`, `Euler`, `Inf`, `NaN`, and the numbers' methods: every C math function on the floats -
  `x.Sqrt()`, `y.Atan2(x)` - and `Abs`, `Min`, `Max`, `Clamp`, `Pow`, `Sqrt` on the integers), `float`, `complex`, `f8`,
  `argument` (`ArgumentError`, what a call whose contract's condition is false fails with, D17), `enums`
  (`CaseError`, what an enum's `From` and an `as` of another case fail with, T17e, E32). Only the prelude may give methods to built-in types (M19d).
  `prelude/tests/` holds the tests of some of its files; they are compiled only in test builds.
- `runtime/` - the runtime as LLVM IR text: `runtime.ll` (arena allocator, chunk pools, regions, worker cache),
  `san.ll` (scope sanitizer, linked only under `-s`), `dyncall.ll` (calls by name over libffi). The compiler
  fills it in for each build (`compiler/runtime.olang`).

## Tests

Each module has `test { }` blocks.

```
build/olang test std/json.olang          # one module
make test                            # all of std, with the rest of the suite
```
