# Soundness review: Vec phase 1 after its third fix round (1bcfb72)

This is a read-only review of `wt-own` at 1bcfb72. That commit is 92dfcb8, the vec3 fixes, plus a docs line. It was
built in `/home/user/wt/rvvec4` with `make -j2 build/out`. Comparison compilers were built from `git archive` in this
directory: `base-280ef76` (before the fixes) and `base-8548b56` (master, which has no Vec). Done 2026-10-11 between
19:05 and 19:40 CEST.

```
cd /home/user/review/vec4 && ./runall.sh            # every repro; output in runall.out
./run.sh FILE.olang                                # one program
```

Each run builds the program three ways with 1bcfb72:

- `-b -d -s` (scope sanitizer)
- `-i` (the reference answer)
- `-b`

It then asks 280ef76 and 8548b56 whether they accept the program.

Every CONFIRMED finding is a program the compiler accepts that reads freed memory. The sanitizer stops it with "use
after scope closed", status 134, while `-i` prints the right answer. Every repro churns the arena between the release
and the read.

## Verdict

**Not safe to merge as is.** F2, F3 and F4 are fixed and held against every evasion I tried. F1's fix has the right
design, but the proof that a function's result is fresh walks the function body incompletely, so it can be fooled. A
second class, R, is older than the Vec work and is on master already.

| | Finding | Introduced in | Repros |
|---|---|---|---|
| F1' | `ownResultFreshSettle` misses returns, and one kind of write, in five operand positions | relaxation (b), cfc5da3. 92dfcb8's fix does not close it | 8 |
| R | A local or a scope argument that names a borrow's scope builds new storage in the owned object's region, and nothing holds a loan on it | own's first cut. Accepted by 280ef76 and master 8548b56 | 6 |
| X | `-i` and the built program disagree on a `return` inside an assert message's catch block | older, on master | 1 |

- **F1'** is mechanical to fix. The fixed-point analysis must see every statement the checker built. The positions it
  misses are an `else if` condition, a case guard, an assert message, a `for` post clause, and (for writes) a spawn
  target's subexpressions. Measured the other way, F1 as vec3 reported it is fixed: `pick`, `id`, `List` and `Map`
  are all refused now.
- **R** is independent of Vec. It still needs fixing before own is called sound. The O20 diagnostic's own suggestion
  ("build it where the container lives ('x T&c')") leads to it.

---

## CONFIRMED

### F1' (the gap in the vec3 F1 fix). A "proven fresh" built result whose proof missed a return

Repro: `repro/f1a_else_if_catch_return.olang`. This is the natural-looking form: "if parsing fails, fall back to the
caller's buffer".

```
fn pick(c Bool, x <T>, y T) T { return x if c else y }
fn bufFor(spec String&, a mut Array<I64>&, b mut Array<I64>&) mut Array<I64>& {
    if spec == "new" { return Array<I64>(4) }
    else if (try spec.ParseInt() catch { return pick(a.Len() >= b.Len(), a, b) }) > 0 { return Array<I64>(2) }
    return Array<I64>(1)
}
...
d := bufFor("?", v.ViewMut(), other)   # v's own buffer - and no loan on it
for i in range 1000 { v.Push(i) }      # frees the buffer: not refused
println($d[0] " " $d[1])
```

Results:

| Run | Output |
|---|---|
| `-b -d -s` | "use after scope closed", status 134 |
| `-i` | `10 20` |
| `-b` | `10 20` (silent) |

280ef76 accepts it too: it is vec3's F1. Master has no Vec.

The control is `work/h1c.olang`: the same `catch { return pick(...) }` in a plain `if` condition. It is refused with
O39, so the else-if is precisely the gap.

**Cause.** `ownFreshReturns` and `ownFreshStmtReturns` (semantic.c ~27474-27500) call `ownFreshOpReturns` on each
block statement's `op`, `target`, `fillValue`, `forInit` and `nomatchValue`. They do not call it on:

- `s->elseStmnt->op`, the else-if condition. `ownFreshStmtReturns` recurses into the else statement's blocks but never
  into its condition.
- `s->caseGuard`.
- `s->assertMsg`.
- `s->forPost->op`. `ownFreshStmtReturns(forPost)` looks at its blocks only.

So a `return` inside a statement-holding expression in one of those positions is invisible. A statement-holding
expression is a value-position catch block, or a block clause of a match value.

Obligations (O10b) and the own walk do see that return. The callee therefore "may keep" its argument
(`calleeMayKeepArg`), and the type walk is asked. Because `ownResultBuilt` now says the result is fresh, the walk clears
the top, and the loan is spared.

Every variant is confirmed the same way (sanitizer stops, `-i` gives `10 20`, `-b` gives `10 20`):

| Repro | The hidden return |
|---|---|
| `f1b_else_if_catch_return_min.olang` | an else-if condition's catch block |
| `f1c_else_if_match_value_return.olang` | a match value's block clause in an else-if condition, with no catch at all: `else if match a.Len() { case 2 { return pick(true, a, b) } case _ => true }` |
| `f1d_case_guard_return.olang` | a case guard: `case _ if (try g(..) catch { return pick(...) }) > 0` |
| `f1e_assert_message_return.olang` | an assert message (here `-i` also disagrees; see X) |
| `f1f_for_post_return.olang` | a `for` post clause: `for i := 0, i < 3, i = (try g(i) catch { return pick(...) }) { }` |
| `f1g_generic_else_if_return.olang` | the else-if form inside a generic, through a non-generic wrapper returning `longerG(a, b)`, which is proven fresh because its callee's instantiation is |

`f1h_spawn_target_index_write.olang` is the write side. `ownFreshStmtWrites` checks whether a spawn target *is* the
local, but never walks a target's subexpressions. So `out` is rebound to the argument, unseen, in
`join { spawn res[(try g(1) catch { out = pick(true, a, b) } default 0)] = fz() }`, and `return out` is "fresh". The
control `work/w0.olang` (`out = pick(...)` in plain sight) is refused, and so is `work/w2.olang` (the same assignment in
an else-if condition, where writes are walked). The result is as above: a sanitizer stop, then `10 20` and `10 20`.

These positions are held:

- an `if` or `for` condition;
- a match subject;
- `matchHold`;
- a declaration's catch block in a nested block;
- a spawn argument;
- a `try join`'s clauses;
- an S9e for-in clause;
- an R21 `try x[i] = v` clause;
- a comparison chain operand (`h5`, `h6`, `h8`, `h9`, `h11`-`h15`, `w2` in `work/`).

The freshness rules themselves held against every shape the brief listed:

- a fresh local typed to live where the parameter lives (`out mut String&a = ...`, through a conditional, a match or a
  catch default): O14 or R11 (`f1`, `f2`, `f3cond`, `f3match`, `f3catchd`);
- a proven-fresh callee given a scope argument naming the parameter (`return mk&a(n)`, directly or through a local): O14
  (`f4`, `f5`);
- an `Array<String&>` filled with slices of the argument: the type walk keeps the loan (`j2`);
- a literal holding the argument (`j3`);
- `$`/join of the argument, which copies: correctly no loan, and it runs right (`j1`);
- a Vec or own array given a borrow and then ToArray'd: O10c or O34 (`j4`-`j6`);
- recursion: never proven, so the loan is kept, which is correct.

Generic instantiations are proven per instantiation (an instantiation's `origin` is itself), so the proof is not shared
with an instantiation where T is a reference.

**Fix.** `ownFreshReturns` and `ownFreshStmtWrites` must reach every operand and block of a statement, the way
`ownStmtWalk` does. `ownStmtWalk` visits the else statement as a statement, `caseGuard`, `assertMsg`, `forPost`, and
each spawn target as an operand. The safest fix is one generic "each sub-operand / each sub-block of a statement"
helper that the own walk, the fresh proof and `ownLoansOfStmtDeep` all use, so that the next field added cannot be
missed by one of them. (`ownLoansOfStmtDeep` misses `assertMsg`, `forPost` and the spawn targets too.)

### R (older: own's first cut; accepted by 280ef76 and master 8548b56). New storage built in an owned object's region through a name, with no loan

Repro: `repro/r1_local_typed_with_borrow_scope.olang`.

```
type CB struct() { text own mut String& = $1 "-ttttttttttttttt" }
fn main() ? {
    c := CB()
    x := c.text                                    # a borrow: x's scope is c.text's region (O25a)
    d mut String&x = $5 "-new-text-in-the-region"  # built where x lives: in that region. d holds no loan
    c.text = $2 "-zzzz..."                         # releases the region: not refused
    churn()
    println(d)
}
```

Results:

| Run | Output |
|---|---|
| `-b -d -s` | "use after scope closed", 134 |
| `-i` | `5-new-text-in-the-region` |
| `-b` | `2999abcdefghijklmnopqrst` (the churn's text) |

All three compilers accept it. Variants, all confirmed:

| Repro | The variant | Result |
|---|---|---|
| `r1b_scope_argument_names_borrow.olang` | an E25 scope argument, `d := mk&x(5)` | `-b` prints garbage |
| `r1c_in_a_method.olang` | the same inside a method handed the owner | `-b` prints garbage |
| `r1d_owned_list_text.olang` | `l := c.items` (an own `List<String&>`), `s mut String&l = ...`, `l.Push(s)`, then `c.items = List<String&>()` | the sanitizer stops it |
| `r1e_o20_note_guided.olang` | the path a user is led down. `r1e_note_source.olang`, an inner block's text stored into `b.s` with `b := c.box`, is refused with O20: "the container outlives what this refers to - build it where the container lives ('x T&c', 'f&c(...)')". Following that, `last mut String&b = "none"` and `last = $i "..."` in the loop build the text in the Box's region. `c.box = Box()` after the loop then frees what `last` points at | sanitizer stop, 134 |

**Cause.** A `:=` borrow (`x := c.text`) holds a loan, so a release while `x` is used is O39. But a local whose
*written* scope names that borrow (`T&x`, O25a), and a call given `&x` as its scope argument (E25), are given new
storage built in the region, and they hold no loan.

The own walk makes loans from own slot reads, holders' loans, borrowed own results and borrowed copies. It never makes
a loan from a declared type whose `scopeParam` is a region (`isRegion`), though `ownRegionOf` already answers "this
local is in region R" for such a read. O33 says that new storage built into an owned object lives and dies with it.
That is right, but only reads *through the owner* are tracked, and `d` reaches the storage another way.

The Vec views are not affected at run time. `x := v.ViewMut()` names a call's result region
(`regionOfResult`), and codegen builds that elsewhere: `work/s1`, `s2`, `s7`-`s9` all run clean under `-s`. Neither is
an owner local named directly (`work/s10`, `mk&cc(...)`). A *direct own-slot read* is.

**Fix.** Two possible fixes:

- A local declared with a scope that is a region, or given a value built in one, holds a loan on that region (as the
  `:=` borrow it is derived from does), and so does a call whose scope argument names one.
- Or: naming a region as a place to build is refused ("an owned object's region is no place to build: build it where
  its owner lives, `x T&c`"). The O20 note should then name the owner (`c`), not the borrow.

The first keeps r1d's "make the text where the list lives" usable.

### X (older, on master too; not own-related). A `return` inside an assert message: `-i` aborts, the built program returns

Repro: `repro/x1_assert_message_return_i_vs_b.olang`.

```
fn f(k I64) I64 {
    assert k > 100, (try h(k) catch { return 7 })
    return 3
}
```

| Run | Output |
|---|---|
| `-b`, `-b -d -s` | `7` |
| `-i` | `assertion failed`, 134 |

Master 8548b56 behaves the same. One of them is wrong. A message that can leave the function is probably best refused
at compile time, as S19 refuses leaving deferred code. F1's `f1e` shows the same disagreement.

## PLAUSIBLE

None. Everything traced was reproduced or held.

## F2, F3, F4: what held

All of these were refused, or ran correctly. Work files are in `work/`.

**F2:**

- a marked function's hidden return borrowing a *same-type* object below the same parameter (`k1`, O39);
- a nested own object two levels down, the intermediate owner released (`k2`, `k3`, O39);
- a derived-field return, which is rooted ANY and so O38 at the callee (vec3's or2).

**F3:**

- a spawn target set from a `try` whose catch default is a borrowed own result (`k4`, O10 and P4a);
- the vec3 repros `f3`, `f3b` and `f3c` (O38).

**F4:**

- a reference read through a plain field of a global's own object (`g1`, O1b), and the same as an initializer (`g2`,
  O38);
- a global's own String flowing into its base type (`g3`, O1b);
- a constructor keeping the borrow (`q1`, O38);
- a method storing it into a global (`q2`, O10c);
- conditional compilation choosing the initializer (`q3`, O38);
- a conditional initializer (`q4`, O38);
- a global initialized through a proven-fresh wrapper (`q5`, O10c: the program scope is the result scope there, so
  §8.4 itself refuses it);
- another module's global own object in an initializer, both a slot read and a borrowed own result (`mod/m2`, O38);
- `-D` defaults (B10c): with `-D` the initializer is not evaluated, and without it the global is refused (`q6`; see
  over-rejection 1).

A callee's built result landed by its obligations where the argument lives (`l1`, an O18c landing) runs clean: it lands
in the block, not the region.

Every vec3 repro is refused by 1bcfb72 (`f1`, `f1b`, `f2c`, `f3`, `f4`, `f4b` re-run).

## Fuzz

The scope fuzzer in own mode was run on fresh seeds 600-800 in `fuzz/`, with `OLANG=/home/user/wt/rvvec4/build/out`:

```
fuzz.debug scope 600 201 2 12 own
```

Result: **201 programs, 604 scenarios run, 1808 refused, 0 findings** (`fuzz/fuzz600.log`).

The generator writes neither F1' (no return inside an else-if condition, guard, assert message or post clause; no
spawn target index with a side effect) nor R (no `T&x` local or `f&x()` naming a borrow).

## Over-rejections (secondary)

1. **New in 92dfcb8.** A global *value* `String` copied from a global's own text, `T String = Docs.title`, is refused
   with O38. The global-initializer walk keeps the slot read's loan whatever the declared type, and a value copy holds
   no reference. The same copy in a local is accepted and runs (`work/o4`). Repro:
   `repro/over/or1_value_global_copy_of_global_own_text.olang`. 280ef76 and master accept it.
2. A copy helper that is recursive, or that returns its new array through `id(...)` or after an assignment
   (`work/o1`-`o3`), would not be proven fresh. It still compiles and runs, because its body has no obligation tying the
   argument to the result (`calleeMayKeepArg` is false), so nothing is lost there.
3. vec3's or1 (a trait method cannot declare a borrowed result) and or2 (a borrowed own result through a `&c` field)
   stand, as recorded there.

## Files

| Path | What it holds |
|---|---|
| `repro/` | the confirmed findings (f1*, r1*, x1) |
| `repro/over/` | the over-rejection |
| `work/` | everything tried, held or not, including the controls `h1c` and `w0` |
| `runall.out` | the last full run |
| `run.sh` | one program, three ways plus the older compilers |
| `runall.sh` | all the repros |

`base-280ef76/build/out` and `base-8548b56/build/out` are the comparison compilers. Their object files and the fuzzer's
work tree were deleted.
