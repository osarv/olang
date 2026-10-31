# compiler - the self-hosted olang compiler

The olang compiler written in olang, in progress. `DESIGN.md` is the design: architecture, grammar decisions,
the order of work (M1, M2, ...), acceptance for each step, and the bootstrap. The C compiler that came first, stage 0, is
removed (tagged `stage0-final`; `git checkout stage0-final -- bootstrap` brings it back); its output is kept in `goldens/`,
the reference for behaviour (diagnostics, edge cases, test results).
`SPEC.md` says what olang means.

Built so far: the front end (source, tokens, parser, diagnostics, loader, name resolution) and the type table. The
typed core and the MIR are written as contracts. Checking (`check.olang`), the scope pass (`scope.olang`) and lowering
(`lower.olang`, which reads the scope pass's placement where it is given, else a stand-in) are in progress, and so is
emission (`emit.olang`): the pipeline writes one LLVM object per module (and one for the root's instances), which
clang compiles and links with the runtime the port fills in (`make emitdiff` compares whole programs with stage 0's); and evaluation (`eval.olang`, `interp.olang`), which runs what lowering makes -
while compiling (B9c, S8b, S18c) and as `olang interpret` (`make evaldiff`). The driver (`olang.olang`,
`build/compiler_olang`) builds, runs, tests, compiles and interprets through the pipeline, with the runtime filled in
by `runtime.olang`; built by the C compiler first, it builds itself (`build/compiler_olang build -output build/stage1
compiler/olang.olang`, M11), and `make bootstrap` rebuilds it from nothing but the seed, its own IR
(`seed/`, written by `tools/seed.olang` - `make seed`). The command line is stage 0's (`build`, `compile`, `test`, ...).

## Modules (one file per pass)

| file | what it does |
|---|---|
| `source.olang` | a source file: text, and line starts for diagnostics |
| `token.olang`, `scan.olang` | tokens as spans, and the hand-written scanner |
| `ast.olang`, `parse.olang` | the syntax tree (recursive enums), recursive descent plus Pratt expressions |
| `msgs.olang` | every diagnostic, one function each - the table's source, edited by hand |
| `diag.olang` | collecting, ordering and rendering diagnostics, `explain RULE` |
| `cond.olang` | build constants and top-level conditions (B9, B10) |
| `fetch.olang` | remote imports and the lock file (M23) |
| `load.olang` | the program's modules: root, prelude, imports |
| `names.olang` | declaration tables and name resolution |
| `types.olang`, `generic.olang` | interned types and layouts; instances, unification, constraints |
| `typed.olang`, `mir.olang` | the typed core language and the mid-level IR (contracts) |
| `check.olang` | the checker: the resolved tree elaborated into the typed core (M5b/M5c, in progress) |
| `definit.olang` | D13d: whether a local or field with no value is read before every path assigns it, judged structurally as D10a judges leaving |
| `free.olang` | early freeing (O8d, docs/memory.md): which places are the only holders of what they hold, so a let-go frees at once; the `-memory` report; `x.Destroy()` (C9b) |
| `scope.olang` | section 8: scope terms, obligations over the call graph's components, the O rules, placement (M6, in progress) |
| `views.olang` | M19g: a Vec's view used after the same Vec may have grown, from summaries over the call graph's components and a dataflow walk of each body, once a program has checked cleanly |
| `lower.olang` | lowering: each typed body, helper, adapter and module initialization made a MIR function (M7, in progress) |
| `eval.olang` | the MIR abstract machine (M8): allocations, scopes and K1's refusals, while compiling or running |
| `interp.olang` | evaluation in the pipeline: the build's conditions and asserts decided, a program's main or tests run |
| `explain.olang` | `olang explain FILE NAME` (B11b): one top-level item as the compiler sees it - signature, inferred errors, obligations, a type's members, a global's baked value |
| `doc.olang` | doc comments (L4b), read from the text by a declaration's span; `olang doc` (B14): a module's documentation as text or HTML |
| `session.olang` | the front end held for a tool: an analysis with an editor's unsaved text standing in for files, what a name at an offset is, symbols, completion, the processes and message framing the servers share |
| `lsp.olang` | `olang lsp` (B15): the Language Server Protocol, each analysis in a forked worker |
| `mcp.olang` | `olang mcp` (B16): the Model Context Protocol - check, explain, doc, format, test as tools |
| `emit.olang` | MIR written as LLVM IR text, one object per module - each module's, the root's instances', the root's with main or the harness (M9, in progress) |
| `cabi.olang` | the C calling conventions (X11): how a plain-data struct crosses to C by value on x86-64 (System V) and AArch64 (AAPCS64), as clang passes it |
| `bindgen.olang` | a C import translated (X17-X19: the declarations clang reads, macros, the C to compile beside), and `olang bindgen HEADER.h` (X16) writing them down |
| `fix.olang` | `olang fix` (B17): the migration tools of `tools/`, built into the cache and run over the files in the order the changes were made |
| `profile.olang` | `olang profile` (B20): the program built with the runtime's sampler (`std/runtime/prof.ll`) and run, its samples read and named by `llvm-symbolizer`, the report and the HTML flame graph |
| `fmt.olang` | the formatter (B13): the layout, over the scanner's tokens, and `olang format` over files |
| `unparse.olang` | a syntax tree written back as source: the formatter's held branches, `dump roundtrip` |
| `runtime.olang` | the runtime's IR (`std/runtime/*.ll`) filled in for a build, as stage 0 fills it |
| `target.olang` | the machine a build is for (B12): clang asked, without clang for `interpret`; which clang (B12d: `OLANG_CLANG`, a release's own, the newest of LLVM 20, 19, 18 on PATH); another architecture's C library and emulator (B12a) |
| `build.olang` | objects named by their content, compiled side by side, the link, the modes, over a `Frontend` trait |
| `olang.olang` | the driver: the command line in words (B1), as stage 0 reads it, and the passes behind it |

## Subfolders

- `tools/` - the acceptance tools (below), all olang programs (the shell scripts they began as are gone):
  `tokdiff`, `astdiff`, `namesdiff`, `layoutdiff` and `modgraph` compare the self-hosted passes with what stage 0 gave,
  as `goldens/` stores it (each tool's `-capture`, `layoutgold`, `diaggold_capture` and `rungold` capture the goldens
  again, from the port), and `toolkit.olang` is what they share
  (running a program without a shell, reading a tool's output as rows, a scratch directory, `diff`). Each is built and
  run by its make target (`make tokdiff`), or by hand from the repository root: `build/olang build
  compiler/tools/tokdiff.olang && build/compiler_tools_tokdiff [FILE...]`. Also `dump.olang` (prints what the passes
  make of a file), `checkdump.olang` (what the checker says of a program), `checkdiff.olang` (the
  checker against stage 0's goldens), `scopedump.olang` (what the scope pass says of a program, `-plan` for its
  placement), `scopediff.olang` (the scope pass against stage 0's goldens), `drvdiff.olang` (the driver's command lines
  and whole builds against stage 0's), `lowerdump.olang` (every function of a program lowered and verified, `-mir` to dump, `-standin`
  for the placement of before the scope pass), `emitdump.olang` (a program written as LLVM IR), `emitdiff.olang`
  (programs built by stage 0 and by the pipeline, run, and their outcomes compared), `evaldump.olang` (a program or its
  tests run by the evaluator), `evaldiff.olang` (stage 0's runs against the evaluator's),
  `consistency.olang` (the parts that must agree, held to each other: `make consistency`, DEPENDENTS.md), `seed.olang` (writes the bootstrap seed, `make seed` - `seed/README.md`), `diaggold.olang`.
- `goldens/` - what stage 0 gave, captured: `drv.txt` (the driver's command lines and whole builds), `run.txt` (the
  corpus's and std's test runs and the checks' run cases, for emitdiff and evaldiff), `tokens.txt`/`tokens.full.txt` and
  `ast.txt`/`ast.full.txt` (a hash per file of the C tokenizer's stream and the C parser's tree, whole for small files
  with errors - a file edited since is stale, and `make tokgold astgold` captures it again from the port), `modgraph.txt` (module
  graphs per root), `diag.txt` (diagnostics per checks case), `layout.txt` and
  `layout.deferred` (type layouts per program).
- `testdata/lex/` - small inputs for the scanner's tests.

## Running

```
build/olang test compiler/scan.olang        # the tests of one module
make test                               # every module's tests, with the rest of the suite
make tokdiff       # the scanner's tokens equal the C tokenizer's, on every file of the repository
make astdiff       # the parser's trees and syntax errors equal the C parser's; each tree round-trips
make namesdiff     # load and name errors equal stage 0's, on every checks case
make layoutdiff    # every type's size, alignment and offsets equal stage 0's
make modgraph      # the module graph equals stage 0's, from every root program
make diagtest      # diagnostics (msgs, diag) against the goldens
make layoutgold    # capture layout.txt again from the port
make diaggold      # capture diag.txt again from the port
make drvgold       # capture drv.txt again; rungold run.txt (minutes); tokgold, astgold, modgold the rest
                   # (all from the port; GOLD_OLANG names its driver)
make fmtdiff       # every file formatted reads back as the same tree, keeps its comments, and is its own layout
make checkdiff     # the checker's first errors equal stage 0's on refused cases; accepted programs check clean
make scopediff     # the scope pass's first errors equal stage 0's on cases refused by section 8; accepted programs are clean
make drvdiff       # the driver says what stage 0 says: command lines decided before code generation, and whole builds
make lowerdump     # every body and helper of the corpus and the checks' run cases lowered to MIR and verified
make emitdiff      # the corpus and std's tests built through emit, run, and each test's outcome compared with stage 0's
make evaldiff      # the corpus, std's tests and the checks' run cases run by the evaluator, compared with stage 0's runs
```

The `*diff` targets build `build/compiler_tools_dump` first. `make verify` and `make quick` run tokdiff, astdiff,
namesdiff, layoutdiff, fmtdiff and drvdiff beside the tests, with the compiler `make bootstrap` installs
(`OLANG ?= build/olang`).

## Platforms (SPEC B12-B12d)

```
OLANG_CLANG=clang-20 make quick    # the suite with another LLVM (18, 19 and 20 all pass it)
make cross                         # corpus, std and checks cases built for aarch64, run under qemu-user
make release                       # build/release/olang-VERSION-ARCH-linux.tar.xz with clang bundled, then releasetest
```

`make cross` needs clang 19 or newer (LLVM 18 cannot build the runtime's BF16 code for AArch64), the cross C library
and qemu-user - on Ubuntu 24.04: `apt-get install clang-20 lld-20 libclang-rt-20-dev libc6-dev-arm64-cross
libgcc-13-dev-arm64-cross gcc-aarch64-linux-gnu qemu-user-static` (`CROSS_TARGET` names another triple,
`OLANG_EMULATOR` another emulator, `OLANG_SYSROOT` another C library). `make release` bundles `RELEASE_LLVM`'s clang
(default `/usr/lib/llvm-20`, else 19); docs/install.md is the release's README.
