# How safe is AI-written olang?

A study (2026-11-15) of what happens to olang code written by an AI: what compiles but then fails at run time, and
which of those failures the compiler could catch. The writer was Claude (this study's author), the programs are in
`checks/aistudy/` (README there), the compiler was `build/olang` of master.

## Method

1. **50 programs, spec first.** For each, a one-comment spec (what it does, an input), then the code, written once as a
   first draft without the compiler, in the way a programmer who had skimmed README.md, std/README.md and a few of
   SPEC's examples would write it. 1636 lines in all (14-93 each); topics: text, parsing, csv/json, trees, graphs,
   maps, sets, heaps, numeric code, matrices, bits, file I/O, error handling, generics, closures, `spawn`/`join`,
   channels, a recursive-descent interpreter, a bytecode VM, a state machine, DP, backtracking.
2. **Compile rounds.** `olang build`; each failed compile is one round; fixes were the smallest that made the error
   go away. Diagnostics were counted by rule code (a diagnostic with no code is `syntax`).
3. **Run.** Each program ran plain, then with `-checked` (index, division, shift checks), and the concurrent ones also
   with `-race`. Each has its own test input in `main`; where the happy path passed, one edge input ("probe": empty
   input, a bad value, a border) ran too - the edge a reviewer would try. Every wrong result, crash, hang or abort was
   recorded and classified: caught by `-checked`, could a compile-time rule have caught it, or logic only.
4. One extra probe, `x01_strappend`, measured memory (outside the 50).

Caveats: one writer, one session, so the numbers are indicative, not statistics. There is a **learning effect**: the
first 17 programs needed 18 failed rounds (5 built first try), the last 33 needed 16 (18 built first try) - the
rules (`$` joins, `;`, builder functions) were learned from the first ones. A reader new to olang would see the early
numbers. "Failed rounds" counts compiles, "codes" counts diagnostics (`x4` is four of that code).
Programs 'ok' produced the right output on every input tried; that is not a proof.

## The programs

Columns: rounds = failed compiles before the first clean build; codes = rule codes of those errors; run-time failure
= what went wrong (the draft's own, or found by the probe input); `-checked` = whether it reports the failure;
static = what check could have caught it at compile time ("-" none found).

| program | topic | lines | failed rounds | compile-error codes | run-time failure | -checked | could the compiler catch it? |
|---|---|---|---|---|---|---|---|
| p01_wordfreq | text | 14 | 3 | syntax, E11b, M5a, E31, E12, E16x4, D3b | none | - | - |
| p02_csvavg | csv | 30 | 2 | E11b, L18, D19a | division by zero (empty.Len() divisor): SIGFPE crash plain | checked catches | static: divisor is .Len() of a possibly-empty collection (lint) |
| p03_rpn | parsing | 31 | 1 | E15x2 | division by zero (declared DivZero error word never raised, I forgot it): SIGFPE | checked catches | static: unused error word; divisor-not-proved-nonzero lint |
| p04_bst | trees | 47 | 2 | M22x2 | none | - | - |
| p05_bfs | graphs | 26 | 1 | E20, G38, M19x4, M22 | none | - | - |
| p06_matmul | matrices | 31 | 0 | - | silent out-of-bounds read (mul of 2x3 by 2x3 gives garbage, no crash) | checked catches (index out of range) | static: none (dimension is a runtime field); contract on mul would catch |
| p07_sorts | sorting | 85 | 1 | L18x8 | wrong result: binary search returns -1 for present key (hi exclusive but hi = mid - 1) | not caught | logic only |
| p08_fileio | file I/O | 27 | 1 | E11bx2 | none | - | - |
| p09_json | json | 18 | 1 | E15x2 | missing-key error not handled (spec said handle): program ends with unhandled error, exit 1 | n/a (controlled exit) | logic only (an unhandled error in main is allowed) |
| p10_closures | closures | 35 | 3 | D16cx2, D3b | wrong result: recursive lambda captured the OLD value of its own variable (fib(20)=37) | not caught | static: lambda assigned to a variable it captures (stale copy) |
| p11_generics | generics | 34 | 1 | syntax | empty array: xs[0] out of range, silent garbage (prints 0) | checked catches | static: none (length run-time); a contract or Largest failing with an error |
| p12_parsum | concurrency | 17 | 0 | - | none | - | - |
| p13_counter | concurrency | 13 | 1 | D3bx2 | data race on global counter (4000 here by luck) | -race catches (see below) | static: task writes a mutable global with no atomic/lock (P-rule) |
| p14_vending | state machine | 37 | 0 | - | none | - | - |
| p15_calc | interpreter | 82 | 1 | E11b, L18 | unclosed paren accepted silently ("2 * (3 + 4" = 14) | not caught | logic only (missing expect(')')) |
| p16_dijkstra | graphs | 38 | 0 | - | negative edge -> negative cycle -> infinite loop (hang) | not caught | logic/precondition only (contract on weights) |
| p17_primes | numeric | 40 | 0 | - | none | - | - |
| p18_rle | text | 34 | 1 | E11bx2 | none | - | - |
| p19_brackets | parsing | 21 | 1 | E11b | st.Pop()! on empty stack aborts on ")" with no opener | '!' aborts in both modes (VecError.Empty) | static: lint on '!' of a std call whose precondition is a test of the same data; else log… |
| p20_life | arrays | 38 | 0 | - | index -1 / n read out of bounds on grid edge; plain reads garbage silently | checked catches | static: index lower-bound analysis (y+dy)*n+x+dx with dy from range -1,2 can be negative |
| p21_bank | error handling | 28 | 0 | - | none | - | - |
| p22_chan | concurrency | 18 | 1 | M19x2 | hang: Chan used without chan.Init(c) (deadlock, no output, never returns) | not caught | static: constructor should init, or require-init lint; compile error for a Chan never pas… |
| p23_lru | data structures | 37 | 1 | D15, E15, R8, syntax | wrong result: evicts wrong key (RemoveAt(0) then uses order[0]) | not caught | logic only |
| p24_jsonenc | json | 14 | 0 | - | json.Encode of a struct with lowercase fields silently gives [{},{}] (private fields invisible to reflection); then Decode fails Missing | not caught | static: Encode/Decode<T> of a type with no visible fields -> compile error/warning |
| p25_csvstd | csv | 14 | 1 | E13b, G33, S18c, syntax x2 | bad number in input -> unhandled csv.Error.BadValue exit 1 (controlled, as designed) | n/a | - |
| p26_linked | data structures | 44 | 1 | S8d | none | - | - |
| p27_stats | numeric | 27 | 1 | T25c | NaN from variance of 1 element and mean of empty (0/0 F64) | not caught | logic/contract only (precondition len>1); float NaN not checked by -checked |
| p28_cipher | text | 41 | 0 | - | (a) negative shift gives wrong chars ('%' of negative); (b) anagram with space writes count[-65]: silent out-of-range store | checked catches (b) only | (a) logic; (b) static: none (Char range) - index of I64(c)-97 unproven |
| p29_roman | text | 44 | 1 | E11b | invalid chars give wrong value silently (fromRoman("ABC")=100) - spec had no error path | not caught | logic only |
| p30_parmap | concurrency | 17 | 0 | - | none | - | - |
| p31_bits | bits | 30 | 0 | - | U32(1) << n with n=40 (a constant local): undefined shift, plain crashes with 'out of memory' abort | checked catches (shift amount outside the width) | static: constant-propagate fixed local n into the shift (decidable while compiling) |
| p32_wrap | text | 22 | 0 | - | none | - | - |
| p33_vm | interpreter | 57 | 0 | - | st.Pop()! on empty stack aborts (VecError.Empty); declared VmError never raised | '!' aborts in both modes | static: unused error type/word; '!' lint |
| p34_lexer | parsing | 37 | 0 | - | non-ASCII input split into byte tokens (e-acute = 2 tokens): text is bytes | not caught | logic only (byte vs character text) |
| p35_gauss | numeric | 39 | 0 | - | singular matrix gives nan x3 silently (float divide by zero pivot) | not caught | logic only (no float check); lint on dividing by a pivot not compared to zero is weak |
| p36_trie | data structures | 42 | 0 | - | sentinel -1 (catch default -1) then used as index t.nodes[-1]: silent out-of-range read | checked catches | static: a value from 'default -1' reaching an index (range analysis of literals) |
| p37_unionfind | data structures | 33 | 1 | D3b | edge [7,8] in an 8-node graph: index 8 out of range, silent wrong count | checked catches | static: none cheap (UF(8) length known only interprocedurally); evaluator could prove for… |
| p38_knapsack | dp | 31 | 1 | S9b | none | - | - |
| p39_editdist | dp | 32 | 0 | - | none | - | - |
| p40_queens | recursion | 28 | 0 | - | none | - | - |
| p41_pool | concurrency | 21 | 0 | - | none | - | - |
| p42_tryjoin | concurrency | 20 | 0 | - | none | - | - |
| p43_sets | data structures | 22 | 2 | E20, E27x2, G38, M19x3, M22 | none | - | - |
| p44_config | parsing | 33 | 1 | L9 | line with no '=' -> ParseError.Invalid via '!' aborts (rc 134) | '!' aborts in both modes | '!' lint; logic |
| p45_sched | data structures | 20 | 0 | - | Pop()! on empty heap aborts (heap.Error.Empty) | '!' aborts in both modes | '!' lint |
| p46_ring | data structures | 32 | 0 | - | (a) Ring(0): x % 0 silently ok (rc 0, garbage); (b) Pop on empty ring returns stale value and n = -1 | checked catches (a) only | (a) static: modulus by .Len() of an array sized by parameter - none; (b) logic only |
| p47_inventory | maps | 37 | 0 | - | none | - | - |
| p48_flood | grids | 34 | 1 | E12 | neighbour at grid border: rows[-1][..] / rows[..][w]: plain SIGSEGV (139) or garbage; also rows[0] of empty | checked catches (index out of range) | static: none cheap (neighbour offsets from an array literal); a bounds-checked Get is the… |
| p49_duration | text | 22 | 1 | E11b | (a) Split(":")[2] on "12:30": plain SIGSEGV (139); (b) negative seconds print 0:-1:00 (% truncated) | checked catches (a) | (a) static: index into Split result with unknown length; (b) logic (Mod exists) |
| p50_matrixtype | matrices | 62 | 1 | D19a | none | - | - |

(`x01_strappend`, outside the table: `s = $s $i` 8000 times; the same loop at 40000 iterations ends with a 189 KB
string and a peak of **3.6 GB**: each new string is built where `s` lives, so every old one stays until the scope
closes. -checked does not see it.)

## Totals

| | |
|---|---|
| programs | 50 (1636 lines) |
| built first try | 23 (46%) |
| failed compile rounds | 34 over 27 programs (1 round: 22 programs, 2: 3, 3: 2); no program needed more than 3 |
| programs with a run-time failure (plain run, draft or probe input) | **30 of 50 (60%)** |
| run-time failure instances | 34 |
| failure instances `-checked` reports | 12 (every index, division and shift one; the other 22 are not its job) |
| ... of the 12, what plain does | 7 silently read or write out of bounds or divide by zero with no signal (p06, p11, p20, p28, p36, p37, p46), 5 crash (SIGFPE or SIGSEGV or an abort: p02, p03, p31, p48, p49) |
| failure instances a compile-time check could plausibly have caught | 13 (p02 p03 p10 p13 p19 p20 p22 p24 p31 p33 p36 p44 p45), 38%; five of them (p02 p03 p20 p31 p36) `-checked` also reports |
| failure instances that are logic only (no check found) | 10 (the 12 wrong-result ones less p10 and p24) |
| data races | 1 of 6 concurrent programs, found by `-race` (not by the plain run, which printed the right 4000) |

Run-time failure classes (instances):

| class | n | programs | what the run did |
|---|---|---|---|
| index out of range | 8 | p06 p11 p20 p28 p36 p37 p48 p49 | silent garbage 6 times, SIGSEGV or abort 2; all reported by -checked |
| wrong result, logic (off-by-one search, wrong eviction, bad modulo of a negative, unclosed paren accepted, bytes as characters, ...) | 12 | p07 p10 p15 p23 p24 p27 p28 p29 p34 p35 p46 p49 | right-looking output; p10 (recursive lambda reads its own old value, `fib(20) = 37`) and p24 (`json.Encode` of a struct with lower-case fields gives `[{},{}]`) are language or library traps, not algorithm mistakes; p27 and p35 print `nan` |
| `!` or `try` ending the program on a caller's input (empty stack, empty heap, bad line) | 4 | p19 p33 p44 p45 | abort with `VecError.Empty` or the like and a location; an honest stop, but the spec wanted an error value |
| unhandled error leaving main (the spec said handle it) | 3 | p09 p24 p25 | `unhandled error: ...`, exit 1 |
| division or remainder by zero | 3 | p02 p03 p46 | SIGFPE twice, silent once (`% 0` in a ring of capacity 0 printed a result) |
| hang | 2 | p16 (negative cycle), p22 (`chan.Chan` used without `chan.Init`) | never returned, no output |
| shift by a constant beyond the width | 1 | p31 | plain aborted with "out of memory" - undefined behaviour showing as something unrelated |
| data race | 1 | p13 | correct output by luck; `-race` reports it at once |
| memory growth | 1 | x01 | 3.6 GB for a 189 KB string |

## Compile errors

Diagnostics by code over all rounds (73 in all): `E11b` 10, `L18` 10, `M19` 9, `D3b` 5, `E15` 5, `E16` 4, `M22` 4, no
code 4, then one or two each of `E12 D19a E20 G38 D16c E27 E31 M5a D15 R8 E13b G33 S18c S8d T25c S9b L9`. What they
were and how the message did:

1. **`E11b` (a join piece must be a literal or a `$` rendering), `L18` (no `;`)** - 20 of 73, the two things a
   C/Python/Go programmer writes without thinking: `Println(name " = " $n)` and `if c { a; b }`. The messages are
   exactly right and the fix is named: `a join piece is a text literal or a '$' rendering - write '$keys[i]'` and
   `olang has no ';' - a statement ends where its line does; put the next one on a line of its own`. Cost: one round
   each, but they recur in every program until learned, and E11b was made by this writer in 9 programs (the rule is
   unusual: a missing comma never joins silently, so a bare name is not a piece).
2. **Method/function shape** - `M19` ("`Chan<I64>&` has no method 'Send'": the channel API is free functions,
   `chan.Send(c, v)`; the message does not say a function of that name exists in the module), `E16` ("`Map<String, I64>`
   cannot be indexed" and `E31` "declares At but not SetAt, which x[i] = v calls": true, but the way out is
   `m.Update(k, 0, fn...)`/`m.Put`, which neither says), `D19a` ("`parseLine` makes a Person its module declares and
   takes none ... declare it as the type's builder, `fn Person.parseLine(...)`" - good: names the fix; but the same
   writer hit it twice, in a CSV parser and in a matrix `identity`).
3. **Misleading**:
   - `M22: unknown function or type 'max' - did you mean 'Max'?` then `unknown ... 'Max' - did you mean 'Map'?` - the
     fix was a method, `a.Max(b)`; the did-you-mean sent the writer to a wrong name twice.
   - `M22/G38/E20/M19 (x6): unknown name 'Deque'` - six diagnostics for one missing `import "std/deque"`, and no
     message mentions the import (a module not imported is "unknown"); the cascade (`'I64' is a type, not a value`, `[]
     makes the type expected...`, `Bool has no method 'PushBack'`) buries the cause.
   - `T25c: a read-only reference cannot become writable - pass a writable one, or drop the 'mut'` for `s := xs;
     s.Sort(...)` on a parameter: there is no `mut` to drop; the fix is `xs.Copy()`.
   - `error: unknown type 'Less'` (no code): a trait the writer assumed exists; nothing says generics need no
     constraint here. `error: Lru has no member 'cap'` (no code): a constructor parameter is not a field until the
     body names it; the message does not say so.
   - `E27: this comprehension may fail by calls of its own` for `Set<I64>[x for x in a if x in b]`; the help (write a
     generator and call FromIter) is far from what the writer meant (a loop with `Add`).
   - `G33/E13b` for `csv.Decode<Array<Row>>`: the error is reported inside std (`std/csv.olang:259 ... in the standard
     library's code`) with a note where it was instantiated; the cause is the type argument (Row, not an array of it).
4. **`D3b` (never read, write `_`)**: 5 times, all for loop variables only used as counters (`for i in range 4 {
   spawn work() }`) and one dead local - a good message, a genuine finding of dead code (it flagged a memo map the
   draft forgot to use).
5. **`E15` (this call can fail - write `try`)** 5: `Vec.Pop`, `Json.AsNum`; the message names the fix. **`D16c`** (a
   lambda's captures are read-only - capture a reference to change what is outside it) twice, for a counter: the
   message is right but the way to write a mutable captured reference (`b mut Box& = Box(0)`) is only found by trying.

## What the compiler could have caught

Silent failures are the point: of 34 run-time failures, 7 gave a wrong answer or corrupted memory with exit status 0 and
no output of any kind (`-checked` finds them), 12 are right-looking logic, and the rest end loudly. In plain builds an
out-of-range index is not a fault but a wrong value.

Ranked by failures prevented (the count is programs of this study):

1. **Run script and test mode with `-checked` on (12 failures: all 8 index, 3 division, 1 shift; 7 of them silent).**
   Not a compile-time check, but the study's biggest lever: `olang FILE` and `olang test` are where a new program
   first runs and they already pay for a build; every one of the 12 became a located message
   (`checks/aistudy/p20_life.olang:10:24: index out of range`) instead of garbage or SIGSEGV. A release `build` keeps
   the unchecked default (principle 2). Recommend: `-checked` the default for `olang FILE` and `olang test`, `-unchecked`
   to opt out.
2. **Range and constant analysis feeding index, shift and divisor checks while compiling (5-6 failures: p20, p31, p36,
   p02, and p48's border offsets with a literal-array of offsets).** The facts are already around: `for dy in range -1,
   2` plus `(y + dy) * n + x + dx` has a negative lower bound (p20); `n := 40` is a fixed local that S8c knows, so
   `U32(1) << n` is a decidable shift out of range (p31); a `catch default -1` value reaching `t.nodes[cur]` is an index
   that can be -1 (p36); `empty := Vec<Person>[]` is length 0 when `total / empty.Len()` runs (p02, decidable by the
   evaluator). Emit an error where a violation is certain, a warning where only possible (index with a negative lower
   bound, divisor `.Len()` of a collection not tested non-empty).
3. **A lint on `!` (and a hint on `try ... catch` that exits) after a std call that fails on an empty/missing value
   (4: p19, p33, p44, p45).** `st.Pop()!`, `h.Pop()!`, `Config.Parse(text)!` in a function that has an error set and
   whose caller supplies the data: the programmer chose to abort where the spec asked for an error value. Suggest
   "this function declares `? E` and aborts with `!` on `Pop`'s `VecError.Empty`; write `try` and let it through".
   In `main`, or a test, stay silent.
4. **Concurrency traps (2 + 1: p13, p22; and the race the plain run hid).** (a) A task that writes a mutable global or a
   captured place with no `Atomic*`/`Mutex` in sight (`spawn work()` where `work` does `Hits += 1`): `-race` caught it,
   but a plain run printed 4000 - make it a compile-time warning when a spawned function (transitively) writes a
   `mut` global, naming `AtomicAdd` and `sync.Mutex`. (b) `chan.Chan<T>(n)` must be passed to `chan.Init` or every `Send`
   hangs: put the initialization in the constructor, or make using an uninitialized channel an error; today it is a
   deadlock with no output, and `std/README.md` does not mention `Init` at all.
5. **Reflection and closure traps with a silent result (2: p24, p10).** `json.Encode(items)` of a struct whose fields
   are lower case yields `[{},{}]` with no diagnostic (private fields are invisible to reflection): an instantiation of
   Encode/Decode with a type with no visible fields should be an error naming the capitalization. A lambda assigned to a
   variable it also captures (`fib := fn..; fib = fn... fib(n-1) ...`) captures the OLD value, so `fib(20)` is 37: say
   so ("`fib` is captured by value; it holds the earlier function").
6. **Memory (x01).** A self-append in a loop (`s = $s $i`) grew to 3.6 GB; warn on `v = $v ...` inside a loop
   and name `StringBuilder`, or free the old value when the assigned place was its only holder (the plan's "letting
   go", O8d - the case did not qualify).
7. **Unused error words and error types (p03, p33).** `DivZero` and `VmError` declared, never raised: the spec's
   error path was forgotten and the program divided by zero. `declared and never raised` as a warning (like D3b for
   locals) points at the missing path.

Not catchable by any of these (10, logic only): the off-by-one binary search, wrong LRU eviction, accepting `2 * (3 + 4`,
a `%` of a negative, NaN from a one-element variance or a singular matrix, bytes where characters were meant. Of
those, `%` of a negative (p28, p49) and NaN (p27, p35) recurred twice each: `x.Mod(n)` exists but `%` is the habit, and
float division by a zero pivot is silent; a `-checked` that also reports NaN-producing divisions would find both.
Contracts (`[b != 0]`, `[n > 1]`) exist in the language; none of the 50 drafts used one, though a third of the
failures were violated preconditions (empty input, a dimension mismatch p06, a negative weight p16): the writer never
thought to reach for them, which suggests the docs show them too late or the first example is not about this.

## Summary

Compilation is not the barrier: 46% of the programs built first try, none needed more than 3 rounds, and the rule codes
that did fire mostly named the fix. The danger is what compiles. 60% of the programs had a run-time failure, and in
the unchecked default the commonest one (an index out of range, 8 programs) produces garbage silently. About a third of the
failures (13 of 34) are a compile-time rule away (ranges, constants, `!`, a global written in a task, an uninitialized
channel, empty reflection); a third (12) are caught by `-checked`, which making it the default of the script and test
modes would turn from a flag nobody wrote into the first line of defence; the rest (10) are logic.
