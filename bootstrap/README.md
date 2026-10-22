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
