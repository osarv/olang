# F8 (fnvalues round 8): derived scopes passed - progress (untracked)
- [x] hidden derived scope params: typed.Scope.Passed(k,i), Plan.DerivedP/W, derivedArgs, DropAt/DropArgs; mir VarKind.Derived, Rvalue.ScopeOr; runtime __olang_scope_or; emit pads null (calls, tasks, thunks, dtor _rt); eval 0=null
- [x] scope: takesDerived (Fn non-export, Dtor; not Gen, not become chains), derivedScope/foundOr in scopeOf/buildSite/passedScope; passDerived at calls; dropDerived at holder drops (dtor edges)
- measured loop: 183 MB -> 1.7 MB
- [ ] check cases, corpus, T22c capture refusal, SPEC/settled/HISTORY, tests, bench row, gates
