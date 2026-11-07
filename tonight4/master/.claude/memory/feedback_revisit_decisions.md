The user may be overruled by the language itself: a decision of theirs that turns out rigid in practice can be revised.

The user, 2026-10-09: "When it comes to revisiting some decisions I've made further along if adhering to them becomes
unbearable, you can do that. The language is supposed to be flexible, if something becomes really rigid and in the
way, then change it. Just remember to follow the overall design principles."

**How to apply:** when one of the user's earlier calls (recorded in CLAUDE.md as "the user's call/decision") keeps
forcing workarounds in real code - the usage study, std, oann, the port - change it rather than coding around it, as
long as the change follows PRINCIPLES.md (no manual memory, no hidden per-operation cost, natural language, minimal
syntax, multi-purpose, solid and smooth). Evidence first: name the code it got in the way of. Record it like any
reversal - the CLAUDE.md entry marked as reversed with the reason, the story in HISTORY.md, spec and corpus migrated
by the checklist - and say so in the next report, briefly, so the user can object. Not a licence to churn: a rule
that is merely unfamiliar or slightly verbose stays; the bar is "really rigid and in the way". Extends
[[feedback-decide-details]] from details to past decisions.
