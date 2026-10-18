# Review: docs/scope-model.md and docs/memory.md (soundness, before M6)

Reviewer pass, 2026-10-18. Read-only: no file in any worktree was changed. Target: the formal scope model
`/home/user/wt/merge/docs/scope-model.md` (SPEC section 8 as inference rules), together with the approved memory
model `/home/user/wt/merge/docs/memory.md` (one rule; early freeing as a compiler optimization; Vec a handle;
own/take removed). Stage 0 is `/home/user/wt/merge/build/out` (I rebuilt it in a scratch copy at HEAD = 2d3e1d0 and
ran it from there; reproducers in `repro/`).

## Verdict

**No HOLE found.** As a formalization of SPEC section 8, the model is faithful and sound: every use-after-free shape
the task named - self-store through a helper, derived-scope builds, merged per-instance bindings, conditionals of
references from different scopes, O14b/O14c obligations, split values and both LEND forms - is rejected by stage 0,
which is the model's reference behaviour, and the safe variants are accepted (evidence below). The section-4 rule
table is complete: I cross-checked every SPEC O-rule (O1..O26a, O30-O42) against the table and found none whose
protection is silently dropped by a "subsumed" or "retired" mark.

The real risk the model carries is **not** in the section-8 rules. It is in the **early-freeing second layer**
(scope-model section 5 + memory.md): a wrong early free is a use-after-free, and the layer's soundness is only as good
as an analysis of exactly the shape (`own`'s) that needed thirteen review rounds. The model is honest about this
(memory.md 3.3, 6.1), and its always-keep fallback means the failure mode is over-keeping, not unsafety - **except**
where the analysis wrongly proves a place sole. The findings below rank that first.

The section-5.5 hole the author found and fixed (two values of one place sharing a region term) **is fixed
correctly**, and the fix is conservative (details in finding 2).

## Findings, ranked

### 1. NOTE (top risk for round 6) - early freeing's soundness is conditional and rests on the most error-prone machinery in the project

scope-model 5.3's Theorem proves early freeing unobservable **given** E1-E4 at every free. E1 (no outside cell refers
into the region) is established by the provenance re-judge (5.4), and E2 (no live view across a let-go) by view
liveness plus a may-let-go summary (5.6). These are §8-shaped analyses - the same shape as `own`, whose thirteen
rounds (docs/own.md 12-27, and the tonight/str/own review series) each found a use-after-free the checker *accepted*.
memory.md 3.3 states this plainly ("the risk moves rather than disappears") and 6.1 lists the mitigations (always-keep
fallback; the three oracles of 3.6; a soundness review per relaxation).

What a reviewer of round 6 should insist on, and what the model should name as a hard requirement rather than leave
implicit:

- The **only** way early freeing is unsafe is a place wrongly proved **sole** when a reference into its region
  escapes. Everything else is memory. So the acceptance bar is: no program the fuzzer/sanitizer/evaluator reaches
  reads a freed region, and every relaxation past "keep" is reviewed. That is stated; make it the round's gate.
- The analysis depends on facts section 2.3 lists, **plus** two reachability notions it does not list explicitly:
  (a) "which construction-site collections a parameter/task may reach" (needed for the Vec hidden-alias memory safety
  of memory.md 4.4's `report`/`Job` example, and for the task-reach condition 3), and (b) "a view across a call" keyed
  to the right place. The safe default (keep / can't-prove-distinct ⟹ keep) covers these, but round 6 must make the
  default the *structural* answer, not an afterthought - memory.md 2.6 item 5 is the precedent to copy.

This is a NOTE because nothing is built and the fallback is safe; it is first because it is where a real
use-after-free will come from if one comes at all.

### 2. NOTE (confirming the author's own fix) - section 5.5's region-term fix is complete and correctly conservative

The hole: memory.md 2.4 as written gives all of a place's values **one** region term ρ, so `b.next = a` with `a`, `b`
both read from one map is accepted (ρ into ρ), and a later `m.Remove(1)` frees a's region under b.next.

The fix (scope-model 5.5, decision 4): each **read** gets its own region term, and for a **store** no region term
outlives another **or itself**. I checked this closes the three shapes the author lists and does not leave a fourth:

- `b.next = a` (two reads): `a` at ρ1, `b.next` reached through ρ2; ρ1 does not outlive ρ2 ⟹ escape ⟹ not sole. OK.
- the loop link `e.prev = last; last = e` through one local: each turn's read is a fresh term, and the "not itself"
  clause is what makes the *same* local across turns still an escape. OK.
- the method `b.link(a)` with `Γ_link ⊢ V(other) ≡ V(recv)`: in the re-judge β(V(other))=ρ_a, β(V(recv))=ρ_b; the
  equality needs ρ_a ≥ ρ_b, which the store rule denies ⟹ escape. OK.
- a self-link written in user code, `a.next = a.child` (both reached through one read `a`, at ρ_a): rejected by the
  "not itself" clause. This is **safe but refused** (both referents are in a's own region and die together) - an
  acknowledged OVER, not a hole, and the author names it ("A value referring to itself is made inside its own
  constructor or methods ... untouched"; user-code self-links are not).

Soundness of the fix rests on the re-judge being §8's own argument with ρ_k as a scope that closes at the let-go and
outlives nothing - which it is. No gap.

### 3. GAP (clarity, affects the differential test) - LEND's formal rule reads as a free choice; the kind->binding mapping must be the normative part

scope-model 3.3 states LEND as:

```
not self(g, p) ⟹ β = refs(x)      (by its references)
not reg(g, p)  ⟹ β = stor(x)      (by its storage)
otherwise      ⟹ error (O17)
```

Read literally this is a disjunction an implementer could satisfy either way when both conditions hold, and the two
bind `V(p)` to **different** scopes (refs(x) outlives stor(x)), so they record **different** obligations in the
caller's `Γ_f`. Both are sound, but they are not interchangeable for matching stage 0: SPEC O17 fixes the binding by
the split-value **kind** - a value *place* is lent by its storage, a value with *no storage* by its references, a
*handle* by its reference. The model gives this in prose ("What SPEC does is an instance of these") but below the
rule, as commentary. For M6 to pass the differential against stage 0 (section 8.3), the kind->binding mapping is the
normative rule and the two-condition form is the justification. Recommend promoting the mapping into the rule
statement (or into section 7's "rules of construction"), so an implementer cannot read it as "try by-references
first." Evidence that stage 0 is determinate here: `repro/byref.olang` (a reference read out of a lent value place,
stored into another argument - an obligation, accepted) and `repro/byref2.olang` (the same where the target outlives
the referent - rejected by O10c). Neither goes through `reg`/`self`; the value-place binding is by storage and the
reference-to-reference flow is an ordinary obligation, which is the determinate behaviour the model must reproduce.

### 4. GAP - section 7.2's stratification is asserted sound but the combined system's monotonicity/termination is not shown

The model's correctness for interprocedural facts hinges entirely on 7.2: generate-then-solve, SCC order, placement
never reading its own component's obligations, no summary read before its component converges (restated as decision
5/9.1.5 and rule 7.3). I checked the layering holds: lower components resolved first; within a component placement
takes the conservative default (O18b/O18c "taken to build", O26a "keeps") so `Γ` is a monotone least fixed point over
a finite relation set; may-facts (`reg`, may-build, may-hold, may-keep, `self`) are least fixed points and `thru` a
greatest fixed point read only after convergence (LEND in step 3). This matches the two historical use-after-frees
the model is written against (tonight2 #2, str4 C1 - "a check on an unconverged summary").

What is missing for a *specification* M6 will be built from: there is no statement that the step-2 may-facts do **not
transitively depend on step-3 LEND verdicts** (they must not, or the stratification is circular). It is in fact true -
`reg`/`self` are about what a body *stores/returns*, determined by body structure, not by which binding a lend chose -
but the model should assert it, because an implementer who computes `reg` by "where did this build land" (which a
LEND choice influences via β) would reintroduce the circularity. Recommend adding to 7.2: "step-2 facts are structural
(what a body stores, returns, keeps), independent of any step-3 binding choice." The mitigation stage 0 uses for the
analogous invariant - `cgCheckMayBuild`, an internal-compiler-error if lowering builds where the walk said it could
not (decision 48) - should have an M6 analogue asserting "no summary read before its component's `converged` flag is
set." The model names `cgCheckMayBuild` as the model for the MIR verifier (3.11, 7.3) but only for the build-site
predicate, not for the fixed-point ordering, which is the part that actually bit twice.

### 5. OVER (acknowledged, must equal stage 0's set) - the conservative refusals in 6.1

scope-model 6.1 lists ten safe-but-refused shapes kept in M6. I confirmed several against stage 0 so the list is the
real one, not a wish:

- O25a exactness of a reference local even where nothing can be stored through it (`x Node& = first(l)` must be
  `x Node&l`): stage 0 rejects, model keeps it (the user's design).
- the handle grouping idiom needs the key at the map's scope, not the loop body (`repro/handle.olang`: `k String&m =
  $w` required; the naive `k := $w` is O10c-rejected with the note naming the fix). This is 6.1's "long-lived
  structures" friction and ledger QF, not a model defect.
- `List<List<String&>>` element-as-receiver and the loop-copy-lent-to-a-call cases (6.1 items 2, 3, 9).

The model's commitment is that M6 refuses **exactly** stage 0's set (section 8.3: every difference goes to
`compiler/goldens/scope.deferred` as either a stage-0 hole with a reproducer or an M6 relaxation with a review). That
is the right bar. The one thing to watch: 6.1 item 1 (reference-local exactness) and the per-member conditional rule
(3.6, `repro/cond.olang` rejected per-member with the E28 note, `repro/cond2.olang` accepted) are **user-design**
strictnesses; if M6 relaxes any of them "because the model's general form allows it", that is a language change, not a
port detail.

### 6. NOTE - S13b restatement is a real (sound) relaxation over the SPEC text, flagged correctly

scope-model 9.1 item 9 notes that SPEC's S13b ("nothing is built into" a binding read out of a by-value enum
parameter) predates O4b's scope variable for that parameter, and the model follows O4b (built into where `st` holds),
which is sound because that variable is where the argument's references are. This is a genuine difference between the
model and the current SPEC text, correctly called out as SPEC text to fix in round 3. Confirm the SPEC edit lands with
round 3 so the two do not disagree; it is the one place the model deliberately diverges from SPEC's letter (soundly).

### 7. NOTE - the memory.md destructor backstop (5.2) grows long-lived structures; disarming is a real dependency, not optional

memory.md 5.2 is explicit that with the `Close()`-backstop pattern, a closed socket's destructor stays pending until
scope close, so by O8d condition 4 the value holding it (a `Conn` in a long-lived map) is **kept** - memory grows with
every connection ever opened, closed or not. This directly undercuts the whole point of early freeing for the server
example of memory.md 2.7 whenever the connection owns a destructor-bearing resource. Ledger QAD 2 (disarm,
`x.Disarm()`) is the way out and is "recommended yes". A reviewer should treat disarm as **required for the server use
case to benefit at all**, not a nice-to-have - otherwise round 6's acceptance criterion ("the server stays under 8 MB")
holds only for a `Conn` that holds descriptors (`I32`), which is a real constraint on how std resource types compose
with early freeing. Not a soundness issue; a completeness one the model should rank higher than "direction question".

## What I verified against stage 0 (evidence)

All in `repro/`; stage 0 = build/out at HEAD. "rejected" = compile error (the model's intended refusal); "runs" =
compiles and prints the expected value after an arena churn.

| reproducer | model rule | stage 0 | meaning |
|---|---|---|---|
| `selfhelper.olang` | LEND `self` (3.3) | rejected O17 | self-store of a split value through a helper caught |
| `dbuild.olang` | INST, D never built into (3.5) | rejected C2d | build through a `&p` field at a derived scope caught |
| `pe2.olang` | INST (str4 PE2) | rejected C2d | copy out of a `&p` field, built through by a callee, caught |
| `cond.olang` | UNK, per-member (3.6) | rejected O20 + E28 note | conditional of refs from different scopes, judged per member |
| `cond2.olang` | UNK (3.6) | runs | both members outlive the field: accepted |
| `g14b.olang` | RET O14b (3.4) | rejected O10c | generic `id<T>` result, ref arg dies before holder |
| `o14c.olang` | RET O14c (3.4) | rejected C2d | by-value holder returned, inner dies before holder |
| `byref.olang` | CALL, ref-out-stored-to-arg | runs | obligation `V(p)>=V(dst)` discharged |
| `byref2.olang` | CALL, same (3.3) | rejected O10c | same where target outlives referent: obligation fails |
| `handle.olang` | LEND O17b (3.3) | runs | handle lent as its reference (grouping idiom) |
| `condbind.olang` / `meetbind*.olang` | O13b meet (2.6) | rejected O23/O25/O10d | merged per-instance bindings cannot be falsified |

## Completeness of the section-4 table (task point 2)

I listed every SPEC O-rule and matched it to a section-4 row. Every rule is present: O1, O1b, O2/O2a, O2b, O2c, O2d,
O3/O4/O4a, O4b, O5, O6/O7, O8, O8a/O8b, O8c, O9/O10/O10a, O10b/O10c/O10d, O10e+O24 (retired by O4b), O11, O12, O13,
O13a, O13b, O13c, O14/O14a/O14b/O14c, O15/O16, O17, O17a, O17b, O18, O18a/O18b/O18c, O19, O20, O22, O23/O23a,
O25/O25a-c/O25e/O25g, O25d, O25f, O25h, O26/O26a, O30-O42 (retired round 3). The "subsumed" marks I checked
individually - O2d (block depth in β), O5 (O20's slot table), O13b (sets/meets), O18/O19 (PLACE/CALL), O22 (D terms in
Γ, i.e. a FIT against D(p,q) records an obligation), O25d/O25f (RET / st-equality) - each genuinely follows from the
general form; none drops a check. The two "stale SPEC text" items (O10a gains `P >= s`; O11's "array index not
followed at all") are both the model being *more* permissive in a sound, already-implemented way, and are queued as
SPEC edits in 9.1.

## Bottom line for M6

Build §8 from sections 2-4 as written; it is sound and complete against SPEC, and stage 0 is the oracle to match
(section 8.3 differential). The two things to harden before writing code: (finding 4) make the fixed-point
stratification an explicit, asserted invariant with an M6 analogue of `cgCheckMayBuild`; (finding 3) make LEND's
kind->binding mapping the normative rule, not a choice. The early-freeing layer (section 5, round 6) is where a real
use-after-free would originate; its always-keep fallback makes it safe by default, and finding 1 is the gate to hold
it to. Findings 5-7 are over-rejection/completeness notes, not soundness.
