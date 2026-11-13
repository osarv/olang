---
name: rules
description: "Standing rules from the user for how Claude works on olang, oann and oagent: commits and git, agents and pacing, deciding and recording, language rules, code rules, the compilers. Short form; stories and the user's full words are in archive/rules_log.md."
metadata:
  node_type: memory
  type: feedback
  modified: 2026-11-08
---

Short form (2026-11-08): each rule and how to apply it, with the user's words only where they are the rule. The
rationale, stories and superseded paragraphs are in archive/rules_log.md (the section "Full text of rules.md before the
slimming of 2026-11-08").

# Commits and git

- **Repositories**: olang, oann, oagent (locally /home/oscar, in the cloud /home/user). hotpath is now called Odysx and
  has its own session; its clone was removed from this container at the user's request (it stays on GitHub, never delete it
  there). It is not cloned or worked on here. No company work in this session or its memory. (why: archive/rules_log.md)
- **No Claude attribution**: author and committer are Oscar Arvidsson <oscar.arvidsson@protonmail.com>; messages in the
  repo's `<Rule>: <what>` style end without Co-Authored-By or Claude-Session lines, whatever the environment's reminder
  says ("Remove yourself from the commits"). In a fresh container set `git config user.name/user.email` and
  `commit.gpgsign false` in each repo; never re-author as Claude. (why: archive/rules_log.md)
- **Push always** ("remember to push always"): push every agent's branch as `wt-<name>` at each report, and master and
  the designated branch after every merge. **Merge promptly, keep branches** (never delete them, locally or on GitHub);
  removing a finished worktree is fine. (why: archive/rules_log.md)

# Agents, models, effort and pacing

- **Subagents**: parallelize independent work, each implementation agent in its own worktree
  (`git worktree add /home/user/wt/NAME -b wt-NAME`), committing there; records (CLAUDE.md/settled.md, HISTORY.md,
  SPEC.md) written by the agent, memory/ledger left to me; I merge, resolve append conflicts, run `make verify`, push.
- **The main session coordinates; agents do the hands-on work.** Anything beyond a quick lookup, a merge, a gate run or a
  record goes to an agent with a brief, build and tooling fixes included. Every brief: commit only the paths you
  changed, never `git add -A` over the tree; commit each coherent piece as you go; nesting at most 3-4 blocks; use
  the construct that fits; walk DEPENDENTS.md; be resourceful (read only what you need, no speculative work) and report
  in at most about 10 lines. (why: archive/rules_log.md)
- **Model and effort per task. Tokens are the scarcest resource** (2026-11-08: "the more we can do with less, the
  better", "be resourceful"). Set `model` and `effort` together. Defaults: Sonnet at medium or low for anything with a
  clear contract or an oracle (std, migrations, records, docs, paper notes, benchmarks, searches - Haiku for pure
  searches and running known commands); Opus at high for compiler features and fixes, restructuring (the compiler/
  refactor) and all validation; Opus xhigh only for new section-8/ownership design. Sonnet may build small
  self-contained pieces; restructuring and validation stay on Opus. Take the cheaper model for a first pass only where a
  review or test oracle catches mistakes; never for soundness work.
- **Effort low by default (the user, 2026-11-08: "be especially restrictive with the effort that you give the agents
  ... a lot of the resources that we use are spent when the agents are just spinning ... don't make the agents
  overthink").** Effort: low for mechanical work, medium for everything else including compiler work on a planned list;
  high only for hard debugging or a design the brief cannot settle; xhigh never unless the user asks. This overrides the
  effort in the defaults above.
- **Learn the right model and effort from data (the user, 2026-11-08: "develop some sense of when the effort and model
  are good enough ... with kind of data on it ... you don't have to one-shot everything").** /home/user/review/agents.tsv
  logs every agent: model, effort, tokens, tool calls, minutes (from its completion notice; review/agstats.py backfills
  from the transcript), then whether its verify passed first time and the bugs later found in its work (reviews, fuzzers,
  later rounds). Vary effort and model on comparable tasks on purpose; every ~10 agents read the table and move the
  defaults above. Prefer fast iterations against the tests (build, run, fix, repeat) over long deliberation up front.
- **Reviews**: routine soundness reviews opus high; full reviews in bulk, over several merged batches ("not one per
  change"); no more C-compiler (stage 0) reviews. (why: archive/rules_log.md)
- **Agent length**: one fresh agent per round of a big batch, from a hand-off note kept up to date; resume only for a
  short follow-up within about an hour; never resume a very long agent for a new round.
- **Pacing by usage**: every week until the user changes it, use what the work needs, run in parallel only what does not
  slow the other or cost extra tokens (no merge-conflict rework, duplicated work, agents idling on the verify slot), and
  **stop code work at ~0.92 weekly** (nothing new starts near it; running agents finish and merge; no end-of-week burn
  unless the user says). A survey the user asked for runs to its end. Usage: `list_events` on the session id with
  `kinds: ["rate_limit_event"]`, `unifiedWindows.seven_day`. The five-hour window is gone. (why: archive/rules_log.md)
- **Keep the loaded context small, always** ("the token context is kind of the biggest cost"): what every session loads
  (CLAUDE.md, PRINCIPLES.md, memory files) stays small continuously - an answered ledger entry moves to
  archive/decisions_log.md in the commit that records the answer; a finished plan.md entry to archive/next_steps_log.md; a
  superseded rule to archive/rules_log.md; the settled decisions are docs/settled.md, read on demand; briefs point at
  files; my replies stay short. Propose a /compact with a ready prompt when it is a good moment.
- **Never lose work to a limit**: arm `send_later` for a few minutes after `resetsAt` before a window runs out when work is
  left; agents commit as they go. The check-in is 6-hourly and silent (/home/user/checkin.sh), its only job a container
  restart or a stale lock. `/home/user/wipsnap.sh` (run by wiploop.sh) saves worktrees to `refs/wip/<name>` and pushes
  `backup/<name>` branches every 10 minutes (review notes as `backup/review`); recover with `git fetch origin
  backup/<name>`; delete a backup branch once its work is merged. (why: archive/rules_log.md)
- **Distribute the load**: 4 cores, ~15GB RAM. At most ~2 agents needing a full verify at once (`/home/user/vlock CMD`,
  two slots); fill the rest with light work; agents run targeted tests and one full verify at the end; touches-everything
  changes run alone; look at `pgrep -af "flock /home/user/verify.lock"` and the load before starting; logs inside the
  agent's own worktree; merge promptly. `make race` needs `libclang-rt-18-dev` (`apt-get install`).

# How to decide and record

- **Decide details myself** (spellings, edge cases, API names, error words, which of two reasonable semantics), by
  direction.md, and record them in settled.md/HISTORY.md as decisions. Ask only about direction: what changes the
  language's character, removes a capability, or trades one principle against another. Reports: what landed, what I
  decided briefly, the few direction questions.
- **Record every question** put to the user in decisions.md at ask time (question, default in effect, recommendation);
  unanswered is not consent; remove only once answered, moving the answer to settled.md/HISTORY.md. Only direction-level
  questions go in the ledger.
- **Number the questions** (1., 2., 3.) in every end-of-turn list.
- **No AskUserQuestion for design brainstorms**: lay out 2-3 options in prose with a recommendation and the tradeoff.
- **Revisit the user's own decisions when they prove rigid** ("if something becomes really rigid and in the way, then
  change it"): with evidence (the code it got in the way of), following PRINCIPLES.md, recorded as a reversal and
  mentioned in the next report. Not for what is merely unfamiliar.
- **Build what we will build anyway now** (2026-11-08): where I would say "yes, later" for something clearly to be built,
  say so and offer it now; the user's yes covers only the question asked.
- **Keep the design record current**: whenever a design decision is made, implemented, revised or reversed, update
  docs/settled.md (terse, current state) and HISTORY.md (the story) in the same session. Memory files live in the repo
  and are committed with the work.

# Language rules

- **No per-operation run-time checks** ("It's not even a question"): checks are opt-in by a named call that fails
  (`try a.Get(i)`, `x.Narrow<T>()`, `std/arith`), per construction, or compile-time. Never offer an always-checked option.
- **Errors are errors**: absence, exhaustion and failure are errors; never a value beside a Bool flag. Applies to the
  compiler's own code too: new code declares an error.
- **Every language change goes through the checklist** at the top of CLAUDE.md. The compile-time evaluator stays current:
  an exclusion needs a real reason, "not built yet" is a gap; it should run everything it can, and designs reach for
  compile-time evaluation and inference wherever they can stand in for a run-time check or written annotation.

# Code rules

- **Everything in olang**: committed scripts, tools, test servers, generators are olang programs; C only for the stage-0
  era bootstrap, bench counterparts and C runtime tests; Python and shell never (throwaway scratch scripts excepted,
  never committed). Tools run as `build/out build tools/X.olang && build/tools_X ARGS`.
- **A README per folder** that is a thing of its own, in the commit that creates it; kept current.
- **Keep old tests**: the suite is additive; touch an old test only when the language change invalidates it.
- **Nesting depth: three blocks, four at most** (mine and my agents' code only): guard clauses, `:` one-liners, helpers.
- **One-line bodies (the user, 2026-11-13: "a lot of places where we dont use the new : semantic for one-statement followups on conditions or loops blocks")**: a block of one simple statement after `if`, `else`, `for`, `catch` is written `if c: stmt` (S1b), always, in new code and in every refactor; the refactor pass converts the existing ones with a cheap tool ("just dont spend 10 percent of a week on it").
- **Use the construct that fits**: the language's newer forms (guard clauses, narrowing, `case P: v`, conditional
  expressions, comprehensions, generators, `try` over a whole expression, named arguments, `become`, `defer`, reflection,
  lane operators) over C-style habit.
- **Keep every dependent part in step**: walk DEPENDENTS.md for each change; a new edge found goes into the map in the
  same commit; `make consistency` checks the mechanical ones.
- **Style and conciseness**: do exactly the refactor asked, to the destination named, without substituting; no leftover
  cruft; match the surrounding file's conventions. Never split a file for length, only at a real module boundary.
- **Surface and fix bugs found along the way**: fix on sight and report what broke and why, unless the fix needs a
  design decision ("fix everything you think might be a problem that doesn't require design decisions, always").
- **Optimizations are mine to decide**: one that changes no meaning is never a question - measure, queue, build, report
  in a line. Only one needing a language change, a new visible cost or a trade against a principle goes to the user.
- **The memory model may grow, without run-time cost**: compile-time-only additions that let refused programs work or
  free memory earlier are welcome; reference counting only with a really good case, and asked first.

# The compilers

- **The port is a redesign**, not a transliteration: decide the standard design per module (hand-written scanner,
  recursive descent with Pratt expressions, demand-driven checker over an AST of enums), use the C only as reference
  for what olang means. Acceptance is the suite plus the bootstrap fixed point.
- **Stage 0 (C) is gone** since 2026-10-23; the seed bootstrap stands.
- **oann waits** until the compiler is mature (version 1 settled, built, verified); no oann or oagent catch-ups before
  that; the migration tools are kept to catch it up in one go.
- **Compile per module, whole program only on top**: facts and code per module, reused when inputs did not change
  (B3i); whole-program steps only in the final link/instances step. A design that makes one edit recompile others states
  that cost and goes to the user; both variants are measured where whole-program facts make memory safety clearly better.

## Temporary files
The user, 2026-11-09: delete /tmp data (the scratchpad, agents' scratch, fuzz and check output) whenever it is useful,
no need to ask.
