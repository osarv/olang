# round 5 (wt-effects) - progress

- [x] effects.olang: Calls bits by slot, Facts.Bound, Pure/Returns, Fact.Named, classify (locals flow-insensitive,
  call results), expand (named givens as edges), settle bounds, Judge/Why
- [x] check.olang: effectPlaces at E12's fit, judgeEffects, E31b/copyDoes read Through
- [x] scope.olang: typeBeyond judges relations only
- [x] msgs: EffectBeyond, NoteEffect
- [x] tests/facts.olang, checks cases (t22bnoalloc pure returns noblock returnscycle norecurse wordsfit, g42factvaluewords)
- [x] SPEC (T21c rows, T22b, G42, B11b), CLAUDE.md, HISTORY.md, DEPENDENTS.md, docs/fnvalues.md round 5 note
- [x] checks run, diaggold, commits, gate (callgrind +1.4%)
- [x] verify: all passed but the stale goldens, captured and their four checks rerun green
