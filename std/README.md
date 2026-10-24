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
| `linalg.olang` | `Matrix<T>`, GEMM, activations, convolutions by patches |
| `utf8.olang` | Unicode code points: `Rune`, `Decode`/`Encode`, `Valid`, `Count`, `Runes` |
| `base64.olang`, `hex.olang` | RFC 4648 base64 (standard and URL-safe) and hex, strict decoding |
| `sha256.olang`, `crc32.olang` | the SHA-256 digest (`Sum`, `Hex`, a streaming `Hasher`) and the IEEE CRC-32 |
| `flags.olang` | command-line flags declared with types, defaults and help; `--help` text; `flags.Error` |
| `regex.olang` | RE2-style regular expressions, linear time (a lazy DFA and a Pike VM): `Compile`, `Matches`, `Find`, `FindAll`, `Replace`, `Split`, groups |
| `json.olang` | JSON parse into an immutable tree, and encode |
| `csv.olang` | RFC 4180 records, read and written |
| `net.olang` | blocking TCP (`Listen`, `Accept`, `Dial`, `Conn`) and UDP sockets, IPv4 and IPv6 addresses, `net.Error` |
| `http.olang` | requests by running `curl` |
| `chan.olang`, `cancel.olang` | bounded blocking channel, cancellation tokens and deadlines |
| `sync.olang` | `Mutex<T>` (reached only inside `With`), `RWLock<T>`, `Once` - no `Mutex<I64>`: a number is guarded by its atomic methods (`x.AtomicAdd(1)`), or kept in a struct a `Mutex` holds |
| `ffi.olang` | a C function called by a name chosen at run time (for `-i`) |

## Subfolders

- `prelude/` - the prelude: every file here is loaded before every program, and its types and methods are visible
  without an import. `array`, `text` (`String`), `list`, `vec`, `map`, `iterator` (the helpers and the adapters `Take`, `Skip`, `Enumerate`, `Zip`, `Chain`, `Sum`, `Min`/`Max`, `MinBy`/`MaxBy`), `hash`, `number` (the numeric traits,
  the constants `Pi`, `Euler`, `Inf`, `NaN`, and the numbers' methods: every C math function on the floats -
  `x.Sqrt()`, `y.Atan2(x)` - and `Abs`, `Min`, `Max`, `Clamp`, `Pow`, `Sqrt` on the integers), `float`, `complex`, `f8`,
  `check` (CheckError, the errors of the language's own checks), `enums` (`CaseError`, what an enum's `From` fails
  with, T17e). Only the prelude may give methods to built-in types (M19d).
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
