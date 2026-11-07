# Design note "sec8" (wt-sec8, /home/user/wt/sec8; opus xhigh; a design note first - no compiler changes)

You write the design note for the next section-8 round of the olang compiler. Repository: /home/user/wt/sec8, branch
wt-sec8. CLAUDE.md, PRINCIPLES.md and .claude/memory/ load automatically - they are the project's rules; SPEC.md's
section 8 and CLAUDE.md's "Memory and scopes (§8)" entries are the current state. Read code; build nothing beyond small
experiments in your own worktree (disk and memory are shared and tight - one compiler build at most, no full verify).
Output: docs/sec8.md (and a line in docs/README.md), committed on wt-sec8 - only those paths, never `git add -A`; no
push. Keep a "## Progress" section at its top while you work, so a fresh agent can continue after a restart.

## What the user decided (2026-11-03; decisions.md "NLL DECIDED", "QCR (1) DECIDED")

1. **NLL** - "a reference local takes the scope of what each assignment gives it, every use judged against the value
   it holds there (Rust's non-lexical lifetimes) - the cursor `at = at.parent`, a local declared from a constant then
   given a shorter view, `planAt = args[k]`; compile time only." Needs new section-8 design: a term for a field of the
   cursor's referent, or per-version terms. A work-in-progress patch from an earlier attempt:
   /home/user/review/nll-wip.patch. With it, compiler/tools' scopedump, lowerdump and emitdump build again (they are
   refused today by the reference-local over-rejection - HISTORY.md, search "the three dump tools").
2. **O27 as placement** (QCR 1a, reversing QCB's no-extension rule - the user's call): storage that a view kept longer
   needs is built where the view is kept (as item 17's kept locals are - O28, `plan.Stored`, lowering's `homeKept`), no
   refusal; its memory listed by `-memory`.
3. **T22a's function values carry their inferred relations** (QCR 1c): a function whose captures or obligations relate
   its arguments' scopes becomes a value of a function type that carries those inferred relations (compile time); the
   refusal shrinks to what a written function type cannot match.

Folded in (LIST.md, /home/user/review/remaining/LIST.md): C3 `x2 := x1; return x2` of a constructed local is O10d's
error (the flow does not follow `x2 := x1`); C4 checks case held/gen_walkkept gives two errors for one cause (the
generator body's O27 and the consumer's O10c); C6 `chan.Select(SendOf(c, v), ...)` inside a join block refused by C2d
(a local first works); the T25d imprecision (an element of a constant literal scoped to the literal's temporary
block). Not yours to design: reuse in place, reference counting for values with several holders (QCR 2) and a drop
check (QCZ, asked) come after this round - but say where your design touches them.

## What the note must settle

For each of 1-3 and the folded items: the rule as SPEC would state it (which rules change - O25, O25a, O27, T22a,
O10d ...), the inference (how scope.olang's terms, obligations and placement change; how per-version or field terms
compose with the fixed points that exist), why it is sound (the small formal argument the project asks of every
section-8 change), what it costs at compile time (the scope phase was measured at ~1.35 s on compiler/ - say how you
would keep it near that), what programs newly compile (examples from checks/cases that are refused today and should
pass, and ones that must stay refused), memory effects (O27's placement holds storage longer - say where `-memory`
reports it), the evaluator and `interpret` (K1, B3e), and the build plan: rounds, files (scope.olang, check.olang,
lower.olang, free.olang, eval.olang ...), tests and checks cases, the checklist's items, the risks and what gates each
round (scopesan, scopefuzz, fuzz free, dead regions). Decide every detail within the user's decisions; list direction
questions separately, numbered, each with your recommendation and the default if unanswered.

## Report

The recommended design in a few lines, your decisions (numbered), the direction questions (numbered, with your
recommendation), and the build plan's rounds.
