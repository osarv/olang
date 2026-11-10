# W4 progress (field sets of two scopes)

Done:
- scope.olang: field sets (fsBody, fieldSet): a field viewing a constructor argument's referent reached through an
  element is bound where the body's own constructor calls bound it (one term or an O12 set), where every instance of the
  type the body reaches is its own; derivedAt resolves a call's derived scope the same way. Bug fixed on the way: a build
  through such a field of an element-reached instance (`arr[k].cur.next = N()`) was built in the container's scope.
- msgs: FieldSetPrecompiled (B3i) - used where the struct's module is precompiled (Scoper.Apart).
- checks/cases: o23aliaswrite, o23aliasmethod are run cases now; o25gfieldbinding reads back after a churn.

Next:
- Apart: mark modules compiled apart (OLANG_OBJECTS + compile), the checks scenario (accepted from source, refused apart).
- T2 edit kind "a field's set widens", fuzz/editgen; SPEC O23/O23a/O25g/B3i, docs, HISTORY; gates.
