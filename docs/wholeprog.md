# Whole-program compilation: what it would gain, and how to keep builds fast (wholeprog)

A survey, 2026-11-08; no compiler code changed. **Decided the same evening** (section 9: questions 1-5 yes, question 5
now rather than later); the build order is section 10. The user is reconsidering the rule "compile one module at a
time" (`.claude/memory/rules.md`, "Compile per module, whole program only on top"; SPEC B3i), because whole-program
facts keep coming up: field slots holding storage of two scopes (docs/refusals.md, question 4), early freeing in code
of a module compiled on its own (O8d), function values followed into calls (docs/fnvalues.md), G42's facts about C,
and docs/genrefs.md's holder records. The ledger's working proposal (`.claude/memory/decisions.md`, question 4):
objects are reused unless a fact they were built from changed, and a whole-program fact records which modules read it.

This note answers four things: what whole-program facts would gain (section 2), what is kept across compilations and
what an edit recompiles (section 4), what must be closed or assumed at each boundary (section 5), and the options with
a recommendation (sections 6-7). Section 8 is a bug found on the way. Section 9 holds the direction questions.

## 0. Summary

- **The front end is already whole-program.** Every build loads, checks, evaluates and judges scopes over the whole
  program from source (DESIGN.md 3.4 item 2). What the per-module rule limits is narrower than it sounds: **what a
  module's object may depend on** - its own module and its imports, never its importers or the rest of the program
  (B3i). Facts computed over the whole program today reach code in only one place, the root's object (instances,
  twins, clones, an `any`'s lazy table slots, the export entries).
- **The biggest gain is early freeing outside the root's object.** Today only code emitted in the root's object frees
  early (free.olang, `rootEmitted`). Measured here: the earlyfree fixture `session.olang` peaks at **12.6 MB**; the
  same program with its `Session` type moved into a module of its own peaks at **260 MB** (20x). Every non-generic
  type of a library, std's included, behaves like the second. LTO cannot recover this: it is a choice of where
  storage is built, made before LLVM sees the code.
- **The other gains are real but smaller**: weak links and holder records into another module's types (genrefs),
  G42's facts about C sharpened per library, field sets (question 4), devirtualizing an `any` with one or two
  implementing types, and fewer compiled bodies in a clean build. Cross-module inlining, constant folding and dead
  function removal LTO already gives in the default build.
- **One fact already leaks across the boundary, wrongly.** G42's `f.WritesGlobals` depends on whether the program
  hands an export fn to C, a whole-program fact, but the reuse record of the module reading it is keyed on that
  module and its imports. Built after another program in the same directory, a program prints `true` where a clean
  build prints `false` (section 8). This is exactly the failure "facts with readers" is designed to prevent. Fixed
  2026-11-08 by keying the record on the facts read, with E31b's in-place calls, found the same way.
- **Recommendation: facts with readers, delivered in three forms.** Keep objects per module and shared between
  programs. A whole-program fact reaches code (1) as a link-time constant where it chooses between two paths at a site
  (early freeing, generational types): objects stay program-independent and LTO folds the constant; (2) in the root's
  object where it makes code that exists only for this program (instances, twins, clones), as today; (3) in a module's
  own object only where neither fits, with the fact's hash in that object's reuse key. Full whole-program compilation
  is not recommended: it gives up object sharing (which took a test build from 223 s to 55 s) for little LTO does not
  already give.

## 1. Where things stand

A build has four layers, each with its own reuse:

| layer | over what | reused how | the compiler, measured |
|---|---|---|---|
| front end: load, check, evaluate, scope, free, effects | the whole program, from source, every build | not at all (only C header translations are cached) | load 0.36 s, check 2.5 s, evaluate 0.3 s, scope 2.4 s (this note, `OLANG_TIMES=front`, load average 16; 3.9 s user in all on a quiet machine, HISTORY "Port M9, round 7") |
| lower and emit | one module at a time | skipped where `build/rec` holds a record under the module's key: its text, its embeds, every module its imports reach, the build's inputs (B3i) | 3.6 s for all 44 modules, clean |
| clang | one object per module (cut into parts over 1-2 MB), the root's with main and the instances | named by a hash of its IR, clang flags and version; shared by every program in a directory, and between directories with `OLANG_OBJECTS` (B3j) | most of a clean build: the -O3 self-build 176 s of CPU |
| link | the program | skipped when its stamp matches (`BIN.link`); full LTO, or ThinLTO with its cache at 8 MB of IR or more | an -O3 edit of the compiler 43 s, mostly the ThinLTO link |

What a module's IR may depend on is therefore fixed: its own module, its imports' facts (summaries, signatures, baked
globals, inferred error sets, scope obligations, layouts), and the build's mode. A fact that needs the importers - who
calls this function with what, who stores what into this field - is either:

- **made into code in the root's object** (B3d): generic instances, an `any`'s default slots reached by some call
  (T32a), export fns' C entries and error numbering (X12, X14), and, as designed in fnvalues 4.4, twins and clones;
- **not used for code at all**: early freeing outside the root's object (free.olang: "code in a module compiled on its
  own ... makes no regions"), genrefs' reclaiming in a non-generic structure's own module;
- **used by accident**: G42's C facts and E31b's in-place calls (section 8; now keyed).

The scope pass, the field-binding inference (O23a, "a monotone whole-program fixed point") and inferred error sets
(R1a) run over the whole program, but what each puts into a module's code follows from callees only: a caller's needs
reach a callee as hidden scope arguments (O4b) rather than as changes to its code. So placement, the core of section
8, already has its whole-program answer and loses nothing at the boundary.

## 2. What the boundary costs today

The table first; the larger items after it.

| # | where | today, at the boundary | with whole-program facts | how much | LTO gives it? |
|---|---|---|---|---|---|
| 1 | early freeing (O8d) in non-root modules | every let-go site keeps until its scope closes | the final step's decision reaches every module | 20x peak on `session` split into two modules (2.1); every non-generic library type | no - placement precedes LLVM |
| 2 | genrefs: reclaiming in a type's own module; `weak` from an importer (genrefs Q4, Q5) | a non-generic structure's let-go sites keep; an importer's `weak` to a library type holds strongly | both reclaim | the price genrefs section 6 names; the same kind of loss as row 1 | no |
| 3 | G42's C facts (`CallsC`, `Allocates` ...) | any C call may call any export fn back where the program hands one to C | per library: C of library L calls back only export fns given to L | decides `assert not f.WritesGlobals` and early freeing across C calls (free.olang condition 3) | no |
| 4 | field slots of two scopes (question 4; o25gfieldbinding, o23alias*) | refused | a field carries its set of scopes; builds through it found at run time (O29) | three constructed cases; no real code yet | no - acceptance |
| 5 | function values followed (fnvalues) | judged by the written type at every boundary | twins and clones, in the root's object | 10 refusals gone; a sort with a lambda ~1.4x faster (fnvalues 4.8) | partly: inlining after LLVM's own specialization, within its limits |
| 6 | a function value stored once in a field (fnvalues question 1: `TakeWhileIter.pred`, `Generator.next`) | dynamic | the set of functions a field may hold, as row 4 | every generator walk and adapter, where LLVM does not already inline the walk | partly (optsurvey item 4) |
| 7 | devirtualizing `any Trait&` | one load and an indirect call; no inlining | a trait with one or two converted types calls them directly | small; GUIs' open sets have many types | only where the table is a constant after inlining |
| 8 | dead code before clang | every body of every non-root module is lowered and compiled (so the object is shared) | only reached bodies | a clean build of a small program; costs sharing | removes them at the link, not before |
| 9 | cross-module inlining in `-quick`, `-debug` and ThinLTO | calls (the runtime's six hot bodies aside); ThinLTO imports no function over its limit | small imported bodies copied `available_externally` | measured 7x where the runtime lacked it (DESIGN.md 1.10) | yes in full LTO; needs only callee facts |
| 10 | layout inference (refs-study) | not applicable: layout is declared (QCS declined references by default) | - | - | - |
| 11 | placement, escape, obligations | none: already whole-program, delivered by hidden scope arguments | - | - | - |
| 12 | run-time checks | none found: contracts and asserts are decided per call with the callee visible | - | - | - |

Rows 1-4 need a fact from importers; rows 5-8 need the program's set of something (functions reaching a parameter,
types reaching an `any`, bodies reached); row 9 needs no whole-program fact at all and can be had under today's rule.

### 2.1 Early freeing outside the root's object (row 1)

free.olang decides, over the whole program, which places are the only holders of what they hold, then writes regions
into the plans of code emitted in the root's object only - the root module and every instance. A non-generic type's
methods in any other module keep. The reason was B3i: a module's object must not depend on decisions about its
callers' uses. memory.md 3.5 designed the answer - each site reads a constant the root's object defines,
`@olang.sole.<place>`, folded by LTO - but it was not built.

Measured with `checks/fixtures/earlyfree/session.olang` (a status text replaced a million times in a field), built by
wt-merge's compiler:

| program | `-memory` says | peak RSS |
|---|---|---|
| as written, one module | 1 place lets go of storage, 1 frees it at once | 12.6 MB |
| `Session` and `Tick` moved into `sess.olang`, the loop in the root | no place lets go of storage | 259.7 MB |

The second is how a library's cache, tree or session object is written. In the compiler's own `-memory` report, 8 of 39
places that keep name "its new value is built in a module compiled on its own" (the compiler has tasks, which stop the
rest). std's non-generic functions (json's tree building, csv, regex, the prelude's StringBuilder methods) never free
early today.

### 2.2 genrefs (row 2)

genrefs.md section 6 keeps the per-module rule and names its price: "a non-generic structure's let-go sites in a module
of its own ... keep", and an importer's `weak` to another module's type holds strongly. Its questions 4 and 5 put the
whole-program variants, both delivered as link-time constants. They are the same mechanism as 2.1 and should be one
round.

### 2.3 G42 and C (row 3)

effects.olang treats a C call as "anything" where C may call an export fn back: the program is built `-library`, a C
function is given an export fn, or the program links C of its own and has one. That is a fact about the whole program,
and coarse: once any export fn is given to qsort, a `getuid()` call in an unrelated module may "write globals". With
the program's facts per C library (which export fns are given to which library's functions, `link "name"`), a call into
library L could call back only what L was given. C compiled as IR (`import fast "fast.c"`) could be read directly: does
its IR name an export fn or call through a pointer. The fact reached module code unkeyed until section 8's fix.

### 2.4 Field sets (row 4, question 4)

Accepting `c.cur = g` where `cur`'s binding is exact means a field carries the set of scopes its stores give it: reads
judged against the shortest, stores against the longest, a build through it finding its scope at run time (O29). The
facts come from every module storing into the field. Their effect on code is small: only the build sites through such
a field change (a run-time lookup in place of a known scope). Most of the cost is in the front end, which already sees
every store. So question 4 does not need objects to change shape; it needs (a) the front end's analysis, (b) a rule for
where the error is said when a store in module B widens module A's field, and (c) a rule at a precompiled library's
boundary (section 5).

### 2.5 Function values, `any`, dead code (rows 5-8)

fnvalues already places its twins and clones in the root's object, as instances are, so they fit today's rule. The
price is that the root's object (or the instances object under `-debug`) changes when the set of twins does. Following
a function value through a field (row 6) is the field analysis of 2.4 applied to function types.

Devirtualizing an `any` with one implementing type is cheap to do and small in gain. Dead code before clang would make
a clean build of a small program cheaper but break object sharing; the prelude's object compiled once per directory is
worth more (DESIGN.md 3.4 item 9).

### 2.6 What LTO already gives

In the default build (`-O3`, full LTO; ThinLTO at 8 MB of IR or more): inlining across modules, constant propagation
across calls, folding of link-time constants and baked globals (K2), removal of unreached functions, LLVM's own function
specialization within its cost limits. What LTO cannot give is anything decided before LLVM: where storage is built,
what is accepted, which facts an `assert` decides, how a type is laid out. `-quick` and `-debug` have no LTO at all.

## 3. Three kinds of whole-program fact

How a fact reaches code decides what it costs the build:

| kind | examples | where it lives | what an edit costs |
|---|---|---|---|
| (A) acceptance only | field sets (2.4), T22a's function-value judgments, refusals | the front end | nothing beyond the front end, which runs whole anyway |
| (B) a choice at a site | early free or keep (2.1), generational or not (2.2), lookup or known scope (2.4) | a **link-time constant** per site or per type, defined in the root's object; both paths in the module's object | the root's object and the link; no other object. Under LTO the constant folds; in `-quick`/`-debug` a load and a branch per site |
| (C) code that exists for this program | instances, twins, clones, an `any`'s default slots, export entries | the root's object (B3d) | the root's object, as today |
| (D) a value folded into a module's code | G42 constants read in a body; a decision too large for (B) | the module's own object, **keyed by the fact's hash** | that module's lowering and, if its IR changed, its clang run |

(D) is the "facts with readers" of the ledger proper. (B) and (C) are its cheaper forms: they keep every module's
object independent of the program, so the prelude's and std's objects stay shared between programs and test files.

## 4. What is kept across compilations

### 4.1 Today

- `build/rec/IDENTITY.KEY`: a module's IR (in parts), its size, the instances it names; keyed by the module's text,
  embeds, transitive imports' texts and the build's inputs (B3i). `OLANG_CHECKREUSE` emits afresh and compares.
- Objects `IDENTITY.HASH[.main|.test|.inst][...].o`, named by IR, flags and clang version; `OLANG_OBJECTS` shares them
  between directories (B3j). `.loc` objects for failed checks' texts (B3l).
- `build/olang_runtime.<hash>.o` and `olang_dyncall.<hash>.o`, once per configuration.
- `BIN.link`: the link's stamp. ThinLTO's own cache for programs of 8 MB of IR or more.
- `OLANG_CACHE`: remote repositories by commit (olang.lock), C header translations (`cimport/`).
- Nothing of the front end: no summaries, no typed bodies, no scope plans.

### 4.2 With facts and readers

Added to the above, all small, all text:

- **A fact table per build**: each whole-program fact by a stable name (`sole place Session.Status`, `gen type
  Widget`, `fields cur of Cursor`, `program hands export fns to C`, `twins of sortMergeRuns`), with a hash of its value.
- **A reader record per module record**: the sorted (fact name, hash) pairs its lowering read. A module's record is
  reused when its key matches (as today) and every fact it read still has the hash it read.
- **The root's record**: unchanged in kind; the link-time constants (kind B) are written into the root's object, which
  is rebuilt whenever any of them changes - a small object, a few bytes per constant.
- **Later, if the front end becomes incremental** (question 5): per-module summaries and signatures, keyed the same
  way. That is the same design one level up (Rust's query system with its red/green dependency graph; Go's export data
  holds callee facts only, as olang's imports do today).

Readers can also make reuse *finer* than today. Today an edit anywhere in `types.olang` changes the key of every
module importing it, transitively: 25 of the compiler's 44 modules (92k lines) are lowered and emitted again, even when
the edit changed one body and no fact an importer reads. With the import edge recorded as facts too (signatures,
summaries, baked values), only modules whose read facts changed would be lowered again.

### 4.3 What an edit recompiles

Modules a change to each compiler module reaches through imports today (lowered again whatever the edit):

| module | importers, transitively | their lines |
|---|---|---|
| `source` | 37 | 107k |
| `msgs`, `token` | 32, 31 | 91k |
| `types` | 25 | 92k |
| `check` | 14 | 41k |
| `scope` | 11 | 26k |
| `lower`, `eval` | 9 | 15k |
| `emit`, `lsp` and the other leaves | 1 | 1.4k |

| edit | today | facts with readers (forms B, C, D) |
|---|---|---|
| a leaf body, no fact changed (the common case) | front end + that module + root; clang where IR changed (3.5 s for the compiler, HISTORY round 8) | the same |
| a body in a widely imported module, no fact changed | front end + all transitive importers lowered (up to 37 modules); clang only where IR changed | front end + that module + root |
| a body whose summary changes (a new obligation, an allocation that flips `Allocates`) | as the row above | that module + modules that read the summary + root; constants (B) cost only the root and the link |
| the first export fn handed to C; the first `spawn` in a program; the first `weak` to a type | root and link | modules that read the flipped fact (D); for (B) the root and the link |
| an edit that changes every fact (a std type's layout, the prelude) | everything | everything |

The worst case is the same as today's: every module. The typical case is today's or better, and better exactly for edits
to widely imported modules, which today cost the most lowering.

### 4.4 The cost of tracking

Estimate for the compiler (113k lines, ~6,600 functions in compiler/, about 20k lines of std beside):

- **Facts**: one per function summary (~10k with the std reached), one per candidate place (39 of the program's, a few
  hundred with std's), one per field with a binding of its own, a handful of program-wide flags. Tens of thousands of
  short hashes; the scope pass already writes summaries' canonical text for its component reuse (`compRun`), so the
  hashing is near free: well under 100 ms, against a front end of 4-6 s.
- **Reader records**: tens to a few hundred facts per module read for code generation; ~10^4 pairs in all, a few
  hundred KB on disk.
- **The real cost is discipline**: every read of a whole-program fact by lowering or emission must go through one
  accessor that records it. A read that bypasses it is a stale object - the bug of section 8 is such a read. The guard
  is `OLANG_CHECKREUSE`, which caught it at once once two programs shared a directory.

How to measure, as the build goes:

1. `OLANG_TIMES` gains a `facts` row (hashing and the reader check).
2. `OLANG_SCOPESTATS`-style counts: facts, readers, records reused and why not.
3. Replay the last 100 commits of compiler/: for each, count modules lowered again and objects compiled under today's
   keys and under fact keys. This gives the typical edit's cost on real history, not on a guess.
4. A verify scenario: the suite's programs built in one shared directory under `OLANG_CHECKREUSE`, so a fact read
   without being recorded fails the verify, as section 8's did by hand.

## 5. The boundaries

| boundary | what is closed or assumed there |
|---|---|
| `extern fn` | the body is unknown: it does what its kind allows (effects: "anything" where C may call back; X8's math and the known lists aside). A place let go across it keeps where C may call back. Unchanged |
| an export fn handed to C (X13) | C may call it during any later call into **the library it was given to** (sharpened from "any C call", 2.3); its parameters are judged by their written types, as any function value's |
| C imports and C files as IR (X17-X22) | headers: as extern. A C file compiled to IR: its IR may be read for which export fns it names and whether it calls through pointers, deciding the callback fact exactly. LTO inlines across, as today |
| `build -library` (X14) | the library is a program whose callers are C: every export fn may be called at any time, by any thread C has, with whatever its parameter types allow. The program's facts are computed with each export fn as an extra root. Everything else is as a program's |
| remote packages (olang.lock) | compiled from source inside the program: no boundary. A pinned commit gives stable texts, so their records are reused like any module's |
| a precompiled std or library (none today) | **the defining module decides**: its field sets from its own stores only, generational by its own `weak`s, its early freeing through link-time constants (its object carries both paths). The facts it ships beside its object are callee facts only. A store by the user that widens a field set is refused at the user's store, naming the field and the copy to write instead - never an error inside the library |
| `compile` (one module to an object) | as a module of a program not yet known: kind (B) constants left undefined until a build links it, kind (C) code not made. Today such an object frees nothing early; with constants it frees what the final link decides |
| the language server | checks a file as the root of its program (its imports, not its importers), as today. A whole-program error caused by an importer shows when the importer is checked |
| `interpret` | runs from source; nothing is reused |

"The defining module decides" is also what keeps `olang api` honest: a library's facts are part of what it exports,
so a change narrowing a field set or making a type generational is a row `olang api` can report, never a silent change
that one of its users discovers as a new refusal.

## 6. Options

| | A. keep the rule as built | B. facts with readers (the ledger's proposal) | C. full whole program | D. B delivered in forms (recommended) |
|---|---|---|---|---|
| what it is | a module's object depends on its module and imports; whole-program code in the root's object only | any whole-program fact may reach a module's object; the object's key holds the hashes of the facts it read | the program compiled as one unit: one object, or every object keyed by the program | B, but a fact reaches code as a link-time constant (B) or in the root's object (C) wherever it can, and keys a module's object (D) only where neither fits |
| compile speed, an edit | as today | as today or better (4.3); a fact flipping recompiles its readers | every edit compiles the program: the -O3 self-build was 8 minutes as one object (DESIGN.md 1.11) | as B, and a flipped constant costs only the root and the link |
| compile speed, many programs (tests, checks) | objects shared: the prelude compiled once per directory | objects that read program facts differ per program, so less sharing | no sharing: the test build of tests/shared.olang was 223 s before sharing, 55 s after | objects stay program-independent: sharing as today |
| memory and freeing | early freeing only in the root's object and instances (2.1: 20x on a split program) | early freeing everywhere | everywhere | everywhere; `-quick`/`-debug` pay a load and a branch per let-go site |
| what library users see | nothing at a distance; but libraries hold memory | refusals and decisions at a distance, unless a rule says where | the same, everywhere | "the defining module decides" at a precompiled boundary; at source, errors at the widening code |
| risk | low; one bug (section 8) | a fact read without recording it is a stale object; guarded by OLANG_CHECKREUSE | low for staleness; high for build time | as B, with fewer facts reaching objects at all |
| work | none (fix section 8) | an accessor for facts, records, a verify scenario | small in the compiler, large in build time | as B, plus link-time constants (memory.md 3.5's design) |

Prior art, in a line each: Go and OCaml compile per package with callee facts in the interface (today's olang); Swift
compiles a whole module at once in release builds and incrementally in debug; Rust compiles per crate with an
incremental query system that records which results each result read (option B, one level up); MLton is whole-program
and known for slow builds; Zig compiles one unit and is building incremental compilation by dependency tracking.

## 7. Recommendation

1. **Replace the rule** with: "A module's object is reused unless something it was built from changed - its module, its
   imports, or a whole-program fact it read. Whole-program facts are computed in the final step and reach code as a
   link-time constant, in the root's object, or, where neither fits, in the module's object keyed by the fact."
2. **Fix section 8's bug first** - it is the first fact with readers, and the smallest test of the accessor.
3. **Build early freeing everywhere next** (2.1, with genrefs' questions 4 and 5 as one round): link-time constants
   per let-go site, defined by the root's object. It is the largest gain, needs only form (B), and changes no object's
   independence from the program.
4. **Field sets (question 4)** when real code hits them or after fnvalues round 6, as the ledger says: front-end
   analysis, form (D) for the few build sites, "the defining module decides" written into B3i for precompiled
   libraries.
5. **Keep the front end whole-program from source.** It is 4-6 s on the compiler; revisit when a leaf edit's front end
   passes ~10 s or the language server needs it (question 5). The facts-with-readers records are the shape an
   incremental front end would take, so nothing built now is thrown away. *(Overruled by the user's answer to question
   5: the incremental front end is built now, on the same records - section 10, rounds W3a and W3b.)*
6. **Do not compile the whole program as one unit.** It gives up object sharing and parallel compilation for gains LTO
   already gives in the default build.

## 8. A bug found on the way: a G42 fact read from a reused record (fixed 2026-11-08)

`effects.olang` decides whether C may call an export fn back (`cMayCallBack`) from the whole program. A G42 fact read
in a body is a constant folded into that module's IR. But the module's reuse record (`build/rec`) is keyed on the
module and its imports only, so a record made in one program is reused by another whose answer differs:

```olang
# uid.olang
extern fn getuid() U32
fn work() U32 { return getuid() }
fn Quiet() Bool { return not work.WritesGlobals }
```

`p4.olang` prints `uid.Quiet()`; `p5.olang` does the same after giving an export fn to `qsort` (as
`checks/cases/g42exportquiet.olang` does). Built in one directory, p4 then p5, p5 prints `true`; built clean, `false`.
`OLANG_CHECKREUSE=1` reports `reuse check: uid differs`. The stale part is the record (`build/rec`); objects are named
by their IR and stay correct. Fix: the module's key holds the hash of
the program-wide inputs `cMayCallBack` reads (built `-library`, an export fn given to C, own C linked with an export
fn) whenever its lowering read a G42 fact - the first fact with readers.

**Fixed (2026-11-08, wt-reusekey), keyed by the values read rather than by the inputs.** Check's `ProgramReads(file)`
is the one accessor: each G42 fact read in a file, by its place and the value read, and the calls through `x[i]` there
refused the in-place form (E31b) - a second decision of the same kind, found by the search: `settleInPlace` refuses the
in-place call where the method may write a global, which `cMayCallBack` decides too, and the call site's code differs
(`RefMut` against a copy). A module's key holds its own file's reads, and the fact reads of every module its imports
reach, since a fact's value reaches an importer's code through a baked global (K2) or a decided condition. Keying by the
values is cleaner than by `cMayCallBack`'s inputs: it covers whatever a fact hangs on now or later (section 2.3's per
library callbacks), a program whose inputs differ but whose facts read alike still reuses the record, and the key of a
module that reads no fact is unchanged. It is section 4.2's reader record in its smallest form. Pinned by the checks
scenario `reusefact` (`checks/fixtures/reusefact`: `back` then `quiet` built in one directory, then both again under
`OLANG_CHECKREUSE`). Searched and clean: the other settled facts of the checker (views handed back, idle calls, unset
locals, landings, drop order) read callees' bodies only, which are imports; early freeing's `handedToC` is used only in
the root's object; the root-relative names of errors and functions (`ErrQualifier`) are right in both orders of an
import cycle, under `OLANG_CHECKREUSE`.

## 9. Direction questions - answered 2026-11-08

**Answered** by the user, 2026-11-08 evening: "If we are going to do it eventually, just do it now, because we are
building the language now and we don't want to do too many refactorings and full verifies. On all of the ones you
recommended, yes, do yes." Questions 1-4 are decided as recommended; question 5, which was recommended "not now", is yes
and now: "if we're gonna build the fifth one eventually, just do it now. Build it with a lot of testing though, because
... one small bug there can be disastrous. Not necessarily that you're gonna do a lot of verifies now, but you want the
testing suites to cover it really." The questions as they were asked:

1. **The rule.** Replace "compile per module, whole program only on top" with section 7's rule 1 (facts with readers,
   delivered as constants, root code, or keyed objects). Default: today's rule (objects depend on their module and
   imports only). Recommendation: yes. **Answer: yes** (round W1).
2. **Early freeing in every module.** The final step's decision at each let-go site delivered as a link-time constant,
   so a library's non-generic types free early (20x on 2.1's program); free under LTO, a load and a branch per site in
   `-quick` and `-debug`. One round with genrefs' questions 4 and 5. Default: the root's object only. Recommendation:
   yes, next after fnvalues round 6. **Answer: yes** (round W2, after fnvalues round 6; genrefs' question 5, answered yes
   the same evening, is the same mechanism, so genrefs' round 7 is folded into W2).
3. **The precompiled boundary.** Write into B3i now that at a precompiled library's boundary the defining module
   decides (field sets, generational types, its own early freeing through constants), and that a user's store widening
   a library's field is refused at the user's code. Default: unwritten (no precompiled libraries exist).
   Recommendation: yes, so question 4 and genrefs are designed to it. **Answer: yes** - written into SPEC B3i
   2026-11-08 in general terms (a precompiled module's decisions are its own); generational types join it with T13d in
   genrefs' round G1.
4. **Field sets of two scopes (refusals question 4).** Under rule 1 they need no change to how objects are built, only
   the front end's analysis and a few keyed build sites. Default: refused. Recommendation: allow it, built when real
   code hits it or after fnvalues round 6, with the tracking cost measured as section 4.4 says. **Answer: yes** - built
   now in the order (round W4), after fnvalues round 6 because a build through such a field finds its scope at run time
   (O29).
5. **An incremental front end** (summaries and signatures cached per module, the front end skipping unchanged modules).
   Default: no - the front end checks the whole program from source every build. Recommendation: not now; revisit when
   a leaf edit's front end passes ~10 s or the language server needs it. **Answer: yes, now**, with testing that makes
   the suite cover it (rounds W3a and W3b; the testing plan is 10.3).

## 10. Build order

One order for four plans, written 2026-11-08 after section 9's answers: this note's rounds (**W**), docs/fnvalues.md
section 14's rounds 6-12 (**F6-F12**; F1-F4 are built, F5 is being built), docs/refusals.md section 10's rounds
(**R1-R4, R6-R8**; R5 is built) and docs/genrefs.md section 13's rounds (**G1-G6**, with the one-holder rule; every
genrefs question was answered the same evening, genrefs section 0.1; G7 is W2, G8 `std/pool` is being built on
wt-pool2).
**W0** is section 8's fix, being made on wt-reusekey.

### 10.1 How it is ordered

- **Two lanes, two rounds at a time.** Lane S holds every round that changes scope.olang's judgments, one at a time
  (fnvalues section 14 and refusals section 10 both require it). Lane L holds a round whose files are apart from lane
  S's at the same step. At most two compiler rounds are in flight, which is what the verify slots and the memory take.
- **Each shared refactoring is done once.**
  1. The build records: W0, then W1's fact table and reader records, then the incremental front end (W3a, W3b) on the
     same records; W2's link-time constants are entries of the root's record W1 makes.
  2. free.olang's final step: W2 delivers every let-go site's decision through constants before F7 and F10 change what
     the step reads, so their sites (and genrefs' reclaim sites, G4) are emitted in every module from the start.
  3. The runtime's allocator: F6's slots, owner word and large table first; genrefs' header word (G2+G3) and free lists by
     size (G4) sit on them.
  4. The program's stores into a field: W4 gathers them once (a field's scope set); F12 reads the same gathering for
     functions a constructor fixes in a field (wholeprog 2.5, row 6).
  5. scope.olang's call judgment: R1 before F7, as refusals section 10 says.
  6. The front end's summaries are cached (W3b) only after lane S has changed their shape (R1-R4, R8, F7, F8, W4, F12),
     so the cache is written once. W1's test harness is there from the start and catches any round that reads a
     whole-program fact without recording it.
- **Verifies.** One full `make verify` per round, at its end, through `/home/user/vlock`; targeted tests and `make
  quick` while developing. The heavier gates (scopesan, scopefuzz, `fuzz free`, the dead-region evaluator, `make race`,
  `make cross`) only at the ends of the rounds that name them. Reviews in bulk: review A at step 5 (the section-8 rounds
  until then, before clones build on twins), review B at the end.
- **The testing of the incremental build is in the suite, not in extra verifies** (10.3): its scenarios, checks and
  fuzz seeds run inside every `make verify` from W1 on.

### 10.2 The order

| step | lane S (scope.olang, one at a time) | lane L (beside it) | shared files, and why it is safe |
|---|---|---|---|
| 0, running | F5 effect words | W0 the reuse key (wt-reusekey); G8 `std/pool` (wt-pool2) | - |
| 1 | F6 scopes found at run time | W1 facts with readers, the test harness | lower.olang: W1 changes only the read where a G42 fact is folded |
| 2 | R1 split values | W2 early freeing in every module (genrefs round 7 with it) | none |
| 3 | F7 twins | W3a incremental front end: the checker's records | typed.olang: F7 adds `ScopeVar.Follow`/`Plan.Twin`, W3a writes signatures to records |
| 4 | R2 kept through obligations | G1 `weak` and generational types | none (R2 is scope.olang alone; G1 is the front end) |
| 5 | F8 derived scopes passed | R6 + R7 generators, ends ordered; review A beside both (read-only) | lower.olang: F8's hidden parameter at calls and entries, R6's coroutine frames, R7's drop order - different functions |
| 6 | R3 parameters and bindings | G2+G3 the header, the weak word, the count, the one-holder classification | lower.olang: R3's entry copies, G2+G3's allocations and owning stores |
| 7 | R4 tasks | F9 clones | none |
| 8 | R8 precision and the rest | F10 lending and early freeing read what is followed | none (R8: scope, check, msgs; F10: free, lower, check's E31b, views) - check.olang by region |
| 9 | W4 field sets of two scopes | G4 reclaiming | lower/emit: W4's keyed build sites, G4's reclaim calls |
| 10 | F12 functions fixed in a field, trait promise words | F11 the tools | none |
| 11 | W3b incremental front end: the passes' summaries, the language server | G5+G6 an instance's arrays, the fuzzers | none (free.olang: G5 touches the cascade's per-type function only) |
| 12 | review B, then the final gates | | |

| round | what | model | files | waits for | gates beyond verify |
|---|---|---|---|---|---|
| F6 | O29: a scope found from an address (fnvalues 12) | opus xhigh | runtime.ll, san.ll, typed, scope, lower, emit, eval, interp, msgs, seed | nothing (may start beside F5) | scopesan, scopefuzz, fuzz free, dead regions, race, cross; bench and the self-build within noise |
| W1 | facts with readers (4.2, section 7 rule 1); 10.3's harness | opus high | a new compiler/facts.olang; build, olang (driver, `OLANG_TIMES` `facts` row), effects (G42 reads through the accessor, replacing W0's key), lower (the folded read); checks scenarios; fuzz/editgen.olang; makefile; SPEC B3i | W0, F5 | T1-T6 of 10.3 in verify; T7 once; the leaf edit of the compiler not slower (HISTORY "Port M9, round 8": 3.5 s) |
| R1 | refusals 5.1 | opus xhigh | scope, msgs, checks, goldens | F6 | compiler/'s and bench's IR byte-identical; scopesan, scopefuzz |
| W2 | early freeing in every module (2.1, memory.md 3.5): a link-time constant per let-go site and orphan check, defined in the root's object; free.olang's `rootEmitted` gone | opus high | free, lower, emit, build, olang (`-memory`) | W1, F6 | fuzz free, dead regions, scopesan; each earlyfree fixture also split into two modules as a run case reading its own peak (`session` within 1 MB of the one-module form, against 260 MB today); a `compile`d module linked later frees what the link's constants say; `-quick`'s cost per site measured on bench and the self-build; the edit kind "a sole place flips" in T2 |
| F7 | fnvalues 4.1-4.3, 4.6's lending | opus xhigh | scope, typed, lower, emit, interp, free, fuzz/scopegen, msgs | R1, W2 | as fnvalues round 7; the edit kind "a twin added" in T2 |
| G1 | genrefs round 1 as decided (0.1 there): `weak`, T2d with its two errors, T13d generational over the whole program (an acceptance fact, W1), `-memory`'s rows, the tools | opus high | token, parse, ast, unparse, fmt, types, check, msgs, olang, session, explain, doc, lsp, editors/nvim, tools | W1 | the probes of genrefs section 1 rewritten with `weak`; checks cases for every error, the whole-program one with the `weak` and the owning place in different modules; the edit kind "the first `weak` to a type" in T2 |
| W3a | the incremental front end, part 1: a module's loaded text, names, signatures, inferred error sets, baked globals and summaries of checking kept as records keyed by its text and the facts it read from other modules; bodies checked only where changed, where a read fact changed, or on demand (an instance, the evaluator) | opus high | load, names, check, generic, types, typed, session, build, olang | W1 | T4 (`OLANG_CHECKINCR`) over the suite in verify; T2's signature, error-set and baked-value kinds; T5; T7 once; the front end of a leaf edit and of a no-op build measured (today 4-6 s) |
| R2 | refusals 5.2 | opus xhigh | scope | R1, F7 | as R1 |
| R6+R7 | refusals 5.6: destructor values in a coroutine frame, deferred code at a `yield` (refusals question 2), registered values as holders | opus high | check (S20, C11's generator parameter, the drop order), lower (coroutine frames, drops), eval, interp, msgs | nothing | scopesan, dead regions |
| G2+G3 | genrefs rounds 2 and 3 in one: the header at every allocation of a generational type, the weak word and its read with the count's test (a weak read gives `null` from here on), retirement, the count at owning stores (direct, then whole values, 5.1), the prelude's collections in instances of such types; the one-holder rule's classification (a whole-program fact) with its `-memory` rows | opus high | runtime.ll, lower, emit, eval (constants carry the header pinned), std/prelude collections, free (classification), olang | F6, G1, W1 | weak reads after removals give `null` (read back after a churn) with nothing reclaimed yet; the dead-region evaluator's holder check with a reclaim simulated at every let-go that empties a count; the probes' time against G1; bench unchanged; race (relaxed atomics under `-race`) |
| F8 | fnvalues section 11 | opus high | scope, lower, emit | R2 | as fnvalues round 8 |
| review A | soundness of F3, F6, R1, W2, F7, R2 | opus high, read-only, fixes after | - | F7, R2 | the fuzzers' long runs |
| R3 | refusals 5.3 | opus high | scope, lower (entry copies) | F8 | as R1 |
| F9 | clones (fnvalues 4.4) | opus high | lower, emit | F8, review A | as fnvalues round 9 |
| R4 | refusals 5.4 | opus high | scope | R3 | as R1, and race |
| F10 | fnvalues 4.6 | opus high | free, lower (D9h), check (E31b), views, olang | F9 | scopesan, scopefuzz, fuzz free, dead regions |
| R8 | refusals 5.7 and its questions 1 and 3 | opus high; the `$x` copies and stale comments after it, sonnet medium | scope, check, msgs, std comments, goldens | R4 (lane S), F7 | as R1 |
| F11 | fnvalues section 9 | sonnet medium | explain, doc, session, lsp, mcp, api, DEPENDENTS.md | F10 | explain's and doc's goldens |
| G4 | genrefs round 4 (built 2026-11-10 for counted types; the one-holder rule's reclaiming left - genrefs "Round 4 as built"): reclaiming counted and one-holder types alike, at sites in every module through W2's constants; references in use (5.3), orphans, results, the cascade, free lists by size found by address (F6's slots), the sanitizer's quarantine, `interpret` following the plans, K1's refusal of a weak read of an unheld node | opus xhigh | free, runtime.ll, san.ll, lower, emit, eval, interp, msgs | G2+G3, W2, F7, F10 | genrefs round 4's tests (the four probes as run cases asserting their peaks; the stack, under the one-holder rule, with no header); scopesan, scopefuzz, fuzz free, dead regions, race |
| W4 | field sets of two scopes (2.4, question 4): a field carries the scopes its stores give it, reads judged against the shortest, stores against the longest, a build through it finding its scope at run time (O29); from source the error is at the widening store, at a precompiled boundary the store is refused (B3i) | opus xhigh | scope, lower and emit (the build sites, keyed by the field's fact), msgs; SPEC O23a, O25g | R8, F6, W1 | o25gfieldbinding and the o23alias cases as run cases read back after a churn; a store in module B widening module A's field, accepted from source and refused when A is a `compile`d object; the edit kind "a field's set widens" in T2 and editgen; scopesan, scopefuzz, fuzz free |
| F12 | fnvalues round 12: functions a constructor fixes in a field followed with the instance; promise words on trait methods | opus xhigh, a design pass first | scope, effects, check, parse, types | W4 (its field gathering) | as fnvalues round 7 |
| W3b | the incremental front end, part 2: scope obligations, effects and free.olang's summaries kept per body, the whole-program fixed points (O23a's bindings, R1a's sets, the final step) run over kept summaries with only changed components judged again; the language server keeping its session between edits on the same records | opus xhigh (a stale obligation is a soundness bug) | scope, effects, free, typed, session, lsp, mcp | F12, W3a | T4 over the passes' records; T2's obligation, effect and field kinds; T5 with scopefuzz's long run; T7; T8 |
| G5+G6 | genrefs rounds 5 and 6: an instance's own arrays reclaimed with it; fuzz free and scopefuzz writing linked structures with weak places, moves and references kept across calls | opus high | runtime.ll, lower (the arrays as class slots), fuzz/ | G4 | the LRU flat; the fuzzers' long runs; review B covers G2-G6 |
| review B | everything after review A, and W1-W4's reuse discipline | opus high, read-only, fixes after | - | all | the fuzzers' long runs, the bootstrap fixed point, bench |

Sizes, judged from sections 4, 7 and 8: W1 is medium (the accessor and records are small - section 4.4 puts the facts at
tens of thousands of short hashes and well under 100 ms - and most of the round is 10.3's harness); W2 is medium
(free.olang's decisions exist, only their delivery changes); W3a is the largest of the five (the checker's results made
records it can read back); W3b and W4 are large.

### 10.3 Testing the incremental build

The user: "one small bug there can be disastrous ... you want the testing suites to cover it really." A stale record is
a wrong program built silently, so the harness compares every incremental build with a clean one, and it runs inside
the ordinary suite. W1 builds T1-T7; each later W round extends them, and every round that adds a whole-program fact
adds its edit kind to T2 and editgen (named in its gates above).

- **T1. Reads cannot bypass the record.** The fact table and the passes' whole-program results are private to their
  modules (M6); lowering and emission reach them only through `facts.Read`, which records the read. A read around it does
  not compile, which is stronger than the discipline section 4.4 asks for.
- **T2. An edit of every kind, against a clean build** (a checks scenario, `incremental`). A fixture of five modules - a
  root, a library with a struct, a deep import, a generic, a C file with an export fn - and a list of edits, one or more
  per kind of input: a body alone (no fact changes); a signature; an inferred error set grown and shrunk; a scope
  obligation added and removed; each G42 fact flipped; a sole place's decision flipped (W2); a field's scope set
  widened (W4); a generic instance added and removed; a twin added (F7); the C callback input (an export fn handed to a
  C function, added and removed); a baked global's value; a build constant; an embedded file; an import added and
  removed; a module renamed; a diagnostic introduced and fixed. Each edit is built in the previous build's directory and
  in a clean one, and compared: the set of object names (named by content, so equal objects have equal names), the
  binary's output, `-memory`, `explain` of the edited item and of its readers, and every diagnostic byte for byte. Two
  more assertions per edit: the modules lowered again are exactly the readers of the facts the edit changed (an extra
  one is a speed bug, a missing one a stale object), and undoing the edit reuses the first build's records and lowers
  nothing.
- **T3. `OLANG_CHECKREUSE=1` over the whole suite** in verify: every test file and every checks run case built in one
  shared directory, in two orders, every reused record emitted afresh and compared - the way section 8's bug was found.
- **T4. `OLANG_CHECKINCR=1`** (W3a, W3b): every front-end record reused is also computed afresh and compared, over the
  whole suite in verify - T3 for the front end.
- **T5. An edit fuzzer** (`make editfuzz`, fuzz/editgen.olang on scopegen's generator): generated programs of several
  modules and random sequences of T2's edit kinds; after each step an incremental build is compared with a clean one as
  T2 does. A fixed seed set runs in verify; the long run is part of scopefuzz's gate.
- **T6. Damaged and contended records**: a truncated, garbled or older-compiler record is found by its own hash and
  rebuilt, never read; two builds in one directory at once (B3k) write records and readers side by side and both build
  what a clean build does.
- **T7. History replay** (4.4, item 3): the last 100 commits of compiler/ built one after another in one directory, each
  compared with a clean build, counting what was lowered - the correctness check on real edits and the measure of what
  W1 and W3 save. Long, so run at the end of W1, W3a and W3b, not in verify.
- **T8. The language server and the bootstrap** (W3b): scripted `didChange` sequences whose diagnostics are compared with
  `olang build`'s check of the same text; stage 2 built in a directory holding stage 1's records equal to a clean
  stage 2.

T3 and T4 roughly double the suite's front end and emission in the verify target that runs them; W1 measures it, and the
target runs beside the others (the suite is already split per file).

**Built in W1 (2026-11-08, HISTORY "Facts with readers and the incremental build's harness"):** T1 (`facts.olang`), T2
(`incremental`), T3 (`reuseall`, over the checks' run cases; it found D9h's mutable globals read around the table), T5
(`make editfuzz`, `editfuzzcheck` in the suite), T6 (`records`), and T7 run once.

**Built in W3a (2026-11-09, HISTORY "The front end's records, part 1"):** front records per module (each body's M19g
summary, signatures with inferred error sets, baked values) under the IR's key and facts read; a taken body's views walk
skipped (a no-op build's front end 5.6 s to 4.5 s on the compiler). T4 (`OLANG_CHECKINCR`) in `incremental`, `reuseall`,
`records` and the edit fuzzer; T2's error set shrunk and M19g summary kinds; T7 run once (97 of 100 commits, nothing
stale). Bodies are all still checked and keys are still the texts a module reaches: section 8 and early freeing read
every typed body, and what a module reads of its imports is a summary of every pass - both W3b's.

**Built in W3b (2026-11-10, HISTORY "The front end's records, part 2"):** scope records (`build/rec/NAME.KEY.s...`,
`compiler/records.olang`): every judging of a component in every round of the field inference, kept with everything
it read (other bodies' summaries and judged flags, logged; constructor fields' marks; the whole-program sets; the
judgings of its bodies before it, by name) and the state it leaves its bodies in, taken by a later build where all of it
reads alike - generics' instances included, under the keys of the modules declaring their type arguments. The fixed
points run as before over kept summaries, a component whose reads changed judged again from the state a build judging
it all along would have. The compiler's scope judging of a no-op build 4.9 s to 1.0 s; its front end (full objects)
5.6-6.1 s to 4.2 s on a no-op and 5.7-5.8 s to 4.1-4.4 s on a leaf edit. T4 holds the whole pass with records to the pass
without; T2 gains obligation and effect edits and asserts the modules judged afresh; T8 is a scripted session of the
language server, which keeps and takes the same records. Effects are not kept (~20 ms, found on demand); early
freeing's per-body summaries (~1 s) are not kept yet - the next step, keyed by the program's candidate places.

### 10.4 genrefs in the order

Every genrefs question was answered on 2026-11-08 (genrefs section 0.1). Its rounds in this order: **G1** at step 4,
**G2+G3** at step 6 (one round: the count is the holder record, and a weak read tests it, so the header, the weak word
and the count land together), **G4** at step 9, **G5+G6** at step 11, **G7** is W2 (step 2: genrefs' reclaim sites are
born in every module), **G8** `std/pool` running now on wt-pool2. **The one-holder rule** (nodes only ever held by one
owning link freed early, decided at compile time only): its classification in G2+G3, its reclaiming in G4 - for a type
no `weak` names it needs no header, so it frees the plain linked stack of genrefs section 1 too. Facts genrefs reads
from the whole program - a type generational, held owning nowhere, one-holder - go through W1's accessor, and their edit
kinds join T2 and editgen in the round that adds them.

**Added 2026-11-08: A1 - copying an `any`'s instance** (docs/refusals.md question 5, the user's "Yes, do option B"):
the table carries the type's Copy and size; a copy (an adapter such as `Take`, a default keeping its receiver) is
boxed where it lands; a unique type made into an `any Trait&` that some call copies is an error at the conversion,
from the whole-program fact of where each any is made and copied. Opus high, after W1, beside any round not in
check.olang's any code; turns anynocopy, anynocopyfunc, anynocopylist into run cases.
