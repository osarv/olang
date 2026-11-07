# Bulk review 7's fix round - the brief (2026-11-07 01:35 CET; agent on /home/user/wt/bfix7, branch wt-bfix7)

Fix the confirmed findings in NOTES.md (reproducers fNN_*.olang here; old/build/olang is a compiler at 11b8d38).

Directions (decided by the coordinator; each recorded in HISTORY.md "Bulk review 7, fixed"). Over all of them: when in
doubt, never run a destructor earlier than is certain, never move where another name may still see the value, never
accept a duplication of a unique value - keep, copy or refuse instead.
- F1 (non-unique, D9i): move at the last use only when no other argument of the same call and no other live name (a
  reference local, a capture, a view) can reach the value - otherwise copy.
- F15, F16 (unique, T13b): handing a unique value on while the same call also lends it, or while an alias (a reference
  local, a capture) may still be used, is a compile error naming the alias; typed.Landings counts mentions through aliases.
- F2 (O15): by-value holders in a join block end after the join's wait, never in deferred code run before it.
- F4 (O15): a by-value holder whose storage flows out (returned as a reference or an any, held by a returned value's
  reference field, pushed by reference into a parameter's collection, captured by a returned closure) does not end at
  the function's end: its destructor goes where its storage lands (as O16 registers a call's value where it lands),
  following the scope pass's placement; where the landing cannot be followed, refuse naming the escape.
- F6 (T13b): Array<T>(n, fill) with T unique is an error, in a generic's instance too.
- F12: a spawned call's arguments never share one stack slot across loop turns (D9h's stackArg); each task its own;
  check closures and generators for the same.
- F3 (O15): a by-value argument's drop flag is cleared only when the call is made; a later argument that leaves still
  ends it.
- F7: parallel declarations and assignments copy as a single `b := a` does (check.multi).
- F8: a capture that copies runs the declared Copy (E31d); a struct or Vec captured by value is copied, owned storage
  included; D16c's "value arrays borrowed" for a captured array itself (read-only). If SPEC D16c and E31d disagree,
  follow E31d for owning values, update SPEC, record it.
- F10: a failed contract (D17) ends the by-value parameters already taken.
- F11: interpret refuses what build refuses, check gaps included (B3e).
- F5: a failed check in a test ends by-value holders on its unwind path.
- F9, F14, work/d12.olang (over-rejections): accept defer/errdefer x.Destroy() with a by-value holder (C9b), a store over
  a destructor-holding local from try/!/a catch default (T13b), assigning a local anew after x.Destroy().
- F13: an immut generic instantiated with a unique type is refused at the instantiation (T13b), naming that rule.

How: CLAUDE.md's checklist per fix (SPEC, checker/codegen, evaluator agreement, a corpus test or a checks/cases program
per reproducer, HISTORY, CLAUDE.md, DEPENDENTS.md); make quick while working, one make verify + make scopesan at the
end; commit each fix on wt-bfix7 (own paths only, no attribution, no push); PROGRESS.md (untracked) current after every
fix; olang only; nesting <= 3 blocks; never touch /home/user/hotpath. Report per finding: fixed (commit) or why not,
decisions beyond these, verify results, anything found on the way.
