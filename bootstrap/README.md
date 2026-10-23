# bootstrap/ - stage 0

The olang compiler written in C. It is **stage 0** of the bootstrap: the compiler that exists without any olang
compiler, built from source with nothing but a C compiler. The olang compiler in `compiler/` (being written; its design
is `compiler/DESIGN.md`) is built by it first, and then by itself.

What the language means is `SPEC.md`; why is `CLAUDE.md` and `HISTORY.md`. The files here are one module each:

| file | what it does |
|---|---|
| `token.c` | the tokenizer |
| `syntax.c` | the parser, and the token-level evaluator of top-level conditions (B9a) |
| `semantic.c` | name resolution, type checking, generics, the scope checker (§8) |
| `comptime.c` | the compile-time evaluator (K1), which is also `-i` |
| `codegen.c` | LLVM IR for a module |
| `runtime.c` | reads the runtime (`std/runtime/*.ll`): fills it in for a build, and derives what a module carries of it |
| `errmsg.c` | diagnostics, and `-e RULE` |
| `main.c` | the driver: modes, flags, objects, clang and the link |
| `util.c` | strings, lists, running programs |
| `oracle/` | the C oracles - the tokenizer's stream, the parser's tree, the loader's module graph, the checker's layouts - from which `compiler/goldens/` is captured |
| `twins.olang` | tests (in `make test`) holding `errmsg.h`'s table to `compiler/msgs.olang`, its source: id, name, rule and text; and every diagnostic call here to its message |

## Building it

```
make            # build/out, the development build (-g): what make test, make verify and checks use
make stage0     # build/stage0, the same sources at -O2
```

Both need gcc, libffi and libdl; the compiler then needs clang (18 or later) on `PATH` to build programs. The binary
finds the standard library at `<binary>/../std` (or `$OLANG_STD`) - the runtime's IR included, `std/runtime` - and
the specification at `<binary>/../SPEC.md`, so it stays in `build/`.

## Fixes only, once the port starts

When the port begins, this directory takes bug fixes and nothing else - soundness fixes included, features never: a
feature is built once, in olang, in `compiler/`. Once stage 1 passes the suite and stage 2 equals stage 3 (milestone
M12 of DESIGN.md section 6), `bootstrap/` stops changing altogether, and the checklist's "checker and codegen" and
"compile-time evaluator" mean the modules in `compiler/`.

## Re-bootstrapping

The compiler is no longer rebuilt from here. `seed/` holds the olang compiler's own LLVM IR, written by the compiler of
itself, and `make bootstrap` rebuilds the compiler from it with clang alone - the seed made a compiler, which builds
`compiler/olang.olang`, which builds it again, the last two compared byte for byte (`seed/README.md`,
`compiler/DESIGN.md` section 5). No chain of intermediate compilers is kept (the user's decision, 2026-10-18), so
`bootstrap/CHAIN` is gone. Once the seed has rebuilt the compiler from nothing, this directory is removed from the
tree, its last commit tagged `stage0-final` (QAL).

## Removing this directory

Nothing outside `bootstrap/` needs stage 0 to run once `OLANG` names the port: the comparisons with stage 0 read
`compiler/goldens/`, the message table's source is `compiler/msgs.olang`, and every tool, script and test falls back to
`build/out` only where it is built, else to `build/olang`. `make verify OLANG=build/olang` runs the whole verify that
way - it builds `build/olang` by `make bootstrap`'s steps, and with stage 0 out of the run (the makefile's `STAGE0`) no C
oracle is built or read, so a file edited since its golden fails as it will once this directory is gone. The deletion
is then one commit:

1. **Before it**: `make verify` (stage 0) and `make verify OLANG=build/olang` both pass on the commit to delete from, and
   the goldens are current - `make tokgold astgold modgold` (and `drvgold rungold diaggold layoutgold` if a message, a
   run or a layout changed since they were captured) from stage 0, committed. `git tag stage0-final` on that commit, and
   push the tag.
2. **The commit**, nothing else in it:
   - `git rm -r bootstrap/` - the C sources, `oracle/`, `twins.olang` (its tests go with what they compare), this file.
   - the makefile: `OLANG ?= build/olang`; remove `CC`, `CFLAGS`, `SRC`, `OBJ`, `STAGE0_CFLAGS`, `STAGE0_OBJ`, `DEP`
     and `-include $(DEP)`, the rules for `build/obj/%.o`, `build/out` (and `build: build/out`), `build/tokdump`,
     `build/astdump`, `build/modgraph`, `build/layoutdump`, `build/stage0.obj/%.o`, `build/stage0` and `stage0`; `STAGE0`
     and what reads it (`TOKDUMP`, `ASTDUMP`, `MODGRAPH` and their prerequisites, `GOLD_FROM ?= port`, `GOLD_OLANG ?=
     build/compiler_olang`, `SEED_OLANG ?= build/olang`); `layoutgold` always `-port`; `$(wildcard bootstrap/*.olang)`
     in `OLANG_TESTS`; the `.PHONY` names that went, and the comments naming build/out or stage 0.
   - the fallbacks that can no longer fire (inert, so optional): `"build/out" if os.Exists("build/out") else` in
     checks/checks.olang, fuzz/fuzz.olang, std/http.olang, compiler/tools/diaggold.olang and bench/benchlib.olang (with its
     `bootstrap/main.c` test), `Built("build/out")` in compiler/tools/toolkit.olang, `RepoRoot()/build/out` in
     tools/srcmask.olang; the oracle paths of compiler/tools/tokdiff, astdiff and modgraph (inert without them).
   - CLAUDE.md's checklist (item 3 names `bootstrap/comptime.c`: the evaluator is `compiler/eval.olang`) and the
     documents describing stage 0 as present (HISTORY.md, "Port M12: the stage-0 comparisons stored", item 7).
3. **After it**: `make verify` passes, now with the port.
