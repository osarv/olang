# study5 - data science and numeric scripting

12 programs (1,014 lines) written the way a newcomer reading SPEC.md would write them first, then changed only as far
as the compiler or a wrong answer forced, against `/home/user/wt/s5c/build/out` (olang 35175f1), 2026-10-10.

Layout: `progs/*.olang` final programs, `progs/first/` as first written (diff them for every workaround; each workaround
also has a comment naming its rule); `repro/rNN_*.olang` one reproducer per finding, header giving rule, expected and
actual; `c/` the C/C++/Python references used for timings; `memtime.sh CMD` prints wall time and peak RSS.

| program | what | -b = -b -d | -b = -i |
|---|---|---|---|
| csvstats | write a 200k-row CSV, group by two keys, count/mean/sd/min/max, sorted output | same | same at `-D Rows=2000` (6.0 GB, 10.5 s); 200k OOM |
| kmeans | k-means on linalg.Matrix (Gemm distances) + least squares through Solve | same | same at `-D N=300 -D RegRows=300` (3.1 GB); N=3000 OOM |
| hist | 1M log-normal numbers via io.Writer, io.Lines + ParseFloat, Sort, percentiles, text histogram | same | same at `-D Count=500` (1.4 GB) |
| report | per-sensor Welford stats in a Map, JSON report (std/json) written, read back, queried | same | same (2.6 GB) |
| frame | column store: enum columns, filter/sort/select/group-by, `Vec<N I64>` | same | same |
| series | SMA as an iterator over `Window<W>` (Array<F64, W> ring), EMA, z-score anomalies, comprehensions | same | same at N=3000 |
| montecarlo | pi and a European call over 4 tasks, `spawn hits[i] = ...` | same (also `-r`: no report) | same at Samples=4000 |
| words | tokenize HISTORY.md, word/bigram counts, top-k, longest | same | same on 3 KB (1.3 GB); 20 KB OOM |
| precision | F64/F32/F16/BF16 products, power iteration, RowSoftmax, scalar half-precision sums, math on F16/BF16 | same | line 1 same, then OOM at Size=24 |
| units | Meters/Seconds/Speed/Feet `extends F64`, operator methods, `Str` | same | same |
| fixedmat | `Mat<R I64, C I64>` over `Array<F64, R * C>`, `@` with compile-time shapes, `x[i, j]` | same | same |
| csvparse | quoted-CSV reader, per-column type inference, JSON lines | same | same |

Output of every built program was checked against a reference (numpy/Python or C, or by hand). Arena churn tests
(allocate between building and reading back) were run on every result kept across loop turns.

## Findings, most serious first

**r01 (a) BUG, use-after-free - a call's built result passed straight to another call loses its obligation (O13c,
O18a, O10c).** `bs.Push(box(t))`, with `fn box(s String&) Box { return Box(s) }` and `t` a loop-body text, compiles;
`bs.Push(Box(t))` (C2d) and `b := box(t); bs.Push(b)` (O10c) are correctly rejected, and so is `arr[k] = box(t)`. Every
row then reads the last turn's text (-b, -d), -i prints the right ones. Same with `keep(bs, box(t))` and `m.Put(k,
box(t))`, a helper returning a List/Map/struct local holding its parameter (r01b segfaults, r01c), and above all
`List.Clone()`/`Map.Clone()` of a loop-body collection pushed outward (`rows.Push(rec.Clone())`, r01d; r01e segfaults in
List.At) - which is what I wrote first to work around r04 in csvparse, and the program segfaulted. Fix: when a call's
result lands as another call's argument (landsWith), carry the inner callee's obligations to the scope the outer
parameter binds - the same check `b := box(t); bs.Push(b)` already gets. `repro/r01_call_result_into_push_uaf.olang`
(+ r01b-e).

**r02 (a) BUG, silent lost write - a `mut` method or `mut &` argument on a List element writes a copy (E31).**
`l[0].N = 5` is "this writes into a value a call gave back, a copy no one holds", but `l[0].Add()` (`fn (a mut Acc&)
Add()`) and `bump(l[0])` compile and change a temporary: "array 3 list 0". An Array element is changed in place, so the
same code means two things. Fix: give a `mut &` receiver/argument taken from `At`'s value E31's error, or lower it
through `SetAt` as `l[i] += v` already is. `repro/r02_list_elem_mut_write_lost.olang`

**r03 (b) OVER-REJECTION, order-dependent (O17).** Walking a `List<List<String&>>` and reading `r[0]` compiles, until an
earlier statement of the same block reads `rows[0][0]`; then `r[0]` is O17 "the callee can store through it" (List.At
stores nothing). Met in csvparse's column-kind inference (first row's kind, then every row's). Fix: whatever
`rows[0][0]` records about rows' element scope must not make a later for-in copy "split". `repro/r03_o17_order_dependent.olang`

**r04 (b) OVER-REJECTION - a destructured List result cannot be pushed outward; the scope argument is ignored (O10c,
E25, D8c).** `rec := mk&rows(k); rows.Push(rec)` compiles in a loop; `rec, next := mk2&rows(k); rows.Push(rec)` does not,
with or without `&rows`. A CSV reader returning (fields, next position) has no spelling: a `List<String&>&into()` field
list was O17, pushing into the caller's list O10c, Clone() is r01. csvparse ended with all cells in one flat List.
Fix: apply the scope argument (and O18c landing) to each destructured result. `repro/r04_destructure_scope_arg_ignored.olang`

**r05 (b) OVER-REJECTION - top-k by for-in copy (O10c/O26a).** `for p in all { out.Push(p) }` (out returned) is O10c;
`out.Push(all[i])` compiles, because O26a moves `all` into the result scope through the indexed read but not through a
for-in copy. Fix: O26a should follow the for-in's hidden borrow. `repro/r05_forin_copy_push_o10c.olang`

**r06 (b) OVER-REJECTION - a `&`-receiver method on a for-in copy of a Map value (O10c, study 3's recorded r06 limit).**
`for e in m { out.Push(e.Value.Wrap()) }` where `Wrap` builds an enum from `b.Name`: O10c with a note into the prelude.
`Tag.Text(e.Value.Name)` inline compiles, and so does a by-value receiver - the workaround in report (`ToJson`). Turning
a Map of records into JSON is the commonest report shape. `repro/r06_method_on_map_value_copy_o10c.olang`

**r07 (b) OVER-REJECTION - a lambda cannot capture a struct holding a reference, even to read a number (D16c).**
`x := Reading("a", 1.5); f := fn(t F64) F64 { return t + x.Value }` is "a copy of this loses its references' scopes".
Met in every `Map.Update` over records (report). Fix: a captured copy keeps its references' home as O25h's copies do,
or capture only the fields read. Workaround `v := x.Value`. `repro/r07_lambda_capture_struct_holding_ref.olang`

**r08 (e) PERFORMANCE - `Array.Sort` is 2.5x qsort, 4x std::stable_sort.** 1M F64 or I64: 0.50 s; qsort 0.20,
std::stable_sort 0.12, std::sort 0.11 (clang++ -O3 -march=native). It is the in-place rotation merge (O(n log^2 n),
"allocating nothing" because a scratch array of reference-holding elements has no right scope). In hist it is half the
run (1M values: write 0.22 s vs C printf 0.59, read+parse 0.13 vs getline/strtod 0.18, sort 0.44 vs 0.16). Fix: `match
T` - for elements holding no references, a buffered merge sort with an n/2 scratch array in the call's own scope.
`repro/r08_sort_perf.olang`, `r08_sort_perf.cpp`

**r09 (e) PERFORMANCE - `-i` (and the compile-time evaluator) cannot run data-sized inputs.** ~8.4 KB and ~16 us per
iteration of `s += F64(i) * 0.5`, nothing reclaimed (100k turns 0.93 GB/2.0 s, 400k 3.5 GB/6.6 s; built: 3 ms). Every
program here OOMs under -i at its real size: a 2,000-row CSV takes 6.0 GB, k-means on 300 points 3.1 GB, word counts on
3 KB of text 1.3 GB (20 KB OOM), a 24x24 power iteration OOM; and a global or constant argument computing a 20x20 Gemm
is refused while compiling ("takes more memory than compile-time evaluation allows"). Known (stage 1; stage 2 is the
port's M8) - recorded here because "scripting: -i" is principle 5 and none of these scripts can use it. `repro/r09_interp_memory.olang`

**r10 (b)+(d) - converting to a type variable, `T(x)`, is unsupported, and said misleadingly four times.** Generic
numeric code needs `x.Scale(T(1.0 / norm))`; it is "unknown function or type 'T'", once per instantiation (F64, F32,
F16, BF16: four copies). Workarounds: `one T = 1` for literals, `linalg.Cast(x, like)` (a linalg helper, with a `like
T` local) for values. Fix: allow `T(x)` where T is bound to a numeric type (or move Cast to the prelude), and report a
generic body's error once (G16b). `repro/r10_convert_through_type_variable.olang`

**r11 (b)+(d) - a constant only in a function's result cannot be written.** `fn identity<N I64>() Mat<N, N>` is
"expected '(', found '<'": a function takes no parameter list and G4 wants every variable in a parameter. Workaround: a
method on a matrix of that shape (`m.Identity()`). Suggest at least a message naming the rule; perhaps written
arguments on a call (`identity<3>()`) when G4 cannot infer. `repro/r11_constant_only_in_result.olang`

**r12 (d) HAZARD - a literal adapts into a declared operator's parameter, silently changing units (E31, T29f).** With
`Meters extends F64` declaring `Div(t Seconds) Speed`, `d / 2.0` (halving a length) is `d / Seconds(2.0)`, a Speed:
"half of 10 m is 5 m/s". Declaring Div removed the inherited `Meters / F64`. Suggest: where the type extends a base and
declares the operator for another type, a bare literal operand is ambiguous - require `Seconds(2.0)`. `repro/r12_unit_literal_into_declared_div.olang`

**r13 (d) DIAGNOSTIC - O10c on prelude calls names neither the argument nor the fix.** `m.Update(cols[0], ...)` with
`cols` split from an `io.Lines` line (rightly rejected: the line dies each turn) says "the callee needs one argument's
scope to outlive another's" with a note at `s.add(i, key, f(init))` in map.olang (`s.grow(x)` for List.Push). The fix
(`$cols[0]`, a copy where the map lives) is never suggested. Met five times in this study. `repro/r13_o10c_note_into_prelude.olang`

**r14 (d) DIAGNOSTIC - two puns on one line.** `{ Sensor  Value }` gives "unknown type 'Value'" and C2a "field 'Sensor'
has a parameter's name - write it bare" (it is). Suggest "one field per line". `repro/r14_one_line_puns.olang`

**r15 (d) DIAGNOSTIC - `Array<X>[...]` for an array literal.** `Array<json.Json&>[a, b]` is a literal of `Array<Json&>`
elements: T7a "write Array<Json&>&" then E12 per item. Suggest "a literal is ElementType[items]: json.Json&[...]".
`repro/r15_array_of_type_literal.olang`

**r16 (d) DIAGNOSTIC (study 4 r14, still so) - unqualified std type.** std/json's comments write `Json.Obj(...)`; from an
importer `Json&` is "unknown type 'Json'" at every use (10 errors in report), never "did you mean json.Json".
`repro/r16_unqualified_std_type.olang`

**r17 (d) DIAGNOSTIC (study 4 #14, still so) - a join piece in parentheses without `$`.** `":" (s % 60).PadStart(2, '0')`
is "expected '(', found ')'" (or "found end of line"); after a name or call E11b gives a good "write '$...'".
`repro/r17_join_piece_paren.olang`

**r18 (d) DIAGNOSTIC - `;` cascade.** `{ y := x + 1; return y }` gives L16 and then L9 "'return' is a keyword, not a
name". `repro/r18_semicolon_cascade.olang`

**r19 (c) MISSING std.** (1) `std/csv`: a reader with quoted fields, doubled quotes and embedded newlines - csvparse
writes 40 lines of state machine, and is the program that hit r01/r03/r04. (2) `std/stats` (or on arrays): mean,
variance (Welford), median/percentile with numpy's interpolation, min/max, histogram counts - csvstats, hist, report and
series each rewrote them. (3) A numeric conversion helper outside linalg (`Cast`, r10). (4) `List.Truncate(n)`/`Take(k)`
for top-k (r05's loop). (5) A sorted walk of a Map (`m.Iter().ToList()` + Sort works; a newcomer first wrote
`Keys().ToList()` + `Get`, whose default error cannot sit beside main's named errors). Programs: `progs/csvparse.olang`,
`progs/hist.olang`, `progs/csvstats.olang`.

**r20 (b) FRICTION, recorded questions.** `best := 0` is an I32 and meets `for c in range k` (I64) as T6b's error (QD,
kmeans); `main ? os.OsError + ...` cannot also let `Map.Get`'s default error through (R15: no mix), so a sorted walk via
`Get` needs `catch { unreachable }` (csvstats); `$` is needed before every non-literal piece, `price.Fixed(2)` included
(E11b, 6 times - the hints were right each time).

## Measured and fine

Map.Update group-by over 10M rows (1,000 keys) 0.062 s vs C++ unordered_map 0.055; word statistics on 1.27 MB 0.27 s vs
Python Counter 0.76 (identical counts); Monte Carlo single-threaded at parity with C on the same xoshiro (noisy, load
average 7); a 3x3 fixed-matrix chain 0.068 s vs C 0.044 with clang's default FMA contraction and 0.066 without (olang
never contracts - by design); k-means on 30k x 8 points 0.034 s; float rendering and ParseFloat faster than glibc.
Compile-time results agree: globals baked from comprehensions and Fold equal the run time's; F16/BF16 scalar math,
rounding and `$` agree across -b, -d and -i.
