---
name: feedback-usage-and-agents
description: "Subagents and usage: time matters, use subagents freely (cheaper model for pure search), no fixed rule; check plan usage via rate_limit_event and pace by the weekly window"
metadata:
  node_type: memory
  type: feedback
  modified: 2026-10-08
---

The user (2026-10-08) is on the Max plan: "there is plenty of tokens to burn", "sub-agents speed things up a lot, and
time is important", "when it comes to just doing search, yeah, you can use sub-agents that are a cheaper model",
"do what you think is good ... no standing rule. Just try to adapt", and "eventually we're going to start doing a lot
of work in different areas at the same time".

**How to apply:** parallelize independent work with subagents, each implementation agent in its own git worktree
(`git worktree add /home/user/wt/NAME -b wt-NAME`), committing there without pushing, records (CLAUDE.md, HISTORY.md,
SPEC.md) written by the agent, memory/ledger left to me; I merge, resolve the append conflicts, run `make verify`
and push. Pure searches go to a cheaper model. Judge per situation; there is no fixed rule.

**Pacing by usage** (the user: ration "at the end of a week where there is a bunch of tokens left to burn, but not
very much time ... be a bit more resourceful in the beginning of a week"): this session's own transcript carries the
plan's usage - `list_events` (claude-code-remote MCP) on the session id from the Claude-Session line, with
`kinds: ["rate_limit_event"]`, gives `unifiedWindows.five_hour` and `.seven_day` utilization (0-1) and `resetsAt`
(unix time). Low weekly use close to its reset: spend freely, more agents in parallel. High use early in the week:
fewer, cheaper agents. On 2026-10-08 20:40 UTC it read five_hour 0.18, seven_day 0.08, weekly reset Sat 04:00 UTC.

**First lesson (2026-10-08):** six implementation agents took the five-hour window from 18% to 39% in fifteen minutes
(~1.4%/min), so the five-hour window, not the week, is what binds while agents run. Size the batch to what is left of
the window and the time to its reset; two of the six were paused (TaskStop) and resumed after the reset (SendMessage
continues a stopped agent with its context). The user asked to be reminded of this rule: "Remember the rule about
matching usage to agent spawning".

**Waking up after a reset - a standing rule** (the user 2026-10-08: "Always schedule yourself to resume when tokens are
back as your usage runs out"; earlier: "So I don't have to start you manually"): whenever work is left that the
window will not cover - the five-hour one or the weekly one, whichever runs out first - arm `send_later` (claude-code-
remote MCP) for a few minutes after `resetsAt`, with a message saying what to resume. Arm it BEFORE the window runs
out - a session stopped by the limit cannot arm anything. Uncommitted worktree changes survive only as long as the
container, so have agents commit as they finish.

**Memory, not just tokens (2026-10-08):** the test compiler grows to ~7GB on the big corpus files (~11GB for the full-suite process since 2026-10-09) and the container has
~15GB, so two full `make test`/`make verify` runs at once can be OOM-killed. Tell agents to run only targeted tests
while others are verifying, and run full verifies one at a time (I run the merged one). The scratchpad is shared too: an agent's log there was
overwritten by another's - tell agents to write logs inside their own worktree root (verify.log - NOT build/, which make verify deletes), and serialize full verifies with `flock /home/user/verify.lock`.

**Plan upgraded 2026-10-09 ~07:09 UTC** (the user: "You have a lot more usage now" - after asking about Max 5x vs 20x):
both windows read 0 right after, the five-hour one resetting at 12:00. On the old plan four agents spent a window in
~80 minutes; measure again before assuming the new rate, and keep pacing by rate_limit_event.

**Pacing rule (the user, 2026-10-09): "time the usage limit reset for maximum efficiency. Too slow and you lose credits.
Too quick and you lose quality. ... the weekly limit ... is basically the entire bottleneck. Base your calculations on a
70% uptime over a week."** Method: target weekly burn per active hour = (1 - weekly utilization) / (0.7 x hours to the
weekly reset). Measure the actual burn (weekly % per hour, per running agent) from rate_limit_events at every agent
completion or check-in, and set the number of agents so the burn matches the target; the five-hour window only
matters when it would hit 100% before its own reset (then idle time is lost, so trim). Over a normal full week that is
~0.85% of the week per active hour - far fewer agents than a fresh window invites; a short remainder of a week (like
after the 2026-10-09 upgrade, which reset the weekly to 0 with Sat 04:00 UTC still the reset) allows far more.

**Distribute the load (the user, 2026-10-09: "Make sure the tasks distribute the load reasonably so we don't get
bottlenecks. Record that.").** The shared resources are: 4 cores, ~15GB RAM, ONE full-verify slot (`flock
/home/user/verify.lock`, ~5 min per run, the suite peaking ~11GB), the coordinator's merging, and file-level merge
conflicts. Seen 08:00 that day: four compiler agents queued on the verify lock at once while the load average was 1.2
of 4 - memory, not CPU, was the bottleneck. So: (1) mix task kinds - at most ~2 agents expected to need a full verify
in the same stretch; fill the rest with light work (reviews, benchmarks, design write-ups, docs, std code verified with
targeted tests); (2) agents develop on targeted tests and run the full verify once, at the end; a merged result is
re-verified only when its code differs from a verified tip; (3) split work by file/area, and run the
touches-everything changes (error messages, the bootstrap/ move, the refactor) when nothing else is in flight; (4)
before starting an agent, look at the verify queue (`pgrep -af "flock /home/user/verify.lock"`) and the load average -
a queue of 2+ means start light work, not compiler work; (5) merge finished batches promptly so I am not the
bottleneck. The -t per-file child processes landed (fc1ddcc, 2026-10-09): a full make verify now peaks at ~3.2GB (was ~11-12GB), and
the agents' memory cgroup is ~14.3GB, so `/home/user/vlock CMD` (a script outside the repo - recreate it if the container
is new: three flock slots, the first being /home/user/verify.lock) allows three full verifies at once. Only for branches
that include fc1ddcc; checks/checks.olang alone is 156s of the ~240s suite (fanning its builds out with join/spawn is
the next lever).

**Environment (2026-10-09):** `make race` needs clang's sanitizer runtimes, which the container image lacks -
`apt-get update && apt-get install -y libclang-rt-18-dev` fixes it for a session (verified: the suite under -r reports
exactly the one intentional race, shared.readOut). The user was asked to add that line to the environment's setup
script so new sessions have it; if a new session lacks it, install it again.

**Correction (the user, 2026-10-09 15:10 CEST): "Aim to have used all compute by the week's end. The 70 percent rule is
about expected uptime, not desired usage."** The goal is the weekly window at 100% when it resets; 0.7 is only the
expected fraction of the remaining hours the session is actually working, used to set the pace. **And the five-hour
window caps the pace**: measured 12:03-13:03 UTC, five-hour +19%/h against weekly +5%/h - about 3.8 five-hour points per
weekly point - so running flat out at the five-hour limit (20%/h) is ~5.3% of the week per hour. With 72% of the week
left and 15h to go, that cap binds: the most usable is the cap held continuously. So: keep the five-hour window
landing at ~100% right at each of its resets (more agents early in a window, trimmed as it nears the limit), keep
working through the night with a send_later armed just after each reset, and recompute the ratio as readings come in.
