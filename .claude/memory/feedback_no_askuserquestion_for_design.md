---
name: feedback-no-askuserquestion-for-design
description: "User rejected the AskUserQuestion tool for a language-design brainstorm and said \"no get me back\" - prefers plain conversational recommendations over structured multiple-choice UI for this kind of open-ended design discussion."
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-08-28T13:00:31.818Z
---

When discussing open-ended language/design decisions for the olang project (e.g. "can you think of a nice solution?"), don't reach for the AskUserQuestion tool to present options as a multiple-choice widget. Just respond conversationally: lay out 2-3 options in plain text with a clear recommendation and the main tradeoff, in the style the system prompt already describes for exploratory questions.

**Why:** User explicitly rejected an AskUserQuestion call mid-turn ("no get me back") when asked to compare three for-loop syntax redesigns. They want a fast, low-friction back-and-forth, not a formal decision UI, for this kind of brainstorming.

**How to apply:** For olang language-design questions specifically (syntax choices, grammar shape, etc.), default to a short conversational recommendation with tradeoffs stated inline, and let the user redirect in their next message. Reserve AskUserQuestion for cases where the choice is genuinely blocking and hard to convey in prose (e.g. visual/preview-heavy comparisons), not general brainstorming.
