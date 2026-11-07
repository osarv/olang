---
name: feedback-surface-and-fix-bugs
description: user values proactively finding and fixing bugs discovered incidentally while building unrelated features - keep watching for them
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-08-31T19:37:11.818Z
---

When implementing a feature and a genuine bug turns up along the way (not the thing being asked for, just
something broken that surfaces during the work), find it, fix it, and call it out explicitly in the
summary/commit rather than quietly patching past it or ignoring it.

**Why:** Confirmed directly - after a session that implemented struct constructors/destructors in olang and
surfaced two real bugs in the process (a missing ASI-swallow before a constructor's closing `}`, and a
destructor recursing into destructing its own self-parameter), the user said "it is good that you find bugs
along the way... keep keeping an eye out." This echoes an earlier standing directive from the same project:
when bugs are found and left unfixed, "bugs should be fixed" (see [[feedback_maintain_claude_md]] for the
habit of writing these up in the design doc too).

**How to apply:** While implementing anything in this codebase (or similar exploratory/from-scratch work),
don't just narrowly satisfy the immediate ask - stay alert for adjacent bugs the change surfaces or
stress-testing reveals, fix them without waiting to be asked, and report them plainly (what broke, why,
what the fix was) rather than folding them silently into the diff.

**Explicit reinforcement (2026-08-31), with a boundary:** after reporting a newly-found gap (a bare-pun
constructor field silently not carrying scope-binding info, found while checking whether a scope-tracking
fix generalized to 3+ levels) and asking whether to fix it, the user said "fix it. fix everything you think
might be a problem that doesn't require design decisions, always." So the default is: fix on sight, no need
to ask first - the ONLY reason to pause and ask is when the fix itself requires a genuine design decision
(a real fork in how the language/feature should behave, not just an implementation gap). A "does this
generalize / is this handled" question that turns up a bug is itself grounds to just fix it, not merely
report it and wait.
