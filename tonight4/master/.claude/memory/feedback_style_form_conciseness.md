---
name: feedback-style-form-conciseness
description: "user wants diligence on code/output style, form, and conciseness in olang work"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-08-29T07:35:12.299Z
---

Be diligent about style, form, and conciseness in this project - both in code and in how work is
presented.

**Why:** stated directly (2026-08-29) right after a file-merge went the wrong direction - I picked where
to merge `type.c`/`type.h` (into itself, keeping `var`/`statement` there) based on my own architectural
judgment instead of what the user actually meant ("merge type into semantic"), and the user had to
correct me twice before it landed, calling the intermediate state "a mess."

**How to apply:** when a user gives a refactor/reorg instruction with a specific target ("merge X into
Y"), do exactly that unless truly ambiguous - don't substitute a different destination based on my own
judgment about what's architecturally cleaner without flagging the disagreement first and getting
confirmation. Keep code changes tight: no leftover cruft, no unnecessary intermediate states, consistent
naming/section-header conventions matching the surrounding file (e.g. the `// ---- section ----` style
already used in semantic.c). Keep my own responses concise too, not padded.

**Files (the user, 2026-10-09):** "splitting files is overrated. I prefer long files if they all do the same thing.
Only split where modularisation is a thing." Never split a file for its length; split only at a real module boundary.
