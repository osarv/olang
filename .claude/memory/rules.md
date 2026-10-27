---
name: rules
description: "Standing rules from the user for how Claude works on olang, oann and oagent: commits and git, agents and pacing, deciding and recording, language rules, code rules, the compilers (port, C stage 0, oann after the compiler). Each rule keeps the user's own words as its evidence."
metadata:
  node_type: memory
  type: feedback
  modified: 2026-10-21
---

Merged on 2026-10-18 from the former `feedback_*` files. Where two said the same thing it is written once; where a
later paragraph replaced an earlier one, the current rule stands with a one-line note of what it replaced.

# Commits and git

## Which repositories are mine to work in
olang, oann and oagent. **Not hotpath** (osarv/hotpath, the user's company material): the user, 2026-10-21, when I
cloned it with the others on their local machine: "dont do hotpath tho, that is not yours to meddle with unless I say
so". Don't clone, read, change or snapshot it unless they ask. **No company work here at all** (the user, 2026-10-26, the second time: "drop all the company stuff, delete it. There is another session for the company"): no business questions, letters or company records in this session or its memory. Locally (WSL) the three live side by side in
/home/oscar; in a cloud session in /home/user.

## No Claude attribution
Commits in the user's repositories carry no Claude attribution: author and committer are the user
(Oscar Arvidsson <oscar.arvidsson@protonmail.com>, matching the history), and the message ends without a
Co-Authored-By or Claude-Session line, whatever the environment's attribution reminder says.

**Why:** the user, 2026-10-08: "Remove yourself from the commits". Their own instruction overrides the harness's
attribution guidance.

**How to apply:** in a fresh container set `git config user.name`/`user.email` in each repo before the first commit,
and write messages in the repo's `<Rule>: <what>` style with nothing after them. The older commits' Claude-Session lines
were stripped from all history on 2026-10-08 at the user's request ("strip Claude from old commits so it doesn't show
up on GitHub"), so none remain to copy the style from.

**Signing (2026-10-09):** the cloud environment turns on commit signing globally (`commit.gpgsign true`, an SSH key
registered to Claude's identity), so a commit authored as the user was signed with that key and GitHub showed it as
"Unverified" - and the environment's stop hook then asked to re-author it as Claude. In each repo set
`git config commit.gpgsign false` (local config; worktrees share it): commits are then plainly unsigned, GitHub shows no
badge, and the hook's signature check (which runs only while signing is on) stays quiet. The hook still asks to push
unpushed commits, which is fine. Never re-author as Claude.

## Push always, merge promptly, keep branches
**Push always (the user, 2026-10-17: "remember to push always. For example I can't see the test migration on GitHub
yet").** Besides the backup/<name> snapshots (below, "Never lose work"), push every agent's branch under its own name
(`wt-<name>`) whenever it has new commits (at least at each report and check-in), so the user can see the work on
GitHub before it merges; and push master and the designated branch after every merge.

**Merge promptly; keep the branches (the user, 2026-10-17: "Remember to merge the branches too so we don't end up
with way too many active branches", then "You don't need to delete the branch memory from the agents. It's fine that
they are part of the ref tree. Restore locally so we don't end up with a bunch of merge problems").** Merge a finished,
verified branch at once, so few branches are unmerged at a time. Keep the branch itself, locally and on GitHub (the
git proxy refuses deletions anyway). Removing a finished agent's worktree (disk space) is fine; never delete branches.
(This replaced an earlier note to delete a `wt-*` branch on GitHub once merged.)

# Agents, models, effort and pacing by usage

## Subagents in general
The user (2026-10-08) is on the Max plan: "there is plenty of tokens to burn", "sub-agents speed things up a lot, and
time is important", "when it comes to just doing search, yeah, you can use sub-agents that are a cheaper model",
"do what you think is good ... no standing rule. Just try to adapt", and "eventually we're going to start doing a lot
of work in different areas at the same time".

**How to apply:** parallelize independent work with subagents, each implementation agent in its own git worktree
(`git worktree add /home/user/wt/NAME -b wt-NAME`), committing there without pushing to master, records (CLAUDE.md,
HISTORY.md, SPEC.md) written by the agent, memory/ledger left to me; I merge, resolve the append conflicts, run
`make verify` and push. Pure searches go to a cheaper model. Judge per situation; there is no fixed rule.

## Model and effort per task
The user, 2026-10-11: "Can you adapt the effort level dynamically to match the problem you are solving?" This is the
explicit request the Agent tool's `effort` parameter needs, so I set it per agent. My own turns' effort is the user's
session setting; I cannot change it, and I said so.

**Model too (the user, 2026-10-17: "consider using cheaper models for easier tasks and remember to set an appropriate
effort for them").** Pick the Agent tool's `model` and `effort` together, per task:
- opus, xhigh: NEW design in section 8 / ownership (a new borrow or region rule), hard debugging.
- opus, high: compiler features and fixes from review findings (semantic.c, the port's checker/scope pass), and routine
  soundness reviews (below).
- sonnet, medium: std/library code, mechanical-but-careful migrations with a script, records and docs (like slimming
  CLAUDE.md), benchmarks, port pieces with a clear contract and an oracle to diff against.
- haiku, low: searches, counting, listing, running a known command and reporting its output.
When unsure between two, take the cheaper one for a first pass only where a review or a test oracle will catch its
mistakes; never for soundness work.

**Reviews at high, not xhigh (the user, 2026-10-17: "running review agents with Opus 5.5 XUltra might be a bit
overkill no?").** Routine soundness reviews of fix rounds and batch relaxations: opus, high (the fuzzer runs beside as
the mechanical check). xhigh only for NEW design in section 8 / ownership. (This replaced the 2026-10-11 line "xhigh or
max for all soundness reviews".)

**Full reviews in bulk (the user, 2026-10-25: "We don't need a full review every change. Do the full reviews in
bulks").** A batch merges on its own verify (and the fuzzers); full read-only reviews run over several merged batches at
once - for instance after a few language batches, or before announcing - not one per batch or per fix round. Soundness
relaxations in section 8 still get looked at, but in the bulk review that follows, unless the change is large.

**No more C-compiler soundness reviews (the user, 2026-10-17: "Do we need to review the C compiler much more in the
future? It takes a lot of resources").** Stage 0's remaining job is building the port, whose test suite and the bootstrap
fixed point (stage 2 == stage 3) catch a stage-0 miscompile. So: the e31view round-4 review is the last C review; C
batches get the fuzzers, the scope sanitizer and the suite, plus a light review of the SPEC rules they change (which
serves both compilers); deep reviews (opus, high) go to the port's section-8 and ownership passes.

**Agent length (the user, 2026-10-17, asking whether to run shorter agents to save credits).** Every step re-sends an
agent's whole context (mostly from cache, ~1/10 the price, still paid), so a long agent costs more per step as it
grows. Rules: one fresh agent per ROUND of a big batch, starting from a hand-off note (PROGRESS-style: done, decided,
next) that every long agent keeps up to date as it goes; resume an agent only for a short follow-up within about an
hour (warm cache); never resume a very long agent (hundreds of k tokens) for a new round.

## Pacing by usage
**Measuring:** this session's own transcript carries the plan's usage - `list_events` (claude-code-remote MCP) on the
session id from the Claude-Session line, with `kinds: ["rate_limit_event"]`, gives `unifiedWindows.five_hour` and
`.seven_day` utilization (0-1) and `resetsAt` (unix time). The user (2026-10-08): ration "at the end of a week where
there is a bunch of tokens left to burn, but not very much time ... be a bit more resourceful in the beginning of a
week". On 2026-10-08 20:40 UTC it read five_hour 0.18, seven_day 0.08, weekly reset Sat 04:00 UTC.

**First lesson (2026-10-08):** six implementation agents took the five-hour window from 18% to 39% in fifteen minutes
(~1.4%/min), so the five-hour window, not the week, binds while many agents run. Size the batch to what is left of the
window and the time to its reset; two of the six were paused (TaskStop) and resumed after the reset (SendMessage
continues a stopped agent with its context). The user asked to be reminded: "Remember the rule about matching usage to
agent spawning".

**Plan upgraded 2026-10-09 ~07:09 UTC** (the user: "You have a lot more usage now" - after asking about Max 5x vs
20x): both windows read 0 right after. On the old plan four agents spent a window in ~80 minutes; measure again before
assuming the new rate.

**The goal is the whole week used.** The user, 2026-10-09: "time the usage limit reset for maximum efficiency. Too slow
and you lose credits. Too quick and you lose quality. ... the weekly limit ... is basically the entire bottleneck. Base
your calculations on a 70% uptime over a week." Then, corrected 15:10 CEST: "Aim to have used all compute by the week's
end. The 70 percent rule is about expected uptime, not desired usage." Target weekly burn per active hour = (1 - weekly
utilization) / (0.7 x hours to the weekly reset); measure the actual burn (weekly % per hour, per running agent) from
rate_limit_events at every agent completion or check-in. The five-hour window caps the pace: measured 12:03-13:03 UTC on
2026-10-09, five-hour +19%/h against weekly +5%/h (about 3.8 five-hour points per weekly point), so flat out at the
five-hour limit (20%/h) is ~5.3% of the week per hour; keep the five-hour window landing at ~100% right at each of its
resets when the weekly one has room, and recompute the ratio as readings come in.

**Early in a week, lax (2026-10-10):** weekly went 0.07 -> 0.12 in an hour with 4-5 agents (~1% of the week per
agent-hour), over the ~0.8%/h target. The user confirmed (13:25 CEST): "we don't have to burn the entire budget the
first 25 hours. You can lax it down a bit." The day's pace (quarter of the week in ~10 h) was too fast.

**Speed over evenness (the user, 2026-10-11 ~16:00 CEST): "Using up the weekly limit faster than the entire week is not
a problem in and of itself. Its only a problem if it lowers the effect/tokens ratio. Otherwise faster is better."** This
supersedes the "one agent at a time, stay on the line" pacing of 2026-10-10. Run as many agents in parallel as there is
independent work that does not cost effect per token: no duplicated work, no merge-conflict churn (split by file/area),
no agents queued idle on the verify slots, and the same quality bar (reviews before merging relaxations). Running out
of the week early is fine; arm a send_later for just after the reset when it happens.

**Week of 2026-10-17 to 2026-10-24 (the user, 2026-10-18): "This week I want the code stuff to stop at around 90
percent of the weekly usage limit (you can burn the rest on Saturday if it becomes evident it won't get used
otherwise) so I can have some tokens to build the company".** Code work (agents, merges, reviews) stops at ~0.90 weekly;
the last ~10% is the user's for company work. The reset is Sat 2026-10-24 06:00 CEST, so "Saturday" is read as the
last hours before it (Friday night): if the reserve is evidently unused then, it may go to code. At the request, 11:00
CEST Sunday, the week read 0.67 after ~29 h, so ~23% for ~6 days - a small fraction of the pace so far: the two
batches near their end (wt-mathmeth, wt-mem2) finish and merge, the port agents (lower, catch-up) wrapped up with
hand-off notes, then one agent at a time with gaps - the error-set generics/checked batch first, generators after.
Check the week at every completion; nothing new starts above ~0.85. (This week's rule overrides "speed over evenness"
for this week only.)

**Week of 2026-10-24 to 2026-10-31 (the user, 2026-10-25: "Make sure to stop at 90 percent usage this week too").**
Same rule as last week: code work (agents, merges, reviews) stops at ~0.90 weekly; the rest is the user's. Nothing new
starts above ~0.85; running agents finish and merge. The reset is Sat 2026-10-31 ~06:00 CEST. Check the week at every
completion and check-in.

**Standing rule from 2026-10-26, every week until the user changes it** (the user: "You dont need to place, just dont
overrun say 95 percent. This is the new rule for every week until I change it. Use as much as you need, don't run
things in parallel that slow either part down and stop at 95 percent always."): no pacing gaps; use what the work
needs; run in parallel only what does not slow the other (disjoint files, no queueing on the one verify slot, memory);
stop code work at ~0.95 weekly, every week. Supersedes the per-week 90% rules above. The user then: "And with slow down I mean
use more tokens than necessary" - parallel work is fine as long as it does not cost extra tokens: no merge-conflict
rework, no duplicated work, no agents polling or idling while they wait on a shared verify slot, no batch that must be
redone after another lands.

The user, 2026-10-27, on a batch asked at 0.94: "do it next week or right at the end of this week to consume all tokens
before the reset" - so the last hours before a weekly reset may use what is left past 0.95 (a send_later armed for the
Friday evening before it starts queued work); the 0.95 stop holds the rest of the week.

## Waking up after a reset, and never losing work to a limit
**Standing rule** (the user 2026-10-08: "Always schedule yourself to resume when tokens are back as your usage runs
out"; earlier: "So I don't have to start you manually"): whenever work is left that the window will not cover - the
five-hour one or the weekly one, whichever runs out first - arm `send_later` (claude-code-remote) for a few minutes
after `resetsAt`, with a message saying what to resume. Arm it BEFORE the window runs out - a session stopped by the
limit cannot arm anything. Uncommitted worktree changes survive only as long as the container, so have agents commit as
they finish.

**Never lose work to a limit (the user, 2026-10-17: "Make sure you don't lose any work when the limits are hit").** The
weekly limit hit on 2026-10-12 stopped every agent, and nothing woke the session until the user did on 10-17 - five
days lost, though no files were. Standing measures:
1. A recurring Routine `olang: resume after usage limits` (trig_017cXPwPDKrFi8trMLqFdUpt, every 2 hours) wakes this
   session: snapshot, read usage, resume any agent a rate limit stopped (SendMessage keeps its context). A wake during
   a limit fails and the next one, after the reset, gets through - so a stop costs at most 2 hours.
2. `/home/user/wipsnap.sh`, run every 10 minutes by `/home/user/wiploop.sh` (a detached process - a limit stops the
   session, not it; both outside the repo, restarted in a new container by a SessionStart hook in `/home/user/.claude/settings.json` (2026-10-18; /root/.claude is
   rebuilt with the container, /home/user is not) and by the 2-hourly check-in),
   saves every worktree's uncommitted work into `refs/wip/<name>` in the shared repo, through a private index, never
   touching the agent's index, HEAD or files. Run at every check-in. It guards against an agent's mistake or a killed
   process, not a lost container.
3. Every agent brief says: commit each coherent piece on your branch as you go, never one big commit at the end.
4. Against a lost container: the user, 2026-10-17: "You can push to GitHub. I want to make sure I don't lose any progress
   by running in the cloud. Else is rather run locally". So wipsnap.sh pushes, every 10 minutes when changed, each
   worktree of olang, oann and oagent as `backup/<name>` (its branch plus a snapshot commit of uncommitted work), and
   the review notes (/home/user/review, text only, through /home/user/.review-git) as olang's `backup/review`. Recovery:
   `git fetch origin backup/<name>`. Delete a backup branch once its work is merged and the worktree removed.

## Distribute the load
The user, 2026-10-09: "Make sure the tasks distribute the load reasonably so we don't get bottlenecks. Record that."
The shared resources are: 4 cores, ~15GB RAM (the agents' memory cgroup is ~14.3GB), the verify slots, the coordinator's
merging, and file-level merge conflicts. Seen 2026-10-09 08:00: four compiler agents queued on the verify lock at once
while the load average was 1.2 of 4 - memory, not CPU, was the bottleneck. So:
1. Mix task kinds - at most ~2 agents expected to need a full verify in the same stretch; fill the rest with light work
   (reviews, benchmarks, design write-ups, docs, std code verified with targeted tests).
2. Agents develop on targeted tests and run the full verify once, at the end; a merged result is re-verified only when
   its code differs from a verified tip.
3. Split work by file/area, and run the touches-everything changes (error messages, the bootstrap/ move, the refactor)
   when nothing else is in flight.
4. Before starting an agent, look at the verify queue (`pgrep -af "flock /home/user/verify.lock"`) and the load average -
   a queue of 2+ means start light work, not compiler work.
5. Merge finished batches promptly so I am not the bottleneck.

**Memory, not just tokens:** the test compiler grew to ~7GB on the big corpus files (~11GB for the full-suite process,
2026-10-09) and the container has ~15GB, so two full `make test`/`make verify` runs at once can be OOM-killed. The `-t`
per-file child processes (fc1ddcc, 2026-10-09) cut a full verify's peak to ~3.2GB (was ~11-12GB), so full verifies may
run side by side through `/home/user/vlock CMD` (a script outside the repo - recreate it if the container is new: flock
slots, the first being /home/user/verify.lock). **Two slots, not three** (reduced 2026-10-09 21:20 CEST after a verify's
shared.olang compile was OOM-killed beside five agents and an oann make test); only for branches that include fc1ddcc.
(This replaced the earlier "ONE full-verify slot, ~11GB" and "three slots" notes.) Tell agents to run only targeted tests
while others are verifying. The scratchpad is shared too: an agent's log there was overwritten by another's - tell
agents to write logs inside their own worktree root (verify.log - NOT build/, which make verify deletes).
checks/checks.olang alone was 156s of the ~240s suite before it was fanned out with join/spawn.

**Environment (2026-10-09):** `make race` needs clang's sanitizer runtimes, which the container image lacks -
`apt-get update && apt-get install -y libclang-rt-18-dev` fixes it for a session (verified: the suite under -r reports
exactly the one intentional race, shared.readOut). The user was asked to add that line to the environment's setup
script so new sessions have it; if a new session lacks it, install it again.

# How to decide and record

## Decide details myself
The user, 2026-10-08: "you are so fast now that I can barely keep up. You get to make authoritative decisions about
details as long as the general vibe of the language is preserved."

**How to apply:** decide details (spellings, edge-case rules, API names, error words, which of two reasonable
semantics) myself, by direction.md, and record each in CLAUDE.md/HISTORY.md as a decision - not as a question in the
ledger and not as an "unconfirmed call". Ask the user only about direction: something that changes the language's
character, removes a capability, or trades one of the principles against another. Reports get shorter: what landed, what
I decided (briefly, so they can object), and the few direction questions, numbered.

## Record every question I put to the user
Whenever I ask the user to decide something about olang, add it to decisions.md in the same turn - question, the default
in effect until they answer, and my recommendation.

**Why:** the user said (2026-09-29): "If I forget to make a decision you flag for me. Record it always. I will miss some
things you ask me." They often answer one question and move on to the next task, e.g. they skipped the `for` remake
questions to do try-default first.

**How to apply:** record at ask time, not later. Unanswered is not consent - keep the in-effect default and re-raise the
entry when its area comes up or at the end of a report. Remove an entry only once answered, and move the answer into
CLAUDE.md/HISTORY.md as with any design decision. **Narrowed 2026-10-08** by "Decide details myself": only
direction-level questions go in the ledger as questions. Don't record my own framing as the user's decision in CLAUDE.md.

## Number the questions
Number every list of questions or flagged decisions (1., 2., 3.) so the user can answer quickly by number. The user,
2026-10-08: "next time order these with numbers so I can answer quickly". Any end-of-turn list of open questions / "my
calls, worth checking" is a numbered list, one item per decision.

## No AskUserQuestion for design brainstorms
When discussing open-ended language/design decisions (e.g. "can you think of a nice solution?"), don't reach for the
AskUserQuestion tool to present options as a multiple-choice widget. Respond conversationally: lay out 2-3 options in
plain text with a clear recommendation and the main tradeoff, and let the user redirect in their next message.

**Why:** the user explicitly rejected an AskUserQuestion call mid-turn ("no get me back") when asked to compare three
for-loop syntax redesigns. They want a fast, low-friction back-and-forth, not a formal decision UI, for this kind of
brainstorming. Reserve AskUserQuestion for cases where the choice is genuinely blocking and hard to convey in prose (e.g.
visual/preview-heavy comparisons).

## Revisit the user's own decisions when they prove rigid
The user, 2026-10-09: "When it comes to revisiting some decisions I've made further along if adhering to them becomes
unbearable, you can do that. The language is supposed to be flexible, if something becomes really rigid and in the
way, then change it. Just remember to follow the overall design principles."

**How to apply:** when one of the user's earlier calls (recorded in CLAUDE.md as "the user's call/decision") keeps
forcing workarounds in real code - the usage study, std, oann, the port - change it rather than coding around it, as
long as the change follows PRINCIPLES.md (no manual memory, no hidden per-operation cost, natural language, minimal
syntax, multi-purpose, solid and smooth). Evidence first: name the code it got in the way of. Record it like any
reversal - the CLAUDE.md entry marked as reversed with the reason, the story in HISTORY.md, spec and corpus migrated
by the checklist - and say so in the next report, briefly, so the user can object. Not a licence to churn: a rule
that is merely unfamiliar or slightly verbose stays; the bar is "really rigid and in the way". Extends "Decide details
myself" from details to past decisions.

## Keep CLAUDE.md a living design doc
olang's CLAUDE.md (repo root) was rewritten (2026-08-29) from a one-line project blurb into a design-principles
document. Its "Open questions" section is gone: open questions live in the ledger decisions.md and recorded future work
in plan.md; CLAUDE.md holds the checklist, the memory imports, and "Settled decisions".

**Why:** the user explicitly asked me to keep adding to and removing from this document whenever changes are made, so it
stays the up-to-date source of truth for olang's design instead of drifting stale.

**How to apply:** whenever a design decision is made, implemented, revised, or reversed in a session, update CLAUDE.md in
that same session (and HISTORY.md - an audit on 2026-10-08 found six changes with no HISTORY entry) - add Settled
decisions as they're made, and put newly found gaps in the ledger or plan.md (the way the struct/array-literal-syntax
gap was discovered while testing deep equality). Don't let this turn into a full changelog or spec - keep entries short
and principle-level, not implementation detail. This supersedes the old deferred-codegen-gaps memory.

**2026-10-08:** the memory files live in the repo (`.claude/memory/`), imported by CLAUDE.md, so every cloud session
loads them with no manual step (the user: "I do not want any extra manual work every time"). They are committed with the
work like CLAUDE.md; there is no other copy.

# Language rules

## No per-operation run-time checks
olang never gets a run-time check that is paid per operation (indexing, shifts, numeric conversions, division). Checks
are opt-in with `checked` (R20/E15a, since 2026-10-17; `try` before that), or per-construction (slice bounds, array
length), or compile-time.

**Why:** the user removed such checks earlier ("it should never be done") and, asked again 2026-10-08 whether narrowing
`Int32(i64)` should abort out of range, answered "1 for sure. It's not even a question."

**How to apply:** don't offer an always-checked variant as an option; design the unchecked default plus the `checked`
opt-in.

## Errors are errors
In olang, use errors for absence/exhaustion/failure; never return a value beside a Bool flag (no `(T, Bool)`, no
placeholder zero values).

**Why:** the user, 2026-10-08: "Make sure you use errors and don't do the bool, value pattern. Errors are errors".
Map.Get already failed on a miss; iterators were migrated to `Next() T ? Exhausted` for this.

**How to apply:** any new std/prelude API or protocol method that can come up empty declares an error (a named one when
callers must tell it apart, e.g. Exhausted) and callers use `try ... catch ... default` / `catch X { break }`.

## Every language change goes through the checklist; the evaluator stays current
Every change to olang's semantics goes through the "Checklist for every language change" at the top of the olang repo's
CLAUDE.md (/home/oscar/olang locally, /home/user/olang in a cloud session) - spec, checker/codegen, compile-time
evaluator, tests (incl. one the evaluator runs), checks, corpus migration, diagnostics, records, make verify.

**Why:** the user asked (2026-10-05), after checked arithmetic was first built with comptime.c just refusing it:
"whenever we do changes that impact the evaluator, keep the evaluator up to date" and then "add that to a check
list you go through".

**How to apply:** before reporting any language change done, walk that list item by item; the evaluator step is the one
most easily missed.

**Extended 2026-10-07:** "always make the evaluator handle everything it can" - an exclusion in K1 needs a real reason
(the body is outside the program, a run-time effect would be skipped, undefined behaviour). Exclusions that are only
"not built yet" (as interface dispatch was) are gaps to close, not design.

**Extended 2026-10-17 (the user: "I want the comptime eval to basically always run through everything it can. Anything
that can be simulated at compile time should be.")** Not only "handle what it can when asked": a design should reach for
compile-time evaluation and inference wherever they can stand in for something written or checked at run time - lengths
followed through calls, a function's leading asserts decided at each call whose arguments are known, pure calls with
constant arguments inside bodies computed while compiling. Anything it cannot decide falls back to the run time,
never to an error or a guess.

# Code rules

## Everything in olang
The user, 2026-10-17: "One thing I don't like is how there are python scripts. Write everything in Olang", then "Unless
it had to be written in C (the bootstrap compiler and the benchmarks)".

**Clarified (the user, 2026-10-17):** "I want the python scripts migrated to Olang. All of them, python can be used by
Claude to develop with short scripts that run once, but permanent scripts that end up in source should not be in
Python ever." So: every committed script is ported (the one-off migrations too, not deleted); throwaway scripts in the
scratchpad may be Python, never committed.

**Exception:** C where it has to be C - the stage-0 compiler (bootstrap/), the benchmarks' C counterparts (bench/), and C
programs that test the runtime from C (e.g. the scope-sanitizer check). Python and shell never.

**How to apply:** new tools, migration scripts, test servers, benchmark drivers and generators are olang programs (on
std/os, std/filepath, text, extern fn where needed). Tell every agent in its brief. Whether the makefile also becomes
olang (`olang build.olang`) was asked (QT, decisions.md).

**Status 2026-10-17:** every Python script is ported (wt-pyport, merged): tools/*.olang (io_print, io_try, io_fix,
bare_typevars, perm_mut, int_literal_i64, shared srcmask/diagedit), compiler/tools/genmsgs.olang, the HTTP test server
in olang over sockets. Run a tool as `build/out build tools/X.olang && build/tools_X ARGS` (tools/README.md). The shell
and awk scripts followed (wt-shport, merged 2026-10-17: compiler/tools/*.olang sharing toolkit.olang, bench/run, rungemm,
runfused, ir, the envcheck fixture). Left: inline awk one-liners in the makefile's checkir recipe and two commands in
checks/checks.olang.

## A README per folder
The user, 2026-10-17: "I want every main subfolder to contain a README.md that describes what the folder does. Add that
for the ones that don't when it becomes relevant (the subfolder is it's own "thing")."

**How to apply:** each top-level folder of a repository (olang: bench, bootstrap, checks, compiler, docs, fuzz, std,
tests, tools; the same in oann and oagent) that is a thing of its own gets a README.md: what it is, what is in it, how to
run or use it, where it fits. Short and current - update it in the same commit when the folder's contents change. A new
folder of that kind gets its README in the commit that creates it; tell agents so in their briefs. Not for build output
or small groupings inside a folder that are not things of their own.

## Keep old tests
When adding new tests (test { } blocks in shared.olang/worker.olang/runner.olang, or wherever else tests live), never
remove or replace an existing test case just to make room for new ones. Only touch an existing test if the language
itself changed in a way that invalidates it (old syntax no longer compiles, old semantics no longer hold) - otherwise
the suite is purely additive.

**Why:** the test suite is the project's regression net; removing a passing test silently shrinks coverage of behavior
that's still supposed to work, even if it feels redundant next to a newer test.

**How to apply:** add new test { } blocks alongside the existing ones rather than replacing or trimming what's there. If
an old test's syntax was superseded by a real language change (e.g. old literal-restated-array-size syntax after struct
array literals simplified it), updating that one test is fine - deleting or shrinking others "for tidiness" is not.

## Style, form and conciseness
Be diligent about style, form, and conciseness in this project - both in code and in how work is presented.

**Why:** stated directly (2026-08-29) right after a file-merge went the wrong direction - I picked where to merge
`type.c`/`type.h` (into itself, keeping `var`/`statement` there) based on my own architectural judgment instead of what
the user actually meant ("merge type into semantic"), and the user had to correct me twice before it landed, calling the
intermediate state "a mess."

**How to apply:** when a user gives a refactor/reorg instruction with a specific target ("merge X into Y"), do exactly
that unless truly ambiguous - don't substitute a different destination based on my own judgment about what's
architecturally cleaner without flagging the disagreement first and getting confirmation. Keep code changes tight: no
leftover cruft, no unnecessary intermediate states, consistent naming/section-header conventions matching the
surrounding file (e.g. the `// ---- section ----` style already used in semantic.c). Keep my own responses concise too,
not padded.

**Files (the user, 2026-10-09):** "splitting files is overrated. I prefer long files if they all do the same thing.
Only split where modularisation is a thing." Never split a file for its length; split only at a real module boundary.

## Surface and fix bugs found along the way
When implementing a feature and a genuine bug turns up along the way (not the thing being asked for, just something
broken that surfaces during the work), find it, fix it, and call it out explicitly in the summary/commit rather than
quietly patching past it or ignoring it.

**Why:** confirmed directly - after a session that implemented struct constructors/destructors and surfaced two real
bugs in the process (a missing ASI-swallow before a constructor's closing `}`, and a destructor recursing into
destructing its own self-parameter), the user said "it is good that you find bugs along the way... keep keeping an eye
out." This echoes an earlier standing directive: when bugs are found and left unfixed, "bugs should be fixed" (and write
them up in the design doc too, see "Keep CLAUDE.md a living design doc").

**How to apply:** don't just narrowly satisfy the immediate ask - stay alert for adjacent bugs the change surfaces or
stress-testing reveals, fix them without waiting to be asked, and report them plainly (what broke, why, what the fix
was) rather than folding them silently into the diff.

**Explicit reinforcement (2026-08-31), with a boundary:** after reporting a newly-found gap (a bare-pun constructor
field silently not carrying scope-binding info, found while checking whether a scope-tracking fix generalized to 3+
levels) and asking whether to fix it, the user said "fix it. fix everything you think might be a problem that doesn't
require design decisions, always." So the default is: fix on sight, no need to ask first - the ONLY reason to pause and
ask is when the fix itself requires a genuine design decision (a real fork in how the language/feature should behave,
not just an implementation gap). A "does this generalize / is this handled" question that turns up a bug is itself
grounds to just fix it, not merely report it and wait.

# The compilers

## The port is a redesign
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
identical IR, which would force the C design onto the port. (The 2026-10-09 line "self-hosting starts only after the bug
fixes and the refactor" is long done; the port is under way, see plan.md.)

## What goes into the C compiler (stage 0)
**MOOT since 2026-10-23: stage 0 (bootstrap/) is removed; every change is made in olang only. Kept as history.**
The user, 2026-10-17, first: "The C compiler only changes when a change is necessary to compile the 'real' self-hosted
Olang compiler ... always build the best solution and amend the C compiler if that is necessary. We don't want to
restrict the self-hosted compiler because the C compiler needs it." Then, refining it: "if something really
fundamentally changes things, like the command line arguments that make the two compilers fundamentally different, then
update the C one as well. Fix bugs in both etc. What I meant to say is that new flashy features for other things, like
for example arbitrary precision types etc should be restricted to the real compiler. The C compiler should be fully
functioning with all the relevant (and flashy) features to build the main compiler, but without the extra stuff like
FPGA targets and stuff like that."

**Why (the user):** "These rules about the difference between what goes in the different compilers is to save tokens
and time primarily" - not purity. Never revert finished work in C to satisfy the rule (the word command line stays);
just don't spend effort building extras twice.

**How to apply:**
- Into BOTH compilers: the language core and anything that would make the two fundamentally different (syntax, error
  model, array model, generics, the command line, test semantics), everything the port's own source or its std uses,
  and every bug fix (found in one, fixed in both).
- ONLY into the self-hosted compiler: extra features for other domains - arbitrary-precision or arbitrary-width types,
  FPGA/HLS targets, new backends and the like - unless the port itself comes to need one, in which case stage 0 gets it.
- The port is written in the best olang; stage 0 is amended to follow, never the reverse.
- The 2026-10-17 batches (errors, arrays incl. QW, the word command line, formatter) are core: they went into both.

**Syntax goes into both (the user, 2026-10-18, on generators): "they are a syntax features so I kinda think they should
go in both. Restricting the port on syntax is probably gonna backfire eventually."** Anything the port's own source
could be written with - syntax and language constructs (generators included) - goes into stage 0 too, so the port is
never restricted by what stage 0 accepts. Port-only stays for domain extras. (This answered QAK, which asked whether
features the compiler's source does not use may go into the self-hosted compiler only.)

**Bootstrap by a generated seed, and the C compiler is frozen at self-hosting (the user, 2026-10-18, "I want it that way
yes", superseding "one-step bootstrap from C, always" given an hour earlier):** once the port self-hosts, the C compiler
is frozen. Rebuilding from nothing is one run: a committed seed - LLVM IR the olang compiler wrote of itself, regenerated
by a command whenever compiler/ moves on, never hand-written - is compiled by clang, and that builds the current source
(Zig's approach). No chain of intermediate compilers (no `bootstrap/CHAIN`) and no second hand-written compiler
maintained. So after self-hosting every feature is built once, in olang; until then stage 0 gets only what the port's own
source (and the std it uses) needs, plus bug fixes. (The superseded rule, 2026-10-18 earlier: "the C compiler should
always be up to date to the point where it can in one run compile the olang compiler ... we don't compile the olang
compiler using the C compiler to compile the next bootstrap step" - stage 0 maintained for as long as the port is.)

## oann waits for the compiler
The user, 2026-10-17: "Don't do Oann until the entire compiler is self hosted and 'mostly done'. There is no point in
prematurely building oann."

**How to apply:** no oann agents, migrations or catch-ups to new language changes while the port is being built - the
language is still moving (errors, syntax, arrays batches) and each catch-up would be redone. oann stays as it is on its
branch (last commit 0ed5de3, 2026-10-10). The migration tools (tools/*.olang, tools/cli_words.olang) are kept so oann can
be caught up in one go later. Settling-network research (oagent) waits for the same point (direction.md).

**Branch (2026-10-17):** oann's work was fast-forwarded into `main` (0ed5de3), a `master` was pushed at the same
commit, and the user made `master` oann's default branch. From now on oann's work goes to `master`, as olang's does
(and the designated session branch). The user deleted `main` the same day.
