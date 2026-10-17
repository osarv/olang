# checks - what a test block cannot check

A `test { }` block runs inside a program that compiled. These checks are about the compiler itself: programs that
must **not** compile, whole builds, rebuilds, the code generated. They are written in olang like the rest.

| path | what it is |
|---|---|
| `checks.olang` | the driver. It runs every case and every scenario, four side by side, and reports them as tests. |
| `cases/` | about 1,250 small programs, one file each. The first lines say what the compiler must do with it. |
| `fixtures/` | files the multi-step scenarios in `checks.olang` use (a remote repository, `-D` values, goldens, ...). |

## A case

The first lines of a file in `cases/` are a header:

```
# check: fail <text>    must fail to build, with <text> in the diagnostics
# also: <text>          and with <text> too (any number of these)
# never: <text>         and without <text> anywhere in them (any number)
# check: build          must build
# check: run            must build, and the program must exit 0
# flags: <arguments>    passed to the compiler, e.g. -D Level=3 or -d -s
```

Most cases are `fail` cases: the expected text names the rule and says what to write instead. To add a check, add a
file. No other edit is needed.

## A scenario

A scenario is a function in `checks.olang` that drives the compiler through several steps and reports into a
`report` (`r.expect(ok, what, dir)`). The names are listed in `Scenarios`; one missing from there or from the
tests is reported as a failure. Examples: a remote fetch into a scratch cache, `-D` rebuild staleness, object
naming, `-i` against `-b`, the scope sanitizer, the fuzzer on fixed seeds.

## Running

```
make test                              # runs it with the rest of the suite
build/out test checks/checks.olang       # only this
```

Every check works in its own directory under `build/checks/`, so nothing touches the tree. It uses the compiler in
`$OLANG`, else `build/out`. The run needs several GB of memory (the largest scenario, `agree`, about 3.5 GB).

Part of `make verify`. The messages the cases expect are produced by `bootstrap/errmsg.c`;
`compiler/goldens/diag.txt` is captured from the `fail` cases.
