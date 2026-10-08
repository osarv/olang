---
name: project-olang-next-steps
description: "Work order for olang; 2026-09-29: modules done; next for-remake, stdlib, try-catch defaults, compifs (compile-time ifs?). Older: as of 2026-09-23: generics, scopes, separate compilation, all seven concurrency gaps bar cancellation/timeout, -debug and LTO all done; open are a growable Vec (blocked on the bump-allocator question), more stdlib, DWARF metadata and the parked stack-allocation optimization"
metadata:
  node_type: memory
  type: project
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-09-07T00:00:00.000Z
---

Done 2026-09-03..07: all of §12 generics (incl. generic types with constructors/destructors),
default parameter values + the `default` keyword, constructor bodies as real statement blocks
(constructors can now raise their own errors), S3 statement restriction, L20 one-line blocks, and
the §8 overhaul - no `scope` type, no `own` expression, scope variables declared by appearance,
outlives relation with inferred obligations. `make verify`: 108/13/12 (`5c08ac0`).

**Status 2026-09-21:** separate compilation is done, and so is every concurrency gap except
cancellation and timeout, which have no design yet (see [[project-olang-concurrency-gaps]]). Also done
since: generic composition (`Vec<T>` inside a generic), `-debug` (B2c), LTO on by default (B2d), and
O2c - every alloca hoisted to its function's entry block, which was a live stack-overflow bug at `-O3`
whenever a loop's local escaped into a cross-module call. `make verify` now also runs `make checkir`,
which reads the emitted IR and fails on an alloca outside an entry block.

Still open below: the stdlib/Vec work and the parked optimization, plus multiple return values from
[[project-olang-open-language-gaps]]. Two smaller ones worth naming: a numeric literal does not adapt
during generic inference (`Pick(int64Var, 7)` fails to unify `T`), and DWARF metadata, which is what
would make `-debug` an actual debugger experience rather than only `-O0`. Also: `int32[k]` in expression
position is a one-element literal (bit twice now) - a diagnostic for it is worth adding.

**User's agreed order as of 2026-09-29:** (1) `mut` invalid on locals - DONE; (2) multiple returns + `fn` + `:=` calls - DONE (`be0f44d`); (3) DWARF - DONE (`aa1b5d2`); (4) stdlib (Split, List iteration, dictionary).
**Added by the user 2026-09-29:** "remake the `for` keyword in general" (raised when I asked how List
iteration should look - for-in vs cursor vs callback; it likely settles that question, so probably before
the stdlib iteration work - confirm order), then "module support" and "try catch
default values" (probably a value for a failed `try` expression, e.g. `x := try f() catch E { 0 }` - ASK).
**Module support DONE 2026-09-29 (M22/M23/M19c/B3d)**: packages = directories, imports `x.olang` / `./dir` /
`std/x` / `host/owner/repo[@ref][/sub]` (git clone once into OLANG_CACHE), built-in methods import-scoped,
stdlib moved to std/. User does NOT want per-function/type imports (unit of import is the module).
Open gaps noticed: no lock file/checksums; a function cannot return an unmarked `T[]` (O13 message wrong).
**Added by the user 2026-09-29: "Remember Lambda expressions"** - on the todo list. olang deliberately has no
closures today (spawn takes a call because of it; C-style function values only). Design questions when it
comes up: capture by value vs by reference, and §8 - a lambda capturing a reference must carry a scope tag and
not outlive what it captured (a lambda value is reference-like). Interaction noted with the multi-clause catch
design: `return` in a catch block inside a lambda leaves the LAMBDA; D10a's "leaves" is per function body, so
a lambda body is its own body for that analysis - compatible.
**Added by the user 2026-09-29: "Remember list comprehension"** - on the todo list. Depends on the `for`
remake (`for x in a` syntax and the Iter()/Next() protocol would be what a comprehension iterates) and on
List<T> (what it builds - or a T[] of known length when the source's length is known). Allocation goes to
the target's scope like any temporary (E12c). A filter clause makes the length unknown -> List, then ToArray.
**Added by the user 2026-09-29: "compifs"** - read as compile-time `if` (comptime conditional, like
`match <T>` but on constants/target/build mode?) - CONFIRM meaning before designing.
**Recorded by the user 2026-09-30 (NOT next - "record it instead"):** (a) **serialization** - write a value to a
file/network via encoders in std that walk fields: JSON plus a compact binary one (fixed byte order,
length-prefixed arrays, enum tag); never a memory dump. (b) **compile-time reflection** - a way for one generic
function to iterate a type's fields (like `match <T>`), which (a) needs. Also parked: declared-layout types for
drivers/wire headers/C structs. `size()` was DROPPED (not deferred). `choice` renamed `enum` DONE (`31ea7cf`).
**Idea board (user 2026-09-30): an `atomic` keyword - DECLINED 2026-10-01, builtins kept** - back on the board. P9 chose named builtins over an
`atomic` type qualifier (a qualifier makes `x = x + 1` look like one op while being three); revisit with that in
mind - e.g. a keyword marking a location atomic so every access to it is an atomic op, which also closes P9a
(plain access racing an atomic one). Not scheduled.
Remaining order: `for` remake (proposal given 2026-09-29: for{}, for cond{}, C-form, `for x in a`, `0..n`, Iter()/Next() (T,bool) for user types - awaiting answers on `in`, ranges, keeping do-while) -> stdlib (Split, List iteration, dictionary) -> compifs. try-default DONE (R9a, `713d581`), then reshaped as multi-clause catch R9b (`948f505`): `try f() catch E { } catch default 0`.

**Remaking modules DONE 2026-10-06 (`f4137be`)**: module = file, directories only group, imports name files
without extension, relative to the importer's dir; identity = path; prelude = each file of std/prelude.

Open, in no fixed order - the user picks:

0. ~~**Write `List<T>` and a `String` module.**~~ **DONE 2026-09-24**: `string.olang` (methods on plain
   `byte[]&`, `a.Eq(b)` is string equality) and `list.olang`. Also G9a and E20a. Next candidates: the §8
   narrowing soundness hole (needs the user's design call), `Split` now that List exists, List iteration.
   Original note: Unblocked further 2026-09-24 (`9e843d1`): methods are now
   `func (r T) Name()` receiver-clause only, callable only as methods, and allowed on built-ins
   (primitives, arrays keyed by element, `<T>[]&` for all) with one (type, name) per program; arrays of
   any kind satisfy interfaces (T29b). The bridge (T29a) landed, so a declared type over an array
   has methods and its own identity while still indexing, slicing and marshalling to C. `String` is the
   name (not Text). String equality is the first gap: E10 compares a reference by identity, so comparing
   text currently means writing the loop.

1. **A standard library.** Everything it needs exists and none of it has ever been exercised outside
   the test corpus. Recommend **IO first** (needs no new language decisions - `extern func` write/read
   already link and a `byte[]` already marshals), then Vec. This is also the usage data explicitly
   deferred for the obligation-declaration syntax.
   **Blocks Vec:** growth needs reallocation, but a scope is a bump allocator with no free - see
   [[project-olang-vec-growth-question]].
2. ~~**Separate compilation / linking.**~~ **DONE** - spec §10, rules B1-B8: every module its own object,
   transitive staleness, `linkonce_odr` for generic instantiations and the runtime. Verified 2026-09-17.
3. **PARKED, needs a benchmark:** stack-allocate a non-escaping bare-`&` local instead of calling the
   arena. Frontend needs only "bare tag + compile-time-constant size". The real constraint is *depth*
   (allocas are additive per frame, the arena's pool grows to RAM), so it needs a size cap, Go-style -
   the only number in the design that must be chosen rather than derived.
4. **COME BACK TO (user, 2026-10-05): inferred scope obligations (O10b).** Kept, with errors that name the
   callee line creating the obligation. Requiring them in signatures was weighed: `&x` states only equality
   (plain-data stores like `Put(key String&)` need "outlives", i.e. a second spelling), and generic code over
   a maybe-reference `<T>` (`List.Push`, `ToArray`) cannot write one at all. Corpus had 8 obligated functions
   (2026-10-05). Revisit when there is more code using the no-scope-names model.

5. **STAGE 1 BUILT 2026-10-08 as `-i` (B3e, `1eac824`; the user: "Do -i for the interpreter").** Was: deferred, definitely wanted (user, 2026-10-07): `olang -run` - expose comptime.c as an interpreter. Agreed shape
   (my proposal, not yet confirmed in detail): stage 1 = mutable globals/writes, done/fail/abort, no step budget,
   extern calls via dlsym+shim or libffi (gives I/O); stage 2 = scopes + destructors + memory reclamation; stage 3 =
   spawn/join (threads; sequential would deadlock chan tests). Uses: fast edit-run, scripts, faster tests, later REPL.

**Why:** items 1-2 are what the user has named; item 3 is explicitly parked.
**How to apply:** ask which one rather than assuming; the user has consistently chosen the order.
See [[feedback-surface-and-fix-bugs]].

**2026-10-08 (cloud session, branch claude/github-environment-setup-ftu9va, all pushed):** T6b corpus widening
cleanup + a fix for a widened `try (...)` losing its checks (`6a15c6e`); M23c `-update` (`a447ab6`, now `-u`);
B1 one-character flags `-r -d -u` (`ff67eb5`); B3e `-i` stage 1 (`1eac824`): main run by the evaluator, externs
through libffi (compiler links -lffi -ldl), done/fail/aborts as the built program. Stage 1 limits: no destructors
(so runner.olang stops at shared.olang's KtFromDropped), no tasks, nothing freed (~6KB per loop iteration; 100k
iterations 1.5s/630MB). NEXT for -i, the user to choose: (a) temporary arena reset per statement + free locals at
block end, -i only (retaining sites enumerated in HISTORY.md), or (b) redesign: compact values + scope-mirroring
freeing, which gives destructors. Also offered and open: porting oann's MNIST trainer to olang as a stress test
(newest features unexercised); Utf8/Utf32; reflection -> serialization.
