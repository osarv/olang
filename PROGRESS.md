# W4 progress (field sets of two scopes)

Done:
- scope.olang: field sets (fsBody, fieldSet): a field viewing a constructor argument's referent reached through an
  element is bound where the body's own constructor calls bound it (one term or an O12 set), where every instance of the
  type the body reaches is its own; derivedAt resolves a call's derived scope the same way. Bug fixed on the way: a build
  through such a field of an element-reached instance (`arr[k].cur.next = N()`) was built in the container's scope.
- Precompiled modules (B3i): `compile` with OLANG_OBJECTS records the module apart (olang.olang markApart); a build with
  that store refuses an alias store into its bound fields (FieldSetPrecompiled). checks scenario `fieldset` passes.
- checks/cases: o23aliaswrite, o23aliasmethod are run cases now; o25gfieldbinding reads back after a churn.
- T2 edit kind "a field's set widens (W4)" (incremental scenario passes), fuzz/editgen case 4.
- SPEC O23, O23a, O25g, B3i; HISTORY; docs/settled.md, docs/refusals.md.

Next: goldens (tok, ast, diag, layout, run), scopesan, scopefuzz SEED=7 COUNT=300, fuzz free 1 300 3 6, make verify.
