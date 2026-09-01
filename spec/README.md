# olang Language Specification

This directory is the normative specification of olang: a precise, current-state description of
the language, independent of how or why it came to be that way.

## Relationship to CLAUDE.md

`CLAUDE.md` (project root) is the design *history* — a chronological narrative of decisions,
reversals, bugs found and fixed, and the reasoning behind each. It is discursive by design and
answers "why is it this way, and what did we try instead."

This specification answers only "what is true right now." It contains no narrative, no rationale,
no bug stories, and no references to past states of the language. Where the two disagree, this
specification is wrong and must be corrected — it is derived from CLAUDE.md and the implementation,
not the other way around.

## Process for language changes

Starting now, a change to the language is made in this order:

1. Write or edit the relevant section(s) of this specification first, as a concrete, unambiguous
   definition of the new or changed behavior.
2. Implement the change so the implementation conforms to what was just written.
3. Update CLAUDE.md with the design record entry, as before.

The specification is the thing the implementation is checked against — not the reverse. If the
implementation and this specification disagree at any point outside of a change in progress, that
is a bug in one of the two, and it should be resolved explicitly (fix the code, or fix the spec)
rather than left unreconciled.

## Structure

The specification is split into one file per area of the language, ordered so that each file only
depends on concepts already introduced by earlier files:

| File | Covers |
|---|---|
| [01-lexical-structure.md](01-lexical-structure.md) | Source encoding, comments, tokens, literals, automatic statement termination |
| [02-types.md](02-types.md) | The type system: primitives, structs, arrays, vocab, error, function, and scope types; type identity |
| [03-declarations.md](03-declarations.md) | Type, error, variable, and function declarations; scope of names |
| [04-modules.md](04-modules.md) | Files as modules, imports, visibility, cross-module name resolution, re-export |
| [05-expressions.md](05-expressions.md) | Operators, precedence, literals as values, calls, member/index access |
| [06-statements.md](06-statements.md) | Control flow: if/for/do/match, assignment, return, assert, done/crash |
| [07-error-handling.md](07-error-handling.md) | Error sets, the error-union return convention, try/catch |
| [08-ownership-and-scopes.md](08-ownership-and-scopes.md) | The `scope` type, `own`, reference markers, the static scope checker |
| [09-constructors-and-destructors.md](09-constructors-and-destructors.md) | Constructor-bearing struct types, bare-pun fields, destructors |
| [10-compilation-model.md](10-compilation-model.md) | Compilation units, `-c`/`-t` modes, `main`, test blocks, process exit |

Each file is intended to be read on its own. Cross-references to other files exist only where a
rule genuinely cannot be stated without one, and always name the target file and rule, never an
internal implementation detail (a function name, a struct field) — those belong to CLAUDE.md and
the source, not here.

## Notation

Grammar is given in EBNF:

- `::=` defines a rule.
- `|` separates alternatives.
- `[ x ]` — `x` is optional.
- `{ x }` — zero or more repetitions of `x`.
- `( x y )` — grouping.
- `"literal"` — a literal token spelled exactly as shown.
- `UPPER_CASE` — a lexical token class defined in [01-lexical-structure.md](01-lexical-structure.md).
- `lower-case-with-hyphens` — a grammar rule defined somewhere in this specification.

Each file's normative rules are numbered `<prefix><n>` (e.g. `L1`, `T4`, `S12`) so other material —
future spec amendments, or implementation comments — can cite a rule precisely. The prefix is the
first letter of the file's topic (Lexical, Types, Declarations, Modules, Expressions, Statements,
Errors, Scopes, Constructors, Compilation). A numbered rule is never renumbered; a superseded rule
is marked superseded in place rather than deleted, so citations never dangle.

"Implementation-defined" marks behavior that is deliberately not fixed by the language (e.g. exact
struct layout beyond what's stated). "Unspecified" marks behavior no program should depend on.
"Error" (unqualified) always means a compile-time diagnostic that stops compilation; where a rule
produces a run-time failure instead, it says so explicitly (e.g. "run-time panic").

## Status

This is version 1 of the specification, written against the implementation as of the commit that
introduces this directory. It covers the full language as implemented at that point, including the
static ownership-scope checker. It does not yet cover a general borrow checker, generics, or a
standard library — none of these exist in the implementation yet either.
