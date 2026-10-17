---
name: feedback-c-only-for-port
description: Stage 0 (C) keeps the language core and fundamentals in parity with the self-hosted compiler and gets every bug fix; extra domain features (arbitrary precision, FPGA targets...) live only in the self-hosted compiler
metadata:
  type: feedback
---

The user, 2026-10-17, first: "The C compiler only changes when a change is necessary to compile the 'real' self-hosted
Olang compiler ... always build the best solution and amend the C compiler if that is necessary. We don't want to
restrict the self-hosted compiler because the C compiler needs it." Then, refining it: "if something really
fundamentally changes things, like the command line arguments that make the two compilers fundamentally different, then
update the C one as well. Fix bugs in both etc. What I meant to say is that new flashy features for other things, like
for example arbitrary precision types etc should be restricted to the real compiler. The C compiler should be fully
functioning with all the relevant (and flashy) features to build the main compiler, but without the extra stuff like
FPGA targets and stuff like that."

**How to apply:**
- Into BOTH compilers: the language core and anything that would make the two fundamentally different (syntax, error
  model, array model, generics, the command line, test semantics), everything the port's own source or its std uses,
  and every bug fix (found in one, fixed in both).
- ONLY into the self-hosted compiler: extra features for other domains - arbitrary-precision or arbitrary-width types,
  FPGA/HLS targets, new backends, units of measure, generators, reflection and the like - unless the port itself comes to
  need one, in which case stage 0 gets it.
- The port is written in the best olang; stage 0 is amended to follow, never the reverse.
- Today's batches (errors, arrays incl. QW, the word command line, formatter) are core: they go into both.
