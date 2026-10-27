# wt-attrs: typed attributes, function reflection, json key policies (hand-off)

Brief: decisions.md QBK 4, QBM, QBN, QBO, "Attribute rules settled with the user 2026-10-26".

## Done (all committed)
- SPEC G39 (attributes), G40 (Attr/HasAttr), G41 (Functions/Methods), R8 in unrolled walks, R20 AttrError, L16 `@`,
  D1/D8/T17/C2 grammar, B11b.
- Parser/AST (Attr, hidden globals), checker (attrCall/attrExpr/attrTypeOk/attrsChecked/attrRead/reflFnCall,
  copiesDiffer), generic (AttrsOf, FuncDescriptor, FnKey, ModuleFns, TypeMethods), interp.Bake AttrNotBuilt,
  prelude reflect (AttrError, attrGot/attrMissing, FuncInfo), fmt, unparse, explain, doc, session.
- std/json Naming + Key + Skip; std/csv struct records; std/flags Read<T> + Help + Short.
- tests/attrs.olang, tests/attrmod.olang; 16 checks cases; goldens recaptured; CLAUDE.md, HISTORY.md, READMEs.

## Decided (mine) - see HISTORY.md "Typed attributes, function reflection, json key policies"

## Next
- make quick clean, then one full verify (`/home/user/vlock make verify > verify.log 2>&1`), commit, push.
