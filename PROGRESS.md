# wt-strplus progress (deleted at the end)
Change: text joined by `+` (String.Plus, prelude); adjacency removed (E11b).
Design: parser builds Binary(Plus); checker turns a `+` with a text operand into the existing typed.Text join
(flattening nested text joins), so scope/lower/eval/emit keep today's one-allocation join. Expr.Join removed from the AST.
Parser keeps an `Adjacent` mode (old reading) only for tools/textjoin_migrate.olang, recording each gap.
Build: build/olang0 = baseline compiler (old syntax, built at start); build/olang0 build -quick -output build/olang1 compiler/olang.olang (~5 min)
## Done
- tool + migration (864 files), catch-default grouping fix, SPEC/settled/PRINCIPLES, checks cases, tests/textplus.olang
- olang1 = new compiler built from old src by olang0; olang2 = from migrated src by olang1 (-quick)
- olangC (from all fixes) fixed point OK; tok/ast/layout/diag goldens recaptured; checks subset 89 ok; oann trial done
## Next
- fixed point (build/A.log), targeted tests, goldens, consistency, editors, HISTORY, benchmark/IR proof, oann trial, seed
