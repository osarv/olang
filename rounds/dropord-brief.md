# Round "dropord" (wt-dropord, /home/user/wt/dropord; opus xhigh) - drop order, Part C, reuse in place, the C-call rule

Read /home/user/review/rounds/finish-rules.md first: the rules of work for today (no full verify, one quick at the end).
Four phases, in order, one coherent commit series each; write a short design section in PROGRESS.md before building each
phase (the soundness argument in a few lines - this is section-8 / ownership work).

1. **Drop order computed from references** (the user, 2026-11-07, QCZ: "let the compiler order them"). Values with
   destructors are ended last declared first, EXCEPT that a value holding a reference to another is ended before it -
   holders before what they hold - read off the store relations section 8 already tracks (a store of a reference into a
   holder, in the body or through a callee's obligations). Only a cycle of such references among values with
   destructors is an error, naming both. Today the order is O15's reverse declaration order (check's `dropOnExit` drop
   flags registered as deferred code, lowering's `runDefers` order); round drops (merged today) added collections that
   end their elements and conditional destructors. Spec it (O15), build it, test the order while compiling (a top-level
   assert) and at run time.
2. **Unique Part C**: storage freed exactly where a destructor runs (free.olang, O8d). Round drops measured and tried it
   and wrote why it was not built: /home/user/wt/drops/PROGRESS.md, section "Item 2 - NOT built" (read it first) - it
   needs drops modelled as calls of the destructor body, "values of this type are never registered" proven, and
   ownCopy's wasted copy of a handed-on parameter replaced by a move; phase 1 removes the hazard that blocked it (a
   destructor reading a value already ended). Measure the patterns it measured (1M cycles: a Map value taken out and
   dropped 388 MB, replaced by Put 260 MB, a Vec pushed and truncated 260 MB) before and after.
3. **Reuse in place** (decided 2026-11-03, "just build it"): a value whose owned storage dies where a new value of the
   same shape is built into the same place reuses that storage when it fits (Perceus/Koka's reuse without counts);
   never where the new value's building reads the old (`t = t.Rebuilt()`); measure a gain on bench or an
   interpreter-loop/tree-rebalance program, and build only where it is real.
4. **The sharper C-call rule** (item 27, decided 2026-11-03, "do the sharper rule"): a C call counts as "anything"
   (effects' Unknown/Back, free.olang's condition 3) only in a program that hands an export fn to C (its address taken
   and given to C) or is built `-library`, and even then not for libc's I/O, string, memory and time functions. Today
   compiler/effects.olang marks every non-quick C call Unknown when the program has any export fn
   (/home/user/review/remaining/LIST.md, A15, has the evidence lines).
