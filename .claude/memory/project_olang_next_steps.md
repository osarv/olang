---
name: project-olang-next-steps
description: "Work order for olang and the recorded future work: as of 2026-10-08 the self-hosting prep list is being built; everything else is either a recorded idea, parked, or a revisit-if"
metadata:
  node_type: memory
  type: project
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-10-08
---

Rewritten 2026-10-08 from an audit of CLAUDE.md, HISTORY.md and the old ledger; the earlier text (a running log of
work long since done) is in git before this commit. Open QUESTIONS live in the ledger [[project-olang-pending-decisions]];
this file is the work order and the future work nobody owes an answer on.

**Now: self-hosting prep, decided by the user 2026-10-08** (details in the ledger). Items 1-4, 5 (minus the
expression form) and 6 are being built in parallel by agents in worktrees (/home/user/wt/*, branches wt-*), merged by me:
1. `os.Args()` / `os.Env(name)` over runtime functions; `main` unchanged. DONE 8fb6afd (X6).
2. Creating and writing files, file-system calls (stat, mkdir, readlink) in std. DONE 8fb6afd. Still missing for the
   port: an exit status other than 0/1 (ledger 9), capturing a command's output (Run into a file then ReadFile), append
   mode, lstat, permissions, recursive remove.
3. Value-level bits for F16, BF16, F32, F64 (`x.Bits()`, `F64.FromBits(u)` - spelling may change, see the agent's call).
4. `List.At`/`SetAt` and a text builder - without making loops stop using iterators (S9d: a type's own Iter wins);
   also fix `ListIter`, which walks the chunk list from the head for every element (its comment's reason, satisfying
   an interface with no receiver scope, went with interfaces and O4b).
5. Several values per `case`, `case` guards, nested patterns; `match` as an expression once its syntax is chosen
   (ledger question 3).
6. `defer`, block-scoped as Zig's.
7. Float literals default to F64 (T6a) - DONE b7c8986. Debt found there: the B9a token evaluator reads a narrow-typed
   global (`X F32 = 0.1`, an `I32` that would wrap) as its exact value, so a top-level condition can disagree with the
   run time - fix by deferring such conditions to B9c's compile-time evaluation.
**Overnight plan, 2026-10-08 (the user: "Do a big refactor of the compiler as well ... Also do a code review, order is
your choice"):** feature batch first (lit, match, defer agents; merge each), then the REVIEW, then the REFACTOR - review
first because its fixes must land before code moves (and the refactor keeps behaviour identical, bugs included), and
because what it finds about structure feeds the refactor.
- Decided 2026-10-08 (my authority, for the port): **recursive enums** - an enum may be held by reference (`Expr&`)
  and a payload may hold one (`Add(a Expr&, b Expr&)`), so a syntax tree is an enum and nested patterns read through
  the references (`case Expr.Add(Expr.Lit(a), Expr.Lit(b))`, a null matching no nested pattern). The match agent's
  T17d ("an enum is never a reference") was a stopgap for references that never worked; this replaces it. An agent
  after the 00:30 reset, beside defer, before the review. Also decided: `:=` from a match/if expression keeps D15's
  rule per value (arithmetic does not name its type), so `area := match ... => 3.14 * r * r` stays an error.
- Review: five read-only agents by area - (1) token.c + syntax.c, (2) semantic.c types/modules/generics half,
  (3) semantic.c operands/statements/scopes half, (4) codegen.c incl. the runtime IR, (5) comptime.c, main.c, util,
  errmsg + std/prelude. Each reports only findings it reproduced with a small olang program on the current compiler
  (CONFIRMED) or could not reproduce but traced (PLAUSIBLE, kept apart). Fixes go in worktrees with regression tests.
- **First after the reset: a use-after-free in the scope checker (found by the enums work, reproduced on the old
  compiler).** A callee's obligations are checked at a call only if its body was checked first - never for generic
  instantiations or functions declared after the caller - so `for i in range n { l.Push(Node(i)) }` builds each node
  in the loop body's arena and stores it in the outer list (and `m.Put($i, i)` likewise; std/map's own test has the
  shape). Decided: fix it. The prototype (re-check missed obligations after all bodies, build each temporary where its
  obligation says) was right but rejected `for w in ws { mine.Push(w) }`, because ListIter's Next tags elements with
  the iterator's scope, not the list's: a result read through a `&p` field (C2d: keeps the argument's own scope) needs
  to carry the scope that field was bound to at construction - the per-instance binding the checker already records
  for constructor arguments (hereVar) - through `:=` locals and the for-in lowering, without new syntax.
- (closed 8a38b36) the program scope's unlocked allocator - tasks now get a private stand-in, folded at the join.
- (closed 8a38b36) a returned local array value pointed into the closed scope - the callee now copies it into the
  result scope and the caller adopts it.
- Progress 2026-10-09 00:40 UTC: master = 2baddf3 (all features through recursive enums). Running: the scope
  use-after-free fix (/home/user/wt/scope) and review areas (1) lexer/parser and (4) codegen, read-only against
  /home/user/wt/review (detached at 2baddf3, its own build). Still to start, paced by usage: review (2) semantic.c types/
  modules/generics, (5) comptime/driver/std, and (3) semantic.c operands/statements/scopes after the scope fix lands.
- Codegen review (2026-10-09 01:00): 19 confirmed findings, reproducers in /home/user/review/codegen/. Being fixed in
  /home/user/wt/cgfix: 5, 7-18 (spawn lowering, unsigned index zext, Array(n) byte overflow, struct fill IR, return in a
  test, >4096-byte literals, assignment order = left to right (decided: target's subexpressions, then value; compound
  place once), checked index evaluating its base twice, double allocation on `:=`, match blocks without arenas, BF16
  -O0, big by-value structs, decimal literal overflow, nondeterministic helper names). LEFT for after the scope fix
  (same area - where values land): 1 returned array/String value points into the closed scope (UAF), 2 assigning a new
  value to a global inside a function builds it in the function's scope (UAF), 3 program-scope allocator raced by tasks,
  4 spawn's arena merged into the join block not the bound scope (UAF), 6 try-default value built in the innermost
  block (UAF), 19 nested constructor in a loop leaks into the function scope. The review's structure notes: call lowering
  exists 5 times; "where does a value land" is answered in ~8 places with different fallbacks; hidden ambient context;
  cgMaxBlockDepth is a hand-kept walker; two conversion matrices; ~900 lines of runtime IR would move out cleanly.
- Parser review (2026-10-09 01:05): 17 confirmed findings plus checker crashes B-E, reproducers in
  /home/user/review/parser/; all being fixed in /home/user/wt/parsefix (decided: conditions whose value depends on a
  width defer to B9c; -D values validated by the lexer's rules). Finding A - a stack-use-after-return in
  pendingDischarges (buildMatchCore's stack copy of ctx read by flushPendingDischarges; ASan shows it on the corpus) -
  goes to the scope agent after its current task, with codegen findings 1, 2, 3, 4, 6, 19. Still to run: reviews (2)
  semantic.c types/modules/generics, (5) comptime/driver/std, (3) semantic.c operands/statements/scopes (after scope).
- 02:00: codegen fixes merged (d11c538 via c2f16e6, on master). Usage 65% of the window, so reviews (2), (5), (3)
  wait for the 05:30 window; running until then: scope fix, parser fixes.
- 03:00: scope follow-up merged (8a38b36, on master; codegen findings 1-4, 6, 19 and parser A fixed). Parser fixes
  (fadf5ce on wt-parsefix) are being merged with master by their agent (L10 U64 rule reconciled), then verified.
- 03:00: parser fixes merged (c14467b via ffacca8, on master; all 17 parser findings + checker crashes B-E; L10's U64
  decimals go to B9c in the token evaluator; `-D X=18446744073709551615` is a U64). Measured 03:15 (peak RSS of the full-suite `build/out -t`):
  2baddf3 (before tonight's fixes) 10.5GB, after the scope work 11.7GB, master now 11.45GB - so ~1GB is tonight's and
  the rest was already there: `-t` builds every listed file in one process and frees nothing between them. Each file
  is an independent build, so releasing a file's state before the next (or an arena per build) is the real fix - put
  it in the refactor.
- 06:10 (2026-10-09): reviews (2) types/generics, (3) statements/scopes and (5) evaluator/driver/std started at 05:37
  against /home/user/wt/review @ 9a6c8c9 (reproducers /home/user/review/{types,scopes,eval}). (2) reported 21
  confirmed findings (enum auto-Hash abort, read-only refs written through Call adapters and nominal conversions,
  self-holding inline arrays crashing, non-injective/truncated instantiation names, G4/G1 unenforced, alias-blind case
  names, extends types never meeting traits...); being fixed in /home/user/wt/tfix (wt-tfix). Decided for it: a
  declared type over a struct/enum/generic instantiation is an error (over a declared number/array it inherits no
  ctor/extends/generic identity); Eq/Hash/Str may be declared on an extending type, replacing the inherited ones;
  anonymous enums are the same type iff same cases, order and payloads. Full verifies serialize on
  `flock /home/user/verify.lock`.
- 06:15: review (3) statements/scopes reported 10 confirmed holes (F01-F10: try defaults checked before landing, match
  alternatives taking the first binding's scope/permission, &of bindings falsified through unknown-binding writes,
  by-value params holding refs returned unchecked, members/elements/slices of built call results never landing,
  Array(n, fill) temps, spawn temporaries, enum-param payloads read as program scope, read-only refs written through
  cond/match/as, Call adapters returned) plus over-rejections R01-R07 and a K2b baking bug (writable referents in
  .rodata, shared instances split); being fixed in /home/user/wt/sfix (wt-sfix). Decided for it: a by-value parameter
  holding references gets an implicit scope variable (O4b extended); a global argument binds a callee's scope variable
  to the program scope (O25e relaxed, O1b); a conditional/match of a reference and temporaries of its referent type is
  the reference type.
- 06:15: review (5) evaluator/driver/std reported 21 confirmed (globals with mut refs treated as constant and baked
  into .rodata, baked aliasing lost, value-returning-from-ref compared by identity in the evaluator, function-typed
  globals compiled to `ret 0`, match-value String UAF, inline-length check missing in comptime, static-literal and
  array identity, double rounding I64->F32/BF16, -0 rendering, value-array reassignment visible through slices, global
  init order, -i limits, SHELL INJECTION in remote fetch, stale objects reused across programs, -t stopping on one bad
  file, truncated link command, FormatInt(min), complex division, F8 -0, exported std test globals, generic Chan).
  Fixing in /home/user/wt/efix (evaluator/codegen) and /home/user/wt/dfix (driver/security/std/diagnostics). Decided:
  a global reaching mut-writable storage is not constant (not read/written at compile time, baked referents writable);
  each static literal site is one instance (no unnamed_addr merging); array identity = same pointer and length;
  value-array assignment reuses storage when the length is unchanged (an earlier borrow sees the new elements) and
  takes new storage otherwise - specified, evaluator matches; globals initialize in dependency order within a module,
  a cycle is an error; object names injective in the module's real identity (incl. a remote's commit); git run via
  exec with validated parts; Chan capacity >= 1 unless a rendezvous is clean.
- Error messages remade (the user 2026-10-09: "shorten down the error messages and keep them concise ... preferably
  on one row ... keep the rule number probably, it's better for agents ... you can remake the error message system
  completely, it's very crude still"). After the four fix batches merge and the `a is b`/atomics change, before the
  refactor (it touches every diagnostic call site). Plan (my design): `file:line:col: error[RULE]: message` on one
  row, then the source line and a caret under the token; messages short and naming the actual names/types involved
  (`expected I32, found F64`) instead of generic prose - a table of ids with rule and format string, ErrMsg calls take
  arguments; long explanations go to the spec, reachable by rule id (maybe `olang -e RULE` printing the spec rule);
  notes as `note:` rows (declared here, instantiated from). Today: ~300 #define strings in errmsg.h, 97 over 200
  characters, ~470 call sites, no arguments. The user approved this plan ("Yes do that", 2026-10-09).
- 07:15 (plan upgraded; the user: "add more agents, we wanna speed things up"): six agents. Fixing: tfix, efix
  (resumed), sfix. New: wt-isatom (`a is b` + atomic methods + D3a for type names), wt-tfork (-t runs each file in a
  forked child, so the suite's peak RSS is one file's - unblocks parallel verifies). A lexer-port spike was started
  and stopped at once (the user: "Don't do the self hosting yet ... finish the bug fixes and refactor first"). Error-message remake waits for tfix
  (it is adding an "instantiated from" note to errmsg.c).
- **Decided 2026-10-09 (the user: "Yes keep it modest. Also give the C compiler its own directory. From now on we just
  bootstrap as much as possible. Remember to keep a way to re-bootstrap if the current compiler binary is lost."):**
  the refactor is MODEST (move the C compiler into its own directory `bootstrap/`, dead code and stale comments, NO
  splitting for size - the user: "splitting files is overrated. I prefer long files if they all do the same thing.
  Only split where modularisation is a thing" (e.g. the ~900 lines of runtime IR inside codegen.c are a separate
  thing; semantic.c stays one file), -t memory, the error-message remake - no deep restructuring, since the port is a redesign). After the
  port the C compiler is frozen as stage 0 and new compiler work happens in olang. Re-bootstrap (my design): no
  committed binaries; `make bootstrap` builds the C stage 0, uses it to build the olang compiler, which rebuilds
  itself (stage 2 == stage 3 checked). The olang compiler's own source stays compilable by stage 0; when it needs a
  feature stage 0 lacks, the last commit stage 0 can build is recorded in `bootstrap/CHAIN` and `make bootstrap` walks
  that chain (Go's and Rust's approach), so a lost binary is always rebuildable from C plus the repo.
- 08:25: merged on master - dfix (driver/security/std), sfix (scope holes), tfork (-t per file: verify peak 3.2GB,
  /home/user/vlock = three verify slots), tfix (types/generics; 71b78ee). Running: efix, isatom, bench (benchmarks vs
  C, read-only), checksfan (checks.olang fanned out with join/spawn), errmsg (phase 1: new one-row diagnostics +
  `-e RULE`, converting token/syntax/main; phase 2 - semantic.c's ~460 sites - only after isatom and efix merge, then
  resume it with SendMessage). Left by tfix for the evaluator: -i keeps an error's name past an R17 bare-? boundary;
  -i cannot call through a Call adapter (handed to efix).
- 08:45: efix merged (d08eefb) - every batch from the three reviews is on master. Left over: `x := "abc" if c else "no"`
  still rejected by E28/D15 (checker); std/cancel "a busy task stops..." seen flaky once (handed to isatom). Running:
  isatom, bench, checksfan, errmsg (phase 2 after isatom merges).
- 09:05: benchmarks merged (85bdb0e; bench/README.md). Plain loops at C speed, allocation 5x faster than malloc; gaps
  in abstractions. Running fixes: wt-perfcg (closure devirtualization - Fold 10-13x; fresh arrays copied into fields;
  constructor allocation order; arena fast path; T7b return copy) and wt-perfstd (List walking, Map.Update, Map into
  the prelude, integer `$` without snprintf, Find/Split, Find failing on a miss, std/time, x.Fixed(n)). Queued after
  errmsg phase 2 (they touch semantic.c/syntax.c), all my calls unless the user objects: a multi-line array literal
  may end with `]` on its own line; bare `{ }` blocks (scope ends early - no expression starts with `{`); a `for { }`
  with no break targeting it leaves (D10a), so no trailing `unreachable`; a shift amount may be any integer type;
  in `a << b` a literal `a` adapts to the target (`x I64 = 1 << s` silently shifted an I32 - a trap); `x := "abc" if c
  else "no"` (E28/D15); the evaluator performs atomics while compiling (K1 refuses them with no real reason - keep
  run-time coverage in the P9 tests through mut-global inputs). Fuzzer (wt-fuzz ready) once CPU allows. 09:15: isatom
  merged (b7e5fa4); errmsg resumed for phase 2.
- 09:25: usage study (15 realistic programs, /home/user/review/study, repro/r01-r18): no use-after-free found; 11
  bugs + 6 over-rejections. Handed: perfcg <- r01 COND literal invalid IR, r02 segfault on a borrowed conditional,
  r18 digit file names; perfstd <- r04/r05 ListIter in the prelude, r12 Map of Lists iteration, r15 Bool.Hash, r17 Map
  slot reuse. QUEUED as "checker batch 2" after errmsg phase 2 (semantic.c): r03 fields after a generic
  self-reference unknown (refreshStructSnapshots through type args), r06 O25h copy of a reference-holding element
  (swap/Sort/argmin unusable), r07 a catch block disabling := landing (O18c), r09 an I32 read from a List carrying a
  scope, r16 cascades from one unknown type, G19 bodies still checked after a constraint error, `v := e; return v`
  losing O13c bindings; over-rejections r08 List of Lists element as receiver/loop source, r10 compose(f, g), r11
  rebuilding an enum field from its own payload, r13 Fold with a reference accumulator (O25a+D15 leave no spelling),
  r14 Pair inference taking `mut`; Bool-payload match exhaustiveness; a static text literal's elements stored into a longer-lived array rejected by O20 (scratchpad/rep/lit2.olang);
  diagnostics: name the declaration to change
  ("declare text where st lives"), text-join pieces ("write $x"), keyword field names, misplaced destruct. Then a
  std-gaps agent: ParseFloat, Join, ToUpper/Replace/Repeat, a line reader, List Pop/Clear/Remove/Sort/List(n, fill),
  a math module, Map Keys/Values/Clear.
- 09:35: checksfan (checks four at a time: make verify 366s -> ~190s) sent back to merge master (conflicts with
  isatom's checks changes). Note: the suite's largest process is now `-i bfrand.olang` at 3.5GB (-i frees nothing) -
  shrink that fixture or fix -i memory (stage 2).
- 10:00: errmsg phase 2 merged (32c0e71): every diagnostic `path:line:col: error[RULE]: msg`, ~365-entry table,
  `olang -e RULE`, old ErrMsg* API gone. Checker batch 2 started as two agents: wt-chk2scope (r06 O25h copies, r07
  catch landing, r09, O13c through `:=`, r08, r10, r11, r13 typed generic local takes its initializer's scope - my
  call, lit2 static literal elements in the program scope, scope diagnostics naming the fix) and wt-chk2syn (r03
  generic snapshot refresh, r14 Pair inference, r16 cascades, G19 bodies, Bool-payload exhaustiveness, and my decided
  friction fixes: `]` on its own line + trailing comma, bare `{ }` blocks, `for { }` with no break leaves, shift
  amount any integer type, a shifted literal adapts to the target, `:=` from a text conditional, join/keyword/
  destruct diagnostics). Also running: perfcg, perfstd, fuzz, stdmath. After all merge: the bootstrap/ move and the
  modest refactor (nothing else in flight).
- 10:20 (the user: "we are not hitting the usage goals ... a JSON lib, HTTP is probably better outsourced to a Unix
  command. Can you start working on Oann? ... centered around a linear algebra library that either should or should
  not be part of stdlib. Thoughts?"): started wt-stdjson (std/json as a recursive enum tree, os.Exec without a shell
  capturing output, std/http over curl) and wt-linalg (std/linalg: Tensor<T>, views, broadcasting, `@` matmul packed
  + blocked + join/spawn, vs C and OpenBLAS). My recommendation, being built (ledger question 7): the tensor/linalg
  core in std, oann (layers, autograd, optimizers, datasets) its own repo on top - PyTorch on ATen. Next: an oann
  agent rewriting /home/user/oann (C, ~1150 lines: dense/relu/softmax-cross-entropy/AdamW/MNIST, OpenBLAS+curl) in
  olang on std/linalg once its API lands (oann repo, branch claude/github-environment-setup-ftu9va). Environment:
  libopenblas-dev installed for the session (benchmarks) - another setup-script line for the user.
- 10:40: perfcg merged (9159bb4): function values are {code, env} pairs (capturing-lambda Fold 1.63s -> 0.23s, C
  0.22s), fresh arrays adopted, mmap'd fresh chunks skip zero-fill, instances allocated before arguments; also `:=` of
  a destructor type now declares a reference (destructors never ran before). oann phase 1 started (agent working in
  /home/user/oann on its branch, compiler from /home/user/wt/oannc - a detached olang worktree to update when linalg
  merges): DESIGN.md (autograd choice, zero-allocation training), MNIST pipeline in olang, layout; phase 2 (layers,
  AdamW, >97% MNIST, vs C+OpenBLAS) after std/linalg merges - then update oannc, tell the linalg API, resume it.
- 10:30: Matrix decided (linalg agent and oann agent told: Matrix<T> with runtime dims now, shape checks in one place,
  kernels on (rows, cols, stride) so dims can move into the type). Const generics + Array<T, N>: wt-constgen phase 1
  (spec design, no code) running; phase 2 implementation after chk2scope/chk2syn merge (they edit generics).
- 10:45: oann phase 1 pushed (osarv/oann claude/github-environment-setup-ftu9va, 53fbb25): DESIGN.md (recorded graph
  replayed with zero allocation, one planned arena, closed op enum + Custom), MNIST pipeline in olang, rand/clock.
  Decided by me: one std/rand (oann's xoshiro moves there, via the linalg agent); a small C trainer over OpenBLAS as
  the benchmark reference (old C oann does not compile); PyTorch CPU via pip if the network allows; oann laid out as
  an importable package. Queued small language items from it: `x[i, j]` -> At(i, j)/SetAt(i, j, v) (E31 multi-index);
  a hex/binary literal with the top bit set fits U64 (L10a); a failed test assert prints its file:line. Phase 2 waits
  for the matrix library (then update /home/user/wt/oannc and resume it).
- 11:40: merged stdjson (644853a: std/json immutable tree, pure-olang float parse/print bit-exact with Python,
  os.Exec via memfd, std/http over curl) and chk2scope (b92a952, verified by me after merging: r06-r13, lit2, Map.add,
  the linalg agent's three, `alpha <T> = 1`, one scope error per statement with a note naming the fix, and five
  use-after-frees). constgen phase 2 resumed (defaults for questions 12-14). QUEUED small-fixes batch (start after the
  12:00 reset): SILENT MISCOMPILE - a local named like a method makes `x.method()` call the local (codegen
  cgNamedTarget looks up func->name as a local even for methods; /home/user/review/stdjson/method_named_local.olang);
  hex/binary literal with the top bit set fits U64 (L10a); a generic bound to a by-value String rejected with O10d
  (generic_string_value_eq.olang); `$` on a float ~20us (17 snprintf+strtod tries, rendered twice) - use the
  Schubfach in std/json for the runtime and evaluator; ParseFloat into the prelude as String.ParseFloat (from
  std/json); multi-index `x[i, j]` -> At(i, j)/SetAt(i, j, v); a failed test assert prints file:line; cascades (E14
  then O10d; TryAt chain; missing final `}`); the study leftovers: kvtool:89 and matrix:127 invalid IR, calc:157 crash,
  widgets:26 generic snapshot (/home/user/review/study, programs migrated in chk2scope's notes); std-gaps (List
  Pop/Clear/Remove/Sort/List(n, fill), Map Keys/Values/Clear, Join, String ToUpper/ToLower/Replace/Repeat).
- 11:55 (the user: "remove the mention of [the inspiration] from anything in the project ever. Be thorough about
  both commits and specs. We don't license either Oann or Olang"): olang's whole local history rewritten with
  git-filter-repo (every file in every commit and every message; verified zero matches), active worktrees (constgen,
  fuzz, linalg) scrubbed and re-synced, backup bundle /home/user/olang-pre-scrub.bundle. Force-pushed 2026-10-09 ~12:20 after the user switched the session from Auto to Accept edits (the auto-mode classifier
  refuses history rewrites; in Accept edits it asks): olang master + claude branch, oann's branch (settling.md + phase 2).
  Afterwards: the backup bundle, the original-project clone and stale worktrees deleted, scratch copies scrubbed, reflogs
  expired and gc'd. GitHub may still serve old commits by SHA until its own GC (support request to purge fully). Neither repo gets a licence file.
- 12:10: std/linalg + std/rand merged LOCALLY (9b88d44; push on hold): Matrix<T>, GEMM 14-17 GFLOPS F32 single-thread
  (= C same algorithm; OpenBLAS 5-7x ahead by instruction set), Gemv beats a C loop, MLP step 2.4ms vs OpenBLAS ~0.5ms.
  Queued for small fixes: an immutable baked plain-data global is emitted `global` not `constant` (cost the GEMM
  kernel 10.8 vs 17.5 GFLOPS; bench/repro/linalg_global_constant.olang). oann: settling.md amended locally (e9b5115,
  force-push pending); phase 2 resumed with compiler /home/user/wt/oannc2 (the old oannc worktree is stale after the
  history rewrite - remove it later).
- 12:10 (fresh five-hour window; weekly 22%, target ~7%/h): started wt-smallfix (method/local silent miscompile,
  constant globals, hex U64, generic String O10d, multi-index At/SetAt, assert file:line + message, Schubfach `$`
  floats, cascades, study leftovers) and wt-stdgaps (List Pop/Clear/RemoveAt/Sort/..., Map Keys/Values/Clear, Join,
  ToUpper/ToLower/Replace/Repeat/Lines, ParseFloat into the prelude). Running: fuzz, constgen phase 2, oann phase 2.
  Pushing still blocked (force-push decision).
- 12:35: oann phase 2 pushed (fba0be4): MNIST 97.7-97.8% (AdamW, SGD, AdamW+projection), C removed, transformers next;
  2.39 s/epoch vs C+OpenBLAS 0.79 (GEMM instruction set: question 19); PyTorch pip blocked by the proxy (403).
  Found: arena chunk-pool LEAK (__olang_new_chunk tries only the pool head; Gemm leaks a B panel per call, 2.2GB per
  10 epochs) - wt-chunkpool fixing it + a workspace Gemm. Queued for the next checker batch from oann's repro/:
  listzero (D13c: a struct whose ctor reads through a reference parameter cannot be a List element), ctordefault (a
  constructor default naming a global: "expected Mode, found ?", twice); kept as designed: operatornames (E31 reserves
  Mul/MatMul for every method), joinparen (`$alpha (" x")` is a call, E13b). at2/hexu64/failloc are in wt-smallfix.
- 13:10: the user answered the last open questions (ledger): oann's projection is normalized, alpha 1e-3 by default
  (oann 89c8585, pushed). Started wt-native (native CPU by default, `-a TARGET`, target build constants, per-target
  GEMM tiles + math.Fma). Told constgen: constants introduced by `<N>` once, bare `N` after. QUEUED after langb and
  constgen merge, in this order: (a) type variables bare after their introducing `<T>` - switch the resolver constgen
  prepared and migrate corpus/std/oann; (b) the permissions batch (ledger Q4/Q5, my design: `mut` only before a
  reference type, bindings never `mut` except globals, fields assignable through a writable instance).
- 15:20 CEST: smallfix merged (ef939ae, pushed): method/local miscompile, immutable globals `constant` (GEMM with
  named tiles 7.0 -> 16.6-17.2 GFLOPS), hex/binary top bit into unsigned (L10a), D9b by-value array params copied,
  `x[i, j]` -> At/SetAt(i, j), `assert c, "msg"` + FILE:LINE on failed checks, Schubfach `$` floats (170x), missing-`}`
  cascades. oann phase 3 (transformers) started in /home/user/oann with compiler /home/user/wt/oannc2 @ ef939ae.
  Times in CEST from here on (user_timezone.md).
- QUEUED small fix: D13c's "no zero value" error for `List<Ticket>` (a constructor with an effect) is reported inside
  std/prelude/list.olang with the user's line only as a note - report it at the user's `List<Ticket>` (the type
  argument) naming `List<Ticket&>` as the fix. Goes with the next checker batch.
- 15:35 CEST: THE USER IS AWAY UNTIL TOMORROW (2026-10-10): "keep going and make some hard decisions yourself if they
  come up. I won't be available." Overnight plan, in order, paced at the five-hour cap with a send_later just after
  each reset: merge chunkpool, langb, constgen, native, oann transformers as they finish; then (a) T-bare migration,
  (b) the permissions batch, (c) a small checker batch (List<Ticket> D13c location, oann repro listzero/ctordefault),
  in sequence since all three rewrite semantic.c and the corpus, with light work beside them (oann settling networks
  after transformers, clean room); then the bootstrap/ move + modest refactor with nothing else in flight; then, if
  all of that lands, start the port with the scanner (feedback_port_clean_design.md). Hard decisions: make them by
  PRINCIPLES.md, record each in CLAUDE.md/HISTORY.md, and list them numbered in the morning report.
  The user, 15:40 CEST: "If you have time over, keep building out Oann adding relevant features" - spare capacity goes
  to oann (after transformers: settling networks per docs/settling.md, clean room; then checkpoints (save/load
  parameters), BF16 training, convolution via im2col, a tokenizer, data loaders; whatever the transformer work showed
  missing), each oann agent beside the compiler work, not instead of it.
- 16:05 CEST: chunkpool merged (66ce3d1, pushed): per-thread size-class pool with an LRU cap at 1/8 of memory (O8b),
  oann MNIST peak RSS 793MB -> 57MB, `linalg.GemmWorkspace` (a training step allocates nothing after its first).
- 16:20 CEST: constgen merged (G20-G28, Array<T, N>, T7c/T7d replace C2e; constants bare after their introducing `<N>`,
  `<N I64>` typed introductions; D3a for constant names). Type variables: one switch `bareTypeVars` in semantic.c, off;
  the follow-up flips it and migrates (recipe in the merge's HISTORY: keep each name's first `<X`, later `<X>` -> `X`;
  in a type item every listed name bare after the header; never the header). Known limit: a trait method returning
  `T&` (built) is not met by one returning `T&p` (borrowed).
- 16:50 CEST: constgen pushed (verified on master), langb merged by me (conflicts in semantic.c/errmsg/SPEC/checks
  resolved, verified) and pushed as a3ed507: M6b protocol privacy, D15 any settled type, print/println, ctordefault and
  listzero (List needs no zero value; library errors reported at the program's use, B11). wt-tbare started (type
  variables bare after <T>, with a re-runnable migration script; oann migrated by it later). Running: native, oann
  transformers, oann settling, tbare. Next after tbare: the permissions batch.
- 16:40 CEST (14:40 UTC): oann phase 3 pushed (957c4b2): transformer ops/layers/training/generation with a KV cache,
  numpy agreement over 40 steps, tiny Shakespeare 2,000 steps val 1.806, 554 ms/step (products 83% at ~11 GFLOPS),
  checkpoints (raw), its own copy of the workspace Gemm in kernels.olang (stopgap: delete once oann's compiler has
  linalg.GemmWorkspace). Started oann phase 3b (BPE tokenizer, safetensors, Conv2d/MaxPool via im2col + MNIST CNN).
  QUEUED oann catch-up after tbare lands: move oannc2 to master, run tbare's migration script on oann, adopt
  linalg.GemmWorkspace (delete kernels.olang), check C2e/privacy/print fallout. QUEUED compiler items from oann:
  repro/ctorunstored (O26 over-rejects a constructor only reading a reference argument), repro/capturedfn (a lambda
  capturing a function value keeps an indirect call per element - 3.1 vs 0.55 ns). linalg wants (after native lands):
  batched causal-aware strided Gemm for attention (~3x on attention), Gemm with bias+activation epilogue.
- 16:55 CEST: settling networks phase 1 done (wt-settle in oann, merged with 957c4b2 as 1c0e415, make test 54 ok; NOT
  yet on oann's branch - merge wt-settle into claude/github-environment-setup-ftu9va in /home/user/oann once phase 3b's
  agent has finished there, then push). Results: XOR 4/4, MNIST 97.48% after 10 epochs (8.7 s/epoch vs backprop 2.4),
  spiking LIF XOR 4/4 and MNIST-10k 90.48%; certified circuits cost ~6 points. Resumed the same agent for phase 2
  (Agent, memories, arousal, moment loop, bandit/reversal end-to-end).
- 17:00 CEST: native merged and pushed (189ec6a): native CPU by default, `-a TARGET` (B12), TargetCpu/
  TargetVectorBits/TargetHasFma, per-target GEMM tiles (AVX-512 12x32 F32): GEMM F32 13-17 -> 57-78 GFLOPS (OpenBLAS
  91-108), MLP step 2.3-2.9 -> 0.8-1.1 ms. WARNING for the oann catch-up: oann's kernels.olang copy of the old 4x12
  kernel is 3x SLOWER native (SLP groups accumulators across rows at 512 bits) - moving oann's compiler to master
  must replace kernels.olang by linalg.GemmWorkspace in the same step (scratch test: MNIST epoch 0.55 s).
  Cross-arch is -c only; aarch64 refused by clang 18's bfloat selection.
- 17:15 CEST: study2 (port rehearsal) done - /home/user/review/study2 (README, repro/r01-r15): an olang front end in olang
  (scanner matching the C tokenizer token for token on all files, precedence-climbing parser over recursive-enum ASTs
  parsing all 49 corpus/std files, a resolver): scan 72-90 MB/s, scan+parse 4.6 MB in ~0.2 s vs the C parser's 5 s.
  FOR THE PORT DESIGN (keep): 13 grammar points where one token is not enough (type-name knowledge for `T<..>(`,
  `T[`, `x is T`; statement-start declarations; `a, b =` lists; `for k, v in`; ctor bare fields; `f&x(` scope args;
  `if` at line start after a `}`-ending expression; join pieces; mixed type/const args; `<<`/`>>` splitting; L20a needs
  line breaks; build-decided branches need lazy parsing; patterns parsed as expressions) - each a decision before the
  port. Findings r01-r15 -> checker batch 3 (started 17:20 CEST, wt-chk3). std pieces for the port (buffered writer,
  path helpers, padded formatting, isatty, radix/unsigned ParseInt) -> a std batch after tbare. `-i` cannot run the
  parser (3 GB on 30 KB): -i stage 2 matters for the port's testing. Clean builds of a 25k-line port would take
  minutes (22 IR lines per source line; clang 2.8 s per 1.5 MB IR).
- 17:30 CEST (15:30 UTC): tbare merged and pushed (6999023): G8b is the introduction rule for type variables and
  constants; tools/bare_typevars.py migrates (idempotent); oann needs it run once its compiler moves (324 occurrences).
  Usage at 15:13 UTC: five-hour 0.61, weekly 0.38 (five-hour ~19%/h, weekly ~4.7%/h, ratio ~4). Started wt-perm (the
  permissions batch, its own migration script for oann) and wt-stdport (buffered writer, path helpers, padding,
  IsTerminal, radix/unsigned parsing). Running: review (today's code), oann 3b, settle phase 2, chk3, perm, stdport.
  OANN CATCH-UP once 3b and settle-2 finish: move oannc2 to master; merge wt-settle into oann's branch; run
  tools/bare_typevars.py and the perm script on oann; replace kernels.olang by linalg.GemmWorkspace in the same step
  (native is 3x slower with the copy); fix C2e inline arrays (now Array<T, N>); make test; push.
- 17:35 CEST: settling phase 2 done on wt-settle (e730a9c, make test 63 ok): agent.olang (Arousal, Memory, Trace,
  Critic, Agent moment loop, safetensors-layout checkpoints), FlatAdamW/FlatSgd in optim, examples/bandit_settle;
  bandit regret 0.19 -> 0.03-0.05, reversal recovered; 4 defaults tuned (decision 21). Found a compiler UAF
  (repro/ctorpush: a constructor pushing onto a List in its own reference field builds in the ctor's scope) - handed
  to chk3. Wants: std/rand state save/restore. Open question 8 (calm moments never explore). Merge wt-settle into
  oann's branch with the catch-up.
- 17:35 CEST (15:35 UTC): oann phase 4 pushed (BPE tokenizer 1.656 nats/char vs char model 1.840, safetensors both
  ways vs numpy, Conv2d/MaxPool im2col + MNIST CNN 98.84%), then wt-settle merged into oann's branch (3a2ad16, DESIGN
  section 17 = settling; make test 76 ok) and pushed. Review of today's code (/home/user/review/today, README): 15
  confirmed - #1 UAF (bare field stored after construction, returned by value) handed to chk3; #2-12 + #15 -> wt-cgfix2
  (started); #13 idle workers keep their pools (783MB retained after 4x200MB tasks; bound 64 x RAM/8) and #14
  GemmWorkspace keeps superseded panels (grow geometrically) -> a small runtime/linalg batch, QUEUED. Structural notes
  for the refactor: three evaluators (cfExpr, B9a tokens, comptime.c); per-element unrolled codegen paths; parameter
  defaults context-free; the crash handler's sigaltstack breaks ASan. oann catch-up agent started (oannc2 -> 9621af3,
  migrate, kernels.olang -> linalg.GemmWorkspace, re-measure). Running: chk3, perm, stdport, cgfix2, oann catch-up.
- 17:40 CEST: stdport merged and pushed (a29c257): io.Writer (errors surface at Flush, as stdio/bufio), std/filepath
  (Go's path/filepath on `/`), PadStart/PadEnd, os.IsTerminal, ParseInt/ParseUint(base) with base 0 = olang literal
  syntax, Rand.State/SetState (oann's agents can use it now); compiler fixes L10b, D15 fixed lengths, G21 computed
  lengths, E24 try covers a chain's last call, B3a crashed test binaries reported. Started wt-poolfix (review #13 idle
  worker pools, #14 GemmWorkspace geometric growth) and wt-portdesign (compiler/DESIGN.md: architecture, the 13 grammar
  points decided, bootstrap, order of work - no code). Running: chk3, perm, cgfix2, oann catch-up, poolfix, portdesign.
- 18:25 CEST: cgfix2 merged and pushed (0734820; today's review #2-12, #15): typed constant fold (G21, defers what it
  cannot decide exactly), `V3(a)` is the E32b view, `:=` keeps Array<T, N>, fixed->run-time copies one memcpy, `==` on
  long fixed arrays loops, lambdas over fixed arrays, constant defaults per instantiation, U64 constants, storage over
  64KB from the block's arena (T7c), diagnostics. Re-verifying the merged tip myself (agent left no log). Usage 16:23
  UTC: five-hour 0.86 (reset 17:00 UTC = 19:00 CEST), weekly 0.45. AFTER THE RESET start: (1) `-i` stage 2 - compact
  values, scope-mirroring freeing, destructors (comptime.c; needed so -i can run the port's parser; decided earlier as
  the redesign); (2) linalg attention kernels (batched strided Gemm, causal-aware, bias/activation epilogue) once
  poolfix lands (same file); (3) oann features once its catch-up lands (settling phase 3 fixed-point simulation for the
  PYNQ-Z2, implicit GEMM convolution, BF16 training); (4) QUEUED small: D13c's List<Ticket> error located at the
  user's type argument.
- 18:35 CEST: oann catch-up pushed (e076ae4): migrated to bare type variables and Array<A, N>, kernels.olang's copy
  replaced by linalg.GemmWorkspace - MNIST epoch 2.39 -> 0.69 s (C+OpenBLAS 0.93), transformer step 512 -> ~200 ms,
  75 tests pass. Next oann lever: attention through a Gemm per head (now 1.3-2x faster than its dot-product loops).
  New compiler bug from it: oann repro/genericctor.olang (a non-generic struct's constructor naming a type variable is
  accepted, every call then fails printing `<<T>>`) -> next small checker batch, with D13c's List<Ticket> location.
  Port design doc done (wt-portdesign 53672f2, compiler/DESIGN.md: scanner + Pratt parser, demand-driven checker,
  sec.8 as its own pass owning placement, typed MIR, Miri-style evaluator for comptime and -i, runtime.ll linked once,
  hash-named objects, bootstrap stages 0-3). Its P0 gaps to close in std/runtime BEFORE the port: S1 os.RunOnStack,
  S2 os.OnCrash, S3 __olang_dyncall over libffi, S4 os.RemoveAll/MkTemp/streaming Exec, S5 struct/enum allocations not
  rounded to the SIMD class (halves AST memory), S6 integer formatting in a base. Direction questions QA/QB in the
  ledger. chk3 being merged (wt-merge).
- 18:45 CEST, decided (mine): `-i` stage 2 is NOT built in C. compiler/DESIGN.md's MIR evaluator serves both the
  compile-time evaluator and `-i`, so stage 2 (compact values, scope-mirroring freeing, destructors) would be built
  twice; the C `-i` stays stage 1 and the port's M8 is stage 2. For the port's own testing `-i` is not needed before
  M8 (stage 0 builds the stage-1 compiler natively). The `-i bfrand.olang` 3.5GB fixture stays as it is.
  After the 19:00 CEST reset: oann features agent (settling phase 3 fixed-point simulation for the PYNQ-Z2, implicit
  GEMM convolution, BF16 training, attention through per-head Gemm); port P0 gaps agent (DESIGN.md S1-S4, S6; S5 after
  poolfix - both touch the allocator); linalg attention kernels once poolfix lands; after perm merges, a small checker
  batch (oann repro/genericctor, D13c List<Ticket> location, `return Node.Many(l.ToArray())` still O26).
- 18:55 CEST: poolfix merged and pushed (edf8238, verified): a parked worker keeps a 1MB batch and shares the rest
  through one locked pool; GemmWorkspace panels double. oann's compiler worktree /home/user/wt/oannc2 moved to edf8238
  (oann's make test passes on it). 19:00 CEST, started: wt-portgaps (DESIGN.md S1-S6), wt-linalg2 (batched causal Gemm,
  epilogue, implicit-GEMM conv), oann wt-oann-mixed (attention via per-head Gemm, BF16 mixed precision, Loader on a
  task), oann wt-oann-settle3 (settling phase 3: fixed-point board engine, sparse-code store, readout groups, CSR).
  Still running: wt-perm. When linalg2 lands, tell oann-mixed to switch attention to the batched causal Gemm. Next
  after perm: the small checker batch (above). Then the bootstrap/ move + modest refactor when no compiler agent runs.
- 19:30 CEST: perm merged and pushed (59c109e, verified). portgaps and linalg2 told to merge master and run
  tools/perm_mut.py before their verify. Started wt-chk4 (genericctor, D13c List<Ticket> location, Node.Many(l.ToArray())
  O26, E31 shape-only operator names). oann repro ctorpush/ctorunstored/capturedfn no longer reproduce (edf8238).
  OANN MIGRATION once oann-mixed and oann-settle3 finish: move oannc2 to master, run
  `python3 /home/user/olang/tools/perm_mut.py --olang /home/user/wt/oannc2/build/out <oann dir>`, delete the fixed
  repros (ctorpush, ctorunstored, capturedfn; operatornames/genericctor once chk4 lands), make test, push.
- Refactor: behaviour-preserving, accepted only if the IR for the whole corpus is identical before and after
  (normalized, as for the T6b cleanup) and `make verify` passes. Split semantic.c (13k lines) and codegen.c (6.9k) into
  cohesive files - roughly types, modules/imports/conditional compilation, generics, scopes (§8), expressions,
  statements and lowerings for the checker; runtime IR, expressions, statements, rendering, debug info for codegen -
  each shaped like a future olang module for the port; remove dead code and comments about removed features
  (interfaces, scope names, O10e...); unify hand-kept duplicate walkers (structContainsBareScopeField). One agent per
  file at a time; the makefile gets the new files.
Then runtime interfaces back as `any Trait&` (decided 2026-10-08, see the ledger; for GUI widgets eventually).
Then the port (a redesign, see feedback_port_clean_design.md): C compiler frozen as stage 0, module by module, acceptance = the test suite plus per-stage diffs where cheap (was: identical normalized IR),
then the stage-1 compiler rebuilding itself identically. 26.5k lines of C.

**Recorded future work** (the user recorded or deferred these; not next unless they say so):
- **FPGA support, for spiking neural networks** (the user, 2026-10-09: "I want FPGA support for spiking neural network
  implementations"; after self-hosting, as a second backend of the olang compiler). Route: high-level synthesis of a
  compiler-checked subset - fixed-width integers and minifloats, fixed-size arrays, bounded loops/comprehensions,
  match/enums, generics, compile-time evaluation for constant tables; no run-time allocation, recursion, function
  values, extern or text - emitted as LLVM IR or MLIR for an HLS flow (CIRCT, AMD's open Vitis HLS front end, Bambu);
  `join`/`spawn` and channels as parallel units/dataflow. What SNNs need on top (to design then): arbitrary bit widths
  (`U<12>`-like) and fixed-point types with saturating arithmetic (membrane potentials, Q formats), event streams for
  spikes (address-event routing), weights in on-chip memory, time-stepped leaky integrate-and-fire updates. The other
  route - a circuit-describing library run by the compile-time evaluator emitting Verilog (Chisel/Clash style) - kept
  as the alternative for timing-critical parts.
- Serialization (JSON and a compact binary encoder in std, walking fields - never a memory dump) on top of
  compile-time reflection (one generic iterating a type's fields, like `match <T>`); also restores what removing
  struct literals lost - rebuilding a valid value without its validating constructor.
- Declared-layout types for drivers, wire headers and C structs (exact size and offsets); foreign struct FIELDS in
  extern (held in reserve: a clang probe can give sizes, not fields).
- Utf8/Utf32 text types, as a library over Char/String.
- `-i` stage 2 (memory reclaimed, destructors) and stage 3 (tasks on real threads - sequential would deadlock chan).
- Porting oann's MNIST trainer to olang as a stress test of the newest features (offered, no answer).
- Package registry (the lock file pins commits; there is no registry); package-private visibility if std ever needs
  shared internals.
- `spawns` signature effect (deferred, purely additive); `select` over channels and a bound on parallelism.
- Cross-compilation: TargetOs/TargetArch are the host's from uname.
- DWARF for by-value aggregates, and a lexical block per test (tests share the harness's main).
- Compile-time evaluation: constant contexts inside function bodies (callee bodies checked on demand); S8c fixed
  locals for aggregates and references; baking the globals destructors write (simulating startup); a payload enum
  holding an address baked as data; K2c's exemption narrowed to a global's own frame.
- Several `try` defaults as one call's arguments (R9a's comma ambiguity, D8d).
- Weaker atomic orderings (additive); an `atomic` keyword was declined 2026-10-01 in favour of the builtins.
- Extern variables (nothing needs them); extern returning a pointer stays excluded (os.Args/Env avoid it).
- Text pieces cannot continue onto the next line (forced long commands into variables in checks.olang).
- The user's untracked program is in old syntax (pre-rename); never migrated - it is theirs, untracked.

**Parked, needs a benchmark first:** stack-allocating a non-escaping bare-`&` local instead of an arena call (needs a
size cap, Go-style); with it, stack SIMD alignment for local arrays (O8a covers the arena only).

**Revisit only if:** ThinLTO if programs get big; M:N scheduling only with async I/O; `volatileLoad`/`volatileStore`
builtins only for MMIO. (The chunk pool's reuse beyond its head chunk was done 2026-10-09 - O8b size classes + an LRU cap.)

**Small known debts found 2026-10-08:** the re-export-plus-import-cycle ordering fragility was worked around by
reordering worker.olang's imports, never fixed at the cause; several "must not compile" shapes from early history were
checked by hand only (comments, before `checks/` existed) - worth moving into checks/cases; `structContainsBareScopeField`
is the one type walker still kept in step with the others by hand.

**How to apply:** the user sets the order; don't start an item from the future-work list unasked. Fix bugs and debts
on sight per [[feedback-surface-and-fix-bugs]].
