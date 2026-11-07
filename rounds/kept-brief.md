# Round "kept" (wt-kept, /home/user/wt/kept, from 654d60d; started 2026-11-07 ~05:35 CET; opus xhigh)

Items, in order: (1) item 17 - a value local whose reference is kept past its block/turn is built where it is kept
(decisions.md "17 revisited", "Loose ends DECIDED 2026-11-03" (2), QCR (1)); bulk review 6's F3 refusal goes; removes
os.Args' per-argument copy (+18 instr per main) - measure; (2) drop flags in effects (LIST.md A5: effects count a drop
regardless of its flag, so a holder's declared Copy calling a fallible constructor is refused by E31d); (3) C1 - a
destructor writing through its instance's reference field via a method (log.Saw(id)) makes holders of a local's
reference O27/C2d errors, inline accepted; (4) C2 - T17c refuses a by-value parameter holding a reference put into an
enum case; (5) bfix7's found - C2d refuses `h HeldTwo = HeldTwo(r, 4)`, r a by-value unique parameter holding a mut
reference. 3-5 over-rejections: relax only where sound, argued in HISTORY; when in doubt refuse.
Process: checklist per item, evaluator agreement, tests and checks/cases, HISTORY section, CLAUDE.md, DEPENDENTS.md;
make quick; at the end make verify + scopesan + scopefuzz; commit per piece (own paths, no push); PROGRESS.md untracked;
olang only, nesting <= 3; report per item with soundness arguments, measurements, decisions, gate results.

2026-11-07 05:56 CET: a container restart killed the first agent after it committed a7a6cd5 (item 17, O28) and left
compiler/effects.olang and compiler/typed.olang uncommitted (item 2 in progress); a fresh agent continues: it checks
a7a6cd5 first (the ~20 rewritten checks/cases must still guard what they name, or become run tests argued in HISTORY),
measures os.Args and item 17's memory, then items 2-5. Full verifies through /home/user/vlock.
