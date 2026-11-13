# olang

A compiled language with C's performance and no manual memory management: memory lives in scopes the compiler checks,
a function that can fail says so in its signature, and anything that can be computed while compiling is. `PRINCIPLES.md`
says what it is for, `SPEC.md` is the language reference, and `CLAUDE.md` records the design decisions.

## Building the compiler

You need x86-64 Linux (WSL works: keep the checkout in the Linux file system, such as `~/olang`, not under `/mnt/c`)
with:

- clang 18, 19 or 20. On Ubuntu 24.04 that is `sudo apt install clang-18`; older releases get it from
  https://apt.llvm.org: `wget https://apt.llvm.org/llvm.sh && sudo bash llvm.sh 18`.
- make, xz, libffi and the C library's headers: `sudo apt install make xz-utils libffi-dev libc6-dev`.
- About 3 GB of memory and 1 GB of disk.

Then, in the checkout:

```
make
```

This builds `build/olang` from the committed seed (`seed/` holds the compiler's own LLVM IR). clang compiles the seed
into a first compiler, which builds the compiler from its source; that one builds it again, and the last two builds
must be byte for byte equal. It takes a few minutes. Before compiling anything, `make` checks for the tools above and
says which package to install for anything missing (`make prereq` runs only that check).

After a `git pull`, run `make` again: it rebuilds the compiler only when its sources changed.

## Using it

`hello.olang`:

```
fn main() {
    println("Hello World!")
}
```

```
build/olang hello.olang       # builds the program quickly (-quick) and runs it; an unchanged one is not built again
build/olang test hello.olang  # runs the file's tests
build/olang help              # every mode and option
make install                  # links ~/.local/bin/olang to build/olang, so `olang` runs from anywhere
```

The compiler finds the standard library beside itself, so the checkout must stay where it is. To use another clang,
set `OLANG_CLANG=/path/to/clang` for both `make` and the compiler.

`editors/` has the Neovim plugin and the language server's setup (`olang lsp`).

## The repository

- `compiler/` - the compiler, written in olang (`compiler/DESIGN.md`)
- `std/` - the standard library; `std/prelude/` is what every program has without an import
- `seed/` - the compiler as LLVM IR, for building it from nothing
- `tests/`, `checks/` - the test corpus, and the programs the compiler must refuse or build in a given way
- `tools/` - the migration tools `olang fix` runs over old code
- `docs/` - design notes; `bench/` - benchmarks against C; `fuzz/` - the fuzzers; `editors/` - editor support

## Working on the compiler

```
make quick    # the whole test suite on the compiler already built
make verify   # the gate: a clean bootstrap and the whole suite (about 6 minutes on 4 cores, up to 5 GB of memory)
```

The top of the `makefile` lists the rest.
