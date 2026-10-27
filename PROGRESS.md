# wt-attrs: typed attributes, function reflection, json key policies (hand-off)

Brief: decisions.md QBK 4, QBM, QBN, QBO, "Attribute rules settled with the user 2026-10-26".

## Done
- AST: `ast.Attr(Sp, X, Global)`; `Attrs` on Param, Func, CaseDecl, TypeDecl, VarDecl (fields); VarDecl.Hidden marks
  the hidden global holding an attribute's value (name "@<offset>").
- Parser: `@Path[<T>][(args)]` before type/fn decls (lines above or same line), enum cases, parameters (not a
  lambda's), constructor fields (not a pun: AttrPun); elsewhere AttrPlace. An `@` beginning a line is never matmul.
  Hidden globals pushed beside the item (same top-level-if branch).
- Checker: hidden global's value: a bare type path called with no args, failures end it as `!` (attrExpr); type must
  be a declared struct/enum/declared number type not of the prelude (AttrType); one per type per declaration
  (AttrTwice). interp.Bake: a hidden global the evaluator refuses is AttrNotBuilt.

## Decided (mine)
1. Grammar: `@` + path, type args and args touching; on lines above or before the declaration on its line.
2. A pun field has its parameter's attributes; attributes written on a pun are an error.

## Next
- Attr<A>() / HasAttr<A>() on descriptors and types (G40), prelude AttrError.
- Function reflection (G41): api.Functions, T.Methods, descriptors, calls.
- std/json key policies + Key/Skip/Keys; std/csv struct mapping; std/flags.
- fmt (prefix @), unparse/doc/explain/lsp, SPEC G39-G41, tests, checks cases, CLAUDE.md, HISTORY.md.
