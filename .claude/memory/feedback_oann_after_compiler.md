---
name: feedback-oann-after-compiler
description: No oann work (migrations, features, catch-ups) until the self-hosted olang compiler is done and mostly settled
metadata:
  type: feedback
---

The user, 2026-10-17: "Don't do Oann until the entire compiler is self hosted and 'mostly done'. There is no point in
prematurely building oann."

**How to apply:** no oann agents, migrations or catch-ups to new language changes while the port is being built - the
language is still moving (errors, syntax, arrays batches) and each catch-up would be redone. oann stays as it is on its
branch (last commit 0ed5de3, 2026-10-10). The migration tools (tools/*.olang, tools/cli_words.olang) are kept so oann can
be caught up in one go later. Settling-network research (oagent) waits for the same point.
