# study3 - realistic programs on the newest rules

13 programs (2,511 lines) written the way an experienced programmer new to olang would write them, against
`/home/user/wt/s3c/build/out` (olang master 59c109e), finished 2026-10-09 20:30 CEST. Every program was first written
naturally, then changed only as far as the compiler forced; each workaround is listed below with the rule involved.
All 13 now build with `-b`; their output was compared with `-i` where `-i` can run them, and with globals the
compile-time evaluator baked (K2), each checked in a `test` or printed beside the run-time value.

Layout: `*.olang` the programs (final, working form); `repro/rNN-*.olang` one minimal reproducer per finding, each
with a header giving the rule, the expected and the actual behaviour, verified against the snapshot; `min/` the
bisection programs the reproducers came from; `probe/` the programs that forced a refused bake into a constant context
to learn why; `out/` each program's `-b` and `-i` output.

Classes: **(a) BUG** - wrong answer, invalid IR, or `-b`/`-i`/baked disagreeing; **(b) OVER-REJECTION** - a correct
program refused; **(c) DIAGNOSTIC** - the message did not say what to write; **(d) FRICTION** - by the rules, rigid
in real code.

## Findings, most serious first

| # | class | rule | finding | reproducer |
|---|-------|------|---------|------------|
| 1 | (a) | T7/T7a, D13c | Copying a `List` or `Map` value shares its storage but not its counts: after `b := a`, a push to one overwrites the other's elements; after `n := m; n.Remove("a")`, `m.Len()` is 7, `m.Has("a")` false, and walking `m` gives 6 keys. `Array<Map<..>>(n, Map<..>())`, the only spelling D13c allows, gives n maps sharing one bucket array. Silent, and `-b`/`-i` agree on the wrong answer. | `repro/r01-list-map-copy-alias.olang` |
| 2 | (a) | T7d, T7b | Invalid IR: returning an `Array<T, N>&` where the result is the value `Array<T, N>` (`return a`, `v := a; return v`, `v := try (row as Array<F64, 3>&) catch default ...; return v`). `-i` is right. | `repro/r02-fixed-ref-return-ir.olang` |
| 3 | (d) | E10, E10a, E10c | `==` on two `Array<T>&` is identity, on two `Array<T>` values element-wise, on two `String&` text. `ToArray()` returns a reference, so `c.Keys().ToArray() == m.keys.ToArray()` (an LRU checked against a model) is false for equal arrays while `$` prints them equal. A silent wrong answer. | `repro/r03-array-ref-eq-identity.olang` |
| 4 | (b) | O26a, O18c, O10d, T17c, T25b | The recursive-descent and Pratt idioms are refused: `e := p.sum(); return e` and `lhs := p.atom(); ... lhs = E.Add(lhs, rhs); return lhs` with built `E&` results. O26a's escape rule covers value locals, not reference locals. The only spelling that compiles is `lhs mut E&return = p.atom()` on every such local - `mut` needed only because a built result is writable, though nothing can be written through an enum reference. The port's parser is made of this. | `repro/r04-recursive-descent-return.olang` |
| 5 | (b) | O17 | A value local whose references live elsewhere cannot be lent even to a **read-only** callee when it was declared with `:=` from a call (`toks := split(line); toks.Len()`); the typed declaration `toks List<String&> = split(line)` compiles. The message says "the callee can store through it". | `repro/r05-o17-call-result-local.olang` |
| 6 | (b) | O17, O25h | Same rule, for-in element copies: `for p in parts { merge(total, p) }` (`from` read-only) is O17; `merge(total, parts[i])` compiles. | `repro/r06-o17-for-in-copy.olang` |
| 7 | (b) | O17, S4, E31 | Same rule, compound assignment: `s.values[i] += 1` on a List field of a `mut S&` parameter is O17 (the hidden place copy); `s.values[i] = s.values[i] + 1` compiles. | `repro/r07-o17-compound-through-param.olang` |
| 8 | (b) | O17, S9a | Same rule, for-in over a local value that is its own iterator and holds a List (a binary heap drained with `for v in heap`); the hand-written `try c.Next()` loop over the same local compiles. | `repro/r08-o17-for-in-local-iterator.olang` |
| 9 | (b) | O10c, O13c | `for k in m.Keys() { l.Push(k) }` (and `m.Values()`) is O10c with `m` and `l` in one block; `for e in m { l.Push(e.Key) }` and `m.Keys().ToList()` compile. A new std API that loses its element scope. | `repro/r09-map-keys-iter-scope.olang` |
| 10 | (d) | G11, O14c | A local `List<String&>`'s elements count as living where the list lives, whatever they point at; a by-value `List<String&>` result cannot say its elements borrow from an argument. Tokens cannot be keyed into the caller's map, a sort's ready list cannot extend the caller's graph. Worked around by allocating each list in the destination's scope (`deps List<String&>&g = ...`) or copying each string. | `repro/r10-g11-list-element-scope.olang` |
| 11 | (b)+(c) | O25e, C2d, O25g | A context struct holding a read-only reference to a local `List` and a writable reference to the caller's state - a parser holding its tokens and the caller's diagnostics sink - cannot be built: "these arguments live in different scopes, and the signature requires one ('&p')". Nothing in the signature says so, "&p" names nothing, and the sink holds only an `I64`. With `Array<I64>` in place of `List<I64>` it compiles. | `repro/r11-o25e-context-struct.olang` |
| 12 | (b) | C2d, T25d, O26a | Elements of a static text literal walked by for-in stop being static when the instance holding one lands in a local the function returns: `g.rooms.Put(name, Room(name))` in `fn world() Game`. | `repro/r12-static-literal-loop-c2d.olang` |
| 13 | (b)+(c) | E31, S3a, S4 | On a List, `l[i] += 1` works and `l[i]++` is "this cannot be written - a variable, an element or a member can". | `repro/r13-list-element-increment.olang` |
| 14 | (b) | G9a, D16a | `a.Fold(0, fn(acc I64, x I32) I64 {...})`: the literal binds `U` to `I32` before the lambda's written types are read - two D16a errors. G9a says a literal binds nothing while another argument can. | `repro/r14-fold-literal-init.olang` |
| 15 | (b) | T22, T25b | A lambda whose parameter is read-only (`b Box&`) is refused where the expected type passes `mut Box&`; reading where writing is allowed is always safe. | `repro/r15-lambda-param-permission.olang` |
| 16 | (d) | -i (B3e), K1 | The evaluator never frees: under `-i` a loop building and splitting a short line peaks at 1.46 GB for 2,000 turns and is killed at 12 GB for 20,000; a 300-line log analysis peaks at 1.47 GB, 5,000 lines are killed; LRU, word count and log programs could not run. The same limit silently stopped four of the eleven globals written to be baked (the evaluation budget, "the computation takes more memory than compile-time evaluation allows"): a 50-line word count, a 500-step LRU, a 512-sample FIR bank, a 100-frame ECS (`probe/`); a fifth calls `os.Exists`, an extern, and is rightly set at startup. | `repro/r16-interpreter-memory.olang` |
| 17 | (c) | T25c, O14 | Returning an existing read-only reference from a built `T&` result: "a read-only reference cannot become writable - pass a writable one, or drop the 'mut'" - no `mut` is written anywhere, and the fix is to borrow (`Item&l`). Seen five times. In r04's case the note suggests `lhs mut E&`, dropping the `&return` the local needs. | `repro/r17-t25c-drop-the-mut.olang` |
| 18 | (c) | O10c, B11 | The scope notes propose scope arguments that cannot fix the problem: a parsed entry whose text is a per-iteration line gets "make it where 's' lives: 'parse&s(...)'", and following it moves the error into `parse`; elsewhere "'At&g(...)'", "'Recv&total(...)'". The fix in each case was a copy (`$x`). | `repro/r18-o10c-note-wrong-fix.olang` |
| 19 | (c) | S18a, D14b, E16b | A failed guaranteed check (slice bounds, array length) aborts with no FILE:LINE, under `-b` and `-i`; assert/abort/unreachable now give one. | `repro/r19-check-abort-no-location.olang` |
| 20 | (c) | G24, G4, G21 | Cascades: after G24 ("N is 2 by one argument and 3 by another") the call's result recovers as `I32` ("I32 has no method 'Size'"); a constant introduced only in a result type gives 6 errors for 2 causes. | `repro/r20-cascades.olang` |
| 21 | (c) | E29, D3a | Reusing a parameter's name as a for-in variable is reported as a membership confusion ("to loop while it is in c: ...") rather than as shadowing. | `repro/r21-e29-hint-on-shadowing.olang` |
| 22 | (c) | T22a | "lambda$1 relates its arguments' scopes, which a call through a value cannot check - call it directly" - the compiler's own name, and advice that cannot apply to a stored callback. | `repro/r22-t22a-lambda-name.olang` |
| 23 | (c) | D9a, G22 | D9a's suggestion is spelled `Array<I16, <N>>&` where G22 requires `N`; following it gives G22's "N was introduced already". | `repro/r23-stale-angle-suggestion.olang` |
| 24 | (c) | S12b, D8c | `return match op { case "+" => 3, 4 ... }` gives "expected '}', found ','". | `repro/r24-match-value-two-results.olang` |
| 25 | (c) | T17, M10 | No did-you-mean for an enum case (`os.FileKind.Other`, the case is `OTHER` - std mixes ALL_CAPS cases with `Json.Str`); "'math' is no import here" does not offer the import; an undeclared local gets "did you mean 'At'?" (a method). | `repro/r25-small-messages.olang` |
| 26 | (c) | S12b, L18 | `nomatch => unreachable` gives "expected an expression"; a continuation line starting with `+` gives "expected '}', found '+'". | `repro/r26-parse-messages.olang` |
| 27 | (c) | B11, G16b | A scope error in a program's own generic method is reported once per instantiation, and the note's fix is spelled with the instantiation's types (`n Node<I64, I64>&c`) and without the `mut` it needs. | `repro/r27-generic-note-instantiated.olang` |
| 28 | (d) | D16c, T7b | A lambda cannot capture a local List, Map or channel value ("a copy of this loses its references' scopes"), while a captured array is borrowed. A callback cannot bump a captured `I64` either. | `repro/r28-lambda-capture-collection.olang` |
| 29 | (d) | S12, S13e | No guard-only or binding clause on a non-enum match: `case big if big > 100`, `case _ if n < 0` are "unknown name". The first attempt, `case v if v >= 32767.0` with `v` the matched variable, compiles by comparing `v == v` - and silently falls through for a NaN. | `repro/r29-guard-only-clause.olang` |
| 30 | (d) | L9 | Keywords cannot be method names though a method is reached only through `.`: `w.spawn()`, `p.fail(tok)`. | `repro/r30-keyword-method-names.olang` |
| 31 | (d) | R11 | "a default for a value holding references is not supported yet": `(try validate(t) catch default List<String&>()).Len()`. | `repro/r31-default-holding-references.olang` |
| 32 | (d) | T25c (permission batch) | A reassignable global pointing at one of several immutable constants (the current theme) is inexpressible, as recorded. | `repro/r32-global-current-reference.olang` |
| 33 | (d) | T25b (shallow) | A read-only reference to a struct with a `mut` reference field can be written through; std/linalg's destination forms (`Set`, `Fill`, `Add`, `Scale`) all take `m Matrix<<T>>&`, so a signature does not show which calls write. | `repro/r33-shallow-permission.olang` |
| 34 | (d) | E27 | Comprehensions whose elements are text (`String&[show(a) for a in args].Join(", ")`) are refused; every such site became a StringBuilder loop. | `repro/r34-comprehension-text.olang` |
| 35 | (d) | L14 | No multi-line or raw text literal: one literal spanning lines gave 11 errors in the first program (7 for the four-line reproducer); JSON test data needs every quote escaped. | `repro/r35-multiline-text.olang` |
| 36 | (d) | G3, G4, G10c | A function whose constants appear only in its result (`fn cellsOf(rows) Array<Array<Char, <W>>, <H>>`) cannot be called: no way to write the arguments and no inference from the expected type. | `repro/r20-cascades.olang` (part 2) |

Smaller friction, no reproducer: errors carry no data (T20), so a parser, a validator and a build tool each grew a
`Diag`/`Where` holder struct, and there is no "clean up and pass the same error on" short of `defer`; `std/chan`'s
capacity is `I32` where every count is `I64`; `linalg.Matrix` has `Get`/`Set` but no `At`/`SetAt`, so no `m[i, j]`;
a `String` variable needs `$` in a join (E11b) - three times in one file, but the message is exact and the hazard it
prevents is real; `List.Pop` fails with the default error, so an iterator's `Next` must map it to `Exhausted`.

## Programs

| program | lines | what it uses | workarounds | runs |
|---------|-------|--------------|-------------|------|
| `calc.olang` - tokenizer, Pratt parser over a recursive enum, folder with nested patterns, evaluator | 375 | match values with guards and nested patterns, recursive enums, Map, StringBuilder, comprehension, defer, math | 13: `fail` renamed (30); match value giving two results rewritten (24); `mut E&return` on 4 parse locals (4); `Expr&e` result (17); `nomatch { unreachable }` (26); text comprehension to a loop (34); script as an array literal (35); tokens declared typed (5); diagnostics sink taken out of the parser, copied out with `defer` (11); names copied into the sink with `$n` (18); map key copied; argument list allocated `&return` (O26 on `ToArray`, known since study2) | -b, -i, baked: the whole tokenizer + parser + evaluator ran while compiling (`@calc_Baked = constant double 1021`) |
| `buildgraph.olang` - make: rules, Kahn sort, staleness by mtime, os.Exec | 190 | io.Writer + defer Flush, filepath, os.Stat/Exec/WriteFile, Map.Update, Sort, PadEnd, enum with Str | 13: holder struct for the error line (no I64 out-parameter); lists allocated `&g` (10, 5); `mut List&` in the map's value type (17); `Keys()` loop rewritten (9); names, stderr copied (18); `os.FileKind.OTHER` (25); `done` renamed; build text as pieces (35); `$name.PadEnd` (E11b); `finished` aliased for a lambda (28) with its scope written (O25) | -b, -i; a second run finds everything up to date |
| `adventure.olang` - rooms, items, scripted session | 224 | enums with payloads, match values with guards and nested matches, trait with a default, `in`, `is not`, List.RemoveAt | 4: two joins `$(...)` (E11b, good messages); `Item&l` result (17); room name copied (12) | -b, -i, baked (the whole session) |
| `sparse.olang` - BSR matrix over `Block<T, B>`, CG solve of a Poisson problem | 223 | constant generics, `Dynamic` sentinel, G26 `R if R != Dynamic`, G27 asserts, `@`, `x[i, j]`, operator methods, Pair keys, `x, n := cg(...)` | 3: `mut List&` value type; `Fold(I64(0), fn(acc, b) ...)` (14, 15) | -b, -i, baked; a mismatched product is a compile-time error with the instantiation |
| `logs.olang` - synthetic log written then analysed | 168 | io.Writer, io.Lines under `try`, os.Create/Open/Exec, rand, Map.Update, Keys().ToList(), Sort, percentiles, PadStart | 3: `$` on text pieces; entry fields copied (the rejection was right: each line dies with its turn; 18); I64 instead of text comprehension (34) | -b; -i killed (16) |
| `dijkstra.olang` - generic heap, road graph, grid maze | 209 | trait `Ordered<T>` as a constraint with defaults, heap as an iterator, `Array<Array<Char, W>, H>`, parallel assignment swap, 3-clause for with `:=` | 2: heaps declared `mut Heap&` (8); maze cells filled in the constructor body (36) | -b, -i, baked |
| `lru.olang` - generic LRU, doubly linked `mut Node&`, model check | 151 | permission rule on fields, Map of `mut Node&`, function-valued field, `try ... catch default` | 5: `n mut Node<K, V>&c` (27); counter struct for a lambda (28); list aliased for a lambda (28); key copied in the callback (22); `.Equal` for the model check (3) | -b; the global meant to bake is set at startup (16); -i killed at 20,000 steps, agrees at 1,000 (2 GB peak) |
| `wordcount.olang` - sequential, chunked (`spawn parts[t] = ...`) and channel pipeline | 147 | join/spawn, spawn targets, std/chan, Map.Update, Sort of Pairs, time | 8: import math; `I32(workers)` for Chan; channels as `mut Chan&` locals; worker map allocated `&results`; batch list `&work`; capturing lambdas replaced by named task functions (T22a, 22); maps returned as `mut Map&`; keys copied when merging (a correct O26a catch: the total is returned) | -b, `-r` (no races); -i refuses tasks (and is killed first); the small global meant to bake is set at startup (16) |
| `dsp.olang` - Q15 FIR filter bank vs F64 | 155 | declared `Q15 I16` with Plus/Minus/Mul/Neg/Less/Str, `Array<Q15, N>`, trait default `Run`, math.Sin/Cos/Round, comprehensions | 3 (+1 of mine): `&` on a fixed-array constructor parameter (23); operator at line end (26); `case v if` replaced by ifs (29) | -b, -i; the global meant to bake is set at startup (16) |
| `config.olang` - JSON config validator over a recursive-enum schema | 176 | std/json (Parse, Position, `try j[k]`, AsX), recursive enum with arrays of itself, `lo <= v <= hi`, `not in`, filepath, os.Exists | 3: loop variable renamed (21); JSON as escaped pieces (35); helper instead of a default (31) | -b, -i (the global calls os.Exists, so it is set at startup) |
| `ring.olang` - ring buffer over `Array<T, N>`, moving-window statistics | 149 | RunFrom (two runs when wrapped), own iterator, At/Len, iterator defaults Count/Fold, comprehension over an iterator, `x, y := ...` | 2: `$` on text pieces (3 sites); guard match replaced by a conditional (29) | -b, -i, baked |
| `ecs.olang` - sparse-set component stores, systems, linalg bulk check | 214 | `Store<T>` with At/SetAt, enum components, match values with guards, linalg.Matrix, rand | 3: `spawn` renamed (30); `l[i]++` and `+=` spelled out (13, 7) | -b, -i; the global meant to bake is set at startup (16) |
| `typedmat.olang` - `Mat<T, R, C>` with `Dynamic` over std/linalg, network forward pass, least squares | 130 | constant generics checked at compile time where known and at run time where Dynamic, At/SetAt/TryAt, `try c[5, 5] catch default`, `as Array<F64, C>&`, linalg.Gemm/Solve | 2: join `$(...)`; fixed array copied into a local before returning (2) | -b, -i, baked |

`-b`, `-i` and the baked globals agreed everywhere they could all run; no program produced a different answer under
`-i`. The race detector found nothing in `wordcount`.

## Recommendations for the friction items, by PRINCIPLES.md

1. **List and Map copies (#1).** Principle 2 says a copy of an array is an assignment someone wrote and gets you a
   copy; `b := a` on a List looks exactly like that and gets half of one. Make `List`, `Map` (and `StringBuilder`,
   built on List) handles: all of their state - counts included - in one record behind one reference, so a value copy
   is an alias with one count, as a Go map is, and `Clone()` makes the real copy. This keeps `l := List<I64>()` and
   `items List<T>` fields as they are written today, removes D13c's refusal for arrays of maps (a fill then visibly
   shares one map, which its message already says), and needs no new rule. The alternative - reinstating the old "Vec
   rule" (a struct owning run-time storage is reference-only) - would put `&` on every List field in the corpus.
2. **`==` on array references (#3).** Since E10c gave identity its own word (`a is b`), `==` meaning identity on an
   `Array<T>&` only keeps a trap: String compares text, an array value compares elements, the same array by reference
   compares addresses. Make `==` element-wise for arrays however they are held (as String's `Eq` does for text); `is`
   stays identity. One rule, and it composes with `Map` keys and `in`.
3. **Escape analysis for reference locals (#4), and the permission of a built result.** Extend O26a to a reference
   local whose every assignment is a built result (or another such local, or an enum built from such locals) and that
   the function returns: it lands in the result scope, nothing written - Go's escape analysis, static, exactly as O26a
   already does for values. Separately, an enum reference carries no meaningful permission (a payload is never
   assigned, and T25b is shallow), so let `E&` and `mut E&` fit each other; together these turn the parser's
   `lhs mut E&return = p.atom()` back into `lhs := p.atom()`.
4. **O17 by the callee, not by the type (#5-#8).** "The callee can store through it" is decided from the value's type
   (a List holds `mut` fields), so it fires for `Len`, `At`, a read-only `merge(from)`, a compound assignment's
   hidden place and the for-in lowering. D9b already computes from the checked body whether a callee writes a
   parameter (`paramWritten`); use that for O17, and have the compound-assignment and for-in lowerings borrow the place
   rather than copy it. Four reproducers close with one change.
5. **Element provenance (#10, #9).** O13c already lets a constructor's result carry the bindings its arguments made;
   extend it to every call whose by-value result's references are obligated to an argument (O14c records exactly that),
   so `toks := split(line)` knows its elements are `line`'s, and give MapKeyIter/MapValueIter the binding ListIter has.
   This is what a tokenizer needs; the alternative (allocate every temporary list in its destination's scope) leaks the
   front end's scratch lists into the module's arena.
6. **Context structs (#11).** C2d should bind each argument to the field that holds it rather than all of them to the
   instance's one scope when the fields are read-only or hold no references: a pass holding its input and a sink is the
   commonest struct a compiler declares.
7. **Lambda captures (#28).** Borrow a captured struct value read-only, exactly as T7b borrows a captured array, so a
   predicate over a local map needs no alias; this is the same rule extended, not a new one. Counting from a callback
   stays a struct with a `mut` reference, by design.
8. **Guard-only clauses (#29).** Admit `case _ if cond` on any match: `_` already means "anything" in a payload
   position, the subject is already named, and it is the multiway range test match-as-a-value is missing. A bare name
   that is not a declared variable could stay an error.
9. **Keywords as method names (#30).** Allow any identifier, keywords included, after `.` and as the name in a
   receiver clause: a method is only ever reached through its receiver (M19), so nothing can be misread, and the
   commonest verbs of real APIs (`spawn`, `fail`, `match`, `join`, `error`) come back.
10. **Function-type fit (#14, #15).** Read a lambda's written parameter types before binding variables from literals
    (G9a already says a literal binds nothing while another argument can), and let a function value fit when its
    parameters ask less permission than the expected type offers (contravariant) and its result gives more.
11. **Result-only constants (#36).** Extend G10c's "take the arguments of the expected type" from constructors to
    function calls; it adds no syntax and covers `out Array<Array<Char, W>, H> = cellsOf(rows)`.
12. **Evaluator memory (#16).** The port's MIR evaluator is where this is fixed (decided 2026-10-09); until then the
    compile-time budget silently decides which globals bake - worth a note in `-i`'s and K2's documentation that
    ordinary data sizes exceed it, since scripting is principle 5's first item.
13. **Raw text (#35).** One raw, multi-line literal form (Go's backquote) serves scripts, tests and embedded JSON at
    once - principle 5 - and is the one addition here that is new syntax.
14. **Defaults holding references (#31), a reassignable global reference (#32).** Both are recorded limits real code
    has now asked for; #32 is a direction question (a global's binding is the one place `mut` still means the binding -
    making globals reassignable within their own module, as locals are within their block, would let `mut` speak only
    about referents everywhere, the permission batch's own principle).
15. **Shallow permission (#33).** At least make std's destination forms declare `mut Matrix<<T>>&`, so the signatures
    say which calls write (D9's promise); whether a read-only reference should make `mut` fields read-only through it
    is a direction question.
16. **Text comprehensions (#34).** The recorded deferral of comprehensions with reference elements is the one users
    hit first: `String&[... for ...]` with each element built where the array lands.

## What worked well

Match values with nested patterns and guards over enums; recursive enums as syntax trees; constant generics checking a
matrix product's shape while compiling and a `Dynamic` dimension once at run time, with G27 asserts reported at the
instantiation; whole pipelines baked into globals (a tokenizer + parser + evaluator, an 18-move adventure session, a
sparse product, a maze search); `-i` agreeing with the build on every program it could hold; `RunFrom` walking a
wrapped ring as two runs; `io.Writer` with a deferred `Flush`; `io.Lines` under `try`; `os.Exec`, `std/json`,
`std/filepath`, `Map.Update`, `StringBuilder`, `PadStart`; and most join/permission messages (E11b, O25's alias
advice, T25b's "one with no 'mut' in its type") saying exactly what to write.
