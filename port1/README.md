# port1: a soundness review of the port's memory placement (2026-10-22)

Read-only review of `compiler/scope.olang` (section 8, the plans) and how `compiler/lower.olang` and
`compiler/emit.olang` carry them out, on master 466fd4c. The port was built by stage 0 (`build/out build
compiler/olang.olang`, i.e. stage 1); each program here was built by it and by stage 0 with `build -debug -sanitize`
(B2f) and run. `run.sh NAME` does that (`PORT=.../build/compiler_olang STAGE0=.../build/out ./run.sh l01`).
`churn.olang` is imported by most programs: it allocates and frees so a stale reference reads reused memory.

## CONFIRMED

### 1. A task's built result is never fitted against its targets (P1g, O25, O12, O23a) - use-after-free
`compiler/scope.olang` `spawn()`: the targets are fitted only when the task's value is `ValKind.Existing`. A built
(`Fresh`) result is placed at `dest` - the longest-lived of the targets' slots, and nothing when that slot is no
run-time term - and then stored into every target with none of the checks `assign()` makes (the per-target exact fit,
`freshIntoUnknown`, `bindingUnknown`, `instanceOutlivesArg`). The clause defaults go through `clauseBuilds(.., dest,
..)` the same way.
- `l01.olang`: `spawn a, b = two(i)` with `a` outside the loop and `b` inside it; the result is built where `a` lives,
  `b.next = Node(99)` then builds in `b`'s block and stores into `a`'s node. Port: `use after scope closed`. Stage 0:
  P1g "these targets live in different scopes, and the results are built in one". (`l02.olang`, the same as a plain
  destructuring: both refuse, O25.)
- `l03.olang`: `spawn h.r = mkNode(i)` with `h.r` a `&src` field of a parameter (a derived scope). Port: use after
  scope closed (the node is built in the join's scope). Stage 0 accepts it and runs correctly; the port refuses the
  same store written as an assignment (`l03b.olang`, C2d "builds through a '&p' field whose scope is not known").
- `l04.olang`: `spawn arr[0] = mkNode(i)` with `arr` a conditional of two arrays from different scopes (a set). Port:
  use after scope closed. Stage 0: O12. As an assignment both say O12 (`l04b.olang`).
- (`l07.olang`, an `Existing` result into a `&src` field of an instance inside another: refused by both, O20 - the
  Existing path fits.)

### 2. Declared array types (String, `type Nums Array<I64>`) escape "an array is held by reference" (T7a) - use-after-free
`compiler/check.olang:6708` `runArrayValue` tests `KindOf(t) == Array` on `t` itself, never on `c.under(t)` (which the
D9a parameter check, line 2333, does use). So every T7a check built on it - a field (9203), an array's element type
argument (6780), a lambda result held in an array (7216) - lets a `String` held by value through. Stage 0 refuses all of
these with T7a; the port accepts them, and the storage it gives the value does not last:
- `r03.olang`/`r04.olang`/`r05.olang`: a constructor field `t := $n "..."`, read after the instance is returned from a
  function (`r04`) or assigned anew in a loop (`r05`). Port: use after scope closed (`r03`, read in the same block,
  happens to run).
- `r06.olang`: `t String = ...` and `a Nums = ...` fields, written with their type.
- `r07.olang`, `r08.olang`: `Array<String>(3, "init")` assigned text in a loop, `List<String>` pushed text in a loop.
- `r11.olang`: `Map<I64, String>` and `Box<String>` (a generic struct's field of type T bound to String).
- Control: `r12.olang`, the same with `Array<I64>` - the port refuses (inside std/prelude/map.olang rather than at the
  program's use).
- `r01.olang` (a constructor's own text field pushed into a List it holds) runs correctly but is accepted the same way.

### 3. An enum payload holding an array by value is accepted (D9a / T7b) - use-after-free
The port never applies D9a to an enum case's payload parameters (any array type, declared or not). Stage 0: D9a.
- `r10.olang` (`A(s String)`) and `r10b.olang` (`A(s Array<Char>)`): the payload made in a function, the value kept
  across a loop, then matched. Port: use after scope closed.

### 4. A comprehension's grown buffer is made in the program's scope (lowering) - unbounded growth
`compiler/lower.olang` `yield()`: when a comprehension's buffer is full, the bigger one is `NewArray(mir.ScopeRef.Program,
...)`, never the comprehension's site. `j01.olang` (a comprehension over a 5,000-element List, 2,000 times): port
208,720 KB peak, stage 0 2,000 KB.

### 5. D9b's copy of a generic's by-value array parameter is made in the program's scope (emit) - unbounded growth
`compiler/emit.olang:1481`: a by-value run-time array parameter the body writes is copied with
`copyArray(mir.ScopeRef.Program, ...)` in the prologue, so every call leaks its copy. `j02.olang` (one million calls
writing a 78-character String): port 126,672 KB, stage 0 1,736 KB.

## PLAUSIBLE (traced, not reproduced separately)
- The spawn clause defaults (`clauseBuilds(id, dest, sp)` in `spawn()`) build at the same unchecked `dest` as finding 1:
  a `catch default Node(1)` on a task with targets in two scopes, or into a derived/unknown target, should show it too.
- `lower.renderStr` passes the program's scope for a `Str`'s receiver scope variables (stage 0 passes a scope it opens).
  Sound while E11c holds (nothing is built where the receiver lives); a miss there would build into the program's scope
  (a leak, not a use-after-free).

## Converse: programs stage 0 refuses that the port accepts
- A differential over the scope fuzzer's generator (`fuzz_fuzz.debug scopeshow`, seeds 1-1540, 12 scenarios each,
  `compile` with both): 105 scenarios the port accepts and stage 0 refuses; each built alone by the port `-debug
  -sanitize` and run against `olang interpret` - all agree, no sanitizer report (`fz45s6.olang` is one: the port moves
  `q6_2` into the result scope, O26a, where stage 0 says O25).
- The scope fuzzer itself with the port as `$OLANG`: seeds 1-450, 2,067 scenarios run, no findings.
- The checks/cases that must fail and that the port builds (20): none is a section-8 memory error but
  `s5mapgetreturn.olang` (O10c in stage 0), which the port accepts and which runs clean under the sanitizer (it moves the
  map with the list). The rest are evaluator cases (S18c, K2, T29d, D13c, E33).
- `m01.olang` (`W&outer(outer)`, refused by stage 0's C2d) and `s01.olang` (a generic's by-value String parameter sliced
  and returned, O10d in stage 0) are accepted and run clean.
- Found on the way, not memory: the port reports no D11a for `f mut fn(...) ... = ...` on a local (stage 0 does), and
  still reads `take` as a keyword (`fn take(...)` is L9).
- Stage 0, for comparison (it will be removed): `g03.olang` (a constructor reassigning a field holding an instance
  with an `&src` field) and `b04.olang` (such a value field replaced through a reference to its container, in a callee)
  are use-after-frees in stage 0; the port refuses both (O25).

## Probes that came out sound (both compilers agree, or the port refuses)
a01-a04 (O26a lists, conditionals, spawn targets of one scope), b01-b05 (O23a records: reassigned value fields, parallel
exchange, copies to outer locals), c01 (value String stores: plain, parallel, swap, join, match value, try default),
d01-d02 (T7b returns through conversions, fixed arrays on the frame), e01-e03 (captures, closures building through
captures, called in tasks), f01 (task temporaries kept by the callee), g01-g02 (records through an iterator, a recursive
O13c), h01 (joins landing in fields, Lists, Maps), i01 (a keep known only through a call cycle), k01-k02 (O18a parts of
call results), l05 (destructuring and parallel stores into unknown and derived targets), m02-m03 (O17/O17b handle and
split lends), n01 (E28 choices of borrowed results), o01 (a lambda returning a capture as built), p01 (a three-clause
for's block), q01 (P2: task arguments, captures, receivers, slices made inside the join).

Also run: 3,626 old review reproducers (`/home/user/review/{batch6,chk5,...,vec7}`) built by the port `-debug -sanitize`;
87 still compile under today's syntax, none reports.
