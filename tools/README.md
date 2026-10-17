# tools - migration scripts

Python 3 scripts that rewrite olang sources after a language change. Each was written for one change. They are
kept so other code (a branch, oann) can be migrated the same way. They edit files in place, so commit first.

| script | the change | run |
|---|---|---|
| `bare_typevars.py` | G8b: a type variable is written `<T>` once and `T` after | `tools/bare_typevars.py [--check] [-v] FILE\|DIR...` |
| `perm_mut.py` | T25b: `mut` speaks only about what a reference reaches | `tools/perm_mut.py [--olang PATH] [-j N] FILE\|DIR...` |
| `int_literal_i64.py` | T6a: an integer literal's own type is `I64` | `tools/int_literal_i64.py [--olang PATH] [-j N] FILE\|DIR...` |
| `io_print.py` | M19f: the prelude's `print` words became `io.Print` and friends | `python3 tools/io_print.py [--dry] PATH...` |
| `io_try.py` | puts `try` before `io.Print`-family calls (they fail with `IoError`) | `python3 tools/io_try.py PATH...` |
| `io_fix.py` | after `io_try.py`: adds `?`/`io.IoError`, `try` and `catch` from the compiler's errors | `python3 tools/io_fix.py OLANG FILE...` |

- `bare_typevars.py` works on the text alone. `--check` writes nothing and the exit status says whether anything
  would change.
- `perm_mut.py` and `int_literal_i64.py` are driven by the compiler's own diagnostics: they compile each file with
  `--olang` (default `build/out`) and apply what it reports, repeating until nothing changes.
- `io_fix.py` needs the compiler path as its first argument.
- Comments and string literals are left alone. Run them again after merging a branch written under the old rule.

The compiler's own tools are in `compiler/tools/`.
