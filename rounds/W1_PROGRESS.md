# W1 progress (wt-facts) - never committed

## Done
- facts.olang, G42/E31b through it (502b2869); fixture (02319fcd).
- T2 scenario `incremental` (dd5e8dd2): 12 edit kinds; -memory now lowers every module (its counts were partial).
- T6 scenario `records`.
- T3 scenario `reuseall` (8 parts, run cases, two orders): found D9h's MutGlobals read unrecorded (std/prelude/text
  stale after a program with a mutable reference global) - fixed: fact `D9h mutable globals` decided in check, read in
  lower; reader records now taken after lowering (readerRecords).

## Decided
- Table on generic.Program (`P.Facts`), so passes after the checker (W2's free, W4's lower) read and decide through it.
- Fact names stable across programs: `G42 IDENT@OFFSET FACT`, `E31b IDENT@OFFSET`.
- Record variants: `rec/NAME.KEY20.vREADHASH`, self-describing read lines; lookup tries every variant of the key.

## Findings
- An extern's G42 fact (`getuid.WritesGlobals`) was folded unrecorded (check.fnFact's extern branch): ext module stale
  under OLANG_CHECKREUSE after a program handing an export fn to C. Fixed by recording it as a fact.

## Next
- Done: T5 editgen, records, T7 (47/100 build, all same), verify passed (after goldens + README fix). Hand off.
