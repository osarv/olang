# oann redesign: the plan for round 3

The brief for the agents building oann's redesign. The direction (agreed with the user 2026-11-09) is olang's
`.claude/memory/direction.md`, "oann's design": **Tensor<T> stays the storage; the central abstraction is a dynamical
system** - populations with named state at several timescales on `Columns<T>`, connections as objects, update rules run
in place, free and nudged phases side by side, a tree of modules with their own signals, low precision from the start,
energy gradients derived while compiling where the energy is a sum of known terms - **plus a lean backprop path** as the
yardstick (reverse-mode autodiff, transformer block, attention, AdamW, mixed precision, kernels for 10M-300M baselines).
N-d tensors, kernels in olang, no BLAS. General first: autodiff, transformers, state-space models. No distributed
training, sharding or serving. Rounds: 1 = everything compiles on olang v1 (done, a084560, 173 tests); 2 = measure
(branch wt-oannmeasure); 3 = this plan.

Sketches are written in olang as it is about to be: the null test is `x == null` / `x != null`, text joins with `+`
(`"n = " + $n`). Signatures only; names are binding unless a work package finds a better one and records why.

## 1. The architecture

Seven layers, each importing only the ones above it in this list:

| layer | files | main types |
|---|---|---|
| storage | `tensor.olang` | `Shape`, `Tensor<T>`, `ShapeError` |
| kernels | `kernels/*.olang` | `Mat<S>`, `Workspace<A>`; functions over raw arrays |
| autodiff | `ad/graph.olang`, `ad/ops.olang` | `Graph<T>`, `Var`, `Op` |
| dynamical systems | `dyn/*.olang` | `System<T>`, `Mod`, `Pop`, `Conn`, `Rule`, `Sig`, `Energy<E>` |
| models | `nn/*.olang`, `models/*.olang` | layers, optimizers, the training loop; reference models |
| data | `data/*.olang` | `Dataset`, `Loader<D>`, `Tokens`, `Bpe` |
| checkpoint and IO | `io/*.olang` | safetensors, run records |
| tools | `tools/*.olang`, `bench/` | gradient checks, profiles, counters |

`board/` (the fixed-point engine for the FPGA) is a backend of `dyn`, not a layer. The GPU is a later backend of
`kernels` (question 1).

### 1.1 Storage: `tensor.olang`

An N-d strided view over an array, rank at most 6, row-major, the last axis contiguous by default. A tensor is a
value holding a reference to its data: a copy shares the data (the supplied `Copy()`), `Clone()` copies it. No
implicit broadcasting: a lane operation wants equal shapes, and broadcasting is a stride-0 view written as `Expand`.

```olang
type ShapeError error { Mismatch(what String), Rank(want I64, got I64), Range(axis I64, lo I64, hi I64) }

type Shape struct(Rank I64, dims Array<I64>) { ... }       # dims: 6 slots, laid out in place
fn Shape.Of(dims ...I64) Shape
fn (s Shape&) At(i I64) I64                                  # s[i]
fn (s Shape&) Count() I64

type Tensor<T> struct(Shape Shape, Strides Shape, data mut Array<T>&, Offset I64 = 0) { ... }
fn Tensor<T>.Zeros(dims ...I64) Tensor<T>                   # allocates where the caller's result lands
fn Tensor<T>.Over(data mut Array<T>&, offset I64, dims ...I64) Tensor<T> ? ShapeError   # a view, nothing allocated
fn (t Tensor<T>&) Dim(axis I64) I64
fn (t Tensor<T>&) Slice(axis I64, lo I64, hi I64) Tensor<T> ? ShapeError
fn (t Tensor<T>&) Reshape(dims ...I64) Tensor<T> ? ShapeError        # contiguous only, never copies
fn (t Tensor<T>&) Permute(axes ...I64) Tensor<T> ? ShapeError        # strides only
fn (t Tensor<T>&) Expand(dims ...I64) Tensor<T> ? ShapeError         # stride 0 on the new or size-1 axes
fn (t Tensor<T>&) Rows() Tensor<T>                                   # rank 2: every leading axis folded, last kept
fn (t Tensor<T>&) Mat() kernels.Mat<T>                               # the kernels' 2-D operand, no copy
fn (t Tensor<T>&) Flat() mut Array<T>&                               # contiguous: the elements in order
fn (t Tensor<T>&) Clone() Tensor<T>
fn (dst mut Tensor<T>&) Convert<S>(src Tensor<S>&) ? ShapeError       # F64/F32/F16/BF16/F8, rounding to nearest even
fn (t mut Tensor<T>&) Fill(v T)
fn (t mut Tensor<T>&) FillNormal(r mut rand.Rand&, mean F64, sd F64)
fn (t mut Tensor<T>&) FillUniform(r mut rand.Rand&, lo F64, hi F64)
fn (a Tensor<T>&) MatMul(b Tensor<T>&) Tensor<T> ? ShapeError        # a @ b, batched over leading axes (scripting)
fn (a Tensor<T>&) Plus(b Tensor<T>&) Tensor<T> ? ShapeError          # + - * / lane by lane (scripting)
fn (t Tensor<T>&) Str() String
```

The operator forms allocate a result and are for scripts, tests and eager runs; every hot path writes into a
destination (`dst.Add(a, b)`, `kernels.Gemm(...)`). `linalg.Matrix<T>` goes: a matrix is a rank-2 tensor.

### 1.2 Kernels: `kernels/*.olang`

Functions over 2-D strided operands and raw arrays, independent of `Tensor` (so they can be built in parallel with
it), generic over the **storage** type `S` and the **accumulator** `A` (G18a needs: `A(s)` widens, `S(a)` narrows).
They check nothing per element; shapes are checked once by their callers. Each is threaded with `join`/`spawn` by
partitioning its output, so results are identical for every thread count. Code comes from `linalg.olang`,
`kernels.olang`, `quant.olang`, `conv.olang`, `sparse.olang` and `ops.olang`.

```olang
# kernels/mat.olang - the operand, committed first by A2 (section 4), frozen as written here
type Mat<S> struct(Data mut Array<S>&, Off I64, Rows I64, Cols I64, Ld I64) { ... }

# kernels/gemm.olang - Goto GEMM with per-target tiles (from linalg), mixed storage
type Workspace<A> struct(threads I64) { ... }                # packing buffers; grows on first use, then never
fn Gemm<S, A>(ws mut Workspace<A>&, c mut Mat<S>&, a Mat<S>&, ta Bool, b Mat<S>&, tb Bool, alpha A = 1, beta A = 0, epi Epilogue = Epilogue.None)
fn GemmBatch<S, A>(ws mut Workspace<A>&, c mut Batch<S>&, a Batch<S>&, ta Bool, b Batch<S>&, tb Bool, alpha A = 1, beta A = 0, tri Triangle = Triangle.Full)
fn Gemv<S, A>(y mut Array<A>&, a Mat<S>&, trans Bool, x Array<A>&, alpha A = 1, beta A = 0)   # rows <= 4: no packing, no tasks
fn Ger2<S, A>(a mut Mat<S>&, x1 Array<A>&, y1 Array<A>&, x2 Array<A>&, y2 Array<A>&, alpha A, decay A)  # a = decay a + alpha (x1 y1^T + x2 y2^T)
type Epilogue enum { None, Bias(b Array<F32>&), BiasAct(b Array<F32>&, act Act) }
fn GemmI8(c mut Mat<I32>&, a Mat<U8>&, b Mat<I8>&, scale Array<F32>&, out mut Mat<F32>&)     # from quant

# kernels/elem.olang - lane expressions; each approximation states its maximum error
fn FastExp<T Float>(x T) T
fn FastTanh<T Float>(x T) T
fn Act<T>(dst mut Array<T>&, x Array<T>&, a Act)              # Relu Gelu GeluTanh Silu Sigmoid Tanh Softplus
fn ActGrad<T>(dx mut Array<T>&, dy Array<T>&, x Array<T>&, a Act, add Bool)
fn RowSoftmax<T>(dst mut Mat<T>&, src Mat<T>&, temperature T)
fn RowLogSumExp<T>(out mut Array<T>&, src Mat<T>&)
fn RowNormStats<T>(mean mut Array<T>&, inv mut Array<T>&, x Mat<T>&, eps T, rms Bool)
fn RowMaxAbs<T>(out mut Array<T>&, x Mat<T>&)                # a settle's residual
fn ColumnSums<T>(out mut Array<T>&, x Mat<T>&, beta T)

# kernels/attention.olang - one task per (sequence, head), products by GemmBatch, KV-cache step
fn Attention<S>(ws mut Workspace<F32>&, out mut Mat<S>&, q Mat<S>&, k Mat<S>&, v Mat<S>&, probs mut Mat<S>&, at Heads)
fn AttentionGrad<S>(...)                                       # dq dk dv from dout and the kept probabilities
fn Rope<T>(x mut Mat<T>&, pos I64, at Heads, base F64)

# kernels/scan.olang - state-space and fast-weight recurrences, sequential and chunked forms
fn GatedScan<T>(h mut Mat<T>&, x Mat<T>&, a Mat<T>&, b Mat<T>&, at Seq)               # h_t = a_t h_{t-1} + b_t x_t
fn DeltaRule<T>(out mut Mat<T>&, state mut Mat<T>&, q Mat<T>&, k Mat<T>&, v Mat<T>&, beta Array<T>&, gate Array<T>&, at Seq)
fn DeltaRuleGrad<T>(...)

# kernels/sparse.olang - CSR (from sparse.olang), tiles, events, top-k
type Csr<S> struct(Rows I64, Cols I64) { ... }
type Tiles<S> struct(rows I64, cols I64, tile I64) { ... }     # block-sparse: a tile mask, only live tiles stored
type Events struct(capacity I64) { ... }                       # the units whose input changed by more than a threshold
fn (w Csr<S>&) MulAdd<A>(y mut Mat<A>&, x Mat<A>&, trans Bool)
fn (w Tiles<S>&) MulAdd<A>(y mut Mat<A>&, x Mat<A>&, trans Bool, live Array<Bool>&)   # skips dead tiles and quiet blocks
fn (w Mat<S>&) Transport<A>(y mut Array<A>&, e Events&, delta Array<A>&)              # adds the active columns only
fn TopK<T>(idx mut Array<I32>&, val mut Array<T>&, x Mat<T>&, k I64)
type Macs struct() { Dense I64, Effective I64 }                 # counters every sparse kernel adds to
```

Conv's patches (`GemmPatches`, im2col, pooling) move to `kernels/conv.olang` unchanged in substance.

### 1.3 Autodiff: `ad/graph.olang`, `ad/ops.olang`

The recorded graph stays (DESIGN section 2: handles, a closed `Op` enum dispatched by `match`, one plan, one arena,
hand-written vector-Jacobian products composed by the graph). What changes: values are N-d tensors (axis 0 the
batch), views (`Reshape`, `Permute`, `Slice`) are ops that copy nothing, the arena reuses activation storage by
liveness, and one description runs three ways - **eager** (each op runs as it is recorded, storage per op in the
caller's block: exploring and debugging), **captured** (record once, `Plan`, replay: training), **planned while
compiling** (the plan is plain data - a node list and offsets - so `comptime` can bake it for a fixed model: FPGA
and deployment).

```olang
type Var I64
type Mode enum { Eager, Captured }
type Graph<T> struct(batch I64, threads I64 = 1, mode Mode = Mode.Captured, decode Bool = false) { ... }

fn (g mut Graph<T>&) Input(dims ...I64) Var                    # dims after the batch axis
fn (g mut Graph<T>&) Tokens(ctx I64) Var                       # I32 per position
fn (g mut Graph<T>&) Classes(dims ...I64) Var                  # I32, negative = ignored
fn (g mut Graph<T>&) Param(init Init, decay Bool, dims ...I64) Var
None := Var(-1)                                                 # a handle no op gives: an absent bias
fn (g mut Graph<T>&) Linear(x Var, w Var, b Var = None) Var     # last axis in, last axis out
fn (g mut Graph<T>&) MatMul(a Var, b Var, ta Bool = false, tb Bool = false) Var   # batched over leading axes
fn (g mut Graph<T>&) Act(x Var, a kernels.Act) Var
fn (g mut Graph<T>&) Add(a Var, b Var) Var                      # and Sub, Mul, Scale
fn (g mut Graph<T>&) Norm(x Var, gain Var, bias Var = None, rms Bool = false, eps F64 = 1e-5) Var
fn (g mut Graph<T>&) Embedding(tokens Var, table Var) Var
fn (g mut Graph<T>&) Rope(x Var, heads I64, base F64 = 10000) Var
fn (g mut Graph<T>&) Attention(q Var, k Var, v Var, heads I64, causal Bool) Var
fn (g mut Graph<T>&) Scan(x Var, a Var, b Var) Var              # gated linear recurrence (SSM)
fn (g mut Graph<T>&) DeltaRule(q Var, k Var, v Var, beta Var, gate Var) Var
fn (g mut Graph<T>&) Custom(f any Function&, inputs ...Var) Var   # an op defined outside: the settle (section 1.4)
fn (g mut Graph<T>&) Reshape(x Var, dims ...I64) Var            # and Permute, Slice: views
fn (g mut Graph<T>&) Dropout(x Var, p F64) Var
fn (g mut Graph<T>&) CrossEntropy(logits Var, classes Var) Var
fn (g mut Graph<T>&) Mse(a Var, b Var) Var
fn (g mut Graph<T>&) Conv2d(x Var, w Var, b Var, s kernels.ConvShape) Var       # and MaxPool2d
fn (g mut Graph<T>&) Plan(r mut rand.Rand&) ? ShapeError        # a caller's shape mistake is reported here
fn (g mut Graph<T>&) Forward(n I64)
fn (g mut Graph<T>&) Backward(loss Var, accumulate Bool = false)
fn (g Graph<T>&) Value(v Var) Tensor<T>                          # views, made per use for nothing
fn (g Graph<T>&) Grad(v Var) Tensor<T>
fn (g Graph<T>&) Params() Tensor<T>                              # the flat parameter region
fn (g Graph<T>&) ParamGrads() Tensor<T>

type Function trait {                                          # Custom's forward and backward
    Shape(inputs Array<Shape>&) Shape
    mut Forward(out mut Tensor<F32>&, inputs Array<Tensor<F32>>&)
    mut Backward(dout Tensor<F32>&, inputs Array<Tensor<F32>>&, dinputs mut Array<Tensor<F32>>&)
}
```

`Graph<BF16>` keeps today's mixed precision (BF16 storage, F32 computation, F32 masters); `Graph<F16>` adds loss
scaling; `Graph<F64>` is the gradient checks'.

**As built (B1).** The sketch holds, with these differences, recorded for B3 on: `Plan` draws the dropout generator
before the parameters, and an eager graph is planned (seeded) *before* anything is recorded, each parameter drawn as it is
made, an input filled before what reads it is recorded; an eager graph's parameters have storage of their own, so
`Params()`/`ParamGrads()` (one flat region) are a captured graph's. A shape mistake is the graph's problem, reported by
`Plan` (or `Check()` in eager mode); nothing recorded after it runs. Added: `Constant`, `LeakyRelu`, `Softmax`,
`LogSoftmax`, `Positions` (learned), `SelectiveScan`, `Expand`, `Sum`/`Mean` (last axis), `Watch` (an input's gradient),
`Keep` (a value kept to the step's end: an intermediate's storage is otherwise reused within the step), `Data`/`Ints`
(where the caller puts the next batch, the whole planned one), `Decays`, `Masters`/`Master`/`SyncParams`,
`Save`/`Load` (safetensors), `QuantizeLinear`/`Int8`, `Scalar`, `Profiling`/`Times`, `Reuse = false` (every buffer
apart, for M9). `DeltaRule` takes its heads from `beta`'s last axis; `Conv2d` and `MaxPool2d` take images `[n, H, W, C]`.
An operation whose kernel needs rows gets a `Contiguous` copy of a view that is not, recorded for it. The scans run their
sequential forms (the chunked ones agree to rounding only). Not built: `Ahead` (an input's next batch filled on a task
during the step). A step allocates nothing (resident memory flat, tested); it is
not pinned with `assert not ....Allocates`, as function facts read too coarsely today (repro/allocfacts.olang,
repro/methodfacts.olang). A `Custom` operation's tensors, given to an `any`, are built where the graph lives at each call,
so a step through one allocates.

**As built (C4, 2026-11-15).** What `Plan` decides is plain data, `Layout` (per node a `Placed` of its six offsets, `needs`,
`ParamCount`, `ActivationSize`, and the sizes of the arena, the I32 region and the accumulator): `g.Lay()` computes it with
nothing allocated or drawn, `g.Layout()` reads a planned graph's, and `g.PlanBaked(r, layout)` plans from one given, so only
the storage is made and the parameters drawn. `Plan` is `Lay` then the same storage step. The MLP's is baked with
`mlpBaked Layout = comptime Layout.Mlp()` and tested equal to the one a run-time `Plan` captures, and a graph planned
from it computes the same loss (`Graph.Lay`, `Graph.PlanBaked`). The evaluator took the graph's recording and layout
(lists, enums, `Shape`s, the liveness placement) without a refusal. Compile time: a program recording the 784-128-10
perceptron and baking its layout builds in 1.5 s warm against 1.5 s with the layout computed at run time (the difference
is below the noise, ~0.1 s; cold builds 6.5 s each once the module is compiled); the layout itself is microseconds at
run time, so baking saves nothing measurable there either - its worth is a fixed plan a later step (a freestanding or FPGA
target) can rely on without running the planner. A layout of another graph is the program's error (`PlanBaked`
checks the node count only). Seen once or twice in targeted test runs: a stray line `sum unread: ...` on the standard
error from the compiler (not reproduced by a small program; intermittent).

### 1.4 The dynamical-system core: `dyn/*.olang`

A `System<T>` is a tree of **modules**. A module holds **populations** (neurons with named state), **connections**
between populations (objects with their own weights and state), **rules** (in-place updates, each on a clock) and
**signals** (named values the module's rules read: a reward, a neuromodulator, a nudge strength, arousal). A child
reads its own signals first, then its parent's - the global "how it went" flows down, each rule's "what happened" is
local. The structure is built at run time, through handles as the graph's is, so growth, pruning and evolutionary
search over structures change it between plans (question 3).

**State.** A population's state is a record, one `Columns` column per field, every column `phases x batch x size`
long. Fields marked `@dyn.Keep` persist across settles (slow state: traces, thresholds, adaptation); the rest is
reset or warm-started per settle. A column is viewed as a tensor `[phases, batch, size]` for the products. State is
double-buffered (a sweep reads one buffer and writes the other), so every population of a sweep can relax in its own
task (Jacobi sweeps; Gauss-Seidel as an option per module).

**Timescales** are clocks: `Sweep` (inside a settle), `Step` (a sample or a moment), `Episode`, `Sleep`. A rule runs
on one clock; a field's timescale is the clock of the rules writing it.

**Phases side by side.** The phase axis holds the free phase and the nudged ones (centered EP: free, +beta, -beta).
The free phase settles first; the nudged phases then start from its fixed point and settle together, one product per
connection per sweep for all of them. Holomorphic EP (complex nudges) is the same axis over `C32` state, later.

**Energy.** Each connection kind and each neuron model contributes a known term (bilinear `-s_i W s_j`, the neuron's
potential, the readout's cost, a Hopfield log-sum-exp). A module may also declare its energy as a struct of terms;
its gradient is assembled while compiling by walking the struct's fields (`for f in E.Fields`, unrolled, G32-G38),
each term's type supplying `AddGrad` - no tape, no dispatch, no hand-summed derivative to get wrong. A settle then is
gradient flow on the energy (`z <- z - eta grad E`), or the fixed-point form `s = rho(W s + b)` where the terms are
the standard ones.

```olang
type Pop I64
type Conn I64
type Mod I64
type Sig I64
type Clock enum { Sweep, Step, Episode, Sleep }
type Phase enum { Free, Plus, Minus }
type Role enum { Input, Hidden, Readout(cost Cost) }
type Cost enum { Squared(beta F64), CrossEntropy(temperature F64) }

type RateCell<T> struct(u T, s T) { u, s }                                 # potential, activity
type LifCell<T> struct(v T, s T, trace T, @Keep theta T) { v, s, trace, theta }
type Neuron enum { Rate(rho Rho), Lif(leak F64, threshold F64, window I64), Custom(d any Dynamics&) }
type Rho enum { Linear, Tanh, HardSigmoid, Relu }

# a population's update, for models beyond the built-in ones
type Dynamics trait {
    mut Relax(drive Tensor<F32>&, dt F64, lo I64, hi I64) F64    # rows lo..hi in place; the residual's sup norm
    Activity() Tensor<F32>
    mut RelaxVjp(dy Tensor<F32>&, dx mut Tensor<F32>&)            # for implicit gradients
}

type Wiring enum { Dense, Symmetric, Tiles(tile I64, density F64), Csr(density F64), Events(threshold F64), LowRank(rank I64) }

type System<T> struct(batch I64, threads I64 = 1, phases I64 = 3) { ... }
fn (s System<T>&) Root() Mod
fn (s mut System<T>&) Module(parent Mod, name String&) Mod
fn (s mut System<T>&) Population(m Mod, name String&, size I64, n Neuron, role Role = Role.Hidden) Pop
fn (s mut System<T>&) Connect(pre Pop, post Pop, w Wiring, frozen Bool = false) Conn
fn (s mut System<T>&) Signal(m Mod, name String&, width I64 = 1) Sig
fn (s mut System<T>&) Set(sig Sig, v Tensor<T>&)
fn (s mut System<T>&) Attach(m Mod, r Rule, c Clock)
fn (s mut System<T>&) Plan(r mut rand.Rand&) ? ShapeError
fn (s mut System<T>&) Clamp(p Pop, x Tensor<T>&)                     # inputs held fixed
fn (s mut System<T>&) Target(p Pop, y Tensor<I32>&)                  # or Tensor<T> for a squared cost
fn (s mut System<T>&) Settle(phase Phase, b Budget) Settlement       # allocation-free
fn (s mut System<T>&) Nudged(b Budget) Settlement                    # every nudged phase, side by side
fn (s mut System<T>&) Tick(c Clock)                                  # the rules on that clock
fn (s System<T>&) State<C>(p Pop) Columns<C>&                         # the named state, typed
fn (s System<T>&) Weights(c Conn) Tensor<T>
fn (s System<T>&) Params() Tensor<T>                                  # flat, as the graph's: optimizers and checkpoints
fn (s System<T>&) ParamGrads() Tensor<T>

type Budget struct(Sweeps I64 = 128, Tol F64 = 1.25e-3, Damping F64 = 0, Anderson I64 = 0) { ... }
type Settlement struct(Sweeps I64, Residual F64, Converged Bool, Energy F64) { ... }
type Rule enum {
    Ep(beta F64, centered Bool)                               # contrast of nudged phases into ParamGrads
    ThreeFactor(signal Sig, decay F64, rate F64)           # eligibility trace x the module's signal
    Homeostasis(target F64, rate F64)                         # thresholds or gains toward a target rate
    DeltaWrite(c Conn, gate Sig)                           # fast weights written while settling
    Custom(r any Update&)
}
type Implicit enum { Exact(tol F64, sweeps I64), Jfb, Ep(beta F64) }   # gradients at the fixed point
fn (s mut System<T>&) ImplicitGrad(dz Tensor<T>&, how Implicit, dx mut Tensor<T>&) Settlement

type Energy<E> struct(terms E) { ... }                        # E a struct of terms, walked while compiling
fn (e Energy<E>&) Value(z Tensor<F32>&) F64
fn (e Energy<E>&) AddGrad(dz mut Tensor<F32>&, z Tensor<F32>&)
fn (e mut Energy<E>&) AddParamGrad(z Tensor<F32>&, scale F64)
```

**Learning** is a rule: EP's contrast, three-factor updates, homeostasis, delta writes. Optimizers step the flat
parameter region the same way the graph's are stepped (`optim.AdamW` over `Params()`/`ParamGrads()`). **The
bridge** is `dyn.Settle(g, system, input, grad)` (`dyn/bridge.olang`): a settle as one graph op through `Custom`, its backward an implicit gradient (exact by a
fixed-point solve on the transposed Jacobian, JFB, or EP), so a transformer and a settling core train together and
an amortizer (any graph) proposes the starting state.

**Stability tools** (settling-niche.md section 5.4): a spectral bound per connection by power iteration
(`s.Contraction()`), a gain clamp, divergence detection in `Settlement`, and a top-level `assert` where the weights
are constant and the evaluator can decide the bound.

**As built (B2a, 2026-11-15).** `dyn/system.olang`, `dyn/neuron.olang`, `dyn/conn.olang`, `dyn/settle.olang`
(`dyn/README.md`). Where the build departs from the sketch above, and why:

1. **Four modules, not one `dyn`.** An olang module is a file and an alias names one module, so programs import the
   four and write `system.System<F32>(...)`, `neuron.Neuron.Rate(neuron.Rho.Tanh)`, `conn.Wiring.Symmetric`,
   `settle.Budget()`, `settle.Phase.Free`. `Role` and `Cost` live in `neuron` (a population's units), `Phase`,
   `Budget`, `Settlement` in `settle`; the `@Keep` attribute is `@neuron.Keep`. A planned system's running part is
   `settle.Engine<T>` (populations, connections, regions, workspaces), which `System` holds and drives.
2. **Cells' fields are capitalized**: `RateCell<T>(U, S)`, `LifCell<T>(V, S, Syn, Spike, Trace, Count, @Keep Theta)` -
   readable by `dyn/learn` and by reflection over `Columns<C>.Fields` (empty for lower-case fields: `repro/colfields.olang`).
3. **`System<T>`'s T is the state's and the weights' element**: F32 to run (decision 3's settle state), F64 for
   checks. Low-precision weights under F32 state wait for a product taking operands of two storage types (gemm's
   `Gemm<S, A>` holds one S for c, a and b); recorded for the kernels.
4. **Neurons**: `Lif(leak, threshold, synapse, window)` keeps circuit's synaptic rate, `Neuron.Spiking(...)` its
   defaults; `Rho` keeps circuit's `LifRate`. `Cost` is `Squared` (the sketch's `Squared(beta)` carried the nudge's
   beta, which is `Nudged`'s) or `CrossEntropy(temperature, groups)`, `Cost.Classes(T)` for one group.
5. **Wirings**: `Connect(pre, post, w, frozen = false, reciprocal = false)`. `Symmetric` is the dense block read both
   ways; `Csr`, `Tiles` and `LowRank` are reciprocal by the flag; `Events` is one-way and stores its weights pre x post
   (a row per unit that can change, as `sparse.Transport` reads them). `Weights(c)` is the parameter view: [post, pre]
   dense, [pre, post] events, A ([post, rank], B after it) low-rank, the stored values sparse.
6. **Targets**: `Target(p, Tensor<I32>&)` for classes and `TargetValues(p, Tensor<T>&)` for a squared cost (olang
   overloads by receiver only). `Clamp` sets any population's drive: an input's state, anything else's added drive.
7. **Settling**: `Settle(phase, b)` runs from the phase's committed state (`Reset` for a cold start, `Warm` to copy
   one phase into another; inputs are set from their drive at every settle); `Nudged(b, beta = 0.5, centered = true)`
   warms the plus (and minus) phase from the free one and settles them side by side. `Budget(Sweeps, Tol, Damping)`:
   Damping shortens the step by a factor; Anderson acceleration is not built. `Settlement(Sweeps, Residual,
   Converged)` with `Diverged()`; the energy is not in it (`dyn/energy`, B2b, evaluates one). The residual's sup norm
   is kept as the integer order of |r|'s bits, which makes a NaN the largest and the loop's maximum vectorize.
8. **Rules are run by `dyn/learn`**: `Attach` records a rule, `Rules(clock)` lists a clock's, and `learn.Tick(s, clock)`
   (B2b) runs them - a `Tick` method in system.olang would import learn, which imports system (a cycle). `Energy<E>`
   and `ImplicitGrad` are B2b's likewise; `Rule`, `Update` and `Implicit` are declared here.
9. **Threads**: a sweep's units are one population's rows of one phase, 128 rows at most; they do not depend on the
   thread count, so a settle is the same bit for bit for any (tested with every wiring, free and nudged). A sweep is
   split over tasks only when it does at least `TaskWork` (2M) multiply-adds: a join costs more than a small sweep, and
   every join keeps about 110 bytes until the program ends (`repro/joinleak.olang`, an olang bug), so a long run in
   tasks grows; one thread is flat (M9). The constants (inputs folded through their connections, once a settle) are
   whole-batch products split by gemm's own threads. Gauss-Seidel sweeps are not built.
10. **Run-time structure** (decision 3): `Prune(c, keep)` masks weights (or tiles) in place, gradients with them
    (`Link.MaskGrads` for learning rules); `Compact()` drops a sparse connection's masked entries in place
    (`Csr.Drop`, `Tiles.Compact`, the gradient squeezed alike); `Retire(p, j)` holds a unit at rest. Compacting a dense
    block or retired units is a re-plan with the weights kept (not built; the engine records every offset it laid
    out). Stability: `Gain`, `Certify`, `Restrain`, `Rate`, `LessonTolerance`, `BudgetFor` as circuit's;
    `Contraction()` (a spectral bound by power iteration) is not built.

11. **Allocation-free, pinned while compiling** (top-level `assert not f.Allocates`, S17a/G42): every population's
    step (rate, spiking), a readout's force, the window's end, cold and warm starts, committing a settle, a settle's
    units, an input's closed form, pruning, retiring, compacting, masking gradients, an event-driven carry and its
    reset, the gain's sums. Not pinnable as written: the sweep and the settle as wholes - their products go through
    gemm's `Gemm`, which grows its workspace's panels on its first products (a fact holds for every call; pinning it
    wants a workspace reserved at Plan and a product that never grows - a kernels change), a sparse product holds the
    kernel's join, a sweep in tasks holds a join, and a custom model is a call through `any Dynamics&`, which no fact
    sees through. For those, resident memory is measured (M9).

Measured (tests in `dyn/system.olang`, `bench/settle.olang`): a certified system at kappa 0.9 whose bound is tight
settles cold in exactly 64 sweeps at the lesson tolerance (1.25e-3), 66 at 1e-3 and 71 at the life tolerance
(6.25e-4) - settling.md 1.2's `ln(tol) / ln 0.9`; linear neurons reach the solution of `(I - W) v = c` to 1e-10;
spiking neurons fire at the analytic rate and a spiking system settles within 0.015 of its LifRate model; resident
memory is flat over 400 lessons (M9). M7 (`make settlebench`, 784-128-10, circuit's weights copied into the system,
F32, one thread, medians of 15 interleaved rounds, the machine shared, load 3-7 on 4 cores): at its Glorot draw the
network settles cold in 3 sweeps in both (the free equilibria within 1.2e-7 of each other); a free settle takes 13 us
in dyn against 25 us in circuit at batch 1 (4.4 against 8.4 us a sweep) and 1.25 against 1.02 ms at batch 128; a
lesson's settles (dyn: free and both nudged phases side by side; circuit: Teach, its contrast included) 34 against
70 us at batch 1 and 3.8 against 3.5 ms at batch 128. With a positive lateral block at the hidden units (9-11 sweeps a
settle): 6.7 against 10.5 us a sweep at batch 1, 328 against 234 us at batch 128; a lesson 0.11 against 0.21 ms and
6.1 against 6.4 ms. At batch 128 the sweep is gemm-bound (75% of a profile; kernels' Gemm and linalg's take the same
time on these shapes), and dyn's settles in four tasks are slower than one thread on this loaded machine (two units
a sweep, one of them tiny; a join's wake-up costs more than its share).

**As built (B2b, 2026-11-15).** `dyn/learn.olang`, `dyn/energy.olang`, `examples/mnist_learn.olang` (`make mnistlearn`).
Where the build departs from the sketch and B2a's notes, and why:

1. **A `learn.Learner<T>(s)` runs the rules**, made after `Plan` and after the rules are attached (`? LearnError`
   before a plan): `l.Tick(clock)`, not `learn.Tick(s, clock)` - rules keep state (an eligibility trace per three-factor
   rule) and every rule, lesson and gradient works in room laid out once for the planned system, which the learner
   holds. `l.Lesson(m, beta, centered = true)` and `l.Contrast(m, beta, centered)` are callable without attaching.
2. **`System.Rules(c)` is gone**: the generator was refused once instantiated (D18c/T22a: it yields an enum one case of
   which holds `any Update&`; `repro/genref.olang`), so `Attachments()` and `AttachedAt(i)` read the rules back and
   `Attached` gained its `When`. `System.Value(sig)` (a signal by handle) and `Within(p, m)` (a population in a module's
   subtree) were added for the rules; a signal declared after `Plan` now gets room (it indexed past the signals).
3. **Rules.** `Ep(beta, centered)` on a clock is a whole lesson (free settle, nudged phases side by side, the contrast
   into `ParamGrads` for the connections into the module's populations and their biases); the optimizer steps after
   the tick. A refused phase raises `NotSettled` and leaves the gradients as they were. `ThreeFactor(signal, decay,
   rate)`: e <- decay e + the local term - EP's contrast of the last nudge (centered where the minus phase was nudged
   by -beta), else the free phase's Hebbian coincidences - then rate m e into the parameters, or G = -m e for an
   optimizer when rate is 0 (m the signal's first value; traces masked with the pruned weights, `Clear()` after a
   compaction). `Homeostasis(target, rate)`: a spiking population's `Theta` per unit (every row, both buffers), a rate
   population's biases. `DeltaWrite(c, gate)`: dense and symmetric connections only (`Unsupported` otherwise). The
   settle runs no rule itself: a `Sweep`-clock rule is ticked by the program between settles of one sweep.
4. **`ImplicitGrad(out, dz, how, inp, dx) Settlement`**: dz is dL/ds of one population's activities, dx the gradient
   in another population's drive (an input's through rho' and the connections out of it); `ParamGrads` is written, not
   added to. Exact solves the adjoint by a fixed-point iteration at the system's step (`l.Adjoint` says how it went);
   JFB takes lambda = rho'(u) dz; EP nudges through out's drive by -+beta dz (the readouts' forces off meanwhile; three
   phases needed) and settles the free phase again afterwards so its constant is folded back. Rate systems only: a
   spiking or custom one is refused (`Dynamics.RelaxVjp` is not used).
5. **`Energy<E>`**: the state z is one batch row's activities (`StateOf`: every unit at its `Unit`), an `Array<T>`, not
   a `Tensor<F32>`; terms are generic over T and supply `Value`, `AddGrad`, `AddParamGrad` (needs, not a trait);
   `Descend` is a step of gradient flow. E's fields must be capitalized (a struct's private fields are not in
   `T.Fields` outside its module). Built-in terms: `Potential.Of(s, p)` (G' = rho^-1), `Bilinear.Of(s, c)` (dense and
   symmetric connections), `Linear.Bias(s, p)`, `Linear.Constant(s, p, row)`, `Squared`, `LogSumExp` (a Hopfield
   log-sum-exp). `energy.Of(s, phase, row)` evaluates a rate system's energy in the potentials (circuit's form) - a
   diagnostic that makes its own room; `Settlement` stays without an energy.
6. **Allocation-free, pinned while compiling**: a contrast's differences and bias sums, the feature-major
   transposition, a trace's decay and step, the homeostatic moves, a delta write's error and mask, the slopes, an
   adjoint's step, a nudge through the drive; an energy's value, gradient, parameters' gradient and descent (the walk
   over E's fields unrolled, every built-in term). Not pinnable, as in B2a: every product (gemm's workspace grows on its
   first products), a sparse form's sampled product (the kernel's join), a lesson's settles, a custom rule (`any
   Update&`). Resident memory is flat over 300 moments of a lesson, Adam, a tick (three factors, homeostasis) and an
   exact implicit gradient (test).
7. **Fixed in B2a's files on the way**: every event-driven connection used collector 0 (`Link.Index` was never set) -
   two of them in one system shared one; a retired unit's residual compared its total with its zeroed state, so a
   system with one never converged (found by B4) - its total is now held at its potential.

Measured (tests in `dyn/learn.olang`, `dyn/energy.olang`): the centered contrast against central differences of the
cost, relative error 1.6e-2, 1.6e-4, 1.6e-6 at beta 0.1, 0.01, 0.001 (beta^2), uncentered 0.12, 0.013, 0.0014 (beta);
the exact implicit gradient against central differences 1.2e-10, EP at 1e-3 against it 6.8e-8, JFB's cosine with it
0.996 (every reciprocal wiring); the contrast written is its definition for every wiring to 1e-13; XOR with rate
neurons 4/4 right, cost 1.4e-4 after 300 lessons at 9.2 sweeps a lesson (circuit: 9.6e-5 after 400, 9 sweeps); with
spiking neurons (window 256) 4/4, cost 1.4e-6, 643 steps a lesson (circuit's three settles: about 1 080); a contextual
bandit by three factors 100 of the last 100 moments rewarded; an energy of three terms against central differences
below 1e-8, a settled symmetric system its stationary point. **M8** (`make mnistlearn ARGS=10`, 784-128-10, F32,
batch 32, Adam 1e-3, beta 0.5, seed 1, one thread): 95.72, 96.50, 96.71, 96.71, 97.15, 97.49, 97.36, 97.42, 97.74,
**97.77%** after ten epochs (circuit's run: 97.48%), 30-34 sweeps a lesson (free, then both nudged side by side; no
lesson refused but one), 12-18 an answer; an epoch 2.5 s against circuit's 5.4 s (examples/mnist_settle.olang, the
same machine, three interleaved rounds of one epoch, medians, load 4.2-4.5), both at train loss 0.0696 after the first
epoch (test 95.72% against 95.69%). Through the board (B4's M11 test, now taught by the Learner): 91.06% after three
epochs, restrained to the certified set.

**As built (C2, 2026-11-15).** `dyn/bridge.olang`, `models/hybrid.olang`, `bench/hybrid.olang` (`make hybridbench`).
Where the build departs from the sketch above (`dyn.Settle(g, system, input, grad)`), and why:

1. **A `bridge.Bridge<T>(s, inp, out, how)` is the operation** (it satisfies `graph.Function`): its input is population
   inp's drive, its output population out's activities at the free fixed point, its backward `learn.Learner.ImplicitGrad`
   by `how` - the input's gradient to the graph, the system's parameters' written into `s.ParamGrads()`, which an
   optimizer of its own steps (the system's region is not the graph's). `bridge.Apply(g, b, settled, x, guess)` records
   it. The input may have leading axes (`[batch, t, size]` is batch x t rows of the system, at most its batch; a short
   batch's rows past it are driven by zero). Generic over T so the checks run it in F64 (`Run`, `RunFrom`, `Grad`); in a
   graph it is F32, as `Custom` is.
2. **The amortizer's guess is a second input**: the starting potentials of every relaxing population (every one but
   the inputs, in the order made: `b.StateSize` a row), their activities rho of them; without it a settle starts at rest.
   Its gradient is zero (at a fixed point the output does not depend on the start). The amortizer is trained by
   regression on the fixed point: `bridge.Settled(b)` is an operation reading the bridge's output (so it runs after the
   settle) whose value is the potentials reached and whose gradient is zero, and `Apply` gives `g.Mse(guess, settled)`;
   `bridge.Detach` (a copy, zero gradient) keeps that loss from reaching the amortizer's input. The whole loss's
   gradient is then the task's plus the amortizer's regression with the fixed point held - a stopped gradient, so the
   graph's gradient is not the central differences of a loss that includes the regression (tested separately: the
   task's loss against its differences, the regression's against its differences in the amortizer's weights).
3. **dz is scaled to a largest element of 1** before the learner sees it and the gradients scaled back: the exact
   adjoint's tolerance and EP's nudge are absolute, and a mean over 1 024 rows gives elements near 1e-4, which a
   tolerance of 1e-3 would read as solved in zero sweeps and EP's nudge would drown in the settle's tolerance. A
   backward the learner refuses (an adjoint or nudged phase that does not settle) writes zero gradients and counts in
   `Refused`; a forward settle that ends outside its budget is used as reached and counts in `Unsettled`.
4. **JFB is not the gradient of a recurrent settle**, so "against central differences" holds for it only where
   nothing feeds back into the output (x -> y, where it is exact, 1e-10); with feedback its cosine with the gradient is
   stated (0.98 on the test system). Exact and EP are checked against central differences on a recurrent system of
   every reciprocal wiring.
5. **Not pinned allocation-free**: a step through a `Custom` allocates (B1's note: its tensors are built where the graph
   lives at each call); the bridge itself allocates nothing per call (its staging is laid out at construction).
6. **The hybrid** (`models/hybrid.olang`): GPT-2's stream (embedding, learned positions, `layers.AttentionBlock`s), then
   the settle block - the stream normalized drives Dim linear inputs of a system of Units tanh units (a symmetric
   lateral block) and Dim tanh outputs (symmetric with the units), certified at Kappa; its outputs, projected, are added
   back; a final norm and the tied head. The amortizer is a tanh perceptron Dim -> 2 Dim -> StateSize on the detached
   normalized stream. `hybrid.Step` steps both regions (the graph's by nn/train's `LmStep`, then the system's gradient
   clipped, its optimizer stepped and `Restrain(Kappa)`, so every settle stays certified). It is made in pieces the
   program holds - system, bridge, `Settled`, `Detach`, graph - since each refers to the one before
   (repro/learnerarg.olang: a Learner, so a Bridge, cannot even be made in a helper taking the system by reference).

Measured (tests in `dyn/bridge.olang`, `models/hybrid.olang`): the op's backward against central differences of its
output (F64, a recurrent system of a sparse, a low-rank, a tiled and a symmetric block, two leading axes): exact 1.0e-10
in the parameters and 6.1e-10 in the input, EP(1e-3) 3.3e-7 and 1.6e-7; JFB on x -> y 1e-10 (cosine 0.98 with feedback);
the gradients scale with dz to 1e-9 in every mode; a settle started at its fixed point takes at most one sweep and ends
where a cold one does (1e-12). Through an F32 graph (Linear -> settle -> Linear -> Mse) against F32 central differences
(step 1e-2) of the graph's loss, the graph's parameters / the system's: exact 8.1e-5 / 1.8e-4, EP(0.01) 2.9e-4 /
2.8e-4, JFB (no feedback) 9.1e-6 / 4.8e-5; from an amortizer's guess the same to within 1e-5, and the amortizer's
weights against its regression's differences 3.3e-6. The hybrid trains on a cycle (4 sequences of 8, width 16) from ln
4 to 0.006 in 150 steps by every gradient, cold and amortized, 5-6 sweeps a settle cold and 3 amortized.

**M14** (`make hybridbench ARGS="1500 1 128 exact 1e-3 KAPPA 250"`, tiny Shakespeare characters, 2 layers of 64 in 4
heads, context 64, 16 sequences - 1 024 rows a settle - a settle block of 128 units, 192 units settling, exact implicit
gradient, forward tolerance 1e-3, AdamW 1e-3 warmed over 100 steps, cosine to 1e-4, both regions, one thread, load
14-19 on 4 cores; validation sweeps on the same 10 batches at each report, weights fixed). Certified at kappa 0.9:

| step | valid loss, cold | amortized | sweeps a settle, cold | amortized | adjoint sweeps | ms a step, cold | amortized |
|---|---|---|---|---|---|---|---|
| 250 | 2.4968 | 2.4956 | 5.0 | 4.0 | 3.1 | 214 | 202 |
| 500 | 2.3502 | 2.3506 | 5.0 | 4.1 | 3.3 | 197 | 200 |
| 750 | 2.2694 | 2.2694 | 5.1 | 4.9 | 4.0 | 234 | 205 |
| 1000 | 2.1856 | 2.1873 | 6.0 | 4.0 | 4.0 | 251 | 199 |
| 1250 | 2.1436 | 2.1457 | 6.0 | 4.4 | 4.1 | 245 | 207 |
| 1500 | 2.1182 | 2.1198 | 6.0 | 4.0 | 4.1 | 209 | 206 |

The amortizer saves a third of the forward sweeps once trained (6 to 4 at 1 500 steps; its regression loss 0.0021 per
element), at no cost in the loss (within 0.002 throughout) - but at kappa 0.9 the certificate is loose (the row-sum
bound; the spectral radius of these blocks is far below it), a cold settle needs only 5-6 sweeps, and the step's time is
the transformer's and the adjoint's, so the saving does not show in ms a step at this load.

With the recurrent blocks held at kappa 4 instead (`... exact 1e-3 4 250`: not certified - the row-sum bound is 4, the
settles still converge, 40-50 sweeps; the exact adjoint gave up within 400 sweeps on 4 backward passes of 1 500 in each
run, `Refused`, their gradients zero):

| step | valid loss, cold | amortized | sweeps a settle, cold | amortized | adjoint sweeps, cold | amortized |
|---|---|---|---|---|---|---|
| 250 | 2.5108 | 2.5104 | 23.9 | 18.7 | 11.6 | 11.7 |
| 500 | 2.3513 | 2.3546 | 32.4 | 30.9 | 27.5 | 27.3 |
| 750 | 2.2765 | 2.2805 | 37.9 | 38.3 | 40.6 | 39.3 |
| 1000 | 2.1909 | 2.1904 | 37.0 | 41.9 | 32.5 | 41.3 |
| 1250 | 2.1440 | 2.1414 | 45.2 | 40.3 | 34.8 | 36.8 |
| 1500 | 2.1134 | 2.1124 | 39.6 | 53.5 | 36.3 | 33.3 |

Here the amortizer saves nothing past the first few hundred steps: its regression loss stays at 0.022 (ten times
kappa 0.9's), and a settle's sweeps go as ln(start error / tol) / ln(1/q) with q near 1, where the start error is the
sup norm over 1 024 x 192 potentials - the worst row, which a mean-squared regression does not bring down much. (The
two runs' systems differ after the first steps, so the per-report sweeps of the two columns are of different weights;
ms a step is the shared machine's, load 5-19.) What would make it pay - regressing in the sup norm or on the residual,
predicting from the token as well as the stream, or a warm start from the previous step's state at the same position -
is not tried here.

### 1.5 Models: `nn/*.olang`, `models/*.olang`

`nn/` holds what models are built from: `layers.olang` (Dense, Mlp, Norm, AttentionBlock, SsmBlock, DeltaBlock,
Conv - each a struct of `Var`s with a `New` builder and an `Apply`), `optim.olang` (AdamW, Sgd, schedules, clipping,
master weights; generic over any flat region, so graphs and systems share them), `train.olang` (the loop, evaluation,
the run record), `generate.olang` (sampling, the KV cache), `quant.olang` (INT8 inference). `models/` holds reference
models, each with a test and a bench: `mlp`, `cnn`, `gpt`, `ssm`, `settle` (the 784-128-10 circuit, XOR rate and
spiking), `hybrid` (a transformer with a settle block). Research models (energy-based reasoners, the agent) live in
oagent (question 2).

```olang
type GptConfig struct(Vocab I64, Dim I64, Layers I64, Heads I64, Ctx I64, Ffn I64 = 0, Rope Bool = true, Tied Bool = true) { ... }
type Gpt struct(Config GptConfig, Embed ad.Var, Blocks Array<nn.AttentionBlock>, Final nn.Norm, Head ad.Var = ad.None) { ... }
fn Gpt.New<T>(g mut ad.Graph<T>&, c GptConfig) Gpt
fn (m Gpt&) Logits<T>(g mut ad.Graph<T>&, tokens ad.Var) ad.Var
```

Checkpoint names come from the model's fields by reflection (`blocks.3.attn.q.weight`); `@io.Name("c_attn")` on a
field overrides a name.

**As built (B3, 2026-11-15).** `nn/layers.olang`, `nn/optim.olang`, `nn/train.olang`, `nn/generate.olang`
(`nn/README.md`); `nn/quant.olang` and `models/` are C1's. Where the build departs from the sketch, and why:

1. **An optimizer steps one flat region, not a graph.** `optim.AdamW(params, grads, rate, beta1, beta2, eps, decay,
   spans)` and `optim.Sgd(params, grads, rate, momentum, nesterov, decay, spans)` take two tensors laid out alike and are
   generic over the parameters' type `A` and the gradients' `G`; one `Step()`, one `SetRate`, the moments in `A`, readable.
   A graph's region is `g.Params()`/`g.ParamGrads()`, a system's the same; **a BF16 or F16 graph's is its masters** -
   `optim.AdamW(g.Masters(), g.ParamGrads(), ...)` - and `g.SyncParams()` rounds the result into the graph (the loops
   in `nn/train` do). `FlatAdamW`/`FlatSgd` merged into these. Which elements decay is `spans`: runs of the region, each
   decaying or not (`optim.Spans(g)`: a graph's parameters, decaying where it says; none given: the whole region
   decays). `Save`/`Load` write and read the moments and the step count through io/checkpoint. `ClipNorm(grads, max)`,
   `WarmupCosine`, `WarmupLinear`. A step of either optimizer, in either precision, is pinned allocation-free while
   compiling (`assert not f.Allocates`, S17a; the graph's `Forward`/`Backward` cannot be, repro/allocfacts.olang).
2. **The projection regularizer is a `Projector<T>`** of its own, not an option of the optimizer: it is graph-specific.
   Made on a graph before `Plan` (it keeps every dense layer's output and input to the step's end, since activation
   storage is reused), `Project(g)` after `Backward` and before the optimizer's `Step`. Not for a graph with masters.
3. **Layers** (`nn/layers.olang`): `Dense` (`New`, `With` starting values, no bias), `Embedding` (also the tied head,
   `Logits`), `Norm`, `Mlp` (a `mat.Act` between layers), `Conv` (from a `conv.Shape`), `SelfAttention` (rotary positions
   optional), `AttentionBlock` (GELU `Feed` or gated SwiGLU `Feed`, RMS or layer norm, dropout), `Transformer` (GPT-2's
   decoder: it stays here, and C1's `models/gpt` builds on it), `SsmBlock`, `DeltaBlock`. Biases and gains are vectors.
   A block takes no context length (attention reads it from its input). `SsmBlock` is Mamba's block without its short
   convolution (the graph has no 1-D convolution): `A = -softplus(Alog)` keeps the state decaying, delta is a low-rank
   softplus with Mamba's log-uniform start. `DeltaBlock` normalizes q and k per head (RMS norm with a gain starting at
   1 / sqrt(dk), so the rule starts stable) and gates with a sigmoid starting at 0.98. The scan blocks keep no state
   between `Forward` calls, so a model with one generates by `Rerun`, not the cache. Every layer is checked against
   central differences in F64 (`SsmBlock` and `DeltaBlock` through the graph's scans).
4. **Loops** (`nn/train.olang`): `Epoch`/`Evaluate` over a `loader.Loader` without `Ahead` (the graph has none);
   `Classifier.On` records the loss and keeps the logits. `LmStep`/`LmEvaluate`/`Fit` are generic over the batch source
   and the optimizer by what they call (`Random(tokens, targets, B)`, `At(first, tokens, targets, B)`, `Step()`,
   `SetRate`), which `text.Windows` and `tokens.Tokens` both have - a trait cannot say "may fail" for one and not the
   other. `Fit(g, m, train, valid, o, cfg, on)` is a whole run: reports to `on`, a line per report through io/runlog,
   validation, checkpoints. `Save`/`Resume` write the parameters (as `g.Save` names them), the optimizer's state and the
   step; a run resumed in a fresh graph continues bit for bit (tested for AdamW and Sgd, F32 and BF16 masters).
   `LanguageModel.Gpt(..., loss = false)` builds a decoding model.
5. **Generation** (`nn/generate.olang`): on token ids (`CachedTokens`, `RerunTokens`) and on text (`Cached`, `Rerun`),
   generic over the graph's element type; the cache equals the full forward to 1e-12 in F64.
6. **Allocation.** A training step, an optimizer step and a classifier epoch have a test each that runs 20 steps after
   the first and asserts the resident memory did not grow (the same measure as B1's: a scope's storage is reclaimed at its
   close, so this finds what is kept, not what is made and freed).

**Measured (B3; a 4-core machine shared with other agents, load average 7 to 19 throughout, one thread - wall
times are inflated by an unknown factor and every number is a comparison made in the same minutes).**
M3, `make charlmnn ARGS="2000 1 1 0 300"` (bench/charlm_nn.olang, seed 1, round 2's recipe: 4 x 128, 4 heads, context 64,
16 sequences, AdamW beta2 0.99, decay 0.1, rate 1e-3 warmed over 100 steps, cosine to 1e-4, clip 1), validation loss in
nats per character on the same 10 batches of 16 windows - round 2's table (DESIGN 11, 22) beside it. The parameters are
drawn in another order than round 2's (`Plan` draws the dropout generator first), so the same seed is not the same start:

| step | 250 | 500 | 750 | 1000 | 1250 | 1500 | 1750 | 2000 |
|---|---|---|---|---|---|---|---|---|
| round 2, F32 | 2.3825 | 2.2186 | 2.0828 | 2.0032 | 1.9575 | 1.8779 | 1.8220 | 1.8063 |
| nn/, F32 | 2.3946 | 2.2136 | 2.0800 | 2.0027 | 1.9550 | 1.8708 | 1.8156 | **1.7961** |
| round 2, BF16 | 2.3817 | 2.2181 | 2.0882 | 2.0029 | 1.9622 | 1.8790 | 1.8221 | 1.8077 |
| nn/, BF16 | 2.4059 | 2.2110 | 2.0771 | 2.0022 | 1.9527 | 1.8658 | 1.8182 | **1.7936** |

The curves agree within 0.012 everywhere and end 0.010 and 0.014 below round 2's. M2, step time, one thread, 50 steps
alternated old/new in three rounds (load 6-19), ms a step: F32 old 392 / 434 / 442, new 402 / 451 / 467 (the new graph
3 to 5% slower in wall time here); BF16 old 441 / 488 / 494, new 303 / 305 / 318 (37% faster; the cause is not looked into - DESIGN 22's note on BF16 narrowing an element at a time is
the likely one). One profile of each at load 18, the new graph's forward + backward 434 ms
(Linear 331, Act 44, attention 27.5) against the old step's 477 (Linear 366, GeluTanh 65, attention 33): the F32 gap is
within the machine's noise and none of it is in `nn/` - the fill, clip and optimizer together take 1.8 ms a step in both
(old: 1.8). A quiet-machine repeat is open. 2,000 steps took 1,102 s (F32) and 824 s (BF16) at that load, resident memory
flat. A sample after the run reads as round 2's did, 2,254 characters a second through the key-value cache (BF16 run).

**As built (C1, 2026-11-15).** `models/`, `nn/quant.olang`, `examples/` (`models/README.md`, `examples/README.md`). Where the
build departs from the sketch, and why:

1. **A model is a config, its layers, and the handles the loops take.** `MlpConfig`/`Mlp`, `CnnConfig`/`Cnn`,
   `GptConfig`/`Gpt`, `SsmConfig`/`Ssm`: `New(g, config)` registers the layers before `Plan`; `Logits`, and `Task` (a
   classifier's input, classes, logits and loss) or `Lm` (a language model's tokens, targets, logits and loss) record the
   forward pass and give `nn/train`'s `Classifier` or `LanguageModel`. `GptConfig.Params()` and `SsmConfig.Params()` count a
   model's parameters from the config (a test holds them to the graph's `ParamCount`), which is how the 10 million of M13
   were sized. `Gpt` has the sketch's `Rope` (default false here, GPT-2's learned positions - round 2's number needs them)
   and adds `Rms`, `Gated`, `Dropout`; it registers its parameters in `train.LanguageModel.Gpt`'s order, so one seed gives
   the same parameters and a checkpoint loads into either (a test). The sketch's `Head` field is the tied embedding or one
   of its own. There is no `settle` or `hybrid` model file: the settling models are `dyn` systems (examples/xor_*,
   mnist_learn), the hybrid is C2's.
2. **`Ssm` takes either scan block.** `SsmConfig.Kind` is `Mixer.Mamba` (`layers.SsmBlock`) or `Mixer.Delta`
   (`layers.DeltaBlock`); a block is half a transformer block's parameters (6 D^2 against 12 D^2), so M13's SSM has 9 blocks
   of 384 (10.2 million) where the GPT has 5 layers of 384 (10.4 million). Generation is `generate.Rerun` (a scan keeps no state
   between forwards).
3. **`nn/quant.olang` on the graph and on tensors.** `Weights` (per output row, in GemmI8's layout, with each row's sum),
   `Range` and the U8 mapping (a tensor with no negatives takes all 256 levels, else symmetric about 128), and `Model`: dense
   layers, convolutions (the images quantized once, patches copied as bytes in [ky][kx][c] order, the zero point at the
   edges) and max pooling read from a trained graph's values by `Dense(g, layer, relu)`, `Conv`, `Pool`, `Model.Mlp`
   (each model has an `Int8(g, batch)`), run on plain arrays by `Forward(n, x, y)` through buffers of its own - nothing
   allocated after the first call; `Calibrate` and `Static` for ranges calibrated once; `Bytes`. `Quantize(g)` is the graph's
   own hook (every `Linear` node in INT8, a transformer's key-value decoding unchanged), `Dequantize(g)` undoes it,
   `LinearBytes(g)` counts. The old module's tile and its profile hooks are gone: the product is `GemmI8`, and `Model`'s
   per-layer profile is not carried over.
4. **`GemmI8` takes the weights' row sums.** It subtracted `zero * rowSum(b, j)` by summing every weight row on each call -
   a second read of all the weights, which is the whole cost of a batch-1 product - so it now reads none when the zero point
   is 0 (an image's pixels, ReLU's outputs) and takes `sums` where the caller has them: `Weights.Sum` in `nn/quant`, and
   the graph's INT8 hook (`q8Weights.sum`). One more optional argument; a test holds the result bit for bit. Measured
   (`bench/int8`, load 10): the 1 x 784 x 128 product from 21.5 us to 11.3 (dynamic quantization) and 16.0 to 8.5 (static).
5. **A bug in the graph, found by the SSM at 64 tokens and over.** `selectiveKeep` counted the states a selective scan keeps
   as `B * (T + 63) / 64`, not `B * ((T + 63) / 64)`: a context of 64 or more and a batch of 16 put the scan's gradient
   accumulator past the end of what `Plan` laid out, and `Backward` wrote over its neighbours (a segmentation fault or "slice
   bounds out of range", different on every run; the tests' contexts of 6 to 40 never reached it). Fixed in `ad/graph`; a test in
   `models/ssm` trains 16 sequences of 64, 100 and 130 tokens and fails without the fix. (The same fix would have been needed by
   any model with a scan block at those sizes: the first 10-million-parameter run of M13 is what found it.)
6. **Examples.** `bench/charlm_nn` is `examples/charlm` (the old example, on the old modules, is replaced), through
   `models/gpt`; `charlm_sample`, `charlm_int8`, `bpelm`, `mnist_mlp` (AdamW, the input projection, SGD; F32 and BF16),
   `mnist_cnn` and `mnist_int8` are on `models/`, `nn/` and `ad/`; `mnist_learn`, `xor_settle` and `xor_spiking` on `dyn`
   and `nn/optim`; new: `charlm_ssm` (the SSM on tiny Shakespeare) and `tinystories` (M13). `bench/int8` measures `nn/quant`
   against `kernels/gemm`. Still on `circuit`, `board`, `agent` and `consolidator`, for C3: `mnist_settle` (superseded by
   `mnist_learn`), `mnist_board`, `bandit_settle`, `sleep_retention`, `nights`.

**Measured (C1; a 4-core machine shared with other agents, load average 7 to 15 throughout, one thread unless said - wall
times are inflated by an unknown factor, so every speed is a ratio taken in one run, and every number is seed 1).**

Round 2's numbers, reached (the models' accuracy and loss do not depend on the load):

| model | number | round 2 | here |
|---|---|---|---|
| MLP 784-128-10, 10 epochs, AdamW (M1) | test accuracy | 97.73% (DESIGN 8) | **97.73%** F32, **97.74%** BF16 (`examples/mnist_mlp`) |
| CNN 16/32 channels, epochs 1, 2, 3 | test accuracy | 96.97, 97.78, 98.44% (DESIGN 16) | **97.29, 97.93, 98.48%**; resident memory flat at 110 432 kB over all three (round 2's grew 450 kB an epoch) |
| character GPT, 2000 steps (M3) | validation loss, nats a character | 1.8063 (DESIGN 11) | **1.7961**, every report of the curve (2.3946, 2.2136, 2.0800, 2.0027, 1.9550, 1.8708, 1.8156) the same to four digits as B3's `nn/` run: `models/gpt` is `train.LanguageModel.Gpt`'s model |
| character SSM, 2000 steps, 8 Mamba blocks of 128 (0.93 M parameters against the GPT's 0.81 M; no round 2) | validation loss | - | **1.5725** against the GPT's 1.7961 (1.6300 against 1.8708 at step 1500); 1.48 s a step against the GPT's 0.52 |

INT8 (M12; `examples/mnist_int8`, `charlm_int8`, `bench/int8`; accuracy and memory are what the old `quant.olang` had, speed is
reported against the F32 graph run in the same process):

| | F32 | INT8 dynamic | INT8 static | same class as F32 | parameters F32 / INT8 |
|---|---|---|---|---|---|
| 784-128-10, 5 epochs | 96.99% | 97.01% | 97.00% | 99.98% / 99.97% | 407 080 / 103 288 B (3.94x) |
| CNN, 2 epochs | 97.93% | 97.93% | 97.94% | 99.96% / 99.97% | 81 960 / 21 128 B (3.88x) |
| character GPT, validation loss | 1.7961 | 1.7964 | - | - | linear weights 3 145 728 / 804 864 B (3.91x) |

| samples a second | batch 1 | batch 64 | batch 128 |
|---|---|---|---|
| perceptron F32 | 134 411 | 53 911 | 57 518 |
| perceptron INT8 dynamic / static | 188 407 / 185 357 (1.40x / 1.38x) | 74 852 / 73 340 (1.39x / 1.36x) | 64 687 / 69 947 (1.12x / 1.22x) |
| CNN F32 | 4 973 | 4 972 | 5 109 |
| CNN INT8 dynamic / static | 4 820 / 5 079 (0.97x / 1.02x) | 4 697 / 4 717 (0.94x / 0.95x) | 4 710 / 4 891 (0.92x / 0.96x) |

The perceptron's INT8 speedup at batch 1 is 1.4x where round 2 had 3.1x: the F32 side got faster (the graph's batch-1
product is `Gemv`: 7.4 us for a forward against round 2's 26), the INT8 side did not slow down - at the same minutes the
old `quant.olang`'s forward ran 3.9 us against this one's 5.3 (load 14, one run each). At batch 64 and 128 INT8 is now ahead of
F32 (round 2: 0.8-1.0x). The CNN is the loss: round 2's 1.13-1.29x is 0.92-1.02x here, because the F32 convolution no
longer builds a patch matrix (kernels/conv's `GemmLeft`) while the INT8 one still copies its patches as bytes and packs them -
an implicit-patch `GemmI8` is the open item. The transformer (`charlm_int8`, 10 batches of 16 x 64): a forward over 1024
characters F32 147 ms, INT8 141 ms (1.04x; round 2: 0.82x), 500 characters through the key-value cache F32 2963 a second,
INT8 3330 (1.12x; round 2: 2.1x, F32 2800 a second) - an F32 decode about as fast as round 2's, an INT8 one slower, not looked into
(a decoding step's linear layers are one row each; the cache, norms and head are F32). A product alone (`bench/int8`, 1 x 784 x 128, load 10): F32
12.3 us, INT8 dynamic 11.3, static 8.5; at 1 x 1024 x 1024 INT8 is 2.9x (round 2: 4.2x); the 128-row products are 1.1-1.5x.

**M13, the first yardstick run** (`examples/tinystories.olang`; TinyStories from the Hugging Face hub - the validation file and
the first 300 MB of the training file, of which the first 60 MB are tokenized - by a byte-level BPE of 4096 tokens learned from
8 MB of it, 3.95 bytes a token: 15.2 million training tokens, 1.26 million validation tokens). A GPT (5 layers of 384 in 6
heads, rotary positions, RMS norms, SwiGLU, 10 432 128 parameters, arena 900 MB) and an SSM (9 Mamba blocks of 384, 16 states,
expansion 2, 10 216 704 parameters, arena 1239 MB), batches of 16 sequences of 256 tokens, 360 steps = 1 474 560 tokens each (a
tenth of an epoch of the 15 million), AdamW (beta2 0.95, decay 0.1) at 1e-3 warmed up over 18 steps and down a cosine to 1e-4,
clip 1, seed 1, F32; the validation loss is nats a token on the same 8 batches of 16 x 256 of the held-out file, ln 4096 = 8.318:

| tokens | 0 | 147k | 295k | 442k | 590k | 737k | 885k | 1032k | 1180k | 1327k | 1475k |
|---|---|---|---|---|---|---|---|---|---|---|---|
| GPT | 8.369 | 4.791 | 3.976 | 3.590 | 3.381 | 3.242 | 3.107 | 3.025 | 2.960 | 2.919 | **2.880** |
| SSM (Mamba) | 8.512 | 4.189 | 3.752 | 3.462 | 3.267 | 3.120 | 2.977 | 2.903 | 2.845 | 2.806 | **2.760** |

(A sample from the GPT after the run begins "Once upon a time there was a young boy named Timmy. One day he went across a whole
day. The cat was very happy because he had made a useful lesson." - words and the shape of a story, not yet sense.)

Speed, tokens a second of training (the validation passes are not counted):

| | one thread, the whole run (load 7-15) | one thread, 6 steps (load 3) | four threads, 6 steps (load 2-3) |
|---|---|---|---|
| GPT | 199 | 221 | 532 |
| SSM | 153 (two threads) | 130 | 291 |

At 221 tokens a second the GPT does about 14 GFLOPS on one thread (6 N flops a token, the attention not counted); where a step
goes by operation is not measured here (`bench/lm.olang` and the graph's `Profiling` do it).
The SSM is slower a token than the GPT at 10 million
(a scan's forward and backward over 768 channels of 16 states, nine times) and ahead in loss at every point of the run;
the results are the same for every thread count to the last digit (the 6-step loss 6.7385 and 6.1795 are equal at one and
four threads). The same recipe on tiny Shakespeare at 0.8-0.9 million parameters orders them the same way (the SSM's 1.57
against the GPT's 1.80 nats a character).

### 1.6 Data: `data/*.olang`

`datasets/` and `tokenizer.olang` moved as they are (`Dataset` trait, `Loader<D>`, IDX, MNIST, characters, byte-level
BPE), plus `tokens.olang`: a corpus of `U16`/`U32` token ids in one binary file, random windows of `ctx + 1` into a
graph's token and class inputs, the next batch filled on a task while the current one trains (the graph's `Ahead`).

### 1.7 Checkpoint and IO: `io/*.olang`

`checkpoint.olang`: safetensors for any `Tensor<T>` (F64 down to F8 and I8), names from module paths; a system's
state saved field by field (`h.theta`) by walking the cell record's fields. `runlog.olang`: one JSON line per run -
seed, config, oann and olang commits, the numbers - kept beside every bench and experiment; read back as a
`ColumnVec<Run>` for tables.

### 1.8 Tools: `tools/*.olang`, `bench/`

`gradcheck.olang` (central differences in F64 for any graph op, system rule or energy term), `profile.olang` (time
per op kind and per rule, sweep histograms, residual at halt), `count.olang` (FLOPs and effective MACs per op).
`bench/` keeps one driver per measured number (section 4.3).

### 1.9 Two programs against it

A settling network on MNIST, taught by centered EP:

```olang
import "dyn"
import "nn/optim"

fn main() ? {
    r := rand.Rand(1)
    s := dyn.System<F32>(batch = 128, threads = 4)
    root := s.Root()
    x := s.Population(root, "x", 784, dyn.Neuron.Rate(dyn.Rho.Linear), dyn.Role.Input)
    h := s.Population(root, "h", 128, dyn.Neuron.Rate(dyn.Rho.Tanh))
    y := s.Population(root, "y", 10, dyn.Neuron.Rate(dyn.Rho.Tanh), dyn.Role.Readout(dyn.Cost.CrossEntropy(0.25)))
    s.Connect(x, h, dyn.Wiring.Dense)
    s.Connect(h, y, dyn.Wiring.Symmetric)
    s.Attach(root, dyn.Rule.Ep(beta = 0.5, centered = true), dyn.Clock.Step)
    try s.Plan(r)
    opt := optim.AdamW(s.Params(), s.ParamGrads(), rate = 1e-3)
    for b in try data.Loader(try mnist.Train(), 128) {
        s.Clamp(x, b.Features)
        s.Target(y, b.Labels)
        free := s.Settle(dyn.Phase.Free, dyn.Budget())
        if not free.Converged: continue
        s.Nudged(dyn.Budget())
        s.Tick(dyn.Clock.Step)
        opt.Step()
    }
}
```

A small GPT, trained in BF16:

```olang
fn main() ? {
    r := rand.Rand(1)
    g := ad.Graph<BF16>(batch = 16, threads = 4)
    m := models.Gpt.New(g, models.GptConfig(Vocab = 8192, Dim = 512, Layers = 8, Heads = 8, Ctx = 256))
    tokens := g.Tokens(256)
    next := g.Classes(256)
    loss := g.CrossEntropy(m.Logits(g, tokens), next)
    try g.Plan(r)
    opt := optim.AdamW(g.Params(), g.ParamGrads(), rate = 3e-4, decay = 0.1)
    corpus := try data.Tokens.Open("tinystories.u16", ctx = 256)
    for step in range 10000 {
        corpus.Fill(g, tokens, next, r)
        g.Forward(16)
        g.Backward(loss)
        optim.ClipNorm(g.ParamGrads(), 1.0)
        opt.Step()
        if step % 100 == 0: try io.Println("step " + $step + " loss " + $g.Scalar(loss))
    }
}
```

## 2. Module map

| now | verdict | becomes |
|---|---|---|
| `linalg.olang` | replaced | `tensor.olang` (Matrix -> rank-2 Tensor; fills, conversions, reductions as methods) and `kernels/gemm.olang`, `kernels/elem.olang` (GEMM, GemmBatch, Ger, FastExp/Tanh, row reductions). `Solve`/`Inverse` move to `tools/` (checks only). Deleted. |
| `kernels.olang` | folded | `kernels/elem.olang`, `kernels/attention.olang`. Deleted. |
| `ops.olang` | reshaped | `ad/ops.olang`: each VJP on N-d tensors over the kernels. |
| `nn.olang` | reshaped | `ad/graph.olang`: Op enum, Plan with liveness reuse, eager mode, decode cache, INT8 hook, profiling. |
| `layers.olang` | reshaped | `nn/layers.olang`: on `ad`, plus SsmBlock, DeltaBlock, Rope, SwiGLU. |
| `optim.olang` | kept, generalized | `nn/optim.olang` over flat regions (FlatAdamW/FlatSgd merge into AdamW/Sgd); the projection regularizer stays as an option. |
| `train.olang`, `generate.olang` | kept | `nn/train.olang`, `nn/generate.olang`, on `ad`. |
| `conv.olang`, `vision.olang` | reshaped | `kernels/conv.olang` (patches, pooling); the layer in `nn/layers.olang`; images as `[B, H, W, C]`. |
| `quant.olang` | kept | `nn/quant.olang` on tensors; its product in `kernels/gemm.olang` (`GemmI8`). |
| `checkpoint.olang` | kept | `io/checkpoint.olang`; names by reflection; F8 and system state added. |
| `sparse.olang` | reshaped | `kernels/sparse.olang` (Csr, TopK, gather/scatter) plus Tiles and Events. |
| `circuit.olang` | replaced | `dyn/` (System, populations, connections, settle, EP). Deleted at parity (section 4.2, C3). |
| `board.olang` | reshaped | `board/engine.olang`: a fixed-point backend of `dyn` (Q1.15 cells, `arith.Saturating`, the descriptor table a `packed struct`), golden vectors kept bit for bit. |
| `store.olang`, `consolidator.olang`, `agent.olang` | moved | oagent (question 2); the parts the library needs become rules: `DeltaWrite`, `ThreeFactor`, the top-k store as a connection over `kernels/sparse`. |
| `tokenizer.olang`, `datasets/*` | kept | `data/` unchanged, plus `data/tokens.olang`. |
| `examples/*` | rewritten | each on the new layers, or moved to oagent with the agent (bandit, sleep, nights). |
| `bench/*` | rewritten | one driver per number of section 4.3; `bench/ref/mlp.c` kept. |
| `repro/` | kept | olang issues found while building. |
| `DESIGN.md` | rewritten at the end | current state only, the phases' history kept as the last section. |
| `docs/settling.md` | kept | the model and its acceptance numbers. |

## 3. Decisions

1. **Shape errors.** Inside a planned graph or system a shape is oann's own invariant: `x!` (already decided,
   DESIGN 25). Shapes a caller gives are checked once, where they are given - `Tensor.Over`, `Reshape`, `Plan`,
   `Clamp`: `? ShapeError`, carrying what mismatched. Kernels check nothing.
2. **Memory.** A step, a sweep, a settle and a lesson allocate nothing. Everything is laid out by `Plan`: one flat
   parameter region (optimizers, clipping, checkpoints step it in one pass), one activation region reused by
   liveness, population state as `Columns` made at `Plan`, a `kernels.Workspace` per task grown on the first step.
   All of it lives where the graph or system was made (the caller's scope; region inference places it). Eager mode
   allocates per op in the caller's block and is reclaimed when the block closes. A test per model runs 20 steps and
   asserts the resident memory grew by nothing after the first.
3. **Precision.** Every kernel is generic over storage and accumulator. Weights and activations are stored in F32,
   BF16, F16, F8 (`F8E4M3` weights, `F8E5M2` gradients) or I8; products accumulate in F32 (I32 for I8). A settle's
   state stays F32 (F16/BF16 cannot resolve its tolerance, settling.md 3.12), its weights may be low precision; F64
   is for checks. Every reference model is tested in F32 and BF16 from its first commit. The board is Q formats over
   saturating integers.
4. **Threads.** Parallelism lives inside kernels and sweeps only: a product splits its output tiles, attention
   splits (sequence, head), a sweep splits populations and batch rows; never across graph nodes. `join`/`spawn`,
   thread count fixed at `Plan`, results the same for every thread count.
5. **Dispatch.** Built-in kinds are closed enums matched (ops, wirings, neuron models, rules: no indirect call in a
   hot loop); `Custom(any ...&)` cases open each set for experiments. Per-element work is never behind a dispatch.
6. **Language features used where they fit:** `Columns` for state, lane operators for element kernels, reflection
   for energies, checkpoint names and cell records, `comptime` for approximation coefficients and baked plans,
   generics with needs for the storage/accumulator pairs, typed attributes (`@dyn.Keep`, `@io.Name`), `unique` with
   destructors for open files and (later) device buffers, packed structs for the board's tables, `join`/`spawn`.
7. **Legacy.** The old modules stay buildable until their replacement reaches parity on their tests and measured
   numbers, then go in one commit (C3); their tests are ported, not dropped.

### Questions for the user

1. **The GPU route - decided (the user, 2026-11-15: "we will depend on CUDA and CUblas either way, writing our own stuff
   only when we gain something from it is the way").** NVIDIA's libraries (cuBLAS, cuDNN) through C imports are the
   base; a kernel of our own is written only where it measurably gains (fused element work, the settle's small blocks,
   attention variants cuDNN lacks). How our own GPU kernels are compiled (an NVPTX target in olang, or CUDA C through a
   C import) is decided when the first one is needed, by what that kernel needs. Meanwhile CPU only.
2. **Where research models live - decided (the user, 2026-11-15: "you can have the amendments to settling networks ...
   in oann ... what I want in oagent is the bootstrapping AGI model that we are building, basically, make the framework
   public, hide the weights (and similarly)").** oann is the public framework, everything general in it: tensors,
   kernels, autodiff, the dynamical-system core with every settling mechanism (memory store, consolidation and sleep,
   the agent's machinery, energy-based reasoners as model kinds) and the reference models. oagent, private, holds the
   AGI model being bootstrapped: its configuration and architecture choices, trained weights and checkpoints, training
   data and recipes, its experiments and their results. Nothing moves out of oann in C3. Datasets we create (not ones
   retrieved) are oagent's too - "basically any company secrets" (the user, 2026-11-15).
3. **Structure changes - decided (the user, 2026-11-15: "we want the networks to be prunable at runtime eventually at
   least. its not the most important first step, but dont depend it never being the case").** The first build may
   re-plan between runs, but nothing may assume a planned system's structure is fixed: connections carry an active mask
   (a pruned weight or unit is masked in place, no reallocation), sparse forms can drop entries in place, populations
   can retire units, and the plan records what it laid out so a compaction step can rebuild it while running. The loops
   stay allocation-free; pruning at run time costs a masked product until a compaction. The FPGA form is made from a
   compacted system.

## 4. Round 3: work packages

Each package is one agent in its own worktree (`wt-oann<name>`), touching only its files (plus its folder's
README.md), committing as it goes, developing on targeted tests (`olang test FILE`) and running the full `make test`
once at the end. Style per olang's rules: at most three or four blocks deep, the construct that fits best, errors
not flags. Sizes: S < 600 lines, M 600-1500, L 1500-3000.

### 4.1 The packages

**Wave A - no dependencies (start together):**

| | package | files | inputs | acceptance | size |
|---|---|---|---|---|---|
| A1 | tensor | `tensor.olang` | section 1.1, linalg's Matrix | views, Permute/Expand/Reshape against hand-built strides; conversions round to nearest even (F16, BF16, F8 both); operator forms against loops; the evaluator agrees (`interpret`) | M |
| A2 | gemm | `kernels/mat.olang` (first commit, as frozen above), `kernels/gemm.olang` | linalg's GEMM, quant's product | linalg's product tests ported; mixed storage BF16/F16/F8 x F32 against F64; `Gemv` on 64x64-256x512 measured against `Gemm` there (M5); GFLOPS on round 2's shapes no lower (M4) | L |
| A3 | elementwise | `kernels/elem.olang`, `kernels/attention.olang` | linalg's fast functions and reductions, kernels.olang, ops' attention | each approximation's maximum error stated and tested against libm in F32 and F64; attention against a naive F64 one; GeluTanh, softmax and attention times no worse (M6) | M |
| A4 | sparse | `kernels/sparse.olang`, `kernels/conv.olang` | sparse.olang, conv.olang, linalg's patches | old sparse and conv tests; Tiles and Events against dense; effective MACs counted; time against dense at densities 0.05-0.5 and activity 1-20% (M10) | M |
| A5 | scan | `kernels/scan.olang` | the consolidator's recurrence; DeltaNet's equations | chunked equals sequential to 1e-5 (F32); backward against central differences (F64) | M |
| A6 | data and IO | `data/*` (moved), `data/tokens.olang`, `io/checkpoint.olang`, `io/runlog.olang` | datasets/, tokenizer, checkpoint | old tests; a token file streamed with no allocation per batch; safetensors round trip of every dtype, read by name; F8 | M |

**Wave B - on wave A (start each when its inputs merge):**

| | package | files | needs | acceptance | size |
|---|---|---|---|---|---|
| B1 | autodiff | `ad/graph.olang`, `ad/ops.olang`, `tools/gradcheck.olang` | A1, A2, A3, A5 | every nn and ops test ported; a gradient check per op in F64; eager equals captured bit for bit; liveness reuse shrinks the transformer's arena (M9); MNIST MLP 97.7% and its epoch time (M1) | L |
| B2a | dyn core | `dyn/system.olang`, `dyn/neuron.olang`, `dyn/conn.olang`, `dyn/settle.olang` | A1, A2, A3, A4 | settles to settling.md's sweep counts at kappa 0.9 (cold about 64-71 sweeps); allocation-free (M9); time per sweep against circuit.olang (M7); Jacobi in tasks equals one thread | L |
| B2b | dyn learning | `dyn/learn.olang`, `dyn/energy.olang` | B2a's types (its first commit) | EP estimate against the gradient, error falling as beta^2; XOR rate and spiking; MNIST 784-128-10 at 97.5% (M8); an `Energy<E>` of three terms' gradient against central differences; implicit, JFB and EP gradients against each other on a small system | L |
| B3 | nn | `nn/layers.olang`, `nn/optim.olang`, `nn/train.olang`, `nn/generate.olang` | B1 | layers' and optim's tests ported; the character transformer's validation loss within noise of round 2 at the same seed, step time no worse in F32 and BF16 (M2, M3); KV-cache decoding equals the full forward | M |
| B4 | board | `board/engine.olang`, `board/README.md` | B2a | board.olang's tests and golden vectors bit for bit; equilibria within the derived bound; MNIST through the board 91.1% at T = 0.25 (M11) | M |

**Wave C - on wave B:**

| | package | files | needs | acceptance | size |
|---|---|---|---|---|---|
| C1 | models | `models/*.olang`, `nn/quant.olang`, `examples/` | B1, B2b, B3 | each reference model trains to its round 2 number; INT8 accuracy and speed kept (M12); a GPT and an SSM block at 10M on TinyStories as the first yardstick run (loss curve, tokens per second, M13) | L |
| C2 | bridge | `dyn/bridge.olang` (the settle as a `Custom` op), `models/hybrid.olang` | B1, B2b | the op's backward against central differences for each `Implicit`; a transformer with a settle block and an amortizer trains; sweeps used with and without the amortizer (M14) | M |
| C3 | cut-over | delete the old modules; README.md, DESIGN.md, makefile, PROGRESS.md | all | every old test ported or recorded as moved to oagent; `make test` green; build time of the test suite measured (M15) | M |
| C4 (built, 2026-11-15) | baked plans | `ad/graph.olang` (a `comptime` plan) | B1 | the MLP's plan baked as constant data equals the captured one; compile time stated | S |

Order: A1-A6 together (at most two agents in a full test run at a time); B1 and B2a as soon as A1-A3 merge, B2b
after B2a's first commit, B3 after B1, B4 after B2a; C1-C2 after B; C3 last; C4 whenever B1 is merged. Critical
path: A2 -> B1 -> B3 -> C1 -> C3.

### 4.2 Parity before deleting

C3 deletes `linalg`, `kernels`, `ops`, `nn`, `layers`, `conv`, `vision`, `circuit`, `board`, `sparse` only when
M1-M12 hold on the new code, and moves `agent`, `store`, `consolidator` and their examples to oagent (question 2).

### 4.3 What is measured

Every package reports its numbers against round 2's (wt-oannmeasure; until it lands, DESIGN sections 8, 11, 19, 20
and 22 and docs/settling.md 5) on the same machine and load, interleaved, medians, each with a run record (A6):

| | measure | round 2 reference |
|---|---|---|
| M1 | MNIST MLP epoch, 1 and 4 threads; test accuracy | 0.69 s (1 thread); 97.7-97.8% |
| M2 | character transformer step, F32 and BF16; ms by op | about 119 / 115 ms |
| M3 | its validation loss after the standard run | DESIGN 11 / 22 |
| M4 | GEMM GFLOPS on the MLP's and transformer's shapes | about 40 GFLOPS (AVX-512) |
| M5 | GEMV ns on 64x64, 128x128, 256x512 (settle blocks) | new |
| M6 | attention forward and backward at ctx 64 and 256; GeluTanh; softmax | DESIGN 19-20 |
| M7 | settle: sweeps and ms per lesson, 784-128-10, batch 1 and 128 | settling.md 5.7 |
| M8 | settling MNIST accuracy and epoch time | 97.5% |
| M9 | arena size; resident growth after step 1 (must be 0); allocations per step (must be 0) | 86.0 MB; 68-76 kB in 20 steps |
| M10 | sparse and event-driven against dense, effective MACs | settling.md 5.9 |
| M11 | board MNIST accuracy, rate and spiking | 91.1% (T = 0.25), 91.6% spiking |
| M12 | INT8: accuracy, memory, batch-1 speedup | DESIGN 22 |
| M13 | 10M GPT and SSM on TinyStories: tokens per second, loss at a fixed token budget | new |
| M14 | sweeps to tolerance with and without an amortizer | new (C2: section 1.4, "As built (C2)") |
| M15 | build time of `make test` and of one model | round 2's |
