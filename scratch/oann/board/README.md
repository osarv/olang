# board

The settling engine of the PYNQ-Z2 board (docs/settling.md 4.2) as a backend of `dyn` (docs/redesign.md 1.4 and
decision 3: the FPGA form is made from a compacted system). A planned `System<T>` is lowered to Q-format saturating
integers and its sweeps are simulated bit for bit: the reference an HLS or hardware implementation of the engine is
checked against, and the way to see what a system does on the board before there is one.

| file | what |
|---|---|
| `engine.olang` | `Engine`: the descriptor tables, weights, biases, activation tables, inputs and four phases' state, all integers; `Engine.Lower(s)`, the push and pull between a system and the engine, the settle (rate and spiking), `Lesson`, `Delta` and `Bound`, the golden vectors (`Image`, `Dump`); the tests |

## Use

```olang
s := system.System<F32>(batch)        # populations, connections, Plan, certified (s.Certify(0.9)), weights trained
e := engine.Engine.Lower(s)!          # compacted and quantized; a ? LowerError names what the board cannot run
e.Inputs(s)                           # the batch's drives, classes and targets, quantized (the first n rows: Inputs(s, n))
st := e.Settle(settle.Phase.Free, budget, tolerance)!    # NotSettled.Budget leaves the committed state as it was
e.Store(s, settle.Phase.Free)         # the engine's state back into s's named state (RateCell or LifCell columns)
e.Lesson(s, beta)!                    # free and nudged phases settled on the engine, stored back: learn.Tick takes the contrast
e.Load(s)!                            # after a learning step: the weights and biases quantized again
```

`Settle(phase, sweeps, tolerance)` takes the tolerance in the system's units and runs to the board's integer tolerance
for it, `max(tau, 5 steps of Q4.14)` (a spiking system's: the largest change of a rate between windows, in steps of
Q1.15). The formats, the arithmetic of a sweep and of a spiking time step, and the cycle model are the header of
`engine.olang`; they are board.olang's, unchanged.

## What lowering does

- **Compacts.** A population keeps its alive units: a retired unit (`s.Retire`) is dropped from its population and from
  every block, its bias and weights with it (a readout with a retired unit is refused: its softmax would change). A
  sparse block (`Csr`, `Tiles`, after `Compact` the entries a pruning masked are gone) and an event-driven or low-rank
  one are stored as the dense block they stand for, absent synapses as zeros - what the hardware's weight memory holds;
  `e.Nonzero()` counts the synapses that are not. Each lowering is tested equal, bit for bit, to the lowering of the
  twin system whose blocks are plain and hold those weights (as built, pruned and compacted).
- **Quantizes.** Weights to Q1.15 with a shift per block (the least that fits its largest weight), biases and drives to
  Q4.14, targets to Q1.15, the fan-in of every neuron checked against the 48-bit accumulator (`LowerError.FanIn`).
- **Refuses what the board has no form for**, with the reason: a rectifier or a custom model, a non-input linear
  neuron, a readout with retired units, a fan-in beyond 2^16. An event-driven block's threshold is dropped (the board
  carries every unit: the exact product); spiking systems are all-Lif beside rate inputs, as dyn's `Plan` requires.

`e.Origin` records each board neuron's unit in its population, so `Inputs`, `Store`, `StoreParams` and `StoreInputs`
address the system's units whatever was dropped.

## The bound

`e.Bound(s, tolQ, beta, floatTol, rounded)` derives the distance of a settle's potentials from the floating-point
system's equilibrium, docs/settling.md 5.6: `(tau_board + delta + tau_float) / (1 - kappa)`, kappa the system's `Gain()`,
delta the error one evaluation of the map can make (`Delta`: the constant's and the total's rounding, the activation
tables' error through the recurrent weights and the folded inputs, in a nudged phase the force's) plus, for a float
system holding its own unrounded values, the weights' rounding (half a step of each block, `2^(shift - 16)`, through
activities of at most 1), a bias's and a drive's, and an input's drive through its folded weights. Infinite for a
spiking system or where kappa is not below 1. In a nudged phase the divisor is still the free gain's, as 5.6 measures it.
Every equilibrium checked is inside it, at 0.34 of it at most (12 systems, kappa 0.5-0.9, linear and tanh inputs,
both costs, tolerances of 0, 1 and 5 steps).

## Tests

`olang test board/engine.olang` (in `make test`). Besides the engine's own checks (tables, one neuron against the
bisected root, equilibria, nudged phases, a lesson, refusals, spiking rates against the analytic rate), these decide
acceptance:

- **board.olang bit for bit** (the parity tests import `board` and `circuit`, so they go with them in C3): a system and
  the circuit made from it give the same image, the same settles of the free and both nudged phases, the same lesson,
  the same golden vectors - rate and spiking, two readout groups, XOR taught for 400 lessons with the weights pushed to
  both engines after every step (the images are identical after every lesson), spiking XOR for 40.
- **Golden digests** (`digest`): the sha256 of the image of three scenarios (cross-entropy with tanh inputs, squared
  error with linear inputs, a spiking settle and lesson); the parity test shows board.olang's own dumps have the same
  digests, so after C3 the digests carry the golden vectors.
- **MNIST through the board** (M11, only when `make data` has fetched it): a certified 784-128-10 at T = 0.25 taught for
  three epochs by dyn's equilibrium propagation (`learn.Learner`, F32, Adam 1e-3, beta 0.5, restrained to the certified
  set after every step), lowered, the test set answered by the engine: 90.05 / 91.07 / 91.06% after epochs 1 / 2 / 3,
  the same as dyn's F32 settles (answers agreeing on 99.99-100%), 3.9-4.0 sweeps a settle (taught in circuit before
  dyn's rules landed: 90.05 / 91.02 / 91.09%).

Allocation-free, pinned while compiling (S17a, G42; `assert not f.Allocates`): a sweep's totals (plain and nudged), its
residual and step, a settle's constants, a settle (`relax`), a run of sweeps, a spiking time step and a window's end,
cold and warm starts, nudging, pushing a batch in and reading a phase's state back. `Lower`, `Load` and the bound
allocate (the processing system's side, once per learning step).

## Not built

- Learning rules: the contrast, the optimizer and `Restrain` are dyn's (`dyn/learn`, B2b); `Lesson` settles the three
  phases on the engine and stores them back for it. board.olang's `Teach` took circuit's contrast.
- `StoreParams` into a tiled or low-rank block (no stored form to write the board's weights into).
- dyn's `Budget.Damping`: the engine damps as the board does, by halving the step over `Attempts` parts of the budget.
- A hardware engine; the PYNQ-Z2 overlay waits for an FPGA toolchain.

board.olang stays until C3 (every test above that imports it is then replaced by the digests).
