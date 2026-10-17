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
| `runtime.c` | the runtime: the LLVM IR every object carries beside its module's code |
| `errmsg.c` | diagnostics, and `-e RULE` |
| `main.c` | the driver: modes, flags, objects, clang and the link |
| `util.c` | strings, lists, running programs |

## Building it

```
make            # build/out, the development build (-g): what make test, make verify and checks use
make bootstrap  # build/stage0, the same sources at -O2: the compiler a bootstrap starts from
```

Both need gcc, libffi and libdl; the compiler then needs clang (18 or later) on `PATH` to build programs. The binary
finds the standard library at `<binary>/../std` (or `$OLANG_STD`) and the specification at `<binary>/../SPEC.md`, so
it stays in `build/`.

## Fixes only, once the port starts

When the port begins, this directory takes bug fixes and nothing else - soundness fixes included, features never: a
feature is built once, in olang, in `compiler/`. Once stage 1 passes the suite and stage 2 equals stage 3 (milestone
M12 of DESIGN.md section 6), `bootstrap/` stops changing altogether, and the checklist's "checker and codegen" and
"compile-time evaluator" mean the modules in `compiler/`.

## Re-bootstrapping

No binary is committed, so a lost compiler is always rebuilt from this directory and the repository:

1. `make bootstrap` builds `build/stage0` from C.
2. It walks `bootstrap/CHAIN`, oldest entry first: each entry names a tag and a commit, and that commit's `compiler/`
   and `std/`, extracted with `git archive`, are built at `-d` by the compiler before it - the first by stage 0.
3. The last compiler builds stage 1 from `compiler/` at `-d`; stage 1 builds stage 2, release; stage 2 builds stage 3.
4. Stages 2 and 3 must agree: every emitted `.ll` byte for byte, then the binaries. Stage 2 is installed as
   `build/olang`.

A line is added to `CHAIN` in the commit that first makes `compiler/` or `std/` use something the compiler before it
cannot build: it names that commit's parent - the last commit the older compiler builds - and a tag `bootstrap/N` is
pushed on it. Tags survive a history rewrite where hashes written in a file do not, so the tag is used and the hash
beside it checked. As long as `CHAIN` is empty, stage 0 builds `HEAD` directly.

Today only step 1 exists: `compiler/` holds no olang compiler yet, and `make bootstrap` says so. The rest is a TODO in
the makefile, built with the port's last milestone.
