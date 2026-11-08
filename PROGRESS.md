# R5 become tail scope - progress
## Done
- SPEC S21 rewritten (tail scope; by-value param not handed on stays an error)
- types: RoleTail, WithRole; ScopeVarsOf gives RoleTail a ResultVar
- scope.olang: components() reads becomes (walked.Tails/TailBlocks), tailNeeds/tailBuilt, giveTails flags become
  components (RoleTail + ScopeVar.Result); call(): tail args lifted (tailLifts), arena temps dest Var, dtor results and
  promotes in blocks a become closes built in Var(rv); retOne binds a tail call's result scope to Var(rv);
  becomeBinds: BecomeHeldParam; -memory rows (PlaceTail, tailPlaced); Placements' siteLifts key bug fixed
- check: tailSets' dtor-local refusal gone; drop-only deferred blocks allowed at a become
- emit: thunk makes/closes a tail scope; D9b prologue copy into the tail scope where the body has a become
- eval: function-value call into RoleTail gets a fresh scope (frame.Tail), closed after the frame's storage
- msgs: BecomeHeldParam
- the 10 cases are run cases; becomeheldparam must-fail; tests/become.olang tests; memoryplaced tail.olang fixture
## Decided
- tail scope = result scope (forced ResultVar via RoleTail where the result holds no reference)
- flag decided before judging, per become component, read off typed bodies (conservative)
- dtor values: only blocks enclosing a become
- function value: fresh scope per call (thunk / interpret)
- BecomeBorrows/BecomeDestructor kept as safety nets
- goldens, records committed; IR gate: compiler/ (310 .ll) and bench (79 .ll) byte-identical; dead-region interp ok
## Next
- verify (running), scopesan, scopefuzz, fuzz free
