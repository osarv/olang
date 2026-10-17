---
name: feedback-olang-only
description: No Python or shell scripts in the repositories - every tool, migration, test helper and driver is written in olang
metadata:
  type: feedback
---

The user, 2026-10-17: "One thing I don't like is how there are python scripts. Write everything in Olang", then "Unless it had to be written in C (the bootstrap compiler and the
benchmarks)".

**Exception:** C where it has to be C - the stage-0 compiler (bootstrap/), the benchmarks' C counterparts (bench/),
and C programs that test the runtime from C (e.g. the scope-sanitizer check). Python and shell never.

**How to apply:** new tools, migration scripts, test servers, benchmark drivers and generators are olang programs (on
std/os, std/filepath, text, extern fn where needed). Tell every agent in its brief. Existing Python/shell (tools/*.py,
compiler/tools/*.sh and genmsgs.py, bench/*.sh, checks/fixtures/http/server.py, the awk fixture) is rewritten in olang,
each checked to give the same output; one-off migrations already applied are deleted once oann is migrated with them.
Whether the makefile also becomes olang (`olang build.olang`) was asked (QT).
