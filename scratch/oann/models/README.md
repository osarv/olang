# models

The reference models of oann (docs/redesign.md, sections 1.5 and 4.1): each a config, the layers made from it (`New`
registers them on an `ad.Graph` before `Plan`), a `Logits`/`Task`/`Lm` that records the forward pass and hands the
loops (`nn/train`, `nn/generate`, `nn/quant`) their handles. They are built from `nn/layers` and tested in F32 and BF16
from their first commit; the numbers they train to are in the table below, and the programs that measure them are in
`examples/`.

| file | what | trains to |
|---|---|---|
| `mlp.olang` | `MlpConfig`, `Mlp`: dense layers with an activation between them, softmax cross-entropy; `MlpConfig.Mnist()` is 784-128-10 (101 770 parameters); `Int8` makes its `quant.Model` | MNIST 97.73% after 10 epochs, F32 and BF16 (M1, `examples/mnist_mlp.olang`) |
| `cnn.olang` | `CnnConfig`, `Cnn`: stages of a 3x3 convolution (padding 1), ReLU and 2x2 max pooling, then a dense layer; `CnnConfig.Mnist()` is 16 and 32 channels (20 490 parameters); `Int8` | MNIST 97.29, 97.93, 98.48% after epochs 1 to 3 (`examples/mnist_cnn.olang`) |
| `gpt.olang` | `GptConfig`, `Gpt`: GPT-2's decoder with options - rotary positions, RMS norms, a gated SwiGLU perceptron, an untied head, dropout; `GptConfig.Char` is round 2's character transformer, `GptConfig.Yardstick` the 10.4 million parameter model of M13; `Config.Params()` is the parameter count | tiny Shakespeare validation loss 1.7961 nats a character after 2000 steps (M3, `examples/charlm.olang`); TinyStories 2.880 nats a token at 1.47 million tokens (M13, `examples/tinystories.olang`) |
| `ssm.olang` | `SsmConfig`, `Ssm`: a token embedding, blocks of Mamba's selective scan (`layers.SsmBlock`) or the gated delta rule (`layers.DeltaBlock`), a final norm, the tied head; no positions to learn; `SsmConfig.Yardstick` is 9 blocks of 384 (10.2 million parameters) | tiny Shakespeare 1.5725 after 2000 steps (`examples/charlm_ssm.olang`); TinyStories 2.760 at 1.47 million tokens (M13) |

A model's parameters are registered in one order - embedding, positions, blocks, final norm, head - so a checkpoint
(`g.Save`) names them `param.K` by that order and loads into any graph of the same model; `Gpt` is exactly
`train.LanguageModel.Gpt`'s model (a test holds the two to the same parameters and logits). A model with a scan block
generates by `generate.Rerun` (a recurrence keeps no state between `Forward` calls); a GPT generates through the key-value
cache (`graph.Graph<E>(1, 1, Mode.Captured, true)` with `Lm(g, false)`).

Each file's tests hold its parameter count to the graph's, a gradient check where the model is new (the CNN and the SSM
through the whole network), a short training run on a task a small model solves (the loss falls, a held-out set is classified
right, the run repeats bit for bit), the key-value cache against the whole forward (GPT, rotary and gated included) and
a step that allocates nothing (the resident memory does not grow over 20 steps after the first). `olang test
models/FILE.olang`; `make test` runs them all.
