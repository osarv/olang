# dyn

The dynamical-system core of the redesign (docs/redesign.md 1.4; the model is docs/settling.md): a `System<T>` is a
tree of modules holding populations of neurons with named state, connections between them as objects, signals and
rules on clocks. It is recorded through handles, laid out once by `Plan` and then settled with nothing allocated.

| file | what |
|---|---|
| `system.olang` | `System<T>` (T the state's and the weights' element: F32 to run, F64 for checks), the handles `Pop`, `Conn`, `Mod`, `Sig`, `Clock`, `Rule`; recording (`Module`, `Population`, `Connect`, `Signal`, `Attach`), `Plan`, data in (`Clamp`, `Target`, `TargetValues`, `Set`), `Settle`, `Nudged`, `Reset`, `Warm`, state and parameters out (`State<C>`, `Activity`, `Predict`, `Loss`, `Weights`, `Bias`, `Params`, `ParamGrads`, `Read`), structure while running (`Prune`, `Retire`, `Compact`) and stability (`Gain`, `Certify`, `Restrain`, `Rate`, `LessonTolerance`, `BudgetFor`) |
| `neuron.olang` | the cells (`RateCell`, `LifCell`, `@Keep` for state kept across settles), `Rho`, `Neuron` (rate, spiking, `Custom` through the `Dynamics` trait), `Role`, `Cost`, and the per-element work of a sweep: the residual and step, a spiking time step and window, a readout's force and cost |
| `conn.olang` | `Wiring` (Dense, Symmetric, Csr, Tiles, Events, LowRank) and `Link<T>`: its weights as a view of the parameter region, carrying activities forward and back, its share of the units' incoming mass, pruning (`Prune`, `MaskGrads`) and compaction in place |
| `settle.olang` | `Phase`, `Budget`, `Settlement` and the `Engine`: population state double-buffered as `Columns` of cells, every phase side by side on one axis, Jacobi sweeps cut into units (a population's rows of a phase, 128 at most) run on the system's tasks - the same bit for bit for any thread count |
| `learn.olang` | `Learner<T>`: a planned system's learning - the rules attached to its modules run on their clock (`Tick`): EP lessons (`Lesson`, `Contrast`: free and nudged phases, the contrast for every wiring into `ParamGrads`), three-factor rules (an eligibility trace per rule times a signal; the local term EP's contrast of the last nudge, or Hebbian), homeostasis (thresholds or biases toward a target rate), delta writes, custom rules; and gradients at a fixed point (`ImplicitGrad`: exact adjoint, JFB, EP through the drive) |
| `bridge.olang` | `Bridge<T>`: a settle as one operation of the autodiff graph (`ad/graph`'s `Custom`) - its input a population's drive, its output another's activities at the free fixed point, an optional second input the starting potentials of every relaxing population (an amortizer's guess); its backward the learner's `ImplicitGrad` by the bridge's `Implicit` (exact, JFB, EP), the input's gradient to the graph and the parameters' into the system's `ParamGrads`; `Settled` (the fixed point as an operation with a zero gradient: the amortizer's target), `Detach`, and `Apply`, which records them; counts of settles, sweeps and adjoint sweeps (M14) |
| `energy.olang` | `Energy<E>`: an energy written as a struct of terms whose value, state gradient and parameter gradient are assembled while compiling by walking E's fields; the terms (`Potential`, `Bilinear`, `Linear`, `Squared`, `LogSumExp`), made from a system's populations and connections; `StateOf` (a row's activities) and `Of` (a system's energy) |

Programs import the modules (`import "dyn/system"` and so on) and write `system.System<F32>(batch, threads)`,
`neuron.Neuron.Rate(neuron.Rho.Tanh)`, `conn.Wiring.Symmetric`, `settle.Budget()`; after `Plan` (and after attaching
the rules) `learn.Learner<F32>(s)!` teaches it: `l.Lesson(s.Root(), beta)!`, an optimizer's step over `s.E.Params` and
`s.E.Grads`, `l.Tick(system.Clock.Step)!`.

Tests: `olang test dyn/FILE.olang` (`make test` runs them). Speed against `circuit.olang`, the same network and
weights side by side: `make settlebench ARGS="ROUNDS THREADS"` (bench/settle.olang). MNIST taught by EP on dyn:
`make mnistlearn ARGS="EPOCHS"` (examples/mnist_learn.olang; `make data` first). A transformer with a settle block
through the bridge is `models/hybrid.olang`; `make hybridbench ARGS="STEPS SEED UNITS exact|jfb|ep TOL KAPPA"` trains it
on tiny Shakespeare cold and amortized and tables the sweeps a settle takes in each (bench/hybrid.olang, M14).
