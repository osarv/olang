# examples

Programs that train and measure oann's models; each is the driver of a number in docs/redesign.md section 4.3, with its
arguments described at the top of the file. Build and run one from the repository's root with its make target
(`make mnist ARGS="10"`) or `olang build -output build/examples_NAME examples/NAME.olang && build/examples_NAME ARGS`.
MNIST is fetched into `data/mnist`, tiny Shakespeare into `data/shakespeare`, TinyStories into `data/tinystories`, once.

| file | what | make |
|---|---|---|
| `mnist_mlp.olang` | the 784-128-10 perceptron (`models/mlp`) on MNIST: AdamW, the input projection, or SGD; F32 or BF16 (M1) | `mnist` |
| `mnist_cnn.olang` | the small convolutional network (`models/cnn`); resident memory and a per-op profile (M9) | `cnn` |
| `mnist_int8.olang` | either trained, quantized by `nn/quant`: accuracy dynamic and static, size, batch 1 / 64 / 128 speed (M12) | `int8` |
| `charlm.olang` | the character transformer (`models/gpt`) on tiny Shakespeare through `nn/train.Fit`, its checkpoint, a sample (M2, M3) | `charlm` |
| `charlm_sample.olang` | text from its checkpoint, through the key-value cache and by running the context again | `sample` |
| `charlm_int8.olang` | the same transformer with its linear layers in INT8: loss, a forward's time, cached decoding (M12) | `int8lm` |
| `charlm_ssm.olang` | the recurrent model (`models/ssm`: Mamba or delta-rule blocks) on tiny Shakespeare with the same recipe, generating by running the context again | |
| `bpelm.olang` | the same model on byte-level BPE tokens, loss a character against the character model's | `bpelm` |
| `tinystories.olang` | `prep`, then a GPT or an SSM of 10 million parameters on TinyStories: loss curve, tokens a second (M13) | `tinystories` |
| `mnist_learn.olang` | MNIST by a settling system of `dyn`, taught by equilibrium propagation (M8) | `mnistlearn` |
| `xor_settle.olang`, `xor_spiking.olang` | XOR by rate and by spiking `dyn` systems | `xor`, `spiking` |
| `mnist_settle.olang`, `mnist_board.olang`, `bandit_settle.olang`, `sleep_retention.olang`, `nights.olang` | still on `circuit`, `board`, `agent` and `consolidator`, which C3 replaces (docs/redesign.md 4.2) | |
