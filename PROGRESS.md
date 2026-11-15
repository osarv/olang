# wt-strplus progress (deleted at the end)
Change: text joined by `+` (String.Plus, prelude); adjacency removed (E11b).
Design: parser builds Binary(Plus); checker turns a `+` with a text operand into the existing typed.Text join
(flattening nested text joins), so scope/lower/eval/emit keep today's one-allocation join. Expr.Join removed from the AST.
Parser keeps an `Adjacent` mode (old reading) only for tools/textjoin_migrate.olang, recording each gap.
Build: build/olang0 = baseline compiler (old syntax, built at start); build/olang0 build -quick -output build/olang1 compiler/olang.olang (~5 min)
## Done
## Next
