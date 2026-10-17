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
| `cli_words.olang` | B1: the command line in words (`-b` -> `build`, `-d` -> `-debug`, ...), in commands and `# flags:` | `build/tools_cli_words FILE...` |

- `bare_typevars` works on the text alone (it finds std's type names from the repository its binary is built in).
  `--check` writes nothing and the exit status says whether anything would change.
- `perm_mut` and `int_literal_i64` are driven by the compiler's own diagnostics: they compile each file with
  `--olang` (default `build/out`) and apply what it reports, repeating until nothing changes.
- `io_fix` needs the compiler path as its first argument (an absolute path; a relative one is made absolute).
- Comments and string literals are left alone. Run them again after merging a branch written under the old rule.

The compiler's own tools are in `compiler/tools/`.
