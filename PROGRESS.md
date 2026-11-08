# fnvalues round 4 - promise words and the relation words (not committed)

Brief: docs/fnvalues.md section 14 round 4, sections 2.2, 3; branch wt-promises from a4f55c96.

## Done (committed, pushed)

- 42c616bc grammar (token EndsStatement, ast.Promise, parse promises(), unparse), types (data.G promises, identity,
  canon ` ![...]`, PromiseText), generic (promisesOf T21c errors, Subst, canonFunc, reflName), check spelling
- 081fb58e scope: boundEdges/valueRels/beyondBound, boundary by x.Type(), bndError naming the word (wordFor),
  funcHeld (type-to-type for unfollowed, Static named fn, onFrame off, keptAtHome 2.2.1), storeThrough/narrowing for
  keeps-home, withHome at the call, kwValueArg by keeps; msgs; t22 cases reworded; tests/promises.olang
- eb2a1c4f SPEC (T21 grammar, T21c, T22, T22a, T22b, O17, D16d), CLAUDE.md, HISTORY, DEPENDENTS; new cases; GivesHeld by
  result type; t22borrowedresult writes `mut N&`

## Decided

1. Hole fixed: coverage accepted result->param where only param storeThrough; discharge needs both (T22's words).
   Coverage tightened (t22borrowedresult now `mut N&`, t22breadonlyresult/t22bresultkept fail cases).
2. keeps b in a.f with no own binding = keeps b in a.
3. No word keeps into a global; named fn under keeps-home = Static.
4. Effect words parsed/identity only; judged round 5.

- 53374c80 callvaluekeeps* reworded, callvaluekeepsword run case; diag.txt, run.txt, tokens/ast goldens captured
- gates: IR byte-identical (base sources by base vs new compiler, 349 .ll); scopesan all files pass (rerun of the 24
  the full disk stopped); scopefuzz 100 programs 0 findings; checks all pass

- verify passed but layoutdiff -> layoutgold (b0e09ef6); layoutdiff and checkir then pass

## Next

- report (done)
