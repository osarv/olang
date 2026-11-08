# Round 6 (F6): scopes found at run time from an address (O29) - progress

Brief: docs/fnvalues.md section 12 and round 6; docs/wholeprog.md 10.1/10.2. Branch wt-scopefind.

## Done
- 1. runtime.ll (slots, owner word, large table, slabs, `__olang_scope_of(p, q)`), san.ll; checks/fixtures/scopefind
  (C driver: small, large, region, none, thread), wired as checks' "scopefind".

## Decided (details, mine)
- The owner word is the header's field 6 (`prev`), which a chunk uses only while pooled: a chunk is in exactly one of
  a scope's list (owner), the pool (prev), the quarantine (owner kept). Header stays 64 bytes, fresh/class unpacked.
- Region first blocks (256..2240 B) come from per-size slabs in slots (stride = block size, block header found by
  stride), so a pointer into a region's first block is found too; owner of every region chunk/block is the region's
  outer header, read as the plain scope the region lives in (its owner, else up its parents).
- A part's chunks folded into its root at a close get the root as owner (parts' headers are freed there).
- Slots exhausted (or refused): chunks from aligned_alloc entered in the large table, so they are found too.

- 2. typed.Scope.Found(i) + Plan.Roots; MIR Rvalue.ScopeOf (mir, emit, eval foundScope, lowering foundOf: the call's
  own argument operand where the root is one, else the root read again - only typed.Pure roots).
- 3. scope.olang: stores into set/derived/untraced slots (findInto, finds), call variables (passedScope: ref args, a
  struct of one reference), a by-reference Str receiver passed found (renderStr); free.olang makes no region for a
  Found site. 41 fail cases became run cases; o12spawntarget, C2d instance cases, O25i reads stay refused.
- 4. SPEC O29 (+ O11, O12, O23a, O25i, E11c), docs/settled.md, HISTORY.md, msgs reworded, diag golden, seed.

## Next
- make verify; then the round's other gates (scopesan, scopefuzz, race, cross, bench) if time allows.
- Left for a later round: per-statement reuse of a lookup; o12spawntarget (a task's result into a place of several
  scopes); C1's program scope for a value argument holding two references; OLANG_SCOPESTATS counter.
