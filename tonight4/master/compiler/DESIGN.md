# The self-hosted olang compiler: design

Status: design, 2026-10-09. No compiler code exists yet. `SPEC.md` says what olang means; this file says how the
compiler written in olang computes it. The C compiler (moving to `bootstrap/`) is the reference for behaviour only:
its diagnostics, edge cases and test results, never its structure. Where the C compiler and `SPEC.md` disagree, the
port follows `SPEC.md`, and the disagreement is fixed in C as well (or the spec amended) and recorded.

Measurements below were taken on 2026-10-09 on the shared 4-core machine while other work ran on it (load average
10-13). The ratios between them are what matters, not the absolute numbers.

## 0. Ground rules

- **Behaviour is the acceptance test.** The whole suite (`make verify`) passes, plus token and structure diffs
  against the C compiler where they are cheap (section 4). The port's IR does not have to match the C compiler's.
- **Industry-standard designs** (`.claude/memory/feedback_port_clean_design.md`): a hand-written scanner,
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
| mid-level IR | `mir`, `lower` | 600 + 2,400 | codegen.c lowering half |
| evaluation, `-i` | `eval` | 2,600 | comptime.c (2,987) |
| LLVM emission | `emit`, `dwarf` | 2,800 + 400 | codegen.c emission half |
| runtime | `std/runtime/runtime.ll` | ~2,000 IR lines | codegen.c's runtime strings |
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
- **Tokens.** `Token(Kind Tok, Flags U8, Start I32, End I32)` is stored by value in one `Array<Token>` per file.
  `Flags` holds three bits:
  - *line break before*: used by L18b, L20a and L18a's rule for declarations at a line start;
  - *space before*: used by E25's adjacency rule;
  - *first on its line*.
- **Statement ends** are inserted by the scanner, following Go's lexer: L18's token list, L18a's bracket stack, and
  closing brackets when a declaration keyword starts a line. No end is inserted before `catch`. The C tokenizer
  inserts one there and its parser skips it, so the token diff normalizes that difference away.
- **Side tables.**
  - A *line table* holds line start offsets; a position's line and column are found by binary search.
  - A *brace table* maps each `{` to its matching `}`, by braces alone as B9 states. It bounds the parsing of a
    conditional branch and error recovery.
- **What this replaces.** token.c matches a table of mini-pattern rules (`$a`, `$d`) at every position and reads its
  keywords out of that table at start-up.
- **Measured.** study2's scanner reads 25-30 MB/s under load (72-90 MB/s idle). The C tokenizer reads 9.5 MB/s on the
  same 4.6 MB file under the same load (483 ms).

### 1.2 The parser (`ast`, `parse`)

- **Statements and declarations** are parsed by recursive descent. **Expressions** use Pratt precedence climbing
  over E5's table, with:
  - `not` at its own level (E7a);
  - comparison chains (E30) and the infix `is`, `is not` and `not in` forms as their own nodes;
  - the conditional `a if c else b` (E28) at the lowest level, with L18b's rule about a line-initial `if`.
- **Lookahead.** The parser looks one token ahead, plus a few bounded peeks at the sites listed in section 2. It
  never backtracks and never memoizes.
- **Type-argument mode.** Inside a type-argument list, `>` closes the list. `<<`, `>>`, `>=` and `>>=` are split
  there (section 2, point 10).
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

### 1.6 Types and checking (`types`, `generic`, `typed`, `check`)

- **Types are interned.** A `TypeId` indexes one hash-consed table, so type identity is `==` on ids. Reference shape
  and permission are part of identity (T25a, T25b). Scope tags are not: they belong to §8 (section 1.7). Layout
  (size, alignment, LLVM spelling) is computed once per `TypeId`. This replaces `TypeIsSame` and its deep
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
  components:
  - global initialization order (B5a);
  - static evaluability (K1a);
  - §8's obligations (section 1.7).
- **Module boundary.** `check.olang` is one module (about 7,000 lines) with methods on `Checker`; M19 keeps those
  methods in the `Checker` type's module. Section 3.3 gives its compile time. If measured development builds need
  it, expressions can move to a module of free functions taking `c mut Checker&`.

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
   generic binding consults one. Everything §8 decides is a diagnostic, a placement or a hidden argument.
2. **Its inputs exist once checking ends:** types, the block structure, and whether each value is a temporary or
   existing storage. The typed tree records all three.
3. **Interprocedural rules have a precise order.** O10b's obligations, O23a's derived scopes and O13c's result
   bindings are summaries. They are computed bottom-up over the call graph's strongly connected components (Tarjan),
   with a fixed point inside each component. This is what the C compiler's `ensureBodyChecked` and
   `dischargeLateObligations` approximate during checking, and why a callee declared later was once missed (O10c).

**Not a region solver over MIR**, as rustc's borrow check is: §8 is stated over source constructs, and its
diagnostics name them ("make it where 'st' lives"). Restating §8 as constraint solving would be a semantics project,
not a port, so the pass follows §8 rule by rule. The pass runs on every body that checked without errors.

### 1.8 MIR, lowering and evaluation (`mir`, `lower`, `eval`)

- **MIR.** Each function instance is a control-flow graph of basic blocks over typed locals and places. It is not
  SSA, matching rustc's MIR. LLVM's mem2reg and SROA clean up after it.
  - Statements: assign, allocate-in-scope, scope open and close, check.
  - Terminators: goto, branch, switch, return, error return, and the exits (`done`, `fail`, `abort`, failed check).
  - Made explicit in one place: evaluation order (S4), temporaries, block scopes (O2), deferred code duplicated per
    exit (S19), joins on every way out (P1b), catch dispatch (R9), and checked operations (E15a).
  - A verifier checks every MIR function (types, initialization, scope nesting) in tests.
- **Synthesized helpers are MIR functions** made by `lower`: per-type `$` rendering, deep `==`, the supplied `Hash`,
  zero values (D13c) and constructor assembly. Emission and the evaluator therefore run the same code. comptime.c
  carries a second, 600-line rendering implementation that had to be kept in step with codegen.
- **The evaluator is an abstract machine over MIR**, on Miri's model:
  - **Allocations** have ids and bytes laid out exactly as the target lays them out, using the same layout code, and
    a pointer map per allocation. A reference is an (allocation, offset) pair, bounds-checked on every access.
    Undefined behaviour stops `-i` with `FILE:LINE`.
  - **Scopes are arenas** freed when they close, using §8's placement, and destructors run then.
  - **Floats are held as bits**, so E33a's NaN rules are exact.
  - **Budgets.** K1's step and memory budgets apply to compile-time evaluation.
  - **libm** is called through `std/math`, which is X8's libm itself. A program's externs go through a dynamic call
    (section 7, S3).
- **Evaluation serves:**
  - constants, conditions (S8a, S8b, B9c), zero values and literal constructors (T29d), during checking;
  - K2 baking and S18c asserts, after the scope pass;
  - `-i`.

  Evaluation during checking lowers its functions without placement, frees everything at the end of the request,
  and keeps those MIR functions in a cache of their own.
- **What this replaces.** comptime.c is a tree walker with 496-byte boxed values that are never freed: it needs 3 GB
  to run a parser over 30 KB. `-i`'s planned second stage (compact values, freeing that mirrors scopes,
  destructors) comes with the port.
- **Agreement by construction.** Generated code and the evaluator run the same MIR. A review on 2026-10-09 found 12
  disagreements between comptime.c and codegen.c.

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

### 1.10 The runtime (`std/runtime/runtime.ll`)

- **What moves.** About 2,050 lines of runtime IR are written inside codegen.c's string literals: the allocator and
  chunk pool, workers, unwinding, process entry, the argv, env, stat and spawn helpers, and number formatting. They
  become one `.ll` file. `@@NAME@@` placeholders take the target's C-library layout constants and the mode's
  attributes, filled from a table in `target.olang`. A checks scenario compiles a C probe with clang to verify the
  host's row.
- **How it is built.** The runtime is compiled once per target and mode into the object cache and linked into every
  program. Today it is emitted `linkonce_odr` into every object:
  - in study2's build that is about 96 KB per object, 1.9 MB of 7.5 MB of IR;
  - a 9-line prelude module's object is almost entirely runtime.
- **Inlining.** Under LTO the allocator still inlines into user code. Under `-d` and `-r` it becomes a call, an
  accepted cost.
- **It stays IR.** It needs pointers, threads and `setjmp`, none of which olang expresses. Number formatting could
  later become prelude olang; that is not part of the port.
- **Done in C first** (P0, section 6), so stage 0 and stage 1 link the same file.

### 1.11 Driver (`olang`, `build`, `target`)

- **The command line is unchanged** (B1): `-b`, `-c`, `-t`, `-i`, `-r`, `-d`, `-u`, `-a`, `-D`, `-e`.
- **What a build must guarantee is unchanged**: never reusing a stale object (B3), whether stale by source, `-D`
  values (B10b), target (B12b) or compiler; and injective symbols (B3b). How it is guaranteed changes: objects are
  addressed by the content they were built from (section 3.4).
- **Process spawning.** Every external program runs through `os.Exec`: clang, git, the test binaries, and the
  compiler re-running itself for `-t`. None runs through a shell.

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
   - **`x is T` is deferred.** After `is` or `is not`, the operand is a type when it begins with `mut`, `fn` or
     `<`, or carries type arguments or a marker. Otherwise a bare path stays undecided for the resolver.
   - **`Name<` uses the oracle.** It cannot be deferred: `a < b > (c)` is a legal comparison chain (E30) with the
     same tokens as a generic constructor call.
     - The oracle holds the type and error names declared in the module (in any branch), in the prelude and in
       imported modules (all from the pre-scan, section 1.4), plus the current item's introduced type variables
       (G8b), which also make `match T` take types (G13).
     - It is exact: D2 and D3a forbid a name being both a type and a value in one module.
     - Sites: 585 `Name<...>(` and 6 `Name<...>[`. study2 needed a type name 3,654 times.
   - Question 1 (section 8) offers the alternative: making `Name<` context-free.
2. **Statement-start declarations: (a), two tokens.** A statement is a declaration when an identifier is followed by
   an identifier, `mut`, `fn`, `enum`, `struct`, `:=`, or `<`. A `<` cannot start a comparison statement, since S3
   forbids those. Anything else starts an expression statement. study2 uses: 6,374.
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
   - `mut`, `fn`, `<`, `enum`, `struct` or `trait` begins a type;
   - a literal, `(`, `-`, `~` or `not` begins a constant expression;
   - a name begins a type path (with arguments and markers). If an operator other than `,` or `>` follows, the path
     continues as an expression (`Array<T, N + 1>`).

   Whether a bare path is a type or a constant (G20, G23) is the resolver's decision. Inside the list, `>` closes,
   and comparisons and shifts must be parenthesized (G21). study2 uses: 10.
10. **Splitting `<<` and `>>`: (a).** In type-argument context, the parser splits:
    - `<<` that opens a list whose first argument introduces a variable (G8b);
    - `>>`, `>=` and `>>=` that close a list.

    The rest of the split token is read next, as Java, C++11 and Rust parsers do. Sites: 246 `<<` in types.
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
| emitted IR | streamed to a file by `io.Writer` | never held whole |

Rules:

- A table that lives longer only ever holds ids or values. It never holds a reference into a shorter scope.
- A scratch list that would otherwise be made per call lives on a stack in the long-lived state and is flattened
  into an array when done.
- After the allocation fix in section 7 (S5), an AST node costs its own size, not O8a's SIMD size class. Before it,
  study2 measured 172-199 MB for 4.6 MB of source.

Estimated peak for a build of the compiler itself (about 1.2 MB of compiler source plus 0.6 MB of std):
150-250 MB. The C compiler frees nothing and peaks at 3.0 GB on `runner.olang`. M5 measures the real figure.

### 3.2 `-t`: one process per file

- **Isolation.** A file's build lives in its own process, as in B3a: a crash or a fatal error ends that file only,
  and memory is returned between files.
- **Mechanism.** olang has no `fork`, so `-t a b c` re-runs the compiler (`os.ReadLink("/proc/self/exe")`) once
  per file through `os.Exec`, with output captured and replayed in file order. That costs about 50-100 ms of
  start-up per file against builds of seconds.
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

1. **Link the runtime once** (section 1.10). Each object loses about 1,200 IR lines, 25% of study2's IR.
2. **Objects are addressed by their content.** The front end checks the whole program on every build anyway, and
   emission is cheap next to clang. So every module's IR is emitted, and its object is named by a hash of that IR
   text, the clang flags and clang's version. An object is reused exactly when that file exists. This replaces B3's
   timestamp rules: it never reuses a stale object, including one built by an older compiler, and it never rebuilds
   an importer whose IR did not change (`resolve` above). B3's text is restated to match.
3. **Put instances in their own object** (`<root>.inst`), so editing one module no longer recompiles every instance
   with the root. With item 2, the instance object is rebuilt only when the instance set or an instance's code
   changes.
4. **Skip the link when nothing it reads changed**: the binary records a hash of its inputs. A no-op build is then
   the front end alone: about 1.5 s here instead of 10.7 s.
5. **Run clang in parallel** over stale modules, bounded by the core count, using `join` and `spawn` over
   `os.Exec`. Today the runs are serial.
6. **Use FastISel under `-d` unless the module's IR contains `bfloat`.** B2c's workaround for LLVM 18 costs 70% of
   `-O0` time, and the compiler uses no BF16.
7. **LTO only where it pays.** Release builds keep full LTO; ThinLTO measured twice as slow to link at this size,
   so revisit it if the compiler's own link passes about 60 s. Development builds of the compiler use `-d`.
8. **Parse modules in parallel** (section 1.4). This is small but free.

Make targets: `make dev` (the compiler at `-d`, incremental) is the edit loop; `make` builds a release compiler
with the installed one; `make bootstrap` is section 5.

## 4. Testing

1. **Token diff.**
   - Tools: `bootstrap/oracle/tokdump.c`, moved from study2's `oracle/`, links `token.c`; `compiler/tools/dump.olang
     tokens` prints the new scanner's stream.
   - Format: one `LINE TEXT` per token, with `;` for a statement end.
   - Normalization: drop the C tokenizer's statement end before `catch`.
   - Inputs: all 518 `.olang` files (corpus, std, checks cases and fixtures, fuzz, bench) and study2's data
     (`big.olang`, the deep nestings).
   - Done when there is no difference.
2. **Structure diff.**
   - Tools: `bootstrap/oracle/astdump.c` walks the C syntax tree, which is a generic tree of kind and parts.
     `dump.olang ast` walks the new one.
   - Both print every declaration and statement as `KIND line:col-line:col`.
   - Expression structure is covered by a round trip: print the AST as source, parse it again, compare.
   - Branches decided by the build (point 12) are compared once M4 decides them.
3. **Diagnostic goldens.**
   - Stage 0's output on every `checks/cases` program is captured: its `path:line:col: error[RULE]: text` rows.
   - The new compiler must match the rule and position everywhere, and the text wherever a case pins it.
   - Unpinned text differences are listed for review, not failed.
4. **Typed tree and MIR.** These are not compared with C; their representations differ by design.
   - The MIR verifier runs on every function of the corpus.
   - `dump.olang mir` serves review.
   - Unit `test` blocks live in the compiler's own modules (scanner cases, interning, the pattern converter), and
     `make test` runs them.
5. **Behaviour against stage 1.**
   - P0 parametrizes the compiler under test: the makefile gets `OLANG ?= build/olang`. `checks/checks.olang`
     (which today hard-codes `build/out`), `fuzz/` and `bench/` read `$OLANG`.
   - `make verify OLANG=build/stage1`.
   - `make race OLANG=build/stage1` must report exactly the one known race.
6. **Fuzz across compilers.** Each seed is built by stage 0 and by stage 1 and the printed results compared. The
   fuzzer's own three-way agreement within stage 1 (compile time, `-O3`, `-i`) is also required.
7. **Benchmarks.** `bench/run.sh` runs with two compilers. Stage 1's programs must be within 5% of stage 0's
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

After the freeze the token and structure oracles stay buildable, because `bootstrap/` does not change. They serve
for scanner and parser regressions until the grammar moves past what stage 0 parses.

## 5. Bootstrap

**Layout.** No binaries are committed.

```
bootstrap/          the C compiler (frozen once the port works), its makefile, oracle/, CHAIN
compiler/           the olang compiler, this file, tools/dump.olang
std/                the standard library; std/runtime/runtime.ll
build/stage0        the C compiler, built with gcc -O2 for bootstrapping (the C development build stays -g)
build/olang         the compiler in use: stage 2 after `make bootstrap`
```

**Targets.**

- `make bootstrap`:
  1. builds `build/stage0` from C;
  2. walks `bootstrap/CHAIN` (below), if it has entries;
  3. builds stage 1 with the last compiler at `-d` (fast to build; fast enough to run);
  4. builds stage 2 with stage 1, release;
  5. builds stage 3 with stage 2, release;
  6. compares stages 2 and 3: every emitted `.ll` byte for byte, then the binaries;
  7. installs stage 2 as `build/olang`.

  Each stage builds in a directory of its own with `OLANG_STD` set to that tree's `std/`, since the compiler finds
  std at `<compiler>/../std`.
- `make dev` builds `build/olang.debug` from `compiler/` with `build/olang -d`.
- `make` builds a release `build/olang.next` with `build/olang`. `make install` replaces `build/olang` after
  `make verify OLANG=build/olang.next`.

Estimated `make bootstrap` time on an idle machine: about 6 minutes (stage 0 about 1, stage 1 about 1, stages 2 and 3
about 2 each).

**`bootstrap/CHAIN`.** Entries are listed oldest first. Each entry is built by the compiler of the line before it;
the first is built by `bootstrap/`'s C compiler, and the compiler at `HEAD` by the last entry.

```
# olang bootstrap chain, oldest first. Each entry is built by the one above it (the first by bootstrap/'s C
# compiler); HEAD is built by the last.  tag  commit  root  why
bootstrap/1  4c1f0e2a9d...(40 hex)  compiler/olang.olang  last commit stage 0 builds: the next uses Array<T, N> in compiler/
```

- **When a line is added.** In the commit that first makes `compiler/` or `std/` use something its predecessor
  cannot compile. The line names that commit's parent, the last commit the predecessor builds, and a tag
  `bootstrap/N` on it is pushed.
- **How a step is built.** `make bootstrap` extracts that commit's `compiler/` and `std/` with `git archive`, with
  no worktree, and builds them at `-d` with the previous binary.
- **Tags as well as hashes.** Tags survive history rewriting (git-filter-repo rewrites tags, not hashes written in
  files), so the tag is used and the hash beside it is checked. After a rewrite the hashes are refreshed from the
  tags.

**Freeze.** Once stage 1 passes the suite and the fixed point holds (M12), `bootstrap/` stops changing. From then
on, steps 2 and 3 of the CLAUDE.md checklist ("checker and codegen", "compile-time evaluator") mean the modules in
`compiler/`.

## 6. Order of work

**P0, before the port, in the C repository.** Part of this is already queued.

- The C compiler moves to `bootstrap/` as part of the modest refactor. (Done: `make bootstrap` builds `build/stage0`;
  the runtime's IR is `bootstrap/runtime.c` until it moves to `std/runtime/runtime.ll`.)
- `OLANG` is parametrized in the makefile, checks, fuzz and bench.
- The runtime is extracted to `std/runtime/runtime.ll` and linked as one object by the C compiler (section 1.10).
- The std and runtime gaps S1-S6 (section 7) are closed.
- The in-flight branches are merged: the permissions batch and checker batch 3 (study2's r01-r15).
- The oracle tools move to `bootstrap/oracle`.

**Language changes during the port.** From M5 on, they land in C first and are ported to any module that already
exists. Feature work waits where it can (question 2).

**Port milestones.** Each contract module (`token`, `ast`, `typed`, `mir`) is reviewed before work that depends on
it starts. One agent per row; rows on the same line of the dependency column may run in parallel.

| # | modules | depends on | done when |
|---|---|---|---|
| M1 | `source`, `token`, `scan` | P0 | token diff clean on every file; 50 MB/s on `big.olang` idle |
| M2 | `diag`, `msgs` | P0 | renders stage 0's diagnostic goldens identically from records; `-e` works |
| M3 | `ast`, `parse` (study2's parser is the start) | M1, M2 | parse acceptance (section 4); recovery gives one error per item on every syntax-error case |
| M4 | `load`, `fetch`, `names` | M3 | load + names acceptance; the remote, lock and `-u` scenarios pass through a test driver |
| M5a | `types`, `generic`, `typed` | M4 | contract reviewed; all types of the corpus interned and laid out as C lays them out (sizes and offsets compared) |
| M5b | `check`: expressions | M5a | together with M5c, the check acceptance |
| M5c | `check`: declarations, statements, patterns, lambdas | M5a | (with M5b) |
| M6 | `scope` | M5a's `typed` contract | every O-rule case passes; placement complete |
| M7 | `mir`, `lower` | M5, with M6's placement interface | the MIR verifier is clean on the corpus; a stand-in placement (everything in the program's scope) is allowed until M6 lands |
| M8 | `eval` | M7 | lower + eval acceptance |
| M9 | `emit`, `dwarf`, runtime linking | M7 | the corpus `test` blocks pass with the stand-in placement (destructor-timing tests excepted), then all of them with M6 |
| M10 | `build`, `target`, `olang` (driver) | from the start; integrates last | every mode and flag; content-addressed objects (B3, B10b, B12b); a no-op build links nothing; checks' build scenarios; `-t` self-exec |
| M11 | stage 1 | all | emit acceptance (section 4); per-file `-t` peak under 500 MB |
| M12 | self-hosting | M11 | stage 1 builds `compiler/`; stage 2 equals stage 3; `make bootstrap`; freeze |

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
- **Other modules and features:** `std/math` (X8's libm, which the evaluator calls), `std/time`, `std/chan`; recursive
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
separate runtime part, emitted only into a declaring module's object, `-lffi -ldl` linked only then - S4 `os.RemoveAll`,
`os.MkTemp(dir = "", prefix = "")` and `os.Exec(args, input, capture = false)`, S5 (O8a: an aggregate takes its own
alignment, an array its size class), and S6 `n.Format(base)`. The runtime's new pieces are in codegen.c's runtime IR
(`emitStackRuntime`, `emitDyncallRuntime`) and move to `runtime.ll` with the rest (section 1.10); the dynamic call
stays a part of its own there too.

Already in flight, and prerequisites:

- global `Map` methods (r01);
- slices of `String` keeping `extends` (r11);
- the chained lookup that is wrongly rejected (r10);
- a reference held in a local with its permission (r08, the permissions batch).

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
