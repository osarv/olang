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
- About 4.5 GB of memory free (the compiler builds itself in 3.7 GB, the rest is clang) and 1 GB of disk. The build runs as many of clang's compiles at once as the memory
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
make install                  # installs olang into ~/.local, so `olang` runs from anywhere
```

`make install` copies the compiler, the standard library and `SPEC.md` into `~/.local/lib/olang` and links
`~/.local/bin/olang` to it, so the installed olang no longer depends on the checkout: deleting or rebuilding it changes
nothing, and installing again replaces the old install. Where `~/.local/bin` is not on `PATH`, it adds one line,
`export PATH="$HOME/.local/bin:$PATH"` (spelled out, under a comment saying make install added it), to `~/.bashrc`
(bash), `~/.zshrc` (zsh) or `~/.profile`, once, and says so; a new terminal picks it up. `PREFIX=DIR` installs into
`DIR/lib/olang` and `DIR/bin`, `PATHFILE=FILE` names another startup file and `PATHFILE=none` changes none.
It also installs the editor support (`editors/`): the Neovim plugin as a package Neovim loads by itself
(`~/.local/share/nvim/site/pack/olang`), and its syntax and `:compiler olang` for Vim (`~/.vim/pack/olang`), each where
that editor is found; `EDITORS=none` leaves them out. `make uninstall` (with the same `PREFIX`) removes the install,
the link, the editor packages and that line; it leaves remote packages
fetched into `~/.cache/olang`, a Jupyter kernel spec and builds' `build/` directories.

### Try it

Plain `olang` opens the prompt (SPEC B22). Each entry runs in one session: declarations join it, statements run, a
top-level local stays for the entries after, and an expression's value is shown. An entry goes on while a bracket is
open; `:type EXPR`, `:load FILE`, `:help`, `:quit`. On a terminal each entry is edited in place and coloured as you
type: Up and Down (or Ctrl-P, Ctrl-N) bring back earlier entries - a multi-line one whole - to edit and run again,
Ctrl-R searches them, and they are kept in `~/.local/state/olang/history`. The keys are emacs's, as in bash; `:set vi`
(or `OLANG_EDIT=vi`) gives vi's, Esc to normal mode, and `:set emacs` goes back. `NO_COLOR=1` turns colour off.

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

`olang notebook run FILE.ipynb` runs a notebook with no Jupyter and no Python: its code cells run in order as the kernel
runs them, and the notebook is written back (in place, or to `-output PATH`) with each cell's output as Jupyter stores
it - printed text, the shown value, a plot's SVG, an error - and its execution count (SPEC B24). It stops at the first
failing cell with status 1; `-continue` runs the rest.

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

## Contributing

Pull requests are welcome: inconsistencies in the language or its tools, bug fixes and feature ideas alike. For a
larger change, open an issue first so the design can be discussed before the code.

## Licence

olang is licensed under the MIT licence; see [LICENSE](LICENSE).
