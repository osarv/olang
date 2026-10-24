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
# check: run            must build, and the program must exit 0, printing what compiler/goldens/run.txt stores
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
build/olang test checks/checks.olang       # only this
CHECKS_TIMES=t.txt build/olang test checks/checks.olang   # and write how long each check took, longest first
```

Every check works in its own directory under `build/checks/`, so nothing touches the tree. It uses the compiler in
`$OLANG`, else `build/olang`. The run needs several GB of memory (the largest scenario, `agree`, about 3.5 GB).

Part of `make verify` and `make quick`, where it is the longest part: it starts first and finishes last. The scenarios are
queued longest first, as `CHECKS_TIMES` measured them. The messages the cases expect are produced by `compiler/msgs.olang`;
`compiler/goldens/diag.txt` is captured from the `fail` cases, and `compiler/goldens/run.txt` holds what each `run`
case printed under stage 0 (`make rungold` captures it again; a case it does not hold is held to its status alone).
