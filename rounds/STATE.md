# Coordinator state - read this first after a compaction (2026-11-08)

Running (background agents, worktrees under /home/user/wt): kw (round 1 of docs/fnvalues.md: one tier of keywords,
promise words reserved), refusals (audit of every memory refusal -> docs/refusals.md), genrefs (generational
back-pointers instead of counting -> docs/genrefs.md), bench (benchmarks in the test runner, continued from a WIP
commit), satarith (arith.Saturating<T>, continued from a WIP commit). Rules for build rounds: round-rules.md here.
On each finish: review the report, merge into wt-merge (/home/user/wt/merge), make consistency, push master + wt-merge
+ claude/github-environment-setup-ftu9va, record the user's questions in .claude/memory/decisions.md (open ones only).
Next, one at a time where files overlap: fnvalues round 2 (Destroy removed, sonnet) after kw merges, then rounds 3-12
per the note's section 14 (12 = constructor-fixed fields followed + promise words on trait methods, both YES);
the refusal audit's fixes after the fnvalues rounds; genrefs' build after its note is approved; REPL + Jupyter,
coverage, platforms, olang get after bench/satarith. oann holds until version 1 is mature.
Usage is the main resource: one agent per round, short briefs, propose /compact to the user with a prompt.

2026-11-08 ~12:25 CET: merged and pushed refusals, genrefs (questions pending; user settles "in a couple of hours", no
dependent agent before), bench, satarith, kw (round 1) - master 5ec9f2f9. Round 2 (Destroy, sonnet) running in
/home/user/wt/destroy. Known: the "many local ifs" check needs ~5 GB (pre-existing, not a regression) and is killed
under a full verify's load - a fix to queue (memory of interpreting 20000 ifs). Refusal answers: 1,2,3,6 yes; 4 to
discuss; 5 open.
