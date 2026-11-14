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
- `display.olang` - a type rendering itself richly (Display, B23): a small table shown as HTML in a notebook; checks' `jupyter` scenario imports it.
- `weak.olang` - weak references and generational types (T2d, T13d, O8e): a list, a tree and an LRU cache with weak
  links, a generational value held by reference, and weak places reading `null` once no owning place holds their node
  (removals, a subtree cut off, an eviction, a Map that grows, a Vec's pop).
- `reclaim.olang` - reclaiming generational instances (O8e): removed nodes' slots reused while weak places to them read
  `null`, an orphan kept by a local, a node in use across the call letting go of it, a cycle and a destructor type kept.
- `reclaimtasks.olang` - a program with tasks reclaims nothing early (O8e), clean under `-race`.
- `bench.olang` - benchmarks (std/bench, B19b): run once here, measured by `olang test -bench tests/bench.olang`.
- `errsets.olang` - error types declared as types, named error sets and the error a catch clause names (T19, T19a,
  R11b, R3a), each computation baked while compiling beside the same one at run time.
- `lanes.olang` - lane-by-lane array operators, totals, lane comparisons and masks (E39), baked and decided while
  compiling beside the run time.
- `axes.olang` - subscripts by axes (`m[0:2, :]`, `m[..., 1]`, E16f) and nested literals (`Matrix[[1, 2], [3, 4]]`,
  E21) on a matrix, a cube and a generic tensor, decided while compiling beside the run time.
- `barelits.olang` - literals with no type before them (E19-E21, E27, S13h, E20): made as the type expected where they
  stand, else their own (`[1, 2]` an `Array<I64>`, `["a": 1]` a `Map<String, I64>`), beside the type-in-front form;
  generic calls, patterns, baked and decided while compiling beside the run time.
- `intwidths.olang` - integers of every width, I1 to I128 and U1 to U128 (T4a), at compile time and at run time.
- `fnref.olang` - function types reference-only (`fn&`, `fn?&`, T21), declared function types (`Handler&`, T21b) and
  arrays that may be null (`String?&`, T2c), baked and decided while compiling beside the run time.
- `attrs.olang`, `attrmod.olang` - typed attributes (G39, G40) on every declaration they take and functions reflected
  (G41): a router and a command table collected while compiling from `attrmod`'s handlers, baked beside the run time.
- `valueparts.olang` - QCE: arrays of a run-time length held by value inside values (fields, elements, payloads, type
  arguments, a constructor's by-value parameter) - stores copy in, a copy of the whole copies them, a by-value argument
  is the callee's own copy; `Map<String, V>` owns its keys. Baked and decided while compiling beside the run time.
- `handover.olang`, `inplace.olang` - D9h: value results viewing what a function is given handed over uncopied where the
  caller only reads them, copied where it keeps them; locals holding views in place of copies where nothing could tell.
  `handoverglobal.olang` - the same with a global reaching writable storage, which keeps every such view a copy.
- `fnvalues.olang` - T22a's open point 5: functions handing back what a reference argument refers to - whole, a view of
  it, through a lambda - as function values, a call through one landing where its argument lives; baked beside the run
  time.
- `unique.olang` - unique types (T13b): fresh values land by value, any other copy is a reference, a by-value parameter
  handed on at its last mention, holders and collections following their parts; baked and decided while compiling.
- `drops.olang` - destructors run where the holder lets go (O15): a by-value variable's as its block is left, a
  parameter's at the callee's end unless handed on, a holder's parts, a store over a place; the
  whole order decided while compiling beside the run time.
- `kept.olang` - a local kept past its block or loop turn is built where it is kept (O28, O17, D9i): each turn's value its
  own, read back after an arena churn; decided while compiling beside the run time.
- `keptparams.olang` - a by-value parameter kept past the call copied at entry where it is kept (O28, O14, C2g): handed
  back, given as a function value, held by the instance or a reference parameter's Vec; a match binding kept past its
  clause (S13b); read back after an arena churn, decided while compiling beside the run time.
- `nll.olang` - a reference local typed per assignment (O25i): a cursor walking a widget's parents, a list's tail
  appended through one, an option kept from a parameter's array, an element of a constant literal (T25d), versions given
  in a catch clause, read in deferred code, captured by a lambda, given in a loop and read after it; read back after an
  arena churn, a baked global and top-level asserts deciding the same while compiling.
- `fnrel.olang` - a function value carries its relations (T22a): a named function and a lambda keeping what they are
  given, held in locals, handed back by calls, chosen by a conditional, given again in a loop, an adapter held in a
  local - each call through one judged as the direct call it is; read back after an arena churn, baked globals and
  top-level asserts deciding the same while compiling.
- `viewplace.olang` - storage kept for a view (O27 as placement): a turn's text kept through views of it, a view handed
  back of what a function builds, a slice of a temporary kept in a parameter's field, a generator's views of a local it
  made, a closure over a turn's local kept in a field, a part of an instance kept past its turn; read back after an arena
  churn, a baked global and top-level asserts deciding the same while compiling.

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
