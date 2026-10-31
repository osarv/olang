# tools - migration scripts

Programs that rewrite olang sources after a language change. Each was written for one change. They are
kept so other code (a branch, oann) can be migrated the same way. They edit files in place, so commit first.

They are olang programs (they were Python scripts; the ports give the same edits and the same output). Build one with
`build/olang build tools/NAME.olang` (from the repository root), which writes `build/tools_NAME`, and run that with the
arguments below. `build/olang interpret tools/NAME.olang ARGS` runs one without building, which is fine for a few files.
`srcmask.olang` is the module they share: telling code from comments and literals, reading files as Python's text mode
did, walking a directory for `.olang` files; `diagedit.olang` is what the two driven by the compiler's diagnostics share
(reading a diagnostic row, compiling many files side by side, keeping a comment's column); `build/olang test
tools/srcmask.olang` and `build/olang test tools/diagedit.olang` run their tests. Every tool has a few tests of its own
(`build/olang test tools/NAME.olang`), and `make test` runs them with the rest.

| tool | the change | run |
|---|---|---|
| `bare_typevars.olang` | G8b: a type variable is written `<T>` once and `T` after | `build/tools_bare_typevars [--check] [-v] FILE\|DIR...` |
| `perm_mut.olang` | T25b: `mut` speaks only about what a reference reaches | `build/tools_perm_mut [--olang PATH] [-j N] FILE\|DIR...` |
| `int_literal_i64.olang` | T6a: an integer literal's own type is `I64` | `build/tools_int_literal_i64 [--olang PATH] [-j N] FILE\|DIR...` |
| `io_print.olang` | M19f: the prelude's `print` words became `io.Print` and friends | `build/tools_io_print [--dry] PATH...` |
| `io_try.olang` | puts `try` before `io.Print`-family calls (they fail with `io.Error`) | `build/tools_io_try PATH...` |
| `io_fix.olang` | after `io_try`: adds `?`/`io.Error`, `try` and `catch` from the compiler's errors | `build/tools_io_fix OLANG FILE...` |
| `errors_migrate.olang` | the errors batch: Try forms renamed Checked, `try` that only checked made `checked`, `try` on calls that now fail | `build/tools_errors_migrate OLANG FILE\|DIR...` |
| `donefail_migrate.olang` | S16: `done`, `fail` and `abort` removed - `!`, `try`, `assert`, `return`, `unreachable` | `build/tools_donefail_migrate FILE\|DIR...` |
| `cli_words.olang` | B1: the command line in words (`-b` -> `build`, `-d` -> `-debug`, ...), in commands and `# flags:` | `build/tools_cli_words FILE...` |
| `syntax_migrate.olang` | QY/QW: lists by commas on a line and line breaks between lines, `+` gone from error sets and catch items, type parameter lists (`fn f<T>(a T)`, `fn (l List<T>&)`) | `build/tools_syntax_migrate [--old] [--check] [-v] FILE\|DIR...` |
| `arrays_migrate.olang` | QP1-QP2: `Array<T, N>` and constant parameters removed - `x Array<T, N>` with no value becomes `x := Array<T>(N)`, `Array<T, N>()` becomes `Array<T>(N)`, any other `Array<T, N>` loses its length | `build/tools_arrays_migrate [--dry] PATH...` |
| `results_migrate.olang` | D8c/L18c: results and error sets written bare (`fn f() I64, I64 ? A, B`), a function type in a list grouped whole (`Map<K, (fn(x I64) I64, I64)>`) | `build/tools_results_migrate [--check] [-v] FILE\|DIR...` |
| `math_methods.olang` | M19d: std/math removed - its functions are the numbers' methods (`math.Sqrt(x)` -> `x.Sqrt()`), its constants the prelude's (`Pi`, `Euler`, `Inf`, `NaN`) | `build/tools_math_methods [--dry] PATH...` |
| `checkerror_rename.olang` | R20/QAI: `BuiltinError` renamed `CheckError`, its file `std/prelude/check.olang` - every whole word and path, in code, comments and text | `build/tools_checkerror_rename [--check] [-v] FILE\|DIR...` |
| `equality_migrate.olang` | E10/E10c/E32: `x == null` -> `x is null`, `x is E.Case` -> `x == E.Case`, identity `a is b` -> `a == b` (listed, for a person to check where the type declares `Eq`) | `build/tools_equality_migrate [--check] [-v] FILE\|DIR...` |
| `helper_rename.olang` | the helpers `Any`/`All` renamed `Some`/`Every`, calls and declarations | `build/tools_helper_rename [--check] [-v] FILE\|DIR...` |
| `precedence_migrate.olang` | E5: `&`, `\|` and `^` bind tighter than the comparisons - every comparison that is an operand of one, unparenthesized, is wrapped (`a & b == c` -> `a & (b == c)`), read with the compiler's parser at the old precedence | `build/tools_precedence_migrate [--check\|--verify] [-v] FILE\|DIR...` |
| `stutter_rename.olang` | the std naming rule: an error type named for its module is `Error` (`io.Error`, and likewise `os`, `json`, `csv`, `stats`, `rand`, `http`, `chan`, `ffi`, `filepath`) (a qualified use anywhere; the bare name only in the module's own file) | `build/tools_stutter_rename [--check] [-v] FILE\|DIR...` |
| `null_migrate.olang` | T2c: references never null unless written `?&` - an array never null (`?` dropped, `null` its empty array, `is null` a length test), a declaration made nullable where a note says, `!` where a value may be null | `build/tools_null_migrate [--olang PATH] [-j N] FILE\|DIR...` |
| `checked_migrate.olang` | E15a/E16d/E26b: `checked` and `CheckError` removed - `checked a[i]` -> `try a.Get(i)`, `checked a[lo:hi]` -> `try a.SliceOf(lo, hi)`, `checked T(x)` -> `try x.Narrow<T>()`, `checked f(x)` -> `try f(x)`, `checked (x as C)` -> `try x as C`, `(checked e)!` -> `e!`, the words renamed, the try parenthesized where an operator follows; checked arithmetic and stores, and the checks inside a rewritten operand, listed (std/arith) | `build/tools_checked_migrate [--check] [-v] FILE\|DIR...` |
| `contracts_migrate.olang` | D17: a contract moved to right after the parameter list, results unnamed, guarantees and `for`/`if`/`fits` items dropped (listed) | `build/tools_contracts_migrate [--check] [-v] FILE\|DIR...` |
| `try_migrate.olang` | E24: `try` takes the whole expression after it - `try (a + b)` loses its parentheses; a `try` after an operator and before a looser one is parenthesized with `--old` (`2 * (try f()) + 1`, its old reading) and listed without it; an `as` an old `try` covered is given `!` (a plain chain) or listed. A listing makes `olang fix` end with status 1 | `build/tools_try_migrate [--old] [--check] [-v] FILE\|DIR...` |
| `as_migrate.olang` | E32: `x as C` fails as written - a use no `try` covers made `(x as C)!`, from the compiler's diagnostics | `build/tools_as_migrate [--olang PATH] [-j N] FILE\|DIR...` |
| `errortype_migrate.olang` | T19: error types declared as types - `error IoError { FULL }` becomes `type IoError error { Full }`; idempotent; code and Markdown olang blocks only (programs inside strings by hand) | `build/tools_errortype_migrate [--check] [-v] FILE\|DIR...` |
| `list_vec.olang` | QZ2: the prelude's List moved to `std/list`, the iterator helpers and StringBuilder onto Vec, `ToList` renamed `ToVec` - by default a List is kept, qualified and imported (`list.List<T>`, `list.Error`, `list.Iter`; what `olang fix` runs), `--vec` moves it onto Vec (`Vec<T>`, `VecError`, `.ToVec()`), as this repository was; `ToList()` in the default mode, ListIter and RunFrom with `--vec`, a name `list` beside the import and text in strings listed | `build/tools_list_vec [--vec] [--check] [-v] FILE\|DIR...` |
| `link_migrate.olang` | X9: the top-level `link` declaration removed - a module's `link "x"` and its `extern fn`/`extern type` lines become one block, `extern link "x" { fn ...  type ... }`, another library an empty block | `build/tools_link_migrate FILE...` |
| `match_migrate.olang` | S12, S12b, S13f (QBQ, QBR): `nomatch` removed, the catch-all `case _`; a match used as a value gives each clause's value as `case P: v`, `=>` removed - `nomatch {` becomes `case _ {`, `nomatch => v` `case _: v`, `case P => v` `case P: v`, and a value match's clause block of one statement `case P: return 0`; a longer block there, or one holding a comment, is listed `by hand:` | `build/tools_match_migrate [--check] [-v] FILE\|DIR...` |
| `question_migrate.olang` | R1d (QBZ): a function that can fail writes `?` - where the compiler says a function "writes no '?'" (a `main` whose errors escaped, a function with conditions whose ArgumentError was implied), `?` is written before its body's brace, in rounds; a checks/cases program whose header names the diagnostic keeps it | `build/tools_question_migrate [--olang PATH] [-j N] FILE\|DIR...` |
| `unused_migrate.olang` | D3b, M5a: a local never read and an import nothing is reached through - a loop's, a binding's or one of several results' name made `_`, a declaration left out (its value kept as a statement where it is one call, a `try`'s kept without the `try` declaration), an unused import's line removed - from the compiler's diagnostics, in rounds; what it cannot do safely (a value with a `catch ... default`, a name used again in its block) listed `by hand:`; `--bare` makes only the `_` renames and removes imports (for files that must fail as written) | `build/tools_unused_migrate [--bare] [--olang PATH] [-j N] FILE\|DIR...` |
| `errorcase_rename.olang` | R3 (QBZ): every error name is CamelCase - an upper-case word of an error type becomes its parts capitalized (`IoError.FULL` -> `IoError.Full`, `ListError.OUT_OF_RANGE` -> `ListError.OutOfRange`), in its declaration and wherever it is written qualified (code, comments, strings, Markdown); the words are read from the files' declarations and, with `--std`, std's; idempotent | `build/tools_errorcase_rename [--std DIR] [--check] [-v] FILE\|DIR...` |
| `variadic_migrate.olang` | D8g: std's functions taking an array of their variable arguments moved onto a variadic parameter - `os.Exec(String&["ls", "-l"], "", false)` -> `os.Exec("ls", "-l", capture = false)`, an array a call gives passed on (`...args.ToArray()`), ExecUntil's token first; os.Exec/Start/ExecUntil/ExecInPlace, http.Get/Post, csv.Record; a plain name listed `by hand:` (status 1); re-runnable | `build/tools_variadic_migrate [--check] [-v] FILE\|DIR...` |

- `bare_typevars` works on the text alone (it finds std's type names from the repository its binary is built in).
  `--check` writes nothing and the exit status says whether anything would change.
- `perm_mut` and `int_literal_i64` are driven by the compiler's own diagnostics: they compile each file with
  `--olang` (default `$OLANG`, else `build/olang`) and apply what it reports, repeating until nothing changes.
- `errors_migrate` is driven by the compiler's diagnostics too (its first argument, the compiler); `donefail_migrate`
  works on the text alone. Both list at the end what they leave for a person.
- `io_fix` needs the compiler path as its first argument (an absolute path; a relative one is made absolute).
- `syntax_migrate` works on the tokens alone (the port's scanner); it is idempotent and prints what it changed. Give
  `--old` for a tree written wholly in the old syntax (a branch, oann): a line ending in a `-` that may be unary is then
  read as an operator to move up, which an already migrated file cannot tell. Programs written inside strings (tests,
  generators) are not migrated - search them for `<T>`, `<<` and `+` in error sets by hand. Two checks cases are written
  in the old syntax on purpose (`checks/cases/commaendsline.olang`, `qwnointro.olang`): leave `checks/cases` out of a
  run on this repository, or restore them after it; so is the fixture
  `olang fix` is tested on (`checks/fixtures/fix/old.olang`).
- `math_methods` works on the text alone and lists the literal receivers whose type a person should write (`math.Pow(2.0,
  x)` with an F32 `x` wants `F32(2.0).Pow(x)`); code inside strings and comments is searched for `math.` by hand.
- `arrays_migrate` works on the text alone and lists for a person what depends on the code: an `Array<T, N>` as a type
  argument (`Array<T>&` unless its storage is made where it is declared, T7a), `as` views (now slices) and constant
  type parameters.
- `null_migrate` is driven by the compiler's diagnostics, in rounds to a fixed point (array fixes, then nullable
  declarations, then `!`), and lists what it could not decide (`by hand:`). Each `!` it writes on an argument is a place
  a callee may once have handled null by matching it: look at those, and make the callee take `?&` where it did.
  Bootstrapping a compiler across this change needs one built by the old compiler from the source with the `?&`s and
  inserted `!`s taken out.
- `results_migrate` works on the tokens alone and is idempotent; a Markdown file's olang code blocks are migrated too.
  `checks/cases/l18coldresults.olang` is written in the old form on purpose: leave it out, or restore it after a run.
  `--check` writes nothing and the exit status says whether anything would change.
- Comments and string literals are left alone. Run them again after merging a branch written under the old rule.

## olang fix

`olang fix FILE|DIR...` (SPEC B17) runs these tools, so a file from any earlier time can be brought to the language of
today in one command: `olang fix -check FILES` lists the files that would change and writes nothing. Each tool changes
only the forms it was written for, so there is no version in a file and fixing twice changes nothing. The tools are
built into the cache (`fix/` in `OLANG_CACHE`) the first time, by the compiler that runs `fix`, from `tools/` beside it
(`OLANG_TOOLS` names another place). The table is in `compiler/fix.olang`, in the order the changes were made, with the
tools that read the text alone first and the ones driven by the compiler's diagnostics (`perm_mut`, `int_literal_i64`,
`errors_migrate`, `null_migrate`, `as_migrate`, `question_migrate`, `unused_migrate`) after them - an old file does not parse, so the
compiler has nothing to say about it until the text tools have run:

`bare_typevars`, `perm_mut`, `int_literal_i64`, `errors_migrate`, `cli_words`, `donefail_migrate`, `syntax_migrate`,
`math_methods`, `arrays_migrate`, `results_migrate`, `equality_migrate`, `helper_rename`, `null_migrate`,
`checkerror_rename`, `stutter_rename`, `checked_migrate`, `contracts_migrate`, `try_migrate`, `as_migrate`,
`errortype_migrate`, `list_vec`, `link_migrate`, `match_migrate`, `question_migrate`, `unused_migrate`, `errorcase_rename`,
`variadic_migrate` (the table's order; the tools that read the text run first and those driven by diagnostics after,
so `unused_migrate` runs last: D3b is said only of a file with no other error).

**Not run by `fix`**, because they are not idempotent - on code of today they would damage it: `io_print`, `io_try` and
`io_fix` (M19f: they take `try` and `catch` off a call of `io.Print` and put `try` back without the `catch`, and `!`
forms are lost), and `precedence_migrate` (E5: it reads every `a & b == c` as written for the old precedence and wraps
the comparison). Run them by hand, on a tree written under the old rule, as before.

The compiler's own tools are in `compiler/tools/` (the acceptance diffs and golden captures, which were shell scripts and
are olang programs now, run by their make targets - `compiler/README.md`); the benchmark drivers are in `bench/`
(`bench/README.md`).
