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
spec.md) written by the agent, memory/ledger left to me; I merge, resolve the append conflicts, run `make verify`
and push. Pure searches go to a cheaper model. Judge per situation; there is no fixed rule.

**Pacing by usage** (the user: ration "at the end of a week where there is a bunch of tokens left to burn, but not
very much time ... be a bit more resourceful in the beginning of a week"): this session's own transcript carries the
plan's usage - `list_events` (claude-code-remote MCP) on the session id from the Claude-Session line, with
`kinds: ["rate_limit_event"]`, gives `unifiedWindows.five_hour` and `.seven_day` utilization (0-1) and `resetsAt`
(unix time). Low weekly use close to its reset: spend freely, more agents in parallel. High use early in the week:
fewer, cheaper agents. On 2026-10-08 20:40 UTC it read five_hour 0.18, seven_day 0.08, weekly reset Sat 04:00 UTC.
