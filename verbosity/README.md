# Where the port's lines go: a verbosity audit of compiler/*.olang

Measured 2026-10-24 on `/home/user/wt/merge/compiler` (read-only). Scripts and raw numbers beside this file:
`classify.py`/`classify.txt` (per-file split), `matches.py`, `walks*.py` (match and walker analysis). Heuristics are
regex/indent based, so every figure is "about"; the counts quoted as greps are exact for the pattern stated.
Stage-0 C numbers are from `git show stage0-final:bootstrap/...`.

## 1. Size, file by file

Whole `compiler/`: **63,178 lines** = 58,240 in the compiler proper + 4,938 in `tools/` (oracle dumpers and diffs against
the C compiler; they disappear with `bootstrap/`, QAL).

Compiler proper (58,240 lines): code 46,362 (79.6%), comments 5,696 (9.8%), blank 3,934 (6.8%), `test` blocks 2,248 (3.9%).
Most testing is outside these files (goldens, `checks/`, `make emitdiff`), so tests are not where the lines go.

| area | files | lines | code | comment | test blocks |
|---|---|---:|---:|---:|---:|
| scanner, parser, AST | token scan parse ast source | 4,473 | 3,640 | 353 | 203 |
| conditional compilation | cond | 860 | 676 | 77 | 37 |
| load, fetch, names, build, driver, target | load fetch names build olang target | 4,571 | 3,375 | 461 | 404 |
| types, generics, checker, views | types generic typed check views | 19,034 | 15,431 | 1,775 | 674 |
| scope pass (section 8) | scope | 7,658 | 6,358 | 800 | 122 |
| lowering, MIR | lower mir | 5,652 | 4,565 | 478 | 237 |
| evaluator, interpreter | eval interp | 6,174 | 4,937 | 505 | 371 |
| emit, runtime | emit runtime | 5,124 | 4,359 | 459 | 44 |
| diagnostics, message table | diag msgs | 3,150 | 1,671 | 679 | 156 |
| formatter, unparse | fmt unparse | 1,544 | 1,350 | 109 | 0 |

Largest files: check 12,268; scope 7,658; eval 5,205; emit 4,779; lower 3,147; parse 2,923; generic 2,841; mir 2,505;
**msgs 2,240** (the "generated" table - it is hand-edited, see pattern 4). Full table: `classify.txt`.

Density against stage 0 (C): same-scope files token.c+h 1,084, syntax.c+h 5,355, semantic.c+h 29,935, codegen 8,693,
comptime+h 3,633, main 1,150, errmsg 1,434, runtime 444, util 889 = **52,617 lines, 2.95 MB**. The port is 58,240 lines,
~2.4 MB of source for a larger scope (a separate MIR layer, a scope pass, formatter, `-i` interpreter, 545-entry message
functions). Scanner+parser: 4,473 vs 6,439 (-31%). Checker side (types/generic/typed/check/views/names/load/scope):
~29,000 vs semantic.c 28,958 - parity, and that includes section 8 which C kept inside semantic.c. Average code line is
39.5 characters against C's 50.1, so olang lines are *shorter*, not longer; the port wins on characters, not on lines.
Only 1,124 lines exceed 120 columns (C: 826 in semantic.c alone).

**What a code line is** (45,243 non-test code lines, msgs excluded):

| kind | lines | share |
|---|---:|---:|
| closing `}` only | 8,538 | 18.9% |
| assignment / declaration | 8,320 | 18.4% |
| `if` | 6,101 | 13.5% |
| call statement | 5,153 | 11.4% |
| `case` | 4,033 | 8.9% |
| fn header | 2,737 | 6.0% |
| `return` | 2,581 | 5.7% |
| `for` | 1,934 | 4.3% |
| `match` / `nomatch` | 1,404 | 3.1% |
| bare identifier (enum case, constructor pun) | 851 | 1.9% |
| other | 2,664 | 5.9% |

So structure is: 19% is closing braces (not touched: PRINCIPLES.md says blocks always have braces), ~12% is `match`
scaffolding, and most of the rest is real logic. The code is already compact where it can be: 1,858 one-line
`if ... { return ... }`, 728 `{ return false/true }`, 281 one-line functions.

## 2. Summary table

| # | pattern | occurrences | lines it costs | feature | est. saving |
|---|---|---:|---:|---|---:|
| 1 | statement `match` with one real case + empty/early-exit default | 264 matches (198 empty default, 66 return) | 2,321 | `if x is Pat(a, b) { }` binding / let-else | ~790 lines |
| 2 | whole-tree walkers over `typed.Expr/Stmt`, `ast.Expr/Stmt` re-listing children | 54 walkers, 157 pure-recursion cases | 2,348 (424 pure recursion) | derived child walk / reflection (`T.Cases`/`Fields`) | 500-900 lines |
| 3 | constructor whose body only re-lists its parameters (`{ Sp Name Ty }`) | 74 structs entirely puns, 434 pun lines total | ~510 incl. `}` | body optional: parameters are the fields | ~510 lines |
| 4 | name repeated across enum + id comment + function + `Diag.X` (msgs) and enum-case <-> text tables (token) | 543 messages; Text/Keyword/operator 242 lines | msgs 1,113 comment+blank lines of 2,240, 543-case enum; token 242 | string-valued enum cases; reflection over functions; (formatting rule needs no feature) | 550 (policy) to ~1,100; token ~150 |
| 5 | enum shared header fields (`sp`, `ty`) re-matched with `_` | 1,564 patterns start with `_`; 2,162 `_` args; 9 accessor fns | 69 + char noise | enum header fields + partial patterns (`Call(.., c)`) | ~70 lines, ~3% of pattern chars |
| 6 | qualified case names `case typed.Expr.Seq(...)` | 2,611 case lines, 11,287 qualified names | 0 lines | subject-typed unqualified cases | ~0 lines, ~30 KB |
| 7 | redundant integer casts `[I64(id)]`, `I64(x)` | 1,190 lines carry `I64(`/`I32(`; 801 an id-type cast; 317 `[I64(...)]` | 0 lines | none - already legal (see 7) | ~0 lines, hygiene |
| 8 | `try m.Get(k) catch default D` | 200 (93 of them `-1`) | 0 lines | none (declined `GetOr`/`else`) | chars only |
| 9 | test fixtures: temp dir, `unreachable` catches, pipeline setup | 37 MkTemp, 45 RemoveAll, 86 `catch { unreachable }`, 9 pipeline setups | ~250 | library: test helpers | ~150 lines |
| 10 | builder loops, index bookkeeping | see 10 | small | comprehensions already exist | <100 lines |
| 11 | `Map<K,Bool>` used as a set | 64 + 71 `Put(x, true)` | 0 lines | std `Set<T>` | chars only |

Features with **no measured demand in the compiler itself**: generators (zero `Next()` methods in 57k lines), generic
enums (one hand-rolled Result: `mir.olang:327` `Ok`/`Err`), `Result` values (143 `?` functions, 18 error sets, 1,213 `try`
but almost all single-line), `embed`, units, SIMD, arbitrary-width integers.

## 3. Patterns

### 3.1 One-case `match` (264 matches, ~790 lines)

A statement `match` that unwraps one case and ignores the rest. Of 908 `match`es (282 are value-form), **264 have exactly
one real case**, with an empty default (198: `nomatch { }` / `case _ { }`) or a returning default (66, mostly
`nomatch { return false }`). 108 more have two cases. 78 of the 108 `nomatch`-style ones are in check.olang.

```
check.olang:439    fn noteWrite(p typed.Place&) {            # 5 lines for one test
                       match p {
                           case typed.Place.Local(_, _, id) { c.writes.Put(pair.Pair(c.fr().Body, I64(id)), true) }
                           nomatch { }
                       }
check.olang:3432   fn readPlace(x typed.Expr&) typed.Place&x { match x { case typed.Expr.Read(_, _, p, _) { return p } nomatch { return null } } }
check.olang:3439   fn isData(...) Bool  -> match/case/nomatch  (2 lines of payload, 6 lines of text)
check.olang:754    fn traitRef(...)       -> one case, nomatch { return false }
```
The `x is Shape.Circle` test already exists (E32) and `x as Shape.Rect` binds the payload but aborts. Extending `is` with a
pattern and bindings - `if p is typed.Place.Local(_, _, id) { ... }`, with `else` falling through, and a let-else form for
the early-exit shape - needs no new keyword: it is `is` plus the pattern grammar `match` already has. Saving: the `match`,
`nomatch` and closing lines (3 per match, 2 where the default is on the case line) = **~790 lines**, plus one nesting level
for the 66 early-exit ones. Fits principle 3 ("x is T" reads as English) and 4 (reuses a construct).

### 3.2 Tree walkers (54 walkers, 2,348 lines; ~500-900 saved)

Every analysis re-lists the children of the typed tree. `case typed.Expr.Seq` appears in 14 matches in scope.olang, 4 in
check, 2 in lower, 2 in views; `typed.Expr.Cond` in 29 matches in total. 54 matches over `typed|ast .Expr|Stmt` with >=6
cases span 2,348 lines; 157 of their cases do nothing but recurse (424 lines), and the real work cases sit between them.

```
scope.olang:2414  rlExpr   case Promote { s.rlExpr(pr.X, pass) }  case Call { for a in c.Args { s.rlExpr(a, pass) } }
                           case Make { for it in m.Items {...} }   case Prim { for a in args {...} }  case Cond { A; B } ...
scope.olang:881   collectExpr (same shape, 17 cases)       scope.olang:2578 kwExpr   scope.olang:3511 ocExpr
check.olang:452   onlyFixed   check.olang:1792 declaresNames   check.olang:6371 roDeepIn   cond.olang:397 mentionsLocal
views.olang:1502  callsExpr   names.olang:1043 expr (18 cases, 13 pure recursion)
```
Candidate: the reflection of build-list #5 (`T.Cases`, `T.Fields`) used by one std generic, or a smaller built-in: a
compiler-derived `x.Children()` iterator (generated per enum, so no run-time cost beyond a direct loop) that a walker
uses for its default arm: `case _ { for k in x.Children() { s.rlExpr(k, pass) } }`. Each walker keeps only the cases that
do something. Estimated saving 424 lines of pure-recursion cases outright, and most of the one-line recursion inside the
mixed cases: **500-900 lines**. This is the pattern that most resembles "visitor boilerplate"; the evidence says it is
concentrated in scope.olang (about 12 walkers) and check.olang. Conflicts: none with PRINCIPLES (compile-time, no hidden
cost). It does depend on generic enums not at all.

### 3.3 Constructor bodies that restate the parameters (~510 lines)

T13 made every struct a constructor; the common case is a plain record, written twice:

```
types.olang:80   type data struct(K Kind, A I64, B I64, C I64, D I64 = 0, E I64 = 0) {
                     K
                     A
                     B
                     C
                     D
                     E
                 }
```
169 one-line-header constructor structs have 1,508 body lines; **434 are bare puns, and in 74 structs the body is only
puns**. Saving if an empty/omitted body made every parameter a field: 434 pun lines plus the 74 now-pointless closing
braces = **~510 lines**. Also 26 `struct()` and 10 headers wrapped over several lines (ast.olang:118,139,171,222,250).
This reverses nothing user-decided about construction (the constructor remains the only way to build); it restores the
"plain record" spelling T13 removed. Flag: T13 explicitly rejected field-list structs, so this needs the user's OK; the
variant "body optional => parameters are the fields" is a smaller step than bringing back `struct { x I32 }`.

### 3.4 Names repeated in the message table and token tables

`msgs.olang`: 2,240 lines for 545 messages = 4.1 lines each. Per message there is a `Diag` enum line, a `# ERR_X`
comment, a blank line and the function whose body names the case again:

```
msgs.olang:49      type Diag enum {  UnknownChar  CommaEndsLine ... }   (543 case lines)
msgs.olang:723-727 # ERR_UNKNOWN_CHAR
                   fn UnknownChar(ch Char) Msg { return Msg(Diag.UnknownChar, "L16", "unexpected character '" $Esc(ch) "'") }
                   <blank>
```
Of 2,240 lines: 1,119 code (543 enum cases + 545 fn lines), 561 comment, 552 blank. The C table (errmsg.h) is 659 lines for
about 365 entries. Without any language change, dropping the `# ERR_` echo comments and blank separators would remove
~1,090 lines (formatting policy; the file is documented as "edited by hand"). With a feature: let a function's own name
serve as its kind (a `here`/function-name value, or `Msg` constructed from `fn.Name`), which deletes the 543-case enum
too: ~550 more.
`token.olang`: `Tok.Text()` (89 lines, 86 `case Tok.X => "text"`), `Keyword()` (75), `scan.olang:346 operator()` (78) re-state
the same enum<->text mapping three ways = 242 lines. String-valued enum cases (`If = "if"`) with a derived `Text()`
and `FromText()` would reduce this to the enum itself: **~150 lines**. Estimated total for this pattern: 550 (policy only)
to ~1,100 lines.

### 3.5 Shared enum header fields

`ast.Expr`, `typed.Expr`, `typed.Place` ... carry `sp` (and `ty`) as the first payload in every case (63 + 41 cases), so
every pattern pays for it: 1,564 of 1,745 constructor patterns begin with `_`, 848 with `_, _`; 2,162 `_` in total.
There are 9 accessor functions that match every case just to return the header (`ast.olang:300 Span`, `typed.olang:643 Span`,
`:653 Type`, ...) = 69 lines.
```
typed.olang:643   fn (x Expr&) Span() ... return match x { case Expr.Lit(sp, _, _), Expr.Data(sp, _, _, _), ... => sp  (9 lines) }
scope.olang:3159  case typed.Expr.Borrow(_, _, p), typed.Expr.Take(_, _, p) { return s.uePlace(b, p, l, mode) }
```
Feature: header fields declared once on the enum (`type Expr enum(Sp source.Span, Ty TypeId) { Lit(bits I64) ... }`), readable
as `x.Sp`, and omitted from patterns; or partial patterns (`Call(.., c)`). Saves ~70 lines and removes about one `_, ` in three
from pattern text. Small in lines; larger for readability.

### 3.6 Qualified case names (characters, not lines)

`case typed.Expr.Seq(...)` repeats the subject's type in every case: 2,611 case lines, 11,287 doubly-qualified names, 38 KB
of text in those names alone; 1,091 non-case construction sites `typed.Expr.X(`. If a case's enum can be taken from the match
subject (`case Seq(_, _, q)`), the type is written once. No line saving (a few wrapped lines), ~1-2% of the file text.

### 3.7 Integer casts: mostly redundant already

1,190 code lines contain `I64(`/`I32(` (999 + 398 occurrences) and 801 lines an id-type cast (`TypeId(`, `BodyId(` ...); 317 are
`X[I64(id)]`. A probe on the current compiler (`/home/user/review/verbosity/t/a.olang`, `b.olang`): with
`type LocalId extends I32`, `a[id]`, `y I64 = id`, `f(id)` (f takes I64) and `a[LocalId(1):LocalId(3)]` all compile and run
without a cast (T6b). So a substantial part of the `I64(id)` casts (check.olang:440, 2204, 2253 ...) look removable by code
hygiene, not by a language change; not verified site by site (a few are in generics: `pair.Pair(c.fr().Body, I64(id))` binds
`Pair<..., I64>` deliberately). Noted so it is not mistaken for a language problem: ~0 lines, a few thousand characters.

### 3.8 Error plumbing

1,213 `try`, 726 `catch`, 296 `catch default`, 143 functions with `?`. All but a few are one line:
`id := try c.fnBodies.Get(inst) catch default -1` (check.olang:1497) - 200 sites, 93 defaulting to `-1`, 18 to `""`,
14 `false`, 13 `null`, 13 `0`. 42 are `try X.Pop() catch { }` (lower.olang:530) and 50 `catch { unreachable }`
(+ 86 `catch os.OsError/IoError { unreachable }`, mostly tests and tools). This costs characters (~25 per site), not lines.
`GetOr`/`else` were declined by the user (a miss is an error); that stands. A `Pop` that cannot fail on a known non-empty
stack would not be a language feature. Error sets: only 18 declared; no error plumbing pattern is worth a language change.

### 3.9 Test fixtures and tools

`test` blocks are 3.9% of the compiler files, but their setup is the repeated text: 37 `os.MkTemp`, 45 `RemoveAll`,
9 copies of the 8-line "write main.olang, Loader, Resolver, Program, Checker" pipeline (e.g. check.olang:12016, 12033;
the 6-line window repeated 6 times at check.olang:12024-12093, and views.olang:1599, generic.olang:2600, lower.olang:3069).
A `testing.TempDir()`/`testing.Check(src)` std helper would save ~150 of the ~250 lines. A duplicate-window scan found only 324
duplicated line positions in the whole compiler (6-line windows, >150 chars) - the code is not copy-pasted.
`tools/` (4,938 lines, 7.8% of everything) is oracle plumbing for the C compiler and is removed with `bootstrap/`.

### 3.10 Builder loops and index bookkeeping - smaller than expected

Of 414 `List` declarations only 43 are builder-then-`ToArray()` (605 lines of span); the rest are state kept in fields. 147
one-line `for ... { out.Push(f(x)) }` loops (57 plain copies `PushAll` could cover, 75 maps) cost no extra lines. 2 comprehensions
exist today, but one-line loops are no longer than a comprehension would be. 413 `for i in range X.Len()` loops: only 20 use
the index solely as `X[i]` (173 lines), 57 walk parallel arrays, 255 really use the index (ids are positions in tables - a
design choice, `c.P.T.Items(c.P.T.Params(...))` 162 nested accessor calls and 1,037 `c.P.T.` prefixes, not a language
gap). A `zip`/`for x, y in a, b` would save ~57 loop-header index uses and no lines.

### 3.11 Other measured non-patterns

- Long parameter lists: 123 functions with >=5 parameters of 2,721 (4.5%); `sp source.Span` is threaded through 458 functions
  and appears on 2,544 lines. Implicit context would be an invasive feature for ~0 lines.
- Methods: 2,301 receiver-form fns; 497 on `mut Checker&`, 302 on `Scoper&`, 184 on `Machine&`. A grouping block (`impl`)
  would save characters only. Field getters: 4.
- Null guards: 230 `if x == null { return }`; Option chaining is parked (QAO) and would save at most that many lines.
- Text building: 1,473 lines with `$` joins, 114 `StringBuilder()`; `emit.olang` has 1,129 lines with string literals (24% of it)
  because it prints LLVM IR; 216 contain `\n`. A multi-line text literal would save ~100 lines of escapes at most.

## 4. Ranked recommendation

1. **Pattern-binding `is` (if-let / let-else)** - 264 matches, **~790 lines** (1.4% of the port, 34% of the span of those
   matches), the clearest single win. Reuses `is` (E32) and the existing pattern grammar; no new keyword; strengthens
   principle 3. Conflicts: none. Tension: "one way to write each thing" - `match` stays for multi-way, `is` for one case; Rust
   and Swift draw the same line.
2. **Derived child traversal for enum trees** (via reflection #2 or a built-in `Children()`) - **500-900 lines**, concentrated
   in scope.olang and check.olang, also unparse/views/names. Conflicts: none with PRINCIPLES; it must be compile-time
   (generated per enum) so no hidden run-time cost. Should be pulled forward in the build list if reflection is built anyway
   (the compiler is its best customer).
3. **Bodiless constructor = plain record** (parameters are the fields) - **~510 lines**. Conflicts: reverses part of the user's
   T13 (no field-list structs); keep the explicit pun body for non-trivial cases. Needs the user's decision.
4. **String-valued enum cases / function-name identity for tables** - token tables ~150 lines and, with function-name kinds,
   ~550 of msgs.olang on top of a formatting policy that alone would drop ~1,090 lines of `# ERR_` echoes and blank separators
   (no language change needed for that part: do it first). Conflicts: none; reflection-adjacent.
5. **Enum header fields + partial patterns** - only ~70 lines but cuts the `_, _, ` noise from 1,564 patterns; low priority.
   Subject-typed unqualified case names (3.6) belongs with it: characters, not lines.

Not recommended: dropping braces (19% of code lines, but PRINCIPLES 4 fixes braces); `GetOr`/`else` defaults (declined; 0 lines);
generators, generic enums, Result values, units, SIMD, `embed` for the compiler's own sake (no occurrences of their patterns).
Library/hygiene work that needs no language change: remove redundant `I64(id)` casts (3.7), `Set<T>`, test helpers (3.9),
policy for msgs.olang layout.

Rough total if 1-5 all land: ~2,300-3,400 lines (4-6% of 58k) plus the 1,090-line formatting policy. The port is not verbose
in lines - average line 39 characters, 80% code - so these are the places where it is *repetitive*; the large remaining mass
is real checking logic (check.olang + scope.olang = 20k lines) that no listed feature shrinks.
