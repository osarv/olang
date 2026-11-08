# olang design principles

olang is a custom programming language. C-like structure, with quality-of-life improvements over C.
Its direction (the user, 2026-10-08): no manual memory management, C-like performance, natural language as much as
possible, minimal syntax, multi-purpose (AI/data science, scripting, GUI) - the base of larger projects, so the design
has to be solid and smooth. The full statement - the principles, what they mean in practice, what is deliberately not done,
and how to judge a new feature - is `PRINCIPLES.md`, imported here:

@PRINCIPLES.md

Error handling is modeled on Zig (explicit error sets/unions, no exceptions). Longer-term direction:
Rust-like compile-time memory/security guarantees (underway - see "Memory and scopes" in `docs/settled.md`;
scope containment is checked at compile time, a general borrow checker is not, and nothing about freeing is written by
the program: freeing early is the compiler's, `docs/memory.md`).

What depends on what across the repository - which files change with a keyword, an option, a diagnostic, a std API -
is `DEPENDENTS.md`.

This file holds the checklist and the memory imports, kept terse on purpose; the design record is `docs/settled.md` - not a spec (see `SPEC.md` for the
normative, current-state language reference) and not the full story either (see `HISTORY.md`
for the complete discursive record behind every entry of `docs/settled.md`: why each decision was made, what was
tried and reverted, what bugs were found and fixed along the way). Whenever a design decision is
made, implemented, revised, or reversed: write or extend the full entry in HISTORY.md in the
same session, and keep the short current-state entry in `docs/settled.md` in sync with it - don't let either
drift out of sync with the actual code.

## Claude's memory

What Claude has learned working with the user, in four files in `.claude/memory/`, imported here so every session
starts with them: `rules.md` (their standing rules and corrections), `direction.md` (their direction for the language,
how they write, their time zone), `plan.md` (the work order and recorded future work), `decisions.md` (the ledger of
questions put to them and the decisions made for their review).
`MEMORY.md` is the index; `archive/` holds historical notes, which are not imported. Keep them current in the same
commit as the work, as with this file: a new standing rule or correction from the user goes into `rules.md` under its
topic (with their words) and, if it adds a file's worth of something new, a line in the index; and every question put to
the user goes into the ledger (`decisions.md`) when it is asked.

@.claude/memory/MEMORY.md
@.claude/memory/rules.md
@.claude/memory/direction.md
@.claude/memory/plan.md
@.claude/memory/decisions.md

## Checklist for every language change

Go through this for every change to what olang means - a rule added, revised or removed - before calling it done:

1. **Spec first**: write or revise the rule in `SPEC.md`, grammar included.
2. **Checker and codegen**: implement it so the code conforms to what was just written.
3. **Compile-time evaluator** (`compiler/eval.olang`, K1): give it the same semantics - never leave it refusing or diverging
   from the run time. Prove the two agree with a test the evaluator actually runs (an `assert` it can decide, S18c,
   or a global it bakes, K2) beside the run-time test. `interpret` runs every test file and run case the build runs
   (`interp@FILE` in the suite, compiler/tools/evaldiff.olang): it stays green, a difference the interpreter must have
   listed there by name with its reason.
4. **Tests**: corpus tests for what now works (read back after an arena churn where scopes are involved), and
   `checks/cases` programs for what must now fail, each naming the expected diagnostic.
5. **Migrate the corpus and `std`** when the change invalidates code; keep old tests unless the change invalidates them.
6. **Diagnostics**: new errors name the rule and say what to write instead; reword any message the change made stale.
7. **Record it**: the current-state entry in `docs/settled.md`, the full story in `HISTORY.md`, and any question left open in the
   pending-decisions ledger (`.claude/memory/decisions.md`).
8. **Walk `DEPENDENTS.md`** for this kind of change - every place that must change with it (SPEC, scanner, formatter,
   LSP lists, editors/nvim, `help`, READMEs, goldens, seed, fix's table); `make consistency` (in `make verify`) fails
   naming the file for the edges it can check.
9. **`make verify`** passes, then commit.

## Settled decisions

The full entries - the current state only, one per area, naming its rules - are `docs/settled.md`. Read the entries for
the area you touch before changing it. Why each holds, what was tried and reverted: `HISTORY.md`; the rules themselves:
`SPEC.md`. "(the user's call)" marks a decision the user made; the rest are mine within their direction. Index of its
subsections:

- **Syntax and statements**: line breaks, listing rule, `fn`, comments, one-line bodies, command-line words and tools (explain, doc, lsp, mcp, api), operators, loops, `match` and patterns, tests, `defer`, `become`, literals, text rendering.
- **Types**: numeric primitives and widths, widening, references and `&`, permissions, arrays, structs, `immut`, `unique`, destructors, packed structs, enums, methods, operators as methods, lambdas, traits, `any`, function types.
- **Generics**: generic enums, type arguments and parameter lists, monomorphization, needs, inference, error-set parameters, generators, reflection, attributes, function facts.
- **Errors**: error sets and `?`, `try`/`catch`/`!`, error types and values, errors carrying data, std errors, `main`.
- **Memory and scopes (§8)**: scopes inferred, no manual scopes, run-time scope lookup, reference locals per assignment, placement, lending, constructors, early freeing, no reference counting.
- **Concurrency**: `join`/`spawn`, failing tasks, memory model, atomics, runtime threads.
- **Modules and the build**: modules and imports, remote packages, separate compilation, optimization, targets, conditional compilation, diagnostics.
- **Compile-time evaluation**: the evaluator, `comptime`, constant contexts, decided asserts, `interpret`, `embed`.
- **std**: text, math, collections, printing, libraries, `extern fn` and C interop, naming rule.
- **Codegen and runtime**: the runtime, cold paths, no per-operation checks, optimizations, testing.
- **The C compiler and the port**: stage 0 removed, the port, numeric traits, traits, contracts, `olang fix`, definite initialisation, the formal spec.
