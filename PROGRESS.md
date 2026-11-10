# G4 progress (genrefs round 4 - reclaiming)

Done:
- runtime.ll: __olang_gen_alloc (free lists by class, found from the scope's tail chunk's stamp), __olang_gen_reclaim
  (worklist cascade, generation bump, retirement), __olang_gen_let/push, __olang_gen_free (quarantine under -sanitize)
- mir: Stmt.Reclaim, GenInfo.Reach, Mentions/TermMentions/TermNext, StmtSpan
- lower: reclaimSites (liveness over MIR, sites after a let-go's old value and a named local's last use)
- emit: Reclaim (guarded by olang.genok.<body>.<type>), drop functions, gen alloc by class, SoleUnit defines genok
- free: references in use across calls (genCalls, genAcross), types never reclaimed (tasks, destructors, captures,
  generators, any, C), GenOkNow; eval: Reclaim under interpret, weak read of a reclaimed instance null
- probes: dlist 97 -> 1.7 MB, tree 113 -> 1.9 MB

Next: LRU (Map-owned), stack (one-holder rule), -memory rows, tests, records, gates.
