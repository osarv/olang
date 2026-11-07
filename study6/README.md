# study6 - larger programs with long-lived, mutated, interlinked state

Four programs (1,563 lines) written the way a newcomer reading SPEC.md would write them first, then changed only as far
as the compiler, a wrong answer or `-s` forced, against `/home/user/wt/s6c/build/out` (master 69342d4), 2026-10-10.

Layout: `progs/*.olang` final; `progs/first/` as first written (diff them: every change is a workaround, commented with
its rule and finding number); `repro/rNN_*.olang` one reproducer per finding, header giving rule, expected, actual and
numbers; `out/` outputs per mode; `memtime.sh CMD` wall time and peak RSS (no /usr/bin/time here).

| program | what | -b = -b -s = -b -d -s | -i |
|---|---|---|---|
| interp (677) | lexer, Pratt parser into recursive enums, Env = Map + parent link, closures, lists, a 200k-turn garbage loop | same (-s 37 s vs 0.56 s) | OOM (7.5 GB) inside fib(20); known stage-1 limit |
| ecs (306) | components in Maps keyed by entity id, emitters, spatial hash rebuilt per step, eaters carrying food (hierarchy, recursive destroy), event log | same | same at Steps=30 (2.8 GB) |
| mk (317) | dependency graph from files, DFS cycle detection, Kahn order, mtime staleness, 4 worker tasks + 2 channels running os.Exec, incremental rebuild, cycle | same; `-r` no report | stops: tasks wait on each other (known) |
| editor (263) | piece table, undo/redo stacks of enum edits, line index, checked every 500 of 20k random edits against a naive model | same | same at 300 edits (2.9 GB) |

## Findings, most serious first

**r01 (a) BUG, use after scope closed / wrong output.** A mutating method on an element read out of a List -
`g.users[j].Push(i)`, `boxes[i].items.Push(x)`, `(try m.Get(k)).Push(x)` - inside a loop allocates the inner list's new
chunk in the loop body's arena (where the handle copy At/Get gave back landed) and links it into state that lives where
the outer list does. -b/-d print garbage (`1 3552632`), -s aborts, -i is right. mk segfaulted with no output on its
first run (reverse edges of the dependency graph). `l := users[i]; l.Push(x)`, `for l in lists`, outside a loop: fine.
Fix: the callee allocates where the receiver's referents live, never where the copy landed (or reject, as study 5 r02
asked for a mut call on an At value). `repro/r01_mut_method_on_list_element_in_loop_uaf.olang`

**r02 (a) BUG, unbounded memory - O26a moves NUMBER locals into a borrowed result's scope.** A function returning a slice
of its parameter (`Array<T>&a`) computed from local `I64`s allocates each of them in a's scope. `List.RunFrom` has three,
and every `for x in l` calls it once per chunk: walking a long-lived List leaks ~24 B per chunk into the list's scope
for ever (1,000 elements walked 1.6M times: 272 MB; ecs grew 0.5 KB a step, flat with index loops). It is also 17% of
ecs's instructions (r11). Fix: O26a must skip locals that hold no references, as it says.
`repro/r02_o26a_number_locals_leak_into_borrowed_scope.olang`

**r03 (a) BUG, spec violation - a List walk continues after the list shrank.** `for x in l` with `l.Clear()` at x == 1
gives 2, 3, 4; removing the walked element gives `[0, 20, 40, 40, 40]` (40 held once). SPEC says the next step after a
Clear/Pop below the position is the end. The run-wise walk (S9f) keeps the slice length taken when the run was asked for;
the review fix that ends ListIter at `at >= count` does not reach it. ecs destroyed carried items twice (2,049 times in
24k steps). Fix: re-check `Len()` (or `at < count`) per element in the S9f lowering, or re-ask for the run after any
call. `repro/r03_list_walk_continues_after_clear.olang`

**r04 (b) OVER-REJECTION, C2d inside map.olang:28.** A `Map<K, V>` whose V holds (by value) a Map of V, or reaches the
map's holder through references (an interpreter's `Value.Fn(Closure&)` -> `Env&` -> `Map<String&, Value>`), is refused
at the Map's type with a note into mapSlot's constructor - so a JSON-like dynamic value or an environment of values
cannot be a Map of values (List works). Workaround: `Map<String&, Value&>`, boxing every value. Fix: the instance-scope
analysis of mapSlot/MapEntry must not loop through the recursive V. `repro/r04_map_value_reaching_map_c2d.olang`

**r05 (b) OVER-REJECTION, O10c - a field or payload read straight off a call's result.** `names.Push(p.next().text)`,
`cycle.Push(g.mods[p].name)`, `for d in g.mods[i].deps`, even `eprintln("FAILED " $mods[i].name)`, and `l := args[0] as
Value.Items; l.Push(...)`: O10c with a note at List.At; through a `:=` local each compiles and runs right under -s. Hit
9 times in 3 of 4 programs (recorded as a limit for element types with mut reference fields; it also hits Token, which
has none). Fix: give the read the binding a `:=` local gets. `repro/r05_call_result_read_through_o10c.olang`

**r06 (b)+(c) OVER-REJECTION, O10c - `l[i] = v` refused where `l.SetAt(i, v)` compiles**, with the note at List.At
(which the statement never calls). Interpreter's `a[i] = v`. Fix: check E31's SetAt lowering as the call is checked.
`repro/r06_index_store_o10c_note_at_list_at.olang`

**r07 (b)+(c) OVER-REJECTION, E25/C2d - `Env&c(c.env)` refused, `local mut Env&c = Env(c.env)` compiles.** E25 says a
scope argument on a constructor is where the instance lands; C2d's own note proposes the refused form, and "would
outlive" is wrong (the issue is exactness). A closure call's frame. Fix: treat the scope argument as the declaration.
`repro/r07_e25_ctor_scope_arg_c2d.olang`

**r08 (d) principle 1 - long-lived interlinked structures only grow.** An Env with a writable parent link must live
exactly where the root does (C2d), so every frame and value an interpreter makes lives until it ends: 100k loop turns
193 MB, 400k 717 MB (1.8 KB a turn); one frame a turn alone 195 B. In ecs, a List per carrier removed with the carrier,
and event-log texts, ~0.8 KB a step. No spelling lets a dead part go short of a hand-written index heap and collector.
Direction: a scope that can be compacted (copy the reachable part into a fresh one), or relaxed exactness for a
read-only parent link. `repro/r08_long_lived_structures_never_shrink.olang`

**r09 (d) memory trap - a slice of a temporary built where the slice must live keeps the whole temporary.** The compiler's
note led to `gone String&history = m.text()[at:at + n]`: 40k edits 221 MB against 27 MB (3-character slices of 1 KB
texts: 140 MB vs 11 MB copying with `$w[0:3]`). Fix: copy the slice when the temporary lands in a longer-lived scope,
or say what is kept. `repro/r09_slice_of_temp_keeps_whole_temp.olang`

**r10 (c)+(d) DIAGNOSTIC, O25 - replacing a long-lived List each step.** `still := List<I64>() ... w.alive = still` gets
"declare it with ':='" for a `:=` local; the spelling that compiles (`still mut List<I64>&w`) grows by the old list every
step (ecs: 298 MB at 24k steps); the flat form, `w.alive.Clear()` and refill, is pointed at by nothing (editor's
pieces too). Fix: name it in the message, or a List `TakeFrom(other)`/swap. `repro/r10_replace_long_lived_list_o25.olang`

**r11 (e) PERFORMANCE - short List walks 5-6x C.** 2M walks of 3-element lists: for-in 30-35 ms, indexed 29-30 ms, C 6
ms. callgrind on ecs: RunFrom 17%, listState.grow 13% of all instructions. Fix: inline RunFrom, no arena allocation in it
(r02), a first-chunk fast path in At. `repro/r11_small_list_walk_perf.olang`, `.c`

**r12 (c) MISSING std - List, Map, StringBuilder have no Str.** `$l` prints `List(listState(Array<I64>&[I64[1, 2, 1, 1,
1, 1, 1, 1], null, ...` - private fields, and spare chunk slots as if elements. `repro/r12_list_map_render_internals.olang`

**r13 (c) DIAGNOSTIC, L9 - `case X => return v` gets "'return' is a keyword, not a name"** when v starts with a name
(S12b's good message only when it starts with a literal): 5 L9 and 3 S12b among the interpreter's first errors.
`repro/r13_arrow_return_l9.olang`

**r14 (c) DIAGNOSTIC, O10c through a call names no local.** Building a struct from loop-local text via a helper points
only at the constructor inside the callee; mk's fix was `&return` on three locals the message never named (a direct
`deps.Push(dep)` gets B11's good note). `repro/r14_o10c_no_note_through_call.olang`

**r15 (c) DIAGNOSTIC, T17c's headline proposes the move that cannot work** ("build it where that storage lives ('v
E&x')" for an undo record holding a block-local text); its note gives the right fix. `repro/r15_t17c_headline_points_wrong_way.olang`

## Smaller, no reproducer

- `chan.Chan<T>(cap I32)` while every length/count is I64: `Chan<I64>(n)` is T6b's error (mk).
- No `List.IndexOf`/`Remove(x)`/`SwapRemove` - detaching an item from its carrier's list is a hand loop + RemoveAt (O(n)).
- `-s` runs scope-heavy programs 30-70x slower (one `mprotect` per closed chunk: 170k in 300 ECS steps) - fine for a
  detector, but the interpreter's 200k-turn run took 37 s.
- Reconfirmed from earlier studies: no multi-line text literal (the interpreter's script is 25 joined literals in
  parentheses, and an unclosed `"` cascades into ~60 errors); `done` cannot name a channel (L9); `catch { v }` for a call
  value says "gives the value with 'default v'" without the `} default ...` spelling literal values get; -i memory.
