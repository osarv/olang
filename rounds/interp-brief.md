# Round "interp" (wt-interp, /home/user/wt/interp; opus high)

You bring the olang interpreter (`olang interpret`, compiler/interp.olang over compiler/eval.olang) current with the
language, and make sure it cannot fall behind again. Repository: /home/user/wt/interp, branch wt-interp. CLAUDE.md,
PRINCIPLES.md and .claude/memory/ load automatically; they are the project's rules. Keep a hand-off note, PROGRESS.md at
the worktree root (done, decided, next), current as you go.

## Why (the user asked 2026-11-07: "is the interpreter up to date?")

The evaluator's semantics are held by every language change's compile-time tests (asserts it decides, globals it
bakes) and `make verify` runs a set of programs through `olang interpret` (checks/checks.olang). But running the whole
test corpus and std through the interpreter and comparing with the built programs - `make evaldiff`
(compiler/tools/evaldump.olang, compiler/tools/evaldiff.olang, the makefile's evaldiff target, compiler/goldens/run.txt)
- is outside `make verify`. It was last measured 2026-10-23 (23 of 26 files alike; cancel and chan differing because
tasks run one after another under interpret, B3e, decided; linalg too slow - since removed), and evaldump was noted as
not building on 2026-10-26 and 2026-11-02. About two weeks of language rounds have gone in since (unique, destructors
where the holder lets go, Copy, immut, immutable String, kept locals, inferred scopes, fn&, nullable arrays ...).
The user wants plain `olang` to open the interpreter as a prompt (a REPL) later, with a Jupyter kernel on it, so the
interpreter has to be right first.

## What to do

1. Make evaldump and evaldiff build and run with today's compiler. Check that compiler/goldens/run.txt still says what
   the built programs print (rungold captures from the port: recapture where a built program's output legitimately
   changed, never to hide a difference you have not explained).
2. Run the corpus, std's tests and the checks' run cases under the interpreter. For each difference decide: the stated
   limit (tasks in sequence - std/chan's waits, std/cancel's spinning task; B3e), a bug (fix it in eval/interp/lower as
   needed, with a test), a stale golden, or speed (measure; fix where reasonable, else record).
3. Put the comparison into `make verify` (the suite), with the expected differences listed by name, so a new
   difference fails verify. Keep its cost reasonable (per-file make targets as the suite's test@ targets are, measured);
   if the whole corpus is too slow, say what you chose and why.
4. Records: SPEC's B3e if anything it says changed; CLAUDE.md - its line "`interpret` is stage 1 (no memory reclaimed,
   no destructors, tasks in sequence)" is stale (M8 reclaims scopes and runs destructors) - make it true; HISTORY.md's
   entry; CLAUDE.md's checklist item 3 and DEPENDENTS.md: every language change keeps the interpreter comparison green.

## Rules of work

- Commit each coherent piece as you go, only the paths you changed - never `git add -A`; no Claude attribution lines;
  do not push; leave .claude/memory/ to the coordinator.
- At most three blocks nested inside a function's body (four on a special occasion); use the construct that fits best.
- Develop with targeted runs and `make quick`. Run the full `make verify` once at the end, only through
  `/home/user/vlock make verify > verify.log 2>&1` (one slot; the lock queues you). Logs inside your worktree, never
  in build/.
- Other agents are working at the same time: struct patterns in /home/user/wt/structpat (check.olang's pattern code)
  and destructor collections in /home/user/wt/drops (check, lower, free, the prelude's collections). Keep to the
  interpreter, the evaluator and the tools where you can; if a fix needs check.olang or lower.olang, keep it small and
  say so in your report.

## Report

What was out of date and what you fixed (each with its test), the expected differences left and why, how verify now
runs the comparison and what it costs, verify's result, and what was left.
