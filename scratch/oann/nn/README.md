# nn

What models are built from and trained with, on the autodiff graph (`ad/`). docs/redesign.md section 1.5.

- `layers.olang` - layers as plain data (handles and sizes) with a `New` on a graph that registers the parameters and an
  `Apply` that records the operations: `Dense`, `Embedding` (also a tied output head), `Norm` (layer or RMS), `Mlp`,
  `Conv`, `SelfAttention` (rotary positions optional), `AttentionBlock` (pre-normalized, a GELU or gated SwiGLU `Feed`,
  dropout), `Transformer` (GPT-2's decoder), and the scan-based residual blocks `SsmBlock` (Mamba's selective scan over
  the graph's `SelectiveScan`) and `DeltaBlock` (the gated delta rule). Starting values are PyTorch's for `Dense` and
  `Conv`, GPT-2's for the transformer.
- `optim.olang` - `AdamW` and `Sgd` over ONE FLAT REGION (two tensors laid out alike: a graph's
  `Params()`/`ParamGrads()`, a settling system's, a BF16 graph's `Masters()` with its BF16 gradients), the runs of the
  region that decay (`Spans(g)`), `ClipNorm`, the schedules `WarmupCosine` and `WarmupLinear`, and `Projector`, the
  delta-rule input projection that stands in for weight decay.
- `train.olang` - the loops: `Epoch`/`Evaluate` for a classifier over a `loader.Loader`; `LmStep`/`LmEvaluate` for a
  language model over any batch source with `Random` and `At` (data/text's `Windows`, data/tokens' `Tokens`); `Fit`, a
  whole run with reports, a record through io/runlog and checkpoints; `Save`/`Resume`, safetensors files holding the
  parameters, the optimizer's state and the step, which resume a run bit for bit.
- `generate.olang` - `Sample` and the generators: `CachedTokens`/`Cached` through a decoding graph's key-value cache,
  `RerunTokens`/`Rerun` running the context again, on token ids and on text.

- `quant.olang` - INT8 post-training quantization for inference over kernels/gemm's `GemmI8`: `Weights` (symmetric per output channel), `Range` (dynamic or calibrated activation ranges, U8 with a zero point), `Model` (dense layers, convolutions and max pooling read from a trained graph's values, run on plain arrays by `Forward`; `Calibrate` and `Static`; `Bytes`), and `Quantize(g)` / `Dequantize(g)` / `LinearBytes(g)` for the graph's own hook (every `Linear` node in INT8 - a transformer's projections and perceptrons, its key-value decoding unchanged).

A step, an optimizer step and a training step allocate nothing: each has a test that runs 20 steps after the first and
asserts the process's resident memory did not grow.

Test with `olang test nn/FILE.olang`; `make test` runs them all. `make charlm` trains the character transformer
through them (M2, M3 of docs/redesign.md 4.3; `examples/charlm.olang`, the model is `models/gpt`).
