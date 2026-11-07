# Round qbt - type-level builders (QBT)

Brief: /home/user/review/rounds/qbt-brief.md (rules: /home/user/review/rounds/finish-rules.md).

## Done (commits on wt-qbt)
1. 1e5eefc SPEC: D19 (builders), D19a (placement), T30b (a trait requiring a builder), T.Functions (G41), M19/M19d,
   E33 (F.FromBits), X15 (String.FromC), T.Parse, B7a/B11b/B14.
2. 0c9c07b compiler: parse `fn Owner[<args>].Name`, names, generic (builder table, defaults, owner binding), check
   (calls, values, placement, rules, traits, G18a needs, FromBits supplied), explain/doc/session/needs/unparse,
   reflection T.Functions, B7a targets; the prelude's String.FromC / T.Parse; msgs's Msg moved to compiler/diagmsg.olang;
   tools/builder_migrate.olang (+ fix's table, tools/README); checks cases d19*/t30b*/e33width; tests/builders.olang.
   This commit also holds the tool's output in the files edited by hand (check.olang's litv builders etc.).
3. 49310a9 the repository migrated by the tool alone (std compiler tests checks tools bench fuzz).
4. records (CLAUDE.md, SPEC/READMEs' std names, HISTORY.md).

## For the coordinator after merging other rounds
- Re-run the tool (idempotent): `build/olang build tools/builder_migrate.olang && build/tools_builder_migrate std
  compiler tests checks tools bench fuzz` - it moves any new function of the D19a shape and rewrites old calls of the
  builders (`time.Millis(5)` -> `time.Duration.Millis(5)`), and the prelude's `x.F64FromBits()`, `p.StringFromC(n)`,
  `t.ParseAs<T>(b)`. It leaves a checks case whose first line is `# check: fail error[D19a]` as written.
- compiler/msgs.olang: a message another round added in the old shape `) Msg { return Msg(Diag.` becomes
  `) r.Msg { return r.Msg(Diag.`; `msgs.Msg` elsewhere is `diagmsg.Msg` (add `import "diagmsg"`). The Diag cases stay
  in msgs.olang.
- The seed must be regenerated (compiler/ uses builder syntax): `make seed` - NOT done here (left for the merge, so it is made once from the merged compiler).
- Goldens: tokgold/astgold/layoutgold (the migration edits many files), diaggold (new messages, FromBitsReceiver
  gone, FromBitsWidth new), rungold (test names in intwidths changed).

## Decided (mine) - see HISTORY.md "Type-level builders"
- builder Name "Owner.Member" internally; no parameter may name the owner anywhere; one result a value of the owner;
  never inherited; a trait builder names one of the trait's own parameters (no Self); no `any` of such a trait.
- F.FromBits takes exactly the unsigned type of its width (a narrower one an error naming the conversion).
- the migration strips the type's name from a moved function's name where it is a camel word of it.
- Msg moved to compiler/diagmsg.olang (import cycle with msgs) rather than 840 `msgs.Msg.X(...)` calls.

## For the literals round (QBU + QBW, FromIter)
- A builder may be generic over its owner's variables and its own: `fn Bag<T>.FromIter<I Iterator<T ? E>, ? E>(it
  mut I&) Bag<T> ? E` works, called `Bag<I64>.FromIter(a.Iter())` or `Bag.FromIter(a.Iter())`.
- A trait may require a builder (`type Collects<C, T> trait { C.Of(xs Array<T>&) C }`, `C.Of(...)` in a generic) -
  but not one with type variables of its own (T35 holds for builder requirements as for methods). FromIter generic
  over the iterator type cannot be required by a trait as things stand: take a concrete iterator type, or relax T35
  for builders in that round.
- Array/Vec's FromIter: the prelude may declare `fn Array<T>.FromIter(...)` / `fn Vec<T>.FromIter(...)` (built-in
  and prelude owners are the prelude's).

## Done after quick
- quick's failures fixed (facts through a builder's name, doc comment of a builder, generic builder's not-a-value reason, embedded test sources, diaggold import, b14 checks' expectations, fuzz generator, runner's re-export chain); goldens recaptured (tokens, ast, layout, diag); each failure re-run alone and passing; tokdiff/astdiff/layoutdiff/consistency clean.

## Next
- nothing; the seed at the merge.
