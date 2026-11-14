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
- About 4 GB of memory free and 1 GB of disk. The build runs as many of clang's compiles at once as the memory
  available holds (512 MB each), never more than one per core; `OLANG_JOBS=N make` sets the number. Under WSL the
  memory is what `.wslconfig`'s `memory=` gives it (by default half the machine's).

Then, in the checkout:

```
make
```

This builds `build/olang` from the committed seed (`seed/` holds the compiler's own LLVM IR), in two stages: clang
compiles the seed into a first compiler, which builds the compiler from its source as a quick build (no link-time
optimization); that one builds it again fully optimized, and installs it. Each stage says when it starts, its build's
phases, and how long it took; the whole takes a few minutes. (`make fixedpoint`, part of `make verify`, has the
installed compiler build itself once more and checks the two are byte for byte equal.) Before compiling anything, `make` checks for the tools above and
says which package to install for anything missing (`make prereq` runs only that check).

After a `git pull`, run `make` again: it rebuilds the compiler only when its sources changed.

## Using it

`hello.olang`:

```
fn main() {
    Println("Hello World!")
}
```

```
build/olang hello.olang       # builds the program quickly (-quick) and runs it; an unchanged one is not built again
build/olang test hello.olang  # runs the file's tests
build/olang help              # every mode and option
build/olang                   # the prompt: each entry runs as you type it
make install                  # links ~/.local/bin/olang to build/olang, so `olang` runs from anywhere
```

`make install` also puts `~/.local/bin` on `PATH` where it is not: it adds one line, `export
PATH="$HOME/.local/bin:$PATH"` (spelled out), to `~/.bashrc` (bash), `~/.zshrc` (zsh) or `~/.profile`, once, and says
so; a new terminal picks it up. `PREFIX=DIR` installs into `DIR/bin`, `PATHFILE=FILE` names another startup file and
`PATHFILE=none` changes none.

### Try it

Plain `olang` opens the prompt (SPEC B22). Each entry runs in one session: declarations join it, statements run, a
top-level local stays for the entries after, and an expression's value is shown. An entry goes on while a bracket is
open; `:type EXPR`, `:load FILE`, `:help`, `:quit`.

```
>>> xs := [1, 2, 3, 4]
>>> fn square(n I64) I64 { return n * n }
>>> Array<I64>[square(x) for x in xs]
Array<I64>[1, 4, 9, 16]
>>> :type xs.Sum()
I64
```

The compiler finds the standard library beside itself, so the checkout must stay where it is. To use another clang,
set `OLANG_CLANG=/path/to/clang` for both `make` and the compiler.

### Notebooks

`olang jupyter -install` writes olang's kernel spec into your Jupyter kernels (`$JUPYTER_DATA_DIR`, else
`~/.local/share/jupyter`); then pick "olang" in JupyterLab, Notebook or VS Code (SPEC B23). Cells run as at the prompt;
output is streamed, the last expression's value shown, and a type declaring `fn (x T&) Display() Display` (the
prelude's, e.g. `Display.Html(...)`) is shown richly - a table, a plot, a formula. The stop button interrupts a cell.

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
