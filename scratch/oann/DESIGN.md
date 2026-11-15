# oann - design

oann is a neural-network library written in olang: a recorded graph with automatic differentiation, layers, losses,
optimizers, datasets and the training loop, on top of a 2-D `Matrix<T>` (`linalg.olang`, oann's own since olang dropped
std/linalg: section 25) and std/rand's seeded generator. The C version it replaces is gone; `bench/ref/mlp.c` is the one C file left, a reference
trainer over OpenBLAS written for the benchmark.

The yardstick is olang's own (PRINCIPLES.md in the olang repository): no manual memory management, C-like performance
with no cost the code does not show, natural language, minimal syntax. Concretely for oann: **a training step
allocates nothing of its own**, every hot loop is a GEMM or one pass over memory, and a model is written the way a
PyTorch or Flax user would expect.

**State (phase 7):** the graph, its kernels, layers, softmax cross-entropy, SGD and both AdamW variants are built, and
the 784-128-10 perceptron trains on MNIST to 97.7-97.8% test accuracy in 10 epochs (phase 2). **Transformers are
built** (section 11): tokens, embeddings, learned positions, layer and RMS normalization, fused multi-head attention,
dropout, padding rows, GPT-2's blocks, a warmup-then-cosine schedule, gradient clipping, checkpoints and generation
with a key-value cache - every backward checked against central differences, the first training steps equal to the same
model in numpy to six decimals, and a character-level model trained on tiny Shakespeare. **Phase 4** (section 16):
a byte-level BPE tokenizer, and the transformer trained on its tokens; safetensors checkpoints; convolution and max
pooling (im2col and one product for the whole batch), and a small CNN on MNIST. **Settling networks** (section 17,
docs/settling.md): phases 1 and 2 - circuits that settle, learning by free and nudged phases, a spiking variant, and an
agent with memories and arousal. **Built with olang 9621af3** (section 8): code for this machine by default (AVX-512
with FMA here) and every product through std/linalg's `GemmWorkspace` - an MNIST epoch went from 2.39 s to 0.69, now
ahead of the C reference over OpenBLAS (0.93 s, interleaved), and a transformer step from 512 ms to ~200. **Phase 5**
(section 18): attention's products on std/linalg's `Gemm` (attention 1.5x faster at context 64, 2x at 256), and mixed
precision - a `Graph<BF16>` stores everything in BF16 and computes in F32 with F32 master weights, matching F32's
accuracy on MNIST and the character model with half the arena; on this compiler it runs 3.4-4.1x slower, its narrowing
to BF16 being a library call per element (repro/bf16narrow). A `Dataset` trait and `Loader<D>` over it, and a graph
planned `Ahead` filling the next batch on a task while the current one trains. **Phase 6** (section 19, olang
472373d): `mut` only where a reference's target is written (olang's permissions); attention's six products are each
one std/linalg `GemmBatch` over the heads, causal ones confined to their triangle (attention 1.3x faster at context
256, its forward now mostly the softmax's exponentials); the convolution's forward packs its patches straight from the
images (`GemmPatches`: its forward 1.2x faster in the CNN, the same results bit for bit); `GemmAct` measured and not
adopted. **Phase 7** (section 20, olang db2af5d): mixed precision as fast as F32 (a transformer step 115 ms in BF16
against 119 in F32, 215 before), attention's softmax by std/linalg's `FastExp` (its forward 1.3-1.9x faster), and an
agent may live its days into a consolidator (docs/settling.md 2.14). **olang 999ae6c** (section 21): a copy of what
is reached read-only is read-only, and std/linalg's destination forms take `mut` - 38 `mut`s added, nothing else.
**Phase 8** (section 22, olang efdb82c): INT8 post-training quantization for inference (`quant.olang`) - weights per
output channel, activations per tensor (dynamic or calibrated), a U8 x I8 -> I32 product with its dequantization fused:
the perceptron and the CNN lose nothing on MNIST's test set (97.10 -> 97.08%, 97.78 -> 97.79%), take 3.9x and 2.7x less
memory, and run 3.1x faster at batch 1 (the perceptron) and 1.1-1.3x faster at every batch (the CNN); the character
transformer's linear layers in INT8 (`Graph.QuantizeLinear`) keep its validation loss (1.8063 -> 1.8060) and decode 2.1x
faster; a compute-bound product is held to 0.6-0.8x F32 by the instruction LLVM 18 picks. The element-wise kernels are
std/linalg's `Map` again.

## 1. The operand: Matrix

Every value oann computes with is a `linalg.Matrix<T>`: **rows are samples (the batch), columns are features**. There
is no N-d tensor - data is interpreted in one place only, by the operation that consumes it.

- **A sample is a row.** A dense layer maps `[B, in]` to `[B, out]`; a loss reads one row per sample.
- **Weights are `[out, in]`** (PyTorch's layout, so checkpoints map one to one onto PyTorch's): a dense layer is
  `y = x W^T + b`, its backward `dx = dy W`, `dW = dy^T x`, `db` = the column sums of `dy` - each one `linalg.Gemm`
  with transposes as parameters. Nothing is ever transposed in memory.
- **A bias is a `1 x C` matrix**, added to every row by an explicit row operation; there is no implicit broadcasting.
- **Views are by row stride.** A matrix is shape, stride and a reference to storage; `linalg.Matrix.View(data, offset,
  rows, cols)` makes one over the graph's arena without allocating, and a short batch is the view of its first rows.
- **Structure beyond two dimensions lives in the operation.** A convolution reads each row as one `H x W x C` image,
  channels last (im2col into a workspace, one GEMM for the whole batch: section 16); attention reads rows as `B x T`
  tokens and its heads as column blocks (section 11).

oann is generic over the element type: MNIST trains in `F32`, the gradient checks run in `F64`, and a `Graph<BF16>` is
mixed precision - every value and gradient stored in BF16, every operation computed in F32, the parameters' masters in
F32 (section 18).

## 2. Automatic differentiation: a recorded graph, replayed every step

The model is run **once**, against a `nn.Graph<T>`: every operation appends a node (an `Op` and its inputs' handles)
and gives its handle, a `Var`, back. `g.Plan(r)` then decides which nodes need gradients, lays every value, gradient
and saved intermediate out in **one arena**, allocates it once and draws the parameters' starting values from `r`. A
training step is `Forward(n)` (the nodes in recorded order), `Backward(loss)` (in reverse, each op's vector-Jacobian
product) and the optimizer's `Step(g)`, none of which allocates.

Each primitive has a hand-written backward (in `ops.olang`); the graph composes them, so a residual connection, shared
parameters or a second loss need no new backward code.

### The alternatives, and why not

1. **Layer-level backward** (the old C version, Caffe, Darknet): every layer writes forward and backward over its whole
   computation, and a container chains them. It does not compose - a residual, a shared embedding or two losses need
   special layers - and without run-time interfaces the container would be an enum of every layer type.
2. **An eager tape** (PyTorch's define-by-run): ops run as they are called and record themselves. olang's arenas
   would make that cheap (one scope per step), but every step would rebuild every activation, and nothing could be
   planned once: no buffer layout, no fusion, no thread decisions. Kept possible (section 12): the op set and kernels
   are shared, so an eager tape can be added beside the graph.
3. **A recorded static graph** (JAX's jit, XLA, TFLite's arena planner, tinygrad's schedule) - the choice. Shapes are
   fixed per graph, which is what MLPs, CNNs and transformers trained at a fixed batch and sequence length have; a new
   shape is a new plan.

### Why it fits olang

- **Handles, not references.** `type Var I64` is nominal, so a handle is never mixed up with a count. A `Node` is plain
  data (`Kind Op`, its shape, its value's, gradient's and saved matrix's offsets); the graph holds a `List<Node>` and
  one arena `Array<T>&`, nothing in it refers to anything else, so the scope checker has nothing to prove.
- **The op set is a closed enum dispatched by `match`** (a switch - no indirect calls):
  `MatMul(a, b, ta, tb)`, `Linear(x, w, b)`, `AddRow(x, b)`, `Add`, `Sub`, `Mul`, `Scale(x, k)`, `Relu`,
  `LeakyRelu(x, slope)`, `Gelu`, `GeluTanh`, `Sigmoid`, `Tanh`, `Softmax`, `Embedding(tokens, table)`,
  `Positions(x, table, T)`, `LayerNorm(x, gain, bias, eps)`, `RmsNorm(x, gain, eps)`, `Attention(q, k, v, heads, T,
  causal)`, `Dropout(x, p)`, `SoftmaxCrossEntropy(logits, classes)`, `Mse`, `Conv2d(x, w, b, shape)`,
  `MaxPool2d(x, pool)`, and the leaves `Input`, `Classes`, `Tokens`, `Constant`, `Param(init, decay)`.
- **Views are values.** `g.Value(v)` and `g.Grad(v)` are `Matrix<T>` views of the arena, made per use for nothing.
- **Traits only as constraints.** A training loop takes `o mut <O optim.Optimizer<F32>>&`, so the optimizer's step is a
  direct, inlinable call.

### Graph semantics

| oann | meaning | PyTorch analogue |
|---|---|---|
| `g := nn.Graph<F32>(128, threads)` | a graph planned for batches of up to 128 rows; products split over `threads` tasks | - |
| `x := g.Input(784)` | a `[B, 784]` input the caller fills each step (`g.InputData(x)`) | a batch tensor |
| `y := g.Classes()` | `B` class indices, `I32` (`g.ClassData(y)`) | `targets` |
| `t := g.Constant(r, c)` | a matrix the caller sets and nothing trains: a target, a mask | a tensor without grad |
| `w := g.Param(out, in, init, decay)` | a trainable matrix; `decay`: weight decay applies to it | `nn.Parameter` |
| `g.Linear(x, w, b)`, `g.MatMul(a, b, ta, tb)`, `g.Mul(a, b)`, `g.Relu(h)`, ... | record an op, give its handle | ops in `forward` |
| `g.Plan(r)` | lay out the arena, allocate it, initialize the parameters - once | `torch.compile` |
| `g.Forward(n)` | run the batch's first `n` rows | `model(x)` |
| `g.Backward(loss)` | parameter gradients of `loss`, written fresh | `zero_grad(); loss.backward()` |
| `g.Backward(loss, true)` | added to the gradients already there | `loss.backward()` without zeroing |
| `g.Value(v)`, `g.Grad(v)`, `g.Scalar(loss)` | views of a node's value and gradient; a loss's number | `.data`, `.grad`, `.item()` |
| `g.Params()`, `g.ParamGrads()` | every parameter (or gradient) as one flat matrix | `parameters()` flattened |
| `t := g.Tokens()` | a token per row, `I32` (`g.TokenData(t)`) | `input_ids` |
| `g.Embedding(t, table)`, `g.Positions(x, table)` | gather the tokens' rows; add row `(Pos + r) mod T` | `nn.Embedding` |
| `g.LayerNorm(x, gain, bias)`, `g.RmsNorm(x, gain)` | row-wise normalization | `nn.LayerNorm`, `nn.RMSNorm` |
| `g.Attention(q, k, v, heads, T, causal)` | multi-head attention per sequence of `T` rows, fused | `scaled_dot_product_attention` |
| `g.Dropout(x, p)`, `g.Training` | dropout from the graph's own `g.Rng`, off when `Training` is false | `nn.Dropout`, `.train()` |
| `g.Conv2d(x, w, b, inC, outC, k, stride, pad, H, W)`, `g.MaxPool2d(x, C, H, W, k, stride)` | images as rows, channels last | `nn.Conv2d`, `nn.MaxPool2d` on NHWC |
| a negative class | a padding row the loss ignores, the mean over the rest | `ignore_index` |
| `nn.Graph<F32>(T, 1, true)`, `g.Pos` | a graph for decoding: forward only, a key-value cache per attention | `past_key_values` |
| `g.Save(path)`, `g.Load(path)` | the parameter region to and from a file | `state_dict` |
| `checkpoint.Save(g, path, names, dtype)`, `checkpoint.Load(g, path, names)` | the parameters as safetensors, by name | `save_file`, `load_state_dict` |
| `g.Profiling`, `g.Times` | time per kind of operation, forward and backward | `torch.profiler` |
| `g.Ahead = true` before `Plan`; `g.NextInputData(x)`, `g.NextClassData(y)`, `g.Flip()` | a second region for every input, filled for the next step while this one runs | a `DataLoader` worker |
| `nn.Graph<BF16>(...)`, `g.Masters()`, `g.SyncParams()` | mixed precision: BF16 storage, F32 computation, F32 masters | `autocast(dtype=torch.bfloat16)`, roughly |

`MatMul` and `Mul` record the ops of those names. Until olang db2af5d they were `Product` and `Multiply`: olang reserved
the operator methods' names (`MatMul` is `@`, `Mul` is `*`) for every method of every type; since its E31 a method is
the operator only in the operator's shape (one parameter), and the graph's take four and two (section 20).

- **A shorter batch** (an epoch's last) runs on the first `n` rows of every batched node - views, nothing re-planned;
  losses average over `n`. With attention, `n` is whole sequences (a multiple of `T`).
- **Gradients are written, then added to.** A `written` flag per node, reset each `Backward`, makes an op's first
  contribution to an input's gradient a write (`beta = 0` in a GEMM) and the rest additions (`beta = 1`), so no
  zero-fill pass runs. A parameter no path from the loss reaches is zero-filled; with `accumulate` set, parameters'
  gradients are added to instead (micro-batches).
- **An absent gradient is an empty matrix.** A kernel's backward takes every input's gradient destination and skips
  one with no rows (`if da.Rows > 0`) - an input, the classes or a constant has none, so the first layer computes no
  `dx`. (A nullable `Matrix&` would have meant a reference built per call.)
- **What needs a gradient** is decided at `Plan`: a node depending on a parameter (none in a graph for decoding).
- **Dropout is reproducible.** `Plan` seeds the graph's own generator `g.Rng` from the one it is given (after the
  parameters, so their starting values do not change); a mask is drawn by each training `Forward` and kept for the
  backward. Restoring `g.Rng` before a `Forward` replays a mask, which is how the gradient check checks dropout.

### The arena

One `Array<T>` per graph, laid out at `Plan`:

1. **parameters**, contiguous in registration order - the optimizers' one flat array, and a checkpoint;
2. **parameter gradients**, the same layout - one flat pass for the optimizer step and for gradient clipping;
3. every other node's **value**, its **gradient** when it needs one, and what its backward keeps (softmax cross-entropy
   its probabilities, the normalizations each row's statistics, attention its probabilities - `T x T` per sequence and
   head - and dropout its mask; in a graph for decoding, attention's key-value cache);
4. attention's **scratch** (per task, a `T x T` matrix for the backward's `dS` and a `dh x T` one for a transposed
   block) and the convolutions' **patches** (one region, the largest convolution's im2col matrix, shared by all of
   them).

The products pack their operands into a `linalg.GemmWorkspace<T>` the graph keeps beside the arena: it grows, where
the graph lives, to the largest product during the first step, and allocates nothing after. Attention's products run
in tasks, so each task packs into a workspace of its own - one per thread, made by `Plan` and grown there, by running
attention's products once on zeros, so that no task ever allocates. Class indices live in an
`Array<I32>` beside it; optimizer state (AdamW's `m` and `v`, the projection's workspace) is
made once, by the optimizer, in the parameters' layout. Liveness-based reuse of the activation region (a gradient is
dead once its producer's backward has run) is a planner change, made when a model's memory needs it.

## 3. Operations (`ops.olang`)

The kernels are plain functions on `linalg.Matrix<T>&`, forward and backward per primitive, usable without a graph -
which is what an eager mode would call too. A kernel that computes takes the type it computes in as a last parameter,
`z <A>` - the graph's own type for F32 and F64, F32 for a BF16 graph (section 18).

| op | forward | backward |
|---|---|---|
| `MatMul(a, b, ta, tb)` | `op(a) op(b)`, one GEMM | one GEMM per input, transposes swapped |
| `Linear(x, w, b)` | `x w^T`, then the bias row | `dx = dy w`, `dw = dy^T x`, `db` = column sums |
| `AddRow(x, b)` | every row plus `b` | `dx = dy`, `db` = column sums of `dy` |
| `Add`, `Sub`, `Mul` | element by element, same shape | element by element |
| `Scale(x, k)` | `k x` | `k dy` |
| `Relu`, `LeakyRelu`, `Gelu` (erf, PyTorch's default), `Sigmoid`, `Tanh` | one `Map` pass (`FastSigmoid`/`FastTanh`) | one pass on the saved input or output |
| `Softmax` | row-wise, max subtracted | `y (dy - rowsum(dy y))` |
| `SoftmaxCrossEntropy(logits, classes)` | mean over rows of `log-sum-exp - z[class]`; probabilities saved | `(p - onehot) / n`, fused |
| `Mse(a, b)` | mean of squared differences | `2 (a - b) / count` |
| `GeluTanh` | GPT-2's GELU, `0.5 x (1 + tanh(c (x + 0.044715 x^3)))`, through `FastTanh` | one pass on the input |
| `Embedding(tokens, table)` | gather: row `r` is the table's row `tokens[r]` | scatter-add into the table's gradient |
| `Positions(x, table, T)` | `x` plus the table's row `(Pos + r) mod T` | `dx = dy`; scatter-add by position |
| `LayerNorm(x, g, b)` | per row `(x - mean) rstd g + b`; mean and rstd saved | `rstd (dy g - mean(dy g) - xhat mean(dy g xhat))`, column sums |
| `RmsNorm(x, g)` | per row `x rinv g`; `rinv` saved | `rinv (dy g - xn mean(dy g xn))`, column sums |
| `Attention(q, k, v, heads, T, causal)` | per sequence and head `softmax(Q K^T / sqrt(dh)) V`, probabilities saved | `dQ = dS K`, `dK = dS^T Q`, `dV = P^T dO` |
| `Dropout(x, p)` | `x mask / (1 - p)`, mask 1 or 0 (exact in any type), kept | `dy mask / (1 - p)` |
| `Conv2d(x, w, b, shape)` | `cols w^T + b` - one GEMM for the batch, its patches packed from the images (`conv.olang`) | `db` = column sums, `dw = dY^T cols` (patches made by im2col), `dcols = dY w`, col2im |
| `MaxPool2d(x, pool)` | each window's maximum per channel; where it was, kept | the gradient added where the maximum was |

Every backward is checked against central differences in `F64` (`nn.olang`'s tests: each op through a small graph,
step 1e-6, agreement to 1e-6, the relative error floored at 1e-3 so a gradient near zero is compared absolutely - its
difference's own rounding is about 1e-16 x loss / h; a deliberately broken backward fails them). Fusion is the
planner's job, later: `Linear` then an activation as one GEMM with an epilogue - std/linalg's `GemmAct`, measured in
section 19 no faster at oann's sizes, so not yet.

**The products go through std/linalg**: `ws.Gemm(...)` on the graph's `GemmWorkspace` (section 2), so they run at
std/linalg's per-target tiles (AVX-512 with FMA on this machine) and a step allocates nothing. **Attention's products
are too** - one `GemmBatch` per product over every sequence and head of a part, the heads' strided views, causal ones
confined to their triangle (sections 11 and 19). Only decoding with a key-value cache still runs dot products and
updates over runs of arrays (`kernels.Dot`, `kernels.Axpy`), one new row at a time.

## 4. Layers (`layers.olang`)

A layer is **plain data** - the handles of its parameters - made by a function that registers them on a graph, with
an `Apply` that records its ops:

```olang
type Dense struct(W nn.Var, B nn.Var, In I64, Out I64) { W  B  In  Out }

fn NewDense(g mut nn.Graph<<T>>&, inputs I64, outputs I64) Dense {
    w := g.Param(outputs, inputs, fanIn(inputs), true)      # weight decay on W, not on B
    b := g.Param(1, outputs, fanIn(inputs), false)
    return Dense(w, b, inputs, outputs)
}

fn (d Dense&) Apply(g mut nn.Graph<<T>>&, x nn.Var) nn.Var { return g.Linear(x, d.W, d.B) }
```

`NewMlp(g, I64[784, 128, 10], Activation.Relu)` holds a `List<Dense>` and applies them with the activation between.
Applying a layer twice shares its parameters. Starting values follow PyTorch's `nn.Linear`: weights and biases uniform
in `+-1/sqrt(in)`, drawn from the `rand.Rand` given to `Plan`, so a run is reproducible from its seed.

For images (`vision.olang`, section 16): `Conv`, made by `NewConv(g, inC, outC, kernel, H, W, stride, padding)` with
PyTorch's Conv2d starting values. For transformers (section 11): `Norm` (layer or RMS normalization's gain and bias),
`AttentionBlock` and `Transformer`, built by `NewNorm`, `NewAttentionBlock(g, D, heads, T, layers, dropout, rms)` and
`NewTransformer(g, V, T, D, heads, layers, tied, dropout, rms)`, with GPT-2's starting values (`NewDenseWith` takes an
`Init` for the weights and one for the bias).

Why a factory function and not a constructor taking the graph: a layer holds only handles, so it is the same for
every element type, while the graph is generic (`Graph<T>`) - and a constructor of a non-generic type could not take a
generic parameter until olang db2af5d (its G10d: a constructor may introduce type variables its parameters use). The
factories stay (section 20): a constructor would change only the spelling of oann's whole layer API, and `NewDense`
and `NewDenseWith` are two ways into one type, which has one constructor. (The other reason once recorded here, that a
constructor reading through a reference parameter left the struct no zero value and so no place in a `List`, went
with olang a3ed507.) A plain-data layer is also serializable for free.

## 5. Losses and optimizers (`optim.olang`)

Losses are graph ops giving a `1 x 1` node: `SoftmaxCrossEntropy` (class indices, mean - PyTorch's
`CrossEntropyLoss`) and `Mse`; `g.Scalar(loss)` reads the number.

Optimizers update the parameter region **as one flat array in one fused pass** (PyTorch's fused optimizers), with
their state laid out the same way and made once. How weights are kept from growing is a `Regularizer`, so both
optimizers run with either:

```olang
type Regularizer enum {
    WeightDecay(rate F64)                  # decoupled: p -= lr * rate * p, on the parameters registered with decay
    Projection(alpha F64, normalized Bool) # the delta rule's input projection, in place of weight decay
}
```

- **`AdamW<T>(g, rate = 0.001, Beta1 = 0.9, Beta2 = 0.999, Eps = 1e-8, Reg = WeightDecay(0.01))`**, PyTorch's
  semantics: `m <- b1 m + (1 - b1) g`, `v <- b2 v + (1 - b2) g^2`, decoupled decay, then
  `p -= lr (m / (1 - b1^t)) / (sqrt(v / (1 - b2^t)) + eps)` - one loop, `p = keep p - step m / (sqrt(v) root + eps)`
  with the bias corrections folded into two scalars. `Rate` may change between steps (a schedule).
- **`AdamWProjected(g, rate = 0.001, alpha = 1e-3, normalized = true)`** - AdamW with `Projection` in place of weight
  decay (Behrouz et al., "Nested Learning: The Illusion of Deep Learning Architectures"): for every dense layer
  `y = x W^T + b`, `W <- W (I - alpha x x^T) - lr * (Adam update)`, `x` the layer's **input**. For a batch of `n`
  rows that is `W <- W - (alpha / n) (W X^T) X`, and `W X^T` is the transpose of `M = Y - b`, the layer's output less
  its bias, which the forward pass already computed: so the projection is a pass over `Y - b` and **one** GEMM per
  dense layer (`Gemm(W, M, transA = true, X, false, -alpha / n, beta = 1)`), run before the Adam step changes `W`. It
  replaces weight decay. `normalized` divides each row's term by `|x|^2`, so alpha is the fraction of each weight row's
  component along an input's direction removed per step, whatever the inputs' scale - the default (the user's call,
  2026-10-09), because one alpha then fits every layer: unnormalized, alpha must shrink with `|x|^2` (1e-3 already
  costs MNIST five points, below).
- **`Sgd<T>(g, rate = 0.01, Momentum = 0, Nesterov = false, Reg = WeightDecay(0))`**, PyTorch's semantics (decay added
  to the gradient, momentum buffer, Nesterov's look-ahead).
- On a BF16 graph both step its F32 masters, from the BF16 gradients read up into F32, with their state in F32, then
  round the masters into the graph (`SyncParams`); the projection regularizer is F32 and F64 only (section 18).

The tests check AdamW's first steps against a hand computation, SGD's momentum, and the projection's formula against
its definition, on a small `F64` graph.

**Schedules and clipping.** `WarmupCosine(peak, warmup, total, floor)` gives a function value - the rate at each step:
linear up to `peak` over `warmup` steps, half a cosine down to `floor` at `total`, `floor` after (GPT-3's, as nanoGPT
has it). The `Optimizer` trait gained `SetRate(rate)`, so a loop sets the step's rate and an optimizer knows nothing of
schedules. `ClipGradNorm(g, max)` scales every gradient by one factor so their norm is at most `max` (PyTorch's
`clip_grad_norm_`) and gives the norm before - summed in `F64`: a long `F32` sum of small squares drops their low bits
and came out 3.5e-5 low against numpy.

## 6. Training and evaluation (`train.olang`, `examples/mnist_mlp.olang`)

```olang
data := try mnist.Mnist.Load("data/mnist", mnist.Source)
g := nn.Graph<F32>(128, threads)
x := g.Input(784)
y := g.Classes()
net := layers.Mlp.New(g, Array<I64>[784, 128, 10])
logits := net.Apply(g, x)
loss := g.SoftmaxCrossEntropy(logits, y)
r := rand.Rand(seed)
g.Plan(r)
c := train.Classifier(x, y, logits, loss)
o mut optim.AdamW<F32>& = optim.AdamW<F32>(g)
trainSet := loader.Loader(data.Train, 128, seed)
testSet := loader.Loader(data.Test, 128, seed, shuffle = false)
for e in range 1, epochs + 1 {
    trainLoss := train.Epoch(g, c, trainSet, o)         # Fill, Forward, Backward, Step per batch
    testLoss, accuracy := train.Evaluate(g, c, testSet) # Forward per batch, ArgMaxRows against the classes
}
```

`make mnist ARGS="10 adamw 1 1"` runs it: epochs, optimizer (`adamw`, `projected`, `sgd`), seed, threads, and for
`projected` its alpha and `1` to normalize.

A language model's loop (`train.LanguageModel`, `train.Gpt`, `LmStep`, `LmEvaluate`, `examples/charlm.olang`):

```olang
c := try text.Corpus.Load("data/shakespeare/input.txt")
g := nn.Graph<F32>(16 * 64, threads)                      # 16 sequences of 64 characters
m := train.LanguageModel.Gpt(g, c.Size(), 64, 128, 4, 4)  # vocabulary, context, width, heads, layers
g.Plan(r)
o mut optim.AdamW<F32>& = optim.AdamW<F32>(g, 1e-3, 0.9, 0.99, 1e-8, optim.Regularizer.WeightDecay(0.1))
rate := optim.WarmupCosine(1e-3, 100, steps, 1e-4)
windows := text.Windows(c.Train(), 64, seed)
for step in range steps {
    loss, norm := train.LmStep(g, m, windows, o, rate(step), 1.0)   # random windows, clip to 1, a step
}
val := train.LmEvaluate(g, m, text.Windows(c.Val(), 64), 10)     # the same windows every time, dropout off
```

`make charlm ARGS="2000 1 2"` trains it (steps, seed, threads, dropout, characters to generate), saves
`data/shakespeare/charlm.ckpt` and generates a sample; `examples/charlm_sample.olang` loads the checkpoint and
generates with and without the key-value cache.

## 7. Datasets (`datasets/`)

- `datasets/idx` reads the IDX format; its elements are a view of the file's bytes.
- `datasets/loader`: a `Dataset` is a trait (a constraint) - `Size()` samples of `Dim()` features, and `Get(i,
  features)` writing sample `i`'s features as F32 and giving its class. `Labeled` is one: a set held as bytes with a
  per-feature `Scale` and `Shift` (default `1/255` and `0`). `Loader<D Dataset>` makes a seeded order each epoch
  (Fisher-Yates, std/rand's xoshiro256**) and `Fill(b, x, y)` writes batch `b` as rows and classes into the graph's
  own buffers - rounded to the graph's type, BF16 for a mixed-precision graph - giving its size (the last is short).
  Nothing is allocated per batch.
- **Filling ahead.** A graph planned with `g.Ahead = true` has two regions for every input; `train.Epoch` and
  `Evaluate` then fill batch `b + 1` into the second (`g.NextInputData`, `g.NextClassData`) on a task, while batch `b`
  runs forward, backward and through the optimizer in the same `join` block, and `g.Flip()` swaps the two between
  steps. Nothing in a step touches the region being filled, so there is no lock; the join is the handoff. The results
  are identical to filling in turn (`train.olang`'s test). Measured in section 18.
- `datasets/mnist` fetches the four files with curl and gunzip into `data/mnist` (each written to a `.part` file and
  renamed when whole), validates them and loads both sets. Fashion-MNIST and KMNIST are the same call with another
  address.
- The images stay bytes (47MB, against 188MB as F32). The four files load at 520-830MB/s and filling shuffled batches
  produces ~3.5-4GB/s of F32 (~1.2M samples/s) - 3% of an epoch.

- `datasets/text`: a `Corpus` of characters - its vocabulary (the distinct bytes, in byte order, so a text always gives
  the same ids), the text as `I32` tokens, nanoGPT's 90/10 split into `Train()` and `Val()` - and `Windows` over a
  token sequence: `Random` fills a batch of `B` windows of `T + 1` tokens at uniform offsets (nanoGPT's `get_batch`),
  `At` the windows of an ordered pass, the inputs into the graph's tokens and each one's next token into its classes.
  `Fetch` gets tiny Shakespeare with curl (written to a `.part` file and renamed).

Tokens beyond characters are `tokenizer.olang`'s byte-level BPE (section 16): its ids go into the same `Windows`.
(`Windows` fills a language model's batch in 0.01 ms - nothing worth filling ahead.)

## 8. Results and performance (measured 2026-10-09)

**Accuracy**, 784-128-10, ReLU, batches of 128, 10 epochs, test set. First measured with olang ef939ae (baseline
x86-64); the rows run again with olang 9621af3 (this machine's AVX-512, its products' multiply-adds fused, so the last
bits of every product differ and a run drifts a little from the old one):

| optimizer | test accuracy, ef939ae | 9621af3 |
|---|---|---|
| AdamW, lr 1e-3, decay 0.01 | 97.73% (seed 1), 97.71% (seed 2), 97.80% (seed 3); above 97% from epoch 5 | 97.79%, 97.69%, 97.79% |
| SGD, lr 0.05, momentum 0.9 | 97.81% | 97.86% |
| AdamW + projection, alpha 1e-5 | 97.74%, 97.53%, 97.84% (seeds 1-3) | |
| AdamW + projection, alpha 1e-4 / 1e-3 | 97.17% / 92.52% (too strong) | |
| AdamW + projection, normalized, alpha 1e-3 / 1e-2 | 97.79% / 97.74% | 97.83% / - |

**The C reference** (`bench/ref/mlp.c`): the same network in C over OpenBLAS - same random numbers (xoshiro256**
seeded by splitmix64), same initialization order, shuffle, scaling and AdamW - so its losses match oann's to four
decimals in the first epoch, and the time is the comparison. PyTorch could not be installed: download.pytorch.org is
refused by the container's network policy (403).

**An epoch** (469 steps), seconds, medians of interleaved rounds (`make epoch`), on the shared 4-core machine - with
olang ef939ae at a load average of 4-5, with 9621af3 at 10-12 (other agents compiling: the 4-thread figures lose to
the oversubscription, OpenBLAS's worst):

| | 1 thread, ef939ae | 4 threads, ef939ae | 1 thread, 9621af3 | 4 threads, 9621af3 |
|---|---|---|---|---|
| oann, built for this machine (olang's default since 9621af3) | - | - | **0.69** | 1.57 |
| oann, built for baseline x86-64 (the default before; `-a x86-64` since) | 2.39 | 2.90 | 2.24 | - |
| oann, ef939ae's IR relinked with `-march=native` | 1.92 | - | - | - |
| C over OpenBLAS | 0.79 | 1.19 | 0.93 | 4.53 |

What changed is olang: 9621af3 builds for the machine it runs on (B12) and std/linalg tiles its GEMM for it (12 x 32
F32 accumulators in AVX-512 registers, multiply-adds fused where the target has FMA), and oann's products now go
through std/linalg's `GemmWorkspace` instead of a copy of its old 4 x 12 SSE kernel - a copy that, built native, ran
3x slower (5.1-5.4 s an epoch: LLVM's SLP vectorizer grouped its accumulators across rows at 512 bits). At this
problem size - 128 x 784 x 128, 128 x 128 x 10 - the native GEMM runs past OpenBLAS's, single-threaded and
interleaved. Where the epoch goes now (`bench/train.olang`, best of three, at a load of 12): forward 47%, backward 35%,
the optimizer 10%, filling batches 8% - 0.60 s in all; with the products this much faster, filling and the optimizer
(3% and 4% before) are a sixth of the epoch. The projection
adds ~0.3 s an epoch (one GEMM per dense layer per step, into a workspace of its own). Results are identical for
every thread count (GEMM partitions its output).

**Memory.** A step allocates nothing: the arena is laid out once, and the products pack into the graph's
`GemmWorkspace`, which reaches its size in the first step. (Before olang 9621af3 std/linalg's `Gemm` packed into
scratch arrays of its own scope, and the runtime's chunk pool, reusing only its head chunk, mapped a new B panel for
every product - 8.1 MB a step for the transformer of section 11. oann carried a copy of the algorithm packing into its
arena until the runtime's pool was fixed (olang O8b, size classes) and std/linalg gained `GemmWorkspace`, both asked
for here.) The transformer's resident memory grows by 68-76 kB over its first 20 steps and by nothing after.

### Measured on olang 374c1e3c, 2026-11-15

The machine was shared with other agents the whole time: **load average 27 to 44** on the 4 cores (`uptime` is given
beside each figure), so every wall-clock time below is inflated by an unknown factor and the figures are not the quiet-
machine numbers; a repeat on a quiet machine is open. OpenBLAS was installed for the reference (`libopenblas-dev`).

**Accuracy** (`make mnist`, 784-128-10, AdamW, seed 1, 10 epochs): 93.49, 95.49, 96.39, 96.80, 97.10, 97.41, 97.69,
97.56, 97.83, **97.79%** - the same as 9621af3's seed 1 (97.79%); train loss 0.4169 -> 0.0378, test loss 0.2275 ->
0.0721 (a bit-for-bit repeat of the first epoch: 0.4169 / 0.2275 / 93.49% in every run).

**An epoch** (`make epoch`, medians of 3 rounds of 3 epochs, at a load average of 42), seconds:

| | 9621af3 (load 10-12) | 374c1e3c (load 42) |
|---|---|---|
| oann, built for this machine, 1 thread | 0.69 | **3.80** |
| oann, built for this machine, 4 threads | 1.57 | 3.41 |
| oann, built for baseline x86-64, 1 thread | 2.24 | 7.43 |
| C over OpenBLAS, 1 thread | 0.93 | 1.01 |
| C over OpenBLAS, 4 threads | 4.53 | 1.13 |

**This is slower than the load explains.** The C reference, run in the same minutes, took 1.01 s, within 10% of its
old figure at a load of 42. CPU time says the same: three epochs of `examples/mnist_mlp` took 5.8 s of user time against
2.0 s for one (1.9 s of CPU an epoch, the 3.8 s wall including the wait for a core), where the C reference's three took
1.5 s (0.5 s an epoch). So oann is ~3.8x OpenBLAS's CPU time here, where it was 0.74x of its wall time on 9621af3.
`bench/data.olang`, which does not multiply, is unchanged (below). `olang profile examples/mnist_mlp.olang 1`: **72%
self in `linalg.rowStep<F32>`** (line 902), 8% `micro12`, 6.6% `F32.Fma`. The binary's `linalg_2erowStep_3cF32_3e` is an
out-of-line function with its accumulators loaded, fused-multiply-added and stored through memory at every step
(`vmovss`/`vfmadd213ss`, scalar and unrolled by 8 - `objdump -d build/examples_mnist_mlp
--disassemble=linalg_2erowStep_3cF32_3e`), called 100% from `micro12`. `linalg.olang`'s micro-kernels (copied unchanged
from std/linalg b6e4a103^) rely on `rowStep` being inlined into the kernel with a constant `nr`, so that the tile's 12 x 32
accumulators live in zmm registers (their comment says so, above `micro4`); that does not happen with olang 374c1e3c.
The same shape in a 25-line program (a `tile` of an inline `Array<F32>(384)`, a `rowStep` called four times a step) *is*
inlined and folded away, so the break is specific to the real kernel's size or its generic instance
(`micro12<F32, packedA, wideTile, F32>`); no minimal repro was found, so none is in repro/. The whole binary does
contain AVX-512 FMAs (1,206 `vfmadd`, 15,660 `zmm` operands) - the vector kernels exist, `rowStep` is not one of them.
The transformer step of section 11 is slower in the products (6.4x) and GELU (10x) in the same way. Not an oann change: the
module's kernels are byte for byte std/linalg's last version.

**The data pipeline** (`make data`, at a load of 27; `bench/data.olang`): MNIST already in data/ - the files are fetched
on the first run, 1.85 s here - parsed in 0.139 s (396 MB/s), pixel mean 0.13066 and sd 0.30811 (MNIST's: 0.1307,
0.3081); an epoch of shuffled batches of 128 checked in 0.127 s, filling alone 0.0325 s: 5,787 MB/s of F32,
1,845,503 samples a second (section 7: 520-830 MB/s, ~3.5-4 GB/s, ~1.2M samples/s before - faster, and the same pipeline).

## 9. Testing

- `make test`: each module's `test` blocks - the kernels against direct computations, every op's backward against
  central differences in `F64` (a graph per op, a batched network on a short batch with fan-out, accumulation), the
  layers' registration and initialization, the optimizers against hand computations, and the datasets.
- `make data`: the MNIST pipeline against what is known about the dataset (counts, first labels, class histograms,
  pixel mean 0.1307 and deviation 0.3081), timed.
- Transformers (phase 3): every new backward against central differences in `F64` - embedding (with repeated tokens),
  positions, both normalizations, the tied head, padding rows (`nn.olang`); attention causal and not, two and four
  heads, a node attending to itself as q, k and v, on full and short batches; dropout with a fixed mask; GELU through
  tanh; a whole two-layer transformer tied and untied, with dropout and with RMS normalization (`layers.olang` - a
  deep network's own central-difference error bottoms out at 1e-6 to 4e-6, so its bound is 1e-5); causality (a row's
  output does not change with a later row); the key-value cache against running the whole sequence (`generate.olang`,
  to 1e-12); the schedule, clipping, checkpoints and the text corpus.
- `make lmref`: the first steps of the character model - losses and gradient norms - against the same model, the same
  starting values, windows, AdamW, schedule and clipping in numpy (`bench/ref/charlm.py`, F64).
- `make lmbench`: where a transformer's step goes, by kind of operation (the graph's own profiling).
- `make mnist` trains end to end (needs the downloaded data); `make epoch` times it against C.
- Phase 4 (section 16): `tokenizer.olang` (GPT-2's chunks, merge order and ties, round trips, JSON), `checkpoint.olang`
  (safetensors in every dtype, each error, GPT-2's names), `conv.olang` (the convolution against its definition and,
  since phase 6, its `GemmPatches` forward against im2col and a product bit for bit, col2im as im2col's adjoint, max
  pooling) and `vision.olang` (convolution and pooling against central differences); `make bpe` and `make safetensors`
  check the tokenizer and the format against independent Python implementations.

## 10. Serialization

Checkpoints as **safetensors** (`checkpoint.olang`, section 16): an 8-byte header length, a JSON header naming each
matrix's dtype, shape and byte range, then the raw little-endian data - interoperable with PyTorch, numpy and Hugging
Face, written with the floats' `Bits()`. Parameters carry PyTorch's names (`0.weight`, `h.3.attn.q_proj.bias`) given by
a `checkpoint.Names`. `g.Save`/`g.Load` stay as the raw parameter region, for oann alone.

## 11. Transformers (phase 3)

A decoder-only transformer (GPT-2's) trained on a token stream, with no tensor type:

- **Rows are tokens.** A batch of `B` sequences of `T` tokens is a `[B*T, D]` matrix, sequence `s` in the `T` rows from
  `s T`; the graph is planned for `Batch = B*T` rows, and a node knows `T` where it needs it (attention, positions).
  The loss is `SoftmaxCrossEntropy` over the `B*T` rows of vocabulary logits, the classes each token's next one.
- **Leaves and ops**: `Tokens()` (an `I32` per row, as `Classes()`); `Embedding(tokens, table)` (a gather; the
  backward scatter-adds into the table's gradient, so a token repeated in a batch sums); `Positions(x, table)` (learned:
  row `(Pos + r) mod T` of a `[T, D]` parameter); `LayerNorm(x, gain, bias)` and `RmsNorm(x, gain)` (row-wise, `eps`
  1e-5, the biased variance as PyTorch has it, each row's statistics saved); `Attention(q, k, v, heads, T, causal)`;
  `Dropout(x, p)` (inverted, from the graph's own generator, off when `g.Training` is false); `GeluTanh` (GPT-2's
  GELU); a negative class marks a padding row the loss ignores (PyTorch's `ignore_index`: the mean is over the rows
  counted, and a batch of padding alone has a loss of zero).
- **Attention is one fused op.** Head `h` is columns `h D / heads ...` of `q`, `k`, `v` - a strided view, nothing
  copied - and per sequence and head `P = softmax(Q K^T / sqrt(dh))` (row `i` over positions `0 ... i` when causal),
  `Y = P V`. The probabilities are saved for the backward (`T x T` per sequence and head - the memory to watch at long
  contexts; a tiled, recomputing form is the answer then). The backward: `dS = P (dO V^T - rowsum(dO V^T P)) / sqrt(dh)`,
  then `dQ = dS K`, `dK = dS^T Q`, `dV = P^T dO`, written in that order - the order their "written" flags were taken
  in - so a node attending to itself (`q`, `k` or `v` the same node) adds its three contributions up. The products are
  spread over the graph's threads by std/linalg, the softmax and `dS` passes by `ops.parallel`; `dS` is one scratch
  region of the arena, the size of the largest attention's `P`, and the products pack into the graph's own
  `GemmWorkspace` (section 19).
- **Attention's products are std/linalg's `GemmBatch`**, one call per product (section 19): the forward's
  `S = Q K^T / sqrt(dh)` and `Y = P V`, the backward's `dP = dO V^T`, `dQ`, `dK` and `dV` - each over every sequence
  and head of a part at once, `q.Heads(T, heads)` being the heads' strided column blocks (a group per sequence, a
  member per head) and `probs.Stacked(T, heads)` their `T x T` weights, nothing copied. **Causal masking is exact by
  construction**: the scores and `dP` are computed on and below the diagonal only (`Triangular.Result`), and `P` and
  `dS` are read there only as the left operand of the other four (`Triangular.Left`), so no product ever sees a later
  position, and half of each product is skipped. The softmax still writes `P`'s zeros above the diagonal. A part is
  as many `T x T` matrices as keep `P` (and `dS`) in 512 KB of cache a task - at context 64 in F32, 32 matrices
  forward and 16 backward a task (of 64 for 16 sequences in 4 heads), at 256 two and one - so each pass over a part
  finds them where the last one left them. Before: a `Gemm` per sequence and head (phase 5, section 18), and before
  that dot products and updates over the heads' views (`bench/attention.olang` keeps the per-head `Gemm`s as its
  reference).
- **Layers** (`layers.olang`): `NewTransformer(g, V, T, D, heads, layers, tied = true, dropout = 0, rms = false)` - a
  token embedding plus learned positions (dropout after), `layers` pre-normalized blocks, a final normalization and the
  logits against the embedding itself when tied (weight tying is applying one parameter twice: the head's product and
  the embedding's scatter-add both add into its gradient), a `V x D` matrix of its own otherwise. `NewAttentionBlock`:
  `h = x + O(attention(Q n, K n, V n))`, `n = norm1(x)`; `y = h + Down(gelu(Up(norm2(h))))`, `Up` 4D wide, dropout on
  both branches. GPT-2's starting values (weights and embeddings `N(0, 0.02)`, the two projections into the residual
  stream `N(0, 0.02 / sqrt(2 layers))`, biases 0, gains 1) and nanoGPT's decay groups (weights and embeddings decayed,
  biases and gains not). `q`, `k` and `v` are three products, not one of width 3D: that needs view nodes (section 14).
- **GELU through tanh, not erf**, in the blocks: the exact GELU's `erf` is a library call per element - 14-25 ns an
  element, 62 ms of a 510 ms step - where the tanh form (GPT-2's own) runs through `FastTanh` in one pass at 5-8 ns.
  Both are ops; the tanh form is within 1e-3 of the exact one.
- **Training**: AdamW (beta2 0.99, decay 0.1), `optim.WarmupCosine` for the rate, `optim.ClipGradNorm` to 1.
- **Generation** (`generate.olang`): `Sample(logits, temperature, r)`; `Rerun` runs the last `T` tokens through a graph
  planned for one sequence for every new token; `Cached` runs each token once on a **graph for decoding**
  (`nn.Graph<F32>(T, 1, true)`): no gradients, and every attention keeps the keys and values of the positions so far
  in its saved region - a key-value cache in the arena - so `Forward(n)` at `g.Pos` computes the `n` positions from
  `Pos`, each attending to everything cached, `Positions` adding row `Pos + r`. The prompt is one `Forward` (a prefill); when
  the context is full, the last `T / 2` tokens are run again to start a fresh cache. Checked: decoding a prefill and
  then token by token gives the logits of running the whole sequence, to 1e-12.
- **Checkpoints**: `g.Save(path)`/`g.Load(path)` - the parameter region as it is (`oann`, the element width and the
  count, then little-endian bits); safetensors when a model has to leave oann (section 16).

### Validation

Every new backward agrees with central differences in `F64` (section 9). Against a reference: `bench/ref/charlm.py`
is the character model again in numpy, F64, with a hand-written backward, started from the **same parameters** -
xoshiro256** and splitmix64 in Python, the same draws in the same order, rounded to F32 as oann stores them - and fed
the **same windows**, with the same AdamW, schedule and clipping. The first ten steps (`make lmref`), oann in F32
against numpy in F64:

| step | loss, oann | loss, numpy | gradient norm, oann | gradient norm, numpy |
|---|---|---|---|---|
| 1 | 4.211253 | 4.211253 | 7.050046 | 7.050046 |
| 2 | 4.181737 | 4.181737 | 6.326454 | 6.326455 |
| 5 | 4.033323 | 4.033323 | 5.406032 | 5.406031 |
| 10 | 3.751469 | 3.751469 | 1.995772 | 1.995772 |
| 20 | 3.552264 | 3.552264 | 1.526185 | 1.526185 |
| 40 | 3.034891 | 3.034891 | 1.233417 | 1.233417 |

Over 40 steps the losses differ by at most 1e-6 and the norms by 2e-6 - what F32 against F64 arithmetic allows - so
the forward, every backward, AdamW, the schedule and the clipping are the reference's. (Run again with olang 9621af3,
whose products fuse their multiply-adds: the same bounds, one norm in the table moving by its last digit.) One thing this found: the
gradient norm summed in `F32` came out 3.5e-5 low (a long sum of small squares drops their low bits), so
`ClipGradNorm` sums in `F64`. PyTorch could not be installed (the proxy refuses pip and download.pytorch.org); numpy
2.5 was there.

### Results: a character-level model on tiny Shakespeare

`make charlm ARGS="2000 1 2"`: 4 layers of width 128, 4 heads, context 64, batches of 16 sequences (1,024 tokens),
tied embeddings, 809,856 parameters, dropout 0; AdamW at 1e-3 (beta2 0.99, decay 0.1) warmed up over 100 steps and down
a cosine to 1e-4 at step 2,000, the gradient clipped to norm 1; seed 1, 2 threads. tiny Shakespeare was fetched with
curl through the environment's proxy (1,115,394 characters, a vocabulary of 65; the first 90% trained on, the last 10%
validated on - the same 10 batches of 16 windows each time). Losses in nats per character:

| step | train (mean of the last 50 steps) | validation |
|---|---|---|
| 0 | - | 4.2086 (ln 65 = 4.174) |
| 250 | 2.4134 | 2.3825 |
| 500 | 2.1998 | 2.2186 |
| 750 | 2.0541 | 2.0828 |
| 1000 | 1.9224 | 2.0032 |
| 1250 | 1.8402 | 1.9575 |
| 1500 | 1.7713 | 1.8779 |
| 1750 | 1.7041 | 1.8220 |
| 2000 | 1.7023 | 1.8063 |

2,000 steps (2M tokens, about two passes over the training text) took 1,108 s - 554 ms a step, **1,849 tokens a
second** - on the shared 4-core machine at a load average of 6 to 9 (other agents compiling and testing), with olang
ef939ae; built by 9621af3 for this machine a step is ~200 ms, 4,900-5,200 tokens a second on one thread (below). Still falling
when the schedule ended: a longer run, a larger model and dropout are the obvious next steps (nanoGPT's 10.7M-parameter
"baby GPT" reaches 1.47 after 5,000 steps of 16K tokens).

A sample (`examples/charlm_sample.olang`: 500 characters after a newline, temperature 0.8, the key-value cache):

```
Pears Richmpy'd, had lies his are pinter and morige:
Where the with my lordiety hims thee flown.

NORGEOs:
Hard, poor night inter a clird it.

Secourrongel:
There as contranted you the fair him to liash,
The pring sweets he place on murd, if hor know you sins,
Bold in with blood and my streen have thou
with no she be behose farbels fear the men with preoving to bid
Not for a son the see that she fintlew on shoul,
Disss of the relikess, thou rady now the load the Glotheres,
I'll pord to my foul m
```

Generation: **2,138 characters a second with the key-value cache, 92 running the context again** (23x; one thread,
at a load of 3). Greedily the two give the same 58 characters while the context is not full; after that they differ
by design (the cache restarts from the last 32 tokens, the rerun keeps the last 64).

### Where a step goes

`make lmbench ARGS="20 1"` - the graph's own profiling, ms a step, one thread: with olang ef939ae (baseline x86-64) at
a load average of 2.6, and with 9621af3 (this machine's AVX-512) at 13 - one of five runs, which gave 195-241 ms a
step:

| | forward, ef939ae | backward, ef939ae | forward, 9621af3 | backward, 9621af3 |
|---|---|---|---|---|
| `Linear` (12 products a step forward, 24 backward) | 138.5 | 281.5 | 37.9 | 81.7 |
| `MatMul` (the tied head) | 1.5 | 3.0 | 0.7 | 0.8 |
| `Attention` | 20.3 | 24.7 | 28.2 | 27.3 |
| `GeluTanh` | 12.5 | 14.9 | 5.3 | 6.9 |
| `LayerNorm` | 2.9 | 4.2 | 4.1 | 5.0 |
| `Add` (residuals) | 1.3 | 1.8 | 1.5 | 2.2 |
| the loss, embedding, positions | 0.8 | 0.3 | 1.2 | 0.5 |
| clipping, AdamW | 4.0 (together) | | 3.7 (together) | |

With ef939ae a step was **512 ms: products 83%, attention 9%, the rest of the graph 8%**, clipping and the optimizer
under 1%; the products ran at ~11 GFLOPS (4.8 GFLOP a step) - std/linalg's GEMM on the SSE2 target, slower than its
14-17 on large squares because these are narrow (k = 128). Two threads: 399 ms (2,566 tokens a second), four: 344 ms
(2,977) - the products scaled (424, 326, 275 ms), the element-wise ops did not (they run on one thread).

With 9621af3 a step is **~200 ms - 4,900-5,200 tokens a second on one thread, 2.5x the old step - products 58%,
attention 27%, the rest of the graph 13%**: the products run at ~40 GFLOPS (std/linalg's 12 x 32 AVX-512 tile with
FMA), and GELU's `FastTanh` pass, on the wider vectors, fell from 27 to 12 ms. Attention, a third of what is left, did not
move - its dot products were already vector loops - and a `Gemm` per sequence and head now beats them (section 11's
attention bullet, section 13). On two or four threads this load made the products 2.4x *slower* (277 and 273 ms of a
350 ms step): every product joins its tasks at each block, and with 13 runnable processes on 4 cores a task waits
for a core - the same oversubscription that took OpenBLAS's 4-thread MNIST epoch from 0.93 to 4.53 s (section 8);
thread scaling wants measuring on a quiet machine. The arena is 86.0 MB, laid out once (87.2 with the old packing
region in it); resident memory grows by 68-76 kB over the first 20 steps and by nothing after.

### olang issues found on the way (repro/)

- `repro/chunkpool.olang` (phase 2) - std/linalg's `Gemm` leaked a chunk per packed product through the runtime's
  pool; for a transformer 8.1 MB a step. Worked around by a copy of the algorithm (`kernels.Gemm`) until olang 9621af3
  fixed the pool (O8b) and gave std/linalg `GemmWorkspace`; the reproducer and the copy are gone.
- `repro/capturedfn.olang` - a lambda that captures a function value and calls it (`fn(d, g, v) { return d + f(g, v)
  }`) leaves an indirect call per element even when everything is inlined: 3.1 ns an element against 0.55 written
  out (still on 9621af3: 3.7-4.9 against 0.6-1.1 at a load of 8). `ops.backward2` runs its loops itself. Fixed by olang
  edf8238 (function values became a code and environment pair; 0.54-0.77 against 0.53-0.58 on 472373d); the reproducer
  is gone.
- `repro/ctorunstored.olang` - O26 counts an instance as referring to every reference its constructor was given, even
  one it only reads: `return Counts(t)` with `t` a local is refused (still on 9621af3). `text.Load` declares its text
  `&return` instead. Fixed by olang edf8238, as was phase 5's `repro/ctorpush.olang` (docs/settling.md); both
  reproducers are gone.
- Not issues, recorded for the language's records: `:=` from a comparison (`ta := t % 2 == 1`) needed its type
  written (D15 - relaxed since: `:=` takes any settled expression); a `match` value cannot give several results
  (`=> rows, cols`), so `savedShape` uses statements; a text join's piece cannot be a conditional (`$` of a local
  holding it is).

### What remains

- **Mixed precision** is built (section 18): a `Graph<BF16>`, parity in accuracy, half the arena - and slower on this
  compiler, whose narrowing to BF16 is a library call per element.
- Dropout of attention's probabilities (nanoGPT's `attn_dropout`): only the residual branches and the embedding are
  dropped out.
- A tiled attention that recomputes `P` in the backward instead of saving `T x T` per head (memory at long contexts);
  the batched causal `Gemm` it would run on is std/linalg's `GemmBatch` (section 19).
- Fused QKV and splitting heads with view nodes. (A `Gemm` epilogue for bias and GELU exists - std/linalg's `GemmAct` -
  and was measured slower than the separate passes at the blocks' size: section 19.)
- A vectorized exponential for attention's softmax: `math.Exp` is a library call per element, and with the products
  batched it is about half of attention's forward (section 19).
- Rotary positions; generating several sequences at once (a decoding graph of `B` sequences). (The byte-pair
  tokenizer is built: section 16.)
- Reusing activation storage by liveness: the arena holds every activation and gradient - 87 MB for the model above.
- Element-wise ops over threads: at four threads they are 40 of the 344 ms.

### Measured on olang 374c1e3c, 2026-11-15

**Agreement with numpy** (`make lmref ARGS=10`): the ten steps' losses are **equal to six decimals** (4.211253 ...
3.751469), the gradient norms equal to six decimals except in the last digit at steps 5, 7, 8 and 9 (5.406032 / 5.406031,
3.293284 / 3.293283, ...), F32 precision.

**Where a step goes** (`make lmbench ARGS="20 1"`, one thread, a load average of 42): **963 ms a step, 1,063 tokens a
second** (a second run, 828 ms, 1,237), against ~200 ms and 4,900-5,200 tokens with 9621af3 above; resident memory grew
68 kB over the 20 steps, as before. ms a step, forward / backward:

| | forward, 9621af3 | backward, 9621af3 | forward, 374c1e3c | backward, 374c1e3c |
|---|---|---|---|---|
| `Linear` | 37.9 | 81.7 | 241.3 | 502.5 |
| `MatMul` (the tied head) | 0.7 | 0.8 | 0.5 | 5.1 |
| `Attention` | 28.2 | 27.3 | 26.2 | 40.4 |
| `GeluTanh` | 5.3 | 6.9 | 52.5 | 73.6 |
| `LayerNorm` | 4.1 | 5.0 | 4.3 | 4.0 |
| `Add` | 1.5 | 2.2 | 5.1 | 1.7 |
| clipping, AdamW | 3.7 | | 3.6 | |

Products 749 ms of the step (6.4x), GELU 126 ms (10x), attention and the layer norms about as before. See section 8
(the same measurement's note on the load and on `linalg.rowStep`): this is not the machine's load alone.

**A character model** (`make charlm ARGS=300`, the schedule compressed to 300 steps - warmup 100, cosine to 1e-4 at
step 300 - so not comparable to the 2,000-step table above): train loss 3.4240 (step 50), 2.6811, 2.5432, 2.4606,
2.3924, 2.3592 (step 300); validation 2.3720 (step 250), **2.3583** (step 300); 806-838 ms a step, 1,271 tokens a
second at a load of 40; a 500-character sample at temperature 0.8, 1,204 characters a second with the key-value cache
(2,138 before). The loss at step 250 of the 2,000-step run was 2.4134 / 2.3825; the curve falls as it did.

## 12. Shapes as type parameters (when olang has const generics)

olang is getting `Matrix<T, R, C>`, each dimension a constant or known at run time. oann is ready for it: a layer's
shapes are given once, at construction, and `Apply` takes only handles, so `Dense<T, In, Out>` can hold
`W Matrix<T, Out, In>` and a handle carry its column count (`Var<C>`), making a shape mismatch in a model a
compile-time error. The executor keeps run-time shapes, as JAX keeps shapes as data while checking them when tracing.

## 13. What oann needs from std/linalg next

oann does all its arithmetic through `linalg.Matrix<T>` - `View`, `Row`, `GemmWorkspace` and its `Gemm`, `GemmBatch`
and `GemmPatches`, `Gemv`, `Map`/`Map2`/`Map3`, `AddRow`, `ColumnSums(out, beta)`, `RowSoftmax`, `RowNorms`,
`ArgMaxRows`, `Fill`, `FillUniform`/`FillNormal`, `Cast`, the `Fast*` functions. Done since this list was first
written: **a `Gemm` into a caller's workspace** and **micro-kernels for the machine** (olang 9621af3: an MNIST epoch
2.39 -> 0.69 s, the transformer's products ~11 -> ~40 GFLOPS), and with olang 472373d (section 19) **the batched,
causal `Gemm`** (`GemmBatch` over `Batch<T>` - `Heads`, `Stacked`, `Triangular.Result` and `Left` - one call per
attention product), **an implicit GEMM for convolutions** (`GemmPatches`: the forward packs its patches straight from
the images) and **a `Gemm` with an epilogue** (`GemmAct`: measured, not adopted - section 19). What it still needs:

1. ~~A vectorized exponential for the softmax~~ - std/linalg's `FastExp` is accurate enough for every check that
   stands for it, and with its sum a pass of its own it vectorizes: attention's forward 1.3-1.9x faster (section 20).
   (`math.Exp`, a library call per element, had been about half of attention's forward once the products were
   batched; `FastExp` beside a running sum had been no faster, section 18.)
2. ~~`ActivationSlope`, and the matrix `ActivationBackward` on it, for F32 and narrower types~~ - they compile since
   olang 999ae6c (repro/condliteral, fixed and deleted, section 21); oann's own backward kernels still serve.
3. **A convolution's weight gradient from the images.** The backward still makes the patches for `dW = dY^T cols`
   (im2col: 3.7-4.4 ms of each of the CNN's convolutions a step); `GemmPatches` takes the patches as the left operand
   only, and std/linalg measured a right-operand form slower than im2col and a product. And a path for thin depths:
   the first convolution's products (a depth of 9) run at 6-7 GFLOPS against 26-50 for the second's.
4. ~~BF16 results without a call per element~~ - done by olang db2af5d, which narrows inline: std/linalg's BF16
   products are as fast as F32's (section 20).
5. **The INT8 product** (`quant.olang`, section 22): its kernel, blocked as `Gemm` is, and - from the compiler - a way to
   reach the four-way integer dot product (`vpdpbusd`, `usdot`), without which INT8 runs at half F32's rate when
   compute-bound.

## 14. Open questions

1. The projection: normalized, alpha 1e-3 by default (97.79% on MNIST, section 8); still open whether alpha should
   scale with the learning rate and whether it should apply to every dense layer or only some.
2. An eager mode beside the graph, for models whose structure depends on their data - not before a model needs one.
3. oann as an importable package (`github.com/OWNER/oann/nn`) - the layout already is one module per concern.
4. ~~Mixed precision~~ - built as one storage type per graph, F32 inside every kernel and F32 masters beside the arena
   (section 18), rather than BF16 copies the products read or a type per node.
5. View nodes - a node whose value is a column block of another's, no storage of its own - would give fused QKV (one
   product of width 3D) and splitting heads at no cost; the "written" flag per node would then need to be per block.

## 15. Layout

```
makefile                OLANG ?= the compiler (../olang/build/olang); make test, data, mnist, cnn, epoch, charlm, lmbench, lmref, bpe,
                        bpelm, safetensors, board, sparse, sleep, int8, int8lm, int8bench, clean
linalg.olang            Matrix<T> and its views, Goto GEMM (GemmWorkspace, GemmBatch, GemmAct, GemmPatches),
                        element kernels, reductions, Solve, Cast, FastExp/FastTanh - std/linalg's last version
nn.olang                Graph, Var, Op, Node: recording, Plan, Forward, Backward, decoding, checkpoints,
                        profiling; the gradient checks
ops.olang               the kernels: forward and backward per primitive, on Matrix
kernels.olang           Dot, Axpy, Sum over runs of arrays (decoding's attention, the normalizations), SquaresF64
layers.olang            Dense, Mlp, activations, PyTorch's initialization; Norm, AttentionBlock, Transformer
optim.olang             the Optimizer trait, Regularizer, AdamW (and AdamWProjected), Sgd; WarmupCosine, ClipGradNorm
train.olang             Classifier, Epoch, Evaluate; LanguageModel, Gpt, LmStep, LmEvaluate
generate.olang          sampling; generation running the context again, and with a key-value cache
tokenizer.olang         byte-level BPE: GPT-2's pre-tokenization, training, encoding, decoding, JSON
checkpoint.olang        safetensors: Names (PyTorch's for the layers), Save and Load in F64, F32, F16 or BF16
quant.olang             INT8 inference: weights per channel, activations per tensor (dynamic or calibrated), the
                        U8 x I8 -> I32 product with its dequantizing store, and Model (dense, conv, pool) built from a
                        trained graph
conv.olang              convolution (forward: one product of the patches packed from the images; backward: im2col,
                        two products, col2im) and max pooling on images held as rows
vision.olang            the convolution layer; the gradient checks of convolution and pooling
circuit.olang           settling networks: Circuit (regions, projections dense or sparse, readout groups), settles,
                        the certificate, Teach, Eligibility; the neuron models, spiking included
agent.olang             Agent: a circuit living moments, with a critic, memories, a context trace and arousal; its
                        consolidator's recall driving the readout, weighed by familiarity (Guesser); the Weigher;
                        completion of observations with numbers missing (Completer)
board.olang             the PYNQ-Z2 engine simulated in integers (docs/settling.md 4.2), golden vectors
store.olang             the sparse-code store, with an optional familiarity table
consolidator.olang      sleep: the slow learner on a Graph beside the store, days, nights and dawn
sparse.olang            CSR matrices and their products, top-k, the sparse-code products
datasets/idx.olang      the IDX format
datasets/loader.olang   Labeled sets and the Loader
datasets/mnist.olang    fetching and loading MNIST
datasets/text.olang     a character corpus, its split, and windows of tokens; fetching tiny Shakespeare
examples/mnist_mlp.olang
examples/mnist_cnn.olang  a small convolutional network on MNIST, its memory and where its time goes
examples/charlm.olang   the character-level transformer on tiny Shakespeare, trained, saved and sampled
examples/charlm_sample.olang  sampling from its checkpoint, with and without the cache
examples/bpelm.olang    the same transformer on 512 BPE tokens, per character against the character model
examples/xor_settle.olang, xor_spiking.olang, mnist_settle.olang, bandit_settle.olang  settling networks end to end
examples/mnist_board.olang  MNIST taught and answered through the board engine, against F32
examples/sleep_retention.olang, nights.olang  sleep: retention against interference, and what an agent's nights are for
examples/mnist_int8.olang   the perceptron or the CNN trained, quantized to INT8, and measured against F32
examples/charlm_int8.olang  the character transformer's checkpoint with its linear layers in INT8, against F32
bench/data.olang        the data pipeline, checked and timed
bench/train.olang       where an epoch's time goes
bench/epoch.olang, ref/ an epoch against the C reference over OpenBLAS
bench/lm.olang          where a transformer's step goes, by kind of operation
bench/lmref.olang, ref/charlm.py  the first steps of the character model against numpy
bench/attention.olang   attention's batched products against a Gemm per sequence and head, causal or not
bench/abstep.olang       two builds of bench/lm.olang run in alternation: the medians of their steps
bench/bpe.olang, ref/bpe.py  BPE timed, and checked against an independent Python implementation
bench/conv.olang        a convolution's passes timed: the forward by GemmPatches and as im2col and a product, the
                        backward's im2col, two products and col2im
bench/safetensors.olang, ref/safetensors_check.py  safetensors both ways against numpy
bench/sparse.olang      sparse projections against dense ones, kernels and whole circuits
bench/int8.olang        the INT8 product against std/linalg's F32 one, on the networks' shapes
bench/each.olang        oann's element-wise loops against std/linalg's Map (kept for the record of section 22)
bench/paired.olang       two runs of the settling examples' lives (perlife=1) compared life by life, with intervals
docs/settling.md        settling networks - the model after transformers
repro/                  minimal programs for olang issues found here
data/, build/           downloads and build output, not in git
```

Each file is one olang module, imported by its path relative to the importing file without the extension
(`import "../datasets/mnist"`). Random numbers are std/rand's, times std/time's.

## 16. Phase 4: byte-pair tokens, safetensors, convolutions

### Byte-level BPE (`tokenizer.olang`)

GPT-2's tokenizer - Sennrich et al.'s byte-pair encoding, run on bytes as Radford et al. run it: the 256 byte values
are the first tokens and every later token is the merge of two earlier ones, so any bytes encode and decode back to
themselves and there is no unknown token.

- **Pre-tokenization** - the chunks merges never cross - is GPT-2's pattern,
  `'s|'t|'re|'ve|'m|'ll|'d| ?\p{L}+| ?\p{N}+| ?[^\s\p{L}\p{N}]+|\s+(?!\S)|\s+`, read by a hand-written scanner
  (`ChunkEnd`; olang has no regular expressions) with byte classes standing for the Unicode ones: a letter is an ASCII
  letter or any byte from 0x80 up (so a UTF-8 word stays one chunk), a digit is 0-9, whitespace the six ASCII spaces.
  On ASCII text - tiny Shakespeare is ASCII - this is GPT-2's rule exactly; elsewhere it keeps a non-ASCII symbol or
  punctuation mark with the letters around it, where GPT-2 would split it off.
- **Training** (`Tokenizer.Train(text, vocab)`) counts each distinct chunk once with its number of occurrences, then
  merges the most frequent adjacent pair again and again, ties to the smaller pair (Hugging Face's rule). Pair counts
  are kept up to date as chunks change, a heap with lazy deletion gives the most frequent, and every pair keeps a list
  of the chunks it occurs in (a linked list in flat arrays), so a merge costs the chunks it touches, not the corpus.
- **Encoding** (`t.Encode(text)`) applies a chunk's merges lowest rank first, leftmost first, with a heap over its
  positions: the tokens of GPT-2's "merge every occurrence of the best pair, left to right" (a merge only ever makes
  pairs of a later rank), in O(n log n) of the chunk's length - a megabyte of one letter is no harder than prose, where
  the usual quadratic loop would not finish. Each distinct chunk's tokens are remembered for the rest of the text, as
  GPT-2's encoder does. The ranks are an open-addressed table of pairs. `t.Decode(ids)` fails on an id the vocabulary
  does not have (`TokenizerError.Unknown`).
- **Saving** is JSON, `t.Save(path)` and `Tokenizer.Load(path)`: `{"format": "oann-bpe", "version": 1, "pretokenize":
  "gpt2-ascii", "merges": [[32, 116], ...], "vocab": [...]}`. The merges, as pairs of ids, are what Load reads (each
  checked to name only tokens made before it); the vocabulary is every token in GPT-2's printable form ("Ġthe" for
  " the"), for a person to read.

**Checked** by the module's tests (GPT-2's chunks on contractions, runs and spaces; the merge order and its ties; a
round trip of random bytes of all 256 values, of random corpus text and of 100,000 of one letter; saving and loading)
and **independently** by `bench/ref/bpe.py` (`make bpe`): the same pre-tokenization as a Python bytes regular
expression, the plain algorithm (every pair counted again for every merge) and GPT-2's encoder. From tiny
Shakespeare's training part both learn **the same merges** - 256 of 256 at a vocabulary of 512, 1,792 of 1,792 at
2,048 - and give **the same validation tokens** (59,401 and 43,559).

**Speed**, tiny Shakespeare's first 90% (1,003,854 bytes: 266,995 chunks, 14,134 distinct), one thread on the shared
machine (load average 3-6, so ranges):

| vocabulary | training | characters a token (training / validation part) | encoding the training part |
|---|---|---|---|
| 512 | 50-95 ms | 1.944 / 1.878 | 35-60 ms (17-28 MB/s) |
| 1,024 | 131 ms | 2.442 / 2.257 | 63 ms |
| 4,096 | 120 ms | 3.264 / 2.903 | 43 ms |
| 8,192 | 152 ms | 3.535 / 3.186 | 50 ms |

A merge costs only the chunks it touches, so 7,936 merges cost about what 256 do: training is mostly counting the
chunks (10-15 ms) and building the pair lists. The Python reference takes 12 s at 512 and 80 s at 2,048.

### A transformer on BPE tokens

`examples/bpelm.olang` (`make bpelm ARGS="2000 1 2"`) is the character model of section 11 unchanged - 4 layers of
width 128, 4 heads, a context of 64, batches of 16 sequences, tied embeddings, AdamW (beta2 0.99, decay 0.1) warmed up
over 100 steps and down a cosine to 1e-4, clipping to 1, 2,000 steps, seed 1 - on 512 BPE tokens learned from the
training part (867,072 parameters: the embedding is 57,216 larger). The split is the character model's, so both see the
same text on each side. A loss per token becomes a loss per character as the total over the predicted tokens divided by
the characters those tokens hold, counted on the very windows evaluated (nats a token / characters a token).

| step | BPE, nats a token | BPE, nats a character | characters, nats a character |
|---|---|---|---|
| 0 | 6.2683 (ln 512 = 6.238) | 3.3206 | 4.2086 |
| 250 | 3.8604 | 2.0450 | 2.3825 |
| 500 | 3.6399 | 1.9282 | 2.2186 |
| 750 | 3.4664 | 1.8363 | 2.0828 |
| 1000 | 3.3325 | 1.7654 | 2.0032 |
| 1250 | 3.1944 | 1.6922 | 1.9575 |
| 1500 | 3.1254 | 1.6557 | 1.8779 |
| 1750 | 3.0825 | 1.6329 | 1.8220 |
| 2000 | 3.0242 | **1.6020** | **1.8063** |

Each row is the first 10 batches of the model's own ordered pass, so the two columns cover different text (10,240 BPE
tokens hold ~19,000 characters). Over the **whole validation part** (111,540 characters, the same text for both): the
BPE model **3.1095 nats a token, 1.6559 a character**, the character model's checkpoint **1.8404 a character** - 10%
lower for the same model, steps and batch shape. Some of that is context: 64 tokens are ~120 characters. 959 s on two
threads at a load average of 4 (480 ms a step, 2,136 tokens - ~4,150 characters - a second); the wider head (512 logits
against 65) costs little next to the blocks.

A sample (`generate.CachedTokens` - the key-value cache on token ids, for any tokenizer; `generate.Cached` is it with a
character corpus's encoding - 250 tokens, 512 characters, after a newline, temperature 0.8, 2,156 tokens a second):

```
I'll not him with your greations,
But now you cannot be bound under against their after
As or morrow; and I should else thee
The is wours.

DUKE VINCENTIO:
Tow,, traitor, to must be clove, which, and a done:
For she is the gentlemen?

CAMILLO:
I cannot I'll take it be her:
Nay, which heaven of my banish, drowns moes was
```

Found on the way: `text.Windows.At` past the end of an ordered pass gave a negative count, which `LmEvaluate`'s
`n == 0` test let through as a `Forward` of negative rows - it gives 0 now (evaluating a whole part asks past the end).

### safetensors (`checkpoint.olang`)

Hugging Face's format for tensors, so a model can leave oann for PyTorch, numpy or JAX, or come in from them: eight
bytes holding the header's length, little-endian; the header, JSON naming every tensor's `dtype`, `shape` and
`data_offsets` (its byte range of what follows), padded with spaces to a multiple of eight; then the tensors' elements,
row by row, little-endian.

```olang
names := checkpoint.Names()
names.AddTransformer(t, "")                       # GPT-2's names; AddDense, AddNorm, AddMlp for the other layers
try checkpoint.Save(g, "model.safetensors", names, checkpoint.Dtype.BF16)
try checkpoint.Load(g, "model.safetensors", names)
```

- **Names** are given to parameters, not kept by the graph: a `Names` maps parameter handles to text, and the layer
  helpers use PyTorch's: a dense layer's `weight` and `bias`, a perceptron as `nn.Sequential` numbers it (`0`, `2`,
  ...: an activation between every two), a transformer GPT-2's (`wte`, `wpe`, `h.I.ln_1`, `h.I.attn.q_proj`, ...,
  `h.I.mlp.c_fc`, `h.I.mlp.c_proj`, `ln_f`, `lm_head` when untied - q, k and v are three products here, so they are
  named as Llama's are). A parameter given no name is `param.K`, K its place among the parameters. Keeping names out of
  the graph leaves `nn.olang` and its nodes plain data; two parameters given one name are an error (`DUPLICATE`).
- **Layout** is PyTorch's: weights `[out, in]` (nn.Linear's; note GPT-2's own Conv1D checkpoints are `[in, out]`), and
  a parameter of one row - a bias, a gain - is written as a vector, `[cols]`, as PyTorch holds it; either form reads
  back. A tied head is the embedding itself, so it is one tensor, as Hugging Face writes tied weights. The metadata is
  `{"format": "pt"}`, which Hugging Face's loaders look for.
- **Types**: `Dtype.F64`, `F32`, `F16`, `BF16`, or `Same`, the graph's own (the default). Writing rounds once - every
  element is exact as an F64, then rounded to the narrower type, nearest and ties to even - and reading converts any of
  the four into the graph's type the same way.
- **Loading is strict**, as PyTorch's `load_state_dict` is by default: every parameter must be in the file with its
  shape and size (`MISSING`, `SHAPE`), the file may hold nothing else (`UNEXPECTED`), a header that is not JSON of
  tensors or a range outside the data is `MALFORMED`, and another dtype is `DTYPE`.

**Checked** by the module's tests - a perceptron saved in every dtype and loaded into another graph (bit-exact in its
own type, equal to the rounded values in F16 and BF16), each error, a transformer's names and its tied head - and
**independently** by `make safetensors`: `bench/ref/safetensors_check.py`, a reader and writer of its own on `struct`,
`json` and `numpy` alone (no safetensors package - pip is blocked here, and the point is a second implementation), reads
oann's files in all four dtypes, checks the header (its length, the space padding, data ranges covering the data with no
hole or overlap) and compares **every element bit by bit** with the values rounded by numpy (F32, F16) and by
round-to-nearest-even on the F32 bits (BF16, which numpy lacks) - signed zeros, an F32 subnormal, F16's largest value
and the first past it (infinity), an F16 underflow, near F32's largest, BF16 ties - 144 elements. Then it writes a file
of its own - a tensor per dtype, in an order of its own, F16 subnormals and an F64 subnormal, a one-row parameter as a
vector, metadata of its own, an unpadded header - which oann loads into an F64 graph exactly: 27 of 27 values as numpy
stored them.

### Convolutions (`conv.olang`, `vision.olang`)

- **Images are rows, channels last.** An image is one row of `H x W x C` - a pixel's channels together, NHWC for the
  batch (TensorFlow's default layout) - and a convolution's output rows are `OutH x OutW x OutC` the same way. The
  weights are PyTorch's `Conv2d.weight` flattened, `OutC x (C K K)`, each kernel `[C][K][K]`, so a checkpoint maps
  onto PyTorch's by a reshape (a PyTorch model's flatten before its first dense layer is channels first, though: such
  a layer's columns need permuting).
- **One product for the whole batch.** The patch matrix has a row for every output position of every image, holding
  the patch it sees - `(n OutH OutW) x (C K K)`, zeros where the kernel hangs over the padding - and `Y = cols W^T + b`
  is one product and a bias row. With channels last, `Y`'s `OutC`-wide rows are the images' output rows one after
  another: the node's value *is* `Y`, reshaped, nothing transposed. Channels first would need a product per image, or
  a transpose pass - which is why section 1's `C x H x W` plan changed. Since phase 6 (section 19) the forward never
  makes the patch matrix: std/linalg's `GemmPatches` packs it from the images as the product reads it, the bias added
  as each block of `Y` is finished - exactly what im2col, the product and the bias gave.
- **Backward**: `db` = the column sums of `dY`, `dW = dY^T cols`, `dcols = dY W` (only when the input wants a
  gradient - a network's first convolution skips it), then col2im adds every patch's gradient back to the pixels it
  came from. The patches are **not kept**: the backward makes them (im2col) into a region before `dW` - which reads
  them as its right operand, where `GemmPatches` takes them on the left only - and `dcols` then overwrites them, so a
  graph has **one patches region, its largest convolution's**, shared by all of them; the graph's `GemmWorkspace`
  grows to their products in the first step. For the MNIST network below, 128 x 784 x 9 F32 - 3.6 MB.
- **im2col's innermost loop** is a pixel's channels, read in order - unless an image has fewer channels than the
  kernel is wide (a first layer, grey or RGB), when a window inside the image is copied a kernel row at a time,
  written in order with no test per element: 3.0 ms against 8.9-11.0 for a batch of 128 one-channel images, and the
  same as before for 16 channels (measured interleaved in one process).
- **`MaxPool2d(x, C, H, W, k, stride)`** keeps, as its saved matrix, where each maximum was in its window (`ky K +
  kx`, exact in any float type; the first of equal values, as PyTorch picks); the backward adds each gradient there,
  so overlapping windows add up. No padding yet. A pixel's channels are the innermost loop here too.
- Images are split over the graph's threads (`linalg.ParallelRows`), the products by std/linalg's `Gemm`. Builders:
  `g.Conv2d(x, w, b, inC, outC, kernel, stride, padding, H, W)`, `g.MaxPool2d(x, C, H, W, kernel, stride)`; the layer
  `vision.NewConv(g, inC, outC, kernel, H, W, stride, padding)` draws PyTorch's starting values (uniform in
  `+-1/sqrt(C K K)`, weights and bias).

**Checked**: the convolution as one product of its patches against its definition (four shapes - padding, strides 2
and 3, 1 to 3 channels, 2x2 to 5x5 kernels - on one task and three), the forward by `GemmPatches` equal bit for bit
to im2col, the product and the bias (the CNN's two convolutions and two small shapes, F32 and F64, one task and
three), col2im as im2col's adjoint (`<im2col(x), c> =
<x, col2im(c)>`), max pooling against its definition; and through the graph in F64 against central differences: two
convolutions reading one pooled value, a convolution applied twice (shared weights), overlapping 3x3 pools at stride
2, padding with stride 2, a short batch, and the input gradients of 3- and 1-channel images that are parameters. A
deliberately broken col2im fails both graph checks.

**MNIST** (`make cnn ARGS="10 1 1"`, `examples/mnist_cnn.olang`): a 3x3 convolution 1->16 (padding 1), ReLU, 2x2 max
pooling, a 3x3 convolution 16->32, ReLU, 2x2 max pooling, a dense layer 1568->10 - 20,490 parameters - with softmax
cross-entropy, AdamW at 1e-3 and batches of 128, seed 1, one thread - with olang ef939ae at a load average of 3-6, and
again with 9621af3 (products for this machine, multiply-adds fused) at 10-21:

| epoch | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|---|---|---|---|---|---|---|---|---|---|---|
| test accuracy, %, ef939ae | 96.97 | 97.83 | 98.42 | 98.55 | 98.78 | 98.41 | 98.52 | 98.81 | 98.83 | **98.84** |
| test loss, ef939ae | 0.0994 | 0.0652 | 0.0474 | 0.0442 | 0.0385 | 0.0457 | 0.0416 | 0.0351 | 0.0349 | 0.0334 |
| test accuracy, %, 9621af3 | 96.97 | 97.78 | 98.44 | 98.54 | 98.78 | 98.42 | 98.54 | 98.87 | 98.81 | **98.82** |
| test loss, 9621af3 | 0.0994 | 0.0650 | 0.0471 | 0.0444 | 0.0383 | 0.0451 | 0.0412 | 0.0351 | 0.0347 | 0.0334 |

against the 784-128-10 perceptron's **97.73%** after its 10 epochs (101,770 parameters, section 8). An epoch takes
**54-61 s** with ef939ae (57.6 s on average over the ten; 54.1 s after max pooling's channel loop moved inside), and
**37-53 s with 9621af3** (42.9 on average, at a load of 10-21 - other agents compiling; the epochs at the lower load
took 37-41 s), against the perceptron's 0.69 s: the network does 0.76 GFLOP a step to the perceptron's 0.05. Results are identical bit for bit on
one and two threads (two were slower on the oversubscribed machine). **A step allocates nothing**: resident memory
116,748 kB after step 10, 116,756 after step 100, 116,760 after every epoch to the tenth (4,690 steps); the arena is
63 MB, laid out once.

Where the first epoch goes (`ARGS="1 1 1 16 32 profile"`, ef939ae): the convolutions 46.0 s (forward 17.5, backward
28.5), max pooling 4.6, ReLU 2.4, the dense layer 1.0. Split by pass (`bench/conv.olang`, ms for a batch of 128; for
9621af3 the median of three runs at a load of 10):

| | im2col (twice) | forward product | dW | dcols | col2im | bias and its sums |
|---|---|---|---|---|---|---|
| conv 1->16 on 28x28, ef939ae | 6.3 | 5.4 (5.4 GFLOPS) | 4.7 (6.1) | 4.6 (6.3) | 3.0 | 1.7 |
| conv 16->32 on 14x14, ef939ae | 8.8 | 21.6 (10.7) | 19.6 (11.8) | 18.5 (12.5) | 4.1 | 0.9 |
| conv 1->16 on 28x28, 9621af3 | 9.5 | 5.4 (5.3) | 8.7 (3.3) | 4.7 (6.1) | 4.3 | 2.4 |
| conv 16->32 on 14x14, 9621af3 | 10.1 | 8.5 (27.1) | 11.5 (20.2) | 6.2 (37.6) | 4.7 | 0.7 |

(In the network the first convolution needs no `dcols` or col2im - its input is the images.) With ef939ae the second
convolution's products ran at 11-12 GFLOPS, std/linalg's GEMM rate on the SSE2 target; with 9621af3 they run at 20-38
at a load of 10, and the epoch is now spread over the passes rather than the products: im2col, col2im and max
pooling are passes over memory the target does not change. The first convolution's products stay at 3-6 GFLOPS: a
depth of 9 (`C K K` for one channel) is too thin for a packed product, and its `dW` (16 x 9, depth 100,352) is mostly
padding in the native 12 x 32 tile, slower than the old 4 x 12 one - the case for a direct convolution, or a
small-depth path in `Gemm`. And im2col plus the product's own packing copies every patch twice: a `Gemm` that packs
its A panels straight from the images (an implicit GEMM) would skip the patches matrix and both passes over it - the
larger lever now that the products are fast.

### olang issues found in phase 4 (repro/)

No compiler bug: everything phase 4 needed compiled as the spec says. Two frictions, both spec-conforming:

- `repro/nestedtry.olang` - a catch clause covers its own `try` only, so `try (try entry["shape"]).AsArr() catch {
  ... }` - look a member up, then convert it - lets the lookup's error escape. `checkpoint.member` converts it first.
- `repro/tryindex.olang` - `try doc[names[k]]` checks `names[k]` too (E16d), adding `BuiltinError` to what the try can
  fail with, though only the lookup was meant. Naming the element first avoids it.

And two limits worth a library: no regular expressions, so GPT-2's pre-tokenization pattern is a hand-written scanner;
and no Unicode character classes in std, so `\p{L}` and `\p{N}` became byte classes (exact on ASCII text). Also met
again: `:=` from a comparison needed its type written (D15 - relaxed in olang 9621af3).


### Measured on olang 374c1e3c, 2026-11-15

At a load average of 35-44 on the 4 cores (other agents compiling). **CNN** (`make cnn ARGS=3`, seed 1, one thread):
test accuracy 96.97 / 97.78 / **98.44**%, test loss 0.0994 / 0.0650 / 0.0471 - the same, to the digit, as the 9621af3 row
above; 37.3, 34.6, 42.5 s an epoch (mean 38.1 s) against 37-53 s with 9621af3 at a load of 10-21, resident 171,588 kB
after epoch 1 and 172,496 after epoch 3 (the arena 60.8 MB; the old run's resident total was 116,7xx kB and flat after
every epoch - here it is higher and **grows ~450 kB an epoch** (171,060 after step 10, 171,148 after step 100), cause not
looked into; 3 epochs only). **BPE** (`make bpe`, vocabulary 512): training 135.1 ms (50-95 ms before), the training part encoded in 65.3 ms
(15.4 MB/s; 35-60 ms, 17-28 MB/s before) and the validation part in 7.9 ms, decoded back exactly, saved and loaded back
to the same tokens; **256 of 256 merges equal to `bench/ref/bpe.py`'s and the same 59,401 validation tokens**. The
timing was taken at a load of 42, the old at 3-6.

## 17. Settling networks (`circuit.olang`)

Beside the graph, `circuit.Circuit<T>` is the second recorded structure: a network of regions whose neurons settle to
an equilibrium, taught by equilibrium propagation (contrasting a free settle with nudged ones) - same `Matrix`, same
one-arena discipline, nothing allocated per settle, lesson or step. Its neuron model is a closed enum with rate
neurons and a working leaky integrate-and-fire variant. Phase 1 is built: the circuit, the certificate and refusal,
`Teach`, gradient checks in F64 (the estimate's error falls as beta^2), XOR with rate and with spiking neurons, and
MNIST at 97.5% with a 784-128-10 circuit. The design, the decisions taken building it and the measurements are
docs/settling.md (sections 2.10, 4.6, 5.7, 6). `make test` runs its checks; `examples/xor_settle.olang`,
`examples/xor_spiking.olang` and `examples/mnist_settle.olang` run it end to end.

Phase 2 is built in `agent.olang`. `agent.Agent<T>` is a circuit living one moment at a time, with these parts:

- a three-factor actor: the circuit, an eligibility trace and a TD error;
- a linear critic;
- a context trace;
- a fast and a persistent associative memory;
- an arousal gate. Calm moments act greedily and touch no synapse; aroused moments explore and learn.

An agent's whole state checkpoints to a safetensors file and restores exactly. `optim.FlatAdamW`/`FlatSgd` step a
circuit's flat parameter region with the same loops `AdamW`/`Sgd` use.

`examples/bandit_settle.olang` runs the contextual bandit, reversal and trace-pinning tasks over many lives with
confidence intervals. The results and decisions are in docs/settling.md, sections 2.11, 5.8 and 6.

Phase 3 adds three modules and two extensions:

- `board.olang` simulates the PYNQ-Z2 engine bit for bit in integers - Q1.15 weights and activities, Q4.14 potentials,
  exact 48-bit sums, a table for `tanh` and one for the cross-entropy's exponential - from a descriptor table, so it is
  the reference a hardware engine is checked against (golden vectors: `Dump`). Lessons can settle on it while the
  contrast and the optimizer run in the circuit (4.4's split). Its equilibria are within a third of the derived bound of
  the exact ones, and MNIST taught through it matches F32 to a few hundredths (91.1% certified at `T = 0.25`, 93.4% at
  `T = 0.05`, answers agreeing on 99.99-100%).
- `store.olang` is the sparse-code store (a random expansion, the top 5% of cells, a delta-rule table).
- `sparse.olang` holds CSR matrices (products in both directions, the contrast sampled at the synapses), top-k and the
  store's gather and scatter.
- A circuit's projections can be stored as compressed sparse rows (automatically at a density of at most 0.25, where a
  lesson is 1.6-2x as fast) or given as a wiring; a readout can be split into softmax groups, and an agent
  chooses one action per group.

`make board` runs `examples/mnist_board.olang`; `make sparse` runs `bench/sparse.olang`. Results and decisions:
docs/settling.md sections 2.12, 5.9 and 6 (decisions 31-47).

Phase 4 adds sleep and spiking on the board (all but the PYNQ-Z2 overlay, which waits for an FPGA toolchain):

- `consolidator.olang` is 1.9's consolidator: a gated linear recurrence on an `nn.Graph` (the window unrolled, the
  batch's sequences as rows, BPTT through the graph's own backward) beside the sparse-code store, which reads at the
  key `[alpha u, rho h]` and enters the slow part's training as a shift of its target - no graph op. A day writes the
  slow part's residuals into the store; a night dreams every cue kept, teaches the slow part the dreams with the store
  excluded, and at dawn rewrites the store with what the slow part did not absorb (in passes until it reads back).
  Sleep helps only with a slow neocortex and a pattern-separating hippocampus: learning by day is off by default and
  the store is far sparser than the store's own default (0.5% active) - measured in docs/settling.md 5.10, where a
  second task learned after a conflicting first leaves the first kept at 96% with nights (the second learned
  completely) and 85-87% without (the second at 86%).
- `board.olang` runs spiking circuits: integer Lif neurons, a time step per sweep, the transport as events (a spike
  adds its weights - no multiplies), rates by a divider at a window's end; within 1.6e-4 of the floating-point circuit
  carrying its values, and MNIST taught through it as through F32 (91.6% after three passes of 10 000 samples).
- An agent's checkpoint keeps its generator's state (std/rand's `State`/`SetState`), so a restore needs no replay.
- Measured open questions: a certified board circuit's readout temperature (0.05: 93.9% on MNIST against 91.3% at
  0.25) and sampling in calm moments (it raises the bandit's regret, so calm moments stay greedy).

`make sleep` runs `examples/sleep_retention.olang`; `make board ARGS=...` with a window runs spiking MNIST on the
board. Results and decisions: docs/settling.md sections 2.13, 5.10 and 6 (decisions 48-61).

Phase 5 wires the consolidator into the agent (open question 11), as an option (`Settings.Consolidate`): the moments
that learn write what they observed - the observation, the reward of the action taken and nothing else - into its
store by day, `a.Sleep()` runs a night between stretches of life, and its recall drives the readout beside the
memories'. Measured on the bandit, the reversal and a retention task lived (surroundings A, a conflicting B, A again):
the store lowers every task's regret - back in A, 0.07 in the first 250 moments against 0.19 without it - while the
nights add nothing, changing the recall only at observations never seen. Results and decisions: docs/settling.md
sections 2.14, 5.11 and 6 (decisions 62-71).

Phase 9 answers what an agent's nights are for (docs/settling.md open question 14; section 23 below): generalization
where observations recur only approximately - a new surroundings sharing old answers, noisy cues, new points of a smooth
rule - and retention for a store that forgets; a cost where new surroundings conflict. It adds a transient store
(`Settings.RecallHalfLife`, off) and a reservoir of the cues a night replays (`Settings.SleepCues`, 1 024 for an
agent). `make nights` runs `examples/nights.olang`. Results and decisions: docs/settling.md sections 2.15, 5.12 and 6
(decisions 72-76).

Phase 10 answers how a consolidating agent should read what it remembers (docs/settling.md open questions 15-17;
section 24 below): its recall drives the readout alone, at gain 2; observations with numbers missing are completed from
the whole ones learned; and the slow part's guess at observations the store has never seen is weighed by a bet learned
from the outcomes there. Results and decisions: docs/settling.md sections 2.16, 5.13 and 6 (decisions 77-85).

### Measured on olang 374c1e3c, 2026-11-15

At a load average of 34-44 on the 4 cores (`uptime`). `make board ARGS=1` (784-128-10, lessons settled on the board,
batches of 32, beta 0.5, T 0.05, defaults): epoch 1 train loss 0.0178, 24.9 sweeps a lesson, 6.9 s, test accuracy
**91.71% in F32 and 91.71% on the board, the answers agreeing on 100.00%** (1.0 s to answer the test set both ways);
0 refused, gain 0.90, constants clipped 0.11%. `make sleep` (retention, 10 lives): days only, recall of A after B
82.8 +- 4.9; store alone 87.6 +- 3.9; days and nights **95.2 +- 5.5** (B 100.0); nights only 99.1 +- 1.2 - the 85-87%
against 96% of docs/settling.md 5.10, unchanged; 114 s (user 70 s). `make nights` not run.

## 18. Phase 5: attention on products, mixed precision, a Dataset trait

### Attention through std/linalg's Gemm

(Replaced in phase 6 by one `GemmBatch` per product over every sequence and head: section 19.)

Attention's six products per sequence and head - `S = Q K^T`, `Y = P V`, `dP = dO V^T`, `dQ = dS K`, `dK = dS^T Q`,
`dV = P^T dO` - are each one `ws.Gemm` on the heads' strided views (section 11), replacing the dot products and
updates over the same views, which computed only the causal half. A task packs into a `GemmWorkspace` of its own
(the graph keeps one per thread, grown at `Plan` by running the products once on zeros), and transposes a right
operand into its scratch first where std/linalg would otherwise compute the product unpacked (section 13). The softmax
stays `math.Exp` (a library call per element): `linalg.FastExp` in that loop measured slower, 3.6-3.8 ms against
2.9-3.1 for the forward at T 64, the running sum keeping it from vectorizing.

**Checked**: the gradient checks of section 9 (causal and not, two and four heads, a node attending to itself, short
batches), and two more through the packed products - sequences of 8 (the scores packed, the rest direct) and 130
(every product packed) against central differences in `F64` with a step of `1e-5` (at `1e-6` the differences' own
rounding is already 4e-7 to 7e-7 of these gradients), and causality through the packed products: changing row 25 of a
sequence of 32 leaves rows 0-19 of the output exactly as they were. The first 40 steps of the character model
against numpy (`make lmref ARGS=40`): losses within 1e-6 and gradient norms within 2e-6, as before.

**Measured** (olang edf8238, one thread, on the shared machine at a load average of 5-8): `bench/attention.olang`,
16 sequences of 64, width 128, 4 heads, medians of 9 alternating rounds - the forward 4.6-6.0 ms by the loops against
2.5-3.1 by `Gemm`s, the backward 4.5-5.2 against 3.1-3.7; at T 256 (16 sequences), 70-81 ms against 32-42 forward
and 71-83 against 36-37 backward. Without the transposes the products below 64^3 ran unpacked and the backward at T 64
was *slower* than the loops (6.0-7.5 ms against 4.5-5.1). The transformer step (`bench/lm.olang`, 10 steps after 3,
medians of 8 runs alternating the build before and after, `bench/abstep.olang`):

| context | attention before | attention after | step before | step after |
|---|---|---|---|---|
| 64 (16 sequences) | 44.1 ms (21.6 forward, 22.5 backward) | 29.1 (13.4, 15.7) | 164.6 ms | 153.1 |
| 256 (4 sequences) | 150.6 (76.2, 74.4) | 73.4 (35.7, 37.7) | 264.3 | 182.1 |

(At 256, medians of 6 runs of 5 steps.) Attention is 1.5x faster at context 64 and 2.05x at 256; the step 1.08x and
1.45x. The products and the rest of the graph did not move (96-100 and 22 ms at 64).

### Mixed precision: BF16 storage, F32 computation, F32 masters

`nn.Graph<BF16>` is a mixed-precision graph. Every value, gradient and saved matrix is held in BF16 - the arena is
half an F32 graph's - and every operation is computed in F32. The parameters' F32 masters live beside the arena:

- Each kernel takes the type it computes in as a last parameter, `z <A>`: the graph's own type for F32 and F64, F32 for
  BF16 (std/linalg's reductions use the same pattern). It reads each stored element up into `A`, computes in `A` -
  sums, softmaxes, normalizations, the losses' log-sum-exp included - and rounds each result it stores down once
  (`kernels.Up`, `kernels.Down`). For an F32 or F64 graph both are nothing.
- The products are std/linalg's BF16 `Gemm`. It reads its operands where they are, widens them to F32 as it packs them,
  and accumulates in F32.
- `Plan` draws the parameters' starting values into the masters - the very numbers an F32 graph draws from the same
  generator - and rounds them into the arena.
- An optimizer steps the masters from the BF16 gradients, read up into F32, with its moments in F32. It then rounds the
  masters into the arena (`SyncParams`).
- A checkpoint is the masters. A BF16 graph's raw checkpoint is an F32 graph's, and safetensors written as `Same` are
  F32, so a model trained in BF16 loads into an F32 graph for decoding (`examples/charlm.olang` does) and back.
- A loss's value is kept in F64 (`g.Scalar`), whatever the storage type: rounded to BF16 it would have three digits.

`make mnist ARGS="10 adamw 1 1 bf16"` and `make charlm ARGS="2000 1 1 0 500 bf16"` train in it (a last argument
`bf16`, for `bench/lm.olang` and `bench/train.olang` too). Not built: a BF16 graph's projection regularizer (it steps W
in the graph's own type; refused with a message), convolutions computing in F32 (they compile for BF16 and compute in
it), decoding in BF16 (decoding graphs are F32), and F16 (below).

**The choice, against the two designs section 14 listed:**

1. *A second arena of BF16 copies that the products read* - PyTorch's autocast, more or less. The activations stay in
   F32, so it saves no memory: it adds the copies. Every product gains a narrowing pass per operand, and its output is
   BF16 to be widened back. Its one gain is a product reading half the bytes, and std/linalg's packing already reads
   its operands once. On this CPU it is the slowest of the three and the largest.
2. *A graph with a type per node* - the general form: autocast keeps normalizations, softmaxes and losses in F32. But
   every kernel would take each operand in either type (a three-input op in up to eight instantiations), and `Value`,
   `Grad`, the "written" flags and the planner would all carry a type. What it would add over the choice is F32
   *storage* for those nodes; their *computation* is in F32 already. The parity below says that storage is not needed
   at this size.
3. **One storage type per graph, F32 inside every kernel, F32 masters - the choice.** It is Micikevicius et al.'s
   recipe ("Mixed Precision Training": FP16 storage, FP32 master weights, FP32 accumulation) with BF16, whose exponent
   is F32's (Kalamkar et al., "A Study of BFLOAT16 for Deep Learning Training"). The arena halves - 86.0 MB to 46.1 for
   the transformer, its 3.2 MB of masters included; 1.42 to 1.10 MB for the perceptron, whose parameters dominate. The
   products read BF16 where it lies. The code is the F32 code with a witness.

**Loss scaling: not needed, and not built.** BF16 has F32's exponent. Over 30 steps of the character model, its
smallest nonzero parameter gradient was 2.7e-13 (after clipping), and BF16's smallest normal number is 1.2e-38: nothing
underflowed. In F16, 34% of the same gradients would have been subnormal (below 6.1e-5) and 0.4% would have flushed to
zero (below 6e-8). A `Graph<F16>` would need loss scaling, and is not offered.

**Parity** (olang edf8238, one thread, the same seeds, AdamW as in sections 8 and 11):

| | F32 | BF16 storage, F32 masters |
|---|---|---|
| MNIST perceptron, test accuracy after 10 epochs, seeds 1 / 2 / 3 | 97.79% / 97.69% / 97.79% | 97.87% / 97.69% / 97.78% |
| the same, test loss | 0.0721 / 0.0745 / 0.0722 | 0.0718 / 0.0748 / 0.0708 |
| MNIST with SGD (lr 0.05, momentum 0.9), seed 1 | 97.86%, loss 0.0729 | 97.83%, loss 0.0719 |
| character model (section 11), validation loss at step 250 / 500 / 750 / 1000 | 2.3825 / 2.2186 / 2.0828 / 2.0032 | 2.3817 / 2.2181 / 2.0882 / 2.0029 |
| the same at step 1250 / 1500 / 1750 / 2000 | 1.9575 / 1.8779 / 1.8220 / **1.8063** | 1.9622 / 1.8790 / 1.8221 / **1.8077** |
| its training loss at step 1000 / 2000 (the mean of the last 50 steps) | 1.9224 / 1.7023 | 1.9223 / 1.7030 |

The two character models run side by side, each on one thread, at a load of 5: the F32 run gave exactly section 11's
losses (1,108 s then; 394 s, 197 ms a step, now), the BF16 run took 1,187 s (594 ms a step). Its validation losses stay
within 0.006 of F32's all the way and end 0.0014 above them. Its sample, generated by an F32 decoding graph from the
BF16 run's masters, reads as section 11's does.

**Speed: slower on this compiler, and why.** Interleaved on the shared machine (load 5): an MNIST epoch (`bench/train`,
the best of three epochs, medians of 5 runs) **0.63 s in F32, 2.11 in BF16**; a transformer step (`bench/abstep.olang`,
medians of 4 runs) **157 ms in F32, 650 in BF16** - products 102 against 366 ms, attention 29 against 119, the rest
of the graph 23 against 160. Neither the format nor this design costs that - narrowing does:

- **Narrowing to BF16 is a call per element** (`repro/bf16narrow.olang`). `BF16(x)` - an F32 rounded to BF16 - is a
  call of the C library's `__truncsfbf2`, 10-14 ns an element, never vectorized (widening is an integer shift, 1 ns).
  std/linalg's BF16 product rounds every result it writes through it: a `1024 x 512 x 128` product took 8.2 ms in BF16
  against 1.3 in F32 - most of the products' difference above.
- **Narrowing by bits is exact but scalar.** oann's own kernels round by the bits instead (`kernels.ToBF16`: the same
  bits as `BF16(x)` on every input tried, 1.3-2 ns an element). But `BF16FromBits` goes through an empty inline asm (the
  compiler's guard against an InstCombine bug), and no loop vectorizes through it. A pass with little arithmetic costs
  1.5 ns an element against F32's 0.5; GELU, whose `FastTanh` vectorizes in F32, runs scalar at 22-27 ns against
  1.5-1.9 - most of "the rest" above.

With narrowing as cheap as widening, a BF16 product would cost about what an F32 one does (its packing widens anyway),
and the element-wise passes would move half the bytes. That is a compiler change; oann's side is in place. The F32 and
F64 graphs are unchanged by the witness: interleaved against the build before it, an MNIST epoch 0.61 against 0.63 s
and a transformer step 183 against 173 ms (medians, load 5 - noise both ways).

**Checked**: a BF16 graph of every kind of kernel - dense layers, GELU, layer and RMS normalization, causal attention
over two heads, a residual add, softmax cross-entropy - against the same network in F64 from the very values the BF16
graph computes with: the loss within 9e-5 relative and the parameter gradients within 0.7% (bounds 1e-3 and 2e-2), on
a full and a short batch. The masters start where an F32 graph's parameters do, bit for bit. AdamW and SGD on a BF16
graph move masters by steps BF16 cannot hold (1 - 1e-4 rounds back to 1), until they show in the graph. Checkpoints,
raw and safetensors, load between BF16 and F32 graphs exactly. `kernels.ToBF16` gives `BF16(x)`'s bits for zeros,
ties, subnormals, the largest finite values, infinities and NaN (and all 4,194,304 normal draws of the reproducer).

### A Dataset trait, and filling the next batch on a task

`loader.Dataset` is a trait - `Size()`, `Dim()`, `Get(i, features)` - and `Loader<D Dataset>` reads any type that
has those methods, `Labeled` (bytes, scaled and shifted) among them; a test reads a dataset made up as it is read. The
loader writes F32 features straight into an F32 batch, and through a row of its own, rounded once, into a BF16 one.

A graph planned `Ahead` keeps two regions per input (section 7), and `train.Epoch` and `Evaluate` fill the next batch
into the second on a task - `spawn next = l.Fill(b + 1, g.NextInputData(x), g.NextClassData(y))` in the `join` block
that runs the step - then `Flip` between steps. Three epochs with and without it give the same losses, parameters and
accuracy bit for bit. `examples/mnist_mlp.olang` plans its graph `Ahead`.

**Measured** (`bench/train.olang`: `train.Epoch` on two graphs, one `Ahead`, alternating rounds, medians of five): it
gains only where a core is free, and this machine never had one while it was measured. Filling a batch is 8% of an
MNIST epoch (50 ms of 0.60 s; 2-4 ms of a CNN or language model's step, nothing worth hiding), and a `join` with one
task costs 7 us once its worker is cached (3.4 ms over an epoch's 469 batches) - so on an idle core the epoch would
lose up to ~45 ms of its 0.60 s. Under the shared machine's load of 6-12 on 4 cores, the task waits for a core and the
step waits for the task: 0.61 s in turn against 0.74 filling ahead at a load of 6, then 0.78-0.88 against 0.83-1.01 at
12 (six runs). It is worth turning on for a training run with a core to spare, and costs a second input region (0.39 MB
for MNIST's batches); the examples other than MNIST's leave it off.

### olang issues found in phase 5 (repro/)

- `repro/spawncall.olang` - a task spawned as an immediately called lambda, `spawn fn() { ... }()` in a loop, that
  captures two references and the loop's variable sees wrong captures: hundreds to thousands of 25,600 elements
  wrong. `spawn fn() { ... }` is refused for capturing the loop's variable (P2), so the called form seems to slip past
  that check. `ops.parallel`'s form - the lambda made once, outside the join - is right, and is what attention uses.
- `repro/bf16narrow.olang` - narrowing to BF16 is a C library call per element, 10-14 ns, and the bits route stays scalar
  (`BF16FromBits` goes through an empty asm): std/linalg's BF16 products run 2-6.5x slower than F32's, and BF16 training
  3.4-4.1x slower (above). oann narrows by bits in its own kernels.
- `repro/capturedvalue.olang` - a lambda capturing values runs ten times as slow as one declaring them, once the
  function handing it to `Map` is called from a larger one (a dispatch of eight operations; the graph's forward): GELU's
  pass went from 1.1 to 10.6 ms at 1024 x 512 with two captured type witnesses. oann's lambdas declare the witnesses
  they need (`w A`, `like T`).

## 19. Phase 6: olang 472373d - permissions, attention in batches, convolutions from the images

Built with olang 472373d, measured 2026-10-09 between 20:00 and 21:00 CEST on the shared 4-core machine at a load
average of 6-9 (other agents compiling and testing): every figure is an interleaved median or a range of them, and the
ranges are wide.

### Migrating: `mut` only where a reference's target is written

olang's permissions batch made `mut` speak only about what a reference reaches: no `mut` before a by-value field,
parameter or local, and a local written through needs `x mut T& = ...`. olang's `tools/perm_mut.py` migrated oann from
the compiler's own diagnostics - 168 `mut` removed (mostly settings and counters in structs: `Rate F64 = 0.0003`), 45
locals given `mut` - and nothing was left by hand: no `mut` before a by-value type variable meant the binding. The
same pass found `examples/mnist_board.olang` not compiling since phase 5 made `Loader` generic (`evaluate` named it
bare; it takes a `Loader<<D>>` now). `make test`: every test as before.

### Attention: one `GemmBatch` per product

Attention's six products - `S = Q K^T`, `Y = P V`, `dP = dO V^T`, `dQ = dS K`, `dK = dS^T Q`, `dV = P^T dO` - are each
one std/linalg `GemmBatch` (`ops.Attention`, `ops.AttentionBackward`), over every sequence and head of a part at once:
`q.Heads(T, heads)` is the heads' strided column blocks of `q` (a group per sequence, a member per head), and so for
`k`, `v`, `y` and the gradients, and `probs.Stacked(T, heads)` is the weights as attention keeps them. Causal:

- the scores and `dP` are computed on and below the diagonal only (`Triangular.Result`) - the rest neither computed nor
  written; the softmax writes `P`'s zeros there all the same (it is a value its readers may look at whole), and `dS`'s
  upper triangle is left as the product left it, never read;
- `P` and `dS` are read on and below it only, as the left operand of the other four (`Triangular.Left`, `dK` and `dV`
  with the transpose) - so no product ever sees a later position: causality is exact by construction, not by zeros.

Between the calls run the softmax and `dS`'s pass, the part's sequences and heads spread over the graph's threads by
`ops.parallel`; the products are spread by std/linalg. What went: the per-sequence tasks, a workspace per task, `Plan`'s
warm-up, the transposed blocks (`GemmBatch` packs every product, so nothing falls to the unpacked path below 64^3) -
the products pack into the graph's own `GemmWorkspace`, grown in the first step like every other product's. What
came: `dS` as one scratch region of the arena the size of the largest attention's `P` (in place of a `T x T` and a
`dh x T` per task) - the character model's arena 86.0 -> 87.0 MB.

**A part at a time.** `GemmBatch` over every sequence and head at once was slower than a `Gemm` per head for a
non-causal backward at `T` 256, as std/linalg's own measurement had warned: each pass - a product, the `dS` pass, the
next product - streams every head's `P` and `dS` (4 MB each at 4 sequences of 4 heads) from memory again, where a head
done back to back finds its 256 KB still in L2. So attention takes its `T x T` matrices a part at a time - a run of
whole sequences, or a run of one sequence's heads - each part as many matrices as keep `P` (forward) or `P` and `dS`
(backward) in 512 KB a task (`ops.attentionEach`: at `T` 64 in F32, 32 matrices forward and 16 backward a task; at 256,
two and one). Measured on the backward at `T` 256 (4 sequences, 4 heads, one thread), the batches' time as a multiple
of a `Gemm` per head's in the same process (three to five runs each):

| matrices in a part (backward) | non-causal | causal |
|---|---|---|
| all 16 at once | 1.20-1.49x | 0.73-0.89x |
| 4 (a sequence) | 1.02-1.25x | 0.65-0.73x |
| 2 (1 MB of `P` and `dS`) | 0.97-1.11x | 0.59-0.75x |
| **1 (512 KB)** | **0.87-1.02x** | **0.57-0.65x** |

so a part is never measurably slower than per-head products, and keeps the batched calls everywhere else - at `T` 64
the backward's part is 16 of the 64 matrices, and with four threads all 64. Results do not depend on the parts or the
threads (a test compares them bit for bit).

**Checked**: outputs and gradients equal the per-head `Gemm`s' bit for bit (`bench/attention.olang` compares them on
every run: a difference of 0); the gradient checks of section 9 in F64 (sequences of 3, 8 and 130 - tiles straddling
the diagonal and wholly above it), the causality test (rows before a changed one exactly as they were), one task
against three at `T` 3 and at `T` 64 (where std/linalg splits the products too), a part at a time against all at once
(heads in parts of one and of three); and the first 40 steps of the character model against numpy (`make lmref
ARGS=40`): the same numbers as before, losses within 1e-6 and gradient norms within 2e-6.

**Measured** (`bench/attention.olang`, ms, one thread, four runs of 9-15 rounds each, the batches against the per-head
`Gemm`s of phase 5 in the same process; the ratio's median over the runs):

| | forward, per head | forward, batches | ratio | backward, per head | backward, batches | ratio |
|---|---|---|---|---|---|---|
| T 64, 16 sequences, causal | 2.1-3.2 | 2.3-3.2 | 0.95 | 2.8-3.7 | 2.0-2.8 | 0.80 |
| T 64, not causal | 3.1-4.9 | 3.0-4.8 | 0.97 | 2.7-3.9 | 2.2-3.7 | 0.92 |
| T 256, 4 sequences, causal | 7.3-9.4 | 6.5-9.5 | 0.89 | 7.6-9.4 | 5.1-7.2 | 0.67 |
| T 256, not causal | 12.0-15.2 | 11.1-15.0 | 0.95 | 8.8-11.3 | 7.7-10.5 | 0.89 |

The backward gains most - three of its four products are causal, and the transposes are gone. The forward barely
moves because it is mostly not products any more: at `T` 64 (16 sequences, 4 heads) the scores' product takes 0.35-0.6
ms, `P V` 0.33-0.6, and the softmax between them 1.0-2.0 - `math.Exp`, a library call per element (section 13's first
item). The transformer's step (`bench/abstep.olang`, the build before and after alternating, the graph's own profiling):

| context | attention before | attention after | step before | step after |
|---|---|---|---|---|
| 64 (16 sequences, 8 runs of 10 steps) | 26.1 ms (11.4 forward, 14.7 backward) | 25.1 (11.4, 13.7) | 165.6 ms | 155.2 |
| 256 (4 sequences, 6 runs of 5 steps) | 78.4 (39.1, 39.3) | 60.5 (32.8, 27.7) | 206.4 | 190.4 |

(The products, untouched, moved between 86 and 125 ms run to run: the steps' difference is mostly the machine.)
Attention is 1.3x faster at context 256 and level at 64, where phase 5 had already made it a fifth of what it was.
Four threads were not measured: on four cores loaded 6-9 a task waits for a core (section 11).

### Convolutions: the forward from the images

`conv.Conv2d` is one std/linalg `GemmPatches`: the product of the patch matrix and `W^T`, the patches packed from the
images as the product reads them - never made - and the bias added as each block of the output is finished
(`linalg.Activation.Identity`; the CNN's ReLU stays a node of its own). The result is **exactly** im2col's, the
product's and `AddRow`'s (a test, F32 and F64; the CNN's first epoch prints the same losses and accuracy). The backward
is unchanged: `dW = dY^T cols` reads the patches as its right operand, which `GemmPatches` does not take, so it makes
them (im2col) into the graph's patches region as before.

**Measured** (`bench/conv.olang`, ms for a batch of 128, three runs of 30 at a load of 8.5): the first convolution's
forward **6.0-6.9 -> 3.7-4.5** (its im2col was 3.3-3.8 of it), the second's 10.7-11.2 -> 10.3-11.1 (9.9 -> 8.9 in an
earlier run); a step of the two with their backwards 20-23 -> 18-20 and 37-39 -> 36-39 ms. In the CNN
(`examples/mnist_cnn.olang ... profile`, two runs each, alternating): the convolutions' forward **7.35-7.77 -> 6.32-6.47
s an epoch**, their backward 14.8-15.7 -> 14.9-15.2; whole epochs (six runs each, alternating) 30.5-34.7 s -> 29.9-34.6
s, medians 32.8 -> 31.8 - within the machine's noise.

### `GemmAct`: measured, not adopted

std/linalg's `GemmAct` is a product with its bias and activation applied to each block of rows as it is finished.
Against oann's separate passes (`Linear`, then the activation's node), forward, ms, two runs:

| layer | separate | `GemmAct` |
|---|---|---|
| the perceptron's 128 x 784 -> 128, ReLU | 0.36-0.45 | 0.35-0.43 |
| the transformer's 1024 x 128 -> 512, GELU (tanh) keeping the pre-activation | 2.56-2.91 | 2.72-3.19 |
| the same, ReLU (no model of oann's) | 1.98 | 1.59-1.60 |

The results are identical (std/linalg's GELU is oann's `GeluTanh` to the bit). It is level where oann could use it -
the bias and ReLU passes over a 128 x 128 batch are ~10 us of a 0.35 ms product, ~5 ms of a 0.6 s epoch - and slower
for the transformer's GELU, which also has to write the pre-activation for its backward. Using it would also take a
fused graph node (`LinearAct`) whose value is the activation, while `AdamWProjected` reads a dense layer's
pre-activation (`W X^T`, from the `Linear` node's value) for its projection: the node would have to keep it as well.
And std/linalg's `ActivationBackward` does not compile for F32 (repro/condliteral). So the graph keeps `Linear` and the
activations as separate nodes; the case for fusing is a wider ReLU layer, or ReLU after a convolution (`GemmPatches`
with `Activation.Relu`, 1.4-1.5 s of the CNN's epoch), when one matters.

### An MNIST epoch: unchanged

Nothing on the perceptron's path changed: `examples/mnist_mlp.olang`, three epochs a run, six runs each alternating
with the build before - 0.53-0.76 s an epoch before, 0.55-0.93 after, medians 0.66 and 0.67 at a load of 7.3-7.6.

### Decisions

1. **Attention's products are `GemmBatch`es, causal ones confined to their triangles** (`Result` for the scores and
   `dP`, `Left` for the products reading `P` and `dS`), replacing a `Gemm` per sequence and head: identical results,
   the backward 1.1-1.5x faster, less code (no tasks, workspaces, warm-up or transposes).
2. **A part at a time, sized by cache** (512 KB of `P`, or `P` and `dS`, a task) rather than every sequence and head
   at once: the one measured case where batching was slower - the non-causal backward at `T` 256 - becomes level or
   faster, and every other case stays batched. The constant is this machine's L2 (1 MB a core) halved; it is one
   number in `ops.olang`.
3. **One workspace for every product** - attention's included - and **`dS` one region the size of the largest
   attention's `P`**: 1 MB more arena for the character model, against a workspace and two matrices per task.
4. **`P`'s zeros above the diagonal are still written** (the softmax's last loop), though no product reads them: the
   saved weights stay a complete value. `dS`'s are not (scratch).
5. **The softmax keeps `math.Exp`**: it is now about half of attention's forward, but a faster exponential is
   std/linalg's (or the compiler's) to give, not oann's to approximate (section 13).
6. **The convolution's forward is `GemmPatches`; its backward keeps im2col** (std/linalg measured the right-operand
   form slower), and so the graph keeps its patches region.
7. **`GemmAct` is not adopted** (above): level where usable, slower for GELU, and a fused node would have to keep the
   pre-activation the projection reads.
8. **The CNN's ReLU is not fused into `GemmPatches`** either, for the same reason as 7 - a node of its own keeps the
   graph's kinds simple - though there it would save a pass (1.5 s of a 30 s epoch); recorded as the next fusion if one
   is wanted.

### olang issues (repro/)

- New: `repro/condliteral.olang` - a conditional of literals (`1.0 if x > 0.0 else 0.0`) beside an F32 value in a match
  or another conditional is taken for an F64, so the F32 value is an error; std/linalg's `ActivationSlope` is written
  that way, and neither it nor `ActivationBackward` compiles for F32.
- Run again on 472373d: `spawncall`, `bf16narrow` and `capturedvalue` still reproduce (being changed in olang's
  wt-cgfix3), `genericctor` and `operatornames` too (wt-chk4); `fieldname`, `joinparen` (now reported as E11b, naming
  `$(...)`), `nestedtry` and `tryindex` as before. `capturedfn`, `ctorpush` and `ctorunstored`, fixed since olang
  edf8238, are deleted.

## 20. Phase 7: olang db2af5d - the catch-up, BF16 again, the softmax's exponential, sleep in the agent

Built with olang db2af5d, measured 2026-10-10 between 00:00 and 02:00 CEST on the shared 4-core machine at the load
averages given with each figure (other agents compiling and testing): every time is an interleaved median or a range
of them.

### Catching up

`make test` on db2af5d passed all 118 tests with no change, and every example and benchmark built. Of the compiler's
changes since 472373d, the one that could have changed oann's behaviour silently - `List` and `Map` are handles now, a
copy naming the same collection - changes nothing here: every `List` a struct of oann's holds is a reference field
already, and no local one is copied. Two names went back to what they always meant: the graph's matrix product and
element-wise product are `g.MatMul(a, b, ta, tb)` and `g.Mul(a, b)` (they were `Product` and `Multiply` while olang
reserved the operator methods' names for every method; its E31 now takes a method for an operator only in the
operator's shape, and these take four and two parameters). The layers keep their factory functions (`NewDense`, ...)
though a constructor may now take the generic graph (olang's G10d): a constructor would change only the spelling of
the whole layer API, and `NewDense` and `NewDenseWith` are two ways into one type.

`repro/` run again: five are fixed and deleted -

- `genericctor` and `operatornames` compile and run (G10d, E31);
- `spawncall`: no wrong element in three runs (was 2 816-10 752 of 25 600);
- `bf16narrow`: `BF16(x)` 0.74-1.8 ns an element (was 8.7-10.1), a BF16 multiply-add 0.58-1.8 (was 24-27), the bits'
  route 0.65-0.73, widening 0.87-2.8 - narrowing is now inline integer arithmetic on the F32's bits, and all 4 194 304
  draws narrow alike both ways;
- `capturedvalue`: a lambda capturing its type witnesses 1.9-2.1 ns an element, declaring them 1.6-2.2 (was 24-29
  against 1.6-2.1) - function values cross calls as two words now.

`condliteral` still reproduces (being fixed in olang); `fieldname`, `joinparen`, `nestedtry` and `tryindex` are reported
as before.

### BF16 again: as fast as F32

Section 18 left mixed precision 3.4-4.1x slower than F32, every narrowing to BF16 a call into the C library. olang
db2af5d narrows inline (integer arithmetic on the F32's bits, vectorized), which made std/linalg's BF16 products as fast
as F32's - and showed what else had been hidden behind the calls:

- **A BF16 element store carries no type-based alias tag** (`repro/narrowtbaa.olang`, new): olang tags the stores of
  T36's original six types (U8, I32, I64, F32, F64, Bool) and not those of I8, I16, U16, U32, F16 or BF16, so a BF16
  store may change any array descriptor. std/linalg's `Map`, `Map2` and `Map3` read their matrices' storage through
  the matrices at every element; for F32 that load is hoisted and the loop vectorizes, for BF16 it is repeated and the
  loop stays scalar ("cannot identify array bounds", LLVM's remark). GELU over a 1024 x 512 BF16 matrix took 22 ns an
  element through `Map`, 1.5 with each row taken into a local first - as F32 takes either way; an element-wise add 2.1
  against 0.29 (F32: 0.6). So the element-wise kernels go through `ops.each1`, `each2` and `each3`, `Map`'s loops with
  the rows in locals, and `nn.SyncParams` (the F32 masters rounded into the arena after every step) and `loader.Fill`
  take their arrays into locals before their loops: the optimizer's share of a BF16 MNIST epoch fell from 0.15 s to
  0.05.
- **`kernels.ToBF16` is gone**: `Down` is the plain conversion. Narrowing by the bits measured the same as `BF16(x)` in
  every form tried (GELU 1.5-1.7 ns an element either way, MNIST epochs 0.66 and 0.69 s, transformer steps 219 and 213
  ms - noise both ways), and the results are the same bits.
- **The lambdas capture what they use**: the type witnesses `w A` and `like T` declared inside every element-wise
  lambda (section 18's workaround for repro/capturedvalue) are captured again, `z` and a `like` declared beside the
  call. Measured level: F32 steps 117 against 120 ms, GELU 3.6 / 4.5 against 3.8 / 4.5 ms forward / backward, MNIST
  epochs 0.512 against 0.517 s.

**Measured** (interleaved, the catch-up commit's build against this one, load 2.3-2.9; results bit for bit as before):

| | F32 before | BF16 before | F32 after | BF16 after |
|---|---|---|---|---|
| MNIST epoch, s (`mnist_mlp`, 3 epochs a run, 8 runs) | 0.514 (0.49-0.54) | 0.634 (0.59-0.73) | 0.525 (0.48-0.56) | 0.569 (0.50-0.67) |
| transformer step, ms (`bench/lm`, 10 steps, 8 runs) | 131 (113-155) | 215 (205-231) | 119 (112-132) | 115 (104-118) |
| its products / attention / the rest | 89 / 20 / 20 | 75 / 20 / 116 | 80 / 18 / 19 | 72 / 20 / 20 |
| its GELU forward / backward | 3.9 / 5.0 | 46.9 / 55.9 | 3.9 / 4.7 | 3.7 / 4.9 |

(Section 18, on olang edf8238: an epoch 0.63 s in F32 and 2.11 in BF16, a step 157 and 650 ms.) A BF16 transformer step
now costs what an F32 one does - its products a little less, its element-wise passes moving half the bytes (an add 0.58
ms against 1.04), its normalizations a little more - with half the arena. An MNIST epoch in BF16 is 1.1x F32's
(`bench/train`: fill 0.057 against 0.044 s, the optimizer 0.055 against 0.042, forward and backward 5-10% more), its
products too small for the halved bytes to tell.

### The softmax's exponential

Section 19 left attention's forward mostly its softmax - `math.Exp`, a library call per element, beside a running sum
- and section 13 asked std/linalg for an exponential that vectorizes. It has one: `FastExp`, olang arithmetic within
3e-7 relative in F32 and 6e-16 in F64 (about 2.5 ulp; std/linalg's own measurement over two million points). Section
18 had found it no faster in this loop, the running sum keeping the loop scalar; so `ops.softmaxCausal` now writes the
exponentials in a pass of their own and sums them in a second, in eight lanes (`kernels.SumIn`). The row softmax of
other graph nodes and the losses' log-sum-exp keep `math.Exp`: they are a few columns wide (classes, not positions).

**Accurate enough, by the checks that stand for it**: the gradient checks against central differences in F64 (every
attention test of `nn.olang`, causal and not, up to sequences of 130) pass as before; `make lmref ARGS=40` gives the
same numbers as before to the digits printed - the losses within 1e-6 of numpy's over the 40 steps, the gradient norms
within 2e-6; `bench/attention` finds the outputs and gradients within 7.2e-7 of its reference, which keeps `math.Exp`.

**Faster** (interleaved medians, load 2.2-4.3; `bench/attention`, one thread, ms, 6 runs; `bench/lm`, ms a step, 4-6
runs):

| | `math.Exp` | `FastExp` |
|---|---|---|
| attention's forward, T 64, 16 sequences, causal / not | 1.98 / 3.18 | 1.49 / 1.86 |
| attention's forward, T 256, 4 sequences, causal / not | 6.57 / 10.87 | 3.95 / 5.74 |
| the transformer's attention forward, context 64, F32 / BF16 | 9.15 / 10.9 | 7.00 / 9.3 |
| the same at context 256 (4 sequences), F32 | 26.1 | 16.8 |
| a step, context 64, F32 / BF16; context 256, F32 | 129 / 123; 155 | 127 / 115; 149 |

So decision 5 of section 19 is reversed: the softmax takes std/linalg's exponential, and section 13's first item is
done.

### Sleep in the agent

docs/settling.md's open question 11 is built (its 2.14, 5.11, decisions 62-71): `agent.Settings.Consolidate` gives an
agent a `consolidator.Consolidator` beside its memories. What it took of the consolidator: a day that observes only some
targets (`Day(u, y, n, known)`, and `Store.Write`'s `known` below it), a store rate for noisy targets by day with dawn
writing at 1, a slow part that answers 0 until its first night (`QuietReadout`), a store keyed by the input alone
(`StateInKey`), and its state in the agent's checkpoint (`Store.Reseed` makes a saved store's projection again from its
seed). An agent without a consolidator lives exactly as before.

What it bought, on `examples/bandit_settle.olang`'s tasks: its store, learning by day, a third of an agent's regret in
the first 250 moments back in surroundings it had left for conflicting ones (0.069 against 0.193, 40 lives), a fifth
of it afterwards, and lower regret in the plain bandit and the reversal; its nights, nothing more - with every
observation seen before, a night leaves the recall as it was, and where an observation is new the slow part's
generalization cost it (the conflicting surroundings' start, 0.178 against 0.159). Keyed as 1.9 keys the store, by the
slow part's state too, the nights did harm (0.095 against 0.068), each moving the keys that decide which memories share
cells. A consolidator costs 0.27 ms a moment, 0.67 with a night every 500 moments, against 0.03 without one.

### Decisions

1. **The graph's products are `g.MatMul` and `g.Mul`** again, olang's E31 no longer reserving the names; **the layers
   keep their factories** (`NewDense`, ...), a constructor changing only the spelling.
2. **`kernels.Down` is the plain conversion**: `ToBF16`, rounding by the bits, measured the same and is gone.
3. **The element-wise lambdas capture what they use** (`z`, `like`) rather than declaring witnesses inside: level.
4. **The element-wise kernels go through `ops.each1`, `each2` and `each3`**, not std/linalg's `Map`: the same loops
   with each row's storage in a local, which is what lets a BF16 loop vectorize on this compiler (repro/narrowtbaa);
   `nn.SyncParams` and `loader.Fill` take their arrays into locals for the same reason. When olang tags BF16 stores,
   `Map` would do again.
5. **Attention's softmax takes `FastExp`**, its sum a pass of its own (reversing section 19's decision 5): 1.3-1.9x
   faster forward, every accuracy check as before.
6. **An agent may have a consolidator**, off by default: docs/settling.md decisions 62-71.

### olang issues (repro/)

- New: `repro/narrowtbaa.olang` - the element stores of I8, I16, U16, U32, F16 and BF16 carry no type-based alias tag,
  so a loop reaching its array through a struct at every element - std/linalg's `Map` - stays scalar for them: a BF16
  add 2.2-3.0 ns an element against 0.3 with the array in a local (F32 0.6 either way).
- Fixed in db2af5d and deleted: `genericctor`, `operatornames`, `spawncall`, `bf16narrow`, `capturedvalue`.
- Still open: `condliteral` (being fixed in olang). Kept as records: `fieldname`, `joinparen`, `nestedtry`, `tryindex`.

## 21. olang 999ae6c: read-only copies

olang 999ae6c makes a copy of a value holding `mut` references, taken from a place reached read-only, read-only itself
(its decision QC), and std/linalg's destination forms (`Gemm`'s `c`, `Set`, `Fill`, `Map`, `Activate`'s `y`, ...) take
`mut` so that a signature shows what a call writes. olang's `tools/perm_mut.py` migrated oann (2026-10-10): 38 `mut`s
added, nothing else - the destination matrices of ops' products, gradients, norms and attention (`MatMul`'s `y`,
`LinearBackward`'s `dx`, `dw`, `db`, ...), `nn.initialize`'s `p`, conv's gradients and its patch matrix, `ops.part`, and
six locals built in a function's result scope and filled before being returned (`m mut Mlp&return = Mlp(act)`, ...).
Nothing needed migrating by hand. Views are untouched: std/linalg's `Row`, `RowRange`, `Block` and `Reshape` keep
read-only receivers and hand out writable views, so `ops.each1`/`each2`/`each3` - writing through `y.Row(r)` - and the
norms' `y` need no `mut` (permission stays shallow through views, olang's recorded limit). `make test` passed on
999ae6c unchanged, and every example and benchmark builds.

### olang issues (repro/)

- Fixed in 999ae6c and deleted: `condliteral` (`slope` prints `1 1 5`; std/linalg's `ActivationSlope` and
  `ActivationBackward` compile for F32).
- Still open: `narrowtbaa` (on 999ae6c BF16 through the struct 2.2-3.1 ns an element, local 0.29-0.41; F32 0.53-0.83
  either way). Kept as records, reported as before: `fieldname`, `joinparen`, `nestedtry`, `tryindex`.

## 22. Phase 8: olang efdb82c, and INT8 inference

Built with olang efdb82c (the scope sanitizer run with a compiler built from olang master 2e83597, below), measured
2026-10-10 between 03:30 and 04:20 CEST on the shared 4-core machine at load averages of 2-10: every figure an
interleaved median or a range of them. `make test`: 130 tests, all passing (quant.olang's seven and the graph's INT8 test new).

### Catching up

`make test` passed on efdb82c unchanged (121 tests). `repro/narrowtbaa` is fixed - every numeric type has its own alias
tags now - and deleted: BF16 through the struct 0.29-0.33 ns an element, as with locals (F32 0.53-0.86 either way). So
section 20's decision 4 is reversed: the element-wise kernels go through std/linalg's `Map`, `Map2` and `Map3` again,
and `ops.each1/2/3` are gone (olang's `tools/perm_mut.py` gave the 15 destinations they write their `mut`). Measured
(`bench/each.olang`, ns an element, F32 / BF16, two runs of 9 rounds):

| | `each` | `Map` |
|---|---|---|
| GELU forward | 1.60-1.73 / 1.54-1.68 | 1.56-1.72 / 1.55-1.63 |
| GELU backward, added | 1.92-2.05 / 2.29-2.43 | 1.90 / 2.06-2.23 |
| add | 0.54-0.58 / 0.25-0.35 | 0.52-0.58 / 0.26-0.32 |

and a transformer step level (`bench/lm`, five runs alternating with the build before: F32 122 -> 117 ms, BF16 99 ->
102). `ops.GeluTanh` is std/linalg's `Activate(Activation.Gelu)`, the same formula computed the same way (in F32 for
BF16, rounded once) - bit for bit, a test in F32, F64 and BF16. Its backward stays oann's: std/linalg's
`ActivationBackward` computes a BF16 matrix's gradient in BF16 arithmetic, rounding the slope, the product and the sum,
where oann's rounds once from F32; `ActivationSlope` alone saves nothing over oann's expression.

**The scope sanitizer.** efdb82c has no `-s`: the sanitizer (olang's B2f) was merged into master at 9e5558a, after it.
A compiler built from master 2e83597 in a scratch directory ran the whole suite under it - `-t -d -s` on every file with
tests, quant.olang included: every test passes and nothing reports a use after a scope closed (nn.olang and quant.olang again after the graph's INT8 path landed: the same). `examples/mnist_int8`
built with `-b -s` trains, quantizes and runs both networks without a report. No compiler bug found.

### INT8 post-training quantization (`quant.olang`)

A trained network's dense layers and convolutions run as products of 8-bit integers accumulated in 32 bits:

- **Weights** symmetric per output channel: row n of W gets `sw[n] = max|W[n, :]| / 127` and `q = round(W / sw)` in
  -127 .. 127 (ties to even), packed once into the kernel's column panels, with each row's scale and the sum of its q.
  A convolution's columns are permuted from PyTorch's [C][K][K] to [K][K][C] (`QuantizeConvWeights`) - the images'
  own order, so a patch's rows are runs of pixels.
- **Activations** per tensor, over a `Range`: dynamically (each batch's own range) or statically (a range calibrated
  over a calibration set, values outside it clamped). A range with no negatives - an image's pixels, ReLU's outputs,
  max pooling's - takes all 256 levels of a U8, `s = hi / 255` and zero point 0; one with negatives is symmetric,
  `s = max(|lo|, |hi|) / 127` and zero point 128.
- **The product** `acc[i, n] = sum_k a[i, k] q[n, k]`, U8 times I8 in I32, then `y = s sw[n] (acc - zp sum_k q[n, k]) +
  b[n]`, ReLU or not, as each tile leaves the registers (FBGEMM's and oneDNN's zero-point compensation); no
  intermediate I32 matrix is written.
- **API**: `quant.QuantizeWeights(w)`, `Activations(elements)` with `Quantize(x, range)`, `QuantizeDynamic(x)` and
  `Patches(x, shape, range)`, `quant.Linear(y, a, w, bias, relu, threads)`; and a `quant.Model(batch, inputs)` built
  from a trained graph's values - `m.Dense(w, b, relu)`, `m.Conv(w, b, shape, relu)`, `m.Pool(pool)` - run by
  `m.Forward(y, x)` into the caller's matrix through two buffers of its own (nothing allocated after the first call),
  `m.Calibrate(y, x)` over calibration batches then `m.Static = true`, `m.Bytes()`, and per-layer `Profiling`. And in
  a graph, `g.QuantizeLinear()` then `g.Int8 = true`: every `Linear` node's product in INT8 (`quant.LinearInto`, the
  form taking y's elements and stride), the input quantized dynamically - an F32 graph's inference only.

**The kernel, and what LLVM 18 makes of it.** The micro-kernel is std/linalg's shape - a tile of accumulators at
constant indices, one row of a step a line, `acc[i, j] += I32(a) * I32(q[j])` with `a` zero-extended from U8 and `q`
sign-extended from I8. That is the one form LLVM 18 lowers to a single multiply-add instruction: on this AVX-512 VNNI
machine `vpdpwssd` (checked in the binary: 156 of them, no `vpmulld` in the kernel) - but as one product per 32-bit
lane (the zero-extended activation's upper half is zero, so the pair's second product vanishes), and on 256-bit
registers even with `prefer-vector-width=512`: **8 multiply-adds an instruction against F32's 16 per 512-bit FMA**. The
genuine instructions are out of reach from plain code: `vpdpwssd` on true 16-bit pairs (16 a 256-bit instruction, 32 at
512) and `vpdpbusd`, four U8 x I8 products a lane (64 at 512), are formed by neither the loop nor the SLP vectorizer -
probed in C with clang 18 on the same patterns: outer products, pairwise sums written out, dot-product reductions with
several accumulators (`vpmulld` or the same one-product trick), and a single reduction (`vpmaddwd` on 256 bits only).
So the tile is sized for 256-bit registers holding I32: 6 x 32 (24 accumulators, four vectors a row) for a wide output
and 12 x 16 for a thin one (an output of 16 or fewer) on AVX-512 - measured against 12 x 16 for everything (6 x 32 5-10%
faster on wide shapes, 12 x 16 25% faster at 16 outputs) and against the 12 x 32 of std/linalg's F32 (spilled: half
the speed) - 6 x 16 and 12 x 8 on AVX, 4 x 12 and 4 x 4 on SSE. A matrix of fewer than four rows is a matrix-vector
product per row, four partial sums over alternate steps. Activations are quantized row by row and a tile's rows packed
step by step as its product begins them (read in place by rows, as std/linalg reads a left operand, the product was
half as fast).

**Accuracy** (`examples/mnist_int8.olang`, AdamW, seed 1): nothing lost that the test set can see.

| | F32 | INT8 dynamic | INT8 static | same class as F32 | parameters F32 / INT8 |
|---|---|---|---|---|---|
| 784-128-10 perceptron, 5 epochs | 97.10% | 97.08% | 97.08% | 99.93% / 99.94% | 407 080 / 104 056 B (3.9x) |
| CNN (16 and 32 channels), 2 epochs | 97.78% | 97.79% | 97.79% | 99.97% / 99.99% | 81 960 / 30 536 B (2.7x) |

(Static: ranges calibrated over ten training batches, 1280 samples. The CNN's size counts its dense head's ten outputs
padded to the thin tile's sixteen - 62% of its parameters - and the biases in F32.)

**Throughput** - the graph's F32 forward (what oann ran inference with: std/linalg's GEMM, its F32 batch-1 path) against
the INT8 model, nine interleaved rounds, samples a second:

| | batch 1 | batch 64 | batch 128 |
|---|---|---|---|
| perceptron F32 | 38 260 | 282 688 | 332 969 |
| perceptron INT8 dynamic / static | 118 841 / 122 504 (3.1x / 3.2x) | 272 196 / 282 163 (0.96x / 1.00x) | 271 153 / 283 975 (0.81x / 0.85x) |
| CNN F32 | 8 871 | 8 178 | 7 627 |
| CNN INT8 dynamic / static | 10 193 / 10 009 (1.15x / 1.13x) | 9 960 / 10 308 (1.22x / 1.26x) | 9 522 / 9 836 (1.25x / 1.29x) |

The products alone (`bench/int8.olang`, the INT8 product with dynamic quantization against std/linalg's `GemmAct` with
bias and ReLU, seven rounds; F32 GFLOPS against INT8 GOPS):

| m x k x n | F32 | INT8 (quantization included) | ratio |
|---|---|---|---|
| 1 x 784 x 128 (perceptron, one sample) | 24.9 us, 8.1 | 7.9 us, 25.4 | 3.16x |
| 64 x 784 x 128 | 243 us, 52.8 | 224 us, 57.3 | 1.08x |
| 128 x 784 x 128 | 349 us, 73.6 | 442 us, 58.1 | 0.79x |
| 100352 x 9 x 16 (first convolution, batch 128) | 1.88 ms, 15.4 | 3.11 ms, 9.3 | 0.60x |
| 25088 x 144 x 32 (second convolution) | 4.18 ms, 55.4 | 9.49 ms, 24.4 | 0.44x |
| 1024 x 128 x 512 (transformer perceptron, 16 x 64 tokens) | 1.33 ms, 100.6 | 2.36 ms, 56.9 | 0.57x |
| 1024 x 512 x 128 | 1.74 ms, 77.1 | 2.39 ms, 56.3 | 0.73x |
| 1 x 128 x 512 (its decoding step) | 16.8 us, 7.8 | 5.5 us, 23.7 | 3.02x |
| 1 x 512 x 128 | 16.0 us, 8.2 | 5.1 us, 25.7 | 3.13x |
| 512 x 512 x 512 | 3.25 ms, 82.5 | 4.49 ms, 59.8 | 0.73x |
| 1 x 1024 x 1024 | 364 us, 5.8 | 87 us, 24.1 | 4.20x |

So INT8 wins where a product reads its weights for few rows - one sample, a decoding step: 3-4.4x, the bytes it reads
(a quarter) - and loses where it is compute-bound, by the instruction above: the kernel reaches 55-62 GOPS where F32
reaches 70-100 GFLOPS. The CNN gains anyway, at every batch size, because its INT8 path quantizes each image once and
copies its patches as bytes, where the F32 graph packs F32 patches; its time per batch of 128 (`profile` in the
example): the convolutions' patches 2.1 and 1.6 ms, their products 2.4 and 5.1 ms, pooling 1.1 and 0.4, the dense head
0.3. Dynamic and static quantization cost the same to within noise: a range is one vectorized pass over the input
(16 lanes of minima and maxima), quantization another.

**The transformer** (`examples/charlm_int8.olang`, `make int8lm`: data/shakespeare/charlm.ckpt, 4 layers of 128, its
attention projections and perceptrons in INT8 - the embeddings, attention's own products, the norms and the tied head
stay F32), two runs of 5 and 7 rounds:

| | F32 | INT8 | |
|---|---|---|---|
| validation loss, 10 batches of 16 x 64 | 1.8063 | 1.8060 | -0.0003 |
| a forward over 1024 characters | 38.8-39.9 ms | 47.2-47.8 ms | 0.82-0.84x |
| decoding through the key-value cache, characters a second | 2 796-2 804 | 5 945-6 125 | 2.13-2.18x |

Greedy text from "ROMEO:" is the same for 38 of its 64 characters, then the two take different near-ties and go their
own ways (both are this small model's text). Decoding is the case INT8 is for - every linear layer a one-row product,
reading its weights - and it gains 2.1x end to end where its products gain 3x; a whole sequence's forward is
compute-bound and slower, as the table above says it would be.

### What std/linalg would need to host the INT8 product

1. **The dot-product instruction, from olang.** The INT8 product is held to half of F32's rate by the instruction LLVM
   picks (above). Reaching `vpdpbusd` (AVX-512 VNNI and AVX-VNNI), `vpdpwssd` on 16-bit pairs, or AArch64's
   `sdot`/`usdot` needs either a compiler-supplied operation - say a method on an I32 place,
   `acc.DotAdd4(a, b)` over four U8 and four I8, lowered to the target's instruction and to four multiply-adds
   elsewhere, the evaluator computing the same integers (olang's K1) - or LLVM's `partial.reduce.add` intrinsic (LLVM
   19 and later), which olang 18's toolchain does not have. With either, the same kernel's tile becomes 12 x 64 U8 x I8
   on AVX-512 (four times F32's rate) and the products above should all turn into gains.
2. **The kernel in std/linalg**: `Weights` (packed panels, per-channel scales, sums), `Activations` with `Range`,
   `Linear` with its dequantizing store - and Goto's blocking around it, which quant.olang does not have yet: it
   packs a tile's rows per product and keeps the whole depth (fine to a few thousand), where std/linalg blocks K into
   panels for the cache and splits large products over tasks.
3. **Patches of U8 images** in the images' [K][K][C] order - `GemmPatches`' counterpart - and a convolution's weights
   permuted to match.
4. **U8 and I8 matrices** with the quantization passes (a range observed, values quantized) as destination forms, and
   `Matrix<T>` methods for them (`ArgMaxRows` on the logits works today).

### Decisions

1. **The element-wise kernels are std/linalg's `Map`, `Map2`, `Map3`** again (reversing section 20's decision 4), and
   GELU's forward is `Activate(Gelu)`; its backward stays oann's (one rounding of a BF16 gradient).
2. **Weights symmetric per output channel, activations per tensor**, the industry's default for post-training INT8
   (PyTorch's fbgemm/x86 configuration, TensorRT): per-channel weights cost nothing at run time (a scale per output in
   the store), per-channel activations would.
3. **Activations unsigned where their range has no negatives** (zero point 0, 255 steps), symmetric about zero
   otherwise (zero point 128, 127 steps a side) - the max-abs scheme asked for, with the half it wastes on a
   nonnegative tensor given back; every input of the perceptron and the CNN is nonnegative.
4. **U8 activations times I8 weights**: the hardware's integer dot products take that shape, and it is the one LLVM 18
   turns into a multiply-add instruction (`vpdpwssd`); I8 x I8 and I16 x I16 tiles gave `vpmulld` (probed in C with
   clang 18, the same LLVM).
5. **Dynamic and static both**, static by `Calibrate` on the quantized network's own activations (each layer's input as
   the layers before it produce it) and a flag; the two measure the same, so dynamic is the default (nothing to
   calibrate, no clamping).
6. **The tile by its width**: 6 x 32 wide, 12 x 16 thin on AVX-512 (measured); an output's columns padded to the tile
   (sixteen for ten classes) - padding is memory the model really holds, and `Bytes` counts it.
7. **No intermediate I32 matrix**: dequantization, bias and ReLU in the tile's store.
8. **Max pooling in F32** between quantized layers; a layer's output is F32 and the next layer quantizes it - one pass,
   and what lets dynamic quantization see each layer's real range. (Fusing requantization into the store needs the
   next range before the product: static only, not built.)
9. **The graph quantizes its `Linear` nodes in place** (`QuantizeLinear`, a flag to switch): a quantized copy of each
   weight, the input quantized dynamically, no new op kind - so the transformer, its decoding and the evaluation helpers
   run unchanged. Only `Linear` (the attention's projections, the perceptrons): the tied head is a `MatMul` against
   the embedding table, and attention's own products multiply two activations, which per-tensor scales computed per
   call would make slow and the cache's rows would make awkward. Inference only, F32 only.

### olang issues

- Fixed in efdb82c and deleted: `narrowtbaa`. Kept as records, as before: `fieldname`, `joinparen`, `nestedtry`,
  `tryindex`.
- New, `repro/lambdalend.olang`: O17 refuses to lend a value whose references live elsewhere (a `Matrix` view such as
  `Graph.Value` gives) to a function that writes it from a lambda run by `linalg.ParallelRows`, though the lambda keeps
  nothing and the same writes without tasks are accepted. Worked around by passing the elements and stride
  (`quant.LinearInto`). Reproduces on efdb82c and master 2e83597.
- Not a bug, a limit (above): LLVM 18 forms no four-way or true two-way integer dot product from plain olang, and its
  SLP vectorizer keeps the I32 accumulation on 256-bit registers under `prefer-vector-width=512`.
- The coordinator's compiler for this phase (efdb82c) lacks `-s`; the sanitizer run used master 2e83597.

## 23. Phase 9: what an agent's nights are for

docs/settling.md's open question 14, measured (its 2.15, 5.12, decisions 72-76; olang efdb82c's compiler, the shared
four-core machine, 2026-10-10). Phase 7 had found that an agent's nights change nothing measured: keyed by the
observation, a night leaves the recall at every observation seen as it was, and only moves it where the agent has never
been. Complementary learning systems name four places consolidation should pay - generalization, interference,
capacity, noisy or partial cues - so phase 9 built a task for each and measured them over 40 lives a configuration,
comparing agents with and without nights life by life (two agents of one seed live the same moments until a night
makes a difference, so the intervals are a third to a half as wide as unpaired ones).

**The tasks.** `examples/nights.olang` puts the observations on a ring - a great circle of the 16-number unit sphere -
with each arm's payoff a smooth function of the angle that no linear read of the observation holds (it is quadratic in
it: opposite points have opposite observations and the same answers); a life trains on 8 points, is tested with
`Imagine` (nothing changes) on seen, new, noisy and partial observations, then lives anywhere on the ring.
`examples/bandit_settle.olang` gained `transfer` - a second surroundings under a new code with the first's answers -
beside `return` (a conflicting second surroundings), and both examples `perlife=1` for paired comparisons.

**What was found** (regret; docs/settling.md 5.12 has the tables and intervals):

| | without nights | with nights |
|---|---|---|
| the ring, lived anywhere after training (memory off) | 0.044-0.045 | 0.035 (paired -0.009 to -0.010) |
| the ring, noisy observations (memory off) | 0.087 | 0.057 (paired -0.030 +- 0.005) |
| the ring, partial observations | 0.149 | 0.153 (no change) |
| transfer, the new surroundings' first 250 moments | 0.050 | 0.030 (paired -0.020 +- 0.011) |
| return, the conflicting surroundings' first 250 | 0.159 | 0.178 (paired +0.019 +- 0.013) |
| return, back in A - permanent store | 0.069 | 0.079 |
| return, back in A - store with a half-life of 500 moments | 0.145 | 0.088 (paired -0.057 +- 0.022) |
| 64 random contexts, any block | | within +-0.003 |

So nights pay where observations recur only approximately and where the fast store forgets, and cost where new
surroundings conflict. The consolidator's own store does more than expected without them: its sparse codes of a
one-dimensional ring's nearby points share cells, so it answers new points between seen ones nearly as well as seen
ones, and its pattern separation keeps two surroundings apart better than nights keep a forgetting store's.

**Built**: `Store.Fade` (a pending factor folded below 1/2, so a fade costs nothing per read or write) and
`agent.Settings.RecallHalfLife` (off) - a transient store, which only nights keep; `SleepSettings.Cues` and
`agent.Settings.SleepCues` - a night replays a uniform sample of the cues (reservoir sampling), at most 1 024 for an
agent, since a night costs about 0.12 ms a cue and every cue kept grows it without end (128 of 450 measured level with
all of them). Checkpoints keep both. Cost on the ring: 0.086-0.094 ms a moment with a consolidator, a night 50-57 ms over
about 450 cues (19 ms over 128).

**Found on the way**: the associative memory's linear read drives a consolidating agent's readout against its own
recall wherever answers are not linear in the observation or conflicting surroundings share most of an observation -
on the ring the agent's answers cost 0.126 against its recall's 0.038, and with the memory off a consolidating agent
comes back to A at 0.021 against 0.069 - while it helps where one observation's answer changes (a reversal's first block
0.179 with it, 0.223 without). Which memory should drive the readout, how to complete partial cues, and how to weigh
the slow part's generalization at unfamiliar observations are docs/settling.md's open questions 15-17.

### Decisions

1. **Nights are for approximate recurrence and a forgetting store** (settling decision 72); sleep stays the caller's.
2. **The store stays permanent**; a transient one is an option, off (73).
3. **An agent's nights replay at most 1 024 cues**, a reservoir; a lone consolidator keeps every cue (74).
4. **Nights are measured in pairs, generalization on the ring** (75).
5. **The associative memory stays in a consolidating agent** until a reliability-weighted readout is measured (76).

## 24. Phase 10: olang ada716d; how a consolidating agent reads what it remembers

docs/settling.md's open questions 15-17, measured (its 2.16, 5.13, decisions 77-85), on olang ada716d's compiler, the
shared four-core machine, 2026-10-10.

### Catching up

The makefile's `OLANG` is `/home/user/wt/oannc5/build/out` (olang ada716d). Two things changed what oann had to write:

- **A field of a call's value result passed straight to a call is refused** (O10d, "this value lives in this
  function's own scope") when the call's receiver is a reference parameter - `o.stepIn(g.Masters().Data, ...)` in
  optim's `AdamW` and `Sgd`, the consolidator's night and the agent's checkpoints, all of which olang efdb82c took. Each
  result is named first (`masters := g.Masters()`). `repro/fieldofresult`.
- **A view-giving function left a local in the scope its result lands in, at every call.** `nn.Graph.Value` copied its
  node (`nd := g.nodes[v]`, 160 bytes) and passed it to `g.rows(nd)`, whose number sized the returned view; the compiled
  `Value` allocated the copy in its result scope, which lands where the graph's storage lives, so every `Value`, `Grad`
  and saved-matrix view added 160 bytes to the graph's scope until the graph died. A transformer's training step grew by
  about 100 KB (`bench/lm`: 113.3 MB after 5 steps, 114.8 MB after 20), and a consolidating agent - whose slow part runs
  `Forward` at every moment - by about 9 KB a moment (69 MB over 6 000 moments, where efdb82c's build stays at 3.3 MB).
  Regrets were unaffected (they are deterministic); memory and time were not. Worked around in nn: the three views read
  their node's numbers through one helper (`place`) and hold no node; both stay flat now. `repro/resultgrowth` (a struct
  copied from a `List` element, passed to a method of the structure whose result sizes the view: it grows 16 bytes a
  call; a field copy, a plain function or a result not reading the call do not).
- Every example and bench program builds; `repro/lambdalend` still reproduces (O17, now worded as the references
  living where the value's storage does not), and `fieldname`, `joinparen`, `nestedtry` and `tryindex` are reported as
  before. Under the scope sanitizer (`-s`) the tests of nn, quant, sparse, store, circuit, board, agent and the
  consolidator - 88 of them - pass with nothing reported, and again those of nn, store, agent and the consolidator (44)
  with this phase's code, beside a mixed life with missing numbers and weighed reads that gives the same regrets as
  the plain build. `make test`: 138 passed.

### Which memory drives the readout, partial observations, the slow part's bet

**Which memory (question 15).** A Weigher shares the readout's drive between the associative memory's read and the
consolidator's recall by their recent forecast errors (Bates and Granger's combination of forecasts): it pays on every
task, but the recall alone at the two gains' sum (2) pays as much, and more where the linear memory knows nothing - so
a consolidating agent's readout is now its recall alone at gain 2, and the weighing an option. 5.12's finding that the
memory helped after a reversal was drive: the recall at gain 2 recovers as fast. Gains 3-4 measured lower still on the
return and the reversal - an exploration question (settling open question 18).

**Partial cues (question 16).** `Step`, `Begin` and `Imagine` take `known`, which numbers were observed; the agent
completes the others from a correlation-matrix memory of its whole observations by the conditional mean
`x_u = M_uo (M_oo + nu I)^-1 x_o`. With half the moments' observations missing half their numbers, every task's regret
comes back to its value with whole observations within the intervals. On by default: a life of whole observations is
the same with it.

**The slow part's bet (question 17).** The consolidator's store keeps how much its days taught it (a familiarity table
beside its values), and the recall is `store + (f + (1 - f) Guess) slow`, `Guess` learned from the outcomes at
unfamiliar observations (recursive least squares with forgetting). In a life meeting new surroundings that share old
answers and ones that conflict with them, the conflicting ones' first 250 moments cost 0.111 against 0.167 and the
sharing ones nothing more.

**The agent as it was against as it is** (paired over 40 lives, 80 for the mixed task; regret):

| | as it was | as it is |
|---|---|---|
| ring: new points / lived anywhere | 0.113 / 0.113 | 0.029 / 0.030 |
| ring, half the moments half missing: lived / partial cues | 0.163 / 0.243 | 0.040 / 0.042 |
| return: B begins / A again | 0.178 / 0.079 | 0.121 / 0.023 |
| reversal: after the swap | 0.179 | 0.156 |
| transfer: B begins | 0.030 | 0.021 |
| mixed: conflicting / sharing surroundings' first 250 moments | 0.187 / 0.078 | 0.111 / 0.047 |
| bandit, 64 contexts: 3 750-4 000 | 0.230 | 0.171 |

Cost: familiarity's gather and scatter, about 4% on the return task; a moment on the ring no dearer.

### Decisions

1. **A consolidating agent's readout is its recall alone, at gain 2** (settling decision 77); the forecast-weighted
   mix is built and not taken (78).
2. **Completion of observations with numbers missing, told which** (79-81), on by default.
3. **The slow part's guess weighed by familiarity, its weight learned at `GuessRate` 0.03** (82-84), on by default.
4. **5.11's and 5.12's tables are the agent as it was** (85); `recallalone=0 recallgain=1 familiarity=0` restores it.
5. **Paired comparisons through `bench/paired.olang`**, the examples' `perlife=1` lines matched life by life.

### olang issues (repro/)

- `fieldofresult` (new): O10d refuses a field of a call's value result passed on, with a reference-parameter
  receiver; naming the result first compiles.
- `resultgrowth` (new): a local copied from a `List` element and passed to a method of the structure is kept in the
  result scope of a function returning a view into that structure - unbounded growth in a loop.
- `membercascade` (new): reading a constructor parameter that is not a field gives a second error at the same place
  ("a condition is a Bool, found I32").
- `lambdalend`: still refused (O17). `fieldname`, `joinparen`, `nestedtry`, `tryindex`: deliberate rules, as before.

## 25. olang 374c1e3c: the v1 catch-up (core modules)

oann had last been built by olang efdb82c-ada716d (2026-10-10). Between then and olang's v1 candidate the language
changed under it: lists by line breaks (QY), type parameter lists (G8b, QW), `Array<T, N>` gone (QP1), errors in
CamelCase and declared as types (T19), `try` over a whole expression (E24), scopes inferred and never written (QCB),
builders (D19a), no shadowing of a type's name (D3a), every local read (D3b), one-line bodies (S1b) - and std/linalg
was dropped from std (olang b6e4a103: "Tensors are part of oann and they declare everything themselves"). This round
brings the core chain - kernels, conv, ops, quant, nn, layers, optim, vision, checkpoint, train, generate - to it with
behaviour kept; every one of their tests passes as before. What the language decided:

- **`linalg.olang` is oann's.** It is std/linalg's last version (olang b6e4a103^, 2026-10-26: Goto GEMM with per-target
  tiles, GemmBatch with causal triangles, GemmAct, GemmPatches, element kernels, reductions, Solve, Cast, the fast
  activations), brought forward by `olang fix`, its 35 tests kept. A pair of Bool results became a struct (`tiling`,
  R23). Since a matrix holds its data by reference, the supplied `Copy()` would share it: a matrix's deep copy stays
  `m.Clone()`, and the copy-from method is `m.CopyFrom(src)` (it was `m.Copy(src)`).
- **A shape error on the graph's own buffers ends the program.** linalg's operations fail with `ShapeError` (R22, from
  October), where they aborted when oann was written. A wrong shape inside a planned graph is oann's bug, never the
  caller's input, so ops, conv, nn and optim write `x!` on those calls (`linalg.Matrix.View(g.mem, ...)!`) and keep
  their signatures: `g.Value`, `g.Grad`, `g.Params` and every `ops.*` are infallible as before. A shape the caller gives
  is still refused when the graph is built (`mismatch`, now `noreturn` by `unreachable` with the reason).
- **The context length is `ctx`** where it was a parameter named `T` beside the element type `T` (D3a). Fields and
  payloads keep `T` (`Transformer.T`, `Op.Attention`'s `T`).
- **Builders** (D19a): `layers.Dense.New`, `Mlp.New`, `Norm.New`, `AttentionBlock.New`, `Transformer.New`,
  `vision.Conv.New`, `train.LanguageModel.Gpt`, `quant.Weights.Quantize` and `QuantizeConv` (they were `NewDense`,
  `NewMlp`, ... `Gpt`, `QuantizeWeights`).
- **Code shape.** Functions more than four blocks deep were split along what they do: `nn.Graph.Plan` into
  `placeParams`, `placeRows` and `placeNode` over a `layout`; conv's im2col, col2im and pooling into per-image and
  per-window helpers; `quant.Activations.Patches` into `patchRow` and `patchPixels`; optim's projection into
  `projectLayer` and `scaleByNorms`. One-statement blocks, clauses and lambdas are one-line (S1b, D16).
- **The makefile** speaks olang's modes in words (`olang test`, `olang build -output build/NAME FILE`), and OLANG is
  olang's `build/olang` beside oann by default.

How the rest of oann is caught up, and which tools to run in which order, is PROGRESS.md.
