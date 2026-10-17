# tools - migration scripts

Programs that rewrite olang sources after a language change. Each was written for one change. They are
kept so other code (a branch, oann) can be migrated the same way. They edit files in place, so commit first.

They are olang programs (they were Python scripts; the ports give the same edits and the same output). Build one with
`build/out -b tools/NAME.olang` (from the repository root), which writes `build/tools_NAME`, and run that with the
arguments below. `build/out -i tools/NAME.olang ARGS` runs one without building, which is fine for a few files.
`srcmask.olang` is the module they share: telling code from comments and literals, reading files as Python's text mode
did, walking a directory for `.olang` files; `build/out -t tools/srcmask.olang` runs its tests. Tools not yet ported are
still the Python scripts, run as `python3 tools/NAME.py`.

| script | the change | run |
|---|---|---|
| `bare_typevars.py` | G8b: a type variable is written `<T>` once and `T` after | `tools/bare_typevars.py [--check] [-v] FILE\|DIR...` |
| `perm_mut.py` | T25b: `mut` speaks only about what a reference reaches | `tools/perm_mut.py [--olang PATH] [-j N] FILE\|DIR...` |
| `int_literal_i64.py` | T6a: an integer literal's own type is `I64` | `tools/int_literal_i64.py [--olang PATH] [-j N] FILE\|DIR...` |
| `io_print.olang` | M19f: the prelude's `print` words became `io.Print` and friends | `build/tools_io_print [--dry] PATH...` |
| `io_try.olang` | puts `try` before `io.Print`-family calls (they fail with `IoError`) | `build/tools_io_try PATH...` |
| `io_fix.olang` | after `io_try`: adds `?`/`io.IoError`, `try` and `catch` from the compiler's errors | `build/tools_io_fix OLANG FILE...` |

- `bare_typevars.py` works on the text alone. `--check` writes nothing and the exit status says whether anything
  would change.
- `perm_mut.py` and `int_literal_i64.py` are driven by the compiler's own diagnostics: they compile each file with
  `--olang` (default `build/out`) and apply what it reports, repeating until nothing changes.
- `io_fix` needs the compiler path as its first argument (an absolute path; a relative one is made absolute).
- Comments and string literals are left alone. Run them again after merging a branch written under the old rule.

The compiler's own tools are in `compiler/tools/`.
