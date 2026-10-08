---
name: feedback-maintain-claude-md
description: CLAUDE.md in olang is a living design-principles doc - keep it in sync with every design change
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-08-29T06:09:10.696Z
---

`/home/oscar/olang/CLAUDE.md` was rewritten (2026-08-29) from a one-line project blurb into a
design-principles document with two sections: "Settled decisions" (confirmed language/compiler design
choices, with a one-line rationale each) and "Open questions" (known gaps/assumptions that need a design
conversation before being implemented - don't silently resolve these).

**Why:** the user explicitly asked me to keep adding to and removing from this document whenever changes
are made, so it stays the up-to-date source of truth for olang's design instead of drifting stale.

**How to apply:** whenever a design decision in olang is made, implemented, revised, or reversed in a
session, update CLAUDE.md in that same session - move an item from Open questions to Settled decisions
once it's actually implemented, add new Settled decisions as they're made, and add new Open questions as
gaps are discovered (the way the struct/array-literal-syntax gap was discovered while testing deep
equality). Don't let this turn into a full changelog or spec - keep entries short and principle-level,
not implementation detail. This supersedes the old deferred-codegen-gaps memory, which duplicated this
and is now retired in favor of keeping everything in the repo-visible CLAUDE.md.

**2026-10-08:** these memory files now live in the repo (`.claude/memory/`), imported by CLAUDE.md, so every
cloud session loads them with no manual step (the user: "I do not want any extra manual work every time"). They
are committed with the work like CLAUDE.md; there is no other copy.
