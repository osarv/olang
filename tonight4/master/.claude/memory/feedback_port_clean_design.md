The self-hosted compiler is a redesign, not a transliteration of the C one.

The user, 2026-10-09: "When creating the self hosted compiler, please don't just copy the C solutions. Instead try to be
smart about it and clean things up. Use industry standard where possible, for example the tokenizer doesn't really
look very good, probably not very industry standard."

**How to apply:** for each module of the port, first decide the standard design and write it idiomatically in olang;
use the C code only as the reference for WHAT olang means (behaviour, diagnostics, edge cases), never for HOW. Known
non-standard spots in the C compiler: the tokenizer matches a table of mini-pattern rules (`$a $d`...) at every
position - standard is a hand-written scanner (switch on the first character, maximal munch, identifiers then a keyword
lookup, tokens as spans into the source, line/column from a line table, statement-end insertion as Go's lexer does);
the parser backtracks and memoizes by position - standard is recursive descent with Pratt/precedence climbing for
expressions and one token of lookahead (where olang's grammar needs more, flag it as a language question rather than
backtrack); the checker is one 14k-line pass - standard is separate name resolution, type checking and lowering over
an AST of tagged unions (enums) with node spans for diagnostics. Acceptance for the port is behaviour (the whole test
suite) plus the bootstrap fixed point, with per-stage diffs (tokens, AST) against the C compiler where cheap - not
identical IR, which would force the C design onto the port. Self-hosting starts only after the bug fixes and the
refactor ([[project-olang-next-steps]]).
