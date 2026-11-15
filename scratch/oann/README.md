# oann

Neural networks in olang: a recorded graph with automatic differentiation, layers,
losses, optimizers, transformers, convolutions, INT8 inference, safetensors checkpoints, byte-pair tokens - and
settling networks, circuits that learn by settling into a state (docs/settling.md), with an agent built on them. Every
kernel is olang; nothing links a BLAS. `DESIGN.md` is the design record: what each part is, why, and what it measured.

## Building and testing

oann needs the olang compiler: check olang out beside oann and run `make` there, which bootstraps `build/olang`.

```
make test                          # every module's tests (OLANG=path/to/olang names another compiler)
make mnist ARGS="10 adamw 1 1"     # the 784-128-10 perceptron on MNIST: epochs, optimizer, seed, threads
make charlm ARGS="2000 1 2"        # a character transformer on tiny Shakespeare
```

The makefile lists every program with its arguments (data, cnn, bpelm, lmbench, int8, board, sleep, nights, ...).
Downloads go to `data/`, everything built to `build/`; neither is in git.

## Layout

Each `.olang` file is one module, imported by its path relative to the importer (`import "../nn"`).

| | |
|---|---|
| `tensor.olang` | `Tensor<T>`, the N-d strided view (rank up to 6): Slice, Select, Permute, Expand, Reshape, Rows, Mat, Flat, element kernels, conversions between storage types, `@` batched (the redesign's storage layer; docs/redesign.md 1.1) |
| `linalg.olang` | `Matrix<T>` and its views, the GEMM (workspaces, batched, fused, from patches), element kernels, reductions |
| `kernels.olang` | small kernels over runs of arrays, and the storage/computation conversions of mixed precision |
| `nn.olang`, `ops.olang` | the graph: recording, planning one arena, forward and backward; each operation's kernels |
| `layers.olang`, `optim.olang` | dense layers, MLPs, normalizations, attention blocks, transformers; AdamW, SGD, schedules |
| `train.olang`, `generate.olang` | the training and evaluation loops; sampling and cached decoding |
| `conv.olang`, `vision.olang` | convolution and max pooling on images held as rows; the convolution layer |
| `quant.olang`, `checkpoint.olang` | INT8 post-training quantization; safetensors |
| `tokenizer.olang` | byte-level BPE |
| `dyn/` | the redesign's dynamical-system core: systems of populations and connections, the settle (`dyn/README.md`) |
| `circuit.olang`, `board.olang`, `sparse.olang` | settling networks; the FPGA engine simulated in integers; sparse products |
| `agent.olang`, `store.olang`, `consolidator.olang` | an agent living on a circuit; its memory store; sleep |
| `datasets/` | IDX, MNIST, a character corpus, and the Loader over a Dataset trait |
| `examples/` | the programs the makefile runs: MNIST, transformers, settling networks, INT8 |
| `bench/` | benchmarks and the checks against reference implementations (`bench/ref/`) |
| `docs/settling.md` | settling networks: the model, the papers it rests on, the open questions |
| `docs/redesign.md` | the redesign plan: tensors, kernels, autodiff, the dynamical-system core; round 3 work packages |
| `repro/` | minimal programs for olang issues found here (`repro/README.md`) |

`PROGRESS.md` is the hand-off note of the work in progress.
