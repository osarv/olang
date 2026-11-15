# data

What a training loop reads from. The first four are `datasets/`'s modules moved as they are (the old folder stays until
the cut-over, C3), the last is new.

- `idx.olang` - the IDX file format MNIST is distributed in.
- `loader.olang` - `Dataset`, `Labeled` and `Loader<D>`: seeded random batches, filling a batch allocates nothing.
- `mnist.olang` - MNIST (and its family), fetched once with curl into `data/mnist` (git ignores it).
- `text.olang` - a text as characters: vocabulary, tokens, `Windows` over them; tiny Shakespeare is fetched into
  `data/shakespeare`.
- `tokens.olang` - a corpus of token ids in one binary file (little-endian `U16` or `U32`, nanoGPT's `.bin`), streamed:
  `Tokens.Open(path, ctx)`, then `Random` (random windows of `ctx + 1`, seeded) or `At` (an ordered pass) into the
  graph's token and target rows. The file stays on disk and a fill allocates nothing (the test measures resident memory
  over 20000 batches); a fill may run on a task while the previous batch trains.

Test with `olang test data/FILE.olang`; `make test` runs them all.
