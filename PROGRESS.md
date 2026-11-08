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

## Next
2. MIR Rvalue.ScopeOf, emit, eval, interp; typed.Scope.Found; lower
3. scope.olang: the refusals of 12.4 become Found placements
4. SPEC, CLAUDE.md, HISTORY.md, DEPENDENTS walk, cases -> run cases, seed, verify, gates
