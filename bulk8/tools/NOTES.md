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

### F4 (HIGH, NEW: T19b, 332caf4/e9d8fde - lower.olang `mainPayloads`) an error whose word carries a payload escaping `main` skips every defer, errdefer and destructor of main
Reproducers f16_mainescape.olang (a unique resource, defer, errdefer, an inner block's defer), f17_oserror_main.olang
(the everyday case: `defer w.Flush()!` in main, `try os.ReadFile(...)` failing - os.Error's words all carry the path
now, so the buffered line is lost; the compiler at fcdb202 printed it). f16_plain.olang, the same program with a
payload-free word, runs `inner deferred, errdeferred, deferred 1, destruct 1` before `unhandled error`; with `Bad(n
I64)` nothing of it runs - built, -debug and interpret alike. Cause: `lowering.raise` calls `mainPayloads` (which ends
the block with `Term.Exit(Unhandled)`) before `ln.leave(0)`, so the exit is taken at the raise/try site with every
scope of main still open. Violates S19 (defer on every way out but the process-ending ones - an escaping error is
main's way out, as for plain words), S19e, O15 (a destructor runs once where its holder lets go - here never). Fix:
say the payload after `leave(0)` (the payload record lives on its own stack, untouched by the deferred code).

### F5 (medium, NEW: test -interpret 53c380a/ad6be32) `olang test -interpret` runs no destructor of a test that fails
Reproducers f19_testassert.olang (an assert failing in a helper), f18_plain.olang / f18_testescape.olang (an error
leaving the test). The built test binary unwinds the failed test's open scopes (P1d): `destruct 2`, `destruct 1`
before the FAIL line; `test -interpret` prints none of them - the failed test's resources are never released, and the
run goes on to the next test in the same process (a file, a socket, a lock held across tests). B3e/CLAUDE.md say
its output is the built binary's line for line; evaldiff compares only the ok/FAIL keys, so the suite cannot see it.

### F6 (medium, OLDER - same at fcdb202) an error leaving a test's body skips the test's deferred code
Reproducer f18_plain.olang: `defer io.Println("deferred " $r.id)!` in a test whose `try f()` lets E.Bad through: the
built binary runs the destructor (`destruct 1`) but never the deferred code; same at fcdb202. S19 says deferred code
runs on every way out of its block, "an error leaving the function - ... a `try` whose error no clause takes"
included; S16 makes an error leaving a test an ordinary failure, not a process-ending one. (A failed assert is S16d/S18's
"no cleanup" class, so f19's skipped `helper defer`/`deferred` is as specified - only the destructors are P1d's.)

### F7 (low, NEW: test -interpret) `test -interpret`'s "no test is named by 'w'" line has no did-you-mean
f02_tests.olang with word `twce`: built `... - did you mean 'twice'?`, interpreted the bare line (B11's did-you-mean,
B3a). Also with several files (f04_testbang.olang f19_testassert.olang next).

### F8 (low, NEW: B21 x R3b payloads) `olang api` calls a raised error's change a "changed global"
api/old, api/new: `error Raised(n I64)` -> `Raised(n I64, why String)` is listed `breaking  changed global: error
Raised(n I64)`. Correctly breaking; the kind word is wrong (an error, not a global). The rest of api's rows checked and
right: a payload's field type changed, a payload added to a plain word, a builder's defaulted parameter, a builder
removed and added, a packed struct's field widths.
