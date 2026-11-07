# Soundness review of d6c7f52 (decision 49: `$` calls Str once, Str may have effects)

Commit d6c7f52 on wt-str1 was built from /home/user/wt/rvstr1. Base d0abfe8 was built in a scratch worktree, which was
removed afterwards. Every finding below was reproduced. "new" means d6c7f52 and "base" means d0abfe8. The
reproducers are in `repro/`, and each one starts with a comment giving what it shows and what was observed. The scope
sanitizer runs were `build/out -b -s FILE` followed by running `build/FILE.san`.

## CONFIRMED - introduced by d6c7f52

### N1. A lambda with a read-only capture lets Str store into its receiver (use-after-free)

Repros: `repro/n1_str_lambda_readonly_capture.olang`, `n1b_str_spawned_lambda.olang`, `n1c_str_lambda_readonly_local.olang`.

```
fn (b Bag&) Str() String {
    f := fn() { b.head.next = Node(5, null) }    # b read-only, b.head a writable field (shallow permission)
    f()
    return "b"
}
```

Observed:

| Repro | new `-b` | new `-b -s` | base |
|---|---|---|---|
| n1 | prints `-7` (should be `5`) | `use after scope closed: storage a closed scope gave back was read or written`, abort 134 | refused, E11c |
| n1b, `spawn fn() {...}` | prints `5` | use after scope closed | refused |
| n1c, `w Wr&b = Wr(b.head)` captured | prints `0` | use after scope closed | refused |

The same store written directly in Str, through a writable local capture (`w mut Wr&b`), or through a callee, is
refused with ERR_STR_STORES_IN_RECEIVER.

Cause: in bindCallScopeVars (semantic.c:10109), the D16c capture loop skips every capture whose type is a read-only
reference: `(TypeIsPermRef(ct) && !ct.refMut) continue`. No O17 region edge is recorded for it, so the lambda's store
through `b.head` never reaches the Str's region flags. The node is built in the temporary scope that rdPutStr hands
to the Str, and it is freed when that scope closes.

The skip itself predates this commit (see P1). The commit makes it a hole in the new rule: item 1 rests entirely on
O17's flags, whereas base refused such a Str through the purity rule.

### N2. A destructor stores into the receiver after the region check (use-after-free)

Repro: `repro/n2_str_destructor_store.olang`.

```
type Res struct(a mut Node&) { a } destruct { a.next = Node(9, null) }
fn (b Bag&) Str() String {
    x Res&b = Res(b.head)       # exact by the checker: Res lands where b lives
    return "b"
}
```

Observed: new `-b` prints `-7` where `9` is wanted, and new `-b -s` reports "use after scope closed". Base refused it
(E11c: "builds a value whose destructor runs when its scope closes").

Cause: `$` passes a temporary scope for every scope variable of Str. That breaks the exactness invariant: the checker
believes `&b` is where b's referent lives, but at run time it is a scope that closes right after the call. Res is
registered in that temporary scope. Its destructor runs at the close and builds `Node(9)` "where `a` lives", which is
the closing scope, then stores it into the real `b.head`. checkStrRendered only reads O17 store flags, and destructor
bodies are part of no region edge. Building a destructor-bearing value in any of Str's scopes, directly or through a
callee, is now unchecked.

### N3. Item 3 (C2d skipped for a `$` operand) lets a destructor store through a non-exact field (use-after-free)

Repro: `repro/n3_render_ctor_skips_c2d.olang`.

```
type Res struct(a mut Node&) { a } destruct { a.next = Node(9, null) }
type Wrap struct(a mut Node&) {
    a
    r Res& = Res(a)
}
fn f(x mut Node&) I64 { s := $Wrap(x); return s.Len() }
```

Observed: new `-b` prints `670003` where `9` is wanted, and new `-b -s` reports "use after scope closed". Base
rejected it with C2d: "this instance holds a reference to an argument it would outlive".

Cause: OperandUnary sets `in->hereChecked = true` on every `$` operand (semantic.c:11782). The C2d/O25c check is
therefore skipped, so the instance lands in f's block while x lives in main.

The commit's argument was "nothing is stored through it - a Str rendering a part included". That ignores code that
runs after the rendering: the destructors of parts built where the instance lands (bare reference fields). Res's
destructor runs at f's block close, builds `Node(9)` in that block (its field `a` lives with the instance, which C2d
exactness would have made equal to x's scope) and stores it into main's node.

### N4. The text builder leaks when a join is left part way (unbounded memory)

Repros: `repro/n4_join_leak_continue.olang` and `n4b_join_leak_error.olang`.

```
s := $big $(try g(i) catch { continue })    # big renders to more than 256 bytes
```

| Repro, 1M leaving iterations | new peak RSS | base peak RSS |
|---|---|---|
| n4, `continue` | 1,562,116 KB | 1,608 KB |
| n4b, an error propagating out of `$big $(try g(i))` | 1,542,904 KB | 1,576 KB |

Cause: cgTextBuilt (codegen.c:5176) mallocs once the text outgrows its 256-byte stack room. It calls
`@__olang_sb_free` only after the last piece (codegen.c:5247). Every exit from a piece skips it: `continue`, `break`
or `return` in a catch clause, a propagated error, and in tests `done`, `fail` or a failed assert. Base built joins
in the arena, which reclaims everything when the block closes.

### N5. `done` inside a Str in a test drops destructors (C11 "exactly once")

Repro: `repro/n5_str_done_destructor.olang`.

Observed: `Res destructed 2` is printed and `Res destructed 1` never is. Res(1) is in the temporary scope rdPutStr
opens (codegen.c:4744). That scope is not on the P1d open-scope chain, so the test unwind never closes it, its
destructors never run, and its chunks are lost. Res(2), in Str's own block, is destructed. Base refused this Str
(E11c).

### N6. Stack use per recursive frame grew about 6x (crash regression)

Repro: `repro/n6_join_stack_depth.olang`.

```
fn r(n I64, name String&) I64 { ... s := $name $r(n - 1, name) ... }
```

Any join where a held piece (text or an aggregate) is followed by a piece that runs code now takes the one-pass path.
That path puts a 256-byte first room and a 32-byte builder in the entry block of every such function.

| | Deepest recursion that runs | Depth 100000 |
|---|---|---|
| new `-b` | about 25k (30k segfaults) | segfault, exit 139 |
| base `-b` | about 120k | prints `1` |

Not a soundness bug, but a program that ran now crashes. The commit's cost note does not mention stack use.

## PRE-EXISTING - reproduced on base d0abfe8 as well

### P1. O17 skips read-only reference captures (use-after-free)

Repro: `repro/p1_o17_lambda_readonly_capture.olang`. This is the root of N1, outside Str.

A split copy `b := src.b` is lent to `b.grow()`. grow's lambda stores through a read-only capture's writable field.
No edge is recorded, so the call binds grow's scope variable to the copy's block. Both new and base `-b` print `-7`
where `7` is wanted, and `-s` reports "use after scope closed". The same store without the lambda is bound to the
references' home and is correct.

### P2. A destructor-bearing temporary never runs its destructor

Repro: `repro/p2_ctor_temp_no_destructor.olang`.

`Wrap(local)` as an expression statement, `Wrap(local).a.v`, and `$Wrap(local)` never run Wrap's destructor. Only
`w := Wrap(local)` does. This breaks C11 ("runs exactly once").

### P3. A `$` operand is built where the text lands but judged where it stands (use-after-free)

Repros: `repro/p3_render_operand_lands_long.olang` and `p3b_render_operand_param.olang`.

In `outer = $Wrap(local)` and in `return $Wrap(x)`, codegen passes the text's landing scope (outer's, or the result
scope) as the constructor's `%here`. The checker accepts it as if it were built in the current block. A
destructor-bearing field outlives `local`, so its destructor prints garbage (`7237089061798769239`), and `-s` reports
"use after scope closed". Base behaves the same. N3 is the variant that base did refuse.

### P4. Borrowing a value field through a conditional of struct values (segfault)

Repro: `repro/p4_cond_value_field_borrow.olang`.

`w((i if j < 0 else o).m.inner)` takes a conditional of two struct values from different scopes and borrows a value
field through its bare `mut` field, into a callee that builds into it. Both new and base segfault (exit 139), and
`-s` reports "use after scope closed". The same code written through a local, `x := i if ... ; w(x.m.inner)`, is
correctly refused (O11/O12).

## PLAUSIBLE - traced, not reproduced

- **Stale memo.** `SemanticRendersStr` memoizes by type, and only noteStrMethods clears the memo. If the evaluator
  (B9c, S8b, D13c and the like) asked about a type before its generic Str was instantiated, and no later `$` cleared
  the memo, codegen would pick the measure-then-write helper. rdPutStr would then reach `ErrorBugFound`. I found no
  program that does this.
- **Over-rejection (minor, not soundness).** `x := b.head2; b.head.next = x` in a Str is refused as a store, while
  `b.head.next = b.head2` is accepted. The read-out-of-region judgement only follows direct paths.

## Checked and found defended

**Item 1 (ERR_STR_STORES_IN_RECEIVER).** Every path that does not go through a read-only lambda capture or a
destructor is refused. Covered:

- direct stores: into fields, into array elements, through `&p` derived fields;
- calls, constructors and spawned calls;
- defer, for-in over arrays and Lists, E31b `l[0].next`, multi-result borrowed results;
- conditionals of references;
- fresh borrowed results (`T&p`) stored directly or through locals;
- writable local captures, nested lambdas, and lambdas calling helpers;
- generic Str (per instantiation, including `match T` and a reference type argument), and a Str reached through a
  generic `show(x <T>&)`;
- a declared array type's Str.

A Str storing its receiver into a global is refused by O1b and O10c.

**Item 2 (read order).** An array's `{len, ptr}` is read once and an enum is copied whole before its payload is
rendered, both in codegen and in the evaluator. Live reads of struct fields agree in every mode, including a value
local changed through a back reference and arrays repointed mid-render. Lists and Maps changed by element or key Strs
through globals are memory-safe (clean under `-s`), and `-b`, `-s` and `-i` give identical output.

**Item 4 (lambdas judged by their bodies).** O17 split lends through writable captures are refused, through:

- a helper, a nested lambda or an alias;
- `mkArr`, or a two-level helper;
- a generic method.

A lambda handing out a capture is refused (O14).

**Item 5 (O20 value field through a bare `mut` field).** Through a reference, a borrowed call result, a built call
result and an `Array<mut Mid&>&` element, it is correct under `-s` after an arena churn. The split-local case is still
refused. P4 is the same in base and does not come from this change.

**Evaluator against the run time.** These were compared across `-b`, `-b -d` and `-i`, with baked globals (K2) and
asserts on top. All agreed, and the globals were baked:

- Str writing through receiver references: order, structs, arrays, enums, Lists, Maps, joins, tuples, inline
  `Array<T, N>` fields;
- Str with I/O, where the call order is identical in every mode;
- a Str reading a global set at startup, where B5a ordering is correct.

The K1 refusal happens before any of a Str runs.

**Joins and the one-pass builder.**

- cgRunsCode and cgPieceFixed: scalars, chars and floats read through references or globals are loaded at
  evaluation. `==` reaching a declared `Eq` (deep, through arrays, enums and struct references) takes the built path.
- No overflow: a 27M-byte rendering, a million Str elements, `null` parts, and Strs on declared primitive and array
  types all came out right.
- Reentrancy: a 20k-deep recursive Str (linear, where base was exponential) works. Four tasks rendering concurrently
  are clean under `-r`.

Under `-i`, the 2k-deep recursive Str is OOM-killed. That is the known stage-1 memory limit, not this commit.
