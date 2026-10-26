# tests/

The language's main regression suite: ordinary olang programs whose `test { }` blocks
(and, for one file, whose `main`) pin down what olang means. The compiler-level checks that a
test block cannot make (programs that must fail to compile, whole builds) live in
`checks/`; the standard library's own tests sit beside its modules in `std/`.

## Files

- `shared.olang` - the big test file. Foundational types and functions with no imports,
  and most of the suite's tests. The base of this directory's import graph.
- `worker.olang` - cross-module tests: it imports `shared`, `Base` and `runner`, and
  `runner` imports it back, forming a deliberate import cycle.
- `runner.olang` - the other half of that cycle. It has a `main`, and `make verify`
  builds it as a real program with `-b` and runs the binary, which exercises the
  production compile path as well as the tests.
- `Base.olang`, `Lib.olang` - small modules imported by the files above (`Base` is
  re-exported through `worker`, to test transitive re-export). Their capital
  letters are deliberate: a file's capitalization is part of its interface (M4), so
  an importer's alias is public and can be re-exported.
- `geom/` - `rect.olang` and `measure.olang`, two modules that import each other,
  imported by `runner`.
- `any.olang` - run-time trait values (`any Trait&`, T32-T34).
- `errsets.olang` - error types declared as types, named error sets and the error a catch clause names (T19, T19a,
  R11b, R3a), each computation baked while compiling beside the same one at run time.
- `lanes.olang` - lane-by-lane array operators, totals, lane comparisons and masks (E39), baked and decided while
  compiling beside the run time.
- `intwidths.olang` - integers of every width, I1 to I128 and U1 to U128 (T4a), at compile time and at run time.

Imports are relative to the importing file. A module's identity is its path from the
working directory (M22), so these are `tests/shared`, `tests/geom/rect` and so on.

## Running them

From the repository root:

- `make test` - every `test { }` block in the repository, these files included, several files at a time
  (`PARALLEL=1` one at a time); the files that failed are named at the end.
- `build/olang test tests/shared.olang` - one file's tests.
- `make run` - build `tests/runner.olang` as a program; `make verify` then runs `build/tests_runner`.
- `make quick` - the edit-test loop: the whole suite (tests, checks, the runner, the port's diffs) on the compiler
  already built, rebuilt once by itself when its source changed. About three minutes.
- `make verify` - the full check before calling a change done, the gate before every merge: `make quick`'s suite after a
  clean build and the bootstrap from the seed.
- `make race`, `make scopesan` - the same suite under ThreadSanitizer and the scope
  sanitizer. They are not part of `verify`.
