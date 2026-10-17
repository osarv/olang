---
name: feedback-c-only-for-port
description: The C compiler (stage 0) changes only when the self-hosted compiler needs it to compile; the port is written in the best olang and C is amended to follow, never the reverse
metadata:
  type: feedback
---

The user, 2026-10-17: "The C compiler only changes when a change is necessary to compile the 'real' self-hosted Olang
compiler. This means that any features added to Olang that are not needed to compile the self-hosted compiler are not
added to the C compiler. Furthermore, when building the Olang compiler, always build the best solution and amend the C
compiler if that is necessary. We don't want to restrict the self-hosted compiler because the C compiler needs it."

**How to apply:** (1) a language feature, tool mode or driver option goes into the self-hosted compiler (compiler/);
into bootstrap/ only if the port's own source (or the std it imports) uses it and stage 0 must compile that. (2) Write
the port in the best olang the spec allows; if stage 0 cannot compile that, amend stage 0 - never bend the port's code
around stage 0. (3) Fixes to stage 0 are made when they matter for compiling the port (memory, miscompiles the port
could hit), not for their own sake. (4) Consequence: features that live only in the port are tested once stage 1 runs.
Supersedes QB's "fixes only" where they differ.
