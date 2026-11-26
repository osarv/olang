# Hand-off: links and contents (S4f, E10d, E10c) - stage 1 done, stage 2 to do

The user's decision (2026-11-26, orchestrator decided.md): values `a = b` assigns contents (through a reference too,
ending the old value as a store does), `a := b` defines; references `r ~ x` links, `r :~ x` declares one; `==`/`!=`
compare contents (through references too), `is`/`is not` test one object, `x is null` / `x is not null` the null test,
`x == null` refused with a hint; dereferencing implicit, no references to references, no unary `&`/`*`. Story:
HISTORY.md "links and contents"; current state: docs/settled.md "Links and contents"; rules: SPEC.md S4f, E10d, E10c
(each with a "Transition" paragraph to delete in stage 2).

## What landed (branch wt-assign)

- Scanner: `is` a keyword (`Tok.Is`), `:~` one token (`Tok.DefineLink`); `Tok.IsNot` made by the parser.
- Parser: `~` after an operand at a statement's head is an assignment operator (`isAssignOp`: also `try r ~ ...`, a
  `for`'s clauses); `:~` in `declRest` and a `for`'s first clause sets `ast.VarDecl.Link`; `is` / `is not` at
  precedence 4 with `==`; `x is null` (null on either side) is made `Binary(EqEq|NotEq, x, null)` in `binaryFrom` - so
  narrowing (S8e), `case null`, the evaluator read it unchanged.
- Checker (compiler/check.olang): `identity` (E10d: `PrimOp.Same`, never Eq; `placeObject` borrows a value's place
  beside a reference; `IdentityOfValue`), `linkTo` / `linkWritable` / `freshWritten` / `storedFresh` / `freshValue`
  (S4f: `LinkFresh`, `LinkToValue`), `assign` takes `written` (Tilde stored as Assign on a reference place),
  `declName`'s `v.Link` branch. Nothing after the checker changed: `r ~ x` types exactly as today's repoint.
- `OLANG_ASSIGNS=1`: `Checker.oldForm` notes `repoint` (`=` on a reference place, in `assign`), `define` (`:=` of
  existing storage by a reference, in `declName`), `identity` (`==`/`!=` that `equality` made `Same` on two references,
  in `binaryOf`'s `eqAt` block); printed at the end of the check as `assigns: PATH:LINE:COL: KIND` (`oldFormsReport`).
- tools/assign_migrate.olang: applies those rows, then rewrites `== null`/`!= null` on the text (also in Markdown
  files named on the command line). In fix's table last (DrivenOpt, trigger "="); nulltest_migrate removed from the
  table (it would undo `is null`). Corpus: checks/fixtures/assign (old.olang -> new.want), run by checks' fix scenario.
- Tests: tests/assign.olang; checks/cases s4flinkvalue, s4flinkfresh, s4fdefinefresh, e10disvalues, isname (now a
  fail case). Session completion words, nvim syntax, fmt's `~` spacing, unparse's `:~`.

## How to run the rewrite

    build/olang build tools/assign_migrate.olang
    build/tools_assign_migrate --olang build/olang [-j N] std/ compiler/ tests/ checks/ fuzz/ bench/ examples/ tools/
    build/tools_assign_migrate --olang build/olang SPEC.md docs/*.md README.md ...   # Markdown: null tests only

Each .olang file is compiled alone (`test` when it has tests, else `compile`) with OLANG_ASSIGNS=1; a file that does
not compile alone (a module needing its siblings, a checks case that must fail, a missing C file) gets only the null
rewrite - check `git diff --stat` against a grep of `= ` on references, and run the tool on a module through a program
that imports it if needed (rows for imported files inside the named paths are applied too). Rows a generic body's
instances note differently are printed `by hand:`. Run it a second time: it must report 0 everywhere. Markdown code
blocks get no `=`/`==` rewrite (no types) - do those by hand (grep `== null` is done by the tool).

## Stage 2: what to touch

Order matters - old code must never silently change meaning:
1. Migrate the repository with the tool (std, compiler, tests, checks incl. programs inside strings and C fixtures,
   fuzz generators that write `== null` or repoints, bench, examples, docs/SPEC/README Markdown); rebuild, `make quick`.
2. Refuse the old spellings (errors with a help naming the new one), before any meaning flips, so code not yet migrated
   (oann, oagent, the user's) fails instead of changing meaning: `== null` in the parser (`binaryFrom`, where the
   token is still known; help "write 'x is null'"); `repoint` / `define` / `identity` where `oldForm` is called today
   (make it report the error, and keep the `assigns:` row or teach assign_migrate to read the errors - fix's driven
   tools run only on files with errors, so this is what makes `olang fix` reach it). The seed: the compiler's own
   source now uses `is null`, `~`, `:~`, `is` - write the seed again (`make seed`) from the stage-1 compiler in the
   commit that first needs it (seed/README.md), as E10c did.
3. Flip the meanings once oann/oagent are migrated (their sessions run `olang fix`); the refusals of step 2 for `=` and
   `==` on references end there (they become the new meanings); `== null` stays refused:
   - `=` on a reference place (`Checker.assign`, the `op == Assign` path; `storeInto` / `storeLambdaInto`): store into
     `typed.Lvalue.Deref(sp, referent, read(p))` with the value fitted to the referent - the store a value place gets,
     so the old value's destructors run as O15 says for a store (`dropOnStore`-style paths in storeInto; check how a
     value field store ends its old value) and S4d's old-value copy applies; permission: `mustWrite` on the Deref
     (T25b: a read-only reference is refused). S4e (`lostParamWrites`, `LostStores.Whole`/`Fresh`): a write through a
     reference parameter is no longer a lost store; FreshParamRepoint goes (a fresh value through `=` is a plain
     write-through); `~` takes over the repoint rules (keep S4e for `p ~ ...`: typed tree identical, so the walk is
     unchanged - but LostStores must tell `~` from `=` now: carry it on typed.Stmt.Assign or decide in check before
     lowering). Parallel assignment (S4c), compound ops on references (`r += 1` through a reference: already reads and
     writes through? check), `assignAt`, `writeBack`, `columnStore` paths. Scope/freeing: a write-through store of a
     value into a referent in another region is E12c's placement into the referent's region (scope.olang
     `bindResult`/stores) - test with an arena churn; the evaluator (eval.olang mir Assign through Deref) should follow
     from the typed tree.
   - `:=` of a reference (`declName`, the `v.Ty == null or v.Infer` branch, `inferred`): declare a value - read through
     the reference (`c.read(nsp, Deref(...))`), as text already is (`t == c.textType()` line); unique values (T13b
     `uniqueRef`) and generational ones (T13d `genRef`) need a decision: `:=` of an existing unique value can only be
     a link (`:~`) or a move - make `:=` refuse with a hint `:~`; arrays: SPEC says `Array<T>` is a value already.
   - `==`/`!=` (`Checker.equality`): the branch "T33: two any values ... / struct or enum references" (`PrimOp.Same`)
     becomes contents: both non-null references compare their referents by E10's value rules (partsEqual / the
     `Helper.Equal` of the referent type), a null equal only to a null (as the Eq-with-nullable branch does); `any`
     references have no common contents - refuse `==` on `any` with a hint `is`. Function values: decide (keep `==` as
     identity, or `is` only); today `is` on two function values calls `equality`, so it stays correct either way.
     The prelude's Eq-declaring types are unaffected. Check every internal `c.equality` caller (partsEqual, caseCompare,
     the lane `LanesEqual`) - only written `==` changes.
   - generic.olang (`binaryType`), cond.olang (build-time conditions) need nothing; `identityPrim` / `oldForm` go.
4. Delete the "Transition" paragraphs (SPEC S4f, E10c, E10d), S4a's repoint text (S4a becomes "the old meaning"),
   E10's "any other reference: identity" item; settled.md and HISTORY (a stage-2 section); `make verify` (full).

## Surprises and decisions taken

- `is` binds at 4 (with `==`), not at 5 as October's `is` did: the migration is then an operator swap only.
- The parser normalizes `x is null` into the `==`-with-null tree; unparse and `-dump` show `== null` for it. If stage
  2 wants the written form back (diagnostics quoting via unparse), add a flag rather than a new Expr case.
- `r ~ null` unlinks a `?&` (allowed - null is no storage, but not a new value either; mine).
- `r is v` with `v` a value place is allowed (is r linked to v); two values, or a value with no place, are errors.
- `:~` is for locals (and a for's first clause); a top-level global `:~` is not read by load.olang (none exist).
- `olang fix` does not reach assign_migrate in stage 1: driven tools run only on files the compiler reports an error
  in (see stage 2 step 2). tools/keyword_rename does not rename a local named `is` (text-based; it cannot tell the
  keyword from the name) - the one such local (checks/aistudy p17) was renamed by hand.
- On six test files the tool found 9 links (reference fields and elements of a type with a back link, a lambda's)
  and 16 null tests, 0 defines and 0 identity tests - expect `define` to be the largest class in the compiler.
