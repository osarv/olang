# The self-hosted olang compiler: design

Status: M1 (`source`, `token`, `scan`) built 2026-10-11 - the token diff is clean on every file of the repository and
study2's data, at 93-102 MB/s; M2 (`diag`, `msgs`) and M3 (`ast`, `parse`) built the same day - the structure diff and
the round trip are clean on every file and on study2's data, scan and parse together at 41-44 MB/s; M4 (`load`, `fetch`,
`names`, with `cond`) built the same day - every root's module graph is stage 0's, and every checks case gives the load
and name errors stage 0 gives; M5a (`types`, `generic`, `typed`) built 2026-10-12 - every type stage 0 holds for every
root program is interned and laid out as stage 0 lays it out (the layout diff, section 4), and the typed contract is
written, reviewed and revised (section 1.6.1); the MIR contract (`mir`, section 1.8.1) written 2026-10-12 for review;
the rest is design.
`SPEC.md` says what olang means; this file says how the compiler written in olang computes it. The C compiler
(stage 0, removed 2026-10-23, tagged `stage0-final`) was the reference for behaviour only: its diagnostics, edge cases and test results, never its structure.
Where the C compiler and `SPEC.md` disagree, the port follows `SPEC.md`, and the disagreement is fixed in C as well (or
the spec amended) and recorded.

Measurements below were taken on 2026-10-09 on the shared 4-core machine while other work ran on it (load average
10-13). The ratios between them are what matters, not the absolute numbers.

## 0. Ground rules

- **Behaviour is the acceptance test.** The whole suite (`make verify`) passes, plus token and structure diffs
  against the C compiler where they are cheap (section 4). The port's IR does not have to match the C compiler's.
- **Industry-standard designs** (`.claude/memory/rules.md`, "The port is a redesign"): a hand-written scanner,
  recursive descent with a Pratt expression parser, separate passes over trees of tagged unions, and a typed
  mid-level IR.
- **One module per pass**, long where the pass is long. Files are split only at real module boundaries. M19 adds a
  constraint: methods on a type must live in that type's module, so a pass built around one state struct (a
  `Parser`, a `Checker`) stays in one file.
- **Deterministic output.** The same input gives byte-identical `.ll` files, which the bootstrap fixed point
  (section 5) relies on. No ordering may depend on addresses or timing. Map iteration is deterministic because
  std's hashes are unseeded; output that must be ordered is sorted.
- **Ids for cross-links, trees for structure.** A tree (AST, typed body) is a recursive enum held by reference
  inside one scope. Anything a later pass looks up uses dense `I32` ids into tables: `NameId`, `DeclId`, `TypeId`,
  `InstanceId`, `LocalId`. Under olang's own §8 this is also the shape that never fights the scope checker. Every
  friction study2 hit (r06, r08, r10) came from long-lived tables holding references into shorter-lived trees.

## 1. Architecture

```
            ┌────────── load (imports, std, remote, lock) ──────────┐
 files ─▶ scan ─▶ pre-scan ─▶ parse ─▶ names ─▶ check ─▶ scope (§8) ─▶ lower ─▶ emit ─▶ clang -c ─▶ link
                  (imports,             (decls,  (types, generics,  (placement,  (MIR)   (.ll per    (runtime.o
                   type names)           B9)     elaboration;       summaries)            module +    linked once)
                                                  demand-driven)                          .inst.ll)
                                                    │   ▲
                                                    ▼   │ constants, conditions, zero values (during checking);
                                                   eval (MIR)  K2 baking, S18c asserts (after); -i (instead of emit)
```

| pass | olang modules | ~lines | replaces (C) |
|---|---|---|---|
| sources, spans, names | `source` | 250 | parts of util.c |
| scanner | `token`, `scan` | 150 + 650 | token.c (864) |
| diagnostics | `diag`, `msgs` | 450 + 900 | errmsg.c/.h (1,193) |
| parser | `ast`, `parse` | 450 + 2,300 | syntax.c (4,740) |
| loading | `load`, `fetch` | 600 + 450 | semantic.c module loading, M23 |
| names | `names` | 1,600 | semantic.c pass 1, syntax.c B9 evaluator |
| types, checking, generics | `types`, `generic`, `typed`, `check` | 2,000 + 1,800 + 450 + 7,000 | semantic.c passes 2-3 |
| scope check (§8) | `scope` | 3,000 | semantic.c O-sections, flow tracking |
| a Vec's views (M19g) | `views` | 1,650 | semantic.c's `settleVecViews` |
| mid-level IR | `mir`, `lower` | 600 + 2,400 | codegen.c lowering half |
| evaluation, `-i` | `eval` | 2,600 | comptime.c (2,987) |
| LLVM emission | `emit`, `dwarf` | 2,800 + 400 | codegen.c emission half |
| runtime | `std/runtime/*.ll` | ~3,500 IR lines (built: section 1.10) | the same files |
| driver | `olang` (root), `build`, `target` | 300 + 900 + 300 | main.c (789) |

The total is about 30,000 lines of olang (the C compiler is 40,829). The estimate comes from study2: its scanner is
0.65x token.c, and its parser and AST are about 0.55x the parsing part of syntax.c. Modules live in `compiler/` and
import each other relatively (M22a). The root is `compiler/olang.olang`.

### 1.1 Sources and the scanner (`source`, `token`, `scan`)

- **Source files.** Each file is read whole into one `String` in the compilation's scope, so every span points into
  text that lives for the whole run.
- **The scanner is hand-written.** It switches on the first character and applies maximal munch (L16). It reads
  identifiers, then finds keywords with a switch on length and first letter; no table is built at run time. It reads
  number runs with their radix and separators (L10-L12), and validates string and character literals and their
  escapes (L13-L15). A literal's value is decoded later, from its span.
- **Tokens.** `Token(Kind Tok, Flags U8, Start I32, End I32)` is stored by value in one `Array<Token>` per file,
  ending in one `Eof`. A word after `.` is always `Iden`, whatever it spells (L9a), so the parser never meets a keyword
  in a member's place. `Flags` holds three bits:
  - `LineBreak`, a line ended since the previous token (a newline, a line comment, a block comment spanning one): used
    by L18b and L20a;
  - `Space`, anything at all stood between it and the previous token: used by E25's adjacency rule;
  - `LineStart`, the token begins its line (column 1): L18a's rule for a declaration starting a line, as the C
    tokenizer reads it. (Planned as "first on its line", which is `LineBreak` but for the file's first token.)
- **Statement ends** are tokens of their own, `Start == End` just past the last token of the line they end (or at a
  `;`, L18). A `;` is one error and at most one statement end; bytes that begin no token are passed over as though they
  were not there, a pending line end waiting for the next token (L1); the end of the file ends a statement whatever is
  open.
- **Statement ends** are inserted by the scanner, following Go's lexer: L18's token list, L18a's bracket stack, and
  closing brackets when a declaration keyword starts a line. No end is inserted before `catch`. The C tokenizer
  inserts one there and its parser skips it, so the token diff normalizes that difference away.
- **Side tables.**
  - A *line table* (`source.Source`) holds line start offsets; a position's line and column are found by binary search.
  - A *brace table* maps each `{` to its matching `}`, by braces alone as B9 states: `Opens` (every `{`'s token
    index, in order) and `Closes` (its `}`'s, or -1), searched by `Tokens.Match`. It bounds the parsing of a
    conditional branch and error recovery.
- **Lexical errors** are records, `Diag(Kind LexError, Start, End, Byte)` with its rule and message as methods, in the
  order found; M2's `diag` takes them over.
- **What this replaces.** token.c matches a table of mini-pattern rules (`$a`, `$d`) at every position and reads its
  keywords out of that table at start-up.
- **Measured.** study2's scanner reads 25-30 MB/s under load (72-90 MB/s idle). The C tokenizer reads 9.5 MB/s on the
  same 4.6 MB file under the same load (483 ms). M1's scanner (`dump speed`, fastest of ten): 93-102 MB/s on `big.olang`
  (763k tokens in 47-50 ms) at a load average of 0.7, a 48 MB peak scanning it ten times.

### 1.2 The parser (`ast`, `parse`)

- **Statements and declarations** are parsed by recursive descent. **Expressions** use Pratt precedence climbing
  over E5's table, with:
  - `not` at its own level (E7a);
  - comparison chains (E30) and the infix `is`, `is not` and `not in` forms as their own nodes;
  - the conditional `a if c else b` (E28) at the lowest level, with L18b's rule about a line-initial `if`.
- **Lookahead.** The parser looks one token ahead, plus a few bounded peeks at the sites listed in section 2. It
  never backtracks and never memoizes.
- **Type-argument mode.** Inside a type-argument list, `>` closes the list. `>>`, `>=` and `>>=` are split there;
  `<<` never opens a list (section 2, point 10).
- **Error recovery.**
  - An error in a statement skips to that statement's end at the same bracket depth, or to its block's `}`.
  - An error in a declaration skips to the next line that starts with a declaration keyword.
  - The result is one error per item, and a function whose body failed to parse stays declared by its signature
    (`SNTX_BODY_UNPARSED`).
- **Nesting limit.** A depth counter enforces L21's limit of 20,000 levels and reports one diagnostic. Section 7 S1
  covers the stack this needs.
- **The AST.**
  - Nodes are recursive enums held by reference (T17d) and are never written after they are built (O25g).
  - Every node carries `Span(Start I32, End I32)`; carets (`^~~~`) need the end.
  - Identifiers are `NameId`s, interned once per compilation.
  - Each enum case holds at most about four words; larger payloads (a comprehension, a function) sit behind a
    reference to a struct, so the largest case does not size every node (r14).
- **Lists** are gathered on parser-held stacks and flattened into arrays when complete, as study2 does. A `List` per
  call would have to live where the parser does (r06).
- **What this replaces.** syntax.c backtracks, memoized by position after it was found to take 3^depth time. It also
  decides S8b and B9a conditions inside the parser with a token evaluator, and needs type names at `T[`, `is` and
  `match`.
- **Measured.** study2 scans and parses the 1 MB corpus in 110 ms (34 + 76) against about 790 ms for the C
  tokenizer and parser. On 4.6 MB it takes about 0.4 s against 7.3 s.
- **As built (M3, 2026-10-11).**
  - Recovery goes on inside an item: an error skips its statement (to the line's end at its bracket depth, or to its
    block's `}`), so several errors of one item are recorded. Stage 0 stops an item at its first; the structure diff
    compares each item's first error.
  - A function whose body fails keeps its signature (`Decl.Fn` with no body) when its block was opened; a type whose
    body fails keeps its name and parameters (`TypeDecl` with no body). Both are what `SNTX_BODY_UNPARSED` gives the
    checker.
  - Every branch of a build-decided `if` is parsed (point 12). Each branch's diagnostics are held in a diag group of its
    own, which the checker chooses or drops when it decides the condition; the parser evaluates no condition. A plain
    `else` is an `If` with no condition, so its branch has a group too. An error that ends the item - L21's limit, a
    block never closed - is reported outside every held group, since what holds it is abandoned with the item.
  - L21 counts as stage 0 does: a level per block, per operand, per `not` and per binary link once its node is built;
    a statement met at the limit is reported at its first token. So the 20,000th level is reported where stage 0
    reports it.
  - A trait method's `mut` is kept as a nameless receiver whose type is just the permission.
  - The parser runs inside `os.RunOnStack` with 1 GB, as the compiler will; `parse.olang`'s own L21 test does so too.
  - Measured on study2's `big.olang` (4.6 MB, the machine loaded): scanning 97-103 MB/s, scanning and parsing 41-44
    MB/s (106-113 ms), against stage 0's tokenizer and parser at about 7 s.

### 1.3 Diagnostics (`diag`, `msgs`)

- **`msgs`** has one function per diagnostic, with typed arguments, each returning its rule and text:

  ```
  fn UnknownType(name String&, near String&) Msg { return Msg("T5", "unknown type '" $name "'" ...) }
  ```

  This replaces errmsg.h's X-macro table of 424 printf formats. The compiler checks the arguments, so a format and
  its argument count can no longer disagree. olang has no variadics, so this needs none.
  `checks/checks.olang` keeps its check that every rule a message names exists in `SPEC.md`, now by reading
  `msgs.olang`.
- **`diag`** keeps records, each holding a severity, a rule, a span, the text and notes. It also:
  - holds a branch's diagnostics until that branch is chosen (section 2, point 12);
  - sorts records into source order;
  - renders each per B11 (one row, then the source line and a caret);
  - adds colour only on a terminal (`os.IsTerminal`, `NO_COLOR`, `TERM=dumb`);
  - prints the `N errors` summary;
  - prints a rule's text from the `SPEC.md` beside the compiler for `-e RULE`.
- **Message texts** match the C compiler's wherever a `checks/cases` program pins them. Elsewhere they may improve.
- **Built (M2, 2026-10-11).**
  - `compiler/msgs.olang`: 562 functions, one per entry of errmsg.h's table (which has grown past the 424 counted
    above), first generated from it by a tool, and since 2026-10-23 the table's source, edited by hand
    (`bootstrap/twins.olang` held stage 0's errmsg.h to it until stage 0 was removed). Beside them: `Msg` (`Kind`, `Rule`, `Text`), the `Diag` enum
    naming every diagnostic, `Tok` and `Esc` (C's `%n` and `%c` spelling), and `EndOfLine`/`EndOfFile`.
  - `compiler/diag.olang`: `Diagnostics` - `AddFile`, `Error`, `ErrorOncePerLine`, `Note`, `Fatal`,
    `ScopeGroupStart`/`End`, `PushContext`/`PopContext`, `Hold`/`EndHold`/`Choose`/`Drop`, `Render`, `Summary`,
    `Usage`, `Errors` - and `Where`, `ColorWanted`, `Explain` and `SpecPath`.
  - Decisions:
    1. **A diagnostic's kind is the enum `Diag`**, one case per function, so once-per-line (C's `ErrOncePerLine`)
       compares kinds, never text.
    2. **`%n` and `%t` are `String&` until their types exist.** A token parameter holds the token as a reader sees it
       (`Tok(text)`, `EndOfLine`, `EndOfFile`), a type parameter the type as source writes it. Once M3's `Token` and
       M5's type ids exist, the parameters become `tok token.Token` and `ty types.TypeId`, spelled inside msgs; the
       generator was retired on 2026-10-23 (the parameters still `String&`), msgs.olang is edited by hand
       (`bootstrap/twins.olang` kept errmsg.h its twin until stage 0 was removed); `checks/checks.olang` holds msgs.olang
       to the spec.
    3. **A span is offsets into a file's text** (`Where.Span(file, start, end)`); its line and column come from a line
       table diag makes for a file the first time a diagnostic needs it. `lineStarts(text)` is the one function to
       replace with M1's source line table.
    4. **Records keep report order and are sorted at `Render`** - by file in the order first reported against, then
       line, then report order, as stage 0 sorts. Deduplication (one place, one text) and once-per-line are decided
       there too, among the records reported, so a dropped group can never hide an error that is reported.
    5. **Held groups replace stage 0's buffering and muting.** A group is pending, chosen or dropped; groups nest, and a
       record is reported only when every group it is inside was chosen. An undecided group reports nothing.
    6. **The library redirect and instantiation contexts are ported** (an error met in the library is reported at the
       program's use, the innermost contexts and always the outermost are named). G16b's replacement of a weakly
       spelled record by a later instantiation's is not: which instantiation can spell the generic's types is the
       checker's question (M5), to settle before it reports.
    7. **Colour is a constructor argument** (`Diagnostics(ColorWanted())`) and `Explain` a function of the
       specification's text, so both are testable and diag prints nothing itself: the driver (M10) writes `Render`,
       `Summary` and `Usage` and ends the process.

### 1.4 Loading (`load`, `fetch`)

- **Imports and identity.**
  - Import forms follow M22, M22a and M23.
  - A module's identity is its path.
  - std is found at `<compiler>/../std`, or at `OLANG_STD` if set.
  - The prelude is every file of `std/prelude`.
- **Remote imports.**
  - Their parts are validated (M23a).
  - git runs through `os.Exec`, never a shell.
  - Each fetch goes into a temporary directory, renamed into place once it holds the right commit.
  - The lock file follows M23b and M23c; `-u` updates it.
- **Order of work.** Every module of the import closure is scanned and **pre-scanned** before any module is parsed.
  The pre-scan is token-level: it reads the import declarations and the declared type and error names, including
  those in every conditional branch, for the parser's one oracle (section 2, point 1).
- **Parsing in parallel.** Each module's parse is pure, so modules may be parsed by parallel tasks in a `join`.
- **Built (M4).** `compiler/load.olang`, `compiler/fetch.olang` and `compiler/cond.olang`. What was decided while
  building it:
  - **Parsing is not parallel yet.** Every parser interns into one `source.Names`, which is mutable shared state; a
    parse per task would need an interner per task merged afterwards, or a locked one. Measured, parsing the whole
    corpus closure is not where the time goes (the checker will be), so it waits for M10's measurements.
  - **B9a is decided in the loader, over the AST** (`cond.Eval`), not over tokens: a chain of top-level ifs is decided
    once its conditions' globals are known, its chosen branch's imports loaded, the others' never. A condition B9a
    cannot decide (a call, a computed global, another module's name) leaves its chain **pending**: its imports wait
    and its branches' diagnostics stay held. `PendingIfs()` lists them and `Decide(module, condition, branch)` takes
    the checker's decision (M5/M8 evaluate the condition) - the loader never guesses. Stage 0 checks a first attempt
    with every such chain taking its else and then checks again; the port loads only what is decided, so a module
    reached only through a pending branch is not in the graph until it is decided.
  - **What load reports**: M1, M4, M5, M14, M16, M17, M22, M22a, M23, M23a and M23b, the lexical and syntax
    diagnostics of the branches chosen, and B9a/B10's errors in a condition. A missing root is one error at the file.
  - **Remote imports** run git through `os.Exec` with every part validated (`fetch.NamePart`, `IsCommit`); a fetch
    goes into a temporary directory renamed into the cache at `host/owner/repo/<commit>`; the lock file and `-u`
    behave as stage 0's (the same lines, the same "updated ... (was ...)" report).

### 1.5 Names (`names`)

- **Declaration tables.** Each module has a table mapping `NameId` to `DeclId`, covering types, functions, globals,
  error types, import aliases, and methods keyed by receiver. The declarations of a conditional group (B9) wait
  aside until the group is decided.
- **Resolution** covers:
  - identifiers;
  - alias chains (M4-M12, M20);
  - parameters and locals: one flat map plus an undo log, because D3 and D3a forbid shadowing;
  - the nodes the parser left undecided between a type and a value: `T[...]`, `x is T`, a type argument that is a
    bare name, and a pattern's top-level path.
- **Conditions are decided by demand, one mechanism for B9a, B9c and S8b.** When a name lookup reaches a module
  with an undecided group that could declare the name:
  1. The group's condition is checked in that module's context and evaluated (sections 1.6 and 1.8).
  2. If evaluating it needs the declarations still being decided, that is a cycle, and it is B9c's error.

  This replaces both the token evaluator of B9a and B9c's loop that checked the whole program again. B9a's results
  are by definition identical to B9c's. Messages that checks cases pin are kept.
- **Built (M4).** `compiler/names.olang`: a `Table` per module (entries; values, types and aliases by `NameId`), a
  `Resolver` recording what each name written is (`Use(file, offset)`, `Member(file, end)` for `alias.Name`, as a
  `Ref` of kind, module and index), parameters and locals in one map with an undo log, and `DecideTop` for a pending
  top-level if (it calls `Decide`, then enters and resolves the branch's declarations). What was decided while
  building it:
  - **Names reports the rules about declarations and imports only**: D2, D3 (declared twice), D3a (shadowing a
    global, a function, a build constant, a type; a for-in name, E29), D8c (`_`), M10 (an unknown
    alias, naming the std module where one exists), M14, M20, B10/B10c (an unknown or redeclared build
    constant, a `mut` default) and G22's constant names. **An unknown name is recorded as `None` and left to the
    checker** (M5), which knows a type's members and reports one error per name with its suggestion - two passes
    reporting it would say it twice, and only the checker can tell `x.f` on a value from `alias.f`.
  - **A name a pending top-level branch declares waits** (`Table.waiting`): it is no unknown name and no clash until
    the branch is decided.
  - **A local if (S8b)** whose condition `cond.Eval` decides has its chosen branch's diagnostics reported and the
    others' dropped; one it cannot decide has its branches' diagnostics reported only where they hold no syntax error
    - a branch with one may still be dropped by the checker's evaluation (S8c, B9c), as stage 0 drops it.

### 1.6 Types and checking (`types`, `generic`, `typed`, `check`)

- **Types are interned.** A `TypeId` indexes one hash-consed table, so type identity is `==` on ids - on their plain
  ids where function types are involved, since a function type carries its scopes beside its identity (section 1.6.1).
  Reference shape and permission are part of identity (T25a, T25b). Scope tags are not: they belong to §8 (section
  1.7). Layout (size, alignment, LLVM spelling) is computed once per `TypeId`. This replaces `TypeIsSame` and its deep
  comparisons.
- **Checking is demand-driven, per declaration.** Each request is memoized with an in-progress mark, and a cycle is
  a diagnostic: a type that embeds itself (T16), a condition (B9c), a computed constant argument (G21). The
  requests are:
  - a signature;
  - a type's layout;
  - a global's type;
  - a function body;
  - an instance body;
  - a constant value.

  This replaces the C checker's three passes and the loops that check the program again: B9c's, the one C2e and G21
  inherited, S8b's attempts, and O10c's late discharge. Zig's lazy semantic analysis, Swift's request evaluator and
  rustc's queries take the same approach. There is no persistence across builds.
- **Generics.**
  - An instance is keyed by its generic's `DeclId` plus its argument `TypeId`s and constants; the key gives it an
    `InstanceId`.
  - An instance's body is checked the first time it is requested.
  - Instance names are injective, derived from the key (G16a).
  - G17's depth limit is a counter on the request stack.
  - Constraints (G19) are checked where a variable is bound.
- **Elaboration: the typed tree is a core language.**
  - Operators become method calls (E31), and `==` becomes an `Eq` call (E10a).
  - `x in c` becomes `Has` or `Contains` (E29).
  - `for-in` and comprehensions become loops over iterators, runs or indices (S9a-S9f).
  - Conditional expressions and chains become explicit temporaries.
  - A `match` becomes decision tests over a subject held once (S12, S13).
  - A lambda becomes a hidden function with its captures (D16).

  The C compiler already lowers these inside its checker, so that §8, the evaluator and code generation see about
  thirty node kinds rather than the surface grammar. The port keeps that structure: "lower to what exists" is a
  principle (`PRINCIPLES.md`).
- **Summaries derived from typed bodies** come from the same bottom-up walk over the call graph's strongly connected
  components. Section 1.6.1 lists every one and its owner: those that change a value (D9b, K1a, B5a) are computed on
  demand while checking, since evaluation during checking needs them; those that only give errors or placement come
  after it.
- **Module boundary.** `check.olang` is one module (about 7,000 lines) with methods on `Checker`; M19 keeps those
  methods in the `Checker` type's module. Section 3.3 gives its compile time. If measured development builds need
  it, expressions can move to a module of free functions taking `c mut Checker&`.

**Built (M5a, 2026-10-12): `types` and `generic`.**
- **`types.Table`** interns every type into a `TypeId`: the twelve numbers and `Bool` at fixed ids, declared types and
  instances (`Named`: a `DeclId` and an argument list), arrays (an element and a length: a constant, or none for a
  run-time length), references (a referent and a permission: read-only, writable, owning), functions, tuples, records,
  anonymous enums, type variables (an owner and an index; an owner is `2 x DeclId` for a type's, `2 x function + 1` for a
  function's) and constants (`Const`: a type and a value; `ConstExpr`: an argument still to be computed, keyed by where
  it is written). An instance is its generic's `DeclId` and its arguments, so its `TypeId` is its `InstanceId`;
  functions' instances are numbered by `generic.Program.FnInstance`. Lists of types are interned too (`ListId`).
- **Layout once per `TypeId`**, the C ABI's: fields at their natural alignment, an enum with payloads `{ i64, [K x i64]
  }`, a function value `{ ptr, ptr }`, an array value or reference with a run-time length `{ i64, ptr }`, a fixed one
  `[N x T]`, any other reference `ptr`, and a struct over 128 bytes passed through memory. The layout's own state is the
  request's in-progress mark: asked for again while being made, it is T16's cycle.
- **Canonical text** (`Canon`) is G16a's injective name, `IDENTITY:Name<args>`, and `generic.Program.ParseCanon` is its
  inverse over a program's types - which is what lets the layout oracle compare type by type rather than program by
  program.
- **`generic.Program`** makes declared types' bodies on request (an instance's by substituting its generic's), resolves
  written types in a module's context, folds constant arguments, infers type variables (`Unify`/`bind`: G9a-G9d), checks
  constraints where a variable is bound (`Satisfies`, `BoundMet`: G19), finds methods by receiver key (M19, M21, T29e),
  makes functions' signatures (over the variables their receiver's type arguments introduce, then their list's: G3,
  QW) and names their instances (G16a).
- **G17** has both of its bounds: a type nesting more than 48 deep is refused where it is interned, and a chain of more
  than 1,000 instances' layouts each asking for the next where the layouts are requested (a constant that keeps
  changing). Each is said once per declaration.
- **G21's fold computes what the program would**: every value typed, operators where their operands meet (T6b, E6d),
  results wrapped (E6c) - the evaluator would give the same, so only what needs a call (a function computing a length)
  is left to it, as a pattern (M8). So is a type only a top-level `if` the evaluator decides declares (B9c).
- **Revised after the contract's review (2026-10-12).** A function type carries its scopes (`types.Scopes`, filled
  from the written markers by `sigType`, kept by `Subst`, spelled ` ~[...]` by `Canon` and read back by `ParseCanon`),
  outside T22's identity (`Plain`, `Same`); an instance's arguments are held plain, a function instance's plain but for a
  function type, which keeps its scopes (G16a, T22: `keep(link)` and `keep(copy)` are two instances, 2026-10-21), and
  inference binds a variable so. `types.ScopeVarsOf` gives a call's hidden scope arguments from the type
  alone, `generic.Program.ScopeVarsOf` resolving the bodies whose fields say whether a value holds a reference. Every
  type and function instance records where it was first asked for (`Asking`, `TypeOrigin`, `InstanceOrigin`, G16b).

### 1.6.1 The typed core language (`typed`): the contract

`check` makes a typed body of each function instance, constructor, enum case's payload, destructor, lambda, test and
global's initializer; `scope` (M6), `lower` (M7) and `eval` (M8) read nothing else of the program's code.
`compiler/typed.olang` defines it. It was reviewed on 2026-10-12 (`/home/user/review/typed`), and this section is the
contract as revised by that review.

**Bodies.** A body's types are concrete - an instance's own (G16): no type variable or constant pattern is left in it,
and a generic's body is checked once per instance. Each body has:
- `Of`, what it is: a function instance; a constructor, `Ctor(t, twin)` - `twin` the binding of a G10d constructor's own
  type variables, so each twin has a body of its own while the twins share one `TypeId`; an enum case's payload,
  `Case(t, tag)` - parameters and their marks and no code, the home of a payload's marks (T17c); a destructor, whose
  `Params[0]` is the instance (`mut T&`, in the closing scope, C9a); a lambda; a test; one global's initializer,
  `Global(module, name)`. A global has a body of its own because K2 bakes and refuses globals one by one, and a `:=`
  global's type, G21's lengths, B9c's conditions and S18c's asserts each ask for one global on demand; B5a's order of a
  module's globals is a summary, computed once their bodies are checked.
- `Ty`, its function type, the receiver first, with its scopes (below): a constructor's and a payload's role is
  `RoleCtor`, a destructor's `RoleDtor`.
- `Locals` (`LocalId`): parameters, variables, check's locals, an arm's bindings, a lambda's captures, a constructor's
  fields - each with its name, span, type, block and **mark**. Check's locals are of two kinds: **held** locals are
  transparent, a value held for its one use and built where that use puts it (D8d's call parts, E29's operand, E30's
  chain values, S4c's values, E31b's place and indices, a match's subject, a destructured result); **hidden** locals are
  storage of their own (a loop's counter, a for-in's iterator or borrowed collection, E31b's handle copy, lent as its
  reference).
- `Blocks` (`BlockId`): each block's parent and kind. Block 0 is the body's frame scope - in a constructor and a
  destructor too, whose instance and closing scope are scope variables, not block 0.
- `Sites` (`SiteId`): every expression that may allocate, every call, every read of an own slot that borrows it (a
  `Region` site: the region read there, which a call passes on, O32/O33), and every temporary place (`Temp`: its
  storage, the block or an arena over 64 KB, E16a/T7c). An owner or destructor-bearing value that no slot receives has a
  `Promote` site, where it is registered (O16, O30).
- `Vars`: the scope variables a call passes, `types.ScopeVarsOf(Ty)` in order (`Body.SetVars`), then a lambda's
  captured scopes, carried in its environment (D16c).
- `Fields`: what a constructor's instance is assembled from, in field order (C2a).

**Marks.** A mark is what a declaration's written type says about where it lives: `None` (no marker, a value), `Bare`
(`&`), `Of(x)` (`&x`), `Global(module, name)` (`&G`: the program's scope, O1b - a local's only; a scope argument naming a
global is E25's error), `Return` (`&return`), `Infer` (`:=`, and a local written as a bare type variable, which takes its
initializer's scope, O25a), and `TypeVar` (a result written as a bare type variable, O14b). Types carry no scope tags, so
marks and function types' scopes are §8's whole record of what was written:
- a **parameter's** mark is as written - `Bare` gives it a scope variable of its own (O4b), `Of(x)` shares parameter
  `x`'s (one written before it, the receiver included, O4a), `None` a value, which still has one where it holds
  references (O4b). It agrees with `Ty` (`Body.ParamMark`);
- a **result's** mark is read off `Ty` (`Body.ResultMark`): built (`Bare`), borrowed from a parameter (`Of`), or
  `TypeVar`;
- a **field's** marks are its constructor body's `Fields` locals' (C2d, O20, O23a): a bare field lives with the instance,
  `&p` where the argument `p` lived. An instance's and a twin's constructor bodies hold their own;
- a **payload parameter's** marks are its `Case` body's parameters' (T17c).

**Function types carry their scopes.** A function type is interned with a `ScopesId` (`types.Scopes`): its role, an
entry per parameter (its own scope variable, or the earlier parameter whose variable it shares) and an entry per result
(built, borrowed from a parameter, or written as a type variable). `generic.Program.sigType` fills it from the written
markers, and substitution keeps it. Scopes are outside T22's identity: `types.Plain` is a type with every function
type's scopes left out, and two types are one type exactly when their plain ids are equal (`types.Same`). What is named
by its parts' identity - an instance's arguments (G16a), a function instance's arguments, an anonymous enum's payloads
(T27) - is held plain; a type argument written with sharing scopes is therefore its plain type, save a function
instance's function type argument, which keeps them (G16a: the instances differ in the hidden arguments they pass). A canonical text spells
scopes that say something after the type, ` ~[role,n,entries]`, which `ParseCanon` reads back.

The ABI follows from the type alone. `types.ScopeVarsOf(f)` - one function that `check`, `scope`, `lower` and `eval` all
use - lists the scope variables a call of a function of type `f` passes as hidden arguments, in order: each parameter,
the receiver first, that holds a reference and shares no earlier one's; then the result scope, where a result is built
or written as a type variable and holds a reference, or the function is a constructor (its instance); a destructor's is
the closing scope alone; captures never. A function made a value of a type whose scopes differ from its own is adapted
where it can be and refused (T22a) where it cannot:

| the function's own | the value's type | |
|---|---|---|
| no sharing | parameters share | adapted: the one scope is passed for both |
| a result built | borrowed from parameter j | adapted: j's scope is passed as the result scope |
| a result borrowed | written as a type variable | adapted: the result scope is dropped |
| a result built | written as a type variable | the same ABI |
| parameters share | no sharing | **refused**: an obligation the call would not check (the stage-0 crash, `review/typed/repro`) |

SPEC T22 (2026-10-18) makes every difference in the scopes a different type, so both compilers refuse the three adapted
rows too for now (stage 0 has no such adapters, and is frozen); adapting them is a later relaxation, additive.
| borrowed, or written as a type variable | built, or borrowed from another parameter | **refused**: the result may be one the caller does not expect where it looks |

**Places and values.** A place names storage - a local, a global, what a reference names (`Deref`), a field, an element,
an enum case's payload, a temporary's (`Temp`, with its site), and in an assignment's value `Target`: the place of the
nearest enclosing `Assign`, read where it is evaluated - a compound assignment's old value (S4), a borrow of which is
S4d's case as a borrow of the place written out is (S4d covers `+=`). A value is computed. `Read` copies a place's value, `Borrow`
makes a reference to the place itself (E12c), `Take` moves an owner out (E34); every other expression is a temporary.
That one distinction is what §8 needs to tell existing storage from new values.

**The kinds.** 18 expressions - `Lit`, `Data` (read-only constant storage, T25d: a constant aggregate - a number's bits,
text, or an array of constants, text among them - one instance per written position, file and span, E10c/K2b), `Read`,
`Borrow`, `Take`, `Promote` (a temporary given storage, E12c), `Call`, `Make` (a tuple, an enum case, an array; a fill's
length checked, D14b), `Collect` (a comprehension's array, filled by `Yield`; its reservation checked), `Prim` (an
operation on numbers, Bools and Chars, and the few the compiler supplies: `Len`, bit casts, atomics, a case test),
`Slice`, `Cond`, `Seq` (statements then a value), `Match`, `Try`, `Fn` (a function value: named, a lambda with its
captures, a `Call` adapter), `Text` (renderings joined), `Away` (a subtree from another file); 8 places; and 15
statements - `Let`, `Assign`, `Eval`, `If`, `Loop` (a body and a post clause), `Jump` (break or continue, naming its
loop), `Return`, `Raise`, `Exit` (done, fail, abort, unreachable), `Assert`, `Block`, `Defer`, `Join`, `Spawn`, `Yield`.
Every expression and place carries its type and every node its span. `Callee` has room for a dispatch through a table
beside `Value`, for `any Trait&` (planned, PRINCIPLES.md 5).

**What check elaborates** (none of it reaches the later passes):

| surface | typed |
|---|---|
| an operator, index or slice on a declared type (E31), `x in c` (E29) | a `Call` of the method |
| `==` on an aggregate (E10), the supplied `Hash` (E10b) | a `Helper` - pure data, built-in comparisons part by part - where no part consults a declared `Eq` or `Hash`; else calls (E10a) |
| `a and b`, `a or b` (E7) | `Cond` |
| a comparison chain (E30), a join's operands (E11b), several results passed on (D8d) | `Seq` with held locals |
| a compound assignment (S4) | `Assign` whose value reads `Place.Target` |
| a write through `x[i]` on a type with `At`/`SetAt` (E31b), `try x[i] += v` (R21) | `Seq`: the place and indices held, the element read, written, set back - never `Target`; a handle's copy a hidden local |
| a borrow of the place written over, in a value whose type can hold it (S4d) | `Promote(Read(place))`: a copy of the old value, decided by types |
| `for`, `for ... in`, `do ... for` (S9-S9f) | `Loop`, `Jump`, hidden locals, a `Try` taking `Exhausted` |
| a comprehension (E27) | `Collect` and `Yield` |
| `match` (S12, S13) | `Match`: the subject held once, each alternative a test and its bindings, `NoMatch` always filled |
| `match T`, an `if` on a constant (G26), an `if` the build decides (S8b) | the chosen branch alone |
| a lambda (D16) | a body of its own, and `Fn` with its captures |
| a numeric widening (T6b), a literal adapting (T6, E4a) | `Prim(Convert)`, a `Lit` of the target type |
| a zero value (D13c) | a `Lit` of zero bits where no constructor makes it; else the constructor's `Call`, marked `Zero` |
| a default argument (D8a) | built again for each call with fresh ids, checked in its declaration's context, in `Away` |
| a move of an owner (E34, O36, O42) | a `Take`: `x := take p`, `return x` of an owner local, an owned result handed on |
| a T29d constructor over a primitive | its body ending in a synthesized `Return(Read(param))` |

**Shapes worth stating.** The default error raised is `Raise(DefaultErrT, 0)` (R15). A `Seq` with no value has a null
`X` and type `Void` (R21's statement form). `Match.NoMatch` is never null: the written `nomatch`, an empty arm where
nothing happens, or `Exit(Unreachable)` where S13a holds and only a null reference reaches it. `Callee.Body` reaches a
lambda called where it is written only when it captures nothing (D16b). `IsCase` on a null reference is false (E32,
T17d). A `Lit` of an aggregate is all-zero bits and nothing else. A `Render` operand naming an array is a `Borrow`, read
when its piece renders (E11b, T7b). A task clause's handler gives the targets' value - the default for one, a tuple for
several (P4a). A loop's `continue` runs its post clause; `do ... for c` is a post clause of `if not c { break }`; S9e's
one-shot loop is a body ending in `Jump(Break)`. A subtree holding a `SiteId` or a `LocalId` indexes one body's tables
and is never shared; any other may be.

**Order and failure.** Arguments and operands are evaluated left to right; an `Assign` evaluates its target's
subexpressions, then its value, then stores (S4); a `Spawn` its targets' places, then its task's arguments (P1g); a
`Text` every rendered operand before rendering any piece (E11b). Only `Cond`'s chosen value is evaluated. A call to a
fallible callee, and an operation checked by `try` (E15a), fail to the innermost enclosing `Try`, whose clauses are
tried in order; what none takes leaves the body under its own errors (R17). A task's call is the exception: its errors
go to its `Spawn`'s clauses, then to its join (P4).

**Placement: the plan.** Nothing in the tree says where anything is built, and nothing in it is written after check
makes it. `scope` fills a `Plan` beside each body:
- `Built[site]`: the scope a site builds in - a block's arena (`Block(0)` the frame scope), one of the body's scope
  variables, the program's scope (O1b), an own object's region (`Region(site)`: made at a `Promote` site, O30, or read at
  a `Region` site, O32), the frame (no arena: a temporary nothing keeps, an environment no callee keeps, D16c), or
  `Inert` - a live scope nothing is built in, passed where a callee only reads (a value O12 lends for reading, the
  receiver of a `Str` that `$` calls): lowering opens one, and the MIR verifier refuses any build into it;
- `Stored[local]`: where a local's storage is - its stack slot, or an arena where O26a moves it or T7c's 64 KB bound puts
  it;
- `Passed(site, i)`: what a call passes for its callee's i-th scope variable in `ScopeVarsOf`'s order (the result
  scope, where O18a lands it, among them); at a `Closure` site, the scopes of the lambda's captures in order, or of an
  adapter's instance (E31, decision 48);
- `MayBuild[var]`: whether the body may build into one of its own scope variables - a closure's prologue asks for its
  thread's part of a captured scope only then (P2, decision 48), and a `Str`'s receiver never may (E11c).

**The plan holds placement only: nothing in it changes a value.** Evaluation during checking lowers bodies with no plan,
and evaluation after it (and the run time) with one, so a plan that changed a value would make the two disagree. That is
why S4d's copy is decided in the tree, by types, and why D9b's copies and every move are the tree's too. It is tested:
in a debug mode, `eval` evaluates a body lowered without the plan and with it and requires the same values (section
1.8).

`lower` and `eval` read the plan and decide none of it. Lowering's own allocations follow fixed rules of its own and are
the MIR verifier's exemptions: a text builder's scratch, `Str`'s per-call scope (`Inert`), hold slots (F3), a task's
stand-ins (P2), a try default's slot. Every other allocation into a body's scope variable must come from a site the plan
placed, which is what keeps `MayBuild` computable from the tree. Until M6 lands, M7 runs with a stand-in plan: every
site in the program's scope, every local in its frame.

**Decisions kept beside the tree.** A node is never written after check makes it, so what is decided about one later is
kept under a key: S18c's decided asserts by (`BodyId`, the assert's span); K2's baked globals by global (its `Global`
body); T29d's literal constructors by the call (`BodyId`, `SiteId`); D13c's zero values by type.

**Interprocedural summaries, and who owns each.**
- **Value-changing, computed on demand over the call graph's strongly connected components during checking**, since
  evaluation while checking needs them: D9b's "the body writes its by-value array parameter"; K1a's evaluability
  (incomplete while a body of the component is still being checked); B5a's order (a global is evaluated after the
  globals it reads, directly or through calls; a module's whole order is fixed once its bodies are checked).
- **Before checking, over the resolved AST:** S8c's fixed locals ("nothing writes it"; D3a makes names exact there), so
  an S8b local `if` is decided in one checking pass.
- **Errors only, after checking, in `check`'s last step:** T25c/QC's by-value need; `roByArg`/`roToResult`.
- **Errors only, after checking, in `views` (M19g), a pass of its own run once the program checked cleanly:** what
  each body may grow, the views it hands back and what its result holds of each argument, over the call graph's
  components; then each body walked as a dataflow over the tree (views held, second names, tasks' views).
- **Errors or placement only, after checking, in `scope`:** O17/O17b's regions and handles; `MayBuild`/`MayBuildInto`
  and `Str`'s noBuild; own effects (O39-O41's release and borrow effects); borrowed own results (O37); freshness (O38);
  C2d's may-hold; O26a/O18c's "may keep"; O10b's obligations, O23a's derived scopes and O13c's result bindings. E31b's
  lend error - `x[i]`'s copy where the callee may write it - is `scope`'s, with its handle and view exemptions (G2):
  whether a callee writes the copy's own storage is a summary of its body. `check` elaborates every E31b case the same
  way.

**What the contract leaves to each pass.** `check`: types, elaboration, permissions (T25b, T25c), D10a, S3, S4d by
types, every rule but §8's and K's. `scope`: §8 (O-rules, P2, C2d), confinement (O38), own regions and reach (O33,
O34), the summaries above and the plan. `lower`: the MIR - releases into own slots by type (O30, O35), holds, destructor
registration, the error-union ABI, deferred code per exit (S19), joins on every way out (P1b), helpers (`$`, deep `==`,
the supplied `Hash`), stand-ins for tasks (P2) - and O39-O41's liveness check over it. `eval`: the values - K2's baked
globals, S18c's decided asserts, T29d's literals and D13c's zero values, kept under their keys, which `lower` then reads.

### 1.7 The scope check, §8, as its own pass (`scope`)

The scope check runs after checking, over the typed core tree, once per function instance. It is also the single
owner of **placement**: for every allocation site it records the scope the value is built in, and for every call
the hidden scope arguments it passes. Allocation sites are:

- constructor calls and enum cases;
- array literals and `Array<T>(n)`;
- `$` and text joins;
- promotions (E12c);
- closures (D16d);
- spawn environments;
- `try` defaults.

Lowering and the evaluator read placement and never decide it. In the C compiler, "where does this value land" is
answered in about eight places with different fallbacks, and the review on 2026-10-09 traced six use-after-frees
and leaks to those places disagreeing.

**Why a separate pass is sound:**

1. **No typing decision depends on a scope.** `TypeId`s carry no scope tags, and no lookup, method selection or
   generic binding consults one. Everything §8 decides is a diagnostic, a placement or a hidden argument. S4d's copy,
   which the C compiler decides from a §8 summary (`calleeMayKeepArg`), is decided by `check` from types (section
   1.6.1; section 7 lists the disagreement), and the hidden arguments' order is the callee's type's
   (`ScopeVarsOf`), so nothing `check` builds waits for `scope`.
2. **Its inputs exist once checking ends:** types, the block structure, and whether each value is a temporary or
   existing storage. The typed tree records all three.
3. **Interprocedural rules have a precise order.** O10b's obligations, O23a's derived scopes and O13c's result
   bindings are summaries. They are computed bottom-up over the call graph's strongly connected components (Tarjan),
   with a fixed point inside each component. This is what the C compiler's `ensureBodyChecked` and
   `dischargeLateObligations` approximate during checking, and why a callee declared later was once missed (O10c).

**Not a region solver over MIR**, as rustc's borrow check is: §8 is stated over source constructs, and its
diagnostics name them ("make it where 'st' lives"). Restating §8 as constraint solving would be a semantics project,
not a port, so the pass follows §8 rule by rule. The pass runs on every body that checked without errors.

**What of §8.8 runs where.** Section 8.8 (`own`, `take`, loans, O30-O42) was removed from the language on 2026-10-18
(round 3 of `docs/memory.md`); freeing early is the compiler's (O8d), not yet built. What is left of it is M19g, a
Vec's view used after the Vec may have grown, and that is `views` (section 1.6.1's summaries): its own pass after
`check`, errors only, over the tree - summaries over the call graph's components, then a forward dataflow walk of each
body, the stage 0 analysis (`settleVecViews`) rebuilt on the typed core. Early freeing, when it comes, needs a
liveness of its own over MIR, where releases, deferred code, joins and try exits are explicit.

### 1.8 MIR, lowering and evaluation (`mir`, `lower`, `eval`)

- **MIR.** Each function instance is a control-flow graph of basic blocks over typed locals and places. It is not
  SSA, matching rustc's MIR. LLVM's mem2reg and SROA clean up after it.
  - Statements: assign, allocate-in-scope, scope open and close, check.
  - Terminators: goto, branch, switch, return, error return, and the exits (`done`, `fail`, `abort`, failed check).
  - Made explicit in one place: evaluation order (S4), temporaries, block scopes (O2), deferred code duplicated per
    exit (S19), joins on every way out (P1b), catch dispatch (R9), and checked operations (E15a).
  - A verifier checks every MIR function (types, initialization, scope nesting) in tests.
- **Ownership events are placed by `lower`**, from what the tree states (section 1.6.1): every move is a `Take`, every
  owner or destructor-bearing temporary that no slot receives has a site. Lowering emits releases into own slots by type
  (O30, O35), destructor registration where a value is built (O16), and holds where a later operand may leave - which
  depends on the build mode: a test build holds across a guaranteed check too (F3). O39-O41's liveness check then runs
  over the MIR (section 1.7).
- **Synthesized helpers are MIR functions** made by `lower`: per-type `$` rendering, deep `==`, the supplied `Hash`,
  zero values (D13c) and constructor assembly. Emission and the evaluator therefore run the same code. comptime.c
  carries a second, 600-line rendering implementation that had to be kept in step with codegen. `Equal` and `Hash`
  helpers are pure data and call nothing (check elaborates a declared `Eq` or `Hash` into calls). Rendering helpers
  are the only helpers that call program code, a `Str`, by a fixed rule: the receiver's scope variables get the `Inert`
  scope `$` opens for the call, and `Str`'s result scope is the text builder's; `scope` checks each `Str` body for
  noBuild (`MayBuildInto`, E11c's error) as a property of the body, and the MIR verifier holds lowering to the rule.
- **One body per global.** Each global's initializer is lowered on its own; a module's initialization runs them in
  B5a's order, a summary computed once the module's bodies are checked, its cycle error per global.
- **The evaluator is an abstract machine over MIR**, on Miri's model:
  - **Allocations** have ids and bytes laid out exactly as the target lays them out, using the same layout code, and
    a pointer map per allocation. A reference is an (allocation, offset) pair, bounds-checked on every access.
    Undefined behaviour stops `-i` with `FILE:LINE`.
  - **Scopes are arenas** freed when they close, using §8's placement, and destructors run then.
  - **Floats are held as bits**, so E33a's NaN rules are exact.
  - **Budgets.** K1's step and memory budgets apply to compile-time evaluation.
  - **libm** is called through the floats' methods in the prelude (`std/prelude/number.olang`), which are X8's libm itself. A program's externs go through a dynamic call
    (section 7, S3).
- **Evaluation serves:**
  - constants and conditions (S8a, S8b, B9c), during checking;
  - zero values (D13c) and literal constructors (T29d), once the program has checked, before anything reads them;
  - K2 baking and S18c asserts, after the scope pass;
  - `-i`.

  Evaluation during checking lowers its functions without placement, frees everything at the end of the request,
  and keeps those MIR functions in a cache of their own, apart from the MIR lowered with the plan. A debug mode
  evaluates a body both ways and requires the same values: the plan's invariant (section 1.6.1) made testable.
- **Decisions are kept under keys**, never written onto the tree: S18c's asserts by (`BodyId`, the assert's span), K2's
  baked globals by global, T29d's literal constructors by (`BodyId`, `SiteId`), D13c's zero values by type - each type's
  decided once after checking (all zero bits, the constructor's call, or none, which is an error at the declaration),
  so check need not evaluate a constructor at every declaration.
- **What this replaces.** comptime.c is a tree walker with 496-byte boxed values that are never freed: it needs 3 GB
  to run a parser over 30 KB. `-i`'s planned second stage (compact values, freeing that mirrors scopes,
  destructors) comes with the port.
- **Agreement by construction.** Generated code and the evaluator run the same MIR. A review on 2026-10-09 found 12
  disagreements between comptime.c and codegen.c.

### 1.8.1 MIR (`mir`): the contract

`lower` makes a MIR function of each typed body (and of each helper, adapter and module initialization); `eval`,
`emit` and O39-O41's liveness check read nothing else. `compiler/mir.olang` defines it, with a verifier and a textual
dump. Written on 2026-10-12, for review before `lower`, `eval` and `emit` are built against it. rustc's MIR is the
model: a control-flow graph of basic blocks over typed locals and places, not SSA.

**Functions.** A function's key (`FnKey`) is what it is: a typed body (`Body`), an adapter making an instance's `Call`
a function value (`Adapter`, E31), a helper for a type (`Helper(kind, t)`), or a module's initialization (`Init`), which
runs the module's globals' bodies in B5a's order. Two MIR functions are one exactly when their keys are equal. A function
holds its type (the receiver first, with its scopes, as `types.ScopeVarsOf` gives them), its file and span, and:
- **Locals.** The typed body's locals keep their numbering - MIR local `i` is typed local `i` for every `i` below the
  body's local count - and lowering's temporaries follow. Each has a name, span, type, kind (`Param`, `Capture`, `Var`,
  `Temp`) and a **home**: `Frame` (the function's stack frame, live from the entry), or an arena - a scope the function
  opens or one of its scope variables - where the plan puts it (O26a, T7c's storage over 64 KB), whose storage is made by
  `Live` and ended by `Dead`. Parameters and captures are listed in order and hold their values at the entry.
- **Scope variables** (`Vars`): the ones a call passes first - `ScopeVarsOf(ty)` in order (parameter scopes, the result
  scope, a constructor's instance, a destructor's closing scope), or a helper's fixed list - then the scopes of the
  captures, carried in the environment (D16c).
- **Scopes it opens** (`Scopes`), each with its kind, parent, the typed block it stands for and, for a join, the errors
  its wait can fail with: `Frame` (block 0, opened first, closed by every return, O2), `Block`, `Loop` (opened and closed
  every turn, O2b), `Join` (P1b), `Region` (an own object's, O30), `Inert` (live, nothing built in it: a `Str`'s
  receiver, O12/E11c) and `Builder` (a text builder with its scratch arena, E11a/E11b).
- **Blocks.** Block 0 is the entry. Each holds statements, run in order, and one terminator.
- **Flat tables** - projections, operand lists, scope lists, places, calls, switch cases, tasks and their clauses,
  error items, constants - which statements index by `Range`. A function holds no reference into a tree or another
  function, so it is reclaimed whole when the scope it is built in closes (section 3.1).

**Places and values.** A place is a base - a local, or a global by module and name - and projections: `Field(i)`,
`Index(local)` (rustc's: an index is a local's value, computed before), `At(i)` (a constant index), `Deref` and
`Payload(tag)` (the case's record, the case tested before). An operand is a copy of a place, a constant's bits
(numbers, `Bool`, `Char`, `null` and an aggregate's zero bits as zero), or read-only constant data (`Data`, T25d: one
instance per written position, file and span, so two evaluations are the same storage). An rvalue computes one value from
operands already computed:

| rvalue | meaning |
|---|---|
| `Use(x)` | the operand |
| `Ref(p, ty)` | a reference to the place itself (E12c) |
| `Take(p)` | the owner p holds, moved out, null left (E34) |
| `Prim(op, ty, args)` | `typed.PrimOp`, unchecked (E6c); the checks `InRange`/`InRangeIncl` are refused - they are tests and branches here |
| `Overflows(op, ty, args)` | whether op's true result does not fit ty (E15a's OVERFLOW): integer `+ - *`, unary `-`, MIN / -1, a narrowing or float-to-integer conversion |
| `Tag(p)` | the case an enum value holds, an `I64` |
| `Aggregate(ty, tag, args)` | a struct (a constructor's assembly), a tuple, a record, an enum case, a fixed array |
| `New(s, x, ty)` | x given storage in scope s, a reference to it (E12c, O16, O30) |
| `NewArray(s, ty, n, fill)` | an array value whose storage is n elements in s, each fill (D14, E19, E27); n checked before (D14b) |
| `Slice(p, lo, hi, ty)` | a reference to p's elements lo up to hi (E16a); bounds checked before (E16b) |
| `Closure(code, ty, s, args)` | a function value: code, and an environment in s holding args (D16c) or an adapter's instance (E31); a named function's has none. Where ty's scopes differ from code's own, the value adapts them (T22a) |
| `Recode(code, from, to)` | an error code under one list as the same error under another (R6); one `to` does not name becomes its default error (R17) |
| `Text(b, into, ty)` | what builder b holds, as text built in `into` (E11b) |

A scope reference (`ScopeRef`) is one this function opens, one of its scope variables, the program's (O1b), the frame
(storage on the stack, until the return: a temporary nothing keeps, an environment no callee keeps, D16c), or the region
of the object a local's reference names (`RegionOf`, O32/O33).

**Statements.** `Assign(p, v)`: the place's projections (their index locals) are computed before, then v, then the store
(S4). `Live(l)`/`Dead(l)`: l's storage made (in its home's arena) or ended. `Open(s)`/`Close(s)`: s opens inside the
scope opened last that is still open, its `Parent`; it closes with its owners released and its destructors run, last
registered first (O15, O35), its storage reclaimed. `Give(s)`: region s now belongs to the owner just stored (O30) and
is no longer this function's to close. `RegisterDtor(s, t, x)`: x's instance destructed when s closes (O16).
`RegisterOwner(s, p)`: the own slot p released when s closes if it still holds one - an owner local (O35), a hold
(F3), a result in flight (N3). `Release(p)`: the object the own slot p holds, if any, released and p left null (O35);
a store into an own slot is preceded by one where the slot held one. `Write(b, how, x)`: x appended to builder b, as
E11a writes it (`Bytes`, `Char`, `Int`, `Uint`, `Float`, `Bool`). `CopyElems(dst, src, n)`: n elements copied (T11b,
T7c). `Spawn(j, task)`: a task started in join j (P1).

**Terminators.** `Goto`; `Branch(c, yes, no)` on a `Bool`; `Switch(x, cases, otherwise)` on an integer, each value
distinct; `Call(c)`; `Return(x)`, with every scope closed; `Raise(code)`, the function failing with code under its own
error list (R6), every scope closed; `Wait(j, ok, code, failed)`; and `Exit(kind, msg)`.

- **Calls.** A call names its callee - a MIR function by key, an extern (X1), or a function value - its arguments (one
  per parameter, the receiver first, defaults filled in, D8a), the scopes it passes (`PassedCount` of them: the
  callee's `ScopeVarsOf`, a helper's fixed list, none for an extern), where its result is stored (or dropped), the block
  it continues at, and, for a fallible callee, the local its error code is put in - under the callee's own list - and
  the block that dispatches it. An error edge exists exactly where the callee can fail.
- **Tasks.** A `Spawn` names its callee, arguments, scopes, the places its results are stored into on its thread (P1g;
  their addresses taken at the spawn) and its clauses (P4a: the errors each takes and a handler, a function value run
  on the task's thread whose result is the targets' value; none for `catch E { }`). An error no clause takes is
  re-encoded under the join's list and carried to the join (P4b). Each scope a task is handed stands in by one of its
  own, folded into it at the join (P2): that is the meaning of `Spawn`, made by `emit` and `eval`, and nothing in the
  MIR names a stand-in.
- **`Wait(j, ok, code, failed)`** waits for join j's tasks (P1b) and continues at ok, or - where a task let an error
  through - at failed with code holding the earliest-spawned's error under the join's list (P4b). `failed` is absent
  exactly where none of the join's tasks can fail.
- **`Exit(kind, msg)`** ends the test or the process: `Done`, `Fail` (S16, S16a), `Abort`, `Unreachable` (S16c, S16d,
  and a value match no clause selects, S12b), or a failed check printing `FILE:LINE: ` and its text (S18a): `Assert`
  (with S17's message), `SliceBounds`, `ArrayLength`, `As`, `FixedLength`. No deferred code runs; the scopes still open
  are the runtime's to unwind in a test (S19c, P1d).

**What lowering makes explicit, once.**
- **Order of evaluation** (S4, E11b, P1g, S4c): statements are the order. A call's or a task's operands are values
  computed by the statements before it, left to right; a compound assignment's place is computed once; a join's
  operands are all evaluated before any piece is rendered.
- **Checks** (E15a, E16b, D14b, E32, T7d, S18a): a check is a test (`Prim` compares, `Len`, `Overflows`, `x - x == 0`
  for a float result's finiteness) and a branch - to an `Exit` for a guaranteed check, to the try's dispatch for a
  checked one, which goes on with `BuiltinError`'s code (R20). There is no check statement, and nothing is checked that
  MIR does not show.
- **Errors** (R6-R21): a call's error edge gets the code under the callee's list; dispatch is branches and switches
  over it; a propagated error is `Recode`d under this function's list and `Raise`d after the scopes on the way out are
  closed; a catch default is a store into the try's result slot on its own path.
- **The exit sequence** - every way out of a block (its end, `break`, `continue`, `return`, an error leaving) runs, for
  each block it leaves, innermost first: the block's deferred code, copied onto that exit (S19, last registered first,
  only what was reached); then, for a join, its `Wait` (P1b; a failure replaces the way out, P4b, unless an error is
  already leaving); then its `Close` (O15, O35). A `return` computes its value into a local first (a returned array
  copied first where deferred code is pending, S19), and an owned result in flight is held (`RegisterOwner` of its slot,
  N3) until the function returns. `done`, `fail`, `abort`, `unreachable` and a failed check are `Exit`s and run none
  of it.
- **Ownership events** (section 1.6.1): every move is a `Take`; a store into an own slot is preceded by its `Release`;
  an owner local, a hold (F3: an owner held across a later operand that can leave - in a test build a guaranteed check
  too) and a result in flight are registered where they are made; every destructor-bearing instance is registered in
  the scope it is built in, once per constructor call (O16), and an owner no slot receives where it is built (O30); an
  own object is built in a `Region` opened for it and given to its slot (`Give`), or closed where it is never stored.
- **Placement**: every allocation (`New`, `NewArray`, `Closure` with an environment, `Text`, a local's home, a builder)
  names its scope, from the plan's site (section 1.6.1) or one of lowering's own fixed rules (a builder's scratch,
  `Str`'s `Inert` scope, hold slots, a task's stand-ins, a try default's slot).

**Helpers.** `lower` makes them as MIR functions, so `emit` and `eval` run the same code. Their ABI is fixed by their
kind, not by `ScopeVarsOf`: `Render`, `fn(x T&, depth I64)`, writes `$x` into the builder that is its one passed scope (E11a,
calling a `Str` through `Inert`, section 1.8), `depth` the references followed to reach it - at 8 a reference is
written `...`; `Equal`, `fn(a T&, b T&) Bool`, and `Hash`, `fn(x T&) I64`, pass no
scope and call nothing; `Zero`, `fn() T`, a type's zero value (D13c), passes its result scope where the value holds
references. A constructor's assembly is an `Aggregate` in the constructor's own function, not a helper.

**Keys.** A decision about a node is kept under a key (`Key`), never written onto the tree or the MIR: an assert S18c
decided (`BodyId`, span), a baked global K2 (module, name), a literal's constructor T29d (`BodyId`, `SiteId`), a type's
zero value D13c (type). `lower` reads them: a decided assert is no test, a baked global has no initializer in `Init`,
a literal's constructor is its value.

**How each typed node lowers.**

| typed | MIR |
|---|---|
| `Lit`, `Data` | `Const`, `Data` |
| `Read(p)` | `Use(Copy(p))`; a read of an own slot that borrows is a copy of its reference (the loan is the liveness check's) |
| `Borrow`, `Take`, `Promote` | `Ref`; `Take`; `New` at the site's scope (or a `Frame` local and `Ref`), registered (O16, O30) |
| `Call` | the arguments into temporaries left to right, a `Call` terminator, its error edge dispatched; `Zero` per `Key.Zero` |
| `Make`, `Collect` | `Aggregate`, or `NewArray` and stores; a fill's length checked (D14b); `Collect` a loop of stores growing the array |
| `Prim(op, check)` | `Prim`; under `Try` or `Abort`, the operation's test and a branch before it |
| `Slice` | the bounds test (E16b, E32b's exact length), then `Slice` |
| `Cond`, `Match`, `Seq` | branches into one slot; a match's tests over `Tag`/`Prim`, its bindings stores; `Seq`'s statements, then its value |
| `Try` | the operand's error edges (and its checks') to the clauses: tests on the code, each clause's block, its default into the slot |
| `Fn` | `Closure`: no environment for `Named`, captures for `Lambda`, the instance for `Adapter` |
| `Text` | operands into temporaries, a `Builder` opened, `Write`s and `Render` calls, `Text`, the builder closed |
| `Away` | the default's expression, lowered with its own file |
| places `Local`, `Global`, `Field`, `Payload` | the base and `Field`/`Payload` projections; a checked payload (`as`) its `Tag` test first |
| `Deref`, `Elem`, `Temp`, `Target` | `Deref`; `Index`/`At` after the bounds test where checked; a temporary local; the assignment's held place |
| `Let`, `Assign`, `Eval` | a store into the local (with `Live` for an arena home); the place, the value, the store (S4); the value dropped |
| `If`, `Loop`, `Jump` | `Branch`es; the body as a `Loop` scope each turn, the post clause, back to the test; the exit sequence then `Goto` |
| `Return`, `Raise` | the value into a local, the exit sequence, `Return`; `Raise` of the error's code under the function's list |
| `Exit`, `Assert` | `Exit`; the test, its message computed only on the failing path, an `Exit(Assert)` there |
| `Block`, `Defer` | `Open`/`Close` around it; the deferred block copied onto every exit after its registration |
| `Join`, `Spawn`, `Yield` | a `Join` scope, `Wait` on every way out; `Spawn` with the task's places and clauses; a store into the `Collect`'s array |

**What `emit` relies on.** Every local's type and home; that a `Frame` local is an `alloca` in the entry block (O2c);
that a scope this function opens is opened and closed in nesting order on every path, and every join waited for before
it closes, so a scope's header is an entry-block slot and closing is one call; that a call passes exactly
`PassedCount` scopes, in order; the error-union ABI (R6) - a fallible function returns `{ i32, T }` and a code is
`(type's position from 1) << 16 | word` under its own list (`ErrorCode`); that every check is already a branch, so it
emits no check of its own; that a `Spawn` is the whole task (env, stand-ins, trampoline, clause dispatch are its to
make); TBAA (T36), DWARF and target attributes from the types and spans.

**What `eval` relies on.** The same: it executes statements and terminators as written, with allocations in arenas
named by `ScopeRef` (freed at `Close`, destructors and owners run then), floats as bits, and a step budget; it never
decides order, placement or checks. `Exit` and a failed check stop the request (K1) or `-i` with the same text; an
extern's call goes through the dynamic call (X1, section 7). Tasks run in sequence at their `Wait`, in spawn order
(K1).

**What the liveness check (O39-O41) relies on.** Every release is explicit (a `Release`, or the `Close` of a scope
holding a registration), every move is a `Take`, every loan starts at a read of an own slot into a local and lives to
that local's last use, and every call's effects come from its callee's key (`scope`'s summaries). Nothing frees memory
behind the MIR's back.

**The verifier** (`Fn.Verify`) holds a function to this contract and is run on everything `lower` makes in tests:
- **Shape**: every id and range in bounds, every block terminated, every block reachable from the entry.
- **Types**: each store fits its place (one representation, T29; `null` into a reference or function value; a
  reference into one of the same referent with no permission it lacks, T25b; never a borrow into an own slot); each
  rvalue's operands and result; each call's arguments, scopes and result against its callee's type; an error edge
  exactly where the callee can fail; a `Raise` only in a function that can fail; a `Return`'s value; switch values
  distinct; `Write`s by kind; `RegisterDtor` only for a type with a destructor.
- **Flow**, to a fixed point over the CFG: every local initialized on every path before it is read (a call's result
  only on its ok edge, its error code only on its error edge, a wait's code only on its failed edge); an arena local
  stored into only after its `Live`; the open scopes the same on every path into a block, every `Open` in its parent,
  every `Close` and `Give` of the scope opened last, none open at a `Return` or `Raise`; nothing built in a scope that
  is not open or is inert; no join closed with tasks not waited for.

`Fn.Dump` writes a function as text (the stage dump of section 4): its header, locals, scopes and blocks, a statement a
line. Types print as their canonical text, which only `generic.Program.ParseCanon` reads back, so there is no parser:
golden dumps in `lower`'s tests stand in for round trips.

### 1.9 LLVM emission (`emit`, `dwarf`)

- **The route is LLVM IR as text**, as now. A bitcode writer is a large component tied to LLVM's version. The LLVM C
  API is made of opaque pointers, and olang's externs take only numbers and arrays (X2).
- **One `.ll` file per module**, streamed through `io.Writer`. Each function's MIR is built inside a loop body's
  scope, so it is reclaimed once that function is written.
- **Properties by construction:**
  - every local is an `alloca` in the entry block, as O2c requires (`make checkir` stays);
  - each function has a single return block;
  - TBAA tags follow T36;
  - target attributes come from B12, with `sanitize_thread` written directly under `-r` instead of rewriting the IR
    text afterwards;
  - DWARF is written under `-d`.
- **Globals.** Baked data comes from the evaluator (K2b): private globals for referents, and `available_externally`
  copies for importers.
- **Parallel emission.** Emission reads only tables that no longer change, so modules can be emitted by parallel
  tasks once that is measured to pay. The first version is sequential.
- **Built (M9 round 3, 2026-10-22).** Emission makes items (a function, a global, constant data, a declaration), each
  homed in its module, with the instances (the root's `.inst`), shared (copied where named: `linkonce_odr` helpers and
  thunks, declarations) or local (copied and renumbered per object: constants, lambdas, task trampolines, tests). An
  object is its module's items sorted by symbol, what they name of the shared and local items, a declaration for each
  item another object defines, and the named types used, so its text depends only on what it holds; the driver builds
  one object per module (`emit.Objects`) and an edit recompiles only the objects whose IR changed. The error return
  trace (S18d) is read off MIR's structure at each `Raise`, as the evaluator reads it.
- **Built (M9 round 4, 2026-10-22).** TBAA (T36) from each place's path and type, stage 0's tree; the runtime's
  declarations and inline bodies read from its text (`runtime.Decls`), each an item copied where named, so a module's
  own optimization folds an empty scope's close; DWARF under `-debug` (subprograms, a line per statement, parameters
  and locals in words), its metadata renumbered per object; S18d's trace cleared where a clause takes an error
  (`mir.Fn.Taken`). At -O3 the root's object holds the instances again (item 3 of section 3.4).

### 1.10 The runtime (`std/runtime/*.ll`) - built in C (P0)

- **What it is.** The runtime is LLVM IR in three files beside the standard library: `runtime.ll` (about 3,300
  lines: the allocator and chunk pool, workers, unwinding, process entry, the argv, env, stat and spawn helpers,
  number formatting and the text builder), `san.ll` (the scope sanitizer, B2f, in a `-s` build only) and
  `dyncall.ll` (S3's dynamic call over libffi, only in a program that declares it). The C compiler reads them
  (`bootstrap/runtime.c`); stage 1 will read the same files.
- **Filling in.** A file is written for every target and mode, and filled in for one build:
  - `@@NAME@@` is one of the target's C-library facts (struct stat's size and offsets, a jmp_buf's size, libffi's
    ABI number ...), from a per-architecture table. The table's row for the machine the compiler runs on is checked
    against its own headers when it is compiled, and so are the kernel constants the IR writes as numbers.
  - `; @if COND` / `; @else` / `; @end` keep one of two runs of lines. COND is `san`, an architecture, or either
    negated with `!`; they do not nest.
  - Comment lines are copied as written, so a file can explain its placeholders.
  - The target's attributes and `-r`'s `sanitize_thread` are added by the same rewrite as a module's IR, so they are
    not placeholders. `@__olang_pow10m` is held to the evaluator's own table each time the file is read.
- **How it is built.** The filled-in IR is compiled once per build configuration into
  `build/olang_runtime.<hash>[.race][.debug][.san].o`, named by a hash of the IR and its clang flags, and linked
  once into each program (`olang_dyncall.<hash>.o` beside it where needed). An object with that name is current by
  construction, so another program, a later build or the next `-t` child reuses it. It is written under a
  temporary name and renamed into place.
- **What a module carries instead.** Its types, its globals as `external` and its functions as declarations, derived
  from the filled-in definitions; and every body marked `alwaysinline` or `inlinehint` (the allocator's fast path, a
  scope's close, the closure and text-builder fast paths: six bodies, about 160 lines) as `available_externally`.
  The module's own optimization inlines those where they are called, as it did when every module carried the whole
  runtime, and emits no copy. A module's object hash includes the runtime's text, so an edit to `std/runtime`
  rebuilds every object.
- **Inlining.** Without the marked bodies, `-O3` code lost up to 7x (a List walk, which then never vectorized),
  because the per-module optimization saw only calls. With them, every benchmark measures equal to the old build or
  better (HISTORY.md, "The runtime is `std/runtime/*.ll`"). Under LTO the link inlines the rest where it pays. Under
  `-d` and `-r` the marked bodies are still inlined (AlwaysInliner) and the rest are calls.
- **It stays IR.** It needs pointers, threads and `setjmp`, none of which olang expresses. Number formatting could
  later become prelude olang; that is not part of the port.

### 1.11 Driver (`olang`, `build`, `target`)

- **The command line is stage 0's** (B1, words since 2026-10-17): the modes `build`, `compile`, `test`, `interpret`,
  `format`, `explain`, `help`, and a file built and run (B3g); the options `-output`, `-debug`, `-race`, `-sanitize`,
  `-target`, `-define`, `-update`, `-check`, each checked against the modes it applies to by one table (an option, its
  value's name, its modes, its help line) that both the parsing and `help` read. `format` runs the formatter, which is
  already olang (`compiler/fmt.olang`): stage 1 calls it as a module rather than building and running it as stage 0
  does.
- **What a build must guarantee is unchanged**: never reusing a stale object (B3), whether stale by source, `-D`
  values (B10b), target (B12b) or compiler; and injective symbols (B3b). How it is guaranteed changes: objects are
  addressed by the content they were built from (section 3.4).
- **Process spawning.** Every external program runs through `os.Exec`: clang, git, the test binaries, and the
  compiler re-running itself for `test`. None runs through a shell.
- **Built (M10, 2026-10-17)**, against an interface, so everything a build does is real before the passes that make
  IR exist:
  - `build.olang`: a `Frontend` trait (`Analyze` fills a `Program` - each object's IR by module identity and what it
    holds: a module, the root with `main` or the test harness, or the instances - plus the runtime's and the dynamic
    call's IR; `Interpret` runs `interpret`), the `Config` of a build, SHA-256 in olang, objects named
    `IDENTITY.HASH[.main|.test|.inst][.race][.debug][.san].o` (HASH 16 hex digits of the IR, the clang flags and
    clang's version), compiled side by side by `RunAll` (workers over a channel, one per core), each written to a
    temporary and renamed into place, the link skipped when its stamp (`BIN.link`: a hash of every argument and
    clang's version, with the binary's size and time) says the binary is the one it would make, and the modes
    (`Compile`, `BuildProgram`, `TestFile`, `TestFiles`, `Interpret`) over any front end;
  - `target.olang`: B12's resolution (clang asked for its attributes, B12a's capability probe, B12c's features taken
    out, without clang for `interpret`) and the target's build constants;
  - `olang.olang`: the command line in words, as stage 0 reads it (B1: the modes `build compile test interpret format
    explain help`, a bare `FILE.olang` built and run, the options `-output -debug -race -sanitize -target -define
    -update -check` each for its modes, `help` and `help MODE` written as stage 0 writes them), the built-in constants,
    and the front end so far - load and names (M4), which report what they find and then say code generation is still
    to come (M5b-M9). `format` runs `build/compiler_tools_fmt` beside the driver (stage 0 builds it into its cache,
    which the driver cannot until it makes code).
  Proven so: a test building a stub front end's program with real clang (a second build compiles and links nothing;
  a changed module recompiles only it; `-define` and the target rebuild what they change; a binary that is gone or
  changed is linked again), `TestFiles` with a stand-in compiler, and `compiler/tools/drvdiff.olang` (`make drvdiff`, in
  `make verify`): 72 command lines whose outcome is decided before code generation - every mistake, `help`, `explain`,
  files that cannot be built - their standard output, standard error and status each equal to stage 0's.
  Waiting for the back end: the real `Analyze` (M5b-M9), `interpret` (M8), checks' build scenarios and the build-time
  measurements of section 3.3 (M11). B3's text in SPEC.md keeps stage 0's timestamps until stage 1 replaces it.
- **The pipeline behind it (M10, 2026-10-21).** `Passes.Analyze` loads, checks with evaluation's decisions
  (`interp.Analyze`, `DecideAsserts`), runs the scope pass for its local homes, lowers and emits; emission writes the
  whole program as one module, so every build is one object for the program (the root's, `.main` or `.test`) beside
  the runtime's - `compile` too, which writes the program its file is the root of. (Since M9 round 3: one object per
  module, `compile` writing its module's; a clean -debug build of the compiler 38 s -> 32 s, an edit of one module 38 s
  -> 22 s, a clean -O3 build ~8 -> 4 minutes, its LTO link 3.3 of them.) `runtime.olang` fills in
  `std/runtime/*.ll` as stage 0 does (identical text, checked), and derives the dynamic call's declarations. Running a
  file is `os.ExecInPlace` (the runtime's `__olang_exec`: the program in the driver's place, its first word the file as
  written); `format` calls `compiler/fmt.olang` (`Files`, with the oracle loading and `unparse.olang` moved under
  `compiler/`). What emission or lowering does not do yet is said (`Unbuildable`) and nothing is built.
  Placement, for now: every site in the program's scope (the stand-in) and every declared aggregate local there too,
  a local the scope pass homes in a scope variable there (O26a); the pass's errors are not reported (on `compiler/` it
  still refuses 51 things stage 0 accepts, and its own site placement builds some returned results in a closed
  frame). Under that, the port builds itself: `compiler_olang build -debug compiler/olang.olang` (stage 1, 22 s) builds
  stage 2 (39 s, 2.1 GB) and stage 2 stage 3, the three binaries byte for byte equal and the IR the stage-0-built port
  writes; stage 1 passes the tests of every `compiler/` module. At -O3 the same: stage 1 (8 minutes, nearly all of
  it LTO over one 43 MB module) builds stage 2 byte for byte equal to itself. `make drvdiff` compares 11 whole builds
  with stage 0's beside the 72 command lines.

## 2. The thirteen grammar points

Each point gets decision (a), handled by the parser with bounded lookahead and no language change, or (b), a
language change. All thirteen are (a). Point 7 rests on L18b, a language rule already decided, which is in `SPEC.md`
on the checker-batch-3 branch. Counts are from the 518 `.olang` files of the
repository (25.7k lines of corpus and std). "study2 uses" counts how often study2's parser took each peek over the
1 MB corpus.

1. **Type-name knowledge: (a). Defer to the resolver everywhere the syntax allows, and keep a declared-name oracle
   only for `Name<` in expression position.**
   - **`T[...]` is deferred, Go-style.** `Name[ ... ]` parses as one index-or-literal node; the resolver makes it an
     array literal when `Name` is a type. A comprehension inside one is valid only for a literal. `Name&[` is always
     a literal, since no expression begins with `[`.
   - **`x is T` is deferred.** After `is` or `is not`, the operand is a type when it begins with `mut` or `fn`, or
     carries type arguments or a marker. Otherwise a bare path stays undecided for the resolver.
   - **`Name<` uses the oracle.** It cannot be deferred: `a < b > (c)` is a legal comparison chain (E30) with the
     same tokens as a generic constructor call.
     - The oracle holds the type and error names declared in the module (in any branch), in the prelude and in
       imported modules (all from the pre-scan, section 1.4), plus the current item's type variables - its list's and
       those its receiver introduces (G3, QW) - which also make `match T` take types (G13).
     - It is exact: D2 and D3a forbid a name being both a type and a value in one module.
     - Sites: 585 `Name<...>(` and 6 `Name<...>[`. study2 needed a type name 3,654 times.
   - Question 1 (section 8) offers the alternative: making `Name<` context-free.
2. **Statement-start declarations: (a), two tokens.** A statement is a declaration when an identifier is followed by
   an identifier, `mut`, `fn`, `enum`, `struct` or `:=` (a type variable is written bare, QW, so a type never begins
   with `<`). Anything else starts an expression statement. study2 uses: 6,374.
3. **`a, b =` lists: (a), a cover grammar.** The parser reads an expression list, and the token after it decides:
   - `=` makes a parallel assignment (S4c);
   - `:=` makes a destructuring or a list of declarations (D8c, D12b);
   - a type or `mut` makes a typed declaration (D12b);
   - `mut` followed by the end of the statement, in a constructor, makes bare fields (C2).

   Where names are required, the expressions are then checked to be names, as JavaScript parsers do for
   destructuring. No extra lookahead is needed. study2 uses: 65.
4. **`for k, v in`: (a), two tokens.** After `for`, the parser branches on what follows. No other form of `for`
   begins with an identifier and a comma. study2 used three tokens; two suffice. Sites: 32 key/value loops.
   - `{` makes the forever loop.
   - An identifier then `in` makes a for-in. D3 and D3a already settle the clash with membership.
   - An identifier then `,` makes a key/value for-in.
   - An identifier then `:=`, an identifier, or `mut` makes the three-clause form.
   - Anything else is a condition.
5. **Constructor bare fields: (a), one token at each step.** Inside a constructor body:
   - an identifier followed by the end of the statement is a pun;
   - an identifier followed by `mut` reads `mut`, after which an end makes a mutable pun and a type makes a
     declaration;
   - lists follow point 3.

   study2 uses: 448.
6. **`f&x(` scope arguments: (a), two tokens, using adjacency flags.** In postfix position, an `&` is a scope
   argument (E25) when all three hold:
   - the `&` has no space before it;
   - it is followed by an identifier or `return` with no space before it;
   - that is followed by `(`.

   Otherwise `&` is bitwise and. Sites: 26 (17 `&x(`, 9 `&return(`).
7. **`if` at a line start: (a), one token plus the line-break flag, given L18b.** Outside brackets, an `if` that is
   first on its line never continues a conditional expression. This removes the backtrack the C parser makes when no
   `else` follows.
8. **Text-join pieces: (a), two tokens at a string literal.**
   - A string literal followed by another string literal or `$` starts a join (E11b).
   - A string literal followed by anything else is a primary, so `"a b".Split(" ")` works.
   - `$` always starts a piece.
   - `$x ("y")` remains a call (E13b), and its diagnostic says to write `$(...)`.

   study2 uses: 2,994. Sites: 319 joins.
9. **Mixed type and constant arguments: (a), a cover grammar, decided by the resolver.** An argument is read
   according to how it begins:
   - `mut`, `fn`, `enum`, `struct` or `trait` begins a type;
   - a literal, `(`, `-`, `~` or `not` begins a constant expression;
   - a name begins a type path (with arguments and markers). If an operator other than `,` or `>` follows, the path
     continues as an expression (`Array<T, N + 1>`).

   Whether a bare path is a type or a constant (G20, G23) is the resolver's decision. Inside the list, `>` closes,
   and comparisons and shifts must be parenthesized (G21). study2 uses: 10.
10. **Splitting `>>`: (a).** In type-argument context, the parser splits `>>`, `>=` and `>>=` that close a list;
    the rest of the split token is read next, as Java, C++11 and Rust parsers do. `<<` is never split: since QW a
    type variable is listed after a function's name (`fn max<T>(a T, b T) T`) or introduced by a receiver's type
    arguments (`fn (l List<T>&) Push(x T)`), and written bare everywhere, so no list begins with a `<`.
11. **L20a's line-end statement ends: (a), using the line-break flag.** A statement ends after a `}`, a bare `&`, a
    pun's `mut`, or a type's closing `>` exactly when the next token has a line break before it, or is `}` or the end
    of the file. No lookahead is added, and `s Array<I32>(4)` stays an error at the `(`.
12. **Build-decided branches: (a), parse everything and hold the diagnostics.**
    - Every branch of a top-level `if` (B9) and of a local `if` (S8b) is parsed, bounded by its matching `}` from
      the brace table.
    - A branch's diagnostics are held on that branch. A branch that does not parse is kept as a span plus its held
      diagnostics.
    - When a branch is chosen, its diagnostics are reported. An untaken branch never reports anything.

    This is observably what B9 and S8b specify ("not parsed or checked beyond matching its braces"). The parser no
    longer depends on the types a branch declares, since the oracle sees every branch. The decision itself moves to
    `names` and `check`. This removes S8b's attempts, and the bookkeeping of parameters and locals that the C parser
    keeps for that evaluator.
13. **Patterns parsed as expressions: (a), a cover grammar converted right after parsing.** An alternative parses as
    an expression in which `_` is a primary, then converts syntactically to a `Pattern`:
    - a payload position becomes a binding (a name), `_`, a nested case pattern (call shape), or a value (a literal
      or `null`) (S13b, S13d);
    - the top-level path stays "case or value" for the resolver;
    - anything else is an error at the conversion.

    `match T` on an introduced type variable parses its cases as types (point 1).

## 3. Memory and performance

### 3.1 How the compiler allocates

The compiler is an ordinary olang program, so its memory lives in scopes. The design follows those scopes:

| what | built in | lives |
|---|---|---|
| source texts, name table, module table, declaration tables, interned types, typed bodies, instances, summaries, placement, diagnostics | the `Compilation`, made in `main`'s task | the whole run |
| tokens of one module, plus its line and brace tables | a block around that module's scan and parse | until its AST is built (spans outlive tokens) |
| one function's MIR and scratch | a loop body in `emit` | until that function's text is written |
| an evaluation request's heap | a block around the request | until its result is copied out (baked data, constants) |
| MIR lowered with no plan, for evaluation while checking | the `Compilation`, a cache apart from the planned MIR | the whole run |
| emitted IR | streamed to a file by `io.Writer` | never held whole |

Rules:

- A table that lives longer only ever holds ids or values. It never holds a reference into a shorter scope.
- A scratch list that would otherwise be made per call lives on a stack in the long-lived state and is flattened
  into an array when done.
- After the allocation fix in section 7 (S5), an AST node costs its own size, not O8a's SIMD size class. Before it,
  study2 measured 172-199 MB for 4.6 MB of source.

Estimated peak for a build of the compiler itself (about 1.2 MB of compiler source plus 0.6 MB of std):
150-250 MB. The C compiler frees nothing and peaks at 3.0 GB on `tests/runner.olang`. M5 measures the real figure.

### 3.2 `test`: one process per file

- **Isolation.** A file's build lives in its own process, as in B3a: a crash or a fatal error ends that file only,
  and memory is returned between files.
- **Mechanism.** olang has no `fork`, so `test a b c` re-runs the compiler (`os.ReadLink("/proc/self/exe")`) once
  per file through `os.Exec`, as `test`, the modifiers as written, and that one file. The child writes straight to the
  parent's output (`capture` false), so a file's results appear as its tests run, as B3a's do, and a test that
  crashes has already shown what it printed; captured and replayed, they would wait for the file's end. That costs
  about 50-100 ms of start-up per file against builds of seconds. `test` with one file builds it in the process itself.
  A child ended by a signal is said to have been (B3a). (Built, M10.)
- **One file at a time** at first, as B3a decided. Running several files at once becomes an internal change once
  stage 1's per-file memory is measured.

### 3.3 Build time

Measured on study2's front end (3,846 lines plus the prelude, std/io and std/os; built by the current C compiler, at
load average about 10):

| build | wall |
|---|---|
| C front end + IR emission only (clang faked) | 2.2 s (no-op: 1.4 s) |
| clean `-b` (`-O3` + full LTO) | 17-21 s |
| `-b` after touching `parse.olang` | 13.7 s: `parse`, its importer `resolve` and the root (which holds every instance) recompiled, then linked |
| `-b` with nothing changed | 10.7 s: the front end (1.4 s), the build-constants module, and the LTO link (~8 s) |
| clean `-b -d` | 10.7 s |
| `-b -d` after touching `parse.olang` | 6.3 s |

| clang step | time |
|---|---|
| `parse.ll` (900 KB), `-O3 -flto -c` | 1.9 s |
| `parse.ll`, `-O0` | 0.93 s |
| `parse.ll`, `-O0` with B2c's `-fast-isel=false` | 1.59 s |
| `front.main.ll` (instances, 1.1 MB) | 2.8 s |
| full LTO link | 7.9 s |
| ThinLTO link | 16.1 s |

The IR totals 7.5 MB, about 14 IR lines per source line (`parse.ll`: 20.8k lines for 1,557).

**Projection for the compiler** (about 30k lines, 25-30 MB of IR without runtime copies):

- clean release build: 1.5-2 minutes (about 60 s of per-module `-O3` spread over four jobs, plus about 40 s of
  single-threaded LTO link);
- clean `-d` build: 20-30 s;
- `-d` build after one module changes: about 5 s.

These are extrapolations from the measurements above, to be measured at M10.

### 3.4 What the driver should change

1. **Link the runtime once** (section 1.10). Done in C: each object is 65 KB of IR smaller (120 KB where it renders
   floats), the corpus's bitcode objects 6.8 MB -> 2.4 MB, a clean `-b` of the corpus 22% less CPU, a clean `-t` of
   the corpus and std 15% less (HISTORY.md).
2. **Objects are addressed by their content.** The front end checks the whole program on every build anyway, and
   emission is cheap next to clang. So every module's IR is emitted, and its object is named by a hash of that IR
   text, the clang flags and clang's version. An object is reused exactly when that file exists. This replaces B3's
   timestamp rules: it never reuses a stale object, including one built by an older compiler, and it never rebuilds
   an importer whose IR did not change (`resolve` above). B3's text is restated to match. (Built, M10.)
3. **Put instances in their own object** (`<root>.inst`), so editing one module no longer recompiles every instance
   with the root. With item 2, the instance object is rebuilt only when the instance set or an instance's code
   changes. (Built, M10: `UnitKind.Instances`.) Under `-debug` only since M9 round 4: at -O3 the root's code could
   not inline an instance before the link and the link did not recover it (`for x in v` over a Vec measured 2x slower),
   so there the root's object holds them, as stage 0's does - where it is one object: where objects are cut into
   parts (a program linking by ThinLTO), the instances have parts of their own again (M9 round 8, item 11).
4. **Skip the link when nothing it reads changed**: the binary records a hash of its inputs. A no-op build is then
   the front end alone: about 1.5 s here instead of 10.7 s. (Built, M10: the stamp `BIN.link`.)
5. **Run clang in parallel** over stale modules, bounded by the core count, using `join` and `spawn` over
   `os.Exec`. Today the runs are serial. (Built, M10: `RunAll`.)
6. **Use FastISel under `-d` unless the module's IR contains `bfloat`.** B2c's workaround for LLVM 18 costs 70% of
   `-O0` time, and the compiler uses no BF16. (Built, M10: `CompileFlags`.)
7. **LTO only where it pays.** Release builds keep full LTO; ThinLTO measured twice as slow to link at this size,
   so revisit it if the compiler's own link passes about 60 s. Development builds of the compiler use `-d`. Revisited
   (M9 round 4): the compiler's link had reached 172 s; a program of 8 MB of IR or more now links by ThinLTO with the
   plugin's cache - the clean -O3 self-build 213 s -> 108 s, an edit 3.5 min -> 43 s, the compiler as fast.
8. **Parse modules in parallel** (section 1.4). This is small but free.
9. **Objects that compile side by side and are shared** (M9 round 6, built): every body of every module but the root
   is emitted, so a module's object depends on the module and the mode alone and every program in one directory
   shares it; in a -debug build or one of 8 MB of IR or more, an object over 2 MB is cut into parts by its items'
   symbols' hashes; a stack slot stored once and loaded once is folded before clang reads it; the test harness is a
   table and one loop. tests/shared.olang's test build 223 s -> 55 s, the port-run verify 40.7 -> 28.4 minutes.

10. **Compile speed, measured** (M9 round 7, built): `OLANG_TIMES` reports each phase (`front` stops after the front
   end); functions whose code is the same written once (a generic struct's instance named by its layout, partition
   refinement, aliases for merged instances); a ThinLTO link imports functions of at most 70 instructions; compiles
   start heaviest first; MIR verified in test and -debug builds only. The clean -O3 self-build 238 -> 176 s of CPU,
   tests/shared.olang's test build 56 -> 41. Three quarters of a clean build is still the ThinLTO link, set by how much
   is inlined; a leaf edit is now mostly the front end re-lowering modules whose objects are cached (HISTORY.md).
11. **What a build makes again, made once** (M9 round 8, built): a module is keyed by its inputs - its text and its
   imports', the compiler, the build's modes, target and constants - and the IR an emission wrote for it is kept under
   the key (`build/rec`, B3i); a later build finding the key neither lowers nor emits the module, declaring what of it
   the other objects name and making the instances its record names. A test is named by its name, and where objects are
   cut the instances and a test build's tests have parts of their own, so an edit to the root leaves the parts the rest
   of the program imports from, and so their ThinLTO code, as they were. What clang says of the target is kept
   (B12b), and only test builds verify MIR. A leaf edit of the compiler 5.0 -> 3.5 s, an edit to a test of
   tests/shared.olang 10.5 -> 4.1 s; the clean build is clang's, and the link at its floor for -O3 (HISTORY.md).

Make targets: `make dev` (the compiler at `-d`, incremental) is the edit loop; `make` builds a release compiler
with the installed one; `make bootstrap` is section 5.

## 4. Testing

1. **Token diff.**
   - Tools: `bootstrap/oracle/tokdump.c`, moved from study2's `oracle/`, links `token.c`; `compiler/tools/dump.olang
     tokens` prints the new scanner's stream.
   - Format: `== FILE`, one `LINE TEXT` per token, with `;` for a statement end, then one `error RULE LINE:COL` per
     lexical error.
   - Normalization: drop the C tokenizer's statement end before `catch`.
   - Inputs: every `.olang` file of the repository (1,232 with the checks cases; corpus, std, checks cases and fixtures,
     fuzz, bench, and `compiler/testdata/lex`, the lexical edge cases) and study2's data (`big.olang`, the deep
     nestings).
   - `compiler/tools/tokdiff.olang` runs it; `make tokdiff`, part of `make verify`, builds both tools first (about 12 s).
   - Done when there is no difference - and there is none (M1, 2026-10-11). Writing it found four C tokenizer bugs, fixed
     in `bootstrap/` (HISTORY.md, "The port starts"): a literal stopped by a newline took the newline, a run of bytes
     that begin no token after a line's end gave two statement ends (and a `;` there two), `1.5.Hash()` was "two
     decimal points", and `1e_x` lexed as `1e` and `_x`.
2. **Structure diff.**
   - Tools: `bootstrap/oracle/astdump.c` walks the C syntax tree, which is a generic tree of kind and parts.
     `dump.olang ast` walks the new one.
   - Both print every declaration and statement as `KIND line:col-line:col`.
   - Expression structure is covered by a round trip: print the AST as source, parse it again, compare.
   - Branches decided by the build (point 12): both parsers parse every branch (stage 0 through
     `SyntaxParseAllBranches`, set by the oracle only), so they are compared now; deciding them is compared with M4.
   - Built (M3): `bootstrap/oracle/astdump.c` (run on a 1 GB thread, as the compiler runs), `dump.olang ast`, and
     `dump.olang roundtrip`, whose writer is `compiler/unparse.olang` - it writes every node as source with no
     parentheses added, a branch that had held diagnostics as its own text. `compiler/tools/astdiff.olang` runs both over
     every file of the repository (`make astdiff`, part of `make verify`, about 5 s once both tools are built). What
     it normalizes: each file's rows are sorted (the two trees hold the same nodes in different shapes); stage 0's
     diagnostics are reduced to `error RULE LINE:COL`, its notes dropped, and only each item's first is compared; in
     the round trip, statement ends, a trailing comma before `)` or `]`, and the split of `>>`, `>=`, `>>=` into
     single angles are not compared; an L21 inside an item kept whole is dropped, and one that ends an item is compared
     without its position. A missing tool or a short output is a failure. Clean on all 1,262 files and study2's data;
     nesting is checked against stage 0 with both built for a limit of 40 (96 forms at 36-40 levels) and at 1,000 and
     4,000 levels, and the new parser alone at 20,000 (stage 0 is superlinear in depth).
3. **Module graphs and name errors (M4).**
   - Tools: `bootstrap/oracle/modgraph.c` links stage 0 without its driver and analyzes a root as `olang compile` does (its
     build-decided branches decided), printing every module's identity and its imports, sorted;
     `dump.olang modules` prints the self-hosted loader's graph the same way (`Loader.Graph()`).
   - `compiler/tools/modgraph.olang` (`make modgraph`) compares them on every root of the repository - the corpus, std,
     `compiler/` and its tools, checks, fuzz and bench, each as an ordinary and as a test build - and on a program
     importing a remote repository made in a scratch directory (identities, edges and the lock file's lines). A root
     whose top-level conditions only B9c decides would differ until M5 decides them; there is none. Not in `make
     verify`: stage 0 checks every root whole, minutes in all.
   - `compiler/tools/namesdiff.olang` (`make namesdiff`, part of `make verify`, about 25 s) runs `dump.olang names` on
     every `checks/cases` program, with its `# flags:` (`-D`, `-t`), and requires the errors of load's and names'
     rules to be exactly those stage 0 gave in `compiler/goldens/diag.txt`, by rule and position - and none where it
     gave none of them. All 1,132 cases agree (40 such errors). Every file of the repository outside the failing cases
     loads and resolves with no error, plainly and as a test build.
   - The remote, lock and `-u` scenarios are unit tests: `fetch.olang` (locking, a locked offline build, a refetch by
     hash, `-u`, deleting a line, bad names) and `load.olang` (a remote import and its relative imports), each over a
     local git repository.
4. **Diagnostic goldens.**
   - Stage 0's output on every `checks/cases` program is captured: its `path:line:col: error[RULE]: text` rows.
   - The new compiler must match the rule and position everywhere, and the text wherever a case pins it.
   - Unpinned text differences are listed for review, not failed.
   - Built (M2): `compiler/goldens/diag.txt` holds stage 0's stdout on all 842 failing cases (the repository written
     `$ROOT`), captured by `compiler/tools/diaggold_capture.olang` (`make diaggold`). `compiler/tools/diaggold.olang`
     reads each row back into a record, reports it to diag again, and requires the case's output byte for byte - rows,
     order, source lines, carets, notes and summary; all 842 match. It also holds `Explain` to stage 0's `-e` for
     every rule a message names, a lowercase one and a missing one. Limit: until the new compiler makes its own records,
     a span's end is read from the golden's own caret, so a caret's width is checked for consistency only; from M3 the
     records come from the parser's spans and the widths are compared for real.
5. **Type layouts (M5a).**
   - Tools: `bootstrap/oracle/layoutdump.c` links stage 0 without its driver, checks a root as `olang compile` does, and
     prints every type it holds - each declared type, instance, array, reference, function type, tuple and anonymous
     enum - by its canonical text, with its size, alignment, LLVM spelling, struct body and field offsets, a function
     type's result spelling and passing, and an enum's payload offsets. `compiler/tools/layoutgold.olang` (`make
     layoutgold`, minutes) runs it on every root of the repository, ordinary and as a test build, and on every checks
     case that builds, with its flags, and keeps each type under the first program holding it:
     `compiler/goldens/layout.txt`, 9,414 types from 283 programs.
   - `dump.olang layout` reads each type back from its canonical text in the program it came from (`ParseCanon`), lays
     it out, and prints it the same way; `compiler/tools/layoutdiff.olang` (`make layoutdiff`, part of `make verify`,
     about 3 s) requires every line to be stage 0's. A type may be left unlaid only where
     `compiler/goldens/layout.deferred` lists it, with why: 11 - ten an array length a call computes (G21) and one a
     type only a top-level `if` a call decides declares (B9c), both the evaluator's (M8). All 9,291 others are
     identical.
   - Unit tests in `generic.olang`: layouts of declared types and instances, canonical texts read back, T16, both of
     G17's bounds, G21's fold, inference (G9a, G9b, G9d), function instances' names, G19, and function types' scopes -
     the markers read, `ScopeVarsOf`, plain instance arguments, and where instances were first asked for; in
     `types.olang`, scopes outside identity; in `typed.olang`, marks and scope variables read off a body's type.
6. **Typed tree and MIR.** These are not compared with C; their representations differ by design.
   - The MIR verifier runs on every function of the corpus: types, initialization, scope nesting, every allocation
     placed (or one of lowering's listed exemptions), nothing built into an `Inert` scope.
   - The plan's invariant: in a debug mode, every body evaluated lowered without the plan and with it gives the same
     values (section 1.6.1).
   - `dump.olang mir` serves review.
   - Unit `test` blocks live in the compiler's own modules (scanner cases, interning, the pattern converter), and
     `make test` runs them.
7. **Behaviour against stage 1.**
   - P0 parametrizes the compiler under test: the makefile gets `OLANG ?= build/out` (done; `build/olang` since stage 0 was removed). `checks/checks.olang`
     (which today hard-codes `build/out`), `fuzz/` and `bench/` read `$OLANG`.
   - `make verify OLANG=build/stage1`.
   - `make race OLANG=build/stage1` must report exactly the one known race.
8. **Fuzz across compilers.** Each seed is built by stage 0 and by stage 1 and the printed results compared. The
   fuzzer's own three-way agreement within stage 1 (compile time, `-O3`, `-i`) is also required.
9. **Benchmarks.** `bench/run.olang` runs with two compilers. Stage 1's programs must be within 5% of stage 0's
   geometric mean, and none more than 15% slower.

| stage | acceptance |
|---|---|
| scan | token diff clean; lexical-error cases give the same rule and position |
| parse | structure diff and round trip clean; syntax-error cases match; 20,000 levels of nesting give L21's error, not a crash |
| load + names | module graphs (identities and edges) equal stage 0's for every corpus root; M-rule, D2, D3a, M20 and B9 cases pass |
| check | every corpus file checks clean; every fail case outside §8 (O), K and B5a gives its pinned message |
| scope | every O-rule case passes; placement is complete (the MIR verifier rejects unplaced allocations) |
| lower + eval | K-rule cases pass; the corpus's baked-global section matches the run time; `-i` agrees with `-b` on the fuzz programs and on the study2 front end |
| emit | `make verify OLANG=build/stage1`; fuzz across compilers; benchmarks; race |
| self-host | stage 2 equals stage 3 (section 5) |

The token and structure oracles went with stage 0; their output is stored in `compiler/goldens/`, which serves for
scanner and parser regressions until the grammar moves past what stage 0 parsed.

## 5. Bootstrap

**The seed (the user's decision, 2026-10-18).** Once the port builds itself, rebuilding it from nothing is one run: a
committed seed - the compiler's own LLVM IR, written by the compiler of itself and never by hand - is compiled by
clang, and that compiler builds the current source (Zig's approach, its `zig1.wasm`). No chain of intermediate
compilers, no binary committed, and no second compiler maintained: the C compiler that was in `bootstrap/` is
removed from the tree (2026-10-23, tagged `stage0-final`; `git checkout stage0-final -- bootstrap` restores it).

**Layout.**

```
seed/               the seed: one xz-compressed .ll per object, baseline x86-64 Linux (seed/README.md)
compiler/           the olang compiler, this file, tools/ (tools/seed.olang writes the seed)
std/                the standard library; std/runtime/*.ll
build/olang.seed    the seed made a compiler by clang
build/olang         the compiler in use, after `make bootstrap`
```

**Targets.**

- `make bootstrap` (needs clang and xz, nothing else):
  1. decompresses each seed file into `build/seed/` and compiles it with `clang -O2`, side by side under `-j`;
  2. links them into `build/olang.seed` (with `-lm -lpthread -ldl -lffi`, as every build of the compiler links);
  3. `build/olang.seed` builds `compiler/olang.olang` into `build/olang.1` - a release build, for this machine;
  4. `build/olang.1` builds it again into `build/olang.2`, and `build/olang.2` into `build/olang.3`;
  5. compares the last two byte for byte - objects are named by a hash of their IR (B3), so they are equal exactly when
     the third compiler wrote the IR the second did. Both are built by compilers made from the current source; the
     first is the seed's compiler's work and equals them only while the seed is current (2026-10-23: comparing the
     first two failed once the code generator had moved on from 1f7a849's seed - the third build, reusing every
     object, takes seconds);
  6. installs `build/olang.3` as `build/olang`.

  Measured from a clean clone with `bootstrap/` deleted (2026-10-22, 4 cores shared with other work): 366 s, 1.6 GB at
  most - the seed's compiles 18 s, each build of the compiler about 3 minutes, mostly its link (`-O3 -flto`).
- `make seed` writes the seed from the current source: `compiler/tools/seed.olang` - built by `build/olang` when
  there is one, else by stage 0, which changes nothing in what it writes - runs the driver's own `Prepare` and `Passes`
  on the command line `olang build -target x86-64 compiler/olang.olang`, from the repository root with
  `OLANG_STD=std`, and writes each object's IR as IDENTITY.ll; each file is compressed with `xz -9`, one whose IR did
  not change left as it is. Deterministic: the seed written by the compiler `make bootstrap` installed is the seed it
  was built from, byte for byte.

**Decisions (mine).**

- **The target is baseline x86-64**, not the writing machine's CPU: the seed runs on any x86-64 Linux, and the
  compilers it builds are built for their own machine (B12). The module triple is clang's for this host
  (`x86_64-pc-linux-gnu`).
- **No path of the writing checkout is in it.** A failed check's message names its file as the loader found it, so
  with std found beside the compiler every std path would be absolute; the tool refuses an absolute `OLANG_STD`.
  Compiler modules are named from the repository root (`compiler/check.olang:52:`), as in every build.
- **The IR as the compiler writes it, release mode (no DWARF), not optimized by clang.** Optimizing each file with
  `clang -Oz -S -emit-llvm` halves it (1.7 MB compressed against 3.5 MB), but the seed would then be clang's output,
  depending on clang's version, rather than the compiler's.
- **One xz file per object.** As written the IR is 48 MB in 43 files (1.5 million lines); xz -9 makes it 3.5 MB, gzip
  6.4 MB, bitcode 15 MB (5 MB with xz). A one-string edit of a module changes six lines of that module's file and no
  other, so one file per object keeps a new seed's cost in history to what changed: over three seeds a few commits
  apart, the history grew by 0.6 and 2.5 MB compressed, 1.4 and 5.1 MB as plain text.
- **When it is written again.** It must be in the commit that first makes `compiler/` (or the std it uses) need
  something the seed's compiler cannot build, and may be at any other time; `make bootstrap` shows whether the seed
  still builds the current source.

**Freeze.** Once stage 1 passed the suite and the fixed point held (M12), `bootstrap/` stopped changing, and it was then removed. From then
on, steps 2 and 3 of the CLAUDE.md checklist ("checker and codegen", "compile-time evaluator") mean the modules in
`compiler/`.

## 6. Order of work

**P0, before the port, in the C repository.** Part of this is already queued.

- The C compiler moves to `bootstrap/` as part of the modest refactor. (Done: `make stage0` builds `build/stage0`.)
- `OLANG` is parametrized in the makefile, checks, fuzz and bench. (Done with M1: a relative `OLANG` is read against the
  repository root.)
- The runtime is extracted to `std/runtime/runtime.ll` and linked as one object by the C compiler (section 1.10).
  (Done: `runtime.ll`, `san.ll` and `dyncall.ll`, compiled once per build configuration.)
- The std and runtime gaps S1-S6 (section 7) are closed.
- The in-flight branches are merged: the permissions batch and checker batch 3 (study2's r01-r15).
- The oracle tools move to `bootstrap/oracle`. (`tokdump.c` done with M1, `astdump.c` with M3.)

**Language changes during the port.** From M5 on, they land in C first and are ported to any module that already
exists. Feature work waits where it can (question 2).

**Port milestones.** Each contract module (`token`, `ast`, `typed`, `mir`) is reviewed before work that depends on
it starts. One agent per row; rows on the same line of the dependency column may run in parallel.

| # | modules | depends on | done when |
|---|---|---|---|
| M1 | `source`, `token`, `scan` | P0 | token diff clean on every file; 50 MB/s on `big.olang` idle |
| M2 | `diag`, `msgs` | P0 | renders stage 0's diagnostic goldens identically from records; `-e` works (done 2026-10-11) |
| M3 | `ast`, `parse` (study2's parser is the start) | M1, M2 | parse acceptance (section 4); recovery gives one error per item on every syntax-error case (done 2026-10-11) |
| M4 | `load`, `fetch`, `names` | M3 | load + names acceptance; the remote, lock and `-u` scenarios pass through a test driver (done 2026-10-11) |
| M5a | `types`, `generic`, `typed` | M4 | contract reviewed; all types of the corpus interned and laid out as C lays them out (sizes and offsets compared) (built 2026-10-12; reviewed and revised the same day: function types' scopes, marks, body kinds, sites, keys - section 1.6.1) |
| M5b | `check`: expressions | M5a | together with M5c, the check acceptance; S4d decided by types; every ownership event a `Take` or a site (in progress 2026-10-18: checkdiff 406 of 411 refused cases give stage 0's first error - the rest own/take and constant generics, both being removed - 381 their pinned message, 279 of 283 accepted programs check clean - PROGRESS.md in wt-check) |
| M5c | `check`: declarations, statements, patterns, lambdas | M5a | (with M5b); S8c's fixed locals over the resolved AST; a body per global, per twin, per payload; defaults built per call (in progress, with M5b) |
| M6 | `scope` | M5a's `typed` contract | written first as a small formal model of section 8 and section 8.8 (the rules and why each is sound, `docs/scope-model.md`), reviewed before code; then every O-rule case passes; placement complete; confinement, regions and reach (O33, O34, O38); the scope fuzzer and sanitizer find nothing (`scope` begun 2026-10-18: terms, obligations over the call graph's components, O18a-O18c, O26a, C2d, O17/O17b, derived scopes; its placement read by `lower`; `make scopediff` - HISTORY.md "Port M6: the scope pass") |
| M7 | `mir`, `lower` | M5, with M6's placement interface | the MIR verifier is clean on the corpus; releases, holds and registrations placed by lowering; O39-O41's liveness over MIR; a stand-in placement (everything in the program's scope) is allowed until M6 lands (`mir`, its verifier and dump written 2026-10-12, for review - section 1.8.1; `lower` built 2026-10-18 with the stand-in placement: `make lowerdump` - 58,932 of 58,955 corpus bodies and every helper verify clean, the rest check's; no releases or holds, own being removed - HISTORY.md "Port M7: lowering") |
| M8 | `eval` | M7 | lower + eval acceptance; decisions under their keys; a body per global in B5a's order; evaluation with and without the plan agrees |
| M9 | `emit`, `dwarf`, runtime linking | M7 | the corpus `test` blocks pass with the stand-in placement (destructor-timing tests excepted), then all of them with M6 (in progress: emitdiff 1009 of 1013 tests as stage 0's, the 4 left the scope pass's and the evaluator's; one object per module and S18d done 2026-10-22; TBAA, DWARF, ThinLTO round 4) |
| M10 | `build`, `target`, `olang` (driver) | from the start; integrates last | every mode and flag; content-addressed objects (B3, B10b, B12b); a no-op build links nothing; checks' build scenarios; `-t` self-exec (built 2026-10-17 over a `Frontend` interface, all but checks' scenarios - section 1.11) |
| M11 | stage 1 | all | emit acceptance (section 4); per-file `-t` peak under 500 MB |
| M12 | self-hosting | M11 | stage 1 builds `compiler/`; stage 2 equals stage 3; the seed and `make bootstrap` (built 2026-10-22: the seed rebuilds the compiler from nothing, the last two builds equal - section 5); freeze |

Notes on the schedule:

- M5b and M5c are the bulk: about 7,000 lines between them, plus their share of `types` and `generic`.
- M6 can be developed against M5's typed trees before M5 is complete, since its input is the typed contract.
- M8 can run `-i` on the stage-1 compiler itself as a stress test. It runs tasks in sequence, as K1 does, so the
  driver's parallel clang still works.

## 7. std and language gaps

**What exists already** covers most of the port's needs:

- **`io`, `filepath`, `os`:** `io.Writer` (buffered), `io.Lines`, the whole of `filepath`; `os.Args`, `Env`, `Exit`,
  `IsTerminal`, `Exec` (no shell, output captured in memory files), file reading and writing, `Stat` with nanosecond
  times, and the directory and path calls (`MkDirAll`, `Rename`, `ReadLink`, `RealPath`, `ReadDir`, ...).
- **Collections and text:** `List` (indexing, `Pop`, `Sort`, `RunFrom`), `Map` (`Update`, `Keys`), `StringBuilder`,
  `Find`, `Split`, `Trim`, `PadStart`, `ParseInt`/`ParseUint` in any base (base 0 reads an olang literal, as L10 needs),
  exact `ParseFloat` and `ShortestDecimal`, and `x.Bits()` with the `FromBits` methods for float constants in IR.
- **Other modules and features:** the prelude's number methods (X8's libm, which the evaluator calls), `std/time`, `std/chan`; recursive
  enums for the trees, `join`/`spawn` for parallel clang and parsing, and `try (...)` for overflow-checked arithmetic.

**Missing.** Each design below is decided. All go in during P0, in C and std, before the milestones that need them.

| # | gap | design | needed by |
|---|---|---|---|
| S1 | recursion deeper than an 8 MB stack allows (r12); L21 allows 20,000 levels | `os.RunOnStack(bytes I64, f fn())`: runs `f` on a new thread with that stack (`pthread_attr_setstacksize` in the runtime) and waits for it, so P1b and P2 apply unchanged. The compiler runs everything inside one with 1 GB reserved, as the C compiler does. | M3 onwards |
| S2 | "internal compiler error" on a crash | `os.OnCrash(message String&)`: the runtime installs handlers for the fatal signals, on an alternate stack, which write the message with `write()` and then re-raise the signal | M2 |
| S3 | `-i` calling a program's externs | `__olang_dyncall(name, kinds Array<U8>, words Array<U64>, ret U8) U64` in a separate runtime part over `dlsym` and libffi. It is linked, with `-lffi -ldl`, only into programs that declare it. It takes X2's vocabulary only; arrays are copied in and out as `-i` does today. | M8 |
| S4 | the build cache and fetching | `os.RemoveAll(path)`, `os.MkTemp(dir) String&` (a fresh directory), and `os.Exec(..., capture = true)`. With `capture` false the child inherits stdout and stderr, for clang and test binaries. | M4, M10 |
| S5 | AST memory: every struct or enum allocation is rounded to O8a's SIMD size class (r14), so 40 bytes take 64 | an aggregate allocation gets its type's own alignment; O8a's classes stay for arrays, which is what they were for | M3 |
| S6 | hexadecimal for IR constants | `n.Format(base = 10)` on integers, the inverse of `ParseInt(base)` | M9 |

**Built 2026-10-09** (records: CLAUDE.md and HISTORY.md, "What the port needs from std and the runtime"): S1
`os.RunOnStack`, S2 `os.OnCrash`, S3 `std/ffi` (`ffi.Call`, `ffi.Has`, `Pack`/`Unpack`) over `__olang_dyncall` - a
separate runtime part, emitted only into a declaring module's object, `-lffi -ldl` linked only then - S4
`os.RemoveAll`, `os.MkTemp(dir = "", prefix = "")` and `os.Exec(args, input, capture = false)`, S5 (O8a: an aggregate
takes its own alignment, an array its size class), and S6 `n.Format(base)`. The runtime's new pieces are in
`std/runtime/runtime.ll` with the rest (section 1.10), and the dynamic call is a part of its own,
`std/runtime/dyncall.ll`.

Already in flight, and prerequisites:

- global `Map` methods (r01);
- slices of `String` keeping `extends` (r11);
- the chained lookup that is wrongly rejected (r10);
- a reference held in a local with its permission (r08, the permissions batch).

**Disagreements to fix in C.** Where the contract decides differently from stage 0, stage 0 is changed to match (a
fix, allowed under QB), so the two compilers' behaviour can be compared:

| rule | stage 0 | the contract |
|---|---|---|
| S4d | copied the old value where a callee's body can hand its argument back (`calleeMayKeepArg`, a §8 summary) - fixed 2026-10-18 (`s4dResultCanHold`) | copies where the assigned value's type can hold the borrow (SPEC S4d) - more copies, decided before §8 runs |
| T22a | `fn link(a mut N&, b N&a)` made a value of `fn(a mut N&, b N&)`: a crash, and unsound (`review/typed/repro`) - fixed 2026-10-18: any difference in where the references live is a different type (SPEC T22) | refused: a parameter sharing a scope variable the type does not (section 1.6.1's table) - `check` refuses every difference for now (`types.ScopesFit`), as stage 0 does |

**Not needed:**

- **128-bit integers.** E4a's exact literal arithmetic and the conversion checks use a two-limb type inside the
  compiler, and overflow detection uses `try (a * b)`. The 128-bit hash for long symbol names (G16a) is compiler code
  too.
- **A "never returns" marker (r09).** Writing `error E.X` after a helper that always fails costs one line.
- **Language changes.** None are required beyond L18b, which is already decided.

## 8. Direction questions

1. **Should `Name<` be decided by adjacency, making the parse context-free? (LANGUAGE CHANGE)**
   - The proposal: a `<` touching the name before it opens type arguments, and one with a space before it is
     less-than.
   - The gain: every file could be parsed alone, with no pre-scan of its imports. Formatters, editor support and
     tree-sitter grammars need exactly that.
   - The cost: zero sites in the corpus (no `a<b` comparison and no `Name <T>` application exists), but `<` would
     become whitespace-significant, and `if a<b {` would fail with an error about type arguments.
   - In effect until answered: the declared-name oracle (section 2, point 1).
   - Recommendation: keep the oracle for the port. Revisit when tooling is built.
2. **Should compiler feature work pause during the port?**
   - In effect until answered: language changes keep landing in C (stage 0) and are ported to whatever modules
     already exist.
   - Recommendation: from M5 (the checker) to M12, only fixes go into C, and new language features wait for the
     self-hosted compiler. Otherwise every feature is built twice, in C and in olang.
   - What it would affect: the compiler items oann is asking for. std, oann and benchmarks continue unaffected.

Decided here, within the direction already given: demand-driven checking instead of the check-again loops; the
scope check as its own pass, owning placement; a Miri-style evaluator over MIR, which is also `-i`'s second stage; LLVM
IR as text; the runtime as one `.ll` linked once; objects addressed by their IR's content, instances in an object of
their own and no link when nothing changed; parallel clang; FastISel under `-d`
when no BF16 is present; one function per diagnostic instead of format strings; `-t` by re-running the compiler itself;
bootstrap tags in `CHAIN`; and the std additions S1-S6.
