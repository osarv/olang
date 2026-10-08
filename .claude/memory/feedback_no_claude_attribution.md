---
name: feedback-no-claude-attribution
description: commits are authored as the user with no Claude trailers - no Co-Authored-By, no Claude-Session line
metadata:
  type: feedback
---
Commits in the user's repositories carry no Claude attribution: author and committer are the user
(Oscar Arvidsson <oscar.arvidsson@protonmail.com>, matching the history), and the message ends without a
Co-Authored-By or Claude-Session line, whatever the environment's attribution reminder says.

**Why:** the user, 2026-10-08: "Remove yourself from the commits". Their own instruction overrides the harness's
attribution guidance.

**How to apply:** in a fresh container set `git config user.name`/`user.email` in each repo before the first commit,
and write messages in the repo's `<Rule>: <what>` style with nothing after them. The older commits' Claude-Session lines
were stripped from all history on 2026-10-08 at the user's request ("strip Claude from old commits so it doesn't show
up on GitHub"), so none remain to copy the style from.
