# Follow-up review: the `any Trait&` fix round, wt-any 70cf549 -> f29a774

Read-only soundness review. Compiler: `/home/user/wt/rvany2/build/olang`, bootstrapped from f29a774. 70cf549 was
built beside it (`/home/user/wt/rvany2-old`), to tell what is new in the fix round from what was already there. Both
worktrees are removed now. To run a reproducer, bootstrap a compiler and pass it as the second argument.

**How to run:** `./run.sh NAME OLANG` runs `repro/NAME.olang`. It joins the file with `common.inc` (`say` and
`churn`, copied from the first review) and runs it three ways: built with `-debug -sanitize`, built plainly (-O3), and
interpreted. `./run.sh -d old NAME` runs a first-review reproducer, copied into `old/`. `OLANG=... ./cmp.sh DIR NAME...` prints one
line per program: SAME, DIFF, or REFUSED. Each `.out` file is f29a774's run, and each `.70cf549.out` file is the old
compiler's run.

## 1. The first review's findings

| # | finding | f29a774 |
|---|---|---|
| 1 | an array copied into an any kept its elements' references unjudged | **closed**: `a02`, `a02h` and `a02i` are T32a errors. Nested arrays, arrays of structs, slices of slices, conditionals and catch defaults of arrays holding references are refused too (`n06*`) |
| 2 | `Lab(s)` not copied into the box | **closed for a read, a slice and a slice of a slice** (`q02`, `q04`-`q06` and `n04g`/`n04h` run clean). **Not closed for a conditional, a match or a catch default**: see 2.1 |
| 3 | `$` through any fields had no depth limit | **closed**: `c02` and `c03` stop at 8 with `...`, in all three modes |
| 4 | an `any Iterator<String>&` could not be made | **closed for hand-written iterators** (`p02` runs). `p01` (`List<String&>.Iter()`) is now refused with T22a and O10c. That refusal is legitimate, since p01 really keeps the list's text past its block. It does mean an any of a `List<String&>` iterator cannot be made |
| 5 | type cases of generic instances | **closed**: `case Box<I64> b` works, and a bare `case Box b` (`e03`, `e05`) or `for Box` (`e06`) is one G7 error |
| 6 | a trait method's parameter default through an any | **closed** (`u01`, `n28`). A trait default whose own parameter default is left off works through an any too |
| 7 | minor diagnostics | **closed**: `a06` says "no method that fits" with a note, `s01`'s hint keeps the target, and `b01`/`b04` say "make that where 'keep' lives" |
| pre | O14 stack use-after-return (`aa02`, `aa03`) | **closed**, with a note naming `p Pt&`. The variants are refused too (`n19`, `n20`): a field, a conditional, a match, an any of a part, a copy, and an identity call |
| pre | M21: one instance's method taken for another | **closed for one instance's method**. But see 2.2: it is now silently wrong when two instances each declare one |

## 2. Findings

### 2.1 CONFIRMED use-after-free and aliasing (older, not closed): a conditional, a match or a catch default puts existing storage in the box uncopied

`anyCopiesItem` copies the box only when its item is a read, a slice, or a conversion of one. The scope pass, though,
takes every box for new storage built where the any lands. So an array chosen by a conditional, a match or a catch
default is left in the box as the source's own storage, and the source's scope is never held against it. This also
holds through a conversion (`Lab(s if c else u)`).

- `n04a_cond`, `n04b_match` and `n04f_catchdflt` push `Lab(...)` of a loop body's text into an outer list.
  `-sanitize` reports "use after scope closed" (134), -O3 prints garbage (`lab lab ^@^@^@`), and interpret reports the
  use after free.
- `n05_plaincond`: the same for a plain `String` (`any Up&`), through a catch default only (`try bad(i) catch default
  s`). The plain conditional and match are copied there.
- `n13_alias`: writing through a `mut any` changes the source (`cond` -> `Zond`, `match` -> `Zatch`, a catch default
  `Lab(s6)` -> `Zatch`), against T32a's "copied, from a variable too". The fix round's own `Lab(s7)` is now copied.
- `n03_convkept`: all of the above in one program.
- On 70cf549, every one of these does the same (`*.70cf549.out`). These are variants of finding 2 that the fix did
  not reach.
- The same shapes without an any are fine (`n30`: the catch default pushed into a `List<String&>`). Struct instances
  through a conditional or a match are refused (`n32`). Arrays holding references are refused by the new element fit
  (`n14`).

Suggested fix: copy unless the item is provably new, instead of copying only a list of storage-naming shapes; or have
lowering and the scope pass decide with one predicate.

### 2.2 CONFIRMED wrong method silently (new in the fix round): two instances of one generic type, each with its own method

`methods` holds one entry per (type key, name), and the type key is the generic declaration, not the instance. So
when `fn (b Box<String&>&) Describe()` and `fn (b Box<I64>&) Describe()` are both declared, the first one declared
wins. `recvApplies` then refuses it for the other instance, which falls to the trait's default.

- `n17_twoinst`: `Box<I64>(40, n).Describe()` gives `default 1`, where it should be `int box 40`. This is the same
  directly, from generic code and through an any, and baked and at run time alike.
- `n17b_twoinst_swapped`: swap the two declarations and `Box<String&>` loses instead.
- With no default (`n16_recvperm`) the program fails with "Box<I64> has no method 'Describe'", though one is declared.
- 70cf549 refused this program with E12. M21 now says a method of one instance is that instance's alone, so both
  declarations should work, or the second one should be a declaration error.

### 2.3 CONFIRMED `unreachable` at run time (new in the fix round): lazy default slots are a whole-program fact, and B3i reuses a module's IR without it

A module's record (B3i, `build/rec/NAME.KEY`) is keyed on that module and what it imports. Its IR holds the tables of
the anys it makes, each default slot's thunk being `unreachable` while no call reaches it. When an importer later
starts calling that default through the any, the module's key is unchanged and its old IR is reused. The program then
reaches the `unreachable`.

- `n07_stale/repro.sh`: `lib.Make` returns an `any Iterator<I64>&`. `main1` only walks it; `main2` adds `.Count(...)`.
  The second build prints `lib.olang:11: unreachable reached` and exits 134.
  - `OLANG_CHECKREUSE=1` reports "reuse check: lib differs".
  - A clean build, `-debug` and interpret all print `count 3`.
- The thunks are `linkonce_odr` (HomeShared). Two objects' copies of one thunk can now differ (one `unreachable`, one
  real), and that breaks ODR in any mixed set.
- The fix needs either the slots-called set in every module's key (which reuses little), or table thunks moved to the
  root object, as instances are.

### 2.4 CONFIRMED semantic change (new): a chain's literal takes its left neighbour's type for both comparisons

E30 defines `a op1 b op2 c` as `a op1 b and b op2 c`. Now a literal `b` is typed once, by its left neighbour, so the
two forms can disagree.

- `n12_chainmix`: with `f F32 = 0.05` and `g F64 = 0.1000000001`, `f < 0.1 < g` is `false`. The written-out form is
  `true`, and 70cf549 gave `true` for both. The evaluator and the run time agree, so this is semantics, not a miscompile.
- `n12b_chainmeet`: `a < 5 < b` with `a` an `I8` and `b` a `U64` is refused (T6b), though `a < 5 and 5 < b` compiles.
  This is older: 70cf549 refused it too, as I64/U64. The fuzzer's drift is gone only where both neighbours share a type.
- Suggested fix: adapt the literal once for each comparison it takes part in (a literal has no evaluation to share).

### 2.5 CONFIRMED gap (older): a type variable inside an `any R<T>&` is not substituted, nor counted by G4

- `n26_anysubst`: `type Src<T> struct(it mut any Iterator<T>&)` with `First() T` fails with "expected I64, found T"
  when instantiated at `Src<I64>`, and `Count(fn(x T) ...)` with "expected fn(x T) Bool, found fn(x I64) Bool".
- `n25_genericany`: `fn cnt<T>(it mut any Iterator<T>&)` is G4's "T appears in no parameter's type".
- Both are refusals, not miscompiles, and both were present on 70cf549.

### 2.6 CONFIRMED gap (older): iterator adapters and `Map` to a reference type are refused through an any

- `n21b_iteradapters`: `Take`, `Skip`, `Enumerate`, `Zip` and `Chain` on an `any Iterator<I64>&` fail inside the
  prelude with "expected any Iterator<I64>&, found any Iterator<I64>". The instance is bound as `I = any
  Iterator<I64>`, with its marker lost.
- `Map(fn(x I64) String& ...)` fails T25c inside `iterator.olang`.
- Both are the same on 70cf549. Every other default (Some, Every, Fold, Map to a value, Filter, ToList, Sum, Min, Max,
  MaxBy, a comprehension) works and agrees in all three modes, baked as well (`n21`).

### 2.7 CONFIRMED diagnostic (new): an enum case made an any says "this array's elements"

`anyItems` gives every `Make` under an any's box T32a's message. So `xs.Push(Tag.Txt(s))` (first review `a02c`) now
says "the 'any' outlives what this array's elements refer to", where it used to say T17c's payload message. The check
itself is unchanged.

### 2.8 Note (new, by design): T31's mut rule now applies to generic constraints

`generic.meets` is shared with G19. So a type whose method writes its receiver no longer meets a read-only trait
method in generic code (`n18_mutmeets`: `showG(c)` with `s mut S&` is refused, and 70cf549 ran it). HISTORY records
this as intended. It is listed because the review asked about anys only.

## 3. Held: no finding

- **Lazy default slots, in a clean build:**
  - reached only while compiling: a baked global, a top-level `if`, an assert (`n08`);
  - through a default that makes an any of its receiver and calls another default, through a trait extending the
    declaring one, and from generic code over the any (`n09`);
  - through a lambda and a generic, where the type does not fit Sum: the error is at the conversion, with a note at
    the call (`n10`);
  - with the trait's type argument a type variable, in a generic function (refused, 2.5);
  - across modules (`n07`, clean build).
  In all of these, built, `-debug` and interpret agree.
- **Array copies:**
  - landing in a returned any (`n22b`, O26a);
  - landing in a parameter's field or a global (`n22`, refused);
  - through generic and plain parameters, and returned (`n15`);
  - through a lambda capture and a generic push (refused, `n06d`/`n06e`);
  - as task arguments (`n24`, clean under `-sanitize`).
  A borrowed call result (`same(s)`, `s.Trim()`) and a reference field read (`h.s`) are copied (`n01`, `n04c`,
  `n04d`, `n13`).
- **Permission:** an array of `mut` references copied into a `mut any` writes through as plain code does (`n31` beside
  `n31b`). Permission stays shallow.
- **The checker fixes, against the evaluator** (`n11`, `n23`, `n29`): chains with U64 and F32 neighbours; `checked`
  indexes by U64 (2^64-1), U8 (200) and I8 (-1); a match of U64s as an index; `-9223372036854775808`;
  `9223372036854775807 + 1`; `18446744073709551615 - 1`; hex with the top bit set; and arrays of different known
  lengths through references, struct fields, text and empty literals. In each, the baked global, the run time and
  interpret agree.
- **Defaults:** a trait parameter default reading the trait module's private function and mutable global, and building
  text (`n27_dflt`), is evaluated per call, in all three modes.

## 4. Fuzzers

- **Scope fuzzer** (f29a774): seeds 4000-4599 with 20 scenarios each (4,571 run, 7,429 refused) and seeds 4600-5199
  with 12 each (2,758 run, 4,442 refused). 1,200 programs, 0 findings.
  - Its any scenarios (scopegen's `anyOp` k 12-15) write only plain reads into a box: an array, text, `Lab(q)`,
    `Ns(q)`. Finding 2.1's shapes (a conditional, a match or a catch default as the item) are outside what it writes.
- **Differential fuzzer** (`run 3000 200 2`): 200 programs, 6,000 cases, every global baked, 0 findings. On 70cf549,
  51 of 100 programs failed to compile from generator drift; that is gone.
- **Interpret** does not run the scope pass: it runs programs that `build` refuses (`cmp.sh` shows `REFUSED ...
  DIFF23` for them). It is a useful oracle only for programs the checker accepts.
