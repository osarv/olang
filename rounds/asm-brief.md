# Round "asm" (wt-asm, /home/user/wt/asm, from ab1253e; started 2026-11-07 ~07:45 CET; opus high)

You are building one feature of the olang compiler (a self-hosted compiler written in olang; repository at
/home/user/wt/asm on branch wt-asm, created from ab1253e). CLAUDE.md, PRINCIPLES.md and .claude/memory/ load
automatically; read them as the project's rules. Another agent works at the same time in /home/user/wt/drops on
destructors and early freeing (free/lower/check/typed/effects and the collections) - stay out of those files.

## The feature: `olang explain -asm FILE NAME` and `olang explain -ir FILE NAME` (QBP 7, LIST.md A14)

Decided by the user 2026-10-27 ("build it"; decisions.md "QBP 7 DECIDED"): one function's code as the build compiled
it - `-O3` and LTO, from the build's own objects - with LLVM's optimization remarks (vectorized or not and why, inlined
or not, ...) mapped to olang source lines through line tables; `-target`, `-quick` and `-define` apply (and `-update`,
as for explain). `-asm` prints the function's machine code, `-ir` its optimized LLVM IR; in both, olang source lines
interleaved where the code comes from them, and each remark attached to its line.

- NAME as `explain FILE NAME` takes it: a function, `Type.Method`; a generic shows each of its instances' code in turn
  (as explain shows each instance's signature); a name with no code (inlined everywhere, never called) says so.
- The program is built as `build` builds it, with line tables (the profiler's `LineTablesOnly`, emit's `ProfName`
  naming functions as source writes them) - objects of their own (as `.prof`/`.quick` are), so no other build's IR
  changes (check: bench IR byte-identical, the compiler's own objects unchanged).
- Where the final code exists only after the LTO link, take it from the link (the LTO plugin's or lld's save-temps /
  emit-asm / optimization-remarks options, or disassembling the linked binary with llvm-objdump and its line table) -
  your call, measured; LLVM 18, 19 and 20 must all work (the clang is chosen as the driver chooses it - OLANG_CLANG, a
  release's own, else clang-20/19/18 on PATH; release packaging ships what it needs - `make release`, `releasetest`).
- Remarks: passed, missed and analysis remarks of the passes that matter to a reader (inlining, loop vectorizing, SLP,
  unrolling, LICM, GVN ...), filtered to the function; YAML or bitstream parsed in olang.

## Read first

compiler/explain.olang (Item, Caps), compiler/olang.olang (the option table - each option checked against its modes,
one table, also `help`'s), compiler/build.olang and target.olang (how objects and links are made, B3/B12),
compiler/profile.olang and emit.olang's ProfName and debug-info emission, docs/profiling.md, SPEC B11b/B11c and B20,
DEPENDENTS.md (an option or mode: SPEC, help text, LSP/MCP lists, editors/nvim, README, `make consistency`),
checks/checks.olang's `apicaps` and `profile` scenarios (models for the new scenario).

## Process (the project's rules)

- SPEC first (B11b: the two options, what they print), then the driver, then a checks scenario (build a tiny program
  with a loop LLVM vectorizes and a call it inlines; assert the output names the function, interleaves an olang line,
  and carries a vectorized and an inlined remark), the docs (docs/profiling.md gains a section), DEPENDENTS.md walked,
  CLAUDE.md entry and HISTORY section.
- Develop on targeted runs (build the compiler, run explain on test programs, run your scenario). Before a heavy run
  check `pgrep -af 'flock /home/user/verify.lock'`; run `make quick` and `make verify` through `/home/user/vlock CMD`
  (one slot: two at once get OOM-killed). At the end: `/home/user/vlock make verify`.
- Commit each coherent piece on wt-asm as you go, only the paths you changed (never `git add -A`); no push (the
  coordinator merges). Keep PROGRESS.md (untracked) current - done, decided, next.
- olang only for anything committed (no Python or shell); at most three blocks nested in a function body (four
  rarely); the construct that fits best.
- Disk is shared and tight: one build tree, temporary outputs in the worktree (never /tmp, never build/ for logs),
  deleted once read.

## Report

What was built; how the code and the remarks are obtained under LTO, and why that way; your decisions, numbered, for
the user's review; what the scenario checks; the gate results; anything found on the way (fixed, and called out).
