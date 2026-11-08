# olang next steps - progress log (archive)

Moved verbatim from project_olang_next_steps.md on 2026-10-17, when that file was slimmed to the current plan. Not
imported by CLAUDE.md. The old self-hosting prep list, the overnight plans, and every dated progress entry from
2026-10-08 to 2026-10-12, in their original order.

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
- 22:55 CEST: own's first cut is done on wt-own (42efc87, verified): own references as fields, locals and globals,
  each object in a region of its own; `take`; reads as borrows; a borrow check settled over bodies (loans to their last
  use, judged by type and root); regionArgs; own scenarios in the scope fuzzer (24 findings -> 0). A soundness review
  runs (/home/user/wt/rvown1 @ 42efc87 -> /home/user/review/own1); fix its findings on wt-own, then merge. Phase 2 after
  that: owning parameters and results (O36/O37), own elements in List/Map (TakeAt, SwapTake, Map.Take), then Vec<T>.
  The user (2026-10-10): own and Vec are built in the C compiler before the port. Pace: one agent at a time.
- 23:25 CEST: own's review (/home/user/review/own1) found two use-after-frees the borrow check accepts:
  - C1: a `take` into another owner keeps a loan's old root, so a release through the new owner misses it. Decided:
    Rust's rule, refuse a move out of a slot while a loan on it is live.
  - C2: a task borrows internally while the spawner releases (channel-synchronised, so TSan is silent). Decided: a
    borrow effect dual to OwnEffects, whose loans are held to the join.
  Also: a pre-existing destructor leak on field assignment (P1), and two safe over-rejections. Sent back to the own
  agent (afe0b23) on wt-own. A follow-up soundness review runs before the merge.
  The user, 23:35 CEST: the port's scanner (M1) waits - start it once own merges, beside own phase 2, not now.
- 00:40 CEST (2026-10-11): own's fixes on wt-own (252c3bc, verified):
  - C1: a take is refused under a live loan.
  - C2: borrow effects, with loans held to the join.
  - P1: the destructor leak.
  - Two relaxations: R1, an assignment's value may borrow what the store releases; R2, a release through one slot does
    not hit a loan read through another slot of the same object.
  - O33 amended: only := holds a borrow.
  The fuzzer found 56 issues in 60 programs before the fix and 0 after. A follow-up soundness review runs
  (/home/user/wt/rvown2 @ 252c3bc -> /home/user/review/own2), attacking R1/R2 hardest. Merge only if it is clean.
- 01:15 CEST (2026-10-11): the second own review (/home/user/review/own2) came back clean. It found no hole.
  - Over-rejections, documented: the typed borrow local, and reassigning a := borrow.
  - Fuzz harness: a leftover fuzz_fuzz process corrupts results through the shared build/fz tree, so check for one before
    trusting findings. Being fixed in phase 2a.
  Merged and pushed: master = ffd4f53.
  Own phase 2a has started on wt-own (afe0b23). It covers what Vec<T> needs:
  - own arrays;
  - owning parameters and owned results (O36/O37), with a call result as a move position;
  - owning value types with borrowed copies (QJ1);
  - small region classes.
  Then, each with a soundness review first: phase 2b (own elements in List/Map: TakeAt, SwapTake, Map.Take), then Vec<T>
  in the prelude. The scanner (port M1) still waits.
  Usage: weekly 0.41 at 01:07 CEST, about 1.5%/h with one agent against a target of about 0.6%/h. So keep one agent
  and leave gaps.
- 04:45 CEST (2026-10-11): own phase 2a is done on wt-own (079921e, verified). It covers:
  - own arrays;
  - small regions: a single allocation for 2 KB or less, and releases bounded at 256 deep;
  - O36/O37: owning parameters and owned results;
  - owner value locals with borrowed copies (QJ1);
  - O31 narrowed to locals and results;
  - per-run fuzz directories.
  The fuzzer found nothing before or after. A soundness review runs (/home/user/wt/rvown3 @ 079921e ->
  /home/user/review/own3). Merge only if it is clean. Usage: weekly 0.47 at 04:36 CEST, about 1.7%/h, far above the
  ~0.6%/h target. So after this review, leave a gap before phase 2b.
- 05:30 CEST: phase 2a's review (/home/user/review/own3) found four bugs. Each was sent back to the own agent (afe0b23)
  with the fix decided:
  - F1 (use-after-free): a whole own array lent to a callee builds its elements in the buffer's region. Fix: an
    own-array borrow is a split value, so O17/O17a apply.
  - F2 (use-after-free): a call that keeps a borrowed copy does not extend the copy's loans. Fix: such a call is the
    store it stands for, holding the copy's loans, and is refused where the holder cannot be followed.
  - F3 (leak): owners for owning parameters, and constructor regions, are lost when a later argument leaves. Fix: hidden
    owner slots registered for release.
  - F4 (use-after-return): a destructor's owner locals are released through a dead stack slot. Fix: release them at
    their block's exit.
  A follow-up review runs before the merge.
- 07:35 CEST: F1-F4 are fixed on wt-own (67cb5b1, verified). The fuzzer found 41 problems in 120 programs on 079921e
  and 0 in 400 after the fix. Where the agent departed from my brief, all safer:
  - F2 holds loans to the end of the destination's block, not its last use, because the destination's storage may have
    other names.
  - Calls through function values are not refused (T22a).
  - F1's diagnostic names forms that compile: `fill(b)` and `b.names = f(take b.names)`.
  New over-rejection: a callee that only permutes an own array (Reverse, Sort, swap) is refused by O17's syntactic
  reading. Vec<String&>.Sort will need the precise reading (docs/own.md 14.1); take it with Vec.
  A follow-up review runs (/home/user/wt/rvown4 @ 67cb5b1 -> /home/user/review/own4). Weekly 0.50 at 07:30 CEST.
- 08:15 CEST: the follow-up review (/home/user/review/own4) found six more bugs, all already present on 079921e.
  - Use-after-frees N1, N2, N4, N5 all come from F2 letting a call KEEP a loan-carrying value while chasing its holders.
  - N3 is a gap in F3; N6 is a failing constructor's own fields leaking; M1 is F3's slot growing in a loop condition.
  Decided: REVERSE F2's extension and go back to the user's strict start. A borrow or borrowed copy, or anything built
  from one, is held only by locals of its function (liveness, or block end where the storage has another name).
  Anything that would keep it elsewhere is refused, with "Clone() what must be kept". N3, N6 and M1 get direct fixes.
  Sent to the own agent (afe0b23). Another review follows.
  Lesson, again: extending loans to wherever a value is kept is whack-a-mole. Confinement is the design that holds.
- 09:00 CEST: N1-N6 and M1 are fixed on wt-own (e3ded09, verified). Borrowed copies are confined to this function's
  locals (F2's extension reversed). The fixes:
  - N3: cgMayLeave.
  - N6: a constructor's own fields are registered until assembly.
  - M1: a {owner, registered} slot; 4M turns at 1.6 MB.
  The fuzzer found 67 problems on 67cb5b1 and 0 after the fix. New over-rejection: `l.Push(b)` of a borrowed copy
  (Clone it). A third review runs (/home/user/wt/rvown5 @ e3ded09 -> /home/user/review/own5). Weekly 0.52 at 08:50 CEST.
- 10:00 CEST: the third review (/home/user/review/own5) found three defects, all present since 079921e. Sent to the own
  agent:
  - F1 (use-after-free): a callee keeps an &p field of its argument, and derived scope variables are not matched. Fix: a
    derived variable counts as its parameter.
  - F2: an owner value local moved by O26a is released at the return, so the result reads a null slot and the evaluator
    disagrees. Fix: a reference to an owner value local's storage is a borrow, so O26a never moves one. Return it as an
    owned value result instead. A destructor-bearing holder declared earlier is refused.
  - F3 (leak, tests only): cgMayLeave misses guaranteed checks. Fix: make it a whitelist.
  NEXT PHASE's first items: a borrowed result of an own field (`View() Array<T>&v`, refused today with O10) and Sort's
  precise O17 reading. Both are needed for Vec, and both need a review.
- 09:30 CEST: the user asked whether self-hosting has started (no) and said "Go at your pace": the order stays own,
  then the Vec phase, then the scanner, one agent at a time.
- 10:35 CEST: own5's three are fixed on wt-own (79bf11c, verified; fuzzer 52 -> 0).
  - The agent departed from the brief in three relaxations, now under the fourth review (/home/user/wt/rvown6 ->
    /home/user/review/own6):
    - O26a still moves owner value locals;
    - loans on an owner's storage meet only releases through the owner's own name;
    - an owner made from such a borrow is held to O34's reach rather than refused.
  - Two pre-existing false refusals of `c := a.Clone()` were fixed: a stale obligUnsettled, and a result taking every
    argument's loans.
  - F3's whitelist costs about 65 instructions per newly held call (+9% on an owner-passing loop). Decided for the next
    round: apply it only in test builds. Outside tests, guaranteed checks abort the process, so only `try` and
    catch/match clauses can leave; production pays only for those.
- 11:20 CEST: the fourth review (/home/user/review/own6). All three relaxations held. It found:
  - N1, a regression: tuple results drop the argument's loans, through calleeMayKeepArg.
  - N2, pre-existing: a conditional of owner values built as a copy but checked as a borrow (use-after-free).
  - N3/N3b, pre-existing: owned results in flight leak when a failing join or a test's deferred check discards them.
  Decided and sent to the own agent:
  - N1: walk every scope variable the result type names, defaulting to conservative.
  - N2: O34, ERR_OWN_IN_COND for owning value types.
  - N3/N3b: a hidden hold slot for an owned result in flight.
  - F3's whitelist in test builds only.
  - A value whose type holds no reference carries no loan, which lifts `return b.buf.Len()`.
- 12:15 CEST: own6's four defects are fixed on wt-own (d8c942b, verified).
  - Fuzzer: 22 findings on 79bf11c, 0 after the fix.
  - The owner-passing loop is 1,223M instructions, below e3ded09's 1,441M.
  - A fifth review runs (/home/user/wt/rvown7 -> /home/user/review/own7).
  - Weekly 0.56 at 12:04 CEST.
- 13:00 CEST: the fifth review (/home/user/review/own7) found one class, older than this round: F1, an in-place borrow
  of an owned object's by-value part takes no loan. The cause is ownLoansIn's MEMBER/INDEX, which walks the base as
  transient. It hits arguments, receivers, slices, views, for-in, spawn, and own-array elements, the last being
  Vec<Plain>'s hazard. Everything else this round added held.
  Sent to the own agent: the consumer decides, so a part borrowed in place is walked as a place. Since it only
  tightens, phase 2a merges after this fix without a sixth full review, unless the agent reports a relaxation in it.
- 13:20 CEST (2026-10-11): THE USER IS AWAY a day or two. Plan, one agent at a time:
  1. Merge own phase 2a once F1's fix lands. It only tightens, so no sixth full review.
  2. The Vec phase:
     - a borrowed result of an own field (`View()`);
     - Sort's precise O17 reading;
     - Vec<T> in the prelude as the default growable array;
     - each relaxation reviewed before its merge.
  3. Then the port's scanner (M1).
  Pacing: weekly 0.58 at 13:15 CEST, resetting Sat 06:00 CEST (~137 h). Keep on or under the line to 1.0 at the
  reset, about 0.3%/h. One running agent is about 1%/h, so pause between agents with a send_later whenever usage is
  above the line.
- 13:40 CEST: own phase 2a MERGED and pushed (master = 3a4f5e8). Its last fix (c740281) only tightened: in-place
  borrows of an owned object's parts take loans (F1), and a join's pieces are held. No sixth review.
  Vec phase 1 started on wt-own (afe0b23):
  - View() as a borrowed result of an own field (a relaxation);
  - Sort's precise O17 reading (a relaxation);
  - Vec<T> in the prelude as an owner value type, with every method List has, Clone as an owned result, and
    `$`/`==`/Hash like an array.
  A review follows before the merge. Vec phase 2 then lets owning value types compose: Vec as a struct field, a
  global, a type argument (List<Vec<T>>, Vec<Vec<T>>), an own-array element. That is what makes Vec the default
  everywhere. Then the port's scanner.
  Pacing: weekly 0.58 at 13:31 CEST, on the line to the reset.
- 15:20 CEST: Vec phase 1 is done and verified on wt-own (91ff37e, four commits on 3a4f5e8):
  - View()/First() as borrowed own results (O37/O38), a relaxation;
  - Sort's precise O17 reading (a callee that only permutes a lent split value), a relaxation;
  - Vec<T> in the prelude: growth hands the old buffer over as an owner, and an element read out of the buffer is no
    loan on it (O38), the third relaxation;
  - a pre-existing frame bug: forty nested try blocks crashed the own walk.
  The own agent ran out of context at the very end (prompt too long), so any fix round needs a fresh agent briefed
  from docs/own.md sections 13-19. The soundness review runs (/home/user/wt/rvvec1 @ 91ff37e -> /home/user/review/vec1),
  aimed at the three relaxations. Merge when it is clean or its findings are fixed.
  Usage: weekly 0.60 at 15:09 CEST, which leaves about 0.3%/h to the Sat 06:00 CEST reset. So one agent at a time,
  with gaps between.
- Vec phase 1's review (/home/user/review/vec1) found six use-after-frees from two causes, both in relaxation 1
  (borrowed own results, `ownResultRegionOf`):
  - a declared-array result type (String, `type Ix Array<T>`) keys its loan by the nominal type, which a release of the
    buffer type never meets (f1, f1b, f3, f3b). Fix: key by the buffer type underneath.
  - a call through a function value or a Call adapter takes no loan (f2, f2b). Fix: such a function is never a value
    (as O36 already does for owning parameters).
  A fresh fix agent runs on wt-own (high effort); a follow-up soundness review comes before the merge.
- 16:15 CEST: the user: faster is better as long as effect per token holds (feedback_usage_and_agents.md). Started
  the port beside the Vec fixes: wt-portm1 (M1 scanner + oracle into bootstrap/oracle + OLANG parametrization) and
  wt-portm2 (M2 diag/msgs + diagnostic goldens). Still P0: the runtime to std/runtime/runtime.ll - after the own fix
  merges (it may touch bootstrap/runtime.c). Next in parallel when these land: M3 parser (needs M1+M2).
- 17:10 CEST: M1 merged and pushed (1a001ef): compiler/source|token|scan.olang, tokdiff clean on 1,255 files and in
  verify, 93-102 MB/s; bootstrap/oracle/tokdump.c; OLANG ?= build/out read by checks/fuzz/bench; four C tokenizer
  fixes (L13 etc.). Vec review 2 (/home/user/review/vec2): N1 (stale loan type through mutual recursion) and N2 (a
  function value through an import alias skips every value check, also P1-P3) - fix agent on wt-own. Two verifies
  side by side were OOM-killed again: /home/user/vlock is ONE slot now. M3 parser started on wt-portm3.
- 18:30 CEST: M2 merged and pushed (28d1267, 01b3827 fixed a std/chan P4 timing flake). Started wt-rtll (P0: runtime to
  std/runtime/runtime.ll, linked once). Vec review 3 (/home/user/review/vec3): F1 new (relaxation (b), a built result
  can hand back its argument through id/pick/At/Get), F2 (O38 skip ignores the type), F3 (spawn target from a borrowed
  own result), F4 (a global keeping a borrow of a global's own object - also on master). Fix agent on wt-own: F1 by a
  proven-fresh fixed point, or revert (b). Then a 4th review. At the wt-own merge: re-run compiler/tools/genmsgs.py
  and make diaggold (errmsg.h changed). Queued for semantic.c after the merge: the `:=` constructor field losing its
  type across modules (M2 agent's find, HISTORY.md).
- 21:00 CEST: master = f743da5 (pushed, verified): own/Vec phase 1 with five review rounds fixed (vec1-vec5:
  /home/user/review/vec1..5; vec5's R2a was a §8 hole even without own), the runtime extracted to
  std/runtime/runtime.ll (P0 done), M1+M2. Running: wt-portm3 (M3 parser), wt-vecp2 (Vec phase 2a: Vec in fields,
  globals, reference-holding elements; docs/own.md 19.4 items 1,2,4,7 - REVIEW before merging), wt-smallfix2 (the `:=`
  ctor field across modules; std/math "sign and size" under -r/-s). Next: Vec phase 2b (type args/move-aware
  List/Map, tasks, lambdas, Push cost), M4 after M3. LESSON: never pkill by a "vlock make verify" pattern - it kills
  other agents' runs and my own shell; kill by PID with the cwd checked.
- 2026-10-12 ~01:00 CEST: master = 45c14e6 (pushed): M3 parser, M4 load/fetch/names, M5a types/generic/typed, the
  `:=` field/global order fix and the LLVM 18 BF16 sign-bit workaround. Vec phase 2a review (/home/user/review/vec6):
  R1 (take of a Vec field inside an owned object - silent UAF), D (depth cap 8), L1 (leak) - fix agent on wt-vecp2,
  then a short re-review before merging. wt-e31view: E31b lets a view element (callee writes only through its
  references) be lent writably - bench/fused.olang regression; REVIEW before merging. Typed-contract review
  (/home/user/review/typed): 17 required + 8 recommended changes, all accepted; S4d decided by types (spec change);
  wt-typed2 revises the contract, then M5b/M5c (the checker) start. QUEUED stage-0 fixes (after vecp2/e31view merge, to
  avoid semantic.c conflicts): T22a refuses a function value with `&x`-sharing parameters (crash +
  unsound, review repro/sharedscope*.olang); S4d decided by types in C to match the new SPEC.
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

- 04:10 CEST (2026-10-12): typed contract revision merged and pushed (1c792a7: function types carry their scopes,
  S4d decided by types in SPEC, DESIGN section 7 lists S4d and T22a as C disagreements). Started wt-check (M5b/M5c,
  compiler/check.olang, phased with a PROGRESS.md handoff in the worktree) and wt-mir (M7's MIR contract + verifier,
  DESIGN 1.8.1). Running: vecp2 (vec6 fixes), e31view (review fixes), check, mir. QUEUED stage-0 fixes after vecp2 and
  e31view merge: T22a sharing (typed/repro/sharedscope*), S4d by types in C, E31b's M1.
- (2026-10-12) MIR contract merged and pushed (2b42c48: compiler/mir.olang, verifier, dump, DESIGN 1.8.1). It found a
  stage-0 use-after-free, reproduced on the e31view tip too: `f.Blocks[b].S.Push(x)` (a List field of a struct element
  reached through x[i]) builds the chunk in the call's frame (scratchpad/mirbug/m.olang; HISTORY has it). Handed to the
  e31view review (e31view2) for diagnosis; fix it in e31view's next round. Running: vecp2 fix (vec7 F1/F2), e31view2
  review (15841b0, r1 relaxation), check (M5b/M5c).


# Moved from plan.md on 2026-11-07 (the dated log before 2026-11-06)

**Now (as of 2026-10-17)** - written from the newest entries when this file was slimmed; dated progress entries
2026-10-08 to 2026-10-12 are in archive/next_steps_log.md (not imported), and the refactor plan there (splitting
semantic.c/codegen.c) was superseded by the user's modest refactor (bootstrap/ move, done) and "splitting files is
overrated".
- The port is under way (C compiler frozen as stage 0, fixes only - QB; acceptance is the test suite, per-stage diffs
  where cheap, then stage 1 rebuilding itself): M1 scanner, M2 diagnostics, M3 parser, M4 load/fetch/names, M5a types
  and the typed contract (revised), M7's MIR contract are merged. Running (resumed after the 2026-10-17 reset):
  wt-check (M5b/M5c, compiler/check.olang, PROGRESS.md handoff), wt-drv (M10 driver), wt-eval (M8 evaluator),
  the e31view2 review (/home/user/wt/rve31b @ 15841b0, of wt-e31view's E31b view-element relaxation - merge after it), wt-ioprint (the user's
  2026-10-17 decision: one print pathway, io.Print/Println/PrintErr/PrintErrln; tools/io_print (now olang) migrates).
- Own/Vec: Vec phase 2a merged (vecp2 fix round cc555ed, reviewed vec7). Next: Vec phase 2b - Vec as a type argument,
  move-aware List/Map (TakeAt, SwapTake, Map.Take), tasks and lambdas holding one, Push cost (docs/own.md 25.6).
- 2026-10-17 ~11:40 CEST: wt-e31view round 3 merged (0de9cba); its review (/home/user/review/e31view3) found the
  relaxation sound and three PRE-EXISTING UAFs (U1/U2: a non-handle value argument for a reference parameter leaves the
  callee's scope variable unbound; U3: a slice of a catch default returned) - round 4 on wt-e31view fixing them.
- QUEUED stage-0 fixes (after e31view merges, to avoid semantic.c conflicts): T22a refuses a function value whose
  parameters share a scope (`&x`), crash + unsound (typed review repro/sharedscope*.olang); S4d decided by types in C to
  match SPEC; E31b's M1; the handle-field use-after-free `f.Blocks[b].S.Push(x)` (a List field of a struct element
  reached through x[i] builds its chunk in the call's frame; HISTORY.md has the reproducer) - in e31view's next round.
- QUEUED language batches from 2026-10-17 (ledger QO1-QO6, QP1-QP3), one after the other after wt-ioprint and
  wt-e31view merge, the port's checker already told: (1) ERRORS - inferred error sets, the default error and bare
  `error` removed, std's own errors (never BuiltinError), new `try` checks (<< overflow, float narrowing, sign changes),
  INVALID to IEEE, WRONG_CASE for `as`; QQ1 (try for what fails as written, `checked` = try + checks, Try forms renamed Checked forms,
  their errors a superset of the plain method's, plain operator methods may declare errors); (2) ARRAYS - one constructor `Array<T>(n)`, lengths inferred where made and
  through results, written `Array<T, N>` and constant generics (G20-G28) dropped, QW (function type-parameter
  lists `fn f<T>(...)`, a receiver introducing its type's parameters - reverses G8b), arrays by value (an instance per
  known length; a run-time length by value an error), call-site asserts.
- 2026-10-17 ~11:55 CEST (the user: "that's all the language changes I had in mind for now. Build them and migrate
  the corpus"): wt-errors started (/home/user/wt/errors: QO1, QO4, QO6, QQ1; corpus migration after wt-ioprint lands);
  wt-arrays phase 1 started (/home/user/wt/arrays: docs/arrays.md, SPEC, inventory, plan - no bootstrap/ edits until
  wt-errors merges; phase 2 builds it). oann waits until the self-hosted compiler is done (the user, 2026-10-17).
- 2026-10-17 ~14:35 CEST, the user away (errands): "work through what you have been given ... I want the background tasks
  to finish before we really start talking about the new features" (docs/ideas.md). Merge order: wt-memfix (stage-0
  memory, unblocks every verify) -> wt-tests (corpus into tests/) -> wt-runfmt (formatter + word CLI, in C too) ->
  wt-e31view round 4 (U1-U3; review if it relaxes) -> wt-pyport -> wt-errors (big; soundness review of its relaxations
  before merging) -> then arrays phase 2 (with QW) and the port's checker resumed (wt-check, after memfix). Each merge:
  full verify on the merged tip, one at a time.
- QUEUED after wt-errors: a SYNTAX batch - QY (one listing rule: `,` on a line, a line break between lines, `+` gone from
  error sets/catch) and QW (function type-parameter lists, the before/after examples from the 2026-10-17 talk) - then
  arrays phase 2 (semantics only). Both compilers; migration tools in olang; oann after.
- SMALL, after the errors and syntax batches land (they edit SPEC.md): SPEC §5's section numbers are broken - no 5.6, two
  5.11s and two 5.12s - and ~50 `§5.x` references (SPEC.md, bootstrap/syntax.h) must be checked one by one for which
  section they mean (`§5.6` points at nothing). Renumber 5.6-5.19 in order.
- QUEUED (QAH, 2026-10-18): error-set parameters `<T ? E>` in both compilers - spec first (G-rules, R1b), inference,
  Iterator<T ? E>, std helpers taking fallible callbacks, checks; with QAI's checked versions; after wt-mathmeth and
  wt-mem2 merge. Then generators (fn ... Iterator<T ? E> with yield) in both compilers. Then reflection (docs/ideas.md
  #2, decided 2026-10-18: T.Name/Kind/Base/Fields/Cases/Params), both compilers; std's JSON/printing/Hash onto it.
- QUEUED after the 2026-10-24 reset (the user, 2026-10-18: "C is verbose as fuck, we aren't supposed to be verbose"):
  a verbosity audit of the port (sonnet/medium): where compiler/*.olang's lines go, file by file (code, tests,
  comments, the generated msgs table), which patterns repeat, and which language features would shrink them - evidence
  for language design, not only tidying. Measured 2026-10-18: scanner+parser 4,470 lines vs C's 6,050; checker 17,100
  vs semantic.c's 31,350 (which also holds section 8); the finished port projected at 40-50k vs C's 56k.
- 2026-10-18 16:00 CEST (weekly 0.74; the user: "Continue working in the background, stop at 90%"): started wt-s0fix
  (stage-0 open bug fixes: T22a sharedscope, S4d by types, E31b M1) and wt-emit (port M9: compiler/emit.olang, an
  emitdiff against stage 0). Freed ~8GB of merged worktrees' build/. Next when one finishes: M6 scope pass (xhigh),
  then eval wired to lower (M8). Stop new work at 0.90 weekly.
- 2026-10-18 17:20 CEST: wt-s0fix merged (f0291f3; its verify passed; master differed only in memory): T22a function
  types carry where their references live (funcPosShares, the port too); S4d decided by types (s4dResultCanHold); E31b
  M1 - a loop's condition runs in the turn it decides (do lowered to three clauses). Port leftovers: the port refuses
  `keep(link)` (instance arguments plain), its type spelling shows no scopes. Found, not fixed: a constructor field
  `v := w + f(r)` where f reads v on another instance says "expected no value" (a type cycle; name it).
- 2026-10-18 20:40 CEST (weekly 0.81): wt-emit merged and verified (6dbc392): M9 first round - the port's pipeline
  builds and runs programs, `make emitdiff` 929/1009 tests as stage 0 (shared.olang's differences: destructors (M6),
  compile-time decisions (M8), check gaps; PROGRESS.md in /home/user/wt/emit has the rest). Running: wt-scope6 (M6),
  wt-eval (M8 on lowered MIR).
- 2026-10-18 22:00 CEST: wt-scope6 merged and verified (M6 round 1): compiler/scope.olang fills typed.Plan, lower places
  by it (lowerdump as clean as the stand-in); `make scopediff`: 277/300 accepted programs scope clean, but 147 of 279
  section-8 fail cases get no error (E11c/O12 34, E31b 29, O17 18, C2d 11, P2/D16e 11, O10c 8 ...) - round 2's work,
  with per-instance bindings (O23a/O13c) for the 96 over-rejection rows. Emitter must allocate a non-Frame Home for a
  local the scope pass stores in a scope variable (O26a) - emitdump still lowers with the stand-in.
- 2026-10-19 00:40 CEST: wt-eval merged and verified (M8 round 2, 9713316): compiler/interp.olang runs lowered MIR;
  B9c/S8b/S18c decided by evaluation in Analyze; `olang interpret` through the driver; `make evaldiff` 254/287 tests as
  stage 0 (linalg slow, map check errors, os needs M6); 79MB where stage 0's interpret took 1.66GB. Left: speed
  (pre-decode MIR), K2 baking into emitted data, G21, S8c, S18d, tasks. (`$f`'s error set with `+`: fixed 2026-10-19, wt-render2.) Running: wt-scope6 (M6
  round 2).
- 2026-10-19 03:00 CEST (weekly ~0.87, code work stopped for the week - the user: stop at 90%): wt-scope6 round 2
  merged and verified (316bc01): 147 -> 18 section-8 cases the port wrongly accepts (the 18 listed in HISTORY.md "Port
  M6 round 2" and /home/user/wt/scope6/PROGRESS.md), 221/279 give stage 0's first error; per-instance bindings
  (O23a/O13c) not started. wt-render2 merged: `$f` writes error sets with commas (E11a/QY). NEXT after the reset: M6
  round 3 (the 18, then per-instance bindings), the emitter's Home allocation, M8 speed and K2 baking, then M10/M11.
- 2026-10-19 22:36 CEST: the 2-hourly check-in (trig_017cXPwPDKrFi8trMLqFdUpt) DISABLED while no agents run - each wake
  is a full turn of a large session and the 10-minute loop backs everything up alone. RE-ENABLE it
  (update_trigger enabled=true) whenever agents start again.
- **THE BUILD LIST - everything decided and not yet built (kept here so nothing is lost; the user, 2026-10-18: "Are you
  making sure all the features we decide on actually get built later on"). Each item points at its record. Before
  self-hosting (stage 0 too): the open STAGE-0 BUG FIXES (wt-noown - own/take removed, memory round 3 - merged
  2026-10-18, fcd2eae; the port's compiler/ still carries own/take until memory round 5) (checked
  2026-10-18): T22a lets a function whose parameters share a scope (`fn link(a mut N&, b N&a)`) become a function value
  - both /home/user/review/typed/repro/sharedscope*.olang still segfault under -debug -sanitize; S4d decided by types
  in C to match SPEC and E31b's M1 (both unverified - check them); the `f.Blocks[b].S.Push(x)` handle UAF no longer
  reproduces. Bugs found later in either compiler are fixed in both (also in the port, its own list in each
  PROGRESS.md: wt-drv, wt-eval, wt-lower, wt-check). Then the port to self-hosting (M5 finish, M6
  scope pass from docs/scope-model.md, M7/M8 finish, M9 emit, M10, M11-M12), then the seed and bootstrap/ removed (QAL).
  After self-hosting, in the port only:**
  1. Arrays batch (QP1-QP4, docs/arrays.md on wt-arrays): one constructor, fixed lengths inferred, written
     `Array<T, N>` and constant generics dropped, the 128-byte by-value cap.
  2. Error-set generics `<T ? E>` (QAH), `Iterator<T ? E>`, std helpers taking fallible callbacks.
  3. The new `checked` (QAI): checked versions `fn checked f`, a unary binding to its operand, derived checked
     At/SetAt/Slice, CheckError for BuiltinError, the Checked* names and CheckedPow removed.
  4. Generators (`fn f() Iterator<T ? E>` with yield; docs/ideas.md #1).
  5. Reflection (ideas #2: T.Name/Kind/Base/Fields/Cases/Params, trait and generic cases in match T, f.Of(v), layout,
     building back with defaults).
  6. Lane-by-lane array operators with fusion, Sum/Min/Max, masks with Any/All (ideas #4); stats' Sum/Min/Max move.
  7. Arbitrary-width integers I1-I128/U1-U128 (ideas #5).
  8. `embed` (ideas #6).
  9. `errdefer` (ideas #7).
  10. Generic enums (ideas #12).
  11. DONE 2026-10-23 (round 7, wt-speed): instance merging - identical instances and helpers written once, instance structs named by layout; sharing among reference type arguments comes through it (HISTORY.md "Port M9, round 7").
  12. Runtime interfaces `any Trait&` (decided 2026-10-08, ledger).
  13. Memory rounds 4-7 (docs/memory.md: prelude let-go and Map.Take, the port's early freeing, `x.Destroy()`), M19g in
      the port, QZ2's prelude moves (helpers onto Vec, List to std/list), a test that a long-running Map stays flat (QF).
  14. Errors as values and `Result<T, E>` (decisions.md QAM, QAN; postfix `?` keeps a call's outcome as a Result,
      `T ? E` only in signatures, cases Ok/Err, zero Err(null), unwrap by try/!/catch): `type X error { }` and named sets, catch bindings, `error e`, no error
      among several results, methods on error types, the zero `null` as "no error" (raising a null error aborts); error types
      declared `type IoError error { ... }`; `fn(I64) ? (A, B)` removed for a named set; `Result<T, E Error>` with a sealed
      prelude trait `Error`; sets list error types and may end in words of their own (`type LoadError error IoError, ParseError { TIMEOUT }`), nest and flatten, words stay qualified; `catch LoadError e`
      takes every member; error values hash, Result compares and renders structurally; `case null` an error where the
      value is known non-null (a catch binding, a written word); error values compare only with their own words and null.
  15. The port verbosity audit; SPEC section 5 renumbered; SPEC section 8 restated in the scope model's form beside M6
      (QAE).
  STILL TO DISCUSS (the user, 2026-10-18: "I want to come back to all these"): Option/null references (QAO, parked),
  `is` vs `== null` and the word `is` (QAP), contracts (#8), doc tests (#9), method and
  constructor overloading (#10, #11), fixed point (#5's second half).
- **C COMPILER FROZEN, 2026-10-18 (the user: "So basically freeze the C compiler now?" - yes).** Stage 0 takes only:
  bug fixes, finishing what is in flight (wt-mathmeth, wt-mem2, wt-noown removing own/take), and what the port's own
  source or its std turns out to need. Every decided language change (checked versions and CheckError, error-set
  generics, generators, reflection, docs/ideas.md) is built once, in the port, after self-hosting (M12), with std
  migrated then. Until then the port matches stage 0's language, so the diffs (tokdiff ... checkdiff) stay its oracle.
  Next after wt-noown: the port, straight to self-hosting. After it: the seed (LLVM IR of the compiler, committed,
  regenerated by a command), one rebuild from nothing with it, then bootstrap/ removed from the tree, tagged
  `stage0-final` (QAL).
- DONE 2026-10-23 ~23:30 CEST: STAGE 0 REMOVED (5ec40ac + dee6252 on master). The whole suite passed with the port
  built from the seed by itself (e49da49, tagged stage0-final locally; the proxy refuses tag pushes, so the commit is
  on GitHub as branch `stage0-final`); bootstrap/ deleted, OLANG defaults to build/olang, make verify bootstraps from the
  seed (three builds, the last two compared) and passes. From now on every compiler change is olang only, and goldens
  are captured from the port. NEXT: revert the two parity readings (below), then the build list in order, compile speed
  first (the user).
- DECIDED 2026-10-23 (the user: "once the C compiler is gone, we have free reins to do anything optimization we want.
  Revert it then. We still want to keyhole in the first step tho"; reading taken - parity first, then free): while
  bootstrap/ exists the port matches stage 0 exactly, including the two cautious flow readings suite round 4 copied in
  for parity (s5mapgetreturn: a local after a written `try` is no flow into the result; a function in a later-loaded
  module keeps whatever it is given). The deletion commit is parity-exact; right after it, revert those two readings
  and treat every stage-0-parity over-rejection or missed optimization in the port as free to fix (goldens recaptured
  with `GOLD_FROM=port`).
- DECIDED 2026-10-18 (the user: "For the two optimization things, I want them both"), in the port: merging identical
  instances (LLVM's function merging; `List<Node&>` and `List<Expr&>` give the same code), and sharing one instance among
  type arguments that do not change the code (every reference has one layout - Rust's polymorphization). Measured: 40%
  of the port checker's 1,535 functions are List/Map instances.
- DONE 2026-10-18 (9a831b2): the syntax batch (QY/QW, 9b78375), the number traits (T35c), Pair to std/pair, E13c (a
  number literal is no receiver), `a.Chunks(ChunkSize)` for race-free fan-out.
- QUEUED (QZ2, the user 2026-10-17): after memory round 1 (Vec as a handle - replaces Vec phase 2b), the iterator
  helpers and StringBuilder onto Vec (`a.ToVec()`), List to std/list; benchmarks before/after. Then Vec phase 2b itself
  (Vec as a type argument, in tasks and lambdas, move-aware List/Map) comes first of these. It also closes QF: a test of a long-running
  Map of owned objects staying flat in memory.
- RECORDED 2026-10-17 (the user: "Record them", after asking whether not going all the way to Rust shoots us in the
  foot): (1) section 8's soundness is the project's main risk - in the port's section-8 pass (M6), write it down first
  as a small formal model (the rules and why each is sound) before code, then test it with the scope fuzzer and
  sanitizer as now; (2) static race safety where `own` makes it cheap - a design for the user to review first: a task's
  argument that can be written is moved in (`take`) or read-only, giving compile-time freedom from races for fan-out
  shapes without Rust's global exclusivity (P3 withdrawn, done properly on ownership). Neither imports the rest of
  Rust: no `&mut` exclusivity, lifetime parameters, Send/Sync, Rc/RefCell, Pin, unsafe. Likely first small borrow from
  Rust when code needs it: two-phase borrows (`v.Push(v.Len())`).
- RECORDED 2026-10-18 (the user: "Record it then"): relax the LEND rule (docs/scope-model.md 3.3 - SPEC O17 fixes the
  binding by the value's kind; the model shows choosing whichever binding is sound accepts slightly more safe programs).
  Order decided: first the port's M6 matches stage 0 exactly (stage 0 is its oracle), then the relaxation in BOTH
  compilers as a language change with its own soundness review - sooner if real code hits a refused-but-safe case.
- Then runtime interfaces back as `any Trait&` (decided 2026-10-08, see the ledger; for GUI widgets eventually).
- Pacing and safety: one agent at a time early in a week; snapshots (wipsnap.sh) and backup pushes (QM yes); kill only
  your own processes by PID.

- 08:30 CEST (2026-10-17): the weekly limit (hit ~2026-10-12) stopped all agents and the container restarted; files
  survived (worktrees, commits, uncommitted eval.olang/target.olang, PROGRESS.md). vecp2's fix round committed
  cc555ed with verify passed. Resumed by SendMessage after the reset: vecp2 fix (report), check (M5b), drv (M10),
  eval (M8), e31view2 review. LESSON: agents should commit coherent pieces as they go - a restart keeps files, but a
  lost container would not.

- 2026-10-24 08:55 CEST (new week, weekly 0.02): compile-speed round 8 merged (c96d7d8). Started wt-fastverify (a quick
  ~5-minute tier for agents, `make verify` stays the merge gate but skips unchanged work) and wt-arrays2 (the arrays
  batch, port only, re-applying wt-arrays' phase-1 doc and SPEC onto today's master; PROGRESS.md hand-off). 2-hourly
  check-in re-enabled. QAS (dev build -O2 no LTO) and QAR (verbosity: `is` binding, bodyless constructors) asked.
- 2026-10-24 ~11:50 CEST: arrays batch merged (wt-arrays2 a57c487, verified; QP1-QP4 in the port, seed regenerated
  between its two stages). Not built (docs/arrays.md section 7): D8f inferred result lengths, G29 for constructors, T7c
  for comprehensions/reference locals, T7d for mutable private globals; S18e (leading asserts decided at every call) is
  superseded by today's contracts decision (conditions in brackets). Today's design decisions to build next, in one
  batch after fastverify: `-quick`; `==` as stored-value equality with case tests (`e == Shape.Circle`, `_`, narrowing)
  and `is` only for null; nullable `Node?&`; closed traits `for`, side-by-side constraints, `trait A extends B, C`,
  `big<I64>`; contracts (once their 8 open items are answered). Constructors written on one line in compiler/.
- 2026-10-24 ~13:00 CEST: wt-fastverify merged (dd54032): `make verify` 11.8 -> ~6 min (parallel test targets, two
  memory lanes for the >1 GB builds, a cached bootstrap in .bootcache/ keyed on all inputs, BOOT_FRESH=1 forces one,
  shared object store OLANG_OBJECTS, B3j/B3k), `make quick` ~2 min (no clean build/bootstrap/fixed point). Peak 5.4 GB per
  verify: keep /home/user/vlock at ONE slot. Agents: `make quick` while developing, one full verify at the end.
- 2026-10-24: lang24 round 1 merged (19e68c7, verified, seed rewritten): bare results/error sets, whole-item grouping
  (L18c, tools/results_migrate.olang for oann), `unreachable "why"`, `big<I64>`, `-quick` (B2g), `olang explain FILE
  NAME` (B11b), `:` one-line bodies (S1b). Round 2 (equality, case tests, narrowing, payloads) running in
  /home/user/wt/lang24-r2. Queued after the batch: `any Trait&` (fully decided today), with a soundness review.
- 2026-10-24 ~14:40 CEST (weekly 0.12): started wt-speed9 (compile speed round 9: measure, cut the largest share; emit/
  build/lower, not check) and wt-prover (docs/prover.md design note for the user, no code). lang24 round 2 running.
- 2026-10-24: lang24 round 2 merged (20806ad, full verify on the merged tip passed): E10 stored-value equality (List/Map
  declare Eq/Hash), `is` null-only, E32 case tests by `==` with `_`, S8d narrowing, T17a payload form, Some/Every;
  tools/equality_migrate.olang and helper_rename.olang for oann. Round 3 (nullable) running.
- QUEUED after lang24 + stdx merge: the std naming pass (no module stutter: io.Error, json.Value, chan.Channel ...),
  with tools/stutter_rename.olang for oann.
- QUEUED after lang24: `olang fix` (runs tools/*_migrate.olang in order, idempotent; oann's catch-up uses it).
- QUEUED: C interop v2 batch (decided 2026-10-24, decisions.md) after lang24 + speed9; then platforms (LLVM 19/20,
  aarch64 via qemu, release with bundled clang).
- 2026-10-24 ~17:00 CEST: wt-stdx merged (50cf64f; verify passed but tokdiff/astdiff goldens, recaptured after): time
  (Duration, Sleep, RFC 3339), sync, set, deque, heap, utf8, base64, hex, sha256, crc32, net (TCP/UDP), flags, regex
  (lazy DFA + Pike VM), iterator adapters; sha256 1.1x C, regex level with glibc. Gaps: no DNS (getaddrinfo list can't
  cross extern - C interop v2), no `\x` escapes (text literals talk), `&` binds looser than `==` (precedence - decide),
  error words not values (QAM), no `mut I64&` so no Mutex<I64> (primitive refs refused).
- FOUND 2026-10-24 by wt-lsp (scope pass, unfixed): a use-after-free - a conditional passed as a constructor argument,
  the instance returned (`e := E($t, mk(t) if at >= 0 else ""); return e`), fails under -debug -sanitize; reproducer
  /home/user/review/uaf-condctor/repro.olang. Fix agent to start after the current verify.
- 2026-10-24: wt-speed9 merged (7535fc1 + goldens, full verify on the merged tip passed): FILE:LINE texts out of the code
  (B3l), views pass skipped when unused, instance groups per first-reaching module, smaller parts, -quick in the record
  key; mid-checker edit 31.8 -> 21.7 s CPU (-quick 15.6 -> 2.7), new-instance edit 89.8 -> 29.9 s.
- 2026-10-24: wt-lsp merged (b69abe4 + goldens, full verify on the merged tip passed): L4b doc comments, B14 `olang doc`
  (+ -html for std), B15 `olang lsp`, B16 `olang mcp`, editors/nvim plugin.
- FOUND 2026-10-24 by the uafcc review (pre-existing leak, unfixed): an array literal of new text passed straight to a
  call boxes each element in the PROGRAM scope (`len0(String&[$i])` in a function called 2M times: 34 MB growing);
  through a local it stays flat. Reproducers /home/user/review/uafcc/repro/leak_*.olang. Fix agent after lang24 round 3
  (scope.olang).
- 2026-10-24: lang24 round 3 merged (98050e5, verified with master in): T2c nullable `T?&` only, S8e narrowing (also
  after a block ending in break/continue), E35 `x!` on null; arrays never null (empty is their zero; the agent's call);
  tools/null_migrate.olang for oann. lang24 now runs on through traits, contracts (+ CheckError rename), then the small
  items (limits/bit ops, one-line lambdas, raw values, text literals, bitwise precedence) and the array-literal leak.
- 2026-10-24: lang24 round 4 merged (9171148, verified): T30a `type A trait extends B, C`, T31a closed traits
  `type Float trait for F16, BF16, F32, F64 { }` (prelude number traits now closed), G19 intersections `<T Shape House>`.
- 2026-10-24: wt-contracts merged (ec09350, verified): D17 contracts (one block before the body; requirements decided
  at calls with closed arguments, guarantees where the evaluator runs a call, `checked f(x)` -> CheckError.CONTRACT;
  fits, for, if, outlives chains as obligations; conversions as contracts), R20 BuiltinError -> CheckError
  (tools/checkerror_rename.olang), D2 duplicate functions an error (a port bug). Left: requirements over fixed locals,
  trait-method/lambda/extern/destructor conditions, the prover.
- 2026-10-24: wt-small merged (2929bdf, verified with master in): E36 `T.Max/Min` (+ float Inf, NaN, Epsilon,
  SmallestNormal), E37 bit operations, one-line lambdas, `\x`/`\u{}`/`"""` text, `| ^ &` above comparisons
  (tools/precedence_migrate.olang changed nothing in the repo), the array-literal leak (34 MB -> 1.8 MB), T17e raw-valued
  enums (`op.Value()`, `try Op.From(v)` -> CaseError.NO_CASE). Left (found): a fixed local array converted to a run-time
  value (`v = x`, `return x`) still copies into the program scope - 34 MB over 2M calls; needs the scope pass.
- 2026-10-24 ~22:15 CEST (weekly 0.27): started wt-any (any Trait&, soundness review before merge) and wt-naming (std
  stutter renames + `olang fix`). Next after them: C interop v2, platforms, early freeing (memory rounds 4-7) + the fixed
  local array copy leak, then error-set generics, errors as values, generators, reflection.
- 2026-10-24: wt-naming merged (5b78cc4, verified): io.Error, os.Error, json.Error, csv/stats/rand/http/chan/ffi.Error,
  filepath.PathError -> filepath.Error (tools/stutter_rename.olang); `olang fix` (B17, compiler/fix.olang: 15 tools in
  order, two phases, -check; io_print/io_try/io_fix/precedence_migrate left out - not idempotent on current code).
  Follow-up asked: errors print module-qualified (`unhandled error: io.Error.FAILED`, `$e` likewise). Build list item 14's
  `Result<T, E Error>` trait is moot (Result dropped 2026-10-24), so no prelude `Error` is needed.
- 2026-10-25 ~01:00 CEST: wt-any fix round done (f29a774, verified): both UAFs, $ depth, lazy default slots, generic type
  cases, O10d by-value borrow refusal (pre-existing stack UAF), recvApplies (pre-existing), fuzzers repaired (differential
  fuzzer found 4 compiler bugs: E30, E16, E4a, E10 - fixed). Known limit: a List's iterator cannot be an `any` (T22a on
  ListIter.Next). Follow-up review running (/home/user/review/any2); merge if clean.
- 2026-10-25 CEST: C interop v2 merged (wt-cinterop 7f5dc98, verified; merge = tip + memory only): link, extern type,
  plain structs by value (cabi.olang, SysV + AAPCS64), export fn, callbacks (export fn only), build -library + header,
  ToC/StringFromC, net.Lookup/Resolve, `olang bindgen` (zlib, sqlite3 bind and run). Agent decisions 1-6 in HISTORY.
  Open: R9's diagnostic writes another module's error words bare (net.Error.UNREACHABLE) - small fix, queue it.
  Direction question QAS (asked): `p.StringFromC(max)` (E33 precedent) vs type-level functions `String.FromC(p, max)`.
- 2026-10-25 CEST: any review 2 (/home/user/review/any2): the first review's findings all closed, but new/older:
  (1) UAF - conditional/match/catch default boxed without a copy (older); (2) two instances' own methods - first wins
  silently (new); (3) stale lazy default thunk in a reused module object -> unreachable at run time (new); (4) chain
  literal adapts to its left neighbour for both comparisons (new); (5) older refusals (any R<T>& substitution, G4,
  prelude iterator adapters through an any); (6) diagnostic. Fix agent on wt-any with decisions: one shared
  copy-unless-fresh predicate; per-instance method keys; program-wide-demand thunks in the root object (B3d); a chain
  = its written-out form. Another review before merging.
- 2026-10-25 CEST: any fix round 2 done (wt-any 5d0529f, verified): box copy decided by the scope pass alone
  (Plan.AnyNew), per-instance methods (M21; overlapping pairs an error - found a duplicate Checker.readLocal),
  default-slot thunks homed in the root (B3d), chain literal typed per comparison (E30), any R<T>& substitution + G4,
  adapters through an any refused at the call (limit), B3k empty-lock fix. Third review (narrow, xhigh) running ->
  /home/user/review/any3; merge if clean.
- 2026-10-25 CEST: any review 3 (/home/user/review/any3): the round's targets held; found (older) the box trusting any
  call result as new (UAF via scope arguments `mk&t(i)`), §8 never judging a call with a scope argument where it stands
  (UAF on master too: `h.p = mkp&t(i)`, `return mkp&t(..)`), a returned local with a second name aliasing; NEW: the
  evaluator ignores Plan.AnyNew (baked global/assert disagree with run time). Plus AnyNoCopy through references,
  per-instance Eq, a crash on inline nested arrays in Grid(a), nomatch-only value match, fuzzer drift. Sent back to the
  fix agent (decisions in its brief); a narrow review of 1-3 after, then merge.
- 2026-10-25 CEST: any fix round 3 done (wt-any 0c37adb, verified): scope-argument results are existing storage at
  their scope everywhere (E25, closes a master UAF class), AnyItemNew one pure predicate (evaluator agrees), RetCopy for
  a returned local with a kept second name, AnyNoCopy through references, per-instance Eq/Hash, `type X extends
  Array<Array<T>>` refused (T7a). Scope fuzzer writes scope arguments (37 findings -> 0). Fourth (narrow) review running
  -> /home/user/review/any4; merge if clean.
- 2026-10-25 CEST: any review 4 (/home/user/review/any4): scope-argument references hold everywhere (14 master UAFs
  closed), but A) scoped calls of plain-data arrays escape (UAF, older) and B) RetCopy's flow misses second names
  (evaluator/run time disagreement - a regression). Decided: A - an arena-backed scoped value is existing storage
  whatever it holds; B - INVERT RetCopy: no copy only when the flow proves no second name (whitelist), so the
  evaluator's always-copy is unobservable. Plus C/D/E smaller. Sent to the fix agent; another narrow review after.
  LESSON again: a blacklist of "kept" shapes misses some; prove the safe case instead.
- 2026-10-25 CEST: any fix round 4 done (wt-any d4ed05d; full verify on 1d31a44, only goldens after): scoped plain-data
  arrays are existing storage (A), RetCopy inverted to a RetSole whitelist (B), C/D/E fixed; scope fuzzer text +
  second-name scenarios (54 findings on 0c37adb -> 0). Bench IR identical (no extra copies). Fifth narrow review
  running -> /home/user/review/any5; merge if clean.
- 2026-10-25 CEST: any review 5 (/home/user/review/any5): NEW - spawn of a scoped call stores freed storage (UAF), a
  scoped-call local over-rejected; OLDER - canKeep misses shared-scope parameters (aliasing, evaluator disagreement),
  conversion to a type over String skips the place path (UAF, immutable global written), plan-less return copies
  differ for cond/match/try, interpret drops §8 errors. Decided: spawn target = its assignment's lowering; canKeep
  conservative (keeps unless proved); one return-copy function with/without plan; interpret runs §8 (B3e). Fix agent.
- 2026-10-25 CEST: `any Trait&` MERGED to master (wt-any ced0302, verified; fast-forward). Five reviews; the last
  round fixed spawn targets (assignment lowering), conservative canKeep, conversions to types over String (place path),
  one return-copy function, scoped-call locals' home, interpret refusing what build refuses (B3e). Scope fuzzer: 67
  findings on d4ed05d -> 0. Recorded limits: o1-o4 over-rejections, adapters through an any. No sixth review before
  merging: master gains (many older UAFs closed); a general §8 review on master later.
- 2026-10-25 CEST: disk full (the ext4 reserve caps usable space near 40G on the 252G disk): freed ~10G by deleting old
  worktrees' build/ dirs and scratchpad files older than 6 h. Keep build/ only in active worktrees; delete a merged
  worktree's build/ at merge time. The platforms agent installed clang-19/20 (clang-20 moved off PATH).
- 2026-10-25 CEST: platforms merged (wt-platforms ab0da83, full verify on the merged tip passed): LLVM 18/19/20 need no
  IR change; aarch64 built and run under qemu (`make cross`; std/ffi and two std/os tests left out); clang chosen
  OLANG_CLANG > release's own > newest clang-N on PATH; `make release` (52 MB tar.xz with clang-20) + `releasetest`;
  R9 qualified names; scope-pass crash on a void callee's result (seed regenerated). SYSTEM SETUP for a fresh
  container: apt-get install -y clang-19 clang-20 lld-19 lld-20 libclang-rt-19-dev libclang-rt-20-dev
  qemu-user-static libc6-dev-arm64-cross libgcc-13-dev-arm64-cross gcc-aarch64-linux-gnu libffi-dev; then
  rm /usr/bin/clang-20 (so clang-18 stays the default; clang-20 by path /usr/lib/llvm-20/bin/clang).
- 2026-10-25 CEST: the user tired, design talk paused (open: errors as values (a)/(b), QBA zero vs uninit). Started
  wt-lang25 (opus high, PROGRESS.md rounds): prover removed, requirement block `fn f(x I32, y I32) [y > x] I32`
  (entry checks, ArgumentError.INVALID, outlives in the block), `checked` + CheckError removed (Get/SliceOf/Narrow,
  `as` fallible, std/arith Checked<T> + free functions), method type arguments, try binding + nesting rule, commutes;
  migration tools in olang fix. A soundness/semantics review before merging (it touches try and the evaluator).
- QUEUED 2026-10-25 (the user: "build the error system as we have decided so far leaving today's questions out of
  it"), to start after wt-lang25 merges (both rewrite the checker's error handling): from QAM (2026-10-18) -
  `type IoError error { FULL  DENIED }` declarations (replacing `error IoError { }`); named sets `type LoadError error
  os.Error, ParseError { TIMEOUT }` (members + own words, nesting flattens, words qualified, `catch LoadError` takes
  all, usable after `?` and in function types, parenthesized form only inside a list); catch bindings used inside the
  clause (`$e`, `e == Word`, `e == Type` + narrowing, `match e`, `error e`). LEFT OUT (open, (a)/(b)): storing errors
  (assign/pass/fields/type args), the zero value, Result. Migration tool for the declaration syntax; olang fix.
- 2026-10-25 CEST: wt-builders merged (61bbfe0 + goldens, full verify on the merged tip passed after a container
  restart killed the first run): doc/explain/lsp list a module's builders under their type (B14/B11b).
- 2026-10-25 CEST: wt-lang25 done (43f1754; full verify on df0b897, only a SPEC sentence after): all six items
  (requirement block, checked + CheckError removed, std/arith, as fallible, Narrow/Get/SliceOf, method type args, try
  binding, commutes) + tools (checked/contracts/try/as_migrate in olang fix). Review running (/home/user/review/lang25);
  then a follow-up round: the review's fixes + decisions (1) condition text in `!`'s message, (3) `a.Set(i, v)`; then
  merge, then the queued errors batch.
- 2026-10-25 CEST: lang25's review (/home/user/review/lang25, stopped early at the user's "full reviews in bulk", then
  written up from what it had): 8 confirmed - a Call adapter ignoring error sets (miscompile, older, now reachable),
  `olang fix` changing old code's meaning (checked_migrate/try_migrate/as_migrate), `x.Len()` on a type without Len
  compiling (older), comparison chains read as type-argument calls, nested checks dropped, fuzz generator. Merge
  aborted; fix round on wt-lang25 (fresh agent). DECIDED (mine): type arguments only touching (`x.Narrow<I32>()`, no
  spaces) - with spaces a comparison; D17e's compile error only where nothing catches ArgumentError (reverses my call
  this morning: tests must be able to exercise the failure); Rem(MIN, -1) = 0; fix wraps old try sites only where both
  readings agree, else lists and exits 1.
- SMALL, next batch: `make releasetest` also runs `olang explain T6a` in the unpacked release (SPEC.md must ship
  beside bin/, as std/ and tools/ do; the user asked 2026-10-25).
- 2026-10-25 CEST: wt-lang25 MERGED (0d775bc, full verify passed; merge = tip + memory): the batch plus its review's 8
  fixes (Call adapter error sets T22/E31, olang fix lists every changed-reading site and exits 1, `x.Len()` unknown
  method, touching type arguments, D17e only where nothing catches ArgumentError, Rem(MIN,-1)=0, `!` prints the
  condition, `a.Set(i, v)`). Next: the errors batch (queued above). Bulk review later over several batches.
- 2026-10-25 ~17:00 CEST: started wt-errs (opus high: `type X error { }`, named sets, clause-only catch bindings,
  releasetest explain) and wt-mem47 (opus xhigh: memory rounds 4 vacate/Map.Take, 6 early freeing conservative first
  version + the fixed-array copy leak, 7 Destroy). Next after them: error-set generics <T ? E>, generators,
  reflection, generic enums, errdefer, embed, lane-wise ops, arbitrary-width ints, prelude moves; then a bulk review.
- 2026-10-25 CEST: wt-errs MERGED (ea15be7, full verify passed; merge = tip + 3 CLAUDE.md example words): T19
  `type X error { }` (tools/errortype_migrate.olang, ~263 files), T19a named sets, R11b/R3a clause-only catch names ($e,
  ==, narrowing, match, error e; storing refused), releasetest runs explain, seed regenerated. Agent decision worth
  telling the user: an unused catch name is an error.
- 2026-10-25 CEST: wt-esgen MERGED (10e9e1f, verified per round; fast-forward): QAH `<T ? E>` error-set parameters
  (union inference, Iterator<T ? E>, std helpers take fallible callbacks), QAG generators (`fn f() Iterator<T ? E>` +
  `yield`, LLVM coroutine, frame where the generator lands, yielded values reclaimed per turn), D10a fix (for-in's
  break inside Next's catch). FOLLOW-UP recorded: generator speed (~6 ns per value vs 0.25 for a hand iterator -
  coroutine elision where a for-in makes and finishes the walk), defer across yield.
- 2026-10-25 CEST: wt-small2 MERGED (db11954, verified; fast-forward): errdefer (S19e), embed (E38), generic enums
  (G6b; `Tree<I64>.Leaf(3)`, bare `Tree.Leaf(3)` inferred). Not fixed (found): a global whose initializer failed is
  still read by the evaluator - `X := String(1)` then `assert X.Len() > 0` adds a second S18c error. Queue it.
- 2026-10-25 22:50 CEST: refl merged (e28a90f): compile-time reflection G32-G38 (T.Fields/Cases/Params..., unrolled
  walks, match T on traits, building through constructors), json.Encode(any value)/json.Decode<T>. Verified at abf8c93
  (goldens recaptured at 5e47b17). Left: nullability not reflected (no T.Nullable), `x Tree.Cases` unknown silently,
  G38 vs G13 wording. mem47 (rounds 4/6/7) is merging this tip, then verifies.
- 2026-10-25 CEST: mem47 merged (3da3976, verified): memory rounds 4 (vacate, Map.Take), 6 (early freeing O8d,
  free.olang, -memory report, fuzz free), 7 (x.Destroy() C9b; std/net Close() gone), generators/errdefer walked by
  early freeing, seed regenerated. Owed to the next bulk review: round 6's relaxations (view last use, pins, callback
  summaries, element stores, per-site task reach) and round 7's (a destructor/Str/Eq/Hash that lets go keeps only what
  it may let go of). Round 5 (removing own/take from compiler/) not built.
- 2026-10-26 ~00:40 CEST: bulk review 1 (a6c2292..843871e, /home/user/review/bulk1): 10 confirmed - UAFs in early
  freeing: F1 generator frame across yield, F2 a place's value stored in another of it, F3 fixed point cut at 16
  rounds, F6 extern callbacks into export fns; F4 destructor run early, F5 generator re-entry segfault, F7 embed via
  symlink out of a remote repo, F8 json integers > 2^53, F9 generator + contract inexpressible, F10 diagnostics. Only
  relaxation 6 of mem47's six is built (held). Fixing in wt-bfix1 (directions: when in doubt keep; F5 a guaranteed
  check per resume; F8 exact integers; F9 ArgumentError in Iterator's E).
- 2026-10-26 CEST: bfix1 merged (77709d9, verified): bulk review 1's F1-F10 fixed (yield lets go for views across it;
  same-value only by pure path; fixed points to convergence; destructor-registering regions only end by Destroy;
  generator re-entry a guaranteed check; extern + any export fn = nothing freed early; embed realpath; Json.Int/Uint
  exact; generator contracts at the first Next with ArgumentError in E; diagnostics). Over-rejection 13 (returning a
  global's storage, O10c) left - older, §8.
- 2026-10-26 CEST: lanes merged (bb11305, full verify passed on the merge): E39 lane operators (fused, vectorized;
  saxpy/select level with C, dot ~6% above), T4a I1-I128/U1-U128 (exact in the evaluator, __divti3 for 128-bit
  division). Queued small: 128-bit literals (decisions.md), Sqrt/PadStart/PadEnd for new widths, the trait-list line
  breaks in the prelude once the seed parses them.
- 2026-10-26 CEST: small3 merged (420cb18, verified): 128-bit literals (E4a), a failed global gives no value (K1a),
  Sqrt/PadStart/PadEnd at every width, Integer's width list across lines (seed regenerated), generator speed (idle loop
  scopes lose their headers everywhere: range gen 1.64 -> 0.35 s, filter gen 0.94 -> 0.26; most bench rows fell,
  mandelbrot +18% instructions but faster), SPEC §5 renumbered, over-rejection 13 kept refused (built result writable,
  T25c) with one error naming `fn Show() String`. Left: generator frame elision (coro.alloc + coro.destroy where a for-in
  makes and finishes the walk); "unknown name 'os'" x3 without an import; E11b hint for 'c'.PadStart(3) in a join.
NEXT: prelude moves (QZ2: List to std/list, helpers + StringBuilder onto Vec, a.ToVec()).
- 2026-10-26 CEST: prel merged (6c843f3, verified): QZ2 done - List in std/list (list.List, list.Of/From, list.Error,
  list.Iter), iterator/array helpers and StringBuilder on Vec (ToVec), 2,302 List uses moved to Vec by
  tools/list_vec.olang --vec; compiler builds 52 -> 44 s. Bench: text +1.06%, regex +0.8% (Vec doubling fills before
  copy - fix: grow without the zero fill), dispatch any +1.55%. Left: a Map's Vec value first named by a local in the
  Map's scope then Put is not freed early (131 MB over 1M); oann needs `olang fix`.
- 2026-10-26 ~10:40 CEST: bulk review 2 (68c693e..ea0a6de, /home/user/review/bulk2): 11 confirmed - F1 evaluator
  wrong for signed widths 33-63, F2 std/arith wrong at new widths (undefined shifts, MIN/-1), F3 lane op= through v[i]
  loses writes; F4 slice of an immutable global writable (older), F5 E8a literal shift check never ported (older), F6
  lane result into a long-lived place in a loop never freed; F7-F11 low. findIdle (D18) and exact collect held. Fixing in
  wt-bfix2 with the queued small items (Vec growth without zero fill, Map's Vec value early free, two diagnostics).
  Next after: generator frame elision; the C-imports batch (QBE); kernel tuning + Tensor (QBC/QBD).
- 2026-10-26 CEST: bfix2 merged (62348e8, verified): bulk review 2's F1-F11, P1, P2 fixed (evaluator exact at every
  width, std/arith width-generic, lane op= through x[i] writes back, slices carry their base's permission, E8a ported,
  lane/comprehension early freeing 1.6 GB -> 1.9 MB, wide-element arena alignment); Vec growth without the zero fill
  (prelude `grown`), seed regenerated; checker gaps stop the build. Left: a Map's Vec value named by a local then Put not
  freed early (needs a relaxation); dispatch direct +1.5%. Next: generator frame elision, C imports (QBE), kernel
  tuning + Tensor (QBC/QBD).
- QUEUED 2026-10-26 (the user: no linalg in std): remove std/linalg after the C-imports batch merges - std/linalg.olang,
  its uses in tests/shared.olang, checks cases (chunkpool, gemmflat, o26alatermodule*, tbaa/narrow, linalg/shapes),
  bench (gemm, fused, mlp, rungemm, runfused, repro/captured_value, repro/linalg_global_constant), std/rand's mention,
  docs, CLAUDE.md/SPEC. Keep the checks' compiler points (rewrite cases without linalg where they test the compiler).
  The kernel work (backup/wt-tensor a005f9f, NOTES.md) goes to oann's port. Also after C imports: generator frame
  elision.
- 2026-10-26 CEST: cimport merged (3207c42, verify passed but two goldens recaptured after): X17-X22 C header imports
  (`import z "zlib.h" link "z"`, translation cached in OLANG_CACHE/cimport), `extern link "lib" { }` / `extern { }`,
  standalone link removed (tools/link_migrate.olang in olang fix), `.c` imports compiled and LTO-inlined both ways,
  static inline wrappers, variadic calls, void* as CVoid?&; 166 hand externs gone from std/compiler; seed regenerated.
  Left: C extern variables (stdin, errno), cast macros, C constants typed I32 not adapting (I16(cpoll.POLLIN)),
  interpret refusing struct by value, a big header's whole module checked every build (openssl 3 s), full make cross.
- QUEUED 2026-10-26: named arguments for defaulted parameters (QBG, decisions.md) after wt-definit merges; generator
  borrows of inputs and frame views (QBB) after wt-genelide merges; stored errors (errors as values, error zero null)
  after wt-definit too.
- 2026-10-26 CEST: nolinalg merged (23a8c26, verified): std/linalg removed (std, bench gemm/fused/mlp, the linalg
  scenario); compiler points kept by rewriting gemmflat (local Mat) and o26alatermodule* (a latermodule scenario).
- 2026-10-26 CEST: definit merged (4e23e1e + merge + goldens, full verify on the merged tip passed): D13d/D13e definite
  initialisation for locals, fields and globals assigned in top-level ifs, no zero written where never seen, D14d
  Array<T>(n) + counted fill skips its clear, comprehensions write once without a clear (0.90 -> 0.25 s), T7c fixed
  comprehension lengths. Left: baked globals' startup function still emitted; compiler/tools/evaldump.olang doesn't
  build. Next: merge genelide (9e56fcd, verified on c6e8e5a).
- 2026-10-26 CEST: genelide merged (9e56fcd + merge + goldens, full verify on the merged tip passed): D18e generator
  frame elision where a for-in makes and finishes the walk (range gen 0.35 -> 0.003 s, as a hand iterator; filter gen
  0.30 -> 0.15 s). Decided (mine): a walk a for-in makes and finishes is dropped where the loop's block is left whatever
  it was given (fixes a program-scope leak, 591 MB over 4M walks) - in the QBB batch. Next: stored errors + named
  arguments + tests naming targets (one batch), then QBB (generator borrows, frame views, the walk drop).
- 2026-10-26 CET: errval merged (edc2624, verified; fast-forward): T20 errors as values (an error type or named set as
  any value's type but a result, null the zero, `raised a null error` aborts, Hash, match with case null), E14b named
  arguments for defaulted parameters (written order, hidden locals where names reorder), B7a tests naming targets
  (examples in doc/hover, `olang test FILE WORD` filters at run time, ok/FAIL - Target: desc). Next: QBB (generator
  borrows of inputs, frame views, the walk drop), then bulk review 3.
- QUEUED 2026-10-26 after the current batches: `olang profile` (QBL), then json key policies + typed `@` attributes on fields, cases and types (QBK 4, QBN).
- 2026-10-26 CET: qbb merged (0fa2d92, verified; fast-forward): generators yield borrows of inputs
  (`Iterator<String&t>`, a call gives a prelude ViewGenerator<T>) and read-only frame views (`Iterator<T&return>`);
  a for-in's walk is dropped at its loop block (552 MB -> 1.7 MB over 4M walks; interpret 634 -> 31 MB). Fixed on the
  way: a D16d closure UAF (held only through its innermost capture), `oblige` on set terms, G11 on any's arguments.
  Left: a held generator's &t elements read at the generator; a generator held in a local still lands by obligations
  (552 MB with program-scope arguments); explain of a method on a prelude type. Next: bulk review 3 (since C imports).
- 2026-10-26 CET: walks merged (3f0cef0, verified; merge = tip + memory): Reversed/Windows/TakeWhile/SkipWhile/
  FlatMap/StepBy/Partition, `olang test -fuzz NAME` (B19, std/fuzz, testdata/fuzz replay), std/prop property tests
  (B19a, reflection, shrinking), docs/profiling.md, a filter matching no test fails with did-you-mean. Decided (mine,
  the agent's two questions) for the checker batch: a filter fails only when no listed file has a match (the driver
  collects the children's status); test targets may name iterator defaults and array methods (`Iterator.TakeWhile`,
  `Array.Windows`).
- 2026-10-27 CET: bfix3 merged with walks (1dd87cf, full verify on the merged tip passed): bulk review 3's findings fixed -
  D13d do-while and hidden breaks (typed.BreaksOut), S8d/S8e assigned-in-block walk, D14d counter assignment, an
  immutable String global refused for mut/char* parameters, a held generator walked once dropped at its block,
  TypeKind.Error and json of error values, `e is null`, X21 promotion, qualified error types in `$`, error-value Hash by
  type identity + word. Left (a limit): a generator local walked in two branches or twice keeps its arena frame.
  Running: wt-checker (the checker batch, QBK 1-3 + B3a/B7a items). Next: `olang profile` (QBL), then json key policies +
  typed attributes + function reflection (QBN/QBO), then survey2 items 1-5 (Place.Here, become, bitset, ByFields,
  top-level assert).
- 2026-10-27 CET: checker merged (9e3b27f, verified; merge = tip + memory): S8d/S8e one narrowing walk (and/or/not,
  assert, loops; a narrowing ends at an assignment), S3 calls doing nothing an error (settleIdle; allocation counts as an
  effect), D3b unused locals (reported only when nothing else is wrong; `for _`, `_` in comprehensions) and M5a unused
  imports (tools/unused_migrate.olang, last in olang fix; 252 files migrated), B11 did-you-mean everywhere
  (msgs.Nearest), B3a filter across files (status 3), B7a targets `Array.Windows`/`Iterator.TakeWhile`; seed
  regenerated. Found: olang doc dropped other-module methods' examples (written into a copy). Left: `_ = x` to discard.
- 2026-10-27 CET: profile merged (d80994c, verified; merge = tip + memory, PROGRESS.md untracked): B20 `olang profile
  FILE [ARGS]` - `.prof` objects at -O3 + LTO with frame pointers and line tables, a per-thread CPU-time timer
  (timer_create, SIGPROF) whose handler walks frame pointers into a reserved buffer, samples written at every orderly
  end; a text report (self/total, hot lines, callers) and an HTML flame graph (build/profile/NAME.html), names as source
  writes them (emit, types.Demangle), llvm-symbolizer shipped in the release. Overhead: sampling <= 2.5%; frame pointers
  cost binarytrees 24% in profile builds only; plain builds byte-identical. The container restarted mid-batch; resumed
  from a WIP commit. FOUND: .git/info/exclude had unanchored patterns (`prof*`) hiding std/runtime/prof.ll,
  compiler/profile.olang and walks' docs/profiling.md (never committed, rewritten) in every worktree - anchored with `/`
  by me. Left: allocation profiling, threads C starts, a clock finer than the 250 Hz tick, builds not bit-reproducible
  (.loc objects carry the compiler's pid in temp names). Next: json key policies + typed attributes + function
  reflection (QBN/QBO), then survey2 items 1-5.
- 2026-10-27 CET: attrs merged (8a602e0, verified; merge = tip + memory, PROGRESS.md untracked): G39 typed attributes
  `@Type(args)` / `@Type` / `@Enum.Case` on types, functions, methods, cases, fields and parameters (a hidden immutable
  global per attribute, baked by K2 - nothing new in lowering/emit/interpret), G40 `try x.Attr<A>()`
  (AttrError.MISSING) and `x.HasAttr<A>()` (decided per member), G41 `alias.Functions` and `T.Methods` (FuncInfo
  descriptors, callable); std: `json.Naming` (Exact/Camel/Snake/Kebab; not `json.Keys` - clashes with Object.Keys),
  `@json.Key/Skip`, a type's `@json.Naming.X` wins over the call's; csv struct mapping (Header/RecordOf/Encode/Decode,
  `@csv.Column/Skip`); `flags.Read<T>` from a constructor (`@flags.Help/Short`). Left: json key names converted per
  encode, not precomputed. FOUND (unfixed, small): `olang format` through the shared formatter cache gave a stale layout
  in another worktree (cache key misses the formatter's source) - queue it.
- 2026-10-27 CET: std2 merged (209bee7, verified; merge = tip + memory): std/bitset (`BitSet<T>` over a payload-free
  enum of <= 64 cases in one U64; `| & - ^`, Complement, `in`, walk in case order, Bits/FromBits/Flags/FromFlags for C
  flag words) and std/order (`order.ByFields<T>`, lexicographic over public fields, enums by case then fields, `Less`
  where a type has one, nested types recurse; `xs.Sort(order.ByFields<T>)`). FOUND (compiler, queue for the next batch):
  (1) S18c prints a decided assert's message of `"text" $x` pieces unrendered; (2) in a test, `try f() catch X { return }`
  then `assert false` is refused as decided-false while compiling although f() fails - S18c decides an assert the run
  never reaches.
- 2026-10-27 CET: surv merged with std2 (7ba52e2, full verify on the merged tip passed): E40 `Place.Here` (prelude
  Place(File, Line, Column); as a default the outermost call's place; compiler's typed/mir Place renamed Lvalue), S21
  `become f(x)` (musttail; identical signature and error set, nothing pending to run, no borrow of a closing scope, not
  in main/tests/lambdas/defer/join/try; 10M-deep mutual recursion 0.1 s), S17a top-level assert (false or undecidable a
  compile error), B13 formatter's `fn (p T&) M<Q>(` space (std/list's seven signatures restored), B17 fix's tools cached
  per compiler and tools tree. Left: oann's bandit_settle field named Place (D3a, at oann's migration); the two S18c
  bugs found by std2 (above). Next: those two S18c bugs; then survey2 items 6-12 as the user answers.
- 2026-10-27 CET: s18c merged (a33ee4e, verified; merge = tip + memory): S18c messages rendered (reflection's
  check.reflText, else the evaluator, else shown as written, AssertFalseWritten); a false assert is a compile error only
  where every run reaches it (typed.AlwaysReached, Try.Left) - SPEC's "reached or not" reversed (mine); std/order names
  the field without an order. Left: an S18c error inside an instance points at std's assert with a note at the inner
  call, not the user's call. CODE WORK STOPPED for the week at ~0.93-0.94 (the 0.95 rule); reset Sat 2026-10-31 06:00 CET.
  Next week: survey2 items 6, 8, 9, 10 and 12 (unreachable as a value, comptime e + comptime for, cold paths, time.Virtual, chan.Select - decisions.md 2026-10-27) as one batch beside a bulk review 4 over
  checker..s18c (narrowing, D3b, attributes, become, AlwaysReached). ADDED 2026-10-27: QBQ/QBR (case _, `case P: v`), QBP 1-9
  (guard narrowing, Mod/DivFloor/DivCeil, typed holes, io.Show, walks 3, effects + inferred facts, explain -asm/-ir,
  lane comprehensions), QBT type-level builders (+ trait-required ones), and docs/optsurvey.md's 15 findings (top: inline
  the allocator's bump path, stack slots for turn temporaries, growth out of line, alwaysinline .walk, no result copy
  into a reference parameter) - an optimization batch of its own beside the language batch (disjoint files where it can).
- QUEUED 2026-10-30 (the user: at most 3-4 nested blocks): a nesting refactor of compiler/ (~1,000 lines deeper than 4
  blocks, 242 functions; guard clauses, one-line bodies, helpers split out) (QCA; no depth report for other code - the user: a human writes code how they want); the ~60 flag-beside-value sites follow QBZ's answer. Not before the language batch's checker work
  lands (same files).
- QUEUED 2026-10-30 (the user's QCB yes): the scoping rework - every scope marker inferred. Round 1 (opus xhigh, new
  section-8 design): the small formal model first (docs/scope-infer.md: the inference, the no-extension rule, why it is
  sound, the errors left), then markers optional in the port's scope pass, then every marker deleted from std and
  compiler/ to measure (what inference cannot place, peak memory of the self-build and bench against today). Round 2:
  the spellings removed outright (the user: "make manual scopes impossible" - no marker syntax left, never an
  optional form on master) (SPEC section 8, a migration tool in `olang fix`, checks cases), with a bulk review after. Runs
  beside the language batch only where files allow (scope.olang is its own; check.olang's marker parsing waits).
- HELD 2026-10-30 (the user: "hold off on the refactor until we have decided all things about how the language is to
  work"): the scoping rework (QCB) and the nesting refactor (QCA) wait until QCC (references
  in signatures, decided 2026-10-31, with values guaranteeing their own copy - QCE) and the rest of the ledger are answered (`mut` stays - its removal was reversed 2026-10-31) - one rework of section 8 and the
  signatures then, not two; the nesting refactor after it. The decided features batch and bulk review 4 run meanwhile.
- 2026-10-31 CET: bulk review 4 (1dd87cf..f0e0743, /home/user/review/bulk4) and its fixes merged (bfix4 294f3d1,
  verified; fast-forward): become refuses unscoped views of a closing scope (tailStorageGiven) and results that may hold
  a destructor (mayHoldDtor); deferred code sees no narrowing a later statement ends; writes through a narrowed payload
  copy refused (not lent - a reference to the enum may change case under it); a noreturn call leaves for S18c; bitset's
  constructor a contract; attributes holding mut references refused where written; the scope pass's fixed point to
  convergence; an enum entry ending in `&` across lines parses. Left: `x2 := x1; return x2` of a constructed local gets
  O10d (over-rejection); becomedtor gives two errors for one cause; the profiler handler has no sigaltstack.
  `mut` stays (the user reversed its removal 2026-10-31). Running: wt-feat (survey2 items 6, 8, 9, 10, 12).
- 2026-10-31 CET: wt-feat merged (dd1f4af + bfix4, goldens recaptured, full verify on the merged tip passed): S16e
  `unreachable` as a value, K3 `comptime e` (a hidden baked global per site and instance) and K3a `comptime for`
  (unrolled, at most 4096 copies), cold paths (ending runtime calls cold noreturn, error edges weighted 1:2000 - Vec push
  188.7M -> 103.7M instructions, miss-heavy unchanged), `time.Virtual(f)` (test builds only), `chan.Select` over
  channels, SendOf and time.After (polling; Chan counts blocked receivers). Agent's rules worth the user's look: G9e
  (a left-off parameter binds its type variable to its default's type), T18/S13g (an enum may have no cases; a case
  carrying one needs no clause). Left: Select(SendOf(...)) inside a join refused by C2d (a local first works); a mutable
  global with a literal initializer still gets a startup call; a baked global that aborts gives a second error at an
  assert reading it.
- QUEUED 2026-10-31: the errors batch (decisions.md QBZ): errors declared where raised, CamelCase error words with a
  migration tool in olang fix, `?` required (contract functions' implicit ArgumentError and main without `?` gone),
  did-you-mean on near-miss raises, both flag bans (decided), and the compiler's ~60 flag sites moved to
  errors. After wt-opt31 merges. Not under the hold (no scope or signature rework).
- QUEUED 2026-10-31: array patterns (QBP 10, rest written `...name`) and variadic parameters (QCF: `xs ...T`, `...a`
  passes an array on; filepath.Join and os.Exec moved) and the `**` operator (QCG) - one batch with or right after the errors batch.
- 2026-10-31 CET: wt-lang31 merged (case _, case P: v with `=>` and nomatch gone and the repository migrated by
  tools/match_migrate.olang, guard narrowing, Mod/DivFloor/DivCeil, E41 typed holes, io.Show, walks round 3), then
  wt-opt31 (survey items 1, 3, 4, 7 filter, 8, 9, 12, 13, 14, 15 and QBV's Pow folding: binary-trees 185 -> 131M Ir,
  Pow(2.0) 138 -> 4.4M; left: items 2/5 (scoping rework), 10 enum layout, 6 constant calls, 11 fusion, 7's in-place
  growth, I128 division) - goldens recaptured, full verify on the merged tip passed. Next queued: the errors batch
  (QBZ), array patterns + variadic + `**`, the survey3 tooling the user picks.
- DIRECTIVE 2026-10-31 (the user: "Do the rework and a large refactoring effort at the end. Then verify, then we are
  done with the compiler's first version. I will be absent till you are done with that"): run to the end without
  waiting on the user - errors batch (running), then the language batch (array patterns, variadic, `**`) and the
  tooling batch (effects/facts, -caps, needs at the call, olang api) side by side, then the rework in rounds from
  docs/rework.md (scopes inferred, `&` parameters, values held by value, spellings removed + migration), then a large
  refactoring of compiler/ (nesting <= 3-4, flags to errors, duplicated code, dead code; no splitting files for size),
  then a bulk review with its fix rounds and a full verify - "the compiler's first version". Direction questions that
  come up are decided by me (recorded "mine, user absent" in decisions.md for their review on return). Stop at 0.92
  weekly; arm wake-ups past limits.
- 2026-10-31 CET: wt-err31 merged (raised errors R3b, CamelCase errors, `?` required R1d, flag bans R23/R23a, seed
  regenerated; verified on the merge) and wt-tool40 (fast-forward, verified on its tip): effects under signatures,
  G42 function facts, `explain -caps` (B11c), G18a needs shown and errors at the call, `olang api` (B21), `# not a
  value: why`. Running: rework round 1 (wt-rework), the language batch (wt-lang40), the dependency map (wt-deps).
- 2026-10-31 CET: rework round 1 merged (2431678, fast-forward, verified on its merge with master): inferred scopes
  behind OLANG_SCOPES=infer - the default path byte-identical (bench IR, the compiler binary); under the switch std
  54/54, the self-build a fixed point, sanitizer/fuzzers clean, peak memory 1.920 vs 1.902 GB, bench RSS within 276 KB;
  0 hidden W parameters needed; 15 fields promoted in compiler/, 14 of std's 23 &q fields; refused: O27 kept views (2
  in shared.olang), T22a function values, D18c borrowed-element generators. Also fixed: scope-pass gaps now stop a build
  (a lambda building through an instance's &p field read freed storage). Next: round 2 (& means may write).
- 2026-10-31 CET: rework round 2a merged (03375dd, fast-forward; behind OLANG_PARAMS=new, default path unchanged,
  verified): written `&` writable, bare struct/array parameters by pointer as read-only references (generic.BareRef),
  copy on entry where a body writes one (-memory lists them), D9d/D9f/T25d diagnostics, tools/param_migrate.olang;
  std 19/40 files pass under the switch, compiler/ 1,904 errors after the text phase. Found and fixed: B7a's
  once-check kept its record across checking passes (a twice-checked program reported each named test twice). Next:
  round 2b - per-level inferred permission, G29 where the length decides something, std and compiler/ migrated,
  open point 5, not-a-value reasons, KeptPerm/storeThrough, the field loop's speed, the flip and the seed.
- 2026-10-31 CET: rework round 2b merged (8933479, fast-forward; behind OLANG_PARAMS=new, the default path unchanged;
  verified on e9528e5, goldens recaptured after): per-level inferred permission (load.RoLevels), narrowed and following
  results, G29 only where the length decides something, `?&` parameters read-only unless written, a level made
  read-only before any entry copy (String.Split no longer copies), arguments checked in their parameter's context
  (order.ByFields a value again); std 35/40 under the switches, bench identical with 0 entry copies, compiler/ 2,430 ->
  716 errors after two tool runs. Found, not fixed: param_migrate's text phase not idempotent (makes `p T&` bare again),
  D9d's suggestion keeping a scope marker, the tool pinning `&` from an earlier note (488 D9d rows). Next: round 2c -
  per-field permission bindings (2.8), the by-pointer value-result handover then QCC's T& error, the tool's idempotence
  guard and unpinned D9d round, compiler/ migrated and self-built, open point 5, not-a-value reasons, KeptPerm and the
  storeThrough hole, the caller-side copy, the field loop's speed, then the flip.
- 2026-11-01 CET: rework round 2c merged (0ddb256, verified on 1773d9c; merge = tip + memory): O17 lends a split value
  by its storage under the switches (a section-8 relaxation - FOR THE NEXT BULK REVIEW), nullable `?&` parameters widened
  where written through and followed where only handed back, variadic struct elements by value, match values meet
  read-only; std 40/40 under the switches; compiler/ 658 -> 326 errors (most one shape: a reader handing back a view of
  a `&` parameter given bare data - the value-result handover's job). Fixed: three permission holes, an evaluator
  zero-read of a self-conversion (default path), the effects line missing payload writes (default path). Next: round
  2d - the by-pointer value-result handover then QCC's T& error, the migration's last oscillation, compiler/ to zero
  and the self-build under the switches, open point 5, 2.10, the field loop's speed.
- 2026-11-01 CET: rework round 2d merged (0f2fdfb, fast-forward; verified on 13a18c7, goldens after): D9g (a T& result
  handing back a bare parameter's reach is an error naming the value result), D9h (an array value result viewing an
  argument handed back uncopied where read in place; copying wrappers for function values/any/adapters), value
  results following their bare parameters, enum payload fields read-only by inference, enums holding references by
  pointer; std 40/40 under the switches, bench unchanged on the default path. compiler/ migrated 323 -> 86 errors (7
  parameters still oscillating) - no self-build under the switches yet. KNOWN HOLE (from 2c): a constructor/case keeping
  a bare parameter's own storage in a read-only-inferred field shares the caller's storage (by-pointer observable,
  memory-safe) - fix in the scope pass (judge it as the frame's). FOR THE BULK REVIEW: handed-over views read in place,
  scope.readOnlyResult, following value results, enum payload fields read-only, E28/E31b skipped for type-variable
  reference parameters, enums by pointer, 2c's O17 storage lend. Next: round 2e - the aliasing hole, compiler/ to zero
  and the self-build under the switches, open point 5, 2.10, the field loop.
- 2026-11-01 CET: rework round 2e merged (86d00f6, fast-forward; verified, goldens recaptured after): the aliasing
  hole closed (a bare parameter's own storage kept by a value is copied by the caller, only where the argument may
  change - KeptOwn, plan.ArgCopy; the evaluator agrees), open point 5 taken, `:=` of a plain bare value a copy, D9d
  precise (the migration's oscillations), split values lent to bare parameters that keep nothing. compiler/ 86 -> 66
  errors (one E16 at `ts[0]` in a zero-argument instance looks like a real bug); bench under the switches 0 copies.
  Round 3 (QCE) largely NOT covered: value arrays held by value in structures, Map<String, V> owning keys, std's maps.
  FOR THE BULK REVIEW (add): D9e's caller copy and stableArg/refStable exemptions, ownT/keepOwn, open point 5's
  valueCovered/valueRels, bareLent, the Promote fit for read-only temporaries. Running: round 2f (compiler/ to zero,
  self-build) and bulk review 5 (read-only, rounds 1-2e's relaxations) side by side.
- 2026-11-01 CET: rework round 2f merged (7a45087; default-path verify passed on 6f0c00d, goldens recaptured):
  bulk review 5's F1-F7, D9e (a kept bare parameter refused, no caller copy), X22's C pointers (owned values borrowed,
  const trusted, copies listed by -memory), atomic reads of bare parameters refused, a conditional/match/try of arrays
  into a value local now copies (bug on both paths). Under the switches std 33/40 (the 7 blocked by view-returning
  readers), compiler/ 53 errors. Next: round 3 (fresh agent) - value results handed over uncopied for every value and
  element, readers and Split to values with absence as errors, QCE's value arrays inside values and Map<String, V>,
  handles as values (Vec, Map, Set, Deque, Heap, StringBuilder; List a handle), Clone() off value types, then compiler/
  to zero and the self-build under the switches.
- 2026-11-01 CET: rework round 3 first part merged (fc15caa, fast-forward; default-path verify passed on c523984,
  goldens recaptured, later commits switch-only, bench IR byte-identical): QCE's value arrays inside values under the
  switches (typed.MakeKind.Copy, mir HelperKind.Copy; Map<String, V> owns its keys through MapEntry's constructor),
  readers in value form through param_migrate's hand phase (Split, Lines, Dir, ReadDir, ArrayIter, Join), an O25g
  use-after-free found by flags fixed (holdsPart). verify-params 40/40 (json, http, list sit outside its grep - 6/3/1
  errors). FOR THE BULK REVIEW: holdsPart/admitsAt asymmetry (16.2 item 8), the Array<R&> -> Array<R> fit, part stores.
  Next: round 3b - the value-result handover (views read in place), json/http by value and verify-params widened,
  list's First (FRO across two fields naming one chunk), handles as values, compiler/ to zero + self-build + numbers.
- 2026-11-01 CET: rework round 3b merged (768c646, fast-forward; verify passed but three goldens, recaptured after;
  verify-params 70/70 under the switches; default-path bench IR identical): D9h views kept in place of copies (Split,
  Lines, Iter().Fold copy nothing - text -20.6%, sum -76% under the switches), json/http/list under the switches, T25d
  constant text written through closed (a hole found). compiler/ under the switches: 64 root errors (47 T25c tree
  readers, 6 E12 value readers into `Array<String&>&` parameters, 10 scope placement, 3 tool rows). Next, round 3c:
  compiler/ to zero (tree readers as values or following their argument's permission, nested-call permission link,
  built `T&` results to values, the tool's value-form rewrite), the self-build under the switches with its numbers;
  then handles as values; then 2.10 partial copies; then round 4 (the flip).
- QUEUED 2026-11-01 after the rework (the checker's files): QCI 3 + QCI 4 as one batch - function types reference-only
  (`fn&(...)`, `fn?&(...)` on places, declared `type Handler fn(...)` with no `&` - type declarations never carry one - used as `Handler&`/`Handler?&`, bare an error), never-null
  function values with no zero value (D13d), nullable arrays `Array<T>?&` (null distinct from empty); migration tools
  in `olang fix`; the compiler's absent-vs-empty flags back to `?&`.
- 2026-11-01 CET: the user reversed QCC's parameter rule (QCK, back to `mut` on references); round 3c paused. Next:
  round 3d on wt-rework - the params switch and its machinery removed, QCE / D9h / bulk review 5's default-path fixes
  kept and moved off the switch (QCE behind OLANG_SCOPES=infer or the default where it changes no program), records
  (CLAUDE.md's QCC entry marked reversed, SPEC, HISTORY, docs/rework.md); then handles as values; then round 4 (the
  flip: scopes inferred the default, markers removed from the grammar - `mut` stays - migration, seed, goldens); then
  QCI 3/4; then the compiler/ refactor, bulk review, final verify.
- 2026-11-01 CET (weekly 0.46 at 16:38 CET, reset Sat 2026-11-07 05:00 CET, stop 0.92): order kept so the rework lands
  first (3d revert, handles as values, round 4, QCI 3/4), the compiler/ refactor last - on Opus (the user took back
  Sonnet the same evening), its validation (bulk review, soundness) on Opus at high.
- 2026-11-01 CET: rework round 3d merged (d860e96 + memory; full verify passed on its tip): OLANG_PARAMS=new and its
  machinery removed (compiler/ -5,400 lines), QCE and D9h on the default path, bench within 14 instructions of master,
  four default-path bugs fixed (R1a's re-attempt lost signature errors - r23reattempt; D9h's quiet reading through
  closures and mut globals; fixed-row arrays widened as run-time rows segfaulted - t7aoverrows). Next: handles as
  values (Vec, Map, Set, Deque, Heap, StringBuilder; List a handle), D9a/D9c lifted, Vec<String>.Join; then round 4.
- 2026-11-02 CET: handles as values merged (fea8d30, fast-forward; verify passed but two hash goldens, recaptured after;
  seed regenerated): Vec, Map, Set, Deque, Heap, StringBuilder hold storage by value, Clone gone from them, Ref/RefMut
  for in place, D9a/D9c lifted, Vec<String>.Join; seven bugs fixed on the way. Bench within 0.01% but knucleotide +3.4%
  instructions / +4 MB peak, vecopaque -7.7%; the self-build peak 2.02 -> 2.28 GB. Next: round 4 (the flip); then an
  early-freeing round (parts held in place, Map growth, x[i] mutating calls through RefMut); then QCI 3/4.
- 2026-11-02 CET: rework round 4 merged (bc0737c, fast-forward; full verify passed on 622583f, docs only after;
  scopesan, scopefuzz clean; seed regenerated, bootstrap a fixed point): scopes inferred the only path, every scope
  spelling gone from the grammar (tools/scopes_migrate.olang, last text tool in olang fix; 287 files), 115 checks cases
  now run cases, explain/doc/hover print `# scopes:`; a permission hole fixed (a read-only List<List<I64>> cloned to
  writable inner lists). Costs: scope phase 0.98 -> 3.39 s on compiler/, peak 2.28 -> 2.49 GB, vec gather +6.6%,
  dispatch +0.7-1.3%. Next: round 4b (open point 5, scope phase speed, gather, folding, rungold); then the early-freeing
  round; then QCI 3/4; then the refactor (Opus), bulk review, final verify.
- 2026-11-02 CET: rework round 4b merged (921498e, fast-forward, full verify passed on its tip; scopesan, scopefuzz
  clean): scope phase 3.39 -> ~1.35 s on compiler/ (components' judging reused), self-build peak 2.49 -> 2.37 GB,
  open point 5 built (a function type's result borrowed from its reference parameters), O26a placement regression fixed
  (every bench row back to the base or below), folding measured and not built, rungold captured (404 run cases), E10 bug
  fixed (an empty Vec unequal to its copy, evaluator too). Next: the early-freeing round (parts held in place, Map
  growth, x[i] mutating calls through RefMut); then QCI 3/4; then the refactor (Opus), bulk review, final verify.
- 2026-11-02 CET: early freeing round 8 merged (144f971, fast-forward; verify passed but two hash goldens, recaptured
  after; fuzz free, dead regions, scopesan clean): owners held in place freed early (server 145 -> 2.3 MB, mapvec 66 ->
  1.9 MB), a collection's own arrays freed at growth (knucleotide's peak 13.6 -> 9.9 MB), mutating calls through x[i]
  in place via RefMut; found: no program importing std/os freed anything early (RunOnStack's function value counted as a
  task everywhere), fuzz free had run nothing since round 4. Next: QCI 3/4 (fn&/fn?&, declared function types, nullable
  arrays) - two bootstrap stages; then the refactor (Opus), bulk review, final verify.
- 2026-11-02 CET: QCI 3/4 merged (6c241ad, fast-forward; full verify passed on its tip, seed regenerated twice,
  bootstrap a fixed point; scopesan clean): function types reference-only (`fn&`/`fn?&`, bare an error, T21), declared
  function types (`type Handler fn(...)`, `Handler&`, nominal, methods - T21b), nullable arrays (`{-1, null}`);
  fnref_migrate marked 376 function types in 150 files; bench unchanged. The rework is done. Next: the compiler/
  refactor (Opus: nesting <= 3-4, duplicated and dead code, best constructs), then bulk review 6 over the rework
  (Opus, high) with its fix round (including `Array<T>?&`'s zero as null), then the final verify - the first version.
- 2026-11-02 CET: front-end refactor merged (4296278, fast-forward, full verify passed on its tip; bench IR and the
  compiler's own 505 .ll files byte-identical): lines deeper than four blocks 473 -> 61 (2 by brace depth), 14 dead
  functions and ~9 duplicate walks gone (-270 lines), an explain bug fixed (it printed a removed scope spelling).
  Back-end refactor running. Then a joint cleanup pass (dead scope-argument field, types.Owning, stage-0 tools), bulk
  review 6, its fix round, the final verify.
- 2026-11-02 CET: back-end refactor merged (wt-reback, full verify passed on its tip; bench IR byte-identical): no back-end
  line deeper than four blocks (408 before), depth-four lines 1,038 -> 288, -308 lines, `Scoper.call` split. Merged
  with the front end by taking the golden rows per file (no code overlap); the merged tip is verified by the joint
  cleanup pass, next. Then bulk review 6, its fix round, the final verify.
- 2026-11-02 CET: tidy pass merged (94e75ae + memory; full verify passed on its tip, which verifies the two refactors
  merged): dead scope-argument code, types.Owning, MIR Give/RegisterOwner, checkdiff/scopediff gone, shared helpers in
  typed.olang, NoteMakeWhere reworded, `if c: a, b = x, y` parses, `Array<T>?&`'s zero null, nested null text renders
  null; bench IR identical. Bulk review 6 done (no use-after-free; 7 wrong results...). Next: its fix round, then the
  final verify - the first version.
- 2026-11-02 CET: bulk review 6's fix round merged (6797652, verify on master 3b51cc9 passed in full). Narrow review
  6b of its relaxations: they held; found 1 older soundness bug (a generator's lambda capturing a built call's
  reference), 3 wrong results (externs calling back, destructors in effects, M19g through an index), 1 over-rejection,
  diagnostics. Next: fix round 6b, then the final verify - the first version.
- 2026-11-02 ~17:00 CET: THE COMPILER'S FIRST VERSION (the user's 2026-10-31 directive: rework, large refactor, verify).
  Fix round 6b merged (11b8d38, fast-forward; full verify passed on its tip, scopesan, scopefuzz, fuzz free clean, bench
  IR byte-identical): a generator lambda's environment kept in the coroutine frame (soundness), externs calling back
  and destructors counted in effects, M19g through an index, F9 through captured function values, three diagnostics.
  Weekly ~0.77. Left for after: the reference-local over-rejection (and the three dump tools), held/gen_walkkept's two
  errors, oann's catch-up (handles_migrate, fnref/scopes migrations - oann waits for the user), the settling
  experiments (QBY - the user's to start).
- 2026-11-03 CET: the values study merged (docs/values-study.md); the copy/unique/immut/collections design settled with
  the user. Order: (1) the study's bugs and B1-B4 - element reads never copy (D9h by evaluation order), loop-turn copies
  reclaimed, move at last use, reference locals typed per assignment (NLL: O25's three refusals, the dump tools), in-place
  calls through an element's field; (2) the build batch - unique (Rust's destructor timing), Copy as the assignment
  operator, Clone gone, immut, String immutable + StringBuilder, Array<Char> the mutable text, collections following
  their elements, item 17 (a kept local built where it is kept), unique freed exactly; (3) later: a design note for
  reference counting owner trees (a limited carve-out), reuse in place, stack placement.
- 2026-11-03 CET: hybrid round 1 merged (0f194c5, fast-forward, full verify passed on its tip; scopesan, scopefuzz,
  fuzz free clean; bench machine code byte-identical): element reads never copy (D9h by evaluation order - widget tree
  3.9 s/1.33 GB -> 0.29 s/27 MB), loop-turn copies reclaimed (517 -> 1.9 MB), move at last use (D9i, 682 -> 420 MB),
  in-place calls through an element's field (two-phase, elements sharing no reference). NOT done: reference locals typed
  per assignment (NLL) - needs new section-8 design (a term for "a field of the cursor's referent" or per-version SSA
  terms; WIP patch /home/user/wt/mut/nll-wip.patch, untracked) - an xhigh round after the build batch; the T25d
  imprecision (an element of a constant literal scoped to the literal's temporary block) with it. Weekly 0.81. Next:
  the build batch (unique, Copy, immut, String/StringBuilder, collections following elements, item 17, unique freed
  exactly).
- QUEUED 2026-11-03 (the user): after the build batch, the NLL round (xhigh), then reuse in place (the user: "just
  build it") - then a bulk review over the three.
- QUEUED 2026-11-03: after the build batch, one xhigh section-8 round - NLL + O27 as placement + T22a's function values
  carrying inferred relations; then reuse in place; then a bulk review over them.
- 2026-11-03 CET: build batch part 1 merged (wt-unique 547adfe, verified on its tip; scopesan, scopefuzz, fuzz free
  clean; bench machine code byte-identical): E31d Copy() supplied for every type and declarable, called at every copy,
  Clone gone (tools/clone_migrate.olang); collections follow their elements; T13a `immut` types; a lost write fixed
  (Array<Char> lent as mut Array<U8>&). Left: String immutable (flip works, ~80 test sites + two-stage bootstrap +
  seed; tools/textbuild_migrate.olang committed, not in fix), unique + destructor timing, item 17. Agent's questions:
  declared Copy never elided (mine: keep), list.List stays a handle (mine: keep), StringBuilder.Push not renamed (mine).
- 2026-11-03 CET: the references study merged (docs/refs-study.md; QCS's three questions asked). Found by it, queued for
  the next compiler round: (1) BUG - `ps[i], ps[j] = ps[j], ps[i]` on Vec elements refused with E31 while `ps[i] =
  ps[j]` is accepted (the parallel form does not go through SetAt); (2) a whole-element store of a record (`ps[i] =
  P(...)`) costs +23% instructions / 1.8x time against writing its fields (the loop compiled branch-free - look at the
  store's lowering); (3) an array of small structs does not vectorize where the same data as separate arrays does
  (1.65x time) - check LLVM's interleaved-access vectorizing of the AoS loop.
- 2026-11-03 CET: the build made clear for a user (wt-build ec27b9f, full verify passed; wt-rootcheck 79e390a,
  consistency passed): a root README (prerequisites, `make`, use, the repository's map), `make` checks its
  prerequisites first (`make prereq`: x86-64 Linux, clang >= 18, C headers, libffi, LTO plugin, xz, memory - each
  failure naming its package), the seed's clang chosen as the compiler's (OLANG_CLANG, else clang-20/19/18/clang -
  plain `clang` only before), `all` the default target (was clean + build + run), `make install` (a link in
  ~/.local/bin); dev-stash.txt and boot.rc (agents' leftovers swept into migration commits) removed, gitignored, and
  `make consistency` fails on any root file not in its list. The user's own failure was not seen - asked to send the
  `prereq:` line if `make` still stops.
- 2026-11-03 CET: String immutable merged (wt-strimmut 0af07a3, full verify passed on b1cb691, HISTORY-only after;
  scopesan, scopefuzz clean; seed regenerated, bootstrap a fixed point): `type String immut extends Array<Char>`, written
  text an `Array<Char>` or a StringBuilder (`String(chars)` converts), textbuild_migrate in olang fix; S4c's parallel
  store of Vec elements through SetAt (the refs study's bug 1). Fixed on the way (pre-existing): `s Array<Char> = "ab"`
  aliased the constant (a lost write at -O3), Array<Char> == literal, M19g's views pass skipping Ref/RefMut views (seven
  cases compiled that must fail). Machine code: each main +18 instructions (os.Args copies each argument - item 17
  removes it), text -1.2%, regex -0.7%. FOR THE NEXT BULK REVIEW: its two D9i widenings (a loop mention counted where it
  stands; a returned whole-local copy placing the local where the result goes), a type over an immut type immut,
  immut-to-mutable conversion copying, `mut` globals of `String&`. Left of the build batch: unique + destructor timing,
  item 17 (the kept local built where it is kept) - then the section-8 round (NLL, O27 placement, T22a relations),
  reuse in place, a bulk review.
- 2026-11-04 CET: unique merged (wt-uniq cdb92ea, fast-forward; full verify, scopesan, scopefuzz passed on its tip;
  no seed needed; bench instructions identical, self-build unchanged): T13b `unique` (a fresh value lands by value,
  any other copy a reference, a slot given an existing one an error naming &, a by-value parameter hands its value on
  once, no Copy, holders and collections follow their parts, never with immut, a generic copying one refused at the
  call; tools/unique_migrate.olang in olang fix) and O15 destructor timing, Rust's (a value with destructors held by
  value runs them where its holder lets go - block exit, a callee's end unless handed on, a store over it, Destroy();
  a call's value no slot takes still registered where it lands, O16). Agent decisions 1-12 in HISTORY. Stopped at the
  week's 0.89: LEFT - Part C (a unique value's storage freed exactly at its destructor, free.olang, fuzz free),
  collections of destructor values by value, effects ignoring drop flags (a holder's Copy calling a fallible
  constructor refused). Found, pre-existing, unfixed: a destructor growing a Vec through a reference field's method
  turns holders of a local's reference into C2d errors (inline write accepted); T17c refuses a by-value parameter
  holding a reference put into an enum case. FOR THE BULK REVIEW: typed.Landings (per-path landing), the drop flags.
- 2026-11-04 CET: bulk review 7 (11b8d38..db71837: hybrid round 1, Copy, immut, String immutable, unique, O15 drop
  flags) started when the user allowed 95% this week, stopped minutes later when they withdrew it ("Actually, scrap
  that") - queued for after the 2026-11-07 reset, FIRST, before building more on these rounds (review checkout
  /home/user/wt/review7 at db71837, notes dir /home/user/review/bulk7, its brief in this session's transcript).


## Moved from plan.md on 2026-11-08 (the dated log from 2026-11-06 onward, verbatim)

- DIRECTIVE 2026-11-06 CET (the user: "next week (tomorrow) we build the entire compiler with the remaining features,
  verify, and then the compiler is done. then we do oann and settling experiments"): from the reset (2026-11-07 05:00
  CET), one agent at a time: (1) list every decided-but-unbuilt item - the ledger's decisions, CLAUDE.md's "not built
  yet", this file's queue - and add what is missing to the queue; (2) bulk review 7 and its fix round; (3) the build
  batch's rest (item 17, unique Part C, collections of destructor values by value, drop flags in effects); (4) the
  section-8 round (NLL, O27 as placement, T22a relations); (5) reuse in place; (6) the refs study's two items; (7)
  wt-uniq's two pre-existing bugs; (8) what (1) finds, and the structure-of-arrays container only if the user picks it
  (QCS 3); (9) a final bulk review with its fixes and a full verify (verify, scopesan, scopefuzz, fuzz) - the compiler
  done; then oann's port and the settling experiments. The 0.92 stop holds; the week read 0.97 at 21:45 CET on
  2026-11-06 (the coordinator's own long-context turns), so nothing more ran before the reset. The wake-up
  trig_01UpkSP1CvFmvUotAUWuyYCt carries these steps.
- 2026-11-06: QCS 3 decided (the user: "Do the columns solution") - `Columns<T>`, the built-in structure of arrays,
  is step 8 of the final batch (decisions.md "QCS (3) DECIDED" has its shape; spec first).
- 2026-11-07 01:05 CET (the user: "use up the last weeks tokens now. Ill see you tomorrow" - the last hours before the
  05:00 reset, past the 0.92 stop, taken because the user said so): started steps (1) and (2) of the directive, both
  read-only, side by side - the audit of every decided-but-unbuilt item (writing /home/user/review/remaining/LIST.md)
  and bulk review 7 (building in /home/user/wt/review7, notes in /home/user/review/bulk7/NOTES.md); each keeps a
  "## Progress" section so it can be continued if the limit stops it. The wake-up after the reset resumes them. Disk
  was 94% full after a container restart: freed to ~10 GB by deleting wt/uniq/build (7 GB) and wt/rework/build.
- 2026-11-07 CET: the audit finished - /home/user/review/remaining/LIST.md (outside the repo): (a) 19 decided by the
  user, 8 of them never queued: QBT type-level builders (`fn Color.FromHex`, `String.FromC`, `F64.FromBits`, std moves,
  `T.Functions`, trait-required builders), QBU + QBW (the type in front of every literal and comprehension -
  `Array<I64>[1, 2]` - built through `FromIter`, every std collection declaring one, `$` writing valid source; a
  repository-wide migration), QBP 7 `olang explain -asm/-ir` with LLVM's remarks, item 27's sharper C-call rule
  (effects.olang, free.olang), QBP 8 lane-comprehension fusion (measure first), D8f inferred result lengths and
  constructors taking arrays by value; (b) 14 of mine; (c) 24 limits and bugs; (e) QCU 1-3 open, the licence asked
  when the compiler is done. Spot-checked: no `FromIter` anywhere, CLAUDE.md still says "no type-level functions", no
  `-asm` option. The week follows LIST.md's proposed order: bulk review 7 + fixes; item 17, drop flags in effects and
  wt-uniq's two bugs; unique Part C then destructor collections; the section-8 round (design note first); reuse in
  place and the C-call rule; QBT then QBU + QBW (check.olang, after the section-8 round); Columns<T> (needs FromIter
  and QCU's answers); explain -asm beside them; then the smaller items, the final review and verify.
- 2026-11-07 01:35 CET: bulk review 7 finished (11b8d38..db71837; /home/user/review/bulk7/NOTES.md): 16 confirmed
  findings and a diagnostic - use after release or unsound acceptance: F1 a D9i move while the same call lends the value,
  F2 a join block's by-value holder ended before the wait, F4 a holder ended though its storage flows out (returned
  reference, stored, captured), F6 `Array<T>(n, fill)` duplicating a unique value, F12 spawned calls' arguments sharing
  one stack slot (every task reads the last), F15/F16 a unique value lent and handed on, or handed on with an alias
  live; wrong results: F3 a drop flag cleared before a later argument leaves, F7 parallel declarations not copying
  (pre-existing), F8 captures shallow and skipping a declared Copy, F10 a failed contract skipping drops, F11
  interpret running a check gap, F5 a failed test skipping by-value drops; over-rejections F9, F14 (+ d12); F13 a
  diagnostic. Its fix round started at once (still the user's "use up the last weeks tokens"): wt-bfix7 in
  /home/user/wt/bfix7, the directions in /home/user/review/bulk7/FIX-BRIEF.md, hand-off PROGRESS.md there.
- 2026-11-07 ~06:00 CET: bulk review 7's fix round MERGED (wt-bfix7, 27 commits; merge 654d60d; pushed master, wt-merge,
  designated branch): all 16 findings and d12 fixed (HISTORY.md "Bulk review 7, fixed"); the agent's own decisions: F1
  decided by mention (a plain read beside the copy keeps it), F15 a part read beside a hand-on allowed and a whole read
  into a local makes that local the holder, F4 registers where the storage lives (no new refusal), F9 a re-assignment
  after Destroy()/a hand-on renews the local, F5's guard only in test builds; found and fixed on the way: compile-time
  evaluation of a function returning a reference to its by-value local (lower.standInAway). Full verify on the merged tip
  passed but compiler/lsp.olang, OOM-killed (5.2 GB) beside the next round's build - it passed alone. Full verifies go
  through /home/user/vlock (one slot), agents told. Running: round "kept" (item 17, drop flags in effects, C1, C2,
  HeldTwo's C2d; /home/user/wt/kept, brief /home/user/review/rounds/kept-brief.md).

- 2026-11-07 ~07:35 CET: round kept merged (wt-kept f97dcf3, merge ab1253e; full verify passed on c5e751b, quick,
  scopesan and scopefuzz on b87af0c; the merged tip's verify running): item 17 (O28: a value local kept past its block
  or turn built where it is kept; os.Args 341 -> 320 instructions, one memcpy), drop flags in effects (typed.DropsRun,
  A5), C1 (a build through a derived scope goes to the program's scope), C2 (a case payload holding a by-value
  parameter's reference lifts its local), HeldTwo (a by-value holder's slot takes a held call). Found, not fixed:
  tests/runner.olang built twice in one build directory fails to link (B3i reuse, master too) - for a round on reused
  objects. Started side by side from ab1253e: round drops (wt-drops - destructor collections by value, then unique
  Part C; opus xhigh; /home/user/review/rounds/drops-brief.md) and round asm (wt-asm - explain -asm/-ir with LLVM's
  remarks; opus high; asm-brief.md). The /tmp sweep of old build temporaries was refused by the permission check.
- 2026-11-07 ~08:00 CET: the merged tip's verify passed; master and the designated branch at f913d9b. Started round
  deprec (wt-deprec from f913d9b; sonnet medium; /home/user/review/rounds/deprec-brief.md): QCW's `Deprecated:`
  doc-comment convention in olang doc, the language server, mcp and olang api - beside rounds drops and asm.
- 2026-11-07 ~08:15 CET: QCX read as answered (wrongly - see the correction below) and the errdata design note started
  (wt-errdata, opus high, /home/user/review/rounds/errdata-brief.md); it finished: docs/errdata.md (b746af3, no code,
  not merged).
- 2026-11-07 CORRECTION (the user: "the adds it then was fixing a typo. give me the options to build again"): QCX is
  NOT answered - "Add it then, not done" fixed a typo in the deprecation reply. Nothing of QCX is queued; re-asked. The
  order after drops/asm/deprec, without them: the section-8 round (design note first); reuse in place + the C-call
  rule; QBT then QBU+QBW; Columns<T> (needs FromIter and QCU 1-3); the smaller items and tidy; the final review and
  verify. What the user picks from QCX slots in by its files (errors carrying data on check.olang after the section-8
  round; packed structs beside it; the tooling items in free slots).
- 2026-11-07 CET: QCX answered (decisions.md): packed structs into the compiler's remaining work (beside the section-8
  round, disjoint files); benchmarks, coverage, the REPL + Jupyter kernel, saturating arithmetic and platforms after
  the compiler is done (no syntax - the user's rule); errors carrying data and struct patterns re-asked. Queued, next
  free slot (the machine was full: drops, asm, deprec running, load ~10): round "interp" - evaldump/evaldiff fixed, the
  corpus and std run under interpret, differences fixed, the comparison into make verify.
- 2026-11-07 ~09:05 CET: the user's two interrupts while dictating stopped all three running rounds (drops, asm,
  deprec - the harness reports them killed and will not resume them without the user's word). State at the stop:
  deprec and asm had committed and started their final verifies (still running as background processes: wt/deprec's
  verify2.log, wt/asm's verify.log); drops was at f24af92 with "quick, seed, verify, scopesan, scopefuzz, fuzz free,
  dead regions, goldens" left. Asked the user whether to restart them. Started round structpat (wt-structpat, opus
  high, /home/user/review/rounds/structpat-brief.md): struct patterns by field name, enums by both. Errors carrying
  data is decided; its build follows drops and structpat (same check.olang areas; the named payload items reused).
- 2026-11-07 ~09:10 CET (the user: "Yeah, keep building" - the stopped rounds restarted): deprec merged (97f95cc;
  its verify passed on its tip, master had changed only memory since, so no re-verify): `Deprecated:` doc-comment
  paragraphs read by olang doc (text mark, HTML struck through), mcp, the language server (hover, completion tag, a
  hint at uses) and olang api (a `deprecated` row, not breaking). Round drops continued by a fresh agent (opus xhigh,
  from f24af92's PROGRESS.md). asm's verify running; merge when it passes (golden rows resolved per file, then a verify
  on the merged tip). Running: structpat, drops. Next free slot: round interp (#86).
- 2026-11-07 ~10:05 CET: round structpat done (wt-structpat 15ce44d, verify passed on its tip): S13i struct patterns by
  field name, S13b payload fields by name too (positions first), exhaustiveness over a struct's fields; lowering, emit,
  the evaluator and interpret unchanged (tests/structpat.olang's baked global and decided assert agree); `case
  Point(1, 2)` gone (a struct path in a pattern is always a struct pattern - tests/shared.olang migrated); found and
  fixed: `case Shape.Rect(k + 1, h)` said "unknown name 'h'", `case Opt<I64>.Some(x)` did not bind x. asm + deprec
  merged on wt-merge (9241f1d): the full verify had two tests and drvdiff killed by memory (the cgroup's OOM killer),
  the two re-run and passed, drvdiff re-running; then master, then structpat merged and verified.
- 2026-11-07 ~10:30 CET: round drops done (wt-drops cad927a; verify, scopesan, dead regions, scopefuzz, fuzz free all
  passed; bench machine code identical): collections hold destructor values by value (Vec/Map/Deque/Box of a unique
  element are unique and end their elements, last first; vacate as a statement ends in place, `occupy` stores into
  room; conditional destructors on generic structs, only in instances holding such values; C11 judged per instance -
  List<File>, Buf<T>, run-time Array<T>(n) of them refused); seed regenerated. Part C (storage freed at the destructor)
  measured and not built: needs a drop check - asked the user (QCZ). Found and fixed: run-time comprehensions,
  Array<T>(n) and a.Copy() of destructor values never ended (now C11); G9d bound T to mut Res& inside Vec<T>; a store
  over a destructor value through an element was a checker gap; the prelude's sorts stored over vacated positions;
  Destroy() of a holder declared in a loop body. Merge after structpat's verify: seed taken from drops (bootstrap
  proves it), goldens recaptured with the merged compiler.
- 2026-11-07 ~10:45 CET: started round interp (wt-interp, opus high, /home/user/review/rounds/interp-brief.md) and the
  section-8 design note (wt-sec8, opus xhigh, /home/user/review/rounds/sec8-brief.md: NLL, O27 as placement, T22a
  relations, C3/C4/C6, T25d), both from wt-merge fe143d3. Merge queue: structpat's merge verify running; drops next
  (seed from drops, goldens with the merged compiler); then errors carrying data (round 1, after interp - both touch
  eval.olang), packed structs beside the section-8 build.
- 2026-11-07: QCZ decided - drop order computed from references (holders first, cycles an error), then Part C. Queued
  as round "dropord" (design note first, opus xhigh) once drops is merged; it touches check's drop flags, lowering's
  defer order and free.olang, so it runs after the section-8 build or between its rounds, by files.
- 2026-11-07 ~11:15 CET (the user: build everything now, no verifies or reviews until one at the end): structpat's
  merge verified and on master; drops merged (dafb690, seed from drops, tokens/trees recaptured; no verify - the rule).
  Running: interp, the sec8 design note, errdata2 (errors carrying data, rounds 1/3/4), packed (packed structs),
  dropord (drop order by references, Part C, reuse in place, the C-call rule). Next: the sec8 build after its note;
  QBT type-level builders; then, last and alone (it migrates every literal), QBU+QBW (the type in front of every
  literal, FromIter) with Columns<T>; the smaller items (LIST.md C5-C8 ...); then goldens, the seed, one full verify,
  the gates and one bulk review with its fixes.
- REMEMBER LATER TODAY (the user, 2026-11-07: "I want to do a compact and trim the Claude.md later today. So remember
  that."): (1) remind the user to run /compact on this session once the current batch is merged (only they can); (2)
  trim CLAUDE.md's settled decisions to terse entries, every detail kept in HISTORY.md (an agent, sonnet, after the
  last language round merges - every agent reads CLAUDE.md, so not mid-push). Measured: CLAUDE.md ~58k tokens of the
  ~100k every agent loads.
- 2026-11-07 ~12:30 CET: before the user's /compact, the coordinator's state (running rounds, merge steps, the order of
  what is left) is written to /home/user/review/rounds/STATE.md - read it first after the compaction.
- 2026-11-07 ~19:45 CET: THE COMPILER DONE; CLAUDE.md trimmed to 94 KB (from 267 KB) the same evening, every entry verbatim in HISTORY.md. Every round of the day merged, bulk
  review 8 and its three fix rounds merged; the final full verify passed on 1879ade (master), and the gates on it:
  scopesan (1,866 tests under -debug -sanitize, all ok), scopefuzz (200 programs, 1,129 scenarios, 0 findings), fuzz
  free (200 programs, 1,537 places freeing at once, 0 findings), the interpreted comparison with dead regions on (only
  the listed differences). Last fix: B12a's foreign-target refusal for this-machine modes said before the clang check
  (a clang-18 container). Next: the trim merged, then the after-done items (benchmarks, coverage, REPL + Jupyter,
  saturating arithmetic, platforms, olang get) and oann's port - the user's order.
