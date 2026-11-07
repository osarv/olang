# Design note "errdata" (wt-errdata, /home/user/wt/errdata, from 869788c; started 2026-11-07 ~08:15 CET; opus high)

You write a design note for the olang compiler - no compiler changes. Repository at /home/user/wt/errdata on branch
wt-errdata (from master 869788c). CLAUDE.md, PRINCIPLES.md and .claude/memory/ load automatically; read them as the
project's rules. Three agents build at the same time in /home/user/wt/drops, /home/user/wt/asm and /home/user/wt/deprec;
you only read code and write docs/errdata.md (and a line in docs/README.md), so you touch nothing of theirs. Do not
build anything (disk and memory are shared and tight); read the code instead.

## The question: errors carrying data

The user, 2026-11-07, deciding to add it (deferred since 2026-10-24, when it was framed as "payload words without
references"): today an error is a word - `os.Error.NotFound` cannot say which file, a parse error cannot say which line.
Design how an error word carries plain data, so `error ParseError.Bad(line, col)` raises one and a catch, a match, `$e`
and a stored error value can read it - with the success path paying nothing (PRINCIPLES.md 2).

## What exists today (read these first)

CLAUDE.md's Errors entries (R1-R8 codes and `?`, R3b errors declared where raised, R1a inferred sets, R1c words in a
set, E24 `try`'s reach, E35 `!`, R9a/R11 catch clauses, T19/T19a error types and named sets, R11b catch names, T20
errors as values, S18d the error return trace); SPEC's R and T19/T20 rules; compiler/check.olang's error handling (sets,
codes, catch, `error e`, error values, narrowing on them), generic.olang's error lists (`errorList`, R6 codes),
lower.olang (the error union `{i32 code, T}`, recoding, `toClause`), emit.olang, eval.olang and interp.olang (how both
run errors), scope.olang (where values live - a payload holding text has to live somewhere), std/json's encoding of error
values, X14's export fn codes.

## What the note must settle

Decide every detail that is yours to decide (the project gives you that authority within PRINCIPLES.md), and list the
direction questions for the user separately, numbered, each with your recommendation and the default if unanswered:

1. Spelling: a payload on a word declared in a type (`type ParseError error { Bad(line I64, col I64), Eof }`), and on an
   error declared where raised (R3b: `error NotFound(path)` - where do its payload's types come from?); raising one;
   reading one in a catch clause (`catch ParseError.Bad e { e.line }`), by narrowing an error value (S8d), by a match
   pattern (`case ParseError.Bad(line, _)`); `$e` rendering it (`ParseError.Bad(3, 7)`).
2. What a payload may hold: numbers, Bool, Char, text held by value (its own copy), plain enums and structs of those;
   no references (they would outlive their frame) - or say why otherwise.
3. Where a payload lives at run time, with each option's cost on the success and the failure path: (a) carried in the
   error union by value (every fallible call's result grows); (b) a thread's error-payload slot written at the raise
   and copied out where a clause names the error or an error value is kept (Zig's diagnostics pattern made implicit);
   (c) storage in an arena region named by the code; anything better. Section 8: where a copied payload's text lives.
4. Error values (T20) with payloads: their size and layout, `null`, `==` and Hash (payloads compared or not), stored in
   fields, collections and type arguments; a value of a wider set narrowed to a narrower one.
5. Propagation: `try` passing the error on with its payload (R6's recoding changes the code, never the payload);
   payload words in a function type's set (T22) and in named sets (T19a); `catch LoadError` taking members with payloads.
6. The compile-time evaluator and `interpret` with the same semantics (K1), and errors leaving a baked global (K2).
7. The trace (S18d), `!`'s message, `main`'s `unhandled error:` line, X14's export fn codes (the payload not exposed, or
   how), std/json's error values.
8. std: which errors should gain payloads (os's with the path, json's with line and column, csv's with the row, flags'
   with the flag, net's with the address ...), the API change each is (`olang api` would call it breaking), and the
   migration.
9. Prior art, briefly: Zig (codes only, diagnostics passed out), Rust (enums with data, `Result<T, E>` sized by E),
   Swift (boxed errors), Go (the error interface, heap), C++ `std::expected`.
10. The build plan: rounds, which compiler files each touches, the checklist's items (SPEC rules, the evaluator, tests,
   checks/cases, std migration, records), and the risks.

## Output

docs/errdata.md, committed on wt-errdata (only that file and docs/README.md's line; never `git add -A`); no push. Keep a
"## Progress" section at its top while you work, so a fresh agent can continue after a restart. End with a short report:
the recommended design in a few lines, your decisions (numbered), the direction questions (numbered, with your
recommendation each).
