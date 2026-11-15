# oann catch-up to olang v1 (374c1e3c) - hand-off note

Round 1: get every oann file compiling with today's olang and `make test` green, behaviour kept, rewriting only what the
language forces. The compiler: olang master 374c1e3c, built with `make` in its checkout (`build/olang`); the makefile's
`OLANG` defaults to `../olang/build/olang`.

## How a file is migrated (what worked)

1. `import "std/linalg"` -> `import "linalg"` (or `"../linalg"` from a subfolder): std has no linalg since olang
   b6e4a103; `linalg.olang` here is its last version, brought to today (a7276a3, 35 tests pass).
2. Protect matrix deep copies before `olang fix`: `sed -i 's/\.Clone()/.ClonePH()/g'`, and back after. Matrix keeps
   `Clone()` (a matrix is a view holding its data by reference, so the supplied `Copy()` would share the data);
   clone_migrate would otherwise turn every `.Clone()` into the shallow `.Copy()`.
3. Matrix's copy-from method is `m.CopyFrom(src)` (was `m.Copy(src)`, which now clashes with the supplied Copy):
   `sed -i 's/\.Copy(\([^)]\)/.CopyFrom(\1/g'`.
4. oann is written before QY/G8b: run `tools_bare_typevars` and `tools_syntax_migrate --old` (built by `olang fix` into
   `~/.cache/olang/fix/<key>/`) before `olang fix FILES`; then `tools_precedence_migrate` (built from olang's
   `tools/precedence_migrate.olang`; the code predates E5 - it found nothing in the core modules).
5. `olang fix`'s driven tools add `?` and `try` wherever linalg now fails with ShapeError. oann's rule (DESIGN section
   25): a shape on the graph's own buffers is oann's invariant, so remove those `?`/`try`, compile, and put `x!` on each
   call the compiler names (E15) - a loop over the compiler's rows did it (`.work/bangloop.sh`, not committed: compile,
   insert `!` after each named call, repeat). Generic bodies are checked per instance, so compile a module that
   instantiates them (nn instantiates ops, conv, quant) to see them all. Tests keep `try`.
6. D3a: a parameter named `T` beside a type variable `T` - renamed `ctx` (the context length). D3b: unread locals and
   loop names `_`. Then style: `:` one-line bodies, guard clauses, at most three or four blocks deep (split helpers).

## Done (wt-oannport)

- linalg (35 tests), kernels (2), conv (4), ops (3), quant (7), nn (15), layers (2), optim (7), vision (3),
  checkpoint (4), train (1), generate (1) - all pass; the makefile in words; DESIGN section 25; README.md.
- Merged in: wt-oanndata (datasets, sparse, store, tokenizer, bench ports, repro re-checks) and wt-oanncirc (circuit,
  board) as they were at the time of merging.

## Decided this round

- linalg.olang is oann's own module (std dropped it); kept whole, its API as std had it.
- Shape errors inside the graph end the program (`x!`), as linalg's aborts did; the public API stays infallible.
- Matrix: `Clone()` deep copy kept, `CopyFrom(src)` for copy-from.
- The context-length parameter is `ctx`; fields and payloads keep `T`.

## Next (round 1 remainder, other agents)

- consolidator, agent (circuit and board done on wt-oanncirc), examples/, bench/*.olang; then the full `make test`.
- Not measured yet: an MNIST epoch's time and accuracy (`make mnist`), a transformer step (`make lmbench`) against the
  numbers in DESIGN sections 8, 11 and 22 - the first thing to check once examples/ and bench/ build.

## Module by module, against the redesign (olang direction, "oann's design", 2026-11-09)

The redesign: Tensor<T> as storage (N-d), a dynamical-system core - populations with named state at several timescales
on Columns<T>, connections as objects, update rules in place, free and nudged phases - and a lean backprop path as the
yardstick, kernels in olang, no BLAS.

- linalg - reshape: its GEMM, batched and fused products and element kernels are the kernels to keep; Matrix (2-D,
  stride) becomes the N-d Tensor<T>.
- kernels - fits: small run kernels and Up/Down; fold into the tensor kernels.
- ops - reshape: forward/backward per primitive on matrices are the backprop path's; move to tensors.
- nn - reshape: the recorded graph, arena and Plan are the lean backprop path; its Op enum and Matrix views move to
  tensors; decoding cache and INT8 hook keep.
- layers - fits the backprop path (Dense, Mlp, Norm, attention, Transformer); follows nn.
- optim - fits as is (AdamW, Sgd, schedules, clipping); its projection regularizer is settling-specific - keep or drop.
- conv, vision - reshape: channels-last images as rows become a 4-D tensor; the patch products stay.
- quant - fits as an inference path; would follow the tensor storage.
- checkpoint - fits (safetensors); names follow the layers.
- train, generate - fit as the yardstick's loop and sampling; follow nn.
- circuit, board, store, consolidator, agent, sparse - replace: the settling networks become the dynamical-system core
  (populations on Columns<T>, connections as objects); their measured behaviour (docs/settling.md) is the acceptance.
- tokenizer, datasets/* - fit as they are.
