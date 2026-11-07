# Soundness review of 7345ff9 (the fix for /home/user/review/str1)

Commit 7345ff9 was built in `/home/user/wt/rvstr2` (detached, on top of d6c7f52). For comparison, d6c7f52 and d0abfe8
were built in scratch worktrees, which were removed afterwards. "new" means 7345ff9.

Every finding below was reproduced. The reproducers are in `repro/`. Each one starts with a comment giving what it
shows and what was observed in each build. The modes used were:

- `-b`;
- `-b -d`;
- `-b -s`, the scope sanitizer;
- `-b -r`, ThreadSanitizer;
- `-i`.

The str1 reproducers were run again on new:

- N1-N3, P1 and P4 are now refused.
- P2, P3 and P3b run correctly (`42`), clean under `-s`.
- N4 and N4b peak at 11 MB.
- N5 destructs.
- N6 reaches 120,000 levels.

## Summary

The new rule for Str's receiver works like this:

1. The receiver's scope variables are marked `noBuild`.
2. A callee bound there is allowed if its settled body builds nothing there (`regionBuiltIn`).
3. Codegen passes `null` for that scope.

This is only as complete as the checker's list of build sites, and that list is shorter than codegen's. At least five
sites are missing:

- a closure, which lives where its captures live (D16d);
- a task's stand-in (P2);
- a `Call` adapter object (E31);
- the new value in a conditional or a match, which is built where the existing value lives (E28/S12b);
- a `catch default`, which is built where the call's result lives (R9a).

Where one of these is missed, the outcome depends on where it happens:

- **In a callee**, the null reaches the allocator at run time and the program segfaults (F1).
- **In Str's own body**, `cgCheckNoNullScope` stops the compiler with an internal error that names no location (F2).
  One such Str is very ordinary: the receiver's name, or a literal fallback.
- **In a lambda Str makes**, the null is read as the program's scope, so whatever is built there is kept until the
  program ends (F3).

None of these is a silent use-after-free, but each is a regression against both d6c7f52 and d0abfe8. The analysis also
over-rejects:

- A helper that walks a Map, or calls `.Iter()` on a List, can no longer be called from a Str with the receiver's
  collection (O1, O2).
- The same loop written directly in Str's body still compiles.

The P2 fix destructs some constructor calls twice (F4).

The join rule, the builder and the other fixes held. Every join tested gave the same text in all modes: baked into a
global (K2), in an assert decided while compiling (S18c), under `-b`, `-b -d`, `-b -s` and `-i`.

## CONFIRMED - introduced by 7345ff9

### F1. A callee bound where Str's receiver lives allocates in the null scope (segfault)

Repros: `f1a`-`f1g`.

The callee's settled body is judged by `regionBuiltIn`, which counts only some build sites:

- temporaries declared, assigned, returned or passed;
- stores;
- what callees build.

Codegen has more build sites than that. Here is each callee shape that was tested, and what it does:

| Repro | The callee, given the receiver's node or field | new `-b` (also `-d` and `-s` for f1a) | d6c7f52 | d0abfe8 |
|---|---|---|---|---|
| f1a | `f := fn() I64 { return n.v }; return f()`, a closure where `n` lives (D16d) | segfault, exit 139 | `4` | `4` |
| f1b | `join { spawn show(n) }`, a task stand-in made in `n`'s scope (P2) | segfault | `4 4` | refused (purity) |
| f1c | `join { spawn fn() { println($n.v) } }` | segfault | `4 4` | refused (purity) |
| f1d | `applyI(g)`, where `g`'s type declares `Call`, so an adapter object is made where `g` lives (E31) | segfault | `42` | `42` |
| f1e | `x := n if n.v == 0 else Node(1, null)` (E28) | segfault | `1` | `1` |
| f1f | `x := try find(n, 1) catch default Node(1, null)` (R9a) | segfault | `1` | `1` |
| f1g | f1a through a generic function and through a trait default (G19) | segfault | `3 10` | `3 10` |

For f1a, gdb shows the fault inside `__olang_scope_alloc_a`, called from `peek` (b1.olang:19), called from `Str`, called
from `olang.rdb.b1[Bag]`. `-i` prints the right answer in every case where it ran (f1a, f1d), because the evaluator
does not model the null scope. So `-i` and the built program disagree.

`cgCheckNoNullScope` only catches a literal `ptr null` in Str's own body. In a callee the null arrives as an argument,
so nothing checks it. `-s` cannot report it either: a null address is not a sanitizer fault, so it falls through to the
plain SIGSEGV.

### F2. The same build sites in Str's own body stop the compiler

Repros: `f2a`-`f2f`.

The checker accepts each of these programs, and then `cgCheckNoNullScope` fires. The message is
`olang: internal compiler error: a check inside the compiler failed - a bug in the compiler, not in the program`, with
no location.

| Repro | The Str | d6c7f52 | d0abfe8 |
|---|---|---|---|
| f2a | `name := b.name if b.name.Len() > 0 else "anon"; return $name` | `anon` / `x` | `anon` / `x` |
| f2b | `x := b.head if b.k == 0 else Node(1, null)`, and the same as a `match` | `1 2` | `1 2` |
| f2c | `x := try find(b.head, 9) catch default Node(0, null)` | `0` | `0` |
| f2d | `return $applyI(b.g)`, where `b.g`'s type declares `Call` | `42` | refused (purity) |
| f2e | `join { spawn show(b.head) }` | `4` / `b` | refused (purity) |
| f2f | `fn (b Bag&) Str() String&b { return b.name if b.k == 0 else "lit" }` | `lit` | `lit` |

f2a is the first thing a Str writer reaches for. Two variants behave differently:

- Rendering the conditional directly, `$(b.name if ... else "anon")`, compiles, because P3 builds a `$` operand where
  the `$` stands.
- The same declaration inside a lambda Str makes compiles too, and does not grow over 1,000,000 renderings (D16d
  builds the lambda in Str's block).

None of these is caught by an E11c/O12 error, either. The checker never sees the build.

### F3. A lambda Str makes reads its capture's null scope as the program's, which leaks

Repro: `f3`.

`cgClosure` stores the receiver's scope in the environment as `null`. A lambda's prologue reads a null capture scope as
"the program's scope, as this thread reaches it" (O1b), so inside the lambda the receiver lives in the program's scope.

The lambda calls a helper that makes a closure capturing the receiver's node. That closure is built in the program's
scope once per rendering, and is never reclaimed. Peak RSS over 2,000,000 renderings:

| Build | Peak RSS |
|---|---|
| new | 82,504 KB |
| new, `-d` | 82,964 KB |
| d6c7f52 | 11,104 KB |
| d0abfe8 | 11,068 KB |

Under `-s` it is clean, because the program's scope never closes. Any other missed build site inside such a lambda (an
E28 arm, a catch default) lands in the program's scope the same way.

### F4. P2 destructs one constructor call twice

Repro: `f4`.

`promotedOp` marks only the operand that the promotion is handed. Three cases slip through:

- A conditional (E28) or a match (S12b) of new destructor-bearing values: the flag names the conditional, never the
  call.
- An argument for a generic by-value parameter bound to a reference (`id(Res(1))`): the flag names nothing.

In each case `cgFuncCall` registers the built instance, and the promotion copies it and registers the copy too.

`Res` destructs and records itself in a field. Both destructions print "this instance destructed before: false", so
these are two distinct copies of one construction. A resource is released twice (C11, O16).

| Build | Destructions printed |
|---|---|
| new `-b` and `-b -s` | 6, 6, 4, 4, 2, 2, 1, 1 |
| d6c7f52 and d0abfe8 | 6, 4, 2, 1 |

The double destruction happens in every position tested:

- `x := c1 if c else c2`;
- a match value;
- `take(Res(6) if c else Res(7))`;
- a constructor argument;
- `l.Push(...)`;
- an assignment;
- `return Res(40) if c else Res(41)`;
- `id(Res(1))` and `first(Res(2), Res(3))`.

The fix does correct other shapes:

- Statements, member reads, `$Res(20).k` and `Pair(Res(4), 5)` used never to destruct, and now destruct once.
- So does the second argument of `first(Res(2), Res(3))`.

### F5. The builder triples what a loop condition leaves behind (memory, minor)

Repro: `f5`.

The builder grows in the arena of the block the join stands in. A join in a `for` condition stands in the enclosing
block, so it leaves its abandoned growth there on every iteration (room 64, then want 1000, then 2000), beside the text
itself.

Temporaries piling up in a loop condition is pre-existing. The builder makes it worse. The commit says the builder
"leaves fewer than 2n behind"; here it leaves about 3n.

Peak RSS over 200,000 iterations of a 1KB rendering:

| Build | Peak RSS |
|---|---|
| new | 826,720 KB |
| d6c7f52 | 207,928 KB |
| d0abfe8 | 207,928 KB |

### Over-rejections introduced by 7345ff9

- **O1 (`o1`): a helper walking a Map cannot be called from a Str.**
  - Shape: `fn total(m Map<String&, I64>&) I64 { for e in m { ... } }` and `for k in m.Keys()`, given `r.m`. Both are
    refused with `error[E11c, O12]`. d6c7f52 and d0abfe8 print `3 ab`.
  - The same loop written in Str's body compiles (`checks/cases/strwalks`).
  - Cause: in the helper, the hidden iterator's call lands by its obligations (O18c) where `m` lives. `bindingEdges`
    then records a `builtOnly` edge to `Iter`'s result scope, and `Iter`'s constructor call counts as built there. So
    the helper "builds" where the receiver lives. At run time nothing is allocated there: `MapIter` is a stack value.
  - In Str's own body, `landByObligationsIn` refuses to land the same call at a `noBuild` variable, which is why the
    direct form passes.
- **O2 (`o2`): the same for a List.**
  - `xs.Iter().Count(f)` in a helper given `b.l` is refused; written directly in Str it compiles. d6c7f52 prints
    `6 6`.
  - Every Iterator default was checked: `Fold`, `Count`, `Any`, `All`, `Map`, `Filter` and `ToList`. All are refused
    through a helper and accepted directly.
  - `for x in xs`, `xs.First()` and `xs[2]` in helpers still pass.
- **O3 (`o3`): a cursor given a new node (by design, minor).**
  - `x := b.head; x = Node(7, null)` is refused. `x` lives where the receiver does (O25a), and `x Node& = b.head` is
    O25a's own error, so this has no spelling in a Str.
  - d6c7f52 and d0abfe8 print `7`.
- **Diagnostic.** O10c's note suggests `declare it where 'n' lives: 'l mut List<mut Node&>&n = ...'`
  (`o4_note_suggests_refused_fix`). Inside a Str, following that note now gives `error[E11c, O12]`.

## PLAUSIBLE - traced, not reproduced

- **`cgCheckNoNullScope` does not look for every function that takes a scope.**
  - It checks for `scope_alloc`, `scope_alloc_a`, `scope_alloc_zeroed` and `register_dtor` only. It does not check for
    `__olang_scope_merge(ptr null, ...)` or `__olang_scope_resolve(ptr null)`.
  - Every task path that was traced (`cgSpawnSubScope` with persist) allocates the stand-in in the parent first, so the
    alloc pattern fires first (f2e).
  - I found no shape that emits a merge into null without an alloc before it.
- **The F1 classes probably have more members.**
  - `regionBuiltIn` is a hand-kept list, while codegen decides placement through `cgWhereBuilt`, lambda homes,
    `cgResultScope`, `cgCallAdapterValue`, spawn sub-scopes and C2d landings.
  - Any other codegen site that resolves a callee's scope variable to allocate would fail the same way.
  - A shared "where is this built" predicate, used by both the checker's region flags and codegen, would close the
    class rather than these five members.

## Pre-existing - the same on d0abfe8

- **Diagnostic only (C2d).** Consider `Holder(n).l.Len()` or `w := Wrap(n)`, where the field is a writable bare
  `mut Node&` and `n` is a parameter. The message is "this instance holds a reference to an argument it would outlive".
  The instance is a temporary in the callee's block and outlives nothing. The rule actually at work is exactness (a
  writable bare field lives exactly where its instance does). The same message appears on d6c7f52 and d0abfe8
  (`pre_c2d_exactness_message`).
- No pre-existing soundness finding came up in the paths reviewed. P2's fix closed the older missing destructions
  noted under F4.

## What held

- **Item 1, direct stores and builds in Str.** All of these are refused with `error[E11c, O12]`:
  - direct, through `defer`, through a spawned call and through a lambda (called, passed to `apply`, nested);
  - a callee in a recursive cycle declared after Str (settled late);
  - a generic callee;
  - a by-value receiver writing its own field;
  - `List.Push` and `Map` writes through the receiver;
  - an array reference field given a new array literal.
  - E31b `b.l[0].next = ...` is refused (O10c).
  - Storing a Str-made lambda into a global is refused (O1b).
  - A `String&b` result building text is refused.
  - The str1 reproducers N1, N1b, N1c and N2 are refused.
- **Correct Strs still compile** (clean under `-s`):
  - `for e in m`, `b.l.Iter().Fold/Count/...` directly, `for x in b.l`;
  - `r.m.Iter().ToList()` then `Sort` (Map in key order);
  - a local `List<Node&>` of receiver nodes;
  - `List<String&>` of names then `Sort` and `Join`;
  - nested Str renderings;
  - a lambda capturing the receiver, also spawned.
- **Item 2, Go's join rule** (`held_join_*`). Each was compared across `-b`, `-b -d`, `-b -s` and `-i`, and where
  possible baked (K2) and asserted while compiling (S18c). All agreed.
  - Structs, enums and numbers render as evaluated.
  - Arrays keep their storage and length: a new-length reassignment shows the old elements, a same-length one shows
    the new elements.
  - Fixed arrays and references render as they are when the piece renders.
  - A Str in an earlier piece that changes later pieces: values are as evaluated, references and arrays as rendered.
  - Later operands that run `At`, `Slice`, `Less`, a comparison chain, a conditional, or a deep `==` reaching a
    declared `Eq`, all writing a global struct an earlier piece holds: the struct is as evaluated.
  - A List shrunk, popped or cleared, or a Map cleared, by a later operand: memory-safe under `-s`, and the same in
    every mode.
- **Item 3, the builder:**
  - Joins reaching a Str left by `continue` and by a propagated error a million times peak at 11 MB (str1's N4/N4b
    likewise).
  - `done` and `fail` inside a Str in tests, including through a List element's and a field's rendering and three
    frames deep, destruct what Str built and run the next test (N5).
  - Recursion through a Str reaches 40,000 levels (80,000 segfaults). d6c7f52 reached 20,000 levels (40,000
    segfaults); d0abfe8 is exponential there, since it calls Str twice. Recursion through a non-Str join reaches
    120,000 levels, as d0abfe8 does (d6c7f52 failed at 100,000).
  - Four tasks rendering Lists, Maps and Strs through joins are clean under `-r`.
  - Joins reaching a Str work, under `-b`, `-b -d` and `-b -s`, in:
    - a lambda;
    - a global initializer;
    - a destructor and `defer`, including deferred code run by a return from a nested block (no growth over
      300,000 calls, `held_deferred_join_return`);
    - a match block and constructor bodies (top level and nested);
    - a catch default, tasks and a `for` condition.
- **Item 4:**
  - **N3.** `Map.Str` through `alone(x)` renders exactly as before for many shapes: text and char keys (one containing
    `, false)`), struct keys with `Eq`, List values, a value with `Str`, enum keys, fixed-array values, nested Maps,
    `Pair` values. It is the same baked, under `-s` and under `-i`.
  - **P1.** A reading lambda over a read-only capture is still allowed. Storing through one, through a helper or a
    nested lambda, is refused with O17.
  - **P3.** Fixed.
  - **P4 and the new O20/O12 refusals.** These are refused:
    - a match;
    - an element store;
    - through a callee;
    - through a `:=` local;
    - a nested conditional;
    - a temporary arm built from another scope (C2d);
    - a landing call arm (O10c).
  - **No over-rejection** from them with both values in one scope, a global, or a parameter (`held_conditional_same_scope`).

## Files

- `repro/f1a`-`f1g`, `f2a`-`f2f`, `f3`, `f4`, `f5`: the confirmed findings.
- `repro/o1`-`o4`: the over-rejections and the stale note.
- `repro/pre_c2d_exactness_message`: the pre-existing diagnostic.
- `repro/held_*`: the programs behind "what held". `held_done_in_nested_str` runs with `-t`.
