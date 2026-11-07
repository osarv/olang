# Round "qbt" (wt-qbt, /home/user/wt/qbt; opus high) - type-level builders

Read /home/user/review/rounds/finish-rules.md first: the rules of work for today (no full verify, builds through
/home/user/blk, one quick through vlock at the end).

## Decided by the user (2026-10-27, QBT: "I want it with a)" - reversing the earlier "no type-level functions")

Type-level builders: `fn Color.FromHex(t String&) Color ? E` - declared in the type's module, giving a value of its
type (bare, `&`, `?&`, with errors), built through the constructor (T13); called `Color.FromHex(t)`. Placement (a):
every function giving a value of a type its module declares and taking no value of that type is declared on that type -
a plain module function of that shape is an error naming `T.Name`.

Decided by the coordinator at the time (refine where building shows better, recorded as yours): the prelude's builders
move (`String.FromC(p, max)`, `F64.FromBits(u)` and the other FromBits - today `p.StringFromC(max)`,
`u.F64FromBits()`; `Vec<T>.WithCapacity(n)` if it exists); std's move (net.IP.Parse, net.Addr.Parse, net.Conn.Dial,
net.Listener.Listen, net.UDP.Listen, time.Duration.Millis and its kin, time.Date.Parse/Of, list.List.Of/From,
json.Json.Parse, ...) - by a migration tool in `olang fix` (tools/, a README line, fix's table, DEPENDENTS.md), over
std, compiler/, tests, checks, tools, bench, fuzz; doc/explain/the language server group builders under their type by
declaration; reflection gains `T.Functions` beside `T.Methods`.

Second part, same round: traits may require a builder (`T.Parse(t)`, `T.Zero()` in a trait - a generic calling
`T.Parse(text)` on its type variable), and then `t.ParseAs<T>()` becomes `T.Parse(t)` (one way; migrated).

## Note for later

The last round of the day (QBU + QBW) builds literals and comprehensions through a type-level builder named `FromIter`
(`C[a, b]` is `C.FromIter(...)`; every std collection declares one). Make sure a builder can be generic over the type's
parameters (`fn Vec<T>.FromIter<I Iterator<T>>(it I) Vec<T>` or however the spelling settles) and that a trait can
require one, and say in PROGRESS.md what that round can rely on.

Other rounds at the same time (finish-rules.md): errors carrying data (check's error paths), packed structs, drop
order (free.olang), section-8 NLL (scope.olang), the interpreter check, Columns. Your migration touches many files -
keep it to the tool's mechanical rewrite and commit it separately from the compiler change, so the coordinator can
re-run the tool after the other rounds merge.
