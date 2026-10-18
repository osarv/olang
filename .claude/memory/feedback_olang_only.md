---
name: feedback-olang-only
description: No Python or shell scripts in the repositories - every tool, migration, test helper and driver is written in olang
metadata:
  type: feedback
---

The user, 2026-10-17: "One thing I don't like is how there are python scripts. Write everything in Olang", then "Unless it had to be written in C (the bootstrap compiler and the
benchmarks)".

**Clarified (the user, 2026-10-17):** "I want the python scripts migrated to Olang. All of them, python can be used by
Claude to develop with short scripts that run once, but permanent scripts that end up in source should not be in
Python ever." So: every committed script is ported (the one-off migrations too, not deleted); throwaway scripts in the
scratchpad may be Python, never committed.

**Exception:** C where it has to be C - the stage-0 compiler (bootstrap/), the benchmarks' C counterparts (bench/),
and C programs that test the runtime from C (e.g. the scope-sanitizer check). Python and shell never.

**How to apply:** new tools, migration scripts, test servers, benchmark drivers and generators are olang programs (on
std/os, std/filepath, text, extern fn where needed). Tell every agent in its brief. Existing Python/shell (tools/*.py,
compiler/tools/*.sh and genmsgs.py, bench/*.sh, checks/fixtures/http/server.py, the awk fixture) is rewritten in olang,
each checked to give the same output; the one-off migrations are ported too.
Whether the makefile also becomes olang (`olang build.olang`) was asked (QT).

**Status 2026-10-17:** every Python script is ported (wt-pyport, merged): tools/*.olang (io_print, io_try, io_fix,
bare_typevars, perm_mut, int_literal_i64, shared srcmask/diagedit), compiler/tools/genmsgs.olang, the HTTP test server
in olang over sockets. Run a tool as `build/out build tools/X.olang && build/tools_X ARGS` (tools/README.md). The shell
and awk scripts followed (wt-shport, merged 2026-10-17: compiler/tools/*.olang sharing toolkit.olang, bench/run, rungemm,
runfused, ir, the envcheck fixture). Left: inline awk one-liners in the makefile's checkir recipe and two commands in
checks/checks.olang.
