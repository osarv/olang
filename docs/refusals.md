# Compile-time refusals: which placement can take over (refusals)

An audit, 2026-11-08, for review; no compiler code changed. The user's direction the same day: "is there a way through
creating a graph of scopes that we manage to compile basically all programs?" Moving storage outward never makes a
reference dangle - at worst the storage lives until its scope closes - so a refusal should stay only where no placement
is sound, or where the program is wrong as written. This note takes every must-fail case of `checks/cases` that a
memory, placement, ownership or permission rule refuses, and says which of four things becomes of it once docs/fnvalues.md
is built and what this note proposes is built after it.

## Progress

- Done: every must-fail case's first diagnostic read off `compiler/goldens/diag.txt` and re-checked with the current
  compiler (all 441 memory-related cases give the golden's rule today); every case of the memory rules classified (the
  appendix); a sample of each class read and compiled; the refusal kinds of `compiler/msgs.olang` in scope listed, the
  dead and the untested ones found; the `$x` copies of compiler/ tried without their `$` (section 9); the rounds,
  decisions and questions written.
- Not done: the same strip experiment over std/ and tools/ (compiler/'s 246 sites were run, section 9); a run of each
  (b) shape under a hand-placed prototype (the soundness arguments are reasoned, section 5, not measured).
- A fresh agent continuing would start at section 9 (std/ and tools/) or section 10 (refining a round).
- Built: R5 (5.5, 2026-11-08, wt-becometail) - the tail scope is the result scope (`RoleTail` gives one where the result
  holds no reference); the ten cases run; a by-value parameter holding a destructor value that the become does not hand
  on stays refused (`BecomeHeldParam`, becomeheldparam); `BecomeBorrows` and `BecomeDestructor` are kept as the net for
  a body the pre-judging read did not flag. HISTORY.md, "A become chain's tail scope".
- Built: R1 (5.1, 2026-11-08, wt-refusals1) - a split value lent where its references live, its own storage lifted there
  where the callee keeps it (`UseOwn`, `calleeKeepsSelf`); O17a's held or sliced split value lifts likewise; 41 of the 44
  compile and run (o17bbitand and o17bnonhandle build, their programs reaching a null as written); o17permute5 keeps
  T22a and o17permute6/6b keep T25c (fnvalues round 7). t17payloadscopes (5.2) runs too: a written reference local's case
  proposes its claim as `:=`'s did; e31bcallargsowned and e31binplacehome keep E31b alone (section 6). HISTORY.md, "R1: split values lent where their references live".

- Built: R2 (5.2, 2026-11-09, wt-refusals2) - O28's placement reached through obligations, a held temporary, a part
  read off a call's result, C2d at a store, a closure local, T32a's copy and P1g's two target locals; 13 of the 15 run
  (t17payloadscopes ran with R1), and p2fieldofresult and p2spawncallee (5.4) with them. rv3roclone stays refused (its
  failing side is untraced, and what it builds is T25c's read-only-copy refusal reached through a generic - section 6's
  kind, not a placement). HISTORY.md, "R2: kept through an obligation, a store or a payload".

- Built: R6+R7 (5.6, 2026-11-09, wt-gens) - a walk let go part way runs its suspend's drop path (lowering's: the
  blocks open there left as a return leaves them - deferred code, not errdefers, holders' drops); a generator's by-value
  parameter is its walk's, ended at its end, its drop, or - never started - with its captures; `:=` from a call of a
  destructor type is a holder (call 8), and a temporary a statement's call is given writably a hidden holder. The eight
  cases run (`YieldPastHeld`, `YieldPastDefer`, `DestructGenParam` gone); `DropRegistered` and `DropTempRegistered` stay
  for a written reference local (o15registeredref) and a temporary after an argument with an effect
  (o15registeredtempafter). HISTORY.md, "R6+R7: a walk let go runs what it holds; registered values as holders".
- Built: R3 (5.3, 2026-11-09, wt-refusals3) - a by-value parameter kept past the call copied at entry where it is kept
  (`ownLifts`, lowering's `copyParams`), a match binding's copy made where it is kept (`liftBinding`, lowering's
  `bind`); all 15 run, under the scope sanitizer and `interpret` alike, and the evaluator's stand-in placement copies a
  parameter flowing out into the program's scope. Not built: the caller building a fresh argument where the callee
  keeps it (5.3's "the copy left out") - an optimization. HISTORY.md, "R3: by-value parameters and match bindings".
- Built: R4 (5.4, 2026-11-09, wt-r4) - what a task is handed, calls through or captured, and a clause's captures,
  built at the join block's level, one per turn (the inference proposes the join where P2 refused); a task's capturing
  lambda never on the spawner's frame; a task's copy of a call's value or of a handle `x[i]` built there (the copy for a
  read-only parameter had been built in the turn's block - a use after scope, fixed). The seven left of the nine run
  (p2fieldofresult and p2spawncallee ran with R2); a for-in's copy lent to a task stays refused (p2forincopy).
  HISTORY.md, "R4: tasks' storage at the join's level".

- Built: R8 (5.7, questions 1 and 3, sections 8 and 9; 2026-11-09, wt-r8) - a default naming existing storage
  judged as the call's result is (P4a's task defaults, R11's by-value one holding references, and a reference default
  nothing can be stored through need only outlive where the result lands, O25g); a payload-free enum field read by a
  view as a number (E31b); a generator's own variable owning storage yielded as a copy (D18b); question 1: what a global
  keeps of a scope variable's storage is the callers' obligation to build it in the program's scope; question 3: an
  array of a run-time length ends its elements (Array<T>(n), comprehensions, copies, by-value parameters, a program's
  type holding one), a global holds a destructor value by value - and the program's scope's destructors now run as the
  program ends (they never did, the reference form's included; a global registering one is not baked). Ten cases run
  (p4adefaultexisting, p4adefaultholds, r11defaultexisting, e31bviewenumfield, d18yieldown, o1blambdaglobal and the
  six C11 ones), two new (r11defaultversions runs, r11defaultscope fails). Not built: c11keptvec (Vec's copy copying
  only its live elements needs a Copy existing only in some instances - a conditional Copy, a design of its own) and
  t22alatelambda (judging a loop body to a fixed point over its versions, O25i). The `$x` copies: 355 removed from
  compiler/ (emit.olang and lower.olang left, F9's files then). HISTORY.md, "R8: precision and the rest".

- Built: a read taken out into a helper (2026-11-14, wt-helperrej) - a reference local assigned whole a call that only
  reads what one argument refers to (read-only, building nothing, its one obligation that argument outliving the
  result) takes that argument's scope as its version (O13, O25i), as the read written in place does; views' rootPlace,
  refused with O10c once its read through a `Deref` was a helper, now uses one (o13readhelper runs). HISTORY.md, "A read
  taken out into a helper is judged as the read in place".

## 0. Summary

Of 1,246 must-fail cases, 355 are refused by a memory, placement, ownership or permission rule; the other 891 are
syntax, names, types, errors, generics and the like (counted, not classified). The 355 fall into:

| class | cases | what becomes of them |
|---|---|---|
| (a) gone by docs/fnvalues.md | 78 | `Destroy()` removed (18), a `Str` building where its receiver is found (34 + 5 others found at run time), destructors following storage (4), derived scopes passed (3), function values followed into calls (10) and read by E31b (4) |
| (b) becomes a program | 106 | storage built further out, a scope found at run time, an end reordered, or a sharper judgment - compile time only, every one listed by `-memory` where it moves storage |
| (c) stays an error | 153 | the program is wrong as written, or the user decided the rule: permissions (40), stale views (37), `unique`/`immut` (36), writes that would land in a copy and be lost (20), a collection growing under a write to its element (6), a stored function value whose type is the contract (6), which write wins (3), holders in a cycle (2), others (3) |
| (d) needs a decision | 18 | seven questions (section 7, 12) |

The scope rules proper - O10c, O10d, O17, O17a, O25i, O26, C2d, T17c, P2, S21's arena half and the rest of section 8 -
lose every refusal but four: three where one field slot would hold storage of two scopes (an alias writing through a
field with a binding of its own) and one where a global keeps what a by-value parameter's payload refers to. Everything
that stays in class (c) is a correctness rule rather than a placement one: what it refuses would not dangle if
accepted, it would compute something the program did not mean (a lost write, a stale read, a second copy of a unique
value, a write through what was promised read-only).

Real code shows the same: of compiler/'s 246 `$x` copies passed to a `Push` or assigned whole, 234 compile without
their `$` today - the placement rounds already merged (O27, O28, NLL) took over what they were written for - 6 are
renderings of numbers, and the last 6 are refusals this note's rounds and fnvalues take over (section 9). std's own
documentation still tells readers to write copies that are no longer needed (io.Lines, std/csv).

The build (section 10): eight rounds after docs/fnvalues.md's round 6, the largest the split values (44 cases, O17
generalized), then values kept through an obligation (15), by-value parameters and match bindings (15), tasks (9),
`become` (10), generators (2), ends ordered (4) and a precision round (7).

## 1. How this was done

- The cases: `checks/cases/*.olang` whose header is `# check: fail` (1,246). Each one's first diagnostic is in
  `compiler/goldens/diag.txt` (1,240 of them; the rest fail on a parse or a name with no rule). The rules of the 441
  that name a memory, placement, ownership, view, lending, task, `become`, generator, destructor, `unique`/`immut` or
  permission rule were re-checked with the compiler of master (built from 1879ade's compiler and std, the same as this
  branch's): all 441 give the golden's first rule today.
- The non-placement rules inside those (E12's type mismatches, E31d's shape of a Copy, P4's clause rules, the shape
  rules of `become` and of generators, trait-as-type, atomics ...) - 87 cases - are counted with the rest and not
  classified, leaving 355.
- Each of the 355 is classified in the appendix. Every case was read by its header comment; each class and each kind
  within (b) was sampled by reading the program and compiling it (`olang build`, notes included). For (b) the argument
  is concrete: which reference would dangle if the placement were wrong, and why it does not.
- docs/fnvalues.md (merged, not built) is read as built: a case it names, or a shape its rules plainly cover, is (a).
  Where it says a shape stays refused, this note says so and, where the user's later direction reaches it, asks.

## 2. The classes

- **(a) gone by docs/fnvalues.md** once its rounds are built - the section named.
- **(b) becomes a program**: the compiler does it itself, unobservable but in memory and speed. Six kinds: storage
  built further out (a local, a temporary, a copy, a parameter's copy, a binding's copy - each a new one per execution,
  where something keeps it); a scope found at run time (O29); an end reordered (holders first, QCZ); a sharper judgment
  (nothing moves: existing storage already outlives its target); a copy value semantics already promises (a value
  flowing out of a place the program goes on using); a prelude fix.
- **(c) stays an error**: no placement makes it right, or the user decided the rule - the reason in one line.
- **(d) needs a decision** - what decision, with a recommendation.

## 3. Counts

Per rule (the first diagnostic's rule), cases in each class:

| rule | a | b | c | d | what it refuses |
|---|---|---|---|---|---|
| C9b | 18 | | | | `x.Destroy()`'s own rules |
| E11c, O12 | 34 | | | | a `Str` building or storing where its receiver reaches |
| O11/O12, O12, O25i+O12 | 5 | | | | a build through a reference whose scope is one of several |
| O27, O15 | 3 | | | | a view of storage holding a destructor value |
| C2d | 4 | 4 | | | an instance holding a reference to an argument it would outlive |
| T22a, T22a+E31 | 9 | 1 | 3 | | a function value whose relations exceed its written type |
| T32a+T22a, T32a+T22 | | | | 3 | an `any`'s method relating scopes |
| E31b, E31+O17, E31b+P2 | 4 | 5 | 30 | | a call through `x[i]`, whose element is a copy |
| T25c, T25b, T25d, E11c+T25c | 1 | 1 | 41 | | a write through what is read-only |
| O17, O17a | | 38 | | | a split value (storage here, references elsewhere) lent or held |
| O10c | | 13 | | | a callee's obligation no scope here meets |
| O10d, O26, O10 | | 9 | | | a by-value parameter's own storage returned or kept |
| O25i | | 2 | | 1 | a reference local read after its storage's block closed |
| O25h, O23+O11 | | | | 2 | a field slot given storage of a scope other than its binding's |
| O1b | | | | 1 | a global keeping what a by-value parameter's payload refers to |
| T17c | | 2 | | | an enum payload's references in two scopes, or outlived |
| P2, P2+D16e, P1g | | 9 | | | a task's argument, capture or targets in a scope closing before the join |
| P4a, R11 | | 3 | | | a default naming existing storage |
| S21 | | 10 | | | `become` with arguments or destructor values in the closing frame |
| S20, S20+O15, S20+O26, C11+S20 | | 3 | | 2 | a yield with a destructor value, deferred code or own storage around it |
| O15+O16, O15 | | 4 | 2 | | destructor order: a registered value, a cycle |
| C11, C11+T13b | | 1 | 3 | 6 | values with destructors where no holder ends them |
| T32, T32a | | 1 | | 3 | an `any` with no copy; an `any` outliving temporaries |
| E28 | | | 3 | | a conditional's copy written and dropped |
| M19g | | | 37 | | a view or `Ref` used after its Vec may have grown |
| T13b (+E31d, G18), T13a (+E31d, T29c) | | | 35 | | `unique` and `immut` |
| **total** | **78** | **106** | **153** | **18** | |

Within (b): split values 44, kept through an obligation or a store 15, by-value parameters 12, tasks at the join's
level 9, `become` 9, ends ordered 4, match bindings 3, a sharper judgment 6, generator frames 2, a copy 1, the prelude 1.

## 4. (a) gone by docs/fnvalues.md

| fnvalues | cases | |
|---|---|---|
| section 13, `Destroy()` removed | the 18 `c9b*` | the rule goes, and its cases with it (fnvalues 13.2) |
| section 12, scopes found at run time | 34 `str*` (E11c), condvaluefield, rv5condmember, o12spawntarget, rv3condstore, nllmerge | a build into a scope not known while compiling goes where the storage it is built through lives (fnvalues 12.4 lists them) |
| section 11 (+12), derived scopes passed | rendercopyc2d, strstoredtor, strobligation | a destructor or a `Str` building through a field with a binding of its own: the scope passed by the call that knows it, else found |
| section 10, destructors follow storage | o27destructorview, o27destructorcall, o27destructorgen; c2dheldregistered | the value's end moves with its storage; c2dheldregistered (C2d's boundary: a by-value holder landed longer while it holds a destructor value by reference) is the same rule - to be checked in fnvalues' round 3 |
| section 4, followed into calls (round 7) | t22acapture, t22agivenvalue, t22agivesarg, t22ainstancename, t22sharedscope, t22sharedscopegeneric, t22sharedscopetype, callvaluekeeps, callvaluekeepsframe | fnvalues section 1's table |
| section 4 (round 7), not in fnvalues' table | t25ccopyfuncvalue | "this lambda writes through its by-value parameter, so it cannot be a function value - a caller may pass a read-only copy": followed, the call is the direct one, whose argument here is fresh. Round 7 should add it (T25c's `ReadOnlyFuncValue` is judged where the value is made, before anything is followed) |
| section 4.6, E31b reads what is followed (round 10) | e31bfnlambda, e31bfnresult, e31bviewcapture, e31bviewfnvalue | a lambda written at the call, a call's result whose callee gives one known lambda, a captured lambda that only reads, a function value followed into the callee |

## 5. (b) becomes a program

Each kind: what moves where, the memory it costs (`-memory`, B18, lists each placement, as it lists O27's and O28's
today), and why it is sound - which reference would dangle if the placement were wrong.

### 5.1 Split values lent where their references live (44: O17 34, O17a 4, E31+O17 3, o10cloopcopy, t17payloadwrite, o17permute6)

The shape: `b := src.b` (or `x[i]`, a call's value result, a for-in's copy) is a **split value** - its own storage is
this block's, its references are where its source's are (O25h). Lent to a callee that builds through it (`b.regrow(7)`
storing a new array into `b.Data`, `addRef(idBox(seed), v)` hanging a node off `b.head`), the callee's scope variable is
bound to the storage's block, so what it builds lands there while hung off storage that lives longer: the node off
`seed.head` dangles once the loop turn closes (o17tempcallresult printed garbage before O17 refused it).

- **What changes.** O17b's rule for handles, generalized to every split value: the call binds the parameter's scope
  variable where the value's **references** live, so what the callee builds through them is built there (where they
  are hung - the scope `b.head.next = Node()` written directly already builds in, O25h). Where the callee keeps the
  lent value's **own storage** - stores the parameter itself (o17selfstore's `b.head.owner = b`, o17bkeeps' back link),
  captures it in a lambda that outlives the call (o17blambdakeep, stro17captures), returns it so it can be stored
  through, hands it to a keeping constructor (splitborrowctor) - the value's storage is built where its references live
  too: the local's declaration builds there, a new value each time it runs (O28's rule), and the two scopes are one. O17a
  (a split value held by a reference local or sliced: rv3slicesplit, splitborrowlocal) is the second half alone.
- **Where "where its references live" is.** The source's scope: a block of this function, a scope variable passed with
  a reference parameter (O4b - `src`'s), or, where the compiler cannot name it, the scope found from the reference the
  value holds (O29, fnvalues 12) - so this round waits for fnvalues' round 6.
- **Memory.** What the callee builds was going to be kept by longer-lived storage anyway - nothing extra. A lifted
  value's own storage (a `Box` header) is held until its references' scope closes - one per execution, as O28's kept
  locals are; a loop of `bump(w)` calls keeps one header per call where `w` lives.
- **Why it is sound.** Builds go where the storage they are stored into lives (I1); the lent storage itself is reached
  past the call only where it was lifted to the same scope. Wrong would be binding to the references' scope without
  the lift where the callee stores the parameter itself: `b.head.owner = b` would hang the block's `b` off a node in
  `src`'s scope - which is exactly the set O17's keeps analysis already computes (`Stores`, `Keeps`, captures, a
  keeping constructor), so the decision of when to lift reads facts the checker has today.

E31+O17's three (e31bfieldviewbuild, e31bviewbodyerrors, e31bviewbuilds) are `x[i]` lent to a callee that only builds
through the element's references: with the binding above the callee is a view of the element and compiles. Six more
E31+O17 cases keep their E31b error (section 6).

### 5.2 Kept through an obligation, a store or a payload (15)

`t := $k "-text"` in a loop, then `names[0][0] = t` (s5handlenote, s6handlestore), `bs.Push(Pairish.pairish(t).a)`
(s5projection), `keep = compose(id, g)` with `g` a lambda over a loop's `c` (d16dcomposeshort), `t := p.mk().text` then
`keep.Push(t)` (o18cprojectionfresh), `s := Vs(...)` lent to `f(s[k], out)` (e31bviewnoindexnote), `x := st.get(0).inner;
held = x` (o18cprojectionborrow), `local := Info(k)`, `c.e = Env(local)` (c2de25once), `Link.Two(x, y)` with `y` in an
inner block (t17payloadscopes), the targets of `spawn a, b = two()` in two blocks (p1gtargetstwoblocks) ...

- **What changes.** O28 builds a value local where it is kept when the keeping is a store or a reference past its block.
  These are the same keeping reached another way: an obligation at a call (O10c - `SetAt`'s, `Push`'s, `compose`'s), a
  field projected off a call's result (O18c), an enum value's payload, an `any` made of an array of temporaries
  (t32anyarrofany), a temporary index held for a read and a write (s5heldindexnote). The scope pass places the local
  or temporary where the obligation, store or payload needs it - the longest of what keeps it.
- **Memory.** The storage was kept by the longer-lived place anyway; what is new is the storage of a value the place
  keeps only part of (the `Token` around its `text`, the `Box` around its node) - one per execution, held to that
  scope.
- **Why it is sound.** Storage moved outward is never reclaimed while what keeps it can reach it (I1). The reference
  that would dangle if the placement were wrong is the kept one - `names[0][0]` naming the loop turn's text after the
  turn - and it is exactly the obligation the call already states, so the placement discharges what the error names.

### 5.3 By-value parameters' and match bindings' own storage (15)

`fn bor(p aPt) aPt& { return p }` (o14byvalborrow), `fn mkF(c Counter) fn&() I64 { return c }` (e31calllocal),
`try Node.mk(1) catch default seed` with `seed` by value (r9adefaultlocal), `headOf<T>(x T)` slicing its own copy
(o10dd9bslice), `keepIn(out, v Vec<I64>)` keeping `holder(v)` (c2dnoclone), a constructor field `keep P& = p` of its
by-value parameter (rv5ctorparam), and a match binding kept past its clause (rv5matchkeep, rv5matchborrow, rv5ctormatch).
docs/sec8.md 4.3 left these refused: "the call's copy, made by the caller where the call stands".

- **What changes.** A by-value parameter is the callee's own copy (D9); where its storage must outlive the call, the
  callee makes that copy where it must live - the result scope, the instance scope, a reference parameter's scope -
  at entry, instead of in its frame. Each scope is one the callee already holds (O4b's hidden scope arguments, the
  result scope, the instance), so nothing about the call changes: no caller-side convention, and it works through a
  function value. Where the caller can see the callee and gives a fresh argument, it builds the argument there directly
  and the callee uses it in place (D9i's path for unique values, generalized) - the copy left out. A match binding's
  copy (S13b) is made where it is kept, as a local is (O28): the clause makes it there.
- **Memory.** One allocation of the parameter's size per call, held as long as the result or keeper - where today the
  program must write `p aPt&` or a copy to compile at all.
- **Why it is sound.** The returned or kept reference names storage made in a scope that outlives it, never the frame
  (o14byvalborrow's comment: before O14 this was a stack use after return). The callee's writes to its parameter stay
  its own: the copy is still a copy.

### 5.4 Tasks: storage at the join's level (9)

A loop-turn's array lent to a task (p2fieldofresult, p2spawnenum), a lambda made inside the join (d16espawn,
p2spawnlambda, p2spawncallee, p2spawnfieldclosure, p2spawncalled), a clause's capture (p4aclausecapture), a handle
copy for `x[i].M()` spawned (s5spawnhandle).

- **What changes.** What a task's argument, capture or function value holds is built at the level of the join block
  (the scope P2 asks it to outlive), a new one per turn - as docs/sec8.md already does for a view handed to a task.
- **Memory.** Each turn's storage is held until the join's scope closes; the tasks hold it until then anyway.
- **Why it is sound.** P2's condition - an argument outlives the join - holds by construction. Wrong would be a task
  still reading a turn's array after the turn's block closed and the next turn reused its chunk.
- **Built (R4).** As above; a for-in's copy of an element is not placed elsewhere (the loop's own slot, 5.1's recorded
  limit) and stays refused.

### 5.5 `become` (10)

An argument built in the function's own scopes (becomearenaarray, becomearenacall, becomearenacopied,
becomearenatext, becomeborrows), a value with a destructor built in them (becomedtor, becomedtorpayload,
becomedtorresult, becomedtortemp), a by-value destructor parameter handed on (s21becomeheld).

- **What changes.** A function that passes, at a `become`, storage it built gets a hidden **tail scope** - bound by
  the first call of the chain that is not a `become` to where its result lands, and passed unchanged down the chain
  (the signatures are equal, S21) - and builds that storage there. A destructor value in the closing frame is built
  there too and ended as that scope closes (fnvalues 10's rule), in reverse order of registration - the order the
  `return f(...)` form ends them in. s21becomeheld is a sharper judgment: `become down(c, n - 1)` hands `c` on at its
  last mention (a move, T13b), so nothing of this frame is ended before the call.
- **Memory.** What each level built stays until the chain's first caller lets go of the result - the same as the
  `return` form, whose frames' arenas all stay open until the innermost returns; the stack stays constant (`become`'s
  guarantee). `-memory` says it per site; a loop wanting constant memory passes values (question 6).
- **Why it is sound.** Wrong would be the callee reading an argument whose arena the `become` closed - the tail scope
  outlives the whole chain.

### 5.6 Generators (2) and ends ordered (4)

- **A destructor value around a yield** (s20yieldheld) and **a by-value destructor parameter of a generator**
  (c11dtorgenparam): registered with the scope the generator's frame lives in (O16), with a drop flag - ended where its
  block ends if the walk gets there, else as that scope closes, before the frame's storage is reclaimed. fnvalues 10's
  rule (a value's end goes with its storage) applied to a coroutine frame. Sound: the destructor runs once, while the
  frame it reads is still alive.
- **A value registered with a scope that holds a later variable** (o15registeredholds, -inner, -later, -temp): the
  decision of 2026-11-08 (call 8: a `:=` from a call of a destructor type becomes a holder) makes each a holder of its
  block; QCZ's order (holders first, last declared first) then ends `gs` before `l`. The temporary of o15registeredtemp
  becomes a hidden holder of the statement's block. Nothing moves; the order is computed.

### 5.7 A sharper judgment, a copy, the prelude (8)

- **Defaults naming existing storage** (p4adefaultexisting, p4adefaultholds, r11defaultexisting): `catch default
  fallback` where `fallback` already outlives the target - judged as an argument to the target is (P2's borrows), not
  refused for not having built what it holds.
- **A loop-carried version** (t22alatelambda): `op` is given a keeping lambda after its call in the loop, so the next
  turn's call reaches it. Judging the loop body to a fixed point over the versions (O25i) makes that call a direct call
  of `setv` or the lambda, and `N(i)` is then built where `kr` lives. Needs fnvalues' round 7 (records in locals).
- **A match on an enum value field** (e31bviewenumfield, a recorded over-rejection): the callee reads the field to match it and writes nothing of the copy's own storage, so it is a view of the element and the call compiles.
- **A yielded place** (d18yieldown: `yield l` of a `Vec<I64>` the generator goes on pushing to): the yielded value is a
  copy built where it goes - what a value flowing out of a place means (E31d: every copy calls `Copy`), and what the
  message tells the program to write. The cost is the copy the program would have written.
- **A copy of a collection of copyable destructor values** (c11keptvec): `Vec<Kept>`'s Copy copies its live elements by
  their `Copy`, not the whole buffer - a prelude change. (R8: not built - a Copy Vec declares would make `Vec<File>`
  copyable and no longer unique (T13b); it has to exist only in the instances whose elements copy, a conditional Copy,
  as the destructor is conditional. Stays refused.)

## 6. (c) stays an error

| why | cases | |
|---|---|---|
| a write through what is read-only - the user's T25b/T25c decisions ("knowing whether a function you pass things into mutates what you passed is valuable") | 40: T25b, T25c, T25d (vec95globalkeeps and t25ccopycallvalue among them) | no placement makes a read-only promise true; t25ccopycallvalue writes through a copy of an immutable global even when the call is followed |
| a stale view - the user's M19g rule | 37 M19g | memory-safe today (the retired buffer stays until the scope closes), so it is not a placement question at all: the view shows old elements and a write through it is lost |
| `unique` and `immut` - the user's decisions of 2026-11-03 | 36: T13b, T13a (c11vecofdtorcopy among them), c11destructnotunique | a second copy of a unique value, a use after a hand-on, a write to an immut value, a destructor without `unique` written |
| a write that lands in a copy and is lost | 20: 10 `e31bview*` (all but the six that are (a) or (b)), s5handlerepointfn, the four `e31btrydefault*`, rv3roat, s5atnosetat, and E28's three | `x[i]` of a collection with no in-place form, `try a.Get(i) catch default v`, a conditional's value: written, then dropped |
| the collection may grow while the call writes its element | 6: e31bdtor, e31bexportback, e31binplaceclosure, e31binplacector, e31binplaceglobal, e31binplacehome | in place, the write may land in a retired buffer; two-phase, the write-back would undo what the call did through the other route and may index past a shrunk end (unchecked) |
| which write wins is the program's to say | 3: s5e31bargs, s5e31bspawn, lanethroughatop | the written-out form says it |
| an argument owning storage evaluated before the write-back | e31bcallargsowned | |
| a stored function value, its type the contract - the user, 2026-11-08 ("if we want a type that can hold a function value, we make that type very explicit") | 6: t22apushed, t22alambdakeeps, t22areturncycle; e31bfnelem, e31bfnfield, e31bfnhandle | after fnvalues' round 4 the error names the word to write (`keeps b in a`, `keeps k`, `pure`); with it, they compile |
| two holders referring to each other - the user's QCZ | o15dropcycle, o15dropcyclestep | |
| a List is a handle - its copies share, so no holder ends its elements | c11dtortypearg | |
| the case's own read-only write | t22aobligation | its T22a half goes with fnvalues' round 7 |

None of these would dangle if accepted - each is a rule about what the program means, which is why placement cannot
take them over.

## 7. (d) needs a decision

| cases | the decision | recommendation |
|---|---|---|
| o25gfieldbinding, o23aliaswrite, o23aliasmethod (O25h, O25i, O23) | a field slot whose binding is exact (O25g) given storage of another scope - directly (`c.cur = g`) or through an alias of its instance (`arr[0].at = x`). Accepting it needs a field to carry a set of possible scopes (a whole-program points-to over field stores): stores through it judged against the longest, builds through it found (O29). fnvalues 12.4 keeps it refused | not now - three constructed cases, nothing in real code; record it, revisit when code hits it (question 4). 2026-11-09: o25gfieldbinding, and review A's r1/r2, became programs by placement instead - the constructor's argument built where the new referent lives (O25h, HISTORY "Review A's over-rejections"); 2026-11-10 (W4): the two alias cases run, the binding through the element being the body's field set (O23) |
| o1blambdaglobal (O1b) | a global keeps a lambda capturing what a by-value parameter's payload refers to: the obligation reaches `main`, which would build the loop turn's `Node` in the program's scope - the scope the global needs, not a fallback, but held to exit | yes: it is what the program asks for, said by `-memory` (question 1) |
| d18yielddefer, s19eyield (S20) | deferred code pending at a yield: run it when an unfinished walk's generator is let go (its home scope closing), as Python's `close()` runs `finally` | yes (question 2) |
| c11arraydtor, c11comprdtor, c11copyrunarray, c11unendedparam (C11) | an `Array<R>(n)` of a run-time length (a comprehension's, a copy's, a parameter's) holding destructor values: its holder ends each element, last first, as Vec's conditional destructor does - the length is in the array | yes (question 3) |
| c11holdertypearg (C11) | a program's own generic struct may declare a conditional destructor (std and the prelude only, today) | yes (question 3) |
| c11dtorglobal (C11) | a global holding a destructor value by value (`G Conn = Conn(3)`), ended as the program ends - today it must be written `Conn&`, which means the same | yes (question 3) |
| anynocopy, anynocopyfunc, anynocopylist (T32) | an adapter (`Take`, `Later`) keeps a copy of an `any`'s instance, whose type is not known: an `any`'s table would carry the type's Copy and size, the copy boxed where the adapter lands; a unique type behind an `any` has no Copy, which nothing at the call can see | not now (question 5) |
| t32anyscopes, t32anyobligations, d18canyborrowed (T32a) | promise words on a trait's methods, so a call through an `any` relies on them | fnvalues' question 2 |

## 8. Refusal kinds without a case, and dead ones

`compiler/msgs.olang` has 131 messages for the rules above. Five are never called - dead: `OwnFromBareRefParam`,
`ReadOnlyCopyRef`, `ScopeArgProgram`, `ReferenceNarrowedReturned`, `ContainerScopeUnbuildable`. About twenty are called
but no must-fail case gives them (their text is nowhere in `compiler/goldens/diag.txt`): `ReferenceNarrowed`,
`ReferenceNarrowedLocal`, `ElemNotInArrayScope`, `ElemOutlived`, `StoredRefOutlived`, `ScopeArgsDisagree`, `PartKept`,
`PartKeptDestructor`, `ViewKept`, `ViewKeptCopy`, `ViewReturned`, `TagUnknownScope`, `DefaultScope`,
`BuildThroughUnknownScope`, `InstanceOutlivesReferent`, `GenYieldShorter`, `GenYieldsBorrow`, `ReadOnlyCopyGlobal`,
`ReadOnlyCopyReturned`, `ReadOnlyCopyLent`, `ReadOnlyRefKept`, `YieldInDefer`, `LiteralUnique` (a found by searching
each message's longest literal; a few may be reached under other wording). Each is either reachable - then it needs a
case, or a case showing what replaced it - or not, and goes. Several of them are what the rounds below remove anyway
(`ViewKept`'s "where it is kept is not known here" by O29, `PartKeptDestructor` by fnvalues 10, `BuildThroughUnknownScope`
by fnvalues 11).

R8 (2026-11-09): the five dead messages removed, and P4a's `TaskDefaultExisting`, R11's `DefaultHoldsReferences`,
C11's `DestructRunArray` and `DestructGlobal` with the refusals they said. `PartKeptDestructor` was already gone.
`LiteralUnique` has a case. Cases written for `YieldInDefer` (s19byieldindefer), `ReadOnlyCopyLent` (t25ccopylent),
`ReadOnlyCopyGlobal` (t25ccopyglobal), `ReadOnlyCopyReturned` (t25ccopyreturned), `ReadOnlyRefKept` (t25crefkept),
`StoredRefOutlived` (o20storedrefoutlived, the bindgen shape with a try's two scopes - a recorded limit) and
`DefaultScope` (r11defaultscope). The scope pass's others - `ReferenceNarrowed`, `ReferenceNarrowedLocal`,
`ElemNotInArrayScope`, `ElemOutlived`, `ScopeArgsDisagree`, `PartKept`, `ViewKept`, `ViewKeptCopy`, `ViewReturned`,
`TagUnknownScope`, `BuildThroughUnknownScope`, `InstanceOutlivesReferent`, `GenYieldShorter`, `GenYieldsBorrow` - and
`GlobalHoldsShorter` (its one case, o1blambdaglobal, runs now) were each tried with the shapes their guards name (a
reference given two scopes, a store-through slot, an element stored, a generator yielding a parameter's referent, a
for-in copy, an instance holding a shorter referent): every program tried compiles and runs, placement building what it
needs. They stay as the nets they are, reached by nothing found; scopefuzz is where a shape reaching one would show.

## 9. What real code hits or works around

**The `$x` copies of compiler/.** compiler/ (but its tools) has 246 places that copy a value only to put it somewhere:
`out.Push($rel)`, `args.Push($c.Clang)`, `x = $y` assigned whole. Each was tried without its `$` - the file edited, the
whole compiler checked (`olang explain compiler/olang.olang main`, which runs check, the scope pass and M19g in about 4
seconds), the file restored. Of the 246:

| result | sites | |
|---|---|---|
| compiles without the `$` | 234 | placement (O27, O28, NLL, QCE's copy into a `Vec<String>`) already does what the copy was written for; String is immut, so sharing instead of copying is unobservable |
| a type error | 6 | `$n` of a number or a Bool - a rendering, not a copy |
| still refused | 6 | below |

The six that still need their `$`:

- compiler/bindgen.olang:252 and :817 - `g.recs[r].Key = t`, `g.recs[i].Name = n` with `t`, `n` this function's text:
  O20's `StoredRefOutlived` ("the container outlives what this refers to"), a store into an element's field of a `Vec`
  reached through a parameter. Class (b), round R2: the text built where `g.recs` lives, as O28 builds a local kept by
  a direct store.
- compiler/bindgen.olang:1180 and :1226 - `hide.Push(t)`, after which a split value is lent at :1208 (O17). Class (b),
  round R1.
- compiler/load.olang:808 - `dir := $m.Path` used later as a `catch default`: R11/O25's `DefaultScope` ("a reference
  default lives where the call's result does"). Class (b), a sharper judgment (R8): the default already outlives where
  the result lands.
- compiler/source.olang:34 - `n.texts.Push(t)` in `Names.add`: refused far away, at compiler/mcp.olang:115, where a
  lambda reaching `add` is passed for a written function type (T22a). Class (a), fnvalues round 7.

O20's `StoredRefOutlived` and R11's `DefaultScope` are two of the kinds section 8 found without a must-fail case - the
experiment gives each one, and R2 and R8 should keep them as run cases. So 234 copies in compiler/ are leftovers from
before the placement rounds - written to satisfy a checker that no longer needs them - and 240 of 246 would go once
the rounds here and fnvalues' round 7 are built. R8 removes the 234 (sonnet, medium: the experiment's list, one `make
quick`); std/ and tools/ were not tried (Progress).

**std's own guidance is stale.** std/io.olang (io.Lines) and std/csv.olang tell readers "to keep one longer, put it
where it is to be kept (kept.Push($line) builds a copy in the list's scope)" and "kept.Push($row[0])". Since O27 became
placement (2026-11-07) `kept.Push(line)` and `rows.Push(row[0])` compile as written and the text is built where the
list lives (checked with a scratch program reading stdin through both). The comments should say so.

**What real code still works around.**

- compiler/bindgen.olang takes a record's reference again after every call that may grow `g.recs` (three places,
  "each read of a record takes its reference anew - M19g"). That is M19g doing its job - class (c).
- std/list.olang's test of a List of references (line 1511) avoids "a helper's callback handed an element something can
  be stored through" - refused because the element's scope is derived from the iterator's (O23a, C2d). fnvalues 11
  passes or finds that scope: class (a).
- No `x T& = ...` written to satisfy O17's message exists in std/, compiler/ or tests/; the split-value shapes are
  checks/cases only. The cases come from reviews and the fuzzer, not from code someone tried to write - so the (b)
  rounds are about the language's reach rather than about code that is blocked today, apart from the stale copies above.

## 10. The build

Every round follows CLAUDE.md's checklist. Its tests: each former must-fail case becomes a `# check: run` case with
`# flags: -debug -sanitize`, keeping its comment and saying what it was, reading its values back after an arena churn
(the `churn()` most of them already carry), its expected output in `compiler/goldens/run.txt`; `interpret` runs it as
every run case (`interp@`), and the dead-region evaluator (`OLANG_DEADREGIONS`) over it; a `-memory` scenario per kind
showing the placement's row; fuzz/scopegen learns the shape (split values lent to keeping callees, by-value parameters
returned, task arguments in loop turns) so scopefuzz and `fuzz free` exercise it. Gates, at the end of the batch: the
full verify, scopesan, scopefuzz, `fuzz free`, the dead-region comparison; and per round, compiler/'s and bench's IR
byte-identical before and after (every round only accepts more: a program accepted today places nothing new).

| round | what | refusals it turns into programs | code that goes | model | waits for |
|---|---|---|---|---|---|
| R1 split values | 5.1: O17b generalized, the lift where the callee keeps the value's storage | 44 | O17's `BorrowSplitScopes` and O17a's two messages (kept only where nothing can be lifted: a by-value parameter's - R3 removes that too) | opus, xhigh (a new section-8 rule) | fnvalues round 6 (O29: the references' scope found where not known); before fnvalues round 7 (both change scope.olang's `call`; this one is smaller) |
| R2 kept through obligations | 5.2: O28's placement reached through obligations, call-result projections, payloads | 15 | most of O10c's error path, T17c's two, `ScopeArgsDisagree` | opus, xhigh | R1 (shares `liftLocal`) |
| R3 parameters and bindings | 5.3: a by-value parameter's copy made where it must live; a binding's where it is kept | 15 | O10d, O26, O10's by-value forms, `liftable`'s refusals of them, C2d's "can be built nowhere else" | opus, high | R2; lower.olang's entry copies |
| R4 tasks | 5.4 | 9 | P2's `SpawnArgTooShort`, `SpawnArgHoldsShort`, `SpawnFuncTooShort`, `SpawnCaptureTooShort`; P1g's targets | opus, high | R2 |
| R5 `become` | 5.5: the tail scope | 10 | S21's `BecomeBorrows`, `BecomeDestructor` | opus, high | fnvalues round 3 (destructors follow storage) |
| R6 generators | 5.6: destructor values in a coroutine frame; question 2's deferred code if yes | 2 (+2) | `YieldPastHeld`, C11's `DestructGenParam` (+ `YieldPastDefer`, `YieldInDefer`) | opus, high | fnvalues round 3 |
| R7 ends ordered | 5.6: registered values as holders (call 8) | 4 | `DropRegistered`, `DropTempRegistered` | opus, high | none - check.olang and lowering's drop order; beside R1 |
| R8 precision and the rest | 5.7; question 3's arrays, globals and generic destructors if yes; question 1 if yes; the dead messages; a case (or removal) for each untested kind (section 8); the `$x` copies section 9 shows unneeded; std's stale comments | 7 (+7) | P4a's and R11's default-existing messages, the five dead messages | opus, high (sonnet, medium for the copies and comments) | fnvalues round 7 (t22alatelambda) |

R1-R4 change scope.olang's call judgment and placement and run one after another; R5-R7 touch lower.olang, the
coroutine lowering and check.olang's drop order and can run beside them by files. fnvalues' rounds 1-3 (keywords,
`Destroy()` removed, destructors following storage) and 6 (O29) come first; its round 7 (twins) after R1 or beside R2-R4
by agreement on scope.olang.

## 11. Decided here (mine, within the user's decisions - to object to)

1. A split value lent for a call binds where its references live; its own storage moves there only where the callee
   keeps it (5.1) - not "always lift", which would hold a copy's header per call wherever a callee merely builds.
2. A by-value parameter that must outlive its call is copied by the callee where it must live, at entry (5.3) - one
   body, no change to how it is called, so it works through function values; the caller builds a fresh argument there
   directly where it sees the callee.
3. A match binding's copy is placed as a local's is (5.3), reversing docs/sec8.md 4.3's "additive later".
4. A task's storage is built at the join's level, one per turn (5.4).
5. `become` passes a tail scope down its chain (5.5).
6. A yielded place is a copy (5.7, d18yieldown) - value semantics, as an assignment from it is.
7. The classification of M19g, E31b's lost writes, `unique`/`immut` and the permission rules as (c): correctness
   rules, not placement - no question raised for them.
8. The `$x` copies that compile without their `$` are removed from compiler/ in R8 (String is immut, so sharing instead
   of copying is unobservable).
9. Every (b) round is gated on byte-identical IR of compiler/ and bench: it only accepts more.

## 12. Direction questions

1. **Answered 2026-11-08: yes ("if the global holds something, the global never goes out of scope, therefore it's held
   in the global scope"); built in R8.** **What a global keeps, built in the program's scope.** o1blambdaglobal: a global keeps a lambda capturing what a loop
   builds; accepting it builds each turn's value in the program's scope (until exit, said by `-memory`). Your "never do
   program scope" was about a fallback for an unknown scope; this is the scope the global asks for. Recommendation:
   build it there. Default: refused.
2. **Deferred code at an abandoned generator.** A `defer` pending at a `yield` runs when the generator is let go
   unfinished (its home scope closing), as Python's `finally` does at `close()`. Recommendation: yes. Default: refused
   ("yield outside the deferring block").
3. **Answered 2026-11-08: yes ("if they can be made memory safe ... so yes, allow them"); built in R8 - the arrays and
   the globals; a program's generic struct holding them through a run-time array needs no destructor of its own (the
   array ends them), and a conditional destructor stays the library's (it needs vacate).** **Destructor values where
   C11 refuses them today**: a run-time-length array of them ends its elements, a program's
   generic struct may declare a conditional destructor, a global may hold one by value. Recommendation: all three.
   Default: refused.
4. **A field slot given storage of another scope** (o25gfieldbinding, the alias cases): needs fields to carry a set of
   possible scopes, a whole-program analysis. Recommendation: not now - record it. Default: refused. **Answered
   2026-11-08 as docs/wholeprog.md's question 4: allowed, with whole-program field scope sets (its section 10, W4).**
   **Built 2026-11-10 (W4):** through an element or another instance's field, a field's binding is the storing body's
   field set (O23) - o23aliaswrite and o23aliasmethod run; a precompiled module's fields are its own (B3i).
5. **Copying an `any`'s instance** (`it.Take(2)` on an `any Iterator<I64>&`): through a Copy and a size in its table.
   Recommendation: not now. Default: refused.
6. **`become` and memory.** Built in the tail scope, what each level of a `become` chain builds stays until the chain's
   first caller lets go - as the `return` form keeps it, with a constant stack. Or keep refusing, so `become` always
   means constant memory too. Recommendation: place it, with a `-memory` row. Default: refused.

## Appendix: every case

Class (a) with the fnvalues section, (b) with its kind, (c) and (d) with the reason. The 87 cases of these rules that
are no placement question (shapes, types, clause rules) are not listed.

| case | rule | class | kind | why |
|---|---|---|---|---|
| c2dheldregistered | C2d | a | s10 | registration moves with storage |
| o27destructorcall | O27, O15 | a | s10 | destructor follows storage |
| o27destructorgen | O27, O15 | a | s10 | destructor follows storage |
| o27destructorview | O27, O15 | a | s10 | destructor follows storage |
| rendercopyc2d | C2d | a | s11 | destructor builds through field binding passed |
| strobligation | C2d | a | s11+s12 | C1/Str builds where found |
| strstoredtor | C2d | a | s11+s12 | C1/Str builds where found |
| c2dcapturebuild | E11c, O12 | a | s12 | Str builds where found |
| stradapter | E11c, O12 | a | s12 | Str builds where found |
| strarraycallback | E11c, O12 | a | s12 | Str builds where found |
| strcallbackbuilds | E11c, O12 | a | s12 | Str builds where found |
| strcalleeadapter | E11c, O12 | a | s12 | Str builds where found |
| strcalleecatch | E11c, O12 | a | s12 | Str builds where found |
| strcalleecond | E11c, O12 | a | s12 | Str builds where found |
| strcalleespawn | E11c, O12 | a | s12 | Str builds where found |
| strcalleespawnlambda | E11c, O12 | a | s12 | Str builds where found |
| strcatchnode | E11c, O12 | a | s12 | Str builds where found |
| strcondnode | E11c, O12 | a | s12 | Str builds where found |
| strcycledeps | E11c, O12 | a | s12 | Str builds where found |
| strdefaultfnvalue | E11c, O12 | a | s12 | Str builds where found |
| strdefaulthelper | E11c, O12 | a | s12 | Str builds where found |
| strdefaultindex | E11c, O12 | a | s12 | Str builds where found |
| strdefaultlanding | E11c, O12 | a | s12 | Str builds where found |
| strdefaultmapget | E11c, O12 | a | s12 | Str builds where found |
| strdefaultspawned | E11c, O12 | a | s12 | Str builds where found |
| strescapinglambda | E11c, O12 | a | s12 | Str builds where found |
| strmovedlocal | E11c, O12 | a | s12 | Str builds where found |
| strmovedlocalkept | E11c, O12 | a | s12 | Str builds where found |
| strnotecopies | E11c, O12 | a | s12 | Str builds where found |
| strreassignedcallback | E11c, O12 | a | s12 | Str builds where found |
| strselfrecdeps | E11c, O12 | a | s12 | Str builds where found |
| strspawnbuilds | E11c, O12 | a | s12 | Str builds where found |
| strspawnclausedefault | E11c, O12 | a | s12 | Str builds where found |
| strspawnnobuild | E11c, O12 | a | s12 | Str builds where found |
| strspawnpart | E11c, O12 | a | s12 | Str builds where found |
| strstorelambda | E11c, O12 | a | s12 | Str builds where found |
| strstorelocal | E11c, O12 | a | s12 | Str builds where found |
| strstorespawn | E11c, O12 | a | s12 | Str builds where found |
| strstoresreceiver | E11c, O12 | a | s12 | Str builds where found |
| strtransientadapter | E11c, O12 | a | s12 | Str builds where found |
| strtransientinner | E11c, O12 | a | s12 | Str builds where found |
| condvaluefield | O11, O12 | a | s12 | build found |
| rv5condmember | O11, O12 | a | s12 | build found |
| o12spawntarget | O12 | a | s12 | build found |
| rv3condstore | O12 | a | s12 | build found |
| nllmerge | O25i, O12 | a | s12 | build found |
| c9bafter | C9b | a | s13 | Destroy() removed |
| c9bcallkeeps | C9b | a | s13 | Destroy() removed |
| c9bcapture | C9b | a | s13 | Destroy() removed |
| c9bclash | C9b | a | s13 | Destroy() removed |
| c9bdefault | C9b | a | s13 | Destroy() removed |
| c9bdeferret | C9b | a | s13 | Destroy() removed |
| c9bdestroyedafter | C9b | a | s13 | Destroy() removed |
| c9berrdefer | C9b | a | s13 | Destroy() removed |
| c9bfnvalue | C9b | a | s13 | Destroy() removed |
| c9bloop | C9b | a | s13 | Destroy() removed |
| c9bnodtor | C9b | a | s13 | Destroy() removed |
| c9bnotlocal | C9b | a | s13 | Destroy() removed |
| c9bothermap | C9b | a | s13 | Destroy() removed |
| c9bparam | C9b | a | s13 | Destroy() removed |
| c9bstored | C9b | a | s13 | Destroy() removed |
| c9btask | C9b | a | s13 | Destroy() removed |
| c9bview | C9b | a | s13 | Destroy() removed |
| c9byield | C9b | a | s13 | Destroy() removed |
| t22acapture | T22a | a | s4 | followed (round 7) |
| t22agivenvalue | T22a | a | s4 | followed (round 7) |
| t22agivesarg | T22a | a | s4 | followed (round 7) |
| t22ainstancename | T22a | a | s4 | followed (round 7) |
| t22sharedscope | T22a | a | s4 | followed (round 7) |
| t22sharedscopegeneric | T22a | a | s4 | followed (round 7) |
| t22sharedscopetype | T22a | a | s4 | followed (round 7) |
| callvaluekeeps | T22a, E31 | a | s4 | followed (round 7) |
| callvaluekeepsframe | T22a, E31 | a | s4 | followed (round 7) |
| t25ccopyfuncvalue | T25c | a | s4 | followed: judged as the direct call (not in fnvalues' table) |
| e31bviewfnvalue | E31, O17 | a | s4.6 | followed into f, h read (rounds 7, 10) |
| e31bfnlambda | E31b | a | s4.6 | E31b reads a lambda written at the call (round 10) |
| e31bfnresult | E31b | a | s4.6 | E31b reads a followed call result (round 10) |
| e31bviewcapture | E31b | a | s4.6 | captured lambda read (round 10) |
| becomearenaarray | S21 | b | become | the argument built in the result scope (as return's frame would keep it) |
| becomearenacall | S21 | b | become | the argument built in the result scope (as return's frame would keep it) |
| becomearenacopied | S21 | b | become | the argument built in the result scope (as return's frame would keep it) |
| becomearenatext | S21 | b | become | the argument built in the result scope (as return's frame would keep it) |
| becomeborrows | S21 | b | become | the argument built in the result scope |
| becomedtor | S21 | b | become | the destructor value built in the result scope, ended as it closes (s10's rule) |
| becomedtorpayload | S21 | b | become | the destructor value built in the result scope, ended as it closes (s10's rule) |
| becomedtorresult | S21 | b | become | the destructor value built in the result scope, ended as it closes (s10's rule) |
| becomedtortemp | S21 | b | become | the destructor value built in the result scope, ended as it closes (s10's rule) |
| rv5ctormatch | O10c | b | binding | the match binding's copy built in the instance scope |
| rv5matchborrow | O10c | b | binding | the match binding's copy built where keep lives |
| rv5matchkeep | O25i | b | binding | the binding's copy built where keep lives |
| c2dnoclone | C2d | b | byvalue | the by-value parameter built where out lives |
| t17ccaseparamcopy | C2d | b | byvalue | the by-value parameter built where the lifted case lives |
| rv5ctorparam | O10 | b | byvalue | the constructor's by-value parameter built in the instance scope |
| rv5ctorparamcall | O10c | b | byvalue | the constructor's by-value parameter built in the instance scope |
| e31calllocal | O10d | b | byvalue | the by-value parameter built in the result scope |
| o10dd9bslice | O10d | b | byvalue | the by-value parameter built in the result scope |
| o14byvalborrow | O10d | b | byvalue | the by-value parameter built in the result scope |
| o14byvalborrowany | O10d | b | byvalue | the by-value parameter built in the result scope |
| o26own | O10d | b | byvalue | the by-value parameter built in the result scope |
| r9adefaultlocal | O10d | b | byvalue | the by-value parameter built in the result scope |
| c2dreturn | O26 | b | byvalue | the by-value parameter built in the result scope |
| c2dunnamed | O26 | b | byvalue | the by-value parameter built in the result scope |
| d18yieldown | S20, O26 | b | copy | the yielded value copied where it goes (value semantics), as written x.Copy() |
| c11dtorgenparam | C11, S20 | b | genframe | a generator's by-value destructor parameter registered with its home scope |
| s20yieldheld | S20, O15 | b | genframe | a destructor value live at a yield registered with the generator's home scope |
| s5spawnhandle | E31b, P2 | b | join | the handle copy built at the join's level |
| p2fieldofresult | P2 | b | join | built at the join's level, one per turn |
| p2spawnenum | P2 | b | join | built at the join's level, one per turn |
| d16espawn | P2, D16e | b | join | the lambda built at the join's level |
| p2spawncalled | P2, D16e | b | join | the lambda and its capture built at the join's level |
| p2spawncallee | P2, D16e | b | join | the lambda and its capture built at the join's level |
| p2spawnfieldclosure | P2, D16e | b | join | the closure built at the join's level |
| p2spawnlambda | P2, D16e | b | join | the lambda and its capture built at the join's level |
| p4aclausecapture | P2, D16e | b | join | the capture built at the join's level |
| b6elemvalue | C2d | b | kept | the text built where cells' elements live |
| c2de25once | C2d | b | kept | local built where c's referent lives |
| d16dcomposeshort | O10c | b | kept | lambda and its capture built where keep lives, one per turn |
| e31bviewnoindexnote | O10c | b | kept | s built where out lives |
| o18cprojectionfresh | O10c | b | kept | the call's result built where keep lives |
| rv3roclone | O10c | b | kept | the iterator temporary built where ro's elements live (or a sharper relation) |
| s5handlenote | O10c | b | kept | the text built where names lives |
| s5heldindexnote | O10c | b | kept | the index temporary built where m lives |
| s5projection | O10c | b | kept | the text built where bs lives |
| s5projectionelem | O10c | b | kept | the temporary built where bs lives |
| s6handlestore | O10c | b | kept | the text built where names lives |
| o18cprojectionborrow | O25i | b | kept | x's storage built where held lives |
| p1gtargetstwoblocks | P1g | b | kept | results built in the outer target's scope |
| t17payloadscopes | T17c | b | kept | y built where x lives |
| t32anyarrofany | T32a | b | kept | the array and its temporaries built where xs lives |
| o15registeredholds | O15, O16 | b | order | a registered value made a holder (decided 2026-11-08, call 8) and ordered by QCZ |
| o15registeredinner | O15, O16 | b | order | a registered value made a holder (decided 2026-11-08, call 8) and ordered by QCZ |
| o15registeredlater | O15, O16 | b | order | a registered value made a holder (decided 2026-11-08, call 8) and ordered by QCZ |
| o15registeredtemp | O15, O16 | b | order | a registered value made a holder (decided 2026-11-08, call 8) and ordered by QCZ |
| e31bviewenumfield | E31b | b | precision | a match on an enum value field read as a write of the copy: a recorded over-rejection (D3), judged precisely |
| p4adefaultexisting | P4a | b | precision | existing storage outliving the target given as the default |
| p4adefaultholds | P4a | b | precision | existing storage outliving the target held by the default |
| r11defaultexisting | R11 | b | precision | existing storage outliving the result given as the default |
| s21becomeheld | S21 | b | precision | a hand-on at the become's last mention ends nothing in this frame |
| t22alatelambda | T22a | b | precision | judge a loop-carried version at a fixed point of the loop body; N(i) then built where kr lives |
| c11keptvec | C11 | b | prelude | a collection's Copy copies its live elements one by one |
| e31bfieldviewbuild | E31, O17 | b | split | x[i]'s copy lent where the element's references live |
| e31bviewbodyerrors | E31, O17 | b | split | x[i]'s copy lent where the element's references live (C2d's own error remains) |
| e31bviewbuilds | E31, O17 | b | split | x[i]'s copy lent where its references live; then a view (no E31b) |
| o10cloopcopy | O10c | b | split | the for-in's copy judged where the element's references live (or lifted) |
| nllkeepsunion1 | O17 | b | split | as O17 |
| nllkeepsunion2 | O17 | b | split | as O17 |
| o17bbitand | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17bkeeps | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17bkeepsother | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17blambdakeep | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17bnoand | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17bnonhandle | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17bpending | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17copylent | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17handout | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17lambdastore | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17permute14 | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17permute15 | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17permute3 | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17permute4 | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17permute5 | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17permute6b | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17readonlycapture | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17selfstore | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17selfview | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17settlestale | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17spawntargets | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17tempcallresult | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17tempcond | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17tempcondarray | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17templambdacond | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17templambdacycle | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17templambdakeep | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o17tempreadonly | O17 | b | split | O17b generalized: a split value lent where its references live; its storage lifted only where the callee keeps it |
| o18claterkept | O17 | b | split | as O17 |
| rv5condas | O17 | b | split | as O17 |
| splitborrowctor | O17 | b | split | as O17; constructor keeping it: storage lifted |
| stro17captures | O17 | b | split | as O17 |
| rv3slicesplit | O17a | b | split | O17a: storage lifted to where its references live |
| rv3viewsplit | O17a | b | split | O17a: storage lifted to where its references live |
| splitborrowlocal | O17a | b | split | O17a: storage lifted to where its references live |
| splitborrowstore | O17a | b | split | O17a: storage lifted to where its references live |
| t17payloadwrite | T17c | b | split | the enum value built where its payload's referent lives (or builds through the payload go there) |
| o17permute6 | T25c | b | split | T25c gone by following (s4); the split lend as O17 |
| c11dtortypearg | C11 | c |  | a List is a handle: its copies share, no holder ends its elements |
| c11destructnotunique | C11, T13b | c |  | a destructor requires 'unique' written (the user's decision) |
| rv3strreceiver | E11c, T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| e28condarraylent | E28 | c |  | the write would land in a copy and be lost |
| e28condelementlent | E28 | c |  | the write would land in a copy and be lost |
| e28condlocallent | E28 | c |  | the write would land in a copy and be lost |
| e31bcallargsowned | E31, O17 | c |  | E31b remains: an argument owning storage evaluated before a write-back |
| e31bfnhandle | E31, O17 | c |  | E31b remains unless the field's function type is pure (round 10) |
| e31binplacehome | E31, O17 | c |  | E31b remains: the method may grow the collection the element is in |
| e31bviewrepoint | E31, O17 | c |  | E31b remains: repointing the copy's field is a lost write |
| s5handlerepointfn | E31, O17 | c |  | E31b remains: repointing the copy's field is a lost write |
| e31bdtor | E31b | c |  | the call may grow the collection while it writes the element |
| e31bexportback | E31b | c |  | the call may grow the collection while it writes the element |
| e31bfnelem | E31b | c |  | stored function value: unless its type is pure (round 10) |
| e31bfnfield | E31b | c |  | stored function value: unless its type is pure (round 10) |
| e31binplaceclosure | E31b | c |  | the call may grow the collection while it writes the element |
| e31binplacector | E31b | c |  | the call may grow the collection while it writes the element |
| e31binplaceglobal | E31b | c |  | the call may grow the collection while it writes the element |
| e31btrydefault | E31b | c |  | the write would land in a copy and be lost |
| e31btrydefaultbaked | E31b | c |  | the write would land in a copy and be lost |
| e31btrydefaultfield | E31b | c |  | the write would land in a copy and be lost |
| e31btrydefaultrecv | E31b | c |  | the write would land in a copy and be lost |
| e31bviewalias | E31b | c |  | the write would land in the copy and be lost |
| e31bviewcycle | E31b | c |  | the write would land in the copy and be lost |
| e31bviewfield | E31b | c |  | the write would land in the copy and be lost |
| e31bviewinc | E31b | c |  | the write would land in the copy and be lost |
| e31bviewmut | E31b | c |  | the write would land in the copy and be lost |
| e31bviewnesteddeep | E31b | c |  | the write would land in the copy and be lost |
| e31bviewnestedwrite | E31b | c |  | the write would land in the copy and be lost |
| e31bviewpass | E31b | c |  | the write would land in the copy and be lost |
| e31bviewvalue | E31b | c |  | the write would land in the copy and be lost |
| lanethroughatop | E31b | c |  | an operator method runs between the read and the write-back |
| rv3roat | E31b | c |  | the write would land in a copy and be lost |
| s5atnosetat | E31b | c |  | the write would land in a copy and be lost |
| s5e31bargs | E31b | c |  | which write wins is the program's to say |
| s5e31bspawn | E31b | c |  | as the same call unspawned |
| m19g01push | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19g02secondname | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19g03callgrows | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19g04struct | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19g05global | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19g06chain | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19g07funcvalue | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19g08givenboth | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19g09element | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19g10through | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19g11lambda | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19g12task | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19g13kept | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19g14byvalue | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19g15loop | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19g16forin | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19gelemroute | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19gelemroutemap | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19gmapnote | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19gmapref | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19gonce | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19grefgrow | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| m19grefloop | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| vec01view | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| vec04lend | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| vec05elem | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| vec06through | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| vec103refview | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| vec104viewfn | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| vec13nominal | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| vec14nominalconv | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| vec19listconv | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| vec88fieldviewpush | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| vec92methodgrows | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| vec94lambdakeeps | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| vec96taskkeeps | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| vec97globalfieldgrows | M19g | c |  | a stale view: old elements read, writes lost (the user's rule) |
| o15dropcycle | O15 | c |  | two holders referring to each other: the user's QCZ decision |
| o15dropcyclestep | O15 | c |  | two holders referring to each other: the user's QCZ decision |
| t13aimmutelem | T13a | c |  | unique/immut (the user's decisions) |
| t13aimmutfield | T13a | c |  | unique/immut (the user's decisions) |
| t13aimmutlent | T13a | c |  | unique/immut (the user's decisions) |
| t13aimmutmutref | T13a | c |  | unique/immut (the user's decisions) |
| t13aimmutcopy | T13a, E31d | c |  | unique/immut (the user's decisions) |
| t13atextmutref | T13a, T29c | c |  | unique/immut (the user's decisions) |
| t13atextslice | T13a, T29c | c |  | unique/immut (the user's decisions) |
| t13atextwrite | T13a, T29c | c |  | unique/immut (the user's decisions) |
| c11vecofdtorcopy | T13b | c |  | unique (the user's decision) |
| t13bafter | T13b | c |  | unique/immut (the user's decisions) |
| t13bafterdefer | T13b | c |  | unique/immut (the user's decisions) |
| t13bafterloop | T13b | c |  | unique/immut (the user's decisions) |
| t13baliasafter | T13b | c |  | unique/immut (the user's decisions) |
| t13bbyvaluefield | T13b | c |  | unique/immut (the user's decisions) |
| t13bbyvaluelocal | T13b | c |  | unique/immut (the user's decisions) |
| t13bbyvalueparam | T13b | c |  | unique/immut (the user's decisions) |
| t13bbyvalueresult | T13b | c |  | unique/immut (the user's decisions) |
| t13bcaptureafter | T13b | c |  | unique/immut (the user's decisions) |
| t13bfillunique | T13b | c |  | unique/immut (the user's decisions) |
| t13bhandondeferredafter | T13b | c |  | unique/immut (the user's decisions) |
| t13bhandondeferredloop | T13b | c |  | unique/immut (the user's decisions) |
| t13bhandondeferredtwice | T13b | c |  | unique/immut (the user's decisions) |
| t13bimmutgenericunique | T13b | c |  | unique/immut (the user's decisions) |
| t13bimmutholdsunique | T13b | c |  | unique/immut (the user's decisions) |
| t13bkeptafter | T13b | c |  | unique/immut (the user's decisions) |
| t13bkind | T13b | c |  | unique/immut (the user's decisions) |
| t13blentandhanded | T13b | c |  | unique/immut (the user's decisions) |
| t13bpushexisting | T13b | c |  | unique/immut (the user's decisions) |
| t13buniqueimmut | T13b | c |  | unique/immut (the user's decisions) |
| t13buniqueoverimmut | T13b | c |  | unique/immut (the user's decisions) |
| t13buniquecopycall | T13b, E31d | c |  | unique/immut (the user's decisions) |
| t13buniquecopydecl | T13b, E31d | c |  | unique/immut (the user's decisions) |
| t13bfillgeneric | T13b, G18 | c |  | unique/immut (the user's decisions) |
| t13bneedscopy | T13b, G18 | c |  | unique/immut (the user's decisions) |
| t13bvecat | T13b, G18 | c |  | unique/immut (the user's decisions) |
| t22alambdakeeps | T22a | c |  | stored function value: the field type is the contract; error names 'keeps k' (round 4) |
| t22apushed | T22a | c |  | stored function value: the element type is the contract; error names 'keeps b in a' (round 4) |
| t22areturncycle | T22a | c |  | return in a call cycle is a boundary; error names the word for the result type (round 4) |
| c3fieldthroughreadonly | T25b | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| d18cviewwrite | T25b | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| d8greadonly | T25b | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| g9dctorreadonly | T25b | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| s13caltperm | T25b | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25bglobal | T25b | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25blocalreadonly | T25b | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25bvalue | T25b | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25caswrite | T25b | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25ccondwrite | T25b | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| callrecvreadonly | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| copyoutrefs | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| lanethroughatro | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| o14returnglobal | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| rv3roforin | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| rv3roslice | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| sliceimmutableglobal | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t22aobligation | T25c | c |  | the case's own read-only write (T25c); its T22a part goes by s4 |
| t25bfield | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25biface | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25blocalmutinit | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25bpass | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25bstore | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25castomut | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25ccopyarg | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25ccopycallvalue | T25c | c |  | writes through a read-only copy of an immutable global (followed: still the direct call's T25c) |
| t25ccopyfield | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25ccopyfill | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25ccopyforin | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25ccopylit | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25ccopymatch | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25ccopyparam | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25ccopypayload | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25ccopypun | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25ccopystore | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t25cforinwrites | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t29aconvglobal | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| t29aconvreadonly | T25c | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| vec95globalkeeps | T25c | c |  | a read-only view made writable (T25c) |
| t25dconstmut | T25d | c |  | permission: a write through what is read-only (the user's T25b/T25c decisions) |
| anynocopy | T32 | d | anycopy | an any's table carries Copy and Size, the copy boxed where it goes |
| anynocopyfunc | T32 | d | anycopy | an any's table carries Copy and Size, the copy boxed where it goes |
| anynocopylist | T32 | d | anycopy | an any's table carries Copy and Size, the copy boxed where it goes |
| c11arraydtor | C11 | d | arraydtor | a run-time array ends its destructor elements |
| c11comprdtor | C11 | d | arraydtor | a run-time array ends its destructor elements |
| c11copyrunarray | C11 | d | arraydtor | a run-time array ends its destructor elements |
| c11unendedparam | C11 | d | arraydtor | a run-time array ends its destructor elements |
| c11holdertypearg | C11 | d | conddtor | a program's generic struct may declare a conditional destructor (std's only today) |
| c11dtorglobal | C11 | d | dtorglobal | a global holds a destructor value by value, ended at exit |
| o23aliasmethod | O23, O11 | d | fieldscopes | a store through an alias into a field with a binding of its own: the alias's bindings by points-to |
| o25gfieldbinding | O25h | d | fieldscopes | a field slot holding storage of two scopes: stores judged against the longest, builds found |
| o23aliaswrite | O25i | d | fieldscopes | a store through an alias into a field with a binding of its own: the alias's bindings by points-to |
| d18canyborrowed | T32a, T22 | d | fnQ2 | a borrowing generator behind an any needs 'borrows' on Next (fnvalues question 2) |
| t32anyobligations | T32a, T22a | d | fnQ2 | promise words on trait methods (fnvalues question 2) |
| t32anyscopes | T32a, T22a | d | fnQ2 | promise words on trait methods (fnvalues question 2) |
| d18yielddefer | S20 | d | gendefer | deferred code pending at a yield run when an unfinished walk is dropped |
| s19eyield | S20 | d | gendefer | deferred code pending at a yield run when an unfinished walk is dropped |
| o1blambdaglobal | O1b | d | program | what a global keeps built in the program's scope (held to exit) |
