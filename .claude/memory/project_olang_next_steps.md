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
- 19:45 CEST: oann settling phase 3 pushed (98d37a7): board.olang (bit-exact Q1.15/Q4.14 engine, golden vectors,
  MNIST through it 91.1-93.4% agreeing 99.99-100% with F32), store.olang, readout groups, sparse.olang (CSR, Auto at
  density <= 0.25); decisions 31-47 in docs/settling.md. Started oann wt-oann-settle4 (consolidator + Sleep, spiking on
  the engine, checkpoint RNG via State/SetState, open question 10) and a read-only usage study 3 of the newest rules
  (perm, constant generics, bare T...) with compiler /home/user/wt/s3c (master 59c109e) -> /home/user/review/study3.
  Usage 17:41 UTC: five-hour 0.11, weekly 0.50. Running: portgaps, linalg2, oann-mixed, chk4, oann-settle4, study3.
- 20:00 CEST: portgaps merged and pushed (DESIGN.md S1-S6 all built: os.RunOnStack, os.OnCrash, std/ffi over
  __olang_dyncall, os.RemoveAll/MkTemp/Exec(capture=false), aggregate allocations at their own alignment, n.Format(base)).
  The port's P0 is done except the bootstrap/ move + modest refactor: start it when chk4 has merged (it rewrites
  semantic.c); linalg2 (std only) may run beside it.
- 20:35 CEST: usage study 3 done (/home/user/review/study3/README.md, 36 findings, repro/r01-r36): no crash beyond
  r02's invalid IR, but r01 List/Map copies corrupt silently. Started wt-s3scope (#4 O26a for reference locals - the
  port's parser idiom, #5-8 O17 by body, #9, #11-15, #36, #10 investigate, #31 optional, diagnostics) and wt-s3std (#1
  List/Map handles + Clone, #2 IR, #3 == on arrays elementwise, #19 FILE:LINE on guaranteed checks, #29 `case _ if`,
  #30 keyword method names, #24). Running: linalg2, oann-mixed, chk4, settle4, s3scope, s3std.
- 21:20 CEST: linalg2 merged and pushed (18f6a5c): Batch/GemmBatch with Triangular (attention T64 fwd 2.0 -> 0.8 ms,
  T256 x4 threads 93 -> 9.6 ms), GemmAct, Patches/GemmPatches (conv 5.8 -> 3.4 ms), plain Gemm F32 512 90-94 GFLOPS,
  G9a: null takes no part in inference. oann: oann-mixed merged and pushed (e9d4ef1: attention per-head Gemm,
  Graph<BF16> mixed precision at F32 accuracy but 3-4x slower until bf16narrow is fixed, Dataset/Loader); settle4 merged
  locally (consolidator + sleep 95.8% retention, spiking on the board 91.6% MNIST, checkpoints keep RNG state, T=0.05).
  Started wt-cgfix3 (oann repro spawncall CORRECTNESS, bf16narrow, capturedvalue, linalg direct path). A verify was
  OOM-killed (shared.olang) beside 5 agents + oann tests: /home/user/vlock is TWO slots now.
  NEXT for oann: one agent moves oannc2 to master, runs tools/perm_mut.py on oann, deletes fixed repros, adopts
  GemmBatch in attention and GemmPatches in conv, re-measures.
- 21:45 CEST: s3std merged and pushed (List/Map handles + Clone, == on array references by contents, FILE:LINE on
  guaranteed checks, case _, keyword method names L9a, r02 IR fix). oann settle4 pushed (87cad06). Started wt-oann-up
  (oann onto master 472373d: perm migration, repro hygiene, GemmBatch attention, GemmPatches conv) - it predates the
  List/Map handle change; move oann's compiler again after. Found, not fixed: `type Nest Array<Nest&>` accepted but
  unbuildable ("expected Nest&, found Nest&") - for the next checker batch.
- 22:05 CEST: chk4 merged and pushed (77689b1, its own verify on the same code). oann's genericctor and operatornames
  repros fixed (oann-up deletes them). Started at 21:50: a read-only review of tonight's merges (/home/user/review/tonight)
  and wt-fuzz2 (fuzzer extended to tonight's features). Running: s3scope, cgfix3, oann-up, review, fuzz2.
  After s3scope and cgfix3 merge: the bootstrap/ move + modest refactor (no other compiler agent then).
- 22:30 CEST: review of tonight's merges done (/home/user/review/tonight: 8 confirmed - RunOnStack in a task races
  the program scope (heap corruption), by-value param building through ref fields UAF (old), cgDeepEq infinite on a
  self-referential struct, read-only List/Map writable through a copy (QC), evaluator copying an unwritten by-value
  array, ListIter after Clear endless, RunOnStack small stacks in -d (TLS, no comdat on linkonce_odr globals), `x mut T`
  local in a generic). Started wt-rvfix for all of them + Nest + Exec fd leak + SPEC T25b note.
- 23:00 CEST: cgfix3 and s3scope merged locally (0a1b122, full verify running). Usage 20:49 UTC: five-hour 0.70,
  weekly 0.66. Started (read-only, on /home/user/wt/s3c @ 0a1b122): review2 of chk4/cgfix3/s3scope (soundness first)
  -> /home/user/review/tonight2, and study4 (systems, concurrency, scripting) -> /home/user/review/study4. Running:
  oann-up, fuzz2, rvfix, review2, study4. After rvfix: bootstrap/ move (sources only, build/out stays) + modest cleanup.
- 23:05 CEST: the user answered QA/QB/QC as recommended (ledger). Started wt-qc (copies of read-only stay read-only);
  rvfix told to drop its T25b "known hole" note. Once the port starts, C compiler work is FIXES ONLY (QB).
  The user asked how far the compiler is: told port design + P0 done, port not started (refactor first), ~1-2 h to M1.
- 23:25 CEST: cgfix3+s3scope pushed (e139b9b, verified). oann upgraded and pushed (ac77201): perm migration (168 mut
  removed, 45 added), fixed repros deleted, attention as GemmBatch a cache-sized part at a time (step at ctx 256
  206 -> 190 ms, bit-identical), conv forward by GemmPatches (1.2x), GemmAct measured and not adopted. oann's compiler
  (oannc2) is 472373d: move it to master after rvfix/qc land and re-test (List/Map handles, ==, QC may need migration).
  New: oann repro/condliteral (a conditional of literals beside an F32 is typed F64 - linalg's ActivationSlope/
  ActivationBackward do not compile for F32) -> handed to rvfix as item 11.
- 23:35 CEST: review2 (/home/user/review/tonight2): 8 confirmed - three NEW use-after-frees from s3scope's O17
  change (callee storing its parameter's own storage into the lent region; settleRegions not revisiting callers;
  multi-target spawn not a store), two older (split value borrowed into a ref local / for-in -> handed to rvfix as
  item 12; spawn h.f() field closure not held to P2), x[i]++ index evaluated twice, a T22 over-rejection, a G4
  cascade, `x = E.Neg(x)` self-cycle. Started wt-rv2fix for all but the rvfix twin. LESSON: every O-rule relaxation
  gets a soundness review before it is merged - three agents' relaxations tonight each opened a UAF.
- 23:50 CEST: study4 done (/home/user/review/study4, 25 repros): two bugs - O26a keeps a loop's temporaries when a
  NUMBER computed from them reaches a returned struct (unbounded memory), and a null read the optimizer can see
  miscompiles (falls off main) instead of trapping (T2b). Started wt-s4cg (null_pointer_is_valid -> T2b traps, OnCrash
  under TSan hang, StringBuilder.Clear, io.Lines follows, chan.Close, os.Exec dir/cancel + os.Start, -i runs joins and
  deferred code, -D overrides a top-level default). QUEUED as s4sem AFTER rvfix/rv2fix/qc merge (semantic.c scope code):
  #1 O26a follows only references, #3/#4/#9 notes only propose what compiles and `&x` of an O26a-moved local means its
  scope, rec 4 "a handle is lent as its reference" (#5 Map-of-Lists grouping, #6 DFS over a map, #8 C2d receiver map,
  #10 nested for-in copies), #7 O26a through ctors for assigned text, #12 match values of differing array lengths, #13
  error type as a value type rejected, diagnostics #14-#21, L9a for field names (`done`). Questions QD (`x := 0` I64)
  and QE (spawned functions failing) in the ledger.
- 00:05 CEST (2026-10-10): fuzz2 merged and pushed (a17ffe9): the generator covers List/Map handles, == on arrays,
  Array<T,N>, constant generics, case _, std/math, Format/ParseInt; 600 programs, 17,940 cases. Fixed: try clauses
  catching an argument's computed-callee error (evaluator), `$` of a zero array value. Handed: empty comprehension is
  null at run time -> s4cg item 9. QUEUED for s4sem: O17 refuses every method on a List/Map copy (fuzz/repro/
  listalias.olang - rec 4 "a handle is lent as its reference"), E16 rejects a known out-of-range constant index even
  under `try` (fuzz/repro/trygenericindex.olang - E16d says try asks for the check; decide: under try it is the check).
- 00:05 CEST: five-hour window reset; usage at 22:02 UTC five-hour 0.01, weekly 0.72 (weekly resets 04:00 UTC =
  06:00 CEST: 28% left over 6 h, ~flat out). send_later armed for 03:03 UTC (05:03 CEST). oannc2 moved to master
  db2af5d; started oann wt-oann-p7 (catch-up, BF16 re-measure after inline narrowing, consolidator wired into the agent
  = settling open question 11, FastExp in the softmax). Running: rvfix, rv2fix, qc, s4cg, oann-p7.
- 00:30 CEST: rvfix merged and pushed (e046142, its own verify on the merged code). qc and rv2fix told to merge
  master. Running: qc, rv2fix, s4cg, oann-p7.
- 00:45 CEST: rv2fix merged and pushed (0a1a5df). Started wt-s4sem (study4 checker items + fuzz listalias/
  trygenericindex + L9a fields), told to write adversarial UAF tests for each relaxation; RUN A SOUNDNESS REVIEW on its
  diff before merging. Running: qc, s4cg, s4sem, oann-p7. Then the bootstrap/ move.
- 01:00 CEST: qc merged and pushed (999ae6c, its own verify). oann breaks on it until migrated (perm_mut adds ~54 mut):
  oann-p7 told to migrate as its last step against /home/user/wt/oannc3 (master 999ae6c) and point the makefile there.
  Running: s4cg, s4sem, oann-p7.
- 01:20 CEST: s4cg merged and pushed (a9fdf1b, verified). Started wt-boot: C sources into bootstrap/ (build/out
  stays), runtime IR into bootstrap/runtime.c, dead code + stale comments outside semantic.c (semantic.c after s4sem),
  `make bootstrap`, bootstrap/README.md; acceptance = identical normalized IR + verify. Running: s4sem, oann-p7,
  review3 (rvfix/rv2fix/qc soundness), boot. NEXT when boot lands and s4sem is reviewed + merged: start the port, M1
  scanner (and M2 diagnostics), C compiler fixes only (QB).
- 01:45 CEST: review3 (/home/user/review/tonight3): 10 confirmed, mostly PRE-EXISTING use-after-frees (a spawned
  lambda building into the spawner's arena from the task's thread; copies out of a returned/borrowed reference in four
  shapes; slices/views of split values), a conditional-literal regression (E8a skipped), QC holes (global initializers,
  slices/views/for-in of read-only copies), E11c purity missing writes through references, S4d missing compound
  assignment, and QC over-rejections in the prelude (Map.Get on a Map of Lists!). Started wt-rv3fix for all of them.
  STRATEGIC (for the morning report): three reviews tonight each found new UAFs; valgrind is blind to arena reuse.
  NEXT after boot lands: a SCOPE SANITIZER - under -d, poison a closed scope's chunks (and optionally quarantine/
  mprotect them) so a read of freed memory gives a recognisable value or faults; extend the fuzzer with scope-stress
  programs (lend, copy out, return, spawn, slice) whose -d/-i difference then flags a UAF mechanically. The same oracle
  serves the port's M6 acceptance.
- 02:00 CEST: boot merged and pushed (1be85eb): C sources in bootstrap/, runtime IR in bootstrap/runtime.c, dead code
  and stale comments gone (IR byte-identical on 743 files), `make bootstrap` builds build/stage0, bootstrap/README.md
  and CHAIN. LEFT for after s4sem: semantic.c cleanup (dead TypeFromType, TypeDescribe, VarListAddSetOrigin,
  findLoadedModule, semaModuleCmpForList, flushPendingDischarges, typeHasNamedScopeTag, varCmpForList, the walker
  structContainsBareScopeField, stale comments) with the same IR comparison (scripts in the scratchpad: collect.sh,
  fakebin/, all.sh). Started wt-scopesan (poison + quarantine closed chunks under a debug mode, validate on the review
  repros, scope-stress fuzzer). Running: s4sem, rv3fix, oann-p7, scopesan.
- 02:05 CEST (2026-10-10): the container restarted; worktrees and commits survived, processes did not. Resumed by
  message: s4sem (clean at 096df0f, re-verifying), rv3fix (uncommitted WIP), scopesan (uncommitted WIP), oann-p7 (4
  commits on wt-oann-p7: catch-up on db2af5d, BF16 as fast as F32, FastExp softmax, consolidator; QC migration was in
  progress). Started a read-only soundness review of s4sem's diff (/home/user/wt/rv4 @ 096df0f ->
  /home/user/review/tonight4) - merge s4sem only after it. Usage 00:05 UTC: five-hour 0.34 (reset 03:00 UTC), weekly
  0.81 (reset 04:00 UTC = 06:00 CEST): flat out until then.
- 02:35 CEST: oann phase 7 pushed (a341a68): caught up to db2af5d, BF16 as fast as F32 (transformer step 215 -> 115 ms),
  softmax by FastExp, a consolidator in the agent (settling question 11; open question 14: what nights are for), QC
  migration (oann's OLANG = /home/user/wt/oannc3, 121 tests). Review4 of s4sem: one NEW UAF (O17b decides "handle used
  only through its reference" by a token scan that skips `& h`, binary BitAnd) - s4sem told to decide it from the
  checked body. Started: study5 (data science/numeric, /home/user/wt/s5c @ 35175f1 -> /home/user/review/study5) and
  wt-tbaa (TBAA tags for every numeric type, oann repro/narrowtbaa). Running: s4sem, rv3fix, scopesan, study5, tbaa.
- 02:55 CEST: study5 done (/home/user/review/study5, r01-r20): r01 a pre-existing UAF (a call's built result passed
  straight into another call loses its obligation: `bs.Push(box(t))`, Clone of a loop-built List), r02 a silent lost
  write (`l[0].Add()` on an At copy). Started wt-s5scope (r01, r02 write-back, r03 order-dependent O17, r04-r07
  relaxations with adversarial tests, diagnostics r11-r18) - SOUNDNESS REVIEW before merging - and wt-s5std (std/csv,
  std/stats, O(n log n) Array.Sort, List.Truncate). QUEUED: r10 `T(x)` through a type variable (G8b says unsupported;
  make it work per instantiation), r09 -i memory (the port's M8). Usage 00:48 UTC: five-hour 0.50, weekly 0.85.
- 03:30 CEST: merged and pushed tbaa (5ecf607), the build/obj makefile fix (c8de9bd), scopesan (9e5558a: `-s` scope
  sanitizer + scope fuzzer; its two findings handed to rv3fix), s4sem (a2e2878, after a follow-up soundness review found
  nothing); s5std merged locally, verifying. Running: rv3fix, s5scope, oann-p8 (int8 inference, compiler
  /home/user/wt/oannc4 @ efdb82c). QUEUED (semantic.c, after rv3fix + s5scope): the semantic.c cleanup with the IR
  comparison, r10 `T(x)` through a type variable, and a detail to decide: a for-in over a local iterator walks a hidden
  copy, so the iterator never advances for its caller (Python advances it; s5std documented it) - candidate: walk an
  iterator lvalue in place.
- 04:40 CEST: rv3fix merged + verified locally as branch wt-rv3merged (983df9e) - NOT pushed: its soundness review
  (/home/user/review/tonight5) found 7 (2 new: a task keeps a stood-in closure env; a match binding's depth 0 read as the
  top level; 5 pre-existing) - handed back to the rv3fix agent with decision 40 (P2 closures held in task arguments).
  s5scope's review (/home/user/review/tonight6) found 9 (E31b write-back: heap corruption through `v[0].Shrink(v)`, a
  global index read twice, lost writes; a new UAF from callResultTiedToBlock; F5 pre-existing projection of a call
  result) - decision 42 narrows E31b to field stores; the s5scope agent is merging wt-rv3merged and fixing. Merge order:
  whichever of rv3fix/s5scope finishes second merges the other's branch; push only after both reviews' findings are
  fixed. Running: rv3fix (fixes), s5scope (fixes), oann-p8 (int8), study6.
- 04:50 CEST: study6 done (/home/user/review/study6, 4 programs, 15 findings). r01 (UAF: a mut method on a List element
  handle in a loop) and r06 handed to s5scope with an amendment to decision 42 (handles are exempt - their copy is a
  second name). Started wt-s6std (Str for List/Map/StringBuilder, short-list walk perf, IndexOf/Remove/SwapRemove,
  Chan cap I64). QUEUED for the next checker batch (after rv3fix/s5scope land): r02 (O26a moves I64 locals of
  RunFrom into a borrowed result's scope - every walk of a long-lived List leaks 24 B a chunk), r04 (Map value reaching
  the Map: C2d inside map.olang - an interpreter Env needs it), r05 (a field/payload read straight off a call result
  fails O10c - 9 hits), r07 (E25 ctor scope arg C2d, its own note suggests it), r10/r13/r14/r15 diagnostics; and r03
  (a List walk keeps going after Clear/removal within its run - decide: positions re-checked per run, document).
  QF (long-lived structures only grow - region values?) asked in the ledger.
- 05:00 CEST: oann phase 8 pushed (d1f6a2b): INT8 post-training quantization (quant.olang: per-channel weights, U8/I8
  activations dynamic or calibrated, U8 x I8 -> I32 tiles with the dequantize/bias/ReLU epilogue fused; MNIST MLP 97.08%
  vs 97.10% F32, CNN 97.79 vs 97.78; batch-1 3.1x faster, transformer decoding 2.1x; compute-bound shapes 0.44-0.8x
  because LLVM 18 emits one product per lane - a four-way dot product needs a compiler-supplied op, e.g.
  `acc.DotAdd4(a, b)`, or LLVM 19's partial.reduce.add - recorded future work), element-wise kernels back on linalg Map.
  QUEUED for the checker batch: oann repro/lambdalend.olang (O17 refuses lending a value Matrix view to a function
  writing it from a lambda run by linalg.ParallelRows; fine without tasks).
- 05:15 CEST: s6std done (wt-s6std 8b1ff5c, merge after rv3fix). oann phase 9 done (wt-oann-p9 fcb89d7: nights pay for
  noisy cues, similar new observations, transfer, a forgetting store; cost conflicting surroundings; open questions
  15-17), make test running before push. QUEUED (compiler, found by s6std): `type Letter extends Char` renders as a
  number; `List<Array<I64, 3>>` renders its element type as I64; `mut` dropped from rendered type names.
- 05:45 CEST: render pushed (12eea59). rv3fix round 2 at a385b04 (verified alone) under a follow-up review
  (/home/user/review/tonight5 "Follow-up (a385b04)"); s5scope fixing G1/G2/G4 from its follow-up review; then rv3fix
  merges s5scope's final tip, re-verifies, I merge after both reviews are clean, then s6std. QUEUED (semantic.c):
  `type Letter extends Char` gets U8's methods, not Char's (VarGetMethod, MethodReceiverAccepts, InterfaceMethodImpl,
  unifyThroughMethods, T29f result typing follow the bare U8); study6 r02/r04/r05/r07/r10/r13-r15, G5 over-rejections,
  oann lambdalend, r10 T(x), for-in iterator in place, the semantic.c cleanup.
- 07:10 CEST (2026-10-10): the weekly window reset at 06:00 CEST (weekly 0, next reset Sat 2026-10-17 06:00 CEST).
  s6std merged with its fix (ada716d, pushed): List.Clone read the old `chunks` after s6std's first-chunk change (the
  segfaults), and E11c's effect analysis over-rejected Map.Str (effShallow: a parameter's own storage is charged to a
  caller only where the caller hands in pre-existing storage; effHoldsUnknownRefs closes a pre-existing hole). A
  read-only soundness review of that E11c change runs (/home/user/wt/rv7 -> /home/user/review/tonight7). Decision 47
  failed its gate (+10%); round 3 builds decision 48 (closure-call check) in wt-rv3fix. oann phase 10 started (catch-up
  to ada716d via /home/user/wt/oannc5, settling open questions 15-17). Morning report posted 06:10 CEST.
- 09:30 CEST (2026-10-10): oann phase 10 pushed (334f338 catch-up to ada716d, 0ed5de3 settling Q15-17: recall alone
  at gain 2, partial cues completed, familiarity-weighted generalization; 138 tests; open question 18). It found
  oann repro/resultgrowth (O26a keeps a local in a structure's scope on every call - unbounded growth),
  fieldofresult (O10d regression since efdb82c) and membercascade (a cascade) -> wt-chk5, together with study6 r02, r04,
  r05, r07, r10 and r13-r15. Decision 48's review (/home/user/review/tonight8) found F1: the may-build walk misses
  temporaries built where a conditional, match value or catch default lands, plus a Call adapter loading the raw scope.
  Also found: 02, a crash on a reference default temporary used from two functions, and 03, an over-rejection. All sent
  to a fix agent on wt-rv3fix. Decision 49 (wt-str1 d6c7f52) review (/home/user/review/str1): 3 new UAFs (a read-only
  capture skipping O17, destructors storing after Str's temporary scope, item 3's C2d skip), a builder leak, and 6x
  stack per frame. Sent back to the str1 agent with direction: Str's receiver scope is O12's unknown, nothing built
  there; revert item 3; fix P1; the builder overflow comes from the arena. It needs a second review before merging.
  Running: rv3fix (F1), i64lit (QD), chk5, str1 (round 2).
- 09:55 CEST: i64lit merged and pushed (43ce396): an integer literal's own type is I64 (T6a). The agent's single full
  verify had shared.olang OOM-killed beside other agents; it then passed on its own (658 tests), with everything else
  passing too. oann must run `tools/int_literal_i64.py` when its compiler next moves.
- 10:30 CEST: decision 48 merged and pushed (91ab3ba via 5ebd16f): scope owners and parts, plus the tonight8 fixes. Those
  are F1, where the may-build walk now covers conditional, match and default landings, with codegen holding every body to
  the walk (an ICE on a miss); 02, a default rebuilt per call (D8a); and 03 (S4c holdForRefTarget). Verified in pieces:
  checks.olang was OOM-killed beside other agents and passed when rerun. A narrow follow-up review runs
  (/home/user/wt/rv9 -> /home/user/review/tonight9). Decision 50 (failing spawns) can start now that 48 is on master.
- 10:55 CEST: tonight9, the follow-up review of 91ab3ba (/home/user/review/tonight9), found three new problems:
  - a false ICE: a catch default in a closure built into a scope resolved read-only;
  - D8a's per-call default rebuild reading the caller's constant variables, giving a wrong value;
  - a constructor field keeping a view in frame storage that now dies at the return, above 64KB (older below).
  Four older finds: a slice of a value temporary stored, a destructor building into its own frame, a lambda default
  across modules, and `$` of an empty fixed slice rendering `null` in the evaluator. All go to wt-rv9fix (master
  04f4a4d). chk5 (771a922) is done and under soundness review (/home/user/wt/rv10 -> /home/user/review/chk5). str1 is
  on round 2. Decision 50 waits for capacity: this week's pace is about one agent at a time.
- 12:00 CEST: rv9fix merged and pushed (8f085c4 via 0bf3921, full verify on the same code). Fixed: tonight9's false
  ICE (the catch default marks its captured scope), D8a defaults rebuilt in their own declaration's context (a pending
  lambda carries its context too), slices and views in a constructor marked borrowed, and a slice of a value
  temporary stored past its block now refused (E16a). C9a: a destructor's top level is the scope being closed, which
  the runtime passes in. Also: one lambda per default per calling module; the evaluator's empty fixed slice; the
  parallel global target. C9a and the parallel global form were not reviewed - include them in the next review.
- 13:40 CEST: chk5 merged and pushed (623b9d8 via 116fb31; I resolved conflicts in semantic.c and shared.olang; the
  full verify passed on the merged tip). It fixes resultgrowth/r02, fieldofresult, the cascades and study6, plus its
  review's growth and cycle regressions. O18c now lands a `:=` call only where something is kept or an obligation forces
  it; an unsettled callee keeps its argument. This round is unreviewed: include it in the next review with rv9fix's C9a
  and the parallel global. The user (13:25 CEST): slow down early in the week, 1-2 agents. Next: decision 50 (failing
  spawns), then `own` + `take` + liveness-checked local borrows, then Vec<T> as the default growable array.
- 14:10 CEST: str1's second review (/home/user/review/str2) found no silent use-after-free. It did find five build sites
  missed by the `noBuild` receiver rule's hand-kept list (a segfault in a callee, an ICE in Str), a lambda's null
  capture read as the program scope (a leak), and P2 destructing twice. Also: builder growth in a for condition, and
  helper/iterator over-rejections. Sent back (round 3): merge master, then express `noBuild` through decision 48's
  `SemanticMayBuild` walk and `cgCheckMayBuild`, one predicate for both. The reviewer's structural point, for the port:
  "where is this built" must be ONE predicate that the checker and codegen share. Running: str1 (round 3), decision 50
  (wt-spawnerr).
- 14:45 CEST: decision 50 merged and pushed (9802fc3 via 40fb1c5, full verify on the same code):
  - `spawn try f(a)`; task clauses as lambdas run on the task's thread;
  - `try join`, which fails with the earliest-spawned failure on every way out of the block;
  - P4d: a target left unwritten forces the clauses to leave;
  - D10a counts a leaving join.
  Also fixed: P1g, where a String value spawn target was built in the join block. A combined soundness review runs
  next (/home/user/review/batch6) over chk5 round 2, rv9fix C9a and the parallel global, and decision 50. Then
  `own`/`take`, liveness-checked local borrows, and Vec.
- 15:20 CEST: batch6 review (/home/user/review/batch6) found:
  - a use-after-free from chk5 round 1: an element field store judged against a landing scope that the O18c pre-pass
    re-lands later, never re-judged;
  - a C9a leak: parts made during the destructor walk are never folded;
  - a PRE-EXISTING use-after-free: a conditional of references from different scopes stored into a field is never
    checked;
  - six minor findings.
  All go to wt-b6fix, which also extends the scope fuzzer with conditionals of references, At/Get element stores,
  destructors and failing spawns; the fuzzer missed all three findings. str1 round 3 (e27b83b, merged with master
  b6259d1) is under its third review (/home/user/wt/rvstr3 -> /home/user/review/str3). Running: b6fix and the str3
  review.
- 15:50 CEST: str3 review (/home/user/review/str3):
  - The walk held: no false ICE, and 16 receiver builds refused.
  - New segfaults: the null receiver scope meets decision 48's escape/mine header reads (closures, Call adapters).
  - A walk gap: an adapter's Call body is not read.
  - G9d side effects: inference depends on argument order, and G10c disagrees.
  - Double destruction through a try default; shallower recursion; a pre-existing landing bug (P1).
  Round 4 sent:
  - a real empty scope per Str call instead of null;
  - the walk reads an adapter's Call body;
  - G9d kept but order-independent and agreeing with G10c (or reverted for a hand-off, the agent's call);
  - P1, N7 and N8 fixed;
  - over-rejections: o6, the "anon" idiom via T25d, cgEnvOnStack in the walk, adapter and stand-in skips.
  Running: str1 (round 4), b6fix.
- 16:30 CEST: b6fix merged and pushed (4fb40b0 via 0eb9332; full verify on the same code, clean). Fixed:
  - a store through a landing element lands its call first (O18c, `storeRelied`);
  - conditionals and matches of references from different scopes are "not known here" where a known scope is needed,
    and each value is judged alone for a field store (O12/E28; four more pre-existing use-after-frees: arguments,
    literals, obligations, a call on the result);
  - late parts are folded after each destructor (C9a);
  - minors 04-09.
  The scope fuzzer gained conditionals of references, At/Get/First element stores, failing spawns and destructors: it
  finds 24 on 6af6a4e and 0 on the fix over seeds 1-40 and 100-399. Running: str1 (round 4) only. When it merges: `own`
  + `take` + liveness-checked local borrows, then Vec.
- 18:00 CEST: str4 review (/home/user/review/str4): round 4's over-rejection removals opened holes:
  - callback deps miss cycles and reassigned callbacks;
  - raw task scopes miss clause defaults;
  - an mbiTransient ICE, even outside Str;
  - a builder unwind node points at a dead slot;
  - frame Call adapters.
  Pre-existing: a Call adapter keeping its callback (PE1) and a copy of a &p field read built through (PE2, a UAF).
  Round 5 sent: REVERT deps, raw task scopes and frame adapters (over-rejections are fine until the port's section-8
  pass); fix C5, C9, C6, PE1, PE2; keep the rest. LESSON: removing over-rejections in the C checker keeps opening
  holes - leave the remaining over-rejections to the port.
- 20:30 CEST: decision 49 merged and pushed (4296fe6 via 2fdb262) after six rounds and five reviews:
  - Str's receiver gets a real scope that nothing may be built into, decided by SemanticMayBuildInto with codegen's ICE
    check (helpers too);
  - G9d's meet; Go's join order; the builder in a scratch scope;
  - T25d for conditional values;
  - T22a for Call adapters; PE2.
  The scope fuzzer has Str scenarios: 20 findings in 60 programs on round 5, 0 in 450 on round 6. The own spec is done
  (wt-own fdc5848, docs/own.md, SPEC §8.8 O30-O42, T25e, E34); QJ1/QJ2 were asked. Next: implement own on wt-own,
  following docs/own.md's 12 steps, with a soundness review and own shapes in the scope fuzzer.
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
