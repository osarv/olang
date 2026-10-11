---
name: feedback-agent-effort
description: "Set each subagent's reasoning effort to fit its task: high/xhigh for soundness reviews and hard design, low/medium for searches and mechanical work"
metadata:
  node_type: memory
  type: feedback
  modified: 2026-10-11
---

The user, 2026-10-11: "Can you adapt the effort level dynamically to match the problem you are solving?" This is the
explicit request the Agent tool's `effort` parameter needs, so I set it per agent.

**How to apply:**
- **xhigh or max**: soundness reviews, scope-rule (section 8) and own/borrow design, hard debugging.
- **high**: compiler features with many interacting rules, and fixes from review findings.
- **medium**: std/library code, benchmarks, docs and records.
- **low**: web or code searches, mechanical migrations, reformatting. Searches also go to a cheaper model
  ([[feedback-usage-and-agents]]).

My own turns' effort is the user's session setting. I cannot change it, and I said so.
