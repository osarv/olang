# std - the standard library

Ordinary olang on top of `extern fn` (SPEC §11). No module has a privilege the language does not give. Imports are
written `import "std/name"`; a module is one file, and a directory only groups files (M22).

## Modules

| file | what it is |
|---|---|
| `io.olang` | file descriptors, `Print`/`Println`, buffered `Writer`, `Lines` |
| `os.olang` | arguments, environment, files and directories, `Exec`/`Start` without a shell, `Exit` |
| `filepath.olang` | path text: `Dir`, `Base`, `Ext`, `Join`, `Clean`, `Rel` |
| `time.olang` | monotonic and wall clocks |
| `math.olang` | the C math functions over the four float types, and constants |
| `rand.olang` | seeded xoshiro256** generator |
| `stats.olang` | sum, mean, variance, percentiles, histograms |
| `linalg.olang` | `Matrix<T>`, GEMM, activations, convolutions by patches |
| `json.olang` | JSON parse into an immutable tree, and encode |
| `csv.olang` | RFC 4180 records, read and written |
| `http.olang` | requests by running `curl` |
| `chan.olang`, `cancel.olang` | bounded blocking channel, cancellation tokens and deadlines |
| `ffi.olang` | a C function called by a name chosen at run time (for `-i`) |

## Subfolders

- `prelude/` - the prelude: every file here is loaded before every program, and its types and methods are visible
  without an import. `array`, `text` (`String`), `list`, `vec`, `map`, `pair`, `iterator`, `hash`, `float`,
  `complex`, `f8`, `builtin` (the language's own errors). Only the prelude may give methods to built-in types (M19d).
  `prelude/tests/` holds the tests of some of its files; they are compiled only in test builds.
- `runtime/` - the runtime as LLVM IR text: `runtime.ll` (arena allocator, chunk pools, regions, worker cache),
  `san.ll` (scope sanitizer, linked only under `-s`), `dyncall.ll` (calls by name over libffi). The compiler
  fills it in for each build (`bootstrap/runtime.c`).

## Tests

Each module has `test { }` blocks.

```
build/out -t std/json.olang          # one module
make test                            # all of std, with the rest of the suite
```
