# A writable reference field pins its instance (for decision)

**Open, 2026-11-23.** Found tracing why the compiler's lower and emit phases grow from 2.5 to 4.3 GB on a cold
self-build (plan.md, "Build memory, open"). Nothing in the language is changed by this note; it asks one question.

## What holds the memory

`explain compiler/lower.olang Lowerer.LowerKey` says both "lw outlives return" and "return outlives lw": a caller must
place each lowered function where the `Lowerer` lives, so every function's MIR is kept until lowering ends. Two
statements of `Lowerer.lowerAs` cause it:

1. `b := lw.Bodies[id]`. `Vec<mut typed.Body&>.At` holds its result exactly to its receiver's scope (O25g: a
   writable reference to storage holding references). The local `b` is kept where the result goes (O26a), so the call's
   result was bound there and the callee's exactness asked the vector's scope to be the result's. That is more than
   §8 needs: the local can name the element where the vector lives, which outlives the result, and only "lw outlives
   return" follows. Fixed on branch `wt-lwplace-exactlocal` (scope.olang: `bindResult`, `callValue`, `letMoved`), checked
   only on small programs. It is not merged: with item 2 left, it changes nothing measurable.
2. `ln mut lowering& = lowering(lw, b, lw.P.T, f)`. `lowering` holds `L mut Lowerer&` and `T mut types.Table&`, bare
   fields. A bare field lives in the instance scope, and where something can be stored through it the instance must
   live exactly where its referent does (C2d, O25g; the constructor's summary says "I outlives L" and "L outlives I").
   So every `lowering` - with the `mir.Fn` it holds by value, which `lowerAs` returns - lives as long as the `Lowerer`.
   `emit`'s `fnEm(E mut Emitter&, F mir.Fn&, ...)` is the same shape: each function's emitter lives as long as the
   `Emitter`, and the `mir.Fn` it reads must live that long too.

Item 2 follows from the rules. The exactness is needed. A method of `lowering` reads `ln.L` at the receiver's scope
(O20). If the instance lived in a shorter scope than the `Lowerer`, a method could store into the `Lowerer` something
built in that shorter scope. The compiler's code cannot avoid this short of not keeping the output in the helper.
`lowering`'s hundreds of methods would then have to take the `mir.Fn` as a parameter, and `fnEm`'s likewise.

## Question 1: where does a writable reference field's referent live?

A struct that keeps a writable reference to long-lived shared state (a context, a table, an arena owner) beside its own
short-lived work is the usual shape of a pass, a parser, a builder or a GUI handler. Today its instance lives as long as
the shared state.

- **A (default, in effect): keep C2d/O25g as they are.** Such a helper lives where its shared state does. A program
  keeps its per-item output out of it: the output is passed to each method, or built by the caller and handed in.
  Nothing changes in the language. Here, lower.olang and emit.olang are restructured that way (large, mechanical).
- **B: give such a field a binding of its own.** C2d's "binding of its own" (O28, read at a derived scope through
  O23a) today goes only to a field kept longer than its instance. B also gives one to a field something can be stored
  through, whenever being exact would make the instance live longer than its other uses need. The instance is then
  placed by its uses (`ln` in `lowerAs`'s result scope, or its frame). Building through the field goes to the field's
  own binding: callers that know the construction pass it as a hidden scope argument, as they do for O23a. Where a
  binding is not known (an instance read out of a collection), the scope is found from the referent's address at run
  time (O29). Cost: hidden scope arguments on such methods, and a run-time lookup only where no caller knows the binding.
- **C: scope parameters in struct types.** Each reference field has a scope variable in the struct's type, inferred and
  never written, carried wherever the type goes, like Rust's lifetime parameters but inferred. There is no run-time
  cost and no lookup. It is the largest change: types gain scope arguments, and generics, `any`, function types, the
  scope records and the evaluator all carry them.

**Recommendation: B.** It reuses the field bindings and derived scopes §8 already has, so it is a change of one rule in
the inference and leaves the language as it is (principle 4). It frees the per-item storage of every pass-shaped
helper, not only the compiler's (principle 1, "free when we can"). The run-time lookup it can fall back on is O29's,
which already exists for the same reason. Before B is built, measure how often that fallback fires on the compiler, oann
and the corpus. C is the clean form if B's fallback turns out common.
