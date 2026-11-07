# Bulk review 8 - tools area

## Progress
- started 2026-11-07: reading the range's tool commits.

## Findings

### F1 (low, NEW: test -interpret, ad6be32/53c380a) `olang test -interpret` drops the error trace after a `!` in a test
Reproducer f04_testbang.olang. Built test binary prints `FILE:LINE: PE.Bad(3)` then the S18d trace (`raised here`,
`try passed it on`) then `FAIL - ...`; `test -interpret` prints the first line and the FAIL line, no trace. Also a
contract's `!` in a test (f02_tests.olang: the condition's trace line `twice: x >= 0` missing). interp.olang RunTests
prints `TraceText` only for Escaped and Raised stops; RunMain prints it for `ExitKind.Error` (main's `!` agrees). B3e
says the output is the binary's line for line; evaldiff compares only ok/FAIL keys, so the suite does not see it.

### F2 (medium, NEW: builder_migrate 0c9c07b/49310a9, olang fix B17) `olang fix` leaves calls of std functions whose name changed when they became builders
Reproducer fixold/old2.orig (and old1.orig): a program written against std as of fcdb202. `olang fix` rewrites
`net.Loopback4()` -> `net.IP.Loopback4()`, `time.Parse` -> `time.Date.Parse`, `os.Exec` -> `os.Output.Exec`,
`os.Stat` -> `os.FileInfo.Stat`, `regex.Compile`, `utf8.Runes`, `list.Of`, `json.Parse`, `"42".ParseAs<I64>(10)`
-> `I64.Parse("42", 10)` - every builder whose name stayed - but leaves `net.ParseIP`, `net.ParseAddr`,
`time.DateOf` (and `net.ListenUDP` by the same mechanism) untouched: the tool reads the importer's std as it is now,
where those names are gone (`IP.Parse`, `Addr.Parse`, `Date.Of`, `UDP.Listen`), and only finds a builder whose name
equals the old one. The fixed file then fails to compile (`module std/net declares no 'ParseIP'`). B17's promise: "a
file from any earlier time reads in today's language in one command". Fix: the tool needs the renames std made (a table
of the stripped names, or reverse the stripping: `ParseIP` = `Parse` + `IP` for a builder `IP.Parse`).
Also seen on the way: the diagnostic `module std/net declares no 'ParseIP'` has no rule tag and no did-you-mean (it gives
`did you mean 'Date.Of'?` for DateOf by edit distance, nothing for ParseIP), and a second error R14 `the call does not
fail with Error` at the same statement for the same cause.

### F3 (low, diagnostics) a constructor called with no arguments says E14 three times, "found 0", "found 1", "found 2"
Reproducer f08_e14thrice.olang: `P()` for `struct(a I64, b String, c I64)` gives three E14 rows at one place. (NEW or
OLDER: to compare with fcdb202.)

### Note: `olang fix` intermittently said `olang fix: cannot run .../tools_X` (variadic_migrate, clone_migrate,
int_literal_i64 three runs in a row) with status 2, then ran the same tool fine; not reproduced in 5 later runs. The
message does not say why (os.Output.Exec's error, which now carries the path, is dropped). Not chased further.
