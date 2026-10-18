# tools - migration scripts

Programs that rewrite olang sources after a language change. Each was written for one change. They are
kept so other code (a branch, oann) can be migrated the same way. They edit files in place, so commit first.

They are olang programs (they were Python scripts; the ports give the same edits and the same output). Build one with
`build/out build tools/NAME.olang` (from the repository root), which writes `build/tools_NAME`, and run that with the
arguments below. `build/out interpret tools/NAME.olang ARGS` runs one without building, which is fine for a few files.
`srcmask.olang` is the module they share: telling code from comments and literals, reading files as Python's text mode
did, walking a directory for `.olang` files; `diagedit.olang` is what the two driven by the compiler's diagnostics share
(reading a diagnostic row, compiling many files side by side, keeping a comment's column); `build/out test
tools/srcmask.olang` and `build/out test tools/diagedit.olang` run their tests. Every tool has a few tests of its own
(`build/out test tools/NAME.olang`), and `make test` runs them with the rest.

| tool | the change | run |
|---|---|---|
| `bare_typevars.olang` | G8b: a type variable is written `<T>` once and `T` after | `build/tools_bare_typevars [--check] [-v] FILE\|DIR...` |
| `perm_mut.olang` | T25b: `mut` speaks only about what a reference reaches | `build/tools_perm_mut [--olang PATH] [-j N] FILE\|DIR...` |
| `int_literal_i64.olang` | T6a: an integer literal's own type is `I64` | `build/tools_int_literal_i64 [--olang PATH] [-j N] FILE\|DIR...` |
| `io_print.olang` | M19f: the prelude's `print` words became `io.Print` and friends | `build/tools_io_print [--dry] PATH...` |
| `io_try.olang` | puts `try` before `io.Print`-family calls (they fail with `IoError`) | `build/tools_io_try PATH...` |
| `io_fix.olang` | after `io_try`: adds `?`/`io.IoError`, `try` and `catch` from the compiler's errors | `build/tools_io_fix OLANG FILE...` |
| `errors_migrate.olang` | the errors batch: Try forms renamed Checked, `try` that only checked made `checked`, `try` on calls that now fail | `build/tools_errors_migrate OLANG FILE\|DIR...` |
| `donefail_migrate.olang` | S16: `done`, `fail` and `abort` removed - `!`, `try`, `assert`, `return`, `unreachable` | `build/tools_donefail_migrate FILE\|DIR...` |
| `cli_words.olang` | B1: the command line in words (`-b` -> `build`, `-d` -> `-debug`, ...), in commands and `# flags:` | `build/tools_cli_words FILE...` |
| `syntax_migrate.olang` | QY/QW: lists by commas on a line and line breaks between lines, `+` gone from error sets and catch items, type parameter lists (`fn f<T>(a T)`, `fn (l List<T>&)`) | `build/tools_syntax_migrate [--old] [--check] [-v] FILE\|DIR...` |

- `bare_typevars` works on the text alone (it finds std's type names from the repository its binary is built in).
  `--check` writes nothing and the exit status says whether anything would change.
- `perm_mut` and `int_literal_i64` are driven by the compiler's own diagnostics: they compile each file with
  `--olang` (default `build/out`) and apply what it reports, repeating until nothing changes.
- `errors_migrate` is driven by the compiler's diagnostics too (its first argument, the compiler); `donefail_migrate`
  works on the text alone. Both list at the end what they leave for a person.
- `io_fix` needs the compiler path as its first argument (an absolute path; a relative one is made absolute).
- `syntax_migrate` works on the tokens alone (the port's scanner); it is idempotent and prints what it changed. Give
  `--old` for a tree written wholly in the old syntax (a branch, oann): a line ending in a `-` that may be unary is then
  read as an operator to move up, which an already migrated file cannot tell. Programs written inside strings (tests,
  generators) are not migrated - search them for `<T>`, `<<` and `+` in error sets by hand. Two checks cases are written
  in the old syntax on purpose (`checks/cases/commaendsline.olang`, `qwnointro.olang`): leave `checks/cases` out of a
  run on this repository, or restore them after it.
- Comments and string literals are left alone. Run them again after merging a branch written under the old rule.

The compiler's own tools are in `compiler/tools/` (the acceptance diffs and golden captures, which were shell scripts and
are olang programs now, run by their make targets - `compiler/README.md`); the benchmark drivers are in `bench/`
(`bench/README.md`).
