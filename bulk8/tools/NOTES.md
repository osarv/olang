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
