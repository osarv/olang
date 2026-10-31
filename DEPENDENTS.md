# What changes with what

When one part of the project changes, these others must change with it. One section per kind of change; each lists the
places, in the order to touch them, and why. `make consistency` (compiler/tools/consistency.olang) checks the edges
marked **[checked]** and names the file that is out of step; the others are by hand. `CLAUDE.md`'s checklist says what a
language change needs in all; this is the map of where.

Records for every change: `SPEC.md` (the rule), `CLAUDE.md` (current-state entry), `HISTORY.md` (the story),
`.claude/memory/decisions.md` (a question left open).

## A keyword

| place | why |
|---|---|
| `SPEC.md` L9 (the reserved list) and the grammar | the normative list **[checked]** |
| `compiler/token.olang`: `Tok` case, `Tok.Text`, `Keyword`, the test's list | the scanner; `Text` is the one table the check reads **[checked]** |
| `compiler/parse.olang`, `ast.olang` | the form it begins |
| `compiler/unparse.olang`, `fmt.olang` | the formatter's layout and spacing for it |
| `compiler/names.olang`, `check.olang`, `typed.olang`, `lower.olang`, `eval.olang`, `emit.olang` | meaning; the evaluator must agree with the run time (CLAUDE.md step 3) |
| `compiler/session.olang` `Keywords` | the language server's completion words **[checked]** |
| `editors/nvim/syntax/olang.vim` | highlighting **[checked]** |
| `compiler/goldens/tokens*.txt`, `ast*.txt`, `layout.txt` (`make tokgold astgold layoutgold`) | stored scanner/parser output; stale files are reported |
| `fuzz/gen.olang`, `fuzz/scopegen.olang` | the generators, if the form can occur in a program they write |
| `tools/*_migrate.olang` + `compiler/fix.olang` | when old code must be rewritten (see "A migration") |
| `tests/`, `checks/cases/` | a run test, an evaluator-decided test, a must-fail case naming the diagnostic |
| `docs/README.md` / `std/README.md` | only if a doc teaches the form |

## An operator or punctuation

As a keyword, minus `Keyword`/session/nvim (those carry words only), plus: `Tok.Text` for its text; `parse.olang`'s
precedence table (Pratt) and statement-ending rules (`token.olang` `EndsStatement`, L18 in SPEC); the
operator method name (E31 in SPEC; `std/prelude` declares it for the built-ins; `check.olang` elaboration); the lane
operators (E39) if it applies to arrays; `eval.olang` and `emit.olang` for the computation, including the 128-bit and
odd-width paths (`tests/intsweep.olang`); `tools/precedence_migrate.olang` if precedence moves.

## A rule number or a diagnostic

| place | why |
|---|---|
| `SPEC.md`: `**RULE.**` paragraph | `olang explain RULE` and the diagnostics' `error[RULE]` read it from here; a removed rule leaves a gap, never reused |
| `compiler/msgs.olang`: one function and a `Diag` case | the table's source; its rule must exist in SPEC (held by `checks/checks.olang`) |
| `compiler/goldens/diag.txt` (`make diaggold`) | the stored text of every failing case |
| `checks/cases/NAME.olang` | `# check: fail TEXT` names the diagnostic |
| `compiler/README.md`, `checks/README.md` | counts and descriptions |
| code that reworded a message | grep `checks/cases` and `checks/checks.olang` for the old text |

## A command-line mode or option

| place | why |
|---|---|
| `compiler/olang.olang`: `ModeWords`, `ModeUsage`, `ModeWhat`, `OptWords`, `OptValues`, `OptModes`, `OptWhat` | the one table; `olang help` and the unknown/not-for-this-mode diagnostics read it |
| `SPEC.md` B1 grammar (`mode-word`, `option`) and its table (option, modes, rule) **[checked]** | the normative list |
| every `olang MODE -option` written in a README, SPEC.md or `editors/` **[checked]** | an unknown option or one the mode does not take is reported |
| `compiler/mcp.olang` / `lsp.olang` / `session.olang` | when the mode runs the analysis (`-target`, `-define`, `-update` pass through) |
| `compiler/build.olang`, `target.olang` | the option's effect; the object-name hash if it changes code (`.quick`, `.debug`, B4) |
| `tools/cli_words.olang` | rewrites old spellings; add to it only if an option is renamed |
| `compiler/goldens/drv.txt` (`make drvgold`), `compiler/tools/drvdiff.olang` | the driver's command-line behaviour |
| `editors/nvim/` (`compiler/olang.vim` makeprg, `lua/olang/init.lua`), `editors/README.md` | commands the plugin runs |
| `docs/profiling.md`, `docs/install.md`, `makefile` | commands they quote |

## A std module or API

| place | why |
|---|---|
| `std/NAME.olang` (+ its `test` blocks; examples `test Target "..."` show in docs) | the module; `make test` runs `std/*.olang` automatically |
| `std/README.md` table **[checked]** | one row per module file |
| `SPEC.md` | only if the language rule changes (a std API is not specified there, except B14-B16 outputs) |
| `compiler/doc.olang` | `olang doc -html` writes all of std; nothing to add per module |
| `tools/stutter_rename.olang` | the naming rule (no module name repeated in a type: `io.Error`, never `io.IoError`) |
| `std/runtime/*.ll` and `compiler/runtime.olang` | a new runtime function or C-library fact; `emit.olang` declares runtime functions from the runtime's text |
| `compiler/*.olang` that import it | `grep -l 'std/NAME'` - the compiler uses `std/os`, `std/io`, `std/json`, `std/filepath` and others |
| `docs/` / `tests/` | only where a note or corpus case teaches it |
| `tools/list_vec.olang` etc. | when a std type moves or is renamed: a migration (below) |

## A prelude name (a type, method or supplied function of a built-in type)

`std/prelude/*.olang` (reserved everywhere by D3a, so grep the whole repository for a clash first: `compiler/`
once had to rename `Place`); `std/prelude/tests/`; the compiler's hard-coded prelude names - `grep -n '"NAME"'
compiler/check.olang generic.olang explain.olang bindgen.olang` and `c.P.PreludeFn("std/prelude/...", "fn")` (the
compiler calls prelude functions by name: `caseIndex`, `attrGot`, `Generator`, `Place`); `eval.olang` for an
intrinsic; `std/README.md` if a file is added; `SPEC.md` (M19d) when the method set is a rule.

## A built-in type or supplied method

`compiler/types.olang` (`PrimInfo`, layout), `generic.olang`, `check.olang` (supplied methods: `Narrow`, `Len`, `Bits`,
`Value`, E36/E37), `eval.olang` (must compute it exactly at every width), `emit.olang`; the C boundary
(`compiler/cabi.olang`, `bindgen.olang`, SPEC X2); reflection (`TypeKind`, descriptors in `std/prelude/reflect.olang`);
`std/json`, `std/prop` (generate and encode by reflection); `$` rendering; `editors/nvim/syntax/olang.vim` type names
(widths are a pattern; named types are listed); `tests/intsweep.olang` for numeric types; `fuzz/` generators.

## An error type or word

Words are CamelCase and declared where raised (R3b); a word is also data: `SPEC.md` for the prelude's (R20, R22);
`std/prelude/*.olang` or the module declaring it; every `catch`/`? Type.Word` that names it (grep); `compiler/lower.olang`
`ErrQualifier` for how it prints; goldens `run.txt` (stored program output, `make rungold`) and `diag.txt` if a message
shows it; `tools/errorcase_rename.olang` is the migration for a renaming (reads declarations, rewrites uses).

## A runtime function

`std/runtime/runtime.ll` (and `san.ll`, `prof.ll`, `dyncall.ll`; `; @if`/`@@FACT@@` lines are decided by
`compiler/runtime.olang`); the call sites in `compiler/emit.olang` (it declares what it calls: `fe.E.declare(...)`);
`eval.olang` if the evaluator must do the same without it; `checks/checks.olang` scenarios that read the IR
(`irHas`, `gsym`) and the C-driven region test; `seed/` (the runtime is in the seed: regenerate when the runtime or
emit changes what a bootstrap needs, `make seed`); `docs/optsurvey.md` / `bench/` if it is a measured path.

## A file format

| format | writer / reader | also |
|---|---|---|
| `compiler/goldens/*` | captured only by its own target: `tokgold astgold layoutgold modgold drvgold rungold diaggold`; read by `tokdiff astdiff layoutdiff modgraph drvdiff` and `checks/` | a stale file is reported until captured again; capture after any change to scanner, parser, layout, imports, driver, a diagnostic or a run output |
| `seed/*.ll.xz` | `make seed` (`compiler/tools/seed.olang`); read by `make bootstrap` | regenerate only when `compiler/` needs something the seed's compiler cannot build (QAQ); `seed/README.md` |
| `olang.lock` | `compiler/fetch.olang` (M23b) | SPEC M23; `-update` |
| `build/rec`, object names | `build.olang` (B3i hashes everything compiled against) | a new input to a module's key must be added to the hash |
| `testdata/fuzz/SLUG/` | `std/fuzz`, `std/prop` | saved failures, replayed by plain runs |
| the cimport cache | `compiler/bindgen.olang` | key: import, clang, compiler, flags |

## A migration (`olang fix`)

| place | why |
|---|---|
| `tools/NAME.olang` (+ tests; it may import `srcmask`/`diagedit`) | the rewrite; idempotent on code of today, or listed as not run |
| `compiler/fix.olang`: `ToolNames` and `ToolKinds` (same length), in the order the changes were made **[checked]** | what `olang fix` runs; text tools first, driven ones after |
| `tools/README.md`: a table row, the order paragraph, the not-run list **[checked]** | |
| `SPEC.md` B17 | if the set of tools is described |
| `makefile` `OLANG_TESTS` | picks up `tools/*.olang` by wildcard already |
| the repository itself | run the tool over `std/ compiler/ tests/ checks/ fuzz/ bench/ docs/` and commit the migrated code with it |

## Everything that lists something

Each of these names the files of its folder and is checked **[checked]**: `std/README.md`, `docs/README.md`,
`compiler/README.md` (the modules and `compiler/tools/`), `tools/README.md`. `tests/README.md` and `bench/README.md`
group their programs and are by hand. Every top-level folder has a `README.md` (and `editors/nvim`) **[checked]**.
`SPEC.md`'s MCP tool list (B16), `editors/README.md` and `compiler/mcp.olang`'s tool list agree **[checked]**; the LSP's
capabilities are described in SPEC B15 and `editors/README.md` by hand.

## The editors

`editors/nvim/syntax/olang.vim` (keywords and types), `ftplugin/olang.lua` (indent 4, comments `#`),
`lua/olang/init.lua` (format and LSP commands), `compiler/olang.vim` (makeprg `olang compile %` and errorformat: the diagnostic row
format `path:line:col: error[RULE]: message` of B11), `ftdetect/olang.lua`, `editors/README.md`, `editors/nvim/README.md`.
A change to the diagnostic row format, a mode name used there, or a keyword touches all of them. `make release` packs
`editors/` as is (`makefile` `release`).
