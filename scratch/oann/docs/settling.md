# Settling networks in oann

A settling network is a network of reciprocally connected regions whose neuron potentials iterate to an equilibrium.
The answer to an input is the fixed point the potentials settle to, or a refusal when they do not settle. It learns
from local rules that contrast two settlings instead of differentiating through the iterations; reward arrives as one
broadcast scalar; a fast memory and a persistent memory sit beside the weights; an arousal signal decides when
learning and memory writes happen at all; and an offline phase consolidates what the fast memory holds into slow
weights. This document (1) states the model - equations, convergence conditions and costs, (2) designs how oann
supports it beside its backprop graph (DESIGN.md), (3) lists what the matrix library and olang must provide, (4) maps
it onto the target board (PYNQ-Z2), (5) says how it is validated, and (6) records the decisions taken and the questions
still open.

**Provenance.** The model is assembled from published work, cited where each mechanism is introduced and listed under
References: Hopfield-style graded-response relaxation, equilibrium propagation and its centered variant,
eligibility traces with temporal-difference learning, reward-modulated three-factor rules, delta-rule associative
memory, complementary learning systems, and neuromodulator-gated plasticity. Each constant is a value from that
literature, a value derived here from a stated condition, or oann's own choice, and which of the three is said where
it is introduced. All are defaults for the tests of section 5 to tune,
not measured optima. Figures marked *planning* are estimates from the arithmetic shown, to be replaced by
measurement.

---

## 1. The model

### 1.1 Parts and sources

| part | computation | learning | sources |
|---|---|---|---|
| **Settling circuit** | rate neurons relax to a fixed point over a directed graph of regions | contrasts of free and nudged phases (equilibrium propagation) | Hopfield 1984; Scellier & Bengio 2017; Laborieux et al. 2021 |
| **Agent** (a life) | one circuit plus a context trace, a fast/persistent associative memory and an arousal law, acting continuously | the above with reward: eligibility traces, a critic, a broadcast TD error; memory writes; all gated by arousal | Sutton & Barto 2018; Barto, Sutton & Anderson 1983; Izhikevich 2007; Frémaux & Gerstner 2016; McClelland et al. 1995; Pearce & Hall 1980 |
| **Consolidator** (sleep) | a gated linear recurrent cell with a sparse-code store | slow weights by backpropagation through time; store by delta rule; offline replay | Marr 1969; Albus 1971; McClelland et al. 1995; Robins 1995 |

Sections 1.2-1.8 and 1.10 describe the first two rows, 1.9 the third.

### 1.2 The neuron and the settle (Hopfield 1984; Scellier & Bengio 2017)

Each neuron `i` has a potential `v[i]` and an activation `s[i] = rho(v[i])`. The continuous dynamics are a leaky
integrator, `dv/dt = -v + total`, stepped by forward Euler with `dt` in `(0, 1]`; for every neuron at once:

```text
total[i] = sum_{e: post[e]=i} W[e] s[pre[e]]  +  d[i]  +  b[i]   (+ nudge[i] in a nudged phase)
v[i]    <- v[i] + dt (total[i] - v[i])
s[i]     = rho(v[i])
```

`W[e]` is the weight of synapse `e`, `b` a bias, and `d` the drive: the observation on an input neuron, a memory read on
a readout neuron. A drive is added to the total, it does not clamp the potential. `dt = 1` is plain fixed-point
iteration `v <- total` (a synchronous Hopfield update) and has the smallest contraction rate (below); it is oann's
default, with `dt` halved when damping is needed.

**Activation.** oann's default is `rho = tanh` (Hopfield's graded response; rest at 0, slope at most 1, smooth, so the
learning theorems below apply without a kink). The neuron model is a closed enum: the hard sigmoid `clip(v, 0, 1)` of
Scellier & Bengio is the second member, and a linear `rho(v) = v` exists for tests, where the equilibrium has a closed
form.

**What "settled" means.** The residual is `r = total - v`, evaluated at the state and including the nudge of a nudged
phase. A state **qualifies** when `max_i |r[i]| <= tau` in every batch row. A small movement of the activation is not a
certificate - saturation can stall movement while the residual is large. A settle advances all rows together and has a
sweep budget. An answer that does not qualify within the budget is a **refusal**: nothing is committed and no action is
issued. Damping splits the budget into attempts with `dt` halved each time, always testing the undamped residual; it
changes the path, not the fixed points, and it removes oscillation (a period-2 cycle of the undamped iteration). It
cannot create an equilibrium that does not exist, and an equilibrium that is unstable for the continuous dynamics never
attracts however small `dt` is.

**When it converges** (the contraction argument). Let `L = max rho'` (1 for `tanh` and the hard sigmoid), `rho_W` the
largest absolute incoming weight sum of any neuron (its **incoming mass**, counting every recurrent block that feeds
it - a block whose source is an input region is folded into the constant `c`, and a constant does not enter the
map's Lipschitz constant; *decided at implementation*, section 6), and `kappa = L rho_W` the feedback gain. If
`kappa < 1` the map `T(v) = c + W rho(v)` is a contraction in the sup norm, so there is one equilibrium `v*`, and:

```text
step rate             q = 1 - dt (1 - kappa)                 (q = kappa at dt = 1)
residual              ||r_k|| <= q^k ||r_0||
distance to v*        ||v_k - v*|| <= q^k / (1 - q) ||v_1 - v_0||
at the stopping rule  ||v - v*|| <= tau / (1 - kappa)         (from ||v - v*|| <= ||r|| + kappa ||v - v*||)
sweeps to tolerance   k >= ln(tau / ||r_0||) / ln q
```

For a cold start (`||r_0|| ~ 1`) and `tau = 1e-3`, the bound gives:

| `q` | 0.5 | 0.7 | 0.8 | 0.9 | 0.95 |
|---|---|---|---|---|---|
| sweeps | 10 | 20 | 31 | 66 | 135 |

A warm start (the previous equilibrium under a changed drive) begins with a smaller `r_0` and saves
`ln(1/||r_0||) / ln(1/q)` sweeps. The condition is sufficient, not necessary: a trained circuit may leave the certified
region (`kappa >= 1`), and then only the residual test and the refusal remain. Since `rho_W < 1` bounds every single
recurrent weight, a certified circuit has `|W[e]| < 1` on every recurrent synapse - a fact the hardware mapping uses
(section 4); the folded input blocks are not bounded by the certificate, so the board's range argument (4.2) needs
its own treatment of them - *decided in phase 3* (2.12, decision 34): a folded block too large for 16 bits is stored
scaled by a power of two, and a constant beyond the potentials' range saturates, which a `tanh` or hard-sigmoid neuron's
activity does not notice.

**A nudged phase** adds the force's own feedback. The force `beta f(s)` on a readout neuron falls as its activity
rises - by `p (1 - p) / T <= 1 / (4 T)` per unit of `s` for the cross-entropy force, by 1 for the squared error - so a
phase nudged with `beta > 0` has a negative self-feedback of up to `beta lambda` (`lambda = 1 / (4 T)` or 1) beside
the circuit's gain. At a full step it overshoots: the sweep's Jacobian gets diagonal entries down to `-beta lambda`,
and where `beta lambda` nears 1 the iteration swings in a period-2 cycle (measured: at `beta = 0.5`, `T = 0.25` a
plus phase took 627 sweeps at `dt = 1` and 27 at `dt = 0.75`). *Decided at implementation*: a phase nudged with
`beta > 0` steps at `dt_beta = dt / (1 + beta lambda)`, which keeps every diagonal entry of the sweep's Jacobian
nonnegative; the nudge then only damps, and the sweep contracts at `q_beta = 1 - dt_beta (1 - kappa)` - exactly for
the squared error (checked), and for the cross-entropy up to the force's off-diagonal terms, which cancel its diagonal
ones while the readout's slopes `rho'` are equal and add at most `beta (1 - rho') / (4 T)` otherwise. A phase nudged
with `beta < 0` pushes away from the target, a positive self-feedback, and keeps `dt`.

**Energy** (Hopfield 1984). With symmetric effective weights, no adaptation and a monotone `rho`, the continuous
dynamics descend

```text
E(v) = sum_i int_0^{v_i} u rho'(u) du  -  1/2 sum_{i,j} W_ij s_i s_j  -  sum_i h_i s_i          h = d + b
dE/dv_i = -rho'(v_i) r_i             so       dE/dt = -sum_i rho'(v_i) r_i^2  <=  0
```

(inputs from one-way projections belong to `h`). Equilibria with `rho' > 0` are exactly the stationary points of `E`.
This is the continuous Hopfield energy that equilibrium propagation builds on; symmetry is what makes the learning
rule of 1.4 a gradient.

**Wiring as blocks.** Neurons are numbered contiguously by region; every ordered pair of regions with synapses is one
dense block `[post, pre]`, and transport is the sum of block products. A reciprocal projection stores **one** weight
per pair and reads it in both directions (`s_pre W^T` into post, `s_post W` into pre), which is what keeps the weights
symmetric by construction. A block whose source region receives nothing (an input region) is evaluated once per settle
and folded into a constant. Large sparse circuits use CSR or a segmented sum instead of dense blocks.

### 1.3 Circuits: regions and projections

A circuit is a set of **regions** with roles - **input** (no inbound synapses; driven by data, a context trace or a
memory), **hidden**, and **readout** (nudged in learning, read as an action or a class; it may be split into groups,
each with its own softmax) - and **projections** between them: one-way or reciprocal, dense or masked by a
connectivity density (or given as a list of synapses, a wiring diagram), stored as dense blocks or as compressed sparse
rows, each with an optional frozen flag. A reciprocal projection from a region to itself is a symmetric lateral block.

**Initialization.** Weights are drawn Glorot-uniform (Glorot & Bengio 2010) from a seeded generator and then
**certified**: all recurrent weights are multiplied by one factor so that the largest incoming mass equals the target
`kappa_0`. oann's default is `kappa_0 = 0.9`, which by the table above bounds a cold settle at about 70 sweeps (at the
default tolerances of 1.10). A Glorot draw is not certified by itself - its incoming mass grows like the square root of
the fan-in - so the factor shrinks wide layers. Training may optionally project back into the certified set after each
step (scaling a block by the factor its worst neuron needs, which keeps a reciprocal pair symmetric); it is off by
default for supervised training and on whenever a circuit is deployed on the board.

**Sizes** are not fixed by the model; 1.10 lists the classes oann plans for.

### 1.4 Supervised learning: free and nudged phases (Scellier & Bengio 2017; Laborieux et al. 2021)

Equilibrium propagation trains the symmetric energy model of 1.2 with two settlings of the same circuit. Add a cost `C`
on the readout to the energy, `E_beta = E + beta C`, so that a nudged phase has the extra force `-beta dC/ds` on the
readout:

1. **Free phase**: settle under the stimulus; the state is `s0`.
2. **Nudged phases**, both from `s0`: settle with `nudge = +beta f` to `s+`, and with `nudge = -beta f` to `s-` (the
   **centered** estimate), where `f = -dC/ds` evaluated at the current state.
3. **Update**, every synapse from its own two neurons and every neuron from itself, averaged over the batch rows:

```text
contrast[e] = mean_b ( s+[pre] s+[post] - s-[pre] s-[post] ) / (2 beta)
            = mean_b ( s+[pre] (s+[post] - s-[post]) + (s+[pre] - s-[pre]) s-[post] ) / (2 beta)    (computed form)
bias[i]     = mean_b ( s+[i] - s-[i] ) / (2 beta)
G           = -contrast                                       the gradient estimate handed to the optimizer
```

The computed form is a rank-2 update that never subtracts two large products, which matters in low precision. The
uncentered rule of Scellier & Bengio (2017) uses `s0` in place of `s-` and `beta` in place of `2 beta`. A reciprocal pair
stored once receives one contrast. A frozen synapse is skipped.

**The cost and its force.** For classification oann uses the softmax cross-entropy of the scaled readout,
`C = T CE(softmax(s_out / T), y)`, per group; its force is

```text
f = y - p,        p = softmax(s_out / T)
```

(derivation: `dC/ds_i = p_i - y_i`). `T` is a logit temperature: the readout activation lies in `(-1, 1)`, so a softmax
needs a gain to be able to approach certainty. Derived default: **`T = 0.25`**, for which saturated outputs
(`s = +-1`) give the right class a probability of at least 0.99 among up to about 30 classes
(`1 / (1 + 29 e^{-2/T}) = 0.990`). A squared-error cost `1/2 ||s_out - y||^2` with force `y - s_out` (the cost used by
Scellier & Bengio 2017) is available and needs no softmax.

**Why it is a gradient.** On a smooth stable branch with symmetric weights and converged phases, the contrast tends to
minus the gradient of the cost at the free fixed point as `beta -> 0` (Scellier & Bengio 2017, theorem 1; with
`dE/dW = -s_pre s_post` for a pair stored once and `dE/db = -s`). The centered estimate has bias `O(beta^2)` (Laborieux
et al. 2021); phases solved only to residual `tau` add an error of order `eps / beta`, where `eps <= tau / (1 - kappa)`
is the distance to the equilibrium. Setting the phase-error term at most equal to the bias term, `eps <= beta^3`, gives
the training tolerance rule used here:

```text
tau_lesson = max( beta^3 (1 - kappa) / 10 ,  100 u )          u = unit roundoff of T
```

(the factor 10 is oann's margin, the floor keeps the target above rounding noise).

**Defaults.** `beta = 0.5` for training (the equilibrium propagation papers use nudging strengths between roughly 0.1
and 1; a larger `beta` clears rounding noise and shortens the nudged phases, a smaller one lowers the `beta^2` bias),
and small `beta` (1e-3) only in gradient checks, where `tau` follows the rule above. The step is taken by any oann
optimizer on the gradient region; oann's default is Adam (Kingma & Ba 2015) at `lr = 1e-3`, `(0.9, 0.999)`, from
DESIGN.md section 5. A nudged phase starts from `s0` and its initial residual is at most `beta`, so it needs about
`ln(tau / beta) / ln q_beta` sweeps, at the nudged step of 1.2 (`q_beta = 0.933` at `beta = 0.5`, `T = 0.25`,
`kappa = 0.9`: 86 sweeps at the lesson tolerance).

### 1.5 Reward learning: three factors (Barto, Sutton & Anderson 1983; Williams 1992; Izhikevich 2007; Frémaux & Gerstner 2016)

Learning from an outcome that arrives after the action needs a third factor beside the two neurons' activities: a
broadcast scalar, here the TD error. oann composes the contrast of 1.4 with eligibility traces and a critic.

**Acting.** Settle freely; the policy is `pi = softmax(s_out / T)` per readout group; sample an action `a ~ pi`; then
run the two nudged phases with the target `y = onehot(a)` and `+-beta`. Because the nudge force is the cross-entropy
force, the contrast of the taken action is, by the same theorem,

```text
contrast[e]  ~=  T  d log pi(a) / d W[e]                 (oann's derivation: C = -T log pi(a))
```

the temperature-scaled policy score. Sampling and nudging use the same `T`, which keeps the estimate on-policy.

**Learning**, when the outcome arrives:

```text
e[w]    <- gamma lam e[w] + contrast[w]                  per synapse and bias, per stream (an eligibility trace)
V(x)     = w_c . phi(x) + b_c                            a linear critic on phi = the activations of the hidden regions
delta    = r + gamma V(x') - V(x)                        x' = the next free settle, warm, under the updated drive
delta    = clip(delta, -1, 1)
G        = -delta e                                      handed to the optimizer: the actor step
z       <- gamma lam z + [phi(x), 1]
w_c, b_c += alpha_c delta z / (1 + ||[phi(x), 1]||^2)    TD(lambda) for the critic, normalized (Widrow-Hoff)
```

This is a local actor-critic: the actor's update is the policy-gradient estimator `(r - baseline) grad log pi`
(Williams 1992) with a TD baseline and eligibility traces (Sutton 1988; Sutton & Barto 2018), written as the
three-factor rule "presynaptic x postsynaptic contrast, gated by a broadcast error" (Frémaux & Gerstner 2016). The
trace is a full per-synapse array per stream.

**Defaults.** `gamma = 0.99` (the common deep-RL value, Mnih et al. 2015), `lam = 0.9` (the order used in Sutton and
Barto's examples), rewards scaled to `[-1, 1]` and `delta` clipped there (reward clipping, Mnih et al. 2015),
`alpha_c = 0.1`. The trace decays by `gamma lam = 0.891` per moment, so a moment's contribution falls below 1e-3 after
`ln(1e-3) / ln(0.891) = 60` moments. The critic's step is far larger than the actor's Adam step, matching the
two-timescale recipe in which the critic tracks faster than the actor moves (Konda & Tsitsiklis 2000).

**Cautions** (failure modes to test for): *saturation* - a readout unit on its rail has `rho' ~ 0`, a nudge cannot
move it, the contrast vanishes and learning stalls (certification keeps units off the rails at initialization, and `T`
is chosen so certainty does not require saturation); *temperature against the activation range* (the derivation of `T`
above); *a critic that does not track* - `delta` then carries critic noise into every actor step.

### 1.6 Memories

- **Context trace** (Elman 1990): after each action, `tr <- (1 - a_tr) tr + a_tr s_hidden`, and the next moment's drive
  on the context input region is `kappa_tr tr`. Short-term memory as a stimulus, cleared by a reset. oann's defaults:
  `a_tr = 0.3` (a time constant of about three moments) and `kappa_tr = 1` (the same scale as other drives, so a
  unit-range state gives a unit-range drive). A strong trace can pin a policy; the end-to-end tests of 5.5 include a
  task that detects it.
- **Graph plasticity**: the weights and biases of 1.4 and 1.5.
- **Fast and persistent associative memory** (linear associator and delta rule: Kohonen 1972, Anderson 1972, Widrow &
  Hoff 1960; two stores of different speed: complementary learning systems, McClelland et al. 1995; episodic value
  memory: Blundell et al. 2016). The key is the observation `k` (a row vector, unit-normalized), the value is an
  action-value vector; a persistent matrix `C` is shared and a fast matrix `F` fades, both `keys x actions`:

```text
F    <- phi F                                              fast decay
C    <- C + min(1, c_0 (1 + |delta|)) k^T (v - k C)        persistent: slow delta rule, weighted by surprise
F    <- F + k^T (v - k (C + F))                            fast: one-shot, the read at k becomes v at once
read: drive[readout] += g k (C + F)                        a linear drive into the settle
```

  The value written is the reward at the chosen action's component, the error masked to that component. For a unit key
  and rate 1, the read after a write returns `v` exactly (`k k^T = 1`); orthogonal keys do not interfere and
  overlapping keys interfere by `dot(q, k)`; repeated writes move `C` toward `v` geometrically, as
  `(1 - c')^n`. Surprise-weighted consolidation follows the finding that arousal strengthens the consolidation of what
  caused it (McGaugh 2004). Defaults (oann's): `phi = 0.95` (a half-life of 13.5 moments), `c_0 = 0.02`, `g = 1` -
  *`c_0 = 0.2` as built*, tuned on the tasks of 5.5 (decision 21). This is the online consolidation; sleep (1.9) is the
  slower, offline one. *As built*, the fast decay is kept pending (one number, folded in at the next write), so a moment
  that writes nothing touches neither matrix (5.3.4). *In a consolidating agent (phase 10, decision 77)* the read leaves
  the readout: the consolidator's recall drives it alone, at gain 2.
- **Pattern completion** (auto-association: Kohonen 1972, Anderson 1972; the hippocampus's completion of partial cues,
  McClelland et al. 1995): a correlation-matrix memory of whole observations, `M <- M + eta (x x^T - M)`, completes an
  observation whose numbers `u` are missing from the known ones `o` by the conditional mean
  `x_u = M_uo (M_oo + nu I)^-1 x_o` - the agent is told which numbers are missing. *As built in phase 10* (2.16).
- **Sparse-code store** (Marr 1969; Albus 1971; Kanerva 1988): a cerebellum-style associative memory used by the
  consolidator (1.9). A reading minus its running mean `x~` is projected by a fixed random matrix `R` onto `N` cells,
  the `k` strongest are kept, rectified and unit-normalized into a code; one table `T` per predicted field is read as
  `y = code T` and written by the delta rule at the active rows only:

```text
z     = R x~ ,   R entries N(0, 1/n)                       fixed, regenerable from a seed
code  = unit( relu( top_k(z) ) )
read:   y = code T
write:  T[idx] += rate code[idx]^T (target - y)              idx = the k active cells
```

  With a unit code and `rate = 1` a write stores its target exactly; for noisy targets a smaller rate averages over
  about `1 / rate` visits (the delta rule is stable for `0 < rate < 2`). Defaults (oann's): expansion `N = 20 n` and
  about 5% active cells, following the sparse expansion of the fly olfactory circuit (Dasgupta et al. 2017).

### 1.7 Arousal: the gate on learning and memory writes

Two broadcast scalars play the neuromodulator roles: the TD error `delta` of 1.5 (dopamine; Schultz et al. 1997) and an
**arousal level**, a leaky running measure of unexpectedness and disappointment (associability tracks the size of
recent prediction errors: Pearce & Hall 1980; norepinephrine as a signal of unexpected uncertainty and adaptive gain:
Yu & Dayan 2005, Aston-Jones & Cohen 2005; neuromodulators as controllers of learning parameters: Doya 2002). Computed
per outcome of the preceding action, with `delta` the TD error against the forecast made before acting:

```text
u_bar <- u_bar + alpha_s (|delta| - u_bar)                  running scale of the error (slow)
u      = |delta| / (u_bar + eps_u)                           relative surprise: about 1 on average, much more after a change
r_f   <- r_f + alpha_f (r - r_f) ,  r_s <- r_s + alpha_s (r - r_s)       recent and long-run reward
sig   <- sig + alpha_s (|r - r_s| - sig)                     reward spread
want   = clip( (r_s - r_f) / (sig + eps_u) , 0, 1 )          recent reward below its long-run level: disappointment
level <- level + alpha_f (u + want - level)
aroused = (t < t_0)  or  (level >= theta)
```

Defaults (oann's; none from the cited papers): `alpha_s = 0.01`, `alpha_f = 0.1` (windows of about 100 and 10 moments),
`eps_u = 1e-3` (rewards are scaled to `[-1, 1]`), `t_0 = 1 / alpha_s = 100` moments (a critical period, until `u_bar` is
established), and `theta = 2`: when nothing is unusual `E[u] ~ 1` by construction of `u_bar`, so `level` hovers near 1 and
`theta = 2` asks for errors twice the usual (or a full unit of disappointment). The `want` term is oann's own addition.
*As built, tuned on the tasks of 5.5 (decision 21)*: `alpha_s = 0.003` and `theta = 1.5` (`t_0` stays 100). With the
values above an agent in a noisy bandit turned calm for good at the end of its critical period, while its policy was
still poor, and after a reversal was aroused for about 14 moments before disappointment habituated - too few for its
learners to relearn. A slower long-run level keeps a lasting drop disappointing for longer.

A **calm** moment is one qualified settle and a greedy answer: no nudged phases, no learning, no memory write; the
eligibility trace only decays. An **aroused** moment samples from the policy, runs the nudged phases, keeps its
eligibility, learns from the outcome and writes memory (gating plasticity on neuromodulatory state: Bear & Singer
1986 is the classic case; Frémaux & Gerstner 2016 call it the third factor). Calm is cheap; aroused costs about three
settles and a learning pass (1.10).

### 1.8 One moment of an agent's life

```text
step(obs, reward):                                          one call per moment
  obs <- obs completed where numbers are missing           (phase 10: Perceive)
  drive <- obs, context trace, memory read                 written in place
  settle free (warm) -> x', V(x')                          qualified at the life tolerance, or refuse
  delta = reward + gamma V(x') - V(x_prev)                 V(x') = 0 after a terminal outcome
  arousal.update(delta, reward)
  if the previous moment was aroused:                      it recorded its contrast
      memory.write(key_prev, action_prev, reward, |delta|)
      e <- gamma lam e + contrast_prev ;  actor step from delta e ;  critic step
      settle again, warm (the weights moved a little)
  else:
      e <- gamma lam e                                     lazily
  if aroused now:  a ~ softmax(s_out / T), nudged phases +beta and -beta from x' -> contrast ; keep s+, s-
  else:            a = argmax s_out
  context <- (1 - a_tr) context + a_tr s_hidden
  return a
```

There is no training/inference switch. `Imagine(obs)` settles a supplied observation with a private copy of the trace
and changes nothing. A refused settle is transactional: no action, no write. A checkpoint carries the parameters,
optimizer moments, eligibility, traces, memories, arousal statistics, generator state and the pending action.

### 1.9 Sleep: offline consolidation (McClelland et al. 1995; Robins 1995; Hinton & Plaut 1987)

Complementary learning systems hold that a fast, sparse, high-interference store acquires experience at once and a slow
distributed learner integrates it by interleaved replay offline. oann's consolidator pairs a slow sequence model with
the sparse-code store of 1.6. The slow part is a **gated linear recurrence** - the gates depend on the input only, so
the state is linear in its predecessor (the family of QRNN-style cells, Bradbury et al. 2017; gating as in Cho et al.
2014):

```text
l = sigmoid(g + G u) ;  z = tanh(B u + b) ;  h = l h_prev + (1 - l) z        slow weights g, G, B, b
m = read( code([alpha u, rho h]) )                                            the store's read; no gradient flows through it
y = C h + c + m                                                               readout; slow weights C, c
```

`alpha` and `rho` scale the input part and the state part of the code to contribute comparably.

- **By day**, each observed moment writes the residual `y_obs - (C h + c)` into the store (one exposure, the delta rule
  of 1.6), while the slow weights learn by backpropagation through time over a window (Werbos 1990), with a
  backtracking line search on the step.
- **By night**, `Sleep(cues)` dreams every cue once (the free path, store included), freezes the dreams, and teaches the
  slow weights the cue-to-dream pairs with store writes off, for a number of passes (replay: Wilson & McNaughton 1994;
  pseudorehearsal: Robins 1995).
- **At dawn** the store is rewritten with the residual between each dream and what the slow weights alone now produce,
  so it holds only what the weights did not absorb (fast weights to deblur old memories: Hinton & Plaut 1987).

Sleep consolidates what the system produces, mistakes included; it does not correct the store's errors. The
asymmetry is deliberate and stated: the day is local (delta rule), the night is backpropagation through time. It reuses
oann's graph machinery (2.7).

*As built (phase 4, 2.13):* the slow part learns by day the observed output less the store's read, the gradient of the
whole output's loss with nothing through the store; dawn writes the residuals in passes until they read back. Two of
this section's choices proved to decide whether sleep helps at all (5.10): the slow weights' learning by day has to be
slow (it is off by default - a day of new learning that moves them far corrupts the old memories' dreams before the
night consolidates them), and the store has to separate patterns, much sparser than 1.6's 5% (0.5% of 150 cells per
number of its key) - with 5% a new task's writes land on an old one's cells and the night consolidates the
interference. Both are what complementary learning systems ask of the two learners: a slow neocortex, a hippocampus
that separates patterns.

*In an agent (phase 5, 2.14):* the agent lives its days into a consolidator - each moment that learns writes the
observation it acted on and the reward of the action it took, the only output observed - and its recall drives the
readout beside the memories'. Its store is keyed by the observation alone, since a night moves the slow part's state.
On the tasks of 5.11 the store kept the agent's answers across a change of surroundings and back; the nights added
nothing, changing the recall only at observations never seen. *Since phase 10 (2.16)* the recall drives the readout
alone, at gain 2, and the slow part's share of it at observations the store has not seen is weighed by a bet learned
from the outcomes there: `store + (f + (1 - f) Guess) slow`, `f` how much the days taught the store at the observation.

*What an agent's nights are for (phase 9, 2.15, 5.12):* the slow part's generalization, where an observation is new but
like old ones in the way a smooth learner captures and the store's sparse codes do not - a second surroundings sharing
the first's answers (its first 250 moments cost 0.030 of regret with nights, 0.050 without), observations seen through
noise (a third less regret), and, a little, points between seen ones of a smooth rule; and retention, but only for a
store whose traces fade, which without nights forgets surroundings left for others (0.145 coming back, 0.088 with
nights) - the permanent, pattern-separating store keeps them better with no nights at all (0.069). Where new
surroundings conflict with old ones the generalization is a cost (0.178 against 0.159), and nights add nothing at an
observation seen exactly, at one half missing, or to a store too small for its contexts. Complementary learning
systems' account holds wherever its premises do - a fast store that forgets, a structure for the slow learner to find
in what is new - and the agent's own store, which forgets nothing and separates patterns, already does much of the
rest.

### 1.10 Sizes, budgets and cost

**Planning classes** (oann's; the model fixes none):

| class | example | regions | weights |
|---|---|---|---|
| small agent | 16 observations, 4 actions | 16 + 64 input, 64 hidden, 4 readout | about 5 k |
| image-scale supervised | 784-128-10 | 784 input, 128 hidden, 10 readout | about 100 k |
| two hidden regions | 784-512-256-10 | 784 input, 512, 256 hidden, 10 readout | about 535 k |
| large sparse | an imported wiring diagram | CSR blocks | 10^6 and up |

**Derived defaults** (oann's, except where a source is given):

| quantity | value | basis |
|---|---|---|
| activation, `dt` | `tanh`, `dt = 1` | Hopfield 1984; smallest `q` |
| certification target | `kappa_0 = 0.9` | cold settle at most about 70 sweeps |
| lesson tolerance | `max(beta^3 (1 - kappa) / 10, 100 u)`: 1.25e-3 at `beta = 0.5`, `kappa = 0.9` | 1.4 |
| life tolerance | `T (1 - kappa) / 40`: 6.25e-4 at `kappa = 0.9` | 1.5 and below |
| sweep budget | 128 | the cold need at `kappa = 0.9` is 71 sweeps; next power of two |
| imagination tolerance | the life tolerance divided by 100 | oann's choice |

The life tolerance is derived from what the settle is used for: every logit of the policy `softmax(s_out / T)` may be off
by at most `eps`, which changes a log-probability by at most `2 eps / T`; keeping that below 5% gives `eps = T / 40`, and
`tau = eps (1 - kappa)` by the distance bound of 1.2.

**Sweeps per moment** (planning; `q = 0.9`): a cold settle `ln(tau) / ln q` - 64 sweeps at the lesson tolerance, 71 at
the life tolerance. A warm calm moment starting from a residual of 0.3 takes about 59. An aroused moment adds two nudged
phases of `ln(tau / beta) / ln q` (64 at the life tolerance) and a warm re-settle: about three times a calm moment. A
supervised lesson is 64 + 2 x 57 = 178 sweeps at the lesson tolerance (or 121 uncentered).

**Cost against backpropagation.** A sweep costs one product per direction per recurrent block, so a lesson costs
about `2 x 178 = 356` products of each recurrent block, while one-way input blocks (evaluated once per settle) cost
one product and one outer product. Per sample, in multiply-adds, with `P_in` the one-way weights and `P_rec` the
reciprocal ones: settling about `2 P_in + 356 P_rec`; backpropagation `2 P_in + 3 P_rec` (the first layer needs only a
forward and a weight-gradient product, every other layer a forward, an input-gradient and a weight-gradient product).
Examples at `q = 0.9`: 784-256-10, `P_in = 200 704`, `P_rec = 2 560`: 1.31 M against 0.41 M
(3.2x); 784-512-256-10, `P_in = 401 408`, `P_rec = 133 632`: 48 M against 1.2 M (40x). Locality is paid for in
arithmetic when the recurrent part is large, which is why the board target (section 4) matters.

**What dominates**, per moment at batch 1:

1. **The settle**: per sweep, one GEMV per recurrent block in each direction (`W s` and `W^T s` on the same block) and
   an elementwise activation pass. Small, latency-bound matvec on blocks of 64x64 to 256x512 that fit L1/L2, repeated
   some tens of times per moment, so the loop must be compiled and allocation-free.
2. **Source projections** (input to first hidden) once per settle: one GEMV over the largest block.
3. **Aroused learning**: one pass over every plastic weight - eligibility decay plus a rank-2 outer product, the
   error-weighted step, the optimizer's moments. Memory-bound: four arrays of `E` elements (weight, eligibility, two
   Adam moments); at batch `B` the contrast is a TN GEMM of rank `B`.
4. **The sparse-code store** (if used): the `n x N` projection GEMV, a top-k, a `k`-row gather and scatter.

Nothing is sparse in the default circuit except the store's codes and large sparse circuits.

---

## 2. Supporting settling networks in oann

### 2.1 Shared and new

| | oann's backprop graph (DESIGN.md) | settling circuit |
|---|---|---|
| operand | `Matrix<T>`, rows = batch (streams), columns = features (neurons) | the same: a region is a column block of `[rows, n]` |
| weights | `[out, in]`, `Linear` forward `x W^T`, backward `dy W`, `dW = dy^T x` | a reciprocal projection is **one** `[post, pre]` block used as `s_pre W^T` and `s_post W`; its contrast is `dS_post^T S+_pre + S-_post^T dS_pre` - exactly `Linear`'s three GEMM forms |
| structure | recorded DAG, `Plan()`, one arena, zero allocation per step | recorded **cyclic** wiring, `Plan()`, one arena, zero allocation per sweep and per moment |
| execution | forward once, backward once | iterate to a fixed point (data-dependent count), several phases, state persists between calls |
| learning signal | VJPs, reverse order | contrast of phases (local); eligibility x TD error (three-factor) |
| update | optimizer over the flat gradient region | **the same**: the contrast is written as a gradient estimate into the gradient region |
| shared code | kernels, `Matrix`, planner, `Rand`, initializers, optimizers, checkpoints, `ParallelRows`, gradient checks | |
| new | the settle loop and residual, the certificate, nudges, phase buffers, contrast, eligibility, critic, memories, arousal, the moment loop, the store and sleep | |

### 2.2 Decision: a second recorded structure, `Circuit<T>`, beside `Graph<T>`

A settle is not a `Graph` op: the graph's contract is one forward and one reverse pass of VJPs, while a settle iterates
an unknown number of times, keeps its state between calls (warm starts, a life), is cyclic, and learns from a contrast
with no VJP to write (backpropagating through its sweeps would be BPTT, the thing equilibrium propagation avoids).
So `Circuit<T>` is a sibling: **recorded once, planned once, replayed with zero allocation**, on the same `Matrix`,
kernels, arena discipline, initializers and optimizers. Handles are numbers, as `Var` is: `type Region I64`,
`type Projection I64`; the circuit holds a `List` of plain records and one `Array<T>` arena; the neuron model and the
cost kinds are closed enums dispatched by `match`.

The two compose in one direction cleanly: a `Graph` encoder can feed a circuit's drive, and the equilibrium-propagation
estimate supplies the gradient that encoder needs (for a free neuron, `dC/dd = dC/db = -(s+ - s-) / (2 beta)`; through
a source projection, `-(dS_post W) / (2 beta)`), so "settling inside, backprop outside" trains end to end. The
consolidator (1.9) maps onto the existing `Graph` instead: its slow weights are an unrolled recurrent cell trained by
backprop, its store a custom op whose read carries no gradient, and `Sleep` is a training run on dreams (2.7).

### 2.3 The plan and the arena

`Plan()`:

- orders regions so each is a contiguous column range of `[rows, n]`;
- lays out **parameters** (one `[post, pre]` block per projection, biases, the critic) contiguously, with **gradients**
  (the contrast), **optimizer moments** and **eligibility** (per stream row) in the same layout - one flat view each,
  as for the graph;
- lays out **state** per phase - `Free`, `Plus`, `Minus`, `Scratch` (imagination, refused attempts) - as `v` and `s`
  `[rows, n]`, **double-buffered** so a sweep reads one copy and writes the other;
- lays out **workspace**: the drive, the per-settle constant `c`, `total`, `dS = S+ - S-`, nudge targets and softmax
  probabilities, a `U8` connectivity mask for each dense projection with `density < 1` (a sparse one keeps its
  pattern instead - 2.12);
- classifies blocks: a block whose pre region is an `Input` is **folded** into the constant; the rest are recurrent;
- computes the certificate's incoming masses (absolute row and column sums of the blocks, combined per neuron) and
  derives `kappa`, `q`, the tolerance and the budget from them.

Input regions take their fixed point in closed form, `s = rho(d + b)`, once per settle - the same equilibrium as
relaxing them, in fewer sweeps (the trajectory differs, the equilibrium does not).

### 2.4 The settle loop: no allocation, one transport per sweep

```text
once per settle:  c = d + b + sum_{folded blocks} s_in W^T             (GEMV over the source projections)
per sweep k:      total = c + sum_{recurrent blocks} [s_pre W^T into post ; s_post W into pre if reciprocal]
                  total += nudge(s_k) on readout groups
                  r = total - v_k,   res[row] = max |r|                   (the residual of state k, for free)
                  if every res <= tol: state k qualifies; stop
                  v_{k+1} = v_k + dt r,  s_{k+1} = rho(v_{k+1})          (into the other buffer)
```

Because the residual of state `k` is a by-product of computing step `k+1`, every sweep is checked at no extra
transport, and the qualified state is the one returned. Where a reduction per sweep is costly on a host, checking
every `chunk` sweeps (one extra transport) is a parameter. Damping halves `dt` over portions of the same budget.
Finite phases (`Run(phase, sweeps)`) skip the check and report the final residual. All rows advance together;
per-row residuals are reported. A refused settle leaves the committed phases untouched because it ran in the double
buffer. At batch 1, the recurrent GEMVs read contiguous rows of the `[post, pre]` block in both directions (row dots
for `W^T`, row axpys for `W`), so both vectorize.

### 2.5 Learning as planned passes

- **Contrast** (batch `B`): `dS = S+ - S-` once; per plastic block two TN GEMMs into the gradient region,
  `G = -(dS_post^T S+_pre + S-_post^T dS_pre) / (2 beta B)`, masked by connectivity; biases `-ColumnSums(dS) / (2 beta B)`.
  Reciprocal blocks need nothing more. Then any oann optimizer steps the parameter region, followed by the optional
  projection into the certified set (1.3).
- **Eligibility and the TD error** (batch 1): at act time keep `s+` and `s-` (vectors); at learn time, **one fused pass
  per plastic block**: `E = gl E + (d_post s+_pre^T + s-_post d_pre^T) / (2 beta)` then `G = -delta E` - a decayed
  rank-2 update and a scale, reading and writing `E` once. Calm moments only decay `E`; this is kept lazy - a scalar
  multiplier on `E`, folded in at the next aroused moment - so **a calm moment touches no synapse**. A truncated
  trace (the last 60 moments, each a rank-2 term, so rank 120) replaces the `E`-sized array by `120 (m + n)` numbers per
  block; it saves memory only when `120 (m + n) < m n`.
- **Critic**: a dot for `V`, an axpy for its update.
- **Gradient checks** (F64): section 5.2.

### 2.6 The agent: memories, arousal, and the moment loop

`Agent<T>` composes a circuit with a critic, a `Trace`, a `Memory` (the fast and persistent matrices) and an `Arousal`,
each a struct allocated once (the memory's `C` and `F` are small `Matrix` values). The moment loop is 1.8, as
straight-line olang over planned buffers: the drive is written in place (observation, the trace, the memory read
`k (C + F)`), and every step after is a kernel call on views. Nothing allocates per moment; independent lives run as
`spawn`ed tasks, each with its own arena (at these sizes threads inside one settle cost more than they save: a cached
spawn is about 10 us, a 64x64 GEMV about 0.1 us). Refusal is an error (`NotSettled`), and transactional: candidate
states live in `Scratch` or the double buffer, and candidate parameter steps are applied only after every phase
succeeded. Checkpoints write the parameter region, moments, eligibility, traces, memories, arousal statistics,
generator state and the pending action (safetensors plus a metadata block, DESIGN section 10).

### 2.7 The store and sleep (later phases)

The sparse-code store needs a top-k, a gather-weighted read and a `k`-row write (section 3); its projection is stored
on a CPU (on an FPGA it can be regenerated from the seed instead, section 4). *Built in phase 3* (`store.olang`, 2.12);
the consolidator and sleep are phase 4. The consolidator is a `Graph` model (the
recurrent cell unrolled over a window, BPTT) with the store as a `Custom` op; `Sleep` is: dream the cues (forward with
the store), freeze the dreams, train the slow weights on them with the store excluded, rewrite the store. *Built in
phase 4* (`consolidator.olang`, 2.13) - with no `Custom` op: nothing flows back through the store's read, so it enters
as a shift of the slow part's target rather than as a node of the graph (decision 53).

### 2.8 API sketch (olang)

An agent living one stream - as built (`agent.olang`, `examples/bandit_settle.olang`):

```olang
import "agent"          # oann's modules, by path relative to the importing file (DESIGN section 12)
import "circuit"
import "std/io"

fn main() ? circuit.NotSettled + io.IoError {
    s := agent.Settings()                          # defaults; set fields to change them
    a := agent.Agent<F32>(16, 4, I64[64], 7, s)    # 16 observation inputs, 4 actions, one hidden region of 64, seed 7
    world := ContextBandit(1)
    obs := Array<F32>(16)
    world.Observe(obs)
    action := try a.Begin(obs)                     # the first moment has no reward to report
    for moment in range 600 {
        reward := world.Act(action)                # execute, measure
        world.Observe(obs)
        action = try a.Step(obs, reward, true)     # learn from it if the last moment was aroused, then choose again
    }
    try io.Print("calm " $(a.Calm) " aroused " $(a.Aroused) " sweeps " $(a.Sweeps) "\n")
}
```

A custom circuit taught by contrast, batch 32 - as built (`circuit.olang`, `examples/mnist_settle.olang`):

```olang
c := circuit.Circuit<F32>(32)                                # rows (the batch)
pixels := c.Input(784)                                       # linear by default: the drive is the activity
hidden := c.Hidden(128)                                      # tanh by default
digits := c.Readout(10)                                      # one softmax group, CrossEntropy(T = 0.25)
c.Project(pixels, hidden, circuit.Wiring.OneWay)
c.Project(hidden, digits)                                    # Reciprocal by default
c.Plan(r)                                                    # lays out the arena, draws Glorot-uniform weights
c.Certify(0.9)                                               # scale the recurrent blocks to a gain of 0.9
opt := circuit.Adam<F32>(c, 1e-3)
lesson := circuit.Lesson(0.5)                                # beta; tolerance and budget come from the certificate
for b in range train.Batches() {
    n := train.Fill(b, c.DriveData(pixels), c.LabelData(digits))
    try c.Teach(n, lesson)                                   # free, +beta, -beta, contrast into the gradient region
    opt.Step(c)
}
```

The core surface, as built:

```olang
type Phase enum { Free  Plus  Minus  Scratch }               # one per line in the source
type Rho enum { Tanh  HardSigmoid  Linear  LifRate(leak F64, threshold F64) }
type Neuron enum { Rate(rho Rho)  Lif(leak F64, threshold F64, synapse F64, window I64) }
type Cost enum { CrossEntropy(temperature F64)  Squared }
type Wiring enum { OneWay  Reciprocal }
error NotSettled { BUDGET  NONFINITE }

fn (c mut Circuit<<T>>&) Input(size I64, model Neuron = Neuron.Rate(Rho.Linear)) Region
fn (c mut Circuit<<T>>&) Hidden(size I64, model Neuron = Neuron.Rate(Rho.Tanh)) Region
fn (c mut Circuit<<T>>&) Readout(size I64, fit Cost = Cost.CrossEntropy(0.25), model Neuron = ..., groups I64 = 1) Region
fn (c mut Circuit<<T>>&) Project(pre Region, post Region, kind Wiring = Reciprocal, density F64 = 1, frozen Bool = false,
        store Layout = Layout.Auto) Projection                              # Layout: Auto, Dense, Sparse (phase 3)
fn (c mut Circuit<<T>>&) ProjectWired(pre Region, post Region, posts Array<I32>&, pres Array<I32>&, kind Wiring = Reciprocal,
        frozen Bool = false, store Layout = Layout.Auto) Projection         # a given wiring (phase 3)
fn (c Circuit<<T>>&) SparseWeights(p Projection) sparse.Csr<T>             # a sparse projection's synapses (phase 3)
fn (c mut Circuit<<T>>&) Plan(r mut rand.Rand&)
fn (c mut Circuit<<T>>&) Settle(p Phase, budget I64, tolerance F64) Settlement ? NotSettled  # qualified, warm
fn (c mut Circuit<<T>>&) Run(p Phase, sweeps I64) Settlement               # finite phase, residual reported
fn (c mut Circuit<<T>>&) Warm(p Phase, from Phase)                         # a nudged phase starts from the free state
fn (c mut Circuit<<T>>&) Nudge(p Phase, beta F64)                          # every readout, by its Cost
fn (c mut Circuit<<T>>&) Residual(p Phase, out mut Array<<T>>&) F64        # per row, no settling
fn (c mut Circuit<<T>>&) Totals(p Phase) linalg.Matrix<<T>>                # every neuron's total input
fn (c mut Circuit<<T>>&) Contrast(beta F64, centered Bool = true)          # Plus/Minus -> gradient region
fn (c mut Circuit<<T>>&) Teach(n I64, l Lesson) I64 ? NotSettled           # free, +beta, -beta, contrast
fn (c mut Circuit<<T>>&) DriveGrad(reg Region, out mut Array<<T>>&, beta F64, centered Bool = true)
fn (c mut Circuit<<T>>&) Gain() F64                                        # kappa
fn (c mut Circuit<<T>>&) Rate(beta F64 = 0) F64                            # q (of a phase nudged with beta), or 1
fn (c mut Circuit<<T>>&) Certify(target F64 = 0.9)                         # one factor on every recurrent block
fn (c mut Circuit<<T>>&) Restrain(target F64 = 0.9)                        # project back into the certified set
fn (c mut Circuit<<T>>&) Energy(p Phase, row I64) F64
fn (c Circuit<<T>>&) Value(p Phase) linalg.Matrix<<T>>                     # views of state, as g.Value(v)
fn (c Circuit<<T>>&) Loss(p Phase) F64
fn (t mut Eligibility<<T>>&) Add(c mut Circuit<<T>>&, decay F64)          # also Decay(decay), Credit(c, delta)
fn (a mut Agent<<T>>&) Step(obs Array<<T>>&, reward <T>) I64 ? NotSettled   # phase 2
fn (a mut Agent<<T>>&) Imagine(obs Array<<T>>&) Settlement ? NotSettled    # phase 2: private; changes nothing
fn Board(c mut Circuit<<T>>&) board.Engine&                                # phase 3: the board's engine, simulated
fn (e mut Engine&) Teach(c mut Circuit<<T>>&, n I64, l Lesson) I64 ? NotSettled   # settles on the board, learns in c
type Store<T> struct(inputs I64, outputs I64, seed U64, ...)                # phase 3: the sparse-code store
fn (e Engine&) LifOf(region I64) Neuron                                     # phase 4: a Lif region as the board runs it
type Consolidator<T> struct(inputs I64, outputs I64, hidden I64, window I64, batch I64, seed U64,
        Config SleepSettings = SleepSettings())                             # phase 4: 1.9's slow part and store
fn (k mut Consolidator<<T>>&) Day(u Array<<T>>&, y Array<<T>>&, n I64, known Array<Bool>& = null)  # phase 4; known: 5
fn (k mut Consolidator<<T>>&) Sleep(passes I64 = 0) F64                     # phase 4: a night over every cue kept
fn (k mut Consolidator<<T>>&) Predict(u Array<<T>>&, first I64, n I64, out mut Array<<T>>&, withStore Bool = true)
fn (a mut Agent<<T>>&) Sleep(passes I64 = 0) F64                           # phase 5: Settings.Consolidate's night
```

### 2.9 Phases of work

Settling networks follow the transformer work (section 6).

1. **Done (2026-10-09, `circuit.olang`):** `Circuit` with `tanh` neurons, `Settle`/`Run`/`Residual`, the certificate,
   supervised `Teach`, and the checks of 5.1-5.2 in F64; the neuron enum with a working `Lif` variant (4.6); and, of
   phase 2, the pieces phase 1's structures made cheap: the eligibility trace (`Eligibility`, lazy and fused) and the
   checks of 5.2.4-5.2.6. Results in 2.10 and 5.7.
2. **Done (2026-10-09, `agent.olang`):** the `Agent` - critic, `Trace`, `Memory`, `Arousal`, the moment loop,
   checkpoints - with the checks of 5.3 (all but the sparse-code store, which belongs to phase 3) and the end-to-end
   tasks of 5.5. Results in 2.11 and 5.8.
3. **Done (2026-10-09, `board.olang`, `store.olang`, `sparse.olang`):** the fixed-point simulation of the board engine
   (4.2, 5.6), with lessons settled on it; the sparse-code store and the checks of 5.3.2; readout groups (circuit and
   agent); CSR projections for large circuits. Results in 2.12 and 5.9.
4. **Done (2026-10-09, `consolidator.olang`, spiking in `board.olang`), but for the overlay:** the consolidator and
   `Sleep` on the `Graph` with the checks of 5.4 and sleep measured against interference; spiking neurons on the board
   engine, validated against the floating-point ones; checkpoints that keep the generator's state; open questions 8 and
   10 measured. The PYNQ-Z2 overlay waits for an FPGA toolchain. Results in 2.13 and 5.10.
5. **Done (2026-10-10, `agent.olang`):** open question 11 - an agent may have a consolidator, its moments that learn
   writing what they observed into its store by day, its recall a drive on the readout, `Sleep` between stretches of
   life; measured on the bandit, the reversal and the retention task lived. Results in 2.14 and 5.11.

Phases 9 and 10 (2026-10-10) answered open questions 14-17 about an agent's consolidator - what its nights are for,
which memory drives its readout, partial cues, and its generalization at unfamiliar observations: 2.15-2.16 and
5.12-5.13.

### 2.10 As built: phase 1

One module, `circuit.olang`: the circuit, its neurons, learning, an Adam over its parameters, and its tests (`make
test`); `examples/xor_settle.olang`, `examples/xor_spiking.olang` and `examples/mnist_settle.olang` run it end to end.

- **Records and one arena.** Regions and projections are plain records in `List`s, their handles numbers.
  `Plan(r)` lays out one `Array<T>`: the parameters (each projection's `[post, pre]` block in recording order, then a
  bias per neuron - an input's is unused), their gradients in the same layout, each region's drive (`Rows x size`,
  contiguous, so a loader fills it as it fills a graph's input), the squared-error readouts' targets, four phases of
  two slots of state, and the workspace (the constant, the totals, spike counts, `dS`, the per-row residuals, the
  masses). Classes are an `Array<I32>`, connectivity masks an `Array<U8>`. A settle, a lesson, a contrast and an Adam
  step allocate nothing.
- **The double buffer is a transaction.** A phase has a committed slot and a candidate slot. A settle copies the
  committed state into the candidate, sweeps there in place (the totals are their own workspace, so a sweep needs no
  second copy of the state) and commits by flipping the phase's slot; a refusal leaves the committed state as it was,
  bit for bit (checked).
- **A sweep**: the totals - the constant plus each recurrent block's transport (one product for the batch's rows, a
  `Gemv` per row before olang 9621af3; a reciprocal block's two directions read the one `[post, pre]` block, as `W^T`
  and as `W`) plus the nudge; a pass for the residual of every row; on qualifying, the commit; otherwise a pass
  stepping `v += dt r`, `s = rho(v)` (`linalg.FastTanh`). The residual has its own pass so that the committed state is
  the one whose residual was measured.
- **The constant** (drives, biases, folded blocks) is made once per settle, and once per lesson: the nudged phases
  reuse the free phase's. Input regions take `v = d`, `s = rho(d)`; they have no bias, since their state does not
  differ between phases and so no contrast could teach one.
- **Damping** (`Attempts`) splits the budget into parts with `dt` halved in each, continuing from where the last part
  ended. **Nudged phases** step at `dt / (1 + beta lambda)` (1.2).
- **Budgets and tolerances**: `LessonTolerance(beta)` is 1.4's rule with `kappa` held at most 0.9, so that a circuit
  trained out of the certified region still has one; `Budget(tolerance, beta)` is twice the certified cold need
  (`q` held at most 0.95) and at least 128. Tolerances and nudges are `F64`, as std/linalg's `alpha` and `beta` are.
- **The contrast** is the rank-2 form, computed a block row at a time with four batch rows per pass over the row, so
  the row stays in the first-level cache; masked synapses and frozen blocks get 0. Checked against its definition.
- **The optimizer** is `circuit.Adam<T>` over the parameter region, Kingma and Ba's update in one pass. oann's
  `optim` steps an `nn.Graph`; a flat-region entry point there would let every oann optimizer serve both (follow-up).
- **The encoder's gradient** is `DriveGrad(region, out, beta)`, of the mean cost over the rows, so it adds to a graph's
  loss gradient directly.
- **The eligibility trace** (phase 2's first piece): `Eligibility<T>(c)` - `Decay(g)` at a calm moment multiplies one
  pending number, `Add(c, g)` folds it in while adding the contrast `Teach` left (one pass), `Credit(c, delta)` writes
  the actor's step `G = -delta E`. One stream (decision 19).
- **Spiking**: 4.6.
- **Cost, measured** (784-128-10, batch 32, F32, on a shared four-core machine, olang ef939ae): a lesson about 4.5
  ms - the folded constant 0.9 ms, about 40 sweeps over the three settles at about 70 us each, the contrast 0.7 ms,
  Adam 0.1 ms. The folded 784-wide block was then a matrix-vector product per batch row, read 32 times, as was every
  recurrent block's transport. Since olang 9621af3 each is **one product for the batch's rows** - `ws.Gemm` on a
  `linalg.GemmWorkspace` the circuit keeps, packing nothing new after the first lesson - built for this machine: an
  MNIST epoch 10.2 -> 8.1 s (medians of six interleaved runs at a load of 10-19), the first epoch's loss and accuracy
  unchanged.

### 2.11 As built: phase 2 - the agent

`agent.olang`: `Agent<T>` and its parts, each a struct of its own and checked on its own (5.3); the end-to-end tasks of
5.5 are `examples/bandit_settle.olang`.

- **Parts.** `Arousal` (1.7, plain data), `Memory<T>` (1.6: the persistent and fast `keys x actions` matrices, keys the
  unit-normalized observation, the fast decay pending), `Trace<T>` (the context trace), `Critic<T>` (1.5: linear on the
  hidden activities, its weights and trace in F64, the step normalized by `1 + |[phi, 1]|^2`), `circuit.Eligibility<T>`
  (2.5) and `optim.FlatAdamW<T>` for the actor.
- **The circuit.** The observation and the context trace are input regions, one-way into the first hidden region; the
  hidden regions are reciprocal in a chain, the last reciprocal with the readout (one neuron per action, the policy
  `softmax(s / T)`); the memories' read is the readout's drive. Certified at `kappa_0` when made.
- **The moment** (1.8) is `Step(obs, reward, terminal)`. It settles free (warm, at the life tolerance) and measures the
  TD error, clipped (`V(x_prev)` with the critic as it is now). It updates arousal. If the last moment was aroused, it
  learns: the memory write; the contrast of the nudged phases kept from then; the eligibility (`E <- gamma lambda E +
  contrast`); the actor's step on `-delta E`; the critic's step. Then it settles again on the moved weights. Otherwise
  the traces only decay (the eligibility lazily). Finally it acts: sampled, with the nudged phases at `+-beta`, when
  aroused; greedy when calm. `Begin(obs)` is the first moment. `Imagine(obs)` settles in the scratch phase and changes
  nothing.
- **Episodes.** A terminal outcome clears the eligibility and the critic's trace after learning from it. The context
  trace persists (only `Ctx.Clear()` resets it).
- **Refusals.** A refused free settle is a refused moment: no action, nothing written (`NotSettled`). A refused
  nudged phase leaves the moment acted on but with no contrast to learn from. A refused settle after learning keeps the
  state settled before it. All are counted in `Refused`.
- **One stream** (open question 5): an agent lives one stream (`B = 1`); many lives are many agents.
- **Checkpoints.** `Save(path)` / `Restore(path)` in the safetensors layout: an 8-byte header length, a JSON header,
  and every tensor as F64 (so an F32 agent's values round-trip exactly).
  - Saved: the parameters; the free state and the nudged states the next contrast reads; Adam's moments; the
    eligibility; the critic and its trace; the context trace; both memories; the last moment's observation and
    features; and the scalars (arousal's statistics, pending decays, counters, the pending action and the generator).
  - std/rand gave no access to a generator's state, so the agent owns its generator (made from a seed) and the
    checkpoint kept the seed and the count of numbers drawn; a restore replayed them, so it went into a new agent of the
    same shape, seed and settings, and the restored agent then lived exactly the saved one's moments (checked).
    *Since phase 4* (decision 48) the checkpoint keeps the generator's state (`Rand.State`, version 2): a restore needs
    no replay, so it goes into any agent of the same shape and settings - one made from another seed, or the agent that
    saved it, rolled back - and the restored agent lives exactly the saved one's moments (checked both ways).
- **The circuit is made by a function** (`circuitFor`), not recorded in the agent's constructor. A constructor
  that pushes onto a `List` of one of its own reference fields puts the list's storage in its own scope, which closes
  when it returns: a use-after-free in olang ef939ae (`repro/ctorpush.olang`). Recording the circuit in the constructor
  crashed an agent several moments later, once a loop body allocated text over the freed chunk.
- **Cost, measured.** The small agent of 1.10 (16 + 64 inputs, 64 hidden, 4 actions; 5.6 k parameters) takes about
  15 us a moment and 4-5 sweeps a moment in the bandit (warm starts, drives far from the rails): 160 000 moments in
  2.4 s.

### 2.12 As built: phase 3 - the board engine, the store, readout groups, sparse projections

Three modules and two extensions: `board.olang` (the engine of 4.2, in integers), `store.olang` (the sparse-code store
of 1.6), `sparse.olang` (CSR matrices, top-k and the store's products: section 3, items 8-10); readout groups and
sparse projections in `circuit.olang`, readout groups in `agent.olang`. `examples/mnist_board.olang` (`make board`)
teaches and answers MNIST through the engine; `bench/sparse.olang` (`make sparse`) measures sparse blocks against dense
ones. Results in 5.9; decisions 31-47.

**The board engine (`board.Engine`)** - the reference a hardware engine is checked against.

- *Data only.* The engine runs a planned rate circuit from a descriptor table (8 words per region: role, first column,
  size, activation table, fit, `1/T`, groups, where its classes start; 8 per block: the two regions' columns and sizes,
  reciprocal, folded, shift, where its weights start), the weights (`I16`), the biases (`I32` holding Q4.14), three
  tables and, per settle, the drives, classes and targets. Nothing in a settle is floating point. The header of
  `board.olang` states every format and every operation, as an HLS or RTL implementation needs them.
- *The processing system's side.* `Board(c)` makes an engine for a circuit; `Load(c)` quantizes its weights and biases
  (the push after a learning step), `Inputs(c)` its drives, classes and targets (the push before a settle), `Store(c, p)`
  reads a phase's state back into the circuit as values. `Settle`, `Run`, `Warm`, `Nudge` and `Teach` mirror the
  circuit's. The settle loop is the circuit's: qualify on every row's residual, commit or refuse (a refusal leaves the
  committed state bit for bit), damping by halving `dt` over the budget's parts, a phase nudged with `beta > 0` at
  `Dt / (1 + beta lambda)`.
- *Formats* are 4.2's, with what it left open decided: a drive, bias, constant, total and potential are Q4.14 (18 bits);
  an input region's activity is made from its Q4.14 drive by the activation unit (a linear input's is `sat16(2 d)`); a
  probability and a force are Q.16, `dt` Q.16 unsigned, `beta` Q.14 and `1/T` Q.10. A block whose largest weight does not
  fit Q1.15 - a folded block, which the certificate does not bound - is stored scaled by `2^-shift`, its sums shifted
  back as they are accumulated; a certified recurrent block has shift 0. (Decisions 31-34.)
- *Arithmetic.* Every sum of products is exact in a 48-bit accumulator (each neuron's fan-in, a synapse counted
  `2^shift` times, is checked to be at most `2^16`), so the order
  of summation changes nothing and lanes and adder trees summing in any order match the simulation bit for bit. A
  constant is rounded to Q4.14 once a settle, a total once a sweep (`(x + 2^15) >> 16`: to the nearest, halves up); the
  processing system quantizes to the nearest, ties to even. A value beyond its range saturates and is counted
  (`Saturations`, `Clipped` for constants).
- *The activation unit* is a table of 1024 segments over `[-8, 8)` - a base and a delta per segment, two 18-bit words,
  so one BRAM18 pair - interpolated linearly with an 8-bit fraction: `tanh`, and the hard sigmoid through the same
  table (exact between knots). Its largest error over all `2^18` inputs is 4.7e-5, 1.5 steps of Q1.15, within the
  derived 5.4e-5 (4.2's `h^2/8 max|tanh''|` plus the two roundings). Linear relaxing neurons and spiking circuits are not
  for this engine (decision 36; spiking circuits are, since phase 4: 2.13).
- *The cross-entropy force* takes a softmax per group every sweep: `z = (s - max s) / T` rounded to Q5.14 and clamped at
  -16, a second table for `exp` over `[-16, 0]` (largest error 4.0e-5), their sum, and one division per neuron (decision
  37). The squared error's force is a subtraction.
- *Tolerance.* The board settles to `max(floor(tau 2^14), 5)` steps of Q4.14 - 4.2's `max(tau, 3e-4)`. With `dt = 1` the
  integer iteration reaches an exact fixed point (residual 0) in about half of the fixtures; otherwise it ends in a
  cycle of a step or two, inside the floor (decision 38).
- *The bound of 5.6, made precise.* The comparison is with the circuit in exact arithmetic carrying the board's own
  values (`StoreParams`, `StoreInputs` put them back into a circuit), so it covers the engine's arithmetic alone.
  `Delta(kappa, folded, beta, T, width)` bounds the error of one evaluation of the map: the constant's and the total's
  roundings (`2^-15` each), the activation table's error through the recurrent weights (`kappa`) and, for non-linear
  inputs, through the folded ones; in a nudged phase also the nudge's rounding and `beta` times the force's error (for
  the cross-entropy the table error through the softmax, at most `1/(2T)` of it, and the exponential's error through
  `p = e / S` with `S >= 1`). A settle that qualifies at `tau_b` is then within `(tau_b + Delta + tau) / (1 - kappa)` of
  the exact equilibrium settled to `tau`, by 1.2's argument - for the free phase and the squared error exactly, for the
  cross-entropy with 1.2's caveat. The weights' own rounding is a separate term, a fan-in times `2^-16` (decision 39).
- *Learning on the board* (4.4's default): `Teach(c, n, lesson)` settles the three phases on the engine, reads their
  states back into the circuit and takes the contrast there in the circuit's precision; the circuit holds the master
  weights, an optimizer steps them, `Restrain(0.9)` keeps them certified, and `Load(c)` pushes the requantized copy
  (decision 40).
- *Golden vectors.* `Dump(path)` writes the engine's image and its last settle - descriptors, weights, biases, tables,
  inputs, every phase's committed state, the residuals - as safetensors with integer dtypes: what a testbench feeds a
  hardware engine and compares with bit for bit (decision 41).
- *Cycles.* `SweepCycles()` and `ConstantCycles()` apply 4.2's cycle model to the descriptors: 80 and 1 664 for
  784-128-10, as in 4.3's table.

**The sparse-code store (`store.Store<T>`)**, 1.6's: `Read(x, out)` and `Write(x, target)`. `R` is `Cells x Inputs`,
`N(0, 1/Inputs)`, each row drawn from a generator seeded by the store's seed and the row's number, so a row can be
made again from the seed alone (`ProjectionRow`) - the FPGA's option of 4.1. The running mean follows each write
(weight `MeanRate`, default 0.01) and a read changes nothing; a write moves the mean, codes the reading at the new mean,
reads, and writes the delta rule's step at the code's rows. Defaults: `Cells = 20 Inputs`, `K = ceil(0.05 Cells)`, `Rate
1` (decision 42). The selection is `sparse.TopK` (a quickselect, median of three, then two passes; ties to the earlier
cell; decision 43), the read `GatherRowsWeighted`, the write `ScatterRank1`.

**Readout groups.** `Readout(size, fit, model, groups)` splits a readout into `groups` softmaxes of `size / groups`
neurons: a class per group per row (`LabelData` holds `Rows x groups`), each group's cost and force its own, `Loss` their
sum, `Predict` one class per group. The contrast is then the gradient of the summed cost (checked) and, nudged toward a
joint action, `T grad log pi(a)` with `pi` the groups' product (checked). An agent with `Settings.Groups` above 1 chooses
an action in each group; `Step` gives the joint action as one number (`sum_g Chosen[g] actions^g`), the memory holds a
value per action of each group and writes each chosen one with the shared reward (decision 44).

**Sparse projections.** `Project(..., store)` takes a `Layout` - `Auto`, `Dense` or `Sparse` - and `ProjectWired(pre,
post, posts, pres)` takes a wiring as synapse pairs. A projection that is not complete (a density below 1, a wiring, or
`Sparse`) gets its pattern first, drawn by geometric gaps (a draw per synapse, not per position) or sorted from the
pairs; its weights are then drawn per synapse, Glorot over the expected fan-in and fan-out - the same weights whether the
block is stored dense (absent synapses as masked zeros) or sparse, and at density 1 the same as a complete block's.
`Auto` stores a projection sparse at a density of at most 0.25 (decision 45). A sparse block's synapses are a
`sparse.Csr` view of the parameter region, so optimizers step them in place; its transport is `MulAdd` into post and
`MulAddT` into pre, its contrast `Sampled` - the batch's products sampled at the synapses only - both on the rows in
use transposed into feature-major once a sweep (one row is used as it is). The certificate, `Restrain`, `Energy` and
`DriveGrad` all read sparse blocks. On the board a sparse block is stored densely (decision 46).

### 2.13 As built: phase 4 - sleep, spiking on the board, checkpoints

One new module and three extensions: `consolidator.olang` (1.9's consolidator and its nights), spiking neurons on the
board engine (`board.olang`), code-level reads and writes in `store.olang`, and in `agent.olang` checkpoints that keep the
generator's state and two options for open question 8. `examples/sleep_retention.olang` (`make sleep`) measures
sleep - over nights, and against interference - and `examples/mnist_board.olang` takes a window to run a spiking
circuit. Results in 5.10; decisions 48-61. Not built: the PYNQ-Z2 overlay - there is no FPGA toolchain on this machine,
so the board stays simulated.

**The consolidator (`consolidator.Consolidator<T>`)**, 1.9's, with its settings in `SleepSettings`.

- *The slow part* is the gated linear recurrence unrolled over a window in an `nn.Graph`, a batch of sequences as its
  rows, every sequence starting at `h = 0`: per step two products and their gates (`Linear`, `Sigmoid`, `Tanh`,
  `Mul`), the readout `Linear`, and the window's loss the mean of the steps' `Mse`. `G`, `B` and `C` are
  Glorot-uniform, `g` starts at +1 (a gate keeping 73% of the state) and `b`, `c` at 0. Its gradient through the
  unrolled window is the graph's own backward (5.4.1).
- *The store's read is no node of the graph.* Nothing flows back through it, so it enters as a shift of the slow
  part's target: the slow part learns `y - m`, whose gradient is that of the whole output's loss (decision 53). The
  `Custom` op 2.7 planned was not needed. The store's key is `[alpha u, rho h]`, `alpha = 1 / sqrt(Inputs)`,
  `rho = 1 / sqrt(Hidden)`.
- *A day* (`Day(u, y, n)`): the slow part runs; at each step the store reads at its key, and `y - m` becomes the slow
  part's target; with a `DayRate` the slow weights take one step of gradient descent on the window by a backtracking
  line search (from `DayRate`, halved until the loss falls by at least `1e-4` of the step's first-order prediction, at
  most `Halvings` times, no step if it never does - 1.9's line search); the slow part runs again and each step writes,
  once, its residual `y - (C h + c)` into the store at its new key; the inputs are kept as cues.
- *A night* (`Sleep(passes)`, or `SleepOn(cues, count, passes)`): dusk dreams every cue kept, the store included, and
  freezes the dreams (`Dreams`); the night teaches the slow part the cue-to-dream pairs with the store excluded - Adam
  started afresh (rate `NightRate`, 0.01), `Passes` passes (60), batches in an order drawn from the consolidator's own
  generator; dawn clears the store's table and rewrites every step's residual, the dream less the slow part's output, at
  the key the slow part now gives - in passes of the delta rule (Kaczmarz's method), each key coded once, until every
  residual reads back within `DawnTolerance` (`1e-3`), at most `DawnPasses` (10). One pass leaves each read disturbed
  by the later writes sharing a cell: on random targets it left `slow + store` no nearer the dreams than the slow part
  alone; many passes hold the dreams' mistakes as faithfully as their truths (decision 56).
- *Defaults chosen by measurement* (5.10): no slow learning by day (`DayRate = 0`; decision 58), and a store far
  sparser than 1.6's - 150 cells per number of its key, 0.5% of them active, at least 16 (decision 59). The store gained
  `Encode`, `ReadCode` and `WriteCode`, Read and Write at a code kept, for dawn's passes.
- *Cost* (the retention task's sizes: a key of 27 numbers, 4 050 cells, 16 slow neurons, 12 steps; F64, at a load of
  7-10): a day of 16 sequences 40-70 ms, most of it the store's codes (a product of 4 050 x 27 and a top-k a read
  or a write); a night over 64 cues 0.29 s and over 128 cues 0.50 s with dawn allowed 100 passes and random targets
  keeping it at them (6.3 s when each of 10 passes coded every key again).

**Spiking neurons on the board engine** (4.6). `Board(c)` takes a spiking circuit: its Lif regions' descriptors carry
their leak, threshold and synapse rate (a region's descriptor grew to 12 words), and the engine keeps per phase and slot
the synaptic currents, the last step's spikes and the rate traces besides potentials and activities. A settle runs
whole windows of integer time steps (4.6's step in the header of `board.olang`), the transport as events, and commits
or refuses as the rate engine does; `Teach` settles a lesson's three phases so and reads them back (`Store` writes all
five arrays of a phase, through the circuit's new `StateOf`). `LifOf(region)` gives a Lif region as the engine runs it,
so a floating-point circuit compared with it can be made with exactly the engine's leak, threshold and synapse rate.
The engine counts `Steps`, `Spikes` and `Events` (synaptic events: a spike's weights added). The golden vectors (version
2) add the currents, spikes, traces and counts, and the window and the trace's step.

**Checkpoints** (decision 48): an agent's checkpoint keeps its generator's state through std/rand's `State`/`SetState`
(format version 2) instead of the numbers drawn; a restore goes into any agent of the saved one's shape and settings,
whatever seed it was made with and whatever it has lived, and brings the saved seed. A version 1 checkpoint is refused.

**Open question 8's remedies** are settings, both off: a calm moment may sample its action (`Settings.CalmSamples`), and
arousal's level may follow the policy's entropy (`Settings.EntropyGain`, through a third input of `Arousal.Update`).
Measured and not taken (decision 57).

**Repro statuses.** `repro/ctorpush.olang` and `repro/ctorunstored.olang` are fixed by olang edf8238; their workarounds
(`circuitFor`, datasets/text) need no change.

### 2.14 As built: phase 5 - the consolidator in the agent (open question 11)

`Settings.Consolidate` gives an agent a consolidator (`consolidator.Consolidator<T>`, 1.9 and 2.13) beside its
memories. Off by default; an agent without one lives exactly as before (the bandit and the reversal compared line for
line). Results in 5.11; decisions 62-71.

- **Its shape.** Inputs the observation, outputs a value per action of each group, and a window of one: each moment is
  a sequence of its own, from `h = 0`. History is the agent's context trace's to carry; what the consolidator keeps is
  what each observation's actions brought. Its slow part has `SleepHidden` (16) neurons, its nights batches of 16, and
  its generator its own (seeded from the agent's), so an agent draws the same numbers with it or without.
- **The day.** Every moment that learns - the one after an aroused moment, the arousal gate covering the consolidator
  as it covers the memories (1.7) - writes its outcome: the observation acted on as the input, the reward as the
  target of each group's chosen action, and nothing else, since nothing else was observed. `Day(u, y, n, known)`
  takes such a target: the slow part learns nothing from the unobserved outputs (its target there is its own output)
  and the store's write leaves their reads as they were (`Store.Write`'s `known`). The observation is kept as a cue.
- **The store learns by day at `RecallRate` (0.2, the persistent memory's `c_0`):** rewards are `+-1` draws, so a read
  is about the mean of the last five outcomes, where a rate of 1 would hold the last one. Dawn writes at rate 1 all the
  same - the dreams it stores are not noisy (`Store.WriteCode`'s `rate`).
- **The store is keyed by the observation alone** (`SleepSettings.StateInKey` off): 1.9's key `[alpha u, rho h]` holds
  the slow part's state, which every night moves, and with it which memories share cells. Kept in the key, a night
  that taught the slow part one surroundings' answers moved another's keys toward them, so the next day's writes for
  the one landed on the other's cells, and the next night consolidated the interference (5.11).
- **A quiet readout** (`SleepSettings.QuietReadout`): the slow part's readout starts at 0, so before its first night
  the consolidator answers 0 where nothing was written - an action never tried - rather than the untrained part's
  noise.
- **Its recall drives the readout.** At every settle the readout's drive is the memories' read plus `RecallGain` (1)
  times the consolidator's recall - slow part and store - of the observation. *Since phase 10 (decision 77) the recall
  alone, at `RecallGain` 2.*
- **Sleep is the caller's to call:** `a.Sleep(passes)` runs a night over every cue kept, between stretches of life;
  when a stretch ends is the world's to know. `examples/bandit_settle.olang` sleeps every `night=` moments (500).
- **Checkpoints carry it** - the slow weights, the store's table and mean, the cues and the generator's state; the
  metadata says whether an agent consolidates, and an agent with a consolidator and one without refuse each other's
  checkpoints.
- **Cost.** A store read at every settle (a product of 3 600 x 24 and a top-k for the return task's observations of 24)
  and a day's run and write at every moment that learns: the return task took 0.27 ms a moment with a consolidator and
  no nights and 0.67 ms with a night every 500 moments, against 0.03 ms without one (one thread, load 5-7).
- **What it bought** (5.11): the consolidator's store, by day, much of what an agent keeps across a change of
  surroundings and back - the first 250 moments back in a surroundings left for a conflicting one cost 0.07 of regret
  against 0.19 without it - and lower regret everywhere else; its nights, nothing more on these tasks.

### 2.15 As built: phase 9 - what an agent's nights are for (open question 14)

Open question 14 asked where an agent's nights should pay, since on the tasks of 5.11 they changed nothing. Complementary
learning systems name four places: generalization to observations like seen ones, protection against a second task
overwriting the first, capacity beyond what the fast store holds apart, and cues seen through noise or in part. Phase 9
builds a task for each, measures them with and without nights over 40 lives, and adds the two mechanisms the
measurements asked for. Results in 5.12; decisions 72-76.

- **The ring** (`examples/nights.olang`, `make nights`): an observation is a point of a great circle of the 16-number
  unit sphere, `x(theta) = cos(theta) e1 + sin(theta) e2`, and arm `a` pays 1 with probability
  `0.45 + 0.35 cos(2 (theta - phi_a))`, `phi_a = a pi / 4` plus a turn drawn once a life: each arm best in two opposite
  sectors of 45 degrees. The answers are a smooth function of `theta` - what a slow learner can capture - and quadratic
  in the observation, so no linear read holds them: the associative memory's keys of opposite points are each other's
  negatives while their answers are the same. A life trains on 8 points (the sectors' centres) for 2 000 moments,
  is tested, then lives 1 000 moments anywhere on the ring, every observation new. The test changes nothing - each
  answer is the agent's readout settled by `Imagine`, beside its consolidator's recall alone (the arm it values most) -
  on four sets: the training points (seen), 64 points spread between them (new), the training points with N(0, 0.15^2)
  added to each number (noisy), and with half of their numbers zeroed (partial). The night just before the test is
  the last of the training.
- **Transfer** (`examples/bandit_settle.olang transfer`): 5.11's surroundings, A then B, but B's answers A's - the same
  contexts under a new code, each observation about half like one seen (cosine 0.5): where the slow part's
  generalization should pay and the store's sparse codes, which hold nearly identical observations together and little
  else, cannot. The return task (A, a conflicting B, A again) is where it should cost.
- **A transient store** (`agent.Settings.RecallHalfLife`, off): the consolidator's store fades by `0.5^(1/H)` every
  moment (`Consolidator.Fade`, `Store.Fade`) - a hippocampus whose traces decay unless consolidated, which is what
  complementary learning systems assume of it. The fade is kept pending as one number, folded into the table only when
  it falls below 1/2 (and at a checkpoint), so it costs nothing per read or write; dusk dreams the traces as they have
  faded, and dawn writes back at full strength only what the slow part did not absorb.
- **A reservoir of cues** (`SleepSettings.Cues`, `agent.Settings.SleepCues`, off): a night replays at most that many
  cues, a uniform sample of every sequence the days saw - reservoir sampling (Vitter's algorithm R), drawn from the
  consolidator's generator - so a night's cost stops growing with the life (open question 12). The sequences seen go
  into the checkpoint (a fourteenth scalar; a checkpoint of thirteen is read as having kept every cue).
- **Paired lives** (`perlife=1` in both examples): two agents of one seed differing only in their nights live the same
  moments until the first night, so differences are taken life by life - intervals a third to a half as wide as the
  unpaired ones.

### 2.16 As built: phase 10 - the readout's drive, partial observations, the slow part's bet (open questions 15-17)

Phase 9 left three questions about how a consolidating agent reads what it remembers. Phase 10 builds a mechanism for
each, measures it against the agent as it was, and keeps what pays. Results in 5.13; decisions 77-85.

- **Which memory drives the readout (question 15).** A Weigher (`Settings.Weigh`) shares the readout's drive between the
  associative memory's read `m` and the consolidator's recall `c` by how well each has forecast the outcomes lately -
  the combination of forecasts of Bates and Granger (1969), for two forecasts the regression of the memory's error on
  their difference, `Mix = E[(r - m)(c - m)] / E[(c - m)^2]`, the expectations running means over the moments that learn
  (rate `WeighRate`, 0.1), clamped to `[0, 1]`; the drive is `G ((1 - Mix) m + Mix c)`. The noise the two errors share,
  the reward's own spread, adds nothing to either mean, since both forecasts were made before the outcome. It works: on
  every task the readout's regret falls, the recall's share settling at 0.94-0.97 and falling to 0.82 in the block after
  a reversal. But a control decides the question differently: the recall alone, at the two gains' sum (2), does as well
  as the weighing within the intervals everywhere, and better with 64 contexts - so what the associative memory added
  beside a consolidator was drive, not information, and what hurt on the ring and coming back to conflicting
  surroundings was its read, not a lack of weighing. *Decided (77)*: a consolidating agent's readout is driven by its
  recall alone, at `RecallGain` 2 (`Settings.RecallAlone`, on); the memories are still written, and the weighing stays
  an option. The gain itself matters more than the split - 3 and 4 measured lower still on the return and the
  reversal - which is open question 18.
- **Partial cues (question 16).** `Step`, `Begin` and `Imagine` take `known`, which numbers of an observation were
  observed; with `Settings.Completion` (on) the agent completes the others before anything reads the observation
  (`Perceive`, into `Seen`). The completer is a correlation-matrix memory of the whole observations the moments that
  learn acted on (Kohonen 1972; Anderson 1972), `M` the running mean of `x x^T`, read auto-associatively: the missing
  numbers are the linear least-squares estimate from the known ones, the conditional mean of a Gaussian of second
  moments `M`, `x_u = M_uo (M_oo + nu I)^-1 x_o` with `nu = 0.01 tr(M) / n`, the known numbers kept. An observation in
  the span of those learned is completed exactly whatever numbers are missing, provided the known ones tell the
  directions apart; a number nothing learned relates to the known ones is completed as 0. It is learned by the moments
  that learn - gated as the other memories are - from whole observations only, at `1 / count` until that falls to the
  arousal's slow rate. Without a mask a completer cannot tell a partial observation from a new one: on the ring, half
  the numbers zeroed leave a cue whose part outside the span of the observations learned is 0.67 of it, a return task's
  new surroundings' observation 0.73 (computed for the tasks' geometry; decision 80). Whole observations pass untouched,
  so an agent's life with them is the same with completion or without.
- **Generalization as a bet (question 17).** The consolidator's store keeps, with `SleepSettings.Familiarity`, how
  much its days have taught it: a second table beside its values, written by every day's write at the same cells and
  rate toward 1 for the outputs observed, never faded, cleared or rewritten at dawn (`Store.ReadFamiliar`: per output,
  0 where no day wrote at a reading's cells, toward 1 after writes there). The agent's recall of an action is then
  `store + (f + (1 - f) Guess) slow` (`Consolidator.Parts`): where the days wrote, slow part and store as before; where
  they did not, the slow part's generalization at weight `Guess`. A Guesser learns `Guess` from the outcomes: the
  least-squares weight of the unfamiliar part `z = (1 - f) slow` in what the rest leaves of the outcome,
  `r' = r - store - f slow`, over sums that forget by `1 - GuessRate` a moment that learns - recursive least squares
  with a forgetting factor - from the prior 1 (the recall as without familiarity), the prior worth one unfamiliar
  outcome of a guess of 1/2. So the first outcomes at a new surroundings' observations tell whether its guesses hold
  there, and a familiar stretch forgets the evidence until the prior speaks again. *Decided (82, 83)*: on by default
  for a consolidating agent (`Settings.Familiarity`, `GuessRate` 0.03).
- **The tasks.** `examples/bandit_settle.olang` gained `mixed` - a life meeting both kinds of new surroundings: in
  thirds A, B and C, each with a code of its own, one of B and C with A's answers and the other with each context's best
  and worst arms swapped (sharing first in odd lives, conflicting first in even ones) - and both examples `missing=`
  (a fraction of the moments whose observations lack numbers, the agent told which), `completion=`, `weigh=`,
  `recallalone=`, `familiarity=`, `guess=` and `guessrate=`. `bench/paired.olang` takes the paired differences of two runs'
  `perlife=1` lines.
- **Checkpoints** keep each mechanism's state when it is on - the Weigher's means and the last forecasts, the
  familiarity table, the Guesser and the last recall's parts, the completer's matrix and count - with a metadata flag
  for each; an agent refuses a checkpoint whose flags differ from its own settings.
- **Cost.** Familiarity doubles the store's table (3 600 x 4 more numbers for the return task's observations) and adds a
  gather at each recall and a scatter at each day's write; completion learns an `n x n` matrix at each moment that
  learns (`n` the observation's numbers) and solves an `n_o x n_o` system for an observation with numbers missing.
  Measured, about 4% on the return task and nothing on the ring (5.13).

---

## 3. What the matrix library and olang must provide

DESIGN section 13 already has `Gemm` with transposes, `alpha` and `beta`, views, `AddRow`, `ColumnSums`, `AddScaled`, the
`Map` family, row reductions, `Dot`/`Norm`, random fills and `ParallelRows`. Settling circuits add the following.
Items 1, 4 (softmax) and 6 are shared with the transformer work, which comes first: a transformer's single-token step
is a batch-1 GEMV, and its softmax and activations need the same vectorized row reductions and `exp`/`tanh`.

1. **A batch-1 / small-row path inside `Gemm`** (rows <= 4): no packing, no threads, GEMV kernels for `NT` (row dots)
   and `NN` (row axpys) at L1 speed on 64x64 to 256x512 blocks, zero allocation. This is the hot loop: some tens of
   times per moment, a few blocks each. Or explicitly: `matrix.Gemv(y mut Array<<T>>&, a Matrix<<T>>&, trans Bool, x Array<<T>>&, alpha <T>, beta <T>)`.
2. **Rank-1 and decayed rank-2 updates**: `matrix.Ger(a mut Matrix<<T>>&, x Array<<T>>&, y Array<<T>>&, alpha <T>, beta <T>)`
   (`A = beta A + alpha x y^T`) and the fused eligibility form `E = g E + alpha (u1 v1^T + u2 v2^T)`; at batch `B` the
   TN `Gemm` with `beta` covers it. The general statement: `W += eta (a b^T - c d^T)` computed as
   `a (b - d)^T + (a - c) d^T`, never as a difference of two large products (cancellation).
3. **Masked updates**: `w.AddScaledMasked(g, alpha, mask Array<U8>&)` for sparse connectivity and frozen synapses, and
   a scalar rescale of a block for the certified projection.
4. **Row reductions over column blocks**: `RowMaxAbs` (the residual's sup norm), `RowNorms` and `NormalizeRows` (memory
   keys), and a fused `RowSoftmax(dst, src, temperature)` over a `Cols` view (the cross-entropy nudge and the policy, one
   softmax per readout group).
5. **Absolute sums**: `RowAbsSums`, `ColumnAbsSums` (the incoming masses of the certificate).
6. **Vectorizable activations with derivatives**: `tanh`, `sigmoid`, `exp` as polynomial or rational approximations
   written in olang, F32 and F64, with a stated maximum error (a settle needs about 1e-6 against a tolerance of 1e-3).
   Under olang's X8, `std/math`'s `Tanh`/`Exp` are always calls of the C library and never replaced, so a loop calling
   them per neuron per sweep does not vectorize; at n = 64 that costs as much as the GEMV. The same kernels serve
   oann's backprop activations.
7. **Fused relax pass** (oann may write it over row slices): from `total`, `v`, `s`, `dt` and the neuron model, produce
   the per-row residual and the next `v`, `s` into the other buffer, in one pass. The library's part is that row-slice
   loops vectorize and views cost nothing.
8. **Top-k per row** (k-winners for the store): indices and values, linear-time selection, a caller-supplied workspace.
   *Built in oann*, `sparse.TopK` (2.12).
9. **Sparse-code products**: `GatherRowsWeighted(out, table, idx, w)` (`sum_j w_j table[idx_j]`) and
   `ScatterRank1(table, idx, w, err, rate)` (`table[idx_j] += rate w_j err`). *Built in oann*, `sparse.olang`.
10. **CSR sparse matrices** (phase 3): SpMV/SpMM in both transposes, and a sampled dense-dense product (the contrast at
    existing synapses only) for large sparse circuits. *Built in oann*: `sparse.Csr` with `MulAdd` (`Y += W X`),
    `MulAddT` (`Y += W^T X`) and `Sampled` (`g = (A B^T)` at the entries), on batches laid out feature-major (a sample's
    feature `j` at `j * stride + t`, so each entry's index and value are read once for the whole batch and its run of
    multiply-adds vectorizes), and `DrawPattern`/`PatternOf` for patterns. Against dense at the densities that matter in
    5.9. They live in oann rather than std/linalg for now: nothing else needs them yet.
11. **Bernoulli fills**: `FillMask(r, density)`, seeded from the shared `Rand`.
12. **Precision**: F64 for every kernel (gradient checks, references); F32 for lives and learning. F16/BF16 cannot
    resolve the settle tolerance (their epsilons, 9.8e-4 and 7.8e-3, are at or above it) and contrasts cancel, so only
    stored inference weights may be low precision, read with F32 accumulation.

**From olang**, none of it blocks phase 1:

- **Vector math** (item 6) is library code under the current rules; a vectorized `exp`/`tanh` in std (or a stated
  exception to X8 for a vector library) is an olang direction question, not an oann one.
- **Const generics** (planned): region and block sizes as compile-time constants give fully unrolled small GEMVs, a
  compile-time wiring check, and the fixed shapes an FPGA build needs.
- **Two-operand `At`/`SetAt`** (already noted in DESIGN section 13).
- **Fixed-point types** for the board simulation are expressible today (`type Q1_15 extends I16` with operator
  methods); saturating arithmetic would be library code.
- **Cross-compilation to the board's ARM cores** (olang's `TargetArch` is the host's today) for the processing-system
  side of section 4.
- **Serialization by reflection** (deferred in olang) would shorten checkpoints of a whole life; hand-written writers
  suffice meanwhile.

---

## 4. The FPGA target: PYNQ-Z2

**The board.** A Zynq-7020 system on chip: a dual-core Cortex-A9 *processing system* (PS) with DDR memory, and a
*programmable logic* (PL) fabric of about 53 k LUTs, 220 DSP48E1 slices (a 25x18 signed multiplier with a 48-bit
accumulator) and 140 BRAM36 blocks (36 Kbit each, about 4.9 Mbit or 630 KB in all; each splits into two 18 Kbit halves
and is true dual-port). There is no UltraRAM. Tools are Vivado and Vitis HLS; a PYNQ overlay (a bitstream with its
hardware description and a driver) is loaded and driven from the ARM cores. Data moves between DDR and the PL by AXI
DMA (the AXI high-performance ports are 64 bits wide: 800 MB/s peak at a 100 MHz fabric clock), control through AXI-Lite
registers. Figures about the part follow the Zynq-7000 and 7-series documents listed under References; the rest are
*planning*.

### 4.1 What maps well

- **Local learning, no backward pass.** Every update reads the synapse's own pre and post activity in two phases and
  one broadcast scalar (`delta`); nothing is stored across a backward pass. Weights stay where they are used
  (weight-stationary).
- **The settle is a fixed dataflow.** A sweep is block GEMVs, an activation, a max-reduction; a moment is some tens of
  sweeps with a data-dependent stop.
- **The control is scalar.** Arousal, the critic, budgets, the residual stop, sampling: a small FSM, or the ARM cores.
- **The sparse-code store is hardware-shaped**: the projection is regenerable from a seed by a PRNG (no storage), top-k
  is a streaming selection, a read or write touches `k` rows of thousands - only the tables need external memory.
- **The plan is the hardware description.** A planned `Circuit` (regions, blocks, phases, passes) is data. It can be
  emitted as HLS C++ (as hls4ml does for other models) or, better here, as a table of block descriptors for one fixed
  engine (4.2), with const generics making shapes constants.

### 4.2 The engine and its formats

One engine in the PL runs the sweeps for any circuit within its budget; descriptors (block shape, address, direction,
which neuron model) are loaded at run time, so a new circuit needs no re-synthesis.

**Lanes.** 64 multiply-accumulate lanes, each one DSP48E1 (a 16x16 product, 48-bit accumulate, one per clock, fully
pipelined) with its own weight memory of at least one BRAM18 (1 K x 18 bits). Sixty-four independent memories are the
minimum for 64 weights per clock: 64 BRAM18 = 32 BRAM36, holding up to 65 536 weights; each further layer of 64 BRAM18
adds 65 536. A block's longer dimension is spread over the lanes.

**One stored copy serves both directions.** For a block `[m, n]`, lane `i` holds a row (or column) of the longer
dimension. `W s` accumulates inside each lane; `W^T s` multiplies the same words by the broadcast other operand and
reduces across the lanes through a pipelined adder tree (63 adders, about 2.5 k LUTs). So a reciprocal weight is stored
once and the two products differ only in where accumulation happens.

**Activation and residual.** `tanh` by a 1 024-entry table over `[-8, 8)` with linear interpolation: the interpolation
error is at most `h^2/8 max|tanh''|` with `h = 16/1024` and `max|tanh''| = 0.77`, i.e. 2.4e-5, about one unit in the
last place of the activation format. Eight such units (one DSP and a share of a BRAM18 each) keep the activation pass
from dominating small circuits. A comparator tree gives the row maximum of `|r|` for the stop rule. The nudge needs a
softmax over a readout group every sweep (the force depends on the current state): a small `exp` table and one divider,
within the per-sweep overhead; the squared-error nudge avoids it.

**Formats** (fixed point; derived from the certificate). A certified circuit has incoming mass below 1 and activations
below 1 in magnitude, so:

| quantity | format | range, step | why |
|---|---|---|---|
| weight | Q1.15, 16 bit | [-1, 1), 3.1e-5 | `|W| < 1` for a certified circuit |
| activation `s` | Q1.15, 16 bit | [-1, 1), 3.1e-5 | `|tanh| < 1` |
| potential `v`, total | Q4.14, 18 bit (a BRAM word) | [-8, 8), 6.1e-5 | headroom for biases; `tanh(8) = 1 - 2.3e-7` |
| product | Q2.30, 32 bit, accumulated in 48 | | no overflow for any block of fewer than 2^16 terms |

One rounding per neuron per sweep (to Q4.14) costs at most 3.1e-5. The residual floor, a difference of two quantized
values plus the table error, is about 1e-4, so the board's tolerance is `max(tau, 3e-4)`. The distance to the true
equilibrium is at most the floor over `1 - kappa`, about 1e-3 at `kappa = 0.9`, comfortably below the life tolerance's
`eps = T/40 = 6.25e-3`. The board therefore runs only *certified* circuits (the projection of 1.3 on). The arithmetic is
integer, so it is associative and the simulation of 5.6 can match the engine bit for bit.

*As built (phase 3, 2.12).* `board.olang` simulates this engine bit for bit and fixes what the table above left open:
drives and the constant are Q4.14 too; a linear input's activity is `sat16(2 d)`; the table is 1024 base-and-delta
pairs (two BRAM18 words a segment) with an 8-bit interpolation fraction; the cross-entropy's softmax uses a second,
exponential table over `[-16, 0]` and one division per neuron, probabilities and forces in Q.16; shifts round to the
nearest with halves up; a folded block too large for Q1.15 carries a power-of-two shift. Measured (5.9): the
activation table errs by at most 4.7e-5 (1.5 steps), and the engine's equilibria lie within a third of the bound of
5.6 on the fixtures. The range argument above covers the recurrent part only: with the folded inputs a constant can
exceed `[-8, 8)` - on MNIST 0.2-2.7% of the hidden neurons' constants do - and saturates, which a `tanh` or
hard-sigmoid activity does not notice (`tanh(8) = 1 - 2.3e-7`, below a step of Q1.15).

**Why not floating point.** The DSP48E1 has no floating-point unit: an F32 multiply-add built from the vendor cores
takes about five DSP slices, which would leave roughly 40 lanes of 220 and double the weight memory. F16/BF16 are not
native either. Sixteen-bit fixed point is both the cheapest and, by the derivation above, sufficient.

**Resource plan** (*planning*; confirm by synthesis):

| resource | available | plan |
|---|---|---|
| DSP48E1 | 220 | 64 lanes + 8 activation units + a few for the divider: about 75 (34%). 128 lanes (58%) is the realistic ceiling |
| BRAM36 | 140 | weights up to 96 (3 layers of 32, 196 608 weights, 393 KB); state, drive, constants, tables and FIFOs about 30; 14 spare |
| LUT | about 53 k | engine and adder tree 10-12 k, activation and residual 2 k, control 2 k, AXI/DMA/interconnect 6-8 k: about 25 k (45%) |
| clock | | 100 MHz planning (150 MHz to try once the adder tree is pipelined) |

**Cycles.** A sweep costs `sum over blocks of 2 x short x ceil(long / 64)` MAC cycles plus about 40 cycles of pipeline
latency (the activation and residual passes overlap the MACs). For a balanced block this is `2P/64 + 40` for `P` weights.

### 4.3 What fits

All at 64 lanes and 100 MHz, one stream, 64 sweeps (a cold settle at the default tolerance). "Weights on chip" counts
the PL-resident weights (the recurrent core, plus the folded input blocks where they fit).

| circuit | folded (one-way) weights | recurrent core | on chip | sweep (cycles) | 64 sweeps |
|---|---|---|---|---|---|
| small agent (16 + 64 input, 64 hidden, 4 readout) | 5 120 | 256 | 5 376 weights, 32 BRAM36 (under-filled) | 49 | 31 us, plus 1 us for the folded blocks |
| 784-128-10 | 100 352 | 1 280 | 101 632 weights, 64 BRAM36 | 80 | 51 us, plus 17 us for the folded block |
| 784-512-256-10 | 401 408 | 133 632 | core only: 96 BRAM36 | 4 216 | 2.7 ms; the folded block (803 KB) streams from DDR |
| the weight-budget limit | | 196 608 | 96 BRAM36 | 6 184 | 4.0 ms |

Reading the table:

- Circuits up to the 784-128-10 class fit entirely, folded input blocks included. Cycles are latency-dominated for the
  small ones (of the agent's 49 cycles per sweep, 40 are fixed pipeline latency) and compute-dominated for the large ones.
- The 784-512-256-10 class fits as a *core*: the recurrent weights (68% of the weight budget) are resident, the 0.8 MB
  folded block is applied once per settle from DDR - 803 KB at 800 MB/s peak is at least 1 ms, comparable to the sweeps -
  or by the ARM cores. Folded blocks are one-way and used once per settle, so streaming them costs time but no
  on-chip memory.
- 128 lanes halve the compute-dominated rows at the price of 128 DSPs and 64 BRAM36 of lane memory.
- Anything beyond about 197 k resident weights is out of scope for this board.

An aroused moment adds about two calm moments' worth of sweeps (1.10); the PL times per moment scale accordingly.

### 4.4 Division of work between PL and PS

- **PL**: settle, nudged phases, residual and stop, refusal flag; resident weights; the memory read as part of the drive.
- **PS (ARM cores)**: the moment loop, arousal, critic, sampling, and **learning**. Master weights, eligibility and
  optimizer moments live in DDR in F32; after an aroused moment the PS applies the update and pushes quantized Q1.15
  copies of the changed blocks by DMA. This also answers the precision problem of 4.5: increments are accumulated in F32,
  the quantized copy only needs to be the best Q1.15 rounding of it. Because learning happens only in aroused moments,
  the PS cost is rare. *Planning*, at about 1 GB/s sustained memory bandwidth on the A9 cores and four F32 arrays
  (weight, eligibility, two moments) read and written: 0.2 ms for the small agent, 3 ms for 784-128-10, 17 ms for
  784-512-256-10; the DMA push of the resident weights is at most 0.7 ms.
- **Stage 2 (later)**: a fused update pass in the PL for small cores. It needs per weight 16 bits (weight) + 32 + 32
  (eligibility, moment) = 80 bits, so about 39 k weights in 96 BRAM36 (3.1 Mbit); 16-bit learning state with stochastic
  rounding needs 48 bits and allows about 65 k.
- **Host work off the board**: sleep (BPTT with a line search) is sequential and float-hungry; it runs on the PS or a host,
  and the board receives its slow weights and store.
- **PS software**: olang cross-compiled to the ARM cores (an olang item, question 7) or, until then, a thin driver that
  moves buffers and the plan's descriptor table, with everything else in the plan export.

### 4.5 What needs care

- **Reciprocal weights** are read as `W` and `W^T`; one stored copy serves both (4.2). Updating them touches each word
  once.
- **Precision.** Activations need the fractional bits derived in 4.2 to settle to the life tolerance. Contrasts are
  differences of phase products separated by `O(beta)`: the PS computes them in the factored form from `dS` directly, in
  F32.
- **Eligibility doubles synapse memory** and adds a full pass per aroused moment; on the PS (DDR) this is free of
  pressure. A truncated rank-120 trace (2.5) pays only for blocks with `120 (m + n) < m n`, e.g. 401 408 weights of the
  784-512 block against 155 k numbers.
- **Variable latency**: the sweep count is data-dependent; a real-time body needs the sweep cap (the budget) and the
  refusal path, reported in a status register.
- **Timing closure** for a 64-input adder tree at 150 MHz needs pipelining; at 100 MHz it is routine.
- **Synthesis time** is minutes to tens of minutes per build, which is why the descriptor-driven engine is preferred to
  a circuit-specific netlist.

### 4.6 Toward spiking

The rate neuron is a leaky integrator, a LIF neuron without spikes, stepped in time - exactly the time-stepped op
DESIGN section 14 question 3 imagines. Replacing `s` by spike trains turns each GEMV into event-driven column
accumulation (additions, no multiplies), and the contrast into correlations of spike counts in the two phases; spiking
variants of equilibrium propagation exist in the literature (O'Connor, Gavves and Welling 2019; EqSpike, Martin et al.
2021 - to be checked before relying on them; neither could be reached from this environment, so what follows is built
from the LIF neuron's textbook dynamics and this document's own phases). On this board an accumulate-only lane costs LUTs, not a DSP, so the 220-DSP
limit stops being the cap on parallelism and BRAM ports become it. The cost is variance: estimating a small contrast
from spike counts needs long integration windows, multiplying the sweep count. The design consequence for oann is small
and worth taking now: the neuron model is a closed enum in the plan (`Neuron.Rate(...)`, later `Neuron.Lif(...)`), so the
settle loop, phases, contrast and moment loop do not change when spikes arrive.

**As built (phase 1, the user's "we want spiking set up").** `Neuron.Lif(leak, threshold, synapse, window)` is a
working variant, not a stub. A spiking circuit's Hidden and Readout neurons are all `Lif`; its inputs stay rate-coded
(`s = rho(d)`, folded into a constant current). One sweep is one time step:

```text
syn    <- syn + synapse (W . spikes_{t-1} - syn)        a synaptic current per neuron, through the same transport
I       = c + syn  (+ beta f(trace) on a nudged readout)
u      <- u + leak (I - u)                              leak = the step over the membrane time constant
spike   = u >= threshold ;  u <- u - threshold if spike  reset by subtraction, at most one spike a step
trace  <- trace + (4 / window) (spike - trace)          a running rate, what a nudge's force reads
```

A settle runs whole **windows**; at a window's end the activity `s` becomes the window's spike count per step, and a
row's residual is the largest change of a rate since the window before. It qualifies when every row's rates have
stopped moving to within the tolerance (default `2 / window`: two spikes); refusal, commit, warm starts, phases and
`Contrast` are the rate circuit's, read on spike counts. Two choices were forced by measurement: the force reads the
**rate trace**, updated every step, because a force recomputed once a window from the window's rates swung from
window to window where the rate curve is steep (residual stuck at 0.023); and reset is **by subtraction**, which
keeps the discrete-time rate within one step's period of the continuous-time formula instead of rounding the period
up to a whole step (a staircase rate curve, whose small nudges change no count at all).

`Rho.LifRate(leak, threshold)` is the rate model of these neurons: `s = 1 / (tau ln(v / (v - threshold)))` above the
threshold, 0 below, at most 1, with `tau = -1 / ln(1 - leak)` - the steady rate under the constant drive `v`. A rate
circuit of `LifRate` neurons is the mean field the spiking one is compared with.

**Limits, stated.** No certificate: the rate curve's slope is unbounded at the threshold, so `Gain` is infinite and a
spiking settle has only its empirical window test. No refractory period, one spike a step at most, deterministic
neurons (no noise), inputs as constant currents rather than spike trains, the transport dense (a product on a 0/1
vector, not the event-driven accumulation of the board). Spike-count contrasts are noisy where the feedback that
carries them is weak - hidden neurons' contrasts need long windows; a neuron near its threshold fires on fluctuations
its rate model ignores; and a lesson costs `window`s of steps, about 1 000 steps at `window = 256` once warm.

**On the board (phase 4, 2.13).** The engine runs these neurons in integers - the same dynamics, a time step per
sweep: per neuron a membrane potential and a synaptic current in Q4.14, the last step's spike (a bit), a rate trace in
Q.24 and the window's spike count; per region its leak and synapse rate (Q.16) and its threshold (Q4.14). A step's
transport is **events**: each spike of the step before adds its weights - a pre neuron's column into post, and for a
reciprocal block a post neuron's row into pre - additions only, exact in the 48-bit accumulator. The current, the
potential and the trace are each one rounding; a spike is `u >= threshold`, reset by subtraction; at a window's end a
divider turns each count into a rate in Q1.15, and a row's residual is the largest change of a rate. The trace needs
the finer format: following a rate over a window of 20 000 steps it moves by a twentieth of a step of Q1.15 a step,
and a Q1.15 trace, rounding that, biased the force (5.10). The inputs stay rate-coded, folded into the constant as for
rate neurons. Measured (5.10): one neuron within the derived bound of its analytic rate; a circuit's rates within
1.6e-4 of the floating-point circuit carrying the board's values, its spike-count contrast as close to the rate model's
as the floating-point one's; XOR and MNIST taught through it as through F32.

---

## 5. Validation

Everything below runs as olang `test` blocks in `F64` (the reason `Circuit` is generic over `T`), on small circuits,
against quantities computed independently of the code under test. Nothing external is run.

### 5.1 Fixed points and the certificate

1. **A single neuron**: `v = w rho(v) + d`, compared with bisection on `g(v) = v - w rho(v) - d`, monotone when
   `|w| L < 1`.
2. **Linear neurons** (the test-only activation `rho(v) = v`): the settle must equal the direct solve of
   `(I - W) v = d + b` by Gaussian elimination, for random `W` with `rho_W < 1`.
3. **The certificate**: for random circuits with `kappa < 1` check (i) the same equilibrium from different starts,
   (ii) `||v_k - v*|| <= q^k / (1 - q) ||v_1 - v_0||` at every `k`, (iii) `||r_k|| <= q^k ||r_0||`, (iv) at the stop,
   `||v - v*|| <= tau / (1 - kappa)`, and (v) the sweep count at most `ceil(ln(tau / ||r_0||) / ln q)`. For circuits with
   strong positive feedback (`kappa >> 1`, bistable) the settle either returns a state whose residual meets `tau` or
   refuses; it never returns a state that does not qualify.
4. **Energy**: for symmetric `W`, central differences of `E` equal `-rho'(v) r`, `E` is non-increasing along small-`dt`
   sweeps, and the settled state is a stationary point of `E`.
5. **Closed-form inputs**: the equilibrium with input regions evaluated in closed form equals the one found by relaxing
   them as ordinary regions.
6. **Damping**: the equilibrium does not depend on `dt`; plain and damped settles agree within tolerance where both
   converge.

### 5.2 Learning rules against finite differences

With `tanh` (smooth everywhere), symmetric weights, `T = 0.25`:

1. **Supervised contrast**: the centered contrast with small `beta` and `tau` from the rule of 1.4, against central
   finite differences of `L(theta) = C(s_out(theta); y)` taken at the free fixed point, for weights, biases and the
   source projection. Sweeping `beta` over 1e-1 ... 1e-3: the error falls as `beta^2` (slope 2 on log-log) until it
   reaches the phase-error floor `eps / beta`; the uncentered estimate falls as `beta` (slope 1).
2. **The encoder gradient**: `-(s+ - s-) / (2 beta)` on a free neuron against the finite difference of `L` with respect to
   its drive, and through a source projection (the "settling inside, backprop outside" claim of 2.2).
3. **A deliberate violation**: with asymmetric directed weights the estimate must *not* match; the test documents that the
   theorem's condition is necessary.
4. **The policy score**: for a one-step menu, `E_a[contrast_a]` with the nudge toward each action `a`, weighted by `pi(a)`,
   must vanish, and the contrast of a single action must equal the finite difference of `T log pi(a)`.
5. **Three-factor expectation**: with the critic frozen at the exact mean reward `V = sum_a pi(a) r_a` (a baseline) and
   `gamma = 0`, the exact expectation of the actor's update over the actions, computed by enumeration,
   `sum_a pi(a) (r_a - V) T grad log pi(a)`, must equal `T grad J` with `J(theta) = sum_a pi(a) r_a`; compare with the
   finite difference of `J`.
6. **Eligibility**: the fused pass equals the explicit sum of past rank-2 terms weighted by `(gamma lam)^age`; lazy
   decay equals eager decay.

### 5.3 Memories and arousal

1. Read-after-write with a unit key and `rate = 1` returns the value exactly; orthogonal keys do not interfere;
   overlapping keys interfere by `dot(q, k)`; `F` decays by `phi` per moment; `C` approaches `v` as `(1 - c')^n`.
2. The sparse-code store: code norm 1 with exactly `k` active cells, a write at `rate = 1` followed by a read at the same
   input returns the target, a different input interferes only through shared active cells.
3. Arousal: the recursions checked against hand-computed sequences; the critical period and threshold transitions; a
   step change in reward raises `level` above `theta` within a few `1 / alpha_f` moments and it falls back.
4. **Calm moments change nothing**: the parameter region, moments and memories are byte-identical before and after a calm
   moment.

### 5.4 Sleep

1. The recurrent cell's gradient through the unrolled window against finite differences (the `Graph` op checks cover it).
2. After enough passes the slow weights alone reproduce the dreamed outputs on the cues within a tolerance; the dawn store
   holds the residual, so `slow + store` output on the cues is unchanged by consolidation (recall is preserved).
3. A small finite-state sequence task: before and after a night, accuracy of the slow weights alone on held-out sequences
   rises over nights; the store alone stays where its exposures put it. The expected outcome is stated before the run.

*As built (2.13):* `consolidator.olang`'s tests check 1-3 (and the day's line search) in F64; `examples/sleep_retention.olang`
measures 3 over many lives and sleep against interference - a second task learned after a first. Results in 5.10.

### 5.5 End to end

A contextual bandit and a reversal task (the best arm swaps). Against the analytic optimum (the best arm's reward rate)
over many seeds with confidence intervals: regret falls; arousal rises after a reversal and falls back; the fraction of
calm moments rises as the policy settles; a trace-pinning case (1.6) is included.

### 5.6 The board

Simulate the engine in olang with `type Q1_15 extends I16` (weights, activations) and an `I64` accumulator, rounding to
Q4.14: the simulated equilibrium differs from the F64 one by less than the bound `floor / (1 - kappa)` of 4.2 on the
fixtures above. On the board, the PL result must equal the simulation exactly (integer arithmetic, associative sums) and
the F64 result within the bound.

*As built (2.12):* the simulation is `board.Engine` (plain `I16`/`I32`/`I64` arrays rather than a `Q1_15` type: the
engine is data, and its formats are stated once in the module's header). The floor is made precise as
`tau_b + Delta`, `Delta` the error of one evaluation of the map, against the F64 circuit carrying the board's own
values; weight rounding is a separate term. Checked: one neuron against bisection; twelve random certified circuits at
`kappa` 0.5, 0.8 and 0.9, linear and `tanh` inputs, cross-entropy and squared readouts, four rows, at board tolerances
of 0, 1 and 5 steps; nudged phases of both costs at `beta = +-0.5`; a lesson's gradient; against the unquantized
circuit; refusal; determinism; and the golden vectors read back. A hardware engine is checked against the simulation by
`Dump`'s vectors, bit for bit.

---

### 5.7 Results of phase 1 (2026-10-09)

All in F64, as `circuit.olang`'s tests, unless marked; errors are the largest over the elements checked.

- **5.1.1** One neuron, `v = w tanh(v) + d`, against bisection: within 1e-12 for `w` in {0.5, -0.8, 0.9, -0.3} and four
  drives, at `tau = 1e-14`; the gain is `|w|` exactly.
- **5.1.2** Linear neurons (seven relaxing, two lateral blocks, `kappa = 0.8`) against Gaussian elimination of
  `(I - W) v = d + b + W_in d_in`, assembled independently from the blocks: within 1e-12.
- **5.1.3** The certificate at `kappa = 0.8`: three random starts reach one equilibrium (1e-12); bounds (ii) and (iii)
  hold at every one of 79 sweeps; (iv) and (v) at `tau` = 1e-3, 1e-6, 1e-9. A bistable circuit (gain 6), 30 starts
  with budgets 0-29: some qualify, some refuse; every state returned qualifies, and every refusal leaves the committed
  state bit for bit. A **nudged** phase (squared error, `beta = 1`) steps at `dt = 1/2` and its residual shrinks at
  the certified `q_beta = 0.9` at every one of 59 sweeps.
- **5.1.4** Energy: central differences of `E` against `-rho'(v) r` within 1e-8; 200 sweeps at `dt = 0.05` never
  raise it; at the equilibrium its gradient is below 1e-9.
- **5.1.5** Inputs in closed form against relaxing them as ordinary regions: within 1e-12.
- **5.1.6** Damped (`dt = 1/2`, three attempts) and plain settles agree within 2e-12; a linear neuron with
  self-weight -1 swings forever at `dt = 1` (refused, residual 1) and lands on `d / 2` in one damped step.
- **5.2.1** The estimate against central differences of the free equilibrium's cost (three tanh inputs, four hidden
  with a lateral block, three cross-entropy readouts, two rows), relative to the largest element:

  | `beta` | 1e-1 | 1e-2 | 1e-3 |
  |---|---|---|---|
  | centered | 1.6e-3 | 1.6e-5 | 1.6e-7 |
  | uncentered | 6.9e-2 | 6.8e-3 | 6.8e-4 |

  slope 2 and slope 1 exactly; at `beta = 1e-3` with the rule's tolerance (1e-11, not a tight one) 1.6e-7.
- **5.2.2** The drive's gradient, on a hidden region and through the source projection of a tanh input region:
  1.9e-6 of the largest element, both.
- **5.2.3** With the feedback a one-way block of its own (asymmetric): 0.88 - the estimate is no gradient.
- **5.2.4** The policy score: the mean of the actions' contrasts under `pi` is 3.8e-7 of the largest, and an action's
  contrast against central differences of `T log pi(a)` 1.0e-6.
- **5.2.5** Three factors, the exact expected actor update with an exact baseline against `T grad J`: 7.3e-7.
- **5.2.6** The eligibility trace (`Eligibility`, lazy and fused) against the explicit sum of past contrasts weighted
  by `(gamma lambda)^age` over eleven moments: within 1e-14; lazy and eager decay within 1e-15.
- **Spiking** (4.6): one Lif neuron's rate under six constant drives within the derived bound of the analytic rate
  (e.g. 0.0455 against 0.0467 at drive 1.5, 0.274 against 0.281 at 6; none below the threshold). A small spiking
  circuit's free rates are within 0.009 of its `LifRate` rate model's, and its spike-count contrast agrees in sign on
  all 11 of the rate model's larger entries (the largest difference 0.23 of the largest entry).
- **End to end, XOR** (rate, F64, eight hidden): every pattern right and the cost 9.6e-5 after 400 lessons, 9 sweeps a
  lesson. **Spiking XOR** (window 256): every pattern right, cost 2.2e-5 after 200 lessons, the readouts on their
  targets to a spike; about 1 080 steps a lesson.
- **End to end, MNIST** (`examples/mnist_settle.olang`, F32, 784-128-10, batch 32, Adam 1e-3, `beta = 0.5`, test set):
  95.69% after one epoch, 96.73% after three, 97.48% after ten (97.49% at nine); about 40 sweeps a lesson for the three
  settles and 11-20 an answer; no lesson refused, though the gain rises to 15 - far outside the certified region,
  where only the residual test vouches for a settle. 784-256-10: 97.57% after five epochs. Projected back into the
  certified set after every step (`Restrain(0.9)`, what the board needs): 91.09% after three epochs, at 16 sweeps a
  lesson and 4 an answer - the certificate bounds each readout neuron's input to 0.9, which the cross-entropy at
  `T = 0.25` cannot separate ten classes well with; a deployed circuit wants a lower temperature or training aware of
  the bound. An epoch took 8.7 s on the shared machine with olang ef939ae (backprop's 784-128-10 epoch: 2.4 s; 2.10
  says where it goes); with 9621af3, the batch's products as one `Gemm` each, 8-11 s at a load of 10-14 (the first
  epoch 7.8-8.6 s, later ones more sweeps a lesson) against backprop's 0.69 - and 97.48% again after ten epochs (the
  epochs between within 0.2 points of the old run's: the products now round differently).
- **End to end, spiking MNIST** (the same example with `window` 256: Lif hidden and readout neurons, squared error
  toward 0.2 spikes a step for the class, `beta = 1`, Adam 5e-3, 10 000 training samples): 89.73% after one pass,
  90.48% after two; about 1 870 steps a lesson and 780 an answer, 45-66 s a pass. Learning works on spike counts;
  it is slow and noisy beside the rate circuit, as 4.6 expects (long windows, many steps).

### 5.8 Results of phase 2 (2026-10-09)

`agent.olang`'s tests (F64), and `examples/bandit_settle.olang` (F32) for 5.5.

- **5.3.1 Memory.**
  - A read after a write at a unit key returns the value (1e-15).
  - An orthogonal key reads exactly 0.
  - An overlapping key reads `0.7 dot(q, k)` (1e-15).
  - The fast store fades by `phi` per moment.
  - Repeated writes bring the persistent store to the value as `(1 - c')^n` (1e-14).
- **5.3.3 Arousal.**
  - Three outcomes agree with values computed by hand, independently (1e-12).
  - In a step-change scenario the agent is aroused through the critical period, calm after it (level 0.99), aroused
    2 moments after the change, and calm again 142 moments later.
- **5.3.4 Calm moments** leave the parameters, Adam's state, the eligibility, the critic and both memories bit for bit
  as they were. The critic converges to the reward.
- **Checkpoints.** A restored agent lives exactly the saved one's next 100 moments: actions, parameters, eligibility,
  memories, arousal and draws, over a stretch of both calm and aroused moments. A used agent and a file that is no
  checkpoint are refused.
- **5.5, the contextual bandit**:
  - Setup: 4 contexts as overlapping random unit observations of 16; 4 arms; rewards of -1 or +1, the best arm paying
    with probability 0.8 and the others 0.1-0.5; 40 lives of 4 000 moments; mean with 95% interval. Regret is in
    probability of paying (a uniformly random choice: 0.375).
  - Regret: 0.190 +- 0.010 over the first 250 moments, 0.055 +- 0.016 over the next, then 0.03-0.05 to the end.
  - Calm moments: 7% in the critical period, then 82-93%. The arousal level falls from 7.8 to about 1.1.
  - A test with two contexts and deterministic rewards: every one of the last 499 moments right.
- **5.5, the reversal** (the same, each context's best and worst arms swapping at moment 2 000):
  - Regret: 0.042 over the 250 moments before the swap, 0.230 +- 0.023 over the 250 after, then 0.085, and back to
    0.065-0.075 by moment 4 000.
  - Calm moments: 87% before, 40% after the swap, back to 94-97%.
  - The arousal level: 1.13 before, 1.71 after the swap, back to 1.08.
- **5.5, trace pinning** (the bandit, where history tells nothing; context-trace gains 0, 1 and 8; 40 lives; the
  last 2 000 moments). The rate of repeating the last action when the context's best arm changed detects it:

  | | gain 0 | gain 1 (default) | gain 8 |
  |---|---|---|---|
  | memory on: regret | 0.025 | 0.046 | 0.047 |
  | memory on: repeat rate | 0.05 | 0.11 | 0.10 |
  | actor alone (memory gain 0): regret | 0.034 | 0.141 | 0.321 |
  | actor alone: repeat rate | 0.15 | 0.60 | 0.87 |

  The default trace already pins the actor partly, and a strong one nearly always repeats. The memory's direct drive
  on the readout masks most of it, because the trace acts on the hidden layer, which the memory bypasses.
- **With the document's own defaults** (decision 21):
  - The bandit's regret plateaued at 0.11, because the agent was calm for good from moment 100.
  - The reversal never recovered (0.53 to the end).
  - A faster actor (Adam 1e-2) collapsed onto one action whatever the context (repeat rate 0.85-0.93), even when always
    aroused.
  - Always aroused, the actor alone reaches regret 0.017 by moment 4 000 at Adam 3e-4.
- **What the gate does not do**: it detects change, not suboptimality. Disappointment is relative to a long-run level
  that adapts, so a lasting drop eventually reads as normal, and calm moments never explore. With the tuned values the
  learners relearn within the aroused stretch a change provokes, but there is a floor (regret about 0.03-0.05 in the
  bandit, a little higher after a reversal) where a still-imperfect policy no longer surprises the agent.

### 5.9 Results of phase 3 (2026-10-09)

`board.olang`, `store.olang`, `sparse.olang` and `circuit.olang`'s tests (F64), `examples/mnist_board.olang` (F32) and
`bench/sparse.olang`, on the shared four-core machine with olang edf8238.

**The board (5.6).** Every check holds within its bound, and the measured gaps are a third of it or less.

- *Tables.* `tanh`'s largest error over all `2^18` inputs 4.7e-5 (1.5 steps of Q1.15; bound 5.4e-5); the
  exponential's 4.0e-5 (bound 4.6e-5).
- *One neuron* (5.1.1's, `w` in {0.5, -0.8, 0.9, -0.3}, four drives) at the board's floor of 5 steps: 6-28 sweeps, within
  1.4e-4 to 4.3e-4 of the bisected root (bounds 6.3e-4 to 4.7e-3).
- *Twelve certified circuits* (`kappa` 0.5, 0.8, 0.9; linear and `tanh` inputs; both costs; four rows): the largest
  gap 0.34 of its bound. At `kappa = 0.9` and a tolerance of one step, 8 sweeps and potentials within 1.1e-4 of the exact
  equilibrium (bound 1.6e-3); at the floor, 7 sweeps and 3.0e-4 (bound 4.1e-3). An exact fixed point (residual 0) in 7
  of the 12; the rest end in a cycle of a step or two.
- *Nudged phases* at `beta = +-0.5`: the squared error's within 7.5e-5 and 2.0e-4 (bound 1.4e-3; the plus phase at
  `dt = 2/3`), the cross-entropy's within 1.3e-4 (bound 2.2e-3).
- *A lesson* (four rows, `beta = 0.5`, `kappa = 0.9`): the gradient within 1.4e-4 of the exact circuit's, 4.0e-4 of its
  largest element (the bound from the states' errors: 2.7e-2).
- *Against the circuit before quantization*: within 1.0e-4 (`kappa = 0.5`) and 1.4e-4 (`kappa = 0.9`); the weights'
  rounding is not visible beside the arithmetic's.
- *XOR* (8 hidden, inputs +-1, Adam 0.05, `Restrain(0.9)` after every step, 400 lessons): settled in F64, 4/4 answered on
  the board, loss 0.01077, 8.8 sweeps a lesson; settled on the board, 4/4, loss 0.01074, 8.8 sweeps a lesson.
- *MNIST* (784-128-10, batch 32, Adam 1e-3, `beta = 0.5`, `Restrain(0.9)` after every step; test accuracy after epochs
  1 / 2 / 3, answered in F32 and on the board):

  | lessons settled | `T` | F32 answers | board answers | answers agreeing |
  |---|---|---|---|---|
  | in F32 | 0.25 | 90.05 / 91.02 / 91.09% | 90.05 / 91.02 / 91.09% | 100.00% |
  | on the board | 0.25 | 90.04 / 91.02 / 91.09% | 90.04 / 91.01 / 91.10% | 99.99% |
  | in F32 | 0.1 | 91.95 / 92.73 / 93.20% | 91.95 / 92.74 / 93.20% | 99.99-100% |
  | on the board | 0.1 | 92.06 / 92.73 / 93.19% | 92.06 / 92.73 / 93.19% | 100.00% |
  | on the board | 0.05 | 91.71 / 92.94 / 93.42% | 91.71 / 92.94 / 93.42% | 100.00% |
  | in F32, not restrained | 0.25 | 95.69 / 96.48 / 96.58% | 95.69 / 96.48 / 96.58% | 100.00% |

  Settling on the board changes the learning curve by a few hundredths at most: the board is as good a teacher as F32.
  The certificate is what costs accuracy (91-93% against 96.6% without it - 5.7's observation), and a lower
  temperature recovers part of it (T = 0.1: 93.2%, T = 0.05: 93.4%). Even the uncertified circuit (gain 7.7-10) answers identically on
  the board, though nothing guarantees it. 0.2-2.7% of the hidden neurons' constants exceed Q4.14's range and saturate,
  harmlessly for `tanh`. 4.3's cycle model gives 80 cycles a sweep and 1 664 for the folded constant (0.8 us and 17 us
  at 100 MHz): about 21 us an answer at its 3.9-4 sweeps.
- *Simulation speed*: a first MNIST epoch (15.3 sweeps a lesson) with its lessons settled on the board takes 6.1 s
  against 4.7 s in F32 - medians of three interleaved runs at a load of 3.5-5.7, each run's numbers identical to the
  last digit (the simulation is deterministic, and so is the F32 circuit). Later epochs, at more sweeps a lesson, take
  7.8-10 s either way.

**The sparse-code store (5.3.2)**, `Inputs = 16`, 320 cells, `K = 16`:

- 50 random readings: every code has norm 1 (to 1e-14) and exactly 16 active cells, the 16 largest projections.
- A write at rate 1 reads back exactly (1e-14); another reading moves by exactly the dot of the two codes times the
  write's error (1e-14, 20 trials), and not at all when their codes share no cell.
- The running mean follows the writes as computed by hand (1e-14); at rate 0.1, 400 noisy targets around 0.7 (+-0.2)
  read 0.737.
- One exposure each, then everything read back (rms error; a store knowing nothing scores 0.577 on these targets):

  | inputs (cells, active) | 10 stored | 100 stored | 1 000 stored |
  |---|---|---|---|
  | 16 (320, 16) | 0.164 | 0.478 | 0.744 |
  | 64 (1 280, 64) | 0.086 | 0.198 | 0.471 |

  Interference grows with what is stored, as 1.6 expects of a fast, one-shot store - which is why sleep (1.9) moves
  what it holds into slow weights.

**Readout groups.** Two groups of three, cross-entropy at `T = 0.25`: the centered estimate against central
differences 6.6e-7 of the largest element at `beta = 1e-3`; a joint action's contrast against central differences of
`T log pi(a)`, `pi` the groups' product, 5.1e-7. An agent with two groups (two contexts; group 0 should answer the
context, group 1 its opposite; reward the mean of the groups' +-1): every one of the last 499 moments right in both
groups, 2 399 calm moments and 101 aroused.

**Sparse projections.** A sparse projection is the masked dense one: the same weights, equilibria within 1e-12, the
gradient within 1e-10, the drive's gradient within 1e-10, `Restrain` alike - at one row and at three. Against dense
blocks (interleaved medians of five rounds, F32; the dense ones through std/linalg's `Gemm` with a workspace, at one
row the contrast as two outer products):

| n x n, rows | operation | density 0.01 | 0.02 | 0.05 | 0.1 | 0.2 | 0.5 |
|---|---|---|---|---|---|---|---|
| 1 024, 1 | transport (both ways) | 13.2x | 7.9x | 4.4x | 2.4x | 1.5x | 0.75x |
| 1 024, 1 | contrast | 5.7x | 4.3x | 2.5x | 1.3x | 0.86x | 0.51x |
| 1 024, 32 | transport | 15.6x | 11.2x | 6.1x | 3.6x | 2.2x | 1.0x |
| 1 024, 32 | contrast | 6.5x | 4.8x | 2.4x | 1.3x | 0.66x | 0.31x |
| 4 096, 1 | transport | 40.6x | 23.5x | 10.0x | 5.2x | 2.6x | 1.1x |
| 4 096, 1 | contrast | 19.0x | 11.8x | 5.3x | 2.6x | 1.3x | 0.52x |
| 4 096, 32 | transport | 29.3x | 21.1x | 10.5x | 5.6x | 3.3x | 1.1x |
| 4 096, 32 | contrast | 10.2x | 5.2x | 2.7x | 1.5x | 0.76x | 0.32x |

(the sparse block's speed-up; e.g. 4 096 x 4 096 at density 0.01 and 32 rows: a transport in 4.2 ms against 123 ms).
A transport breaks even near half the positions, a contrast near a sixth at 32 rows and a quarter at one (a sampled
product of a batch is a dot of 32 per synapse, against a dense product at the arithmetic peak). Whole circuits - 256
inputs into 2 048 hidden neurons with a lateral block at the density, reciprocal with 10 readouts - where a settle is
many transports to a lesson's one contrast:

| lateral density | 0.01 | 0.05 | 0.1 | 0.25 | 0.5 |
|---|---|---|---|---|---|
| a lesson, 32 rows: dense / sparse | 345 / 21 ms (17x) | 400 / 49 ms (8.2x) | 324 / 77 ms (4.2x) | 325 / 208 ms (1.6x) | 357 / 425 ms (0.84x) |
| a free settle from cold, one row | 20.8 / 1.1 ms (18x) | 23.0 / 2.5 ms (9.4x) | 21.2 / 3.7 ms (5.7x) | 20.2 / 8.9 ms (2.3x) | 21.5 / 21.3 ms (1.0x) |

(medians of five interleaved rounds at a load of 2-4; a second run gave the same picture within about 30%, its lesson at
0.25 2.0x and at 0.5 1.3x.) So `Auto` stores a projection sparse at a density of at most 0.25, where a lesson is still 1.6-2x and a settle 2.3x
as fast; between 0.25 and 0.5 the two are close and the dense block keeps the batch's products at the arithmetic peak.

### 5.10 Results of phase 4 (2026-10-09)

`consolidator.olang`, `board.olang`, `store.olang` and `agent.olang`'s tests (F64); `examples/sleep_retention.olang`
(F64), `examples/mnist_board.olang` and `examples/bandit_settle.olang` (F32); on the shared four-core machine with olang
edf8238, at loads of 3-11 (accuracies and counts are deterministic; times are not, and are marked with their load).

**Sleep (5.4).**

- *5.4.1*: the gated recurrence over 6 steps of 3 rows against central differences: the largest relative error 5.1e-8.
- *The day's line search*, from a step of 4 over five windows: every step it took lowered the loss, and where it took
  none the weights stayed bit for bit.
- *5.4.2*, on 24 cues of 8 steps of random readings with random targets (nothing for a rule to capture; a day's step of
  0.5, 400 passes a night): the dreams are exactly what `slow + store` recalled before the night; the slow part alone
  ends within 0.18 rms of them, its last pass's loss. After dawn, with a store large enough to hold every residual apart
  (7 200 cells, 36 active) and 100 passes, `slow + store` is within 8.5e-4 rms of the dreams and every residual reads
  back within 4.7e-3: recall is preserved. With the default store for this key (1 800 cells, 16 active) the codes of
  similar keys share cells: 0.19 rms after one pass (no nearer than the slow part alone), 0.11 after 10, 0.026 after 100.
- *5.4.3*, 20 lives of four days of 16 new flip-flop sequences (12 steps; 16 slow neurons; the task of
  `examples/sleep_retention.olang`, below), accuracy on 512 new sequences. Expected, written before the first run: "the
  slow part alone rises over nights from chance toward >90% on new sequences by the fourth night; a store alone (no slow
  learning, no nights) stays near what its exposures give on new sequences (60-75%), little change". Measured:

  | | before | night 1 | night 2 | night 3 | night 4 |
  |---|---|---|---|---|---|
  | the slow part alone | 51.9 +- 4.3 | 81.9 +- 3.4 | 94.5 +- 2.9 | 100.0 +- 0.0 | 100.0 +- 0.0 |
  | slow and store | | 81.9 +- 3.2 | 93.7 +- 2.4 | 99.6 +- 0.3 | 99.9 +- 0.1 |
  | a store alone, the same days, no nights | | 83.0 +- 2.9 | 84.8 +- 3.4 | 87.7 +- 3.1 | 88.7 +- 2.7 |

  The slow part rose as expected. The store alone did better than expected and rose a little with its exposures: its
  key carries the state of the slow part's untrained recurrence, which holds some history of the sequence - a random
  reservoir it reads - but it holds no rule, and falls short of the slow part from the second night on.

**Sleep against interference** (`examples/sleep_retention.olang`, 20 lives with 95% intervals). The task: a flip-flop
(set, reset, hold at 0.2, 0.2, 0.6) and two tasks that share its symbols and conflict on them - task B's targets are
task A's negated - told apart only by a context of 8 random signs each (decision 61). Four days of task A, then four of
task B, 16 new sequences a day shown once; accuracy (%) on the sequences seen (recall) and on new ones. Four lives:
days only (slow learning by day at a step of 0.05, no nights), a store alone (no slow learning, no nights), days and
nights, and nights only (the default: no slow learning by day). Expected, written before the first run: "days only -
after B, A's recall and new-A accuracy fall well below their end-of-A values; store alone - recall after A high, after
B somewhat lower, new A low-moderate; days and nights / nights only - new A stays high (>85%) after B, recall of A
stays high". Measured with the defaults (dawn at most 10 passes):

| life | A after A: recall / new | A after B: recall / new (slow part alone) | B after B: recall / new |
|---|---|---|---|
| days only | 89.5 / 88.9 | 84.7 +- 3.1 / 84.4 (51.6) | 85.9 / 84.7 |
| a store alone | 89.2 / 88.7 | 87.3 +- 2.3 / 87.2 (51.9) | 85.8 / 84.3 |
| days and nights | 99.9 / 99.9 | 91.4 +- 6.2 / 90.9 (91.9) | 100.0 / 100.0 |
| nights only (default) | 99.9 / 99.9 | 95.8 +- 5.4 / 96.0 (95.7) | 100.0 / 100.0 |

With nights task B is learned completely and task A mostly kept - the slow part alone answers new A sequences at
95.7% after a phase of the conflicting task, where without nights the slow part never learned A at all and the store
alone keeps 87%. The interval is wide: some lives lose part of A - where the store's codes for A and B overlap, B's
writes corrupt A's dreams before the night, and the night consolidates the corruption. What decides it, measured on
the same 20 lives:

- *Slow learning by day* (decision 58): at a step of 0.5, days and nights kept A at 32.7 +- 9.5 (days only: 74.2): one
  day of B moved the slow weights so far that A's dreams were B's answers. At 0.05 it bought nothing measurable alone
  (the slow part alone 55.9 after task A, against 51.9 for the store alone).
- *The store's sparseness* (decision 59): with store.olang's default for this key (540 cells, 27 active, 5%) days and
  nights kept 65.4 +- 12.5 and nights only 78.9 +- 10.5 - no better than a store alone with it (77.1). Twice the
  default store separates more, at twice its cost: with dawn at 100 passes, where the default store kept 85.2 / 94.8
  (days and nights / nights only), 8 100 cells kept 92.9 / 97.4 +- 4.4 with 20 active and 86.5 / 97.4 +- 2.6 with 41.
- *Dawn's passes* (decision 56), A's recall after B, days and nights / nights only: one pass 93.2 / 94.2, three 93.7 /
  94.0, ten 91.4 / 95.8, a hundred 85.2 / 94.8.
- *How different the tasks look* (decision 61): with a context of one bit instead of eight signs, days and nights kept
  A at 74.0 +- 8.3 and nights only 84.3 +- 7.1, against a store alone's 82.2: the store cannot tell the tasks apart,
  so neither can the night.

The first runs, before decisions 58 and 59, contradicted the expectation for both sleeping lives (days and nights
keeping A at 18-37% with the store's 5% default and a day's step of 0.5); the expectation held once the slow weights
were slow and the store sparse.

**Spiking on the board (4.6).**

- *One neuron* (leak 0.05 - 0.0500031 as the board holds it - threshold 1, window 4 000) against the analytic rate of
  its quantized drive, within the bound of decision 51 at every drive: 0 and 0 spikes a step below the threshold (0.5,
  0.98), then 0.01675 against 0.01685 (1.05), 0.04550 against 0.04669 (1.5), 0.10001 against 0.10042 (2.5) and 0.27426
  against 0.28135 (6) - the discrete rate a little below the continuous one, as the circuit's floating-point neuron is.
- *A circuit* (5.7's: two inputs, five hidden and two readout Lif neurons, leak 0.1, synapse 0.1, window 20 000): the
  board's free rates within 1.6e-4 of the floating-point circuit carrying its values and Lif parameters; both within
  0.0088 of their rate model's equilibrium. A lesson (`beta = 1`, 200 000 steps): its spike-count contrast agrees in sign
  with the rate model's on all 11 of its larger entries, the largest difference 0.243 of the largest entry - the
  floating-point circuit's own contrast: 11 of 11, 0.243 - and with the floating-point circuit's on all 15 of its larger
  entries, differing by 0.053 of the largest. With a Q1.15 trace instead (decision 50) the board's contrast agreed with
  the floating-point circuit's on only 12 of 15, differing by 0.55.
- *Refusal and determinism*: a settle with one window and a tolerance of zero refuses and leaves the committed potentials,
  currents and traces bit for bit; two engines of one circuit settle bit for bit alike; the golden vectors read back.
- *XOR* (5.7's spiking XOR: eight hidden Lif neurons, window 256, squared error toward 0.2 spikes a step, Adam 0.02,
  `beta = 1`, 200 lessons): settled in F64, 4/4 answered on the board, loss 2.0e-5, 1 080 steps a lesson; settled on the
  board, 4/4, loss 1.4e-6, 1 087 steps a lesson.
- *MNIST* (5.7's spiking circuit: 784-128-10, Lif hidden and readout neurons, window 256, squared error toward 0.2 spikes
  a step for the class, `beta = 1`, Adam 5e-3, batch 32, 10 000 training samples a pass; test accuracy after passes 1 /
  2 / 3, answered in F32 and on the board):

  | lessons settled | F32 answers | board answers | answers agreeing | steps a lesson | a pass (load) |
  |---|---|---|---|---|---|
  | on the board | 88.28 / 89.61 / 91.59% | 88.03 / 89.82 / 91.46% | 97.9-98.4% | 1 894 - 1 827 | 53-74 s (4-8) |
  | in F32 | 88.90 / 90.62 / 91.88% | 88.77 / 90.51 / 91.42% | 97.4-97.9% | 1 916 - 1 826 | 28-33 s (4-8) |

  Phase 1's floating-point run: 89.73% after one pass, 90.48% after two. Settling the lessons on the board changes the
  learning curve by a few tenths, as for rate circuits: the board teaches spiking circuits as F32 does. Answers agree on
  about 98% rather than 99.99%: spike timing is chaotic, and where two readouts' rates are within a spike or two the
  one rounding that moves a spike changes the answer. About 780 steps an answer. Per answering step a row, 25-30 of the
  138 Lif neurons spike and cause 273-314 synaptic events - against the 2 560 multiply-adds of the rate engine's dense
  recurrent transport (the 128 x 10 block, both ways) - additions only. On 64 accumulate lanes with 4.2's 40 cycles of
  pipeline a step (*planning*), an answer would take about 780 x 45 = 35 000 cycles, 0.35 ms at 100 MHz, against 21 us
  for the rate circuit's (5.9): spiking costs the board time in steps, and saves it multipliers. 6-15% of the hidden
  neurons' constants clipped at Q4.14's range (decision 54), the circuit being uncertified and its input weights
  growing as it learns.

**Checkpoints.** A restore into an agent made from another seed lives exactly the saved one's next 100 moments, and a
restore into the agent that saved, 100 moments on, lives them again (5.8's test, extended; the generator's four words
compared). A checkpoint of another shape and one of version 1 are refused.

**The temperature of a certified circuit (open question 10).** Restrained 784-128-10 MNIST (`Restrain(0.9)` after every
step, batch 32, Adam 1e-3, `beta = 0.5`, lessons settled in F32), test accuracy after five epochs, four seeds (two at
0.15), answered in F32 and on the board alike (agreeing on 99.98-100%):

| `T` | accuracy | sweeps a lesson (epoch 1 / 5) | sweeps an answer |
|---|---|---|---|
| 0.25 | 91.28% (90.86-91.56) | 15.3 / 16.1 | 3.5-3.8 |
| 0.15 | 93.08% (92.96-93.19) | 48 / 51 | 3.7-3.8 |
| 0.1 | 93.67% (93.54-93.81) | 32 / 39 | 3.7-3.8 |
| 0.05 | 93.88% (93.69-94.12) | 25 / 41 | 3.1 |

0.05 is higher than 0.1 on every seed (by 0.15-0.31), for about the same sweeps a lesson and fewer an answer: decision
55. (0.15 took more sweeps a lesson than both 0.1 and 0.05, on both seeds; not investigated.)

**Calm moments (open question 8).** 5.5's bandit and reversal, 40 lives of 4 000 moments, blocks of 250, regret with
95% intervals:

| | greedy when calm (default) | sampling when calm |
|---|---|---|
| bandit, moments 500-2 000 | 0.030-0.042 | 0.054-0.062 |
| bandit, moments 2 000-4 000 | 0.042-0.057 | 0.045-0.061 |
| reversal, after the swap: first 250 | 0.229 +- 0.023 | 0.226 +- 0.021 |
| reversal, then to moment 4 000 | 0.065-0.085 | 0.095-0.105 |
| bandit, calm moments, moments 500-4 000 | 0.86-0.93 | 0.88-0.94 |

Sampling when calm costs regret and buys nothing: a calm moment learns nothing from what it tried. The second remedy -
arousal's level following `EntropyGain` times the policy's entropy over `ln(actions)` - means of the blocks:

| entropy gain | bandit 750-2 000 | bandit 2 500-4 000 | reversal 2 500-4 000 | calm, bandit 2 500-4 000 |
|---|---|---|---|---|
| 0 (default) | 0.035 | 0.047 | 0.074 | 0.89 |
| 1 | 0.049 | 0.042 | 0.068 | 0.81 |
| 2 | 0.040 | 0.035 | 0.082 | 0.74 |
| 4 | 0.056 | 0.033 | 0.087 | 0.65 |

(each block's interval about +-0.013) - neither remedy is taken (decision 57).

### 5.11 Results of phase 5 (2026-10-10)

`examples/bandit_settle.olang` (F32) with olang db2af5d on the shared four-core machine; regrets are deterministic, times
were taken at loads of 5-7. Every agent has 64 hidden neurons and 4 contexts of 16 numbers, a block is 250 moments, and
intervals are 95%. Three agents: without a consolidator; with one and no nights (its store learning by day, its slow
part never taught, its quiet readout answering 0); with one and a night every 500 moments.

**Expected, written before the full runs** (after a two-life trial of the return task): "bandit - with nights, regret
within the intervals of the agent without a consolidator; reversal - with nights, recovery after the swap slower (the
slow part holds the old values until a night consolidates the store's new ones); return - the first block back in A
near the reversal's first block after its swap without a consolidator (about 0.2), well below it with nights (0.1 or
less), a consolidator without nights between the two."

**Retention, lived** (the return task: 2 000 moments in surroundings A, 2 000 in B - the same contexts, each one's best
and worst arms swapped, the surroundings' code of 8 signs telling them apart - and 2 000 back in A; 40 lives):

| moments | 1 750-2 000 (A) | 2 000-2 250 (B begins) | 2 250-2 500 | 3 750-4 000 | 4 000-4 250 (A again) | 4 250-4 500 | 5 750-6 000 |
|---|---|---|---|---|---|---|---|
| no consolidator | 0.043 +- 0.016 | 0.211 +- 0.017 | 0.086 +- 0.023 | 0.084 +- 0.022 | 0.193 +- 0.023 | 0.129 +- 0.029 | 0.109 +- 0.033 |
| a consolidator, no nights | 0.022 +- 0.011 | 0.159 +- 0.019 | 0.049 +- 0.020 | 0.038 +- 0.016 | **0.069 +- 0.014** | 0.028 +- 0.015 | 0.024 +- 0.011 |
| a consolidator and nights | 0.022 +- 0.011 | 0.178 +- 0.017 | 0.052 +- 0.017 | 0.030 +- 0.013 | **0.079 +- 0.014** | 0.027 +- 0.014 | 0.014 +- 0.008 |

The expectation held for the agent alone and failed for the nights. The store keeps what each surroundings' actions
brought apart - its codes of the two surroundings' observations share few cells - so an agent coming back to A finds
A's values recalled where it left them: a third of the regret of an agent without it in the first block back, a fifth
of it afterwards. The nights add nothing to that. They cannot: with a key the nights do not move and a dawn exact on
every cue kept (as here, eight observations), a night leaves the recall at every observation already seen as it was
(5.4.2's dreams written back), and changes it only where the slow part generalizes - at observations never seen. Here
that is B's at its start, where the slow part answers what it learned in A, which is B's worst: 0.178 against 0.159.
Late in A again, after nights over both surroundings' cues, the nights' agent's regret is a little lower (0.014 against
0.024, the intervals overlapping).

The first runs keyed the store by `[alpha u, rho h]` as 1.9 does (20 lives): the nights' agent lost more coming back to A
- 0.095 +- 0.023 against 0.068 +- 0.022 without nights, and 0.046 against 0.018 in the next block - because a night that
taught the slow part A moved B's keys (the state is part of them) toward A's, and B's days then wrote into A's cells
(decision 65). Smaller and larger store rates (0.1: 0.079 with nights, 0.076 without), a store twice as large and half
as dense (14 400 cells, 36 active: 0.078 and 0.065) and nights only at the phases' ends (0.091) did not change that.

**The bandit and the reversal** (4 000 moments, 20 lives): a consolidator lowers the regret from the first block on
(bandit, moments 0-250: 0.143 +- 0.015 against 0.186 +- 0.015 without; 3 750-4 000: 0.006 +- 0.004 against 0.047 +- 0.025;
reversal, the 250 moments after the swap: 0.188 +- 0.029 against 0.239 +- 0.036, and 0.029 +- 0.017 against 0.086 +-
0.031 at the end), and the nights change no decision at all: every observation repeats exactly, so a night leaves every
recall as it found it and the lives with and without nights are the same to the third decimal in every block - the
reversal's slower recovery expected with nights did not happen either.

**Observations drawn around their contexts** (`noise=0.1` a number, the return task, 20 lives): nights did not help
here either (the first block back in A 0.095 +- 0.023 with nights, 0.094 +- 0.029 without; afterwards 0.055 against
0.039), though every observation is new and the slow part's generalization is all a store keyed by them cannot give.
The store's sparse codes of nearby observations already overlap, which is generalization of its own kind.

**Checks** (`make test`): a masked day writes only what was observed (the store, the consolidator and the agent each);
a night keeps the agent's recall at every cue but for what dawn's store could not hold apart; a checkpoint restores a
consolidating agent into one of another seed exactly - its next 100 moments, a night among them, the same - and agents
with and without a consolidator refuse each other's checkpoints.

### 5.12 Results of phase 9 (2026-10-10)

`examples/nights.olang` (the ring) and `examples/bandit_settle.olang` (transfer, return, reversal, a bandit of 64
contexts), F32, with olang efdb82c's compiler (oannc4) on the shared four-core machine at loads of 2-5. 40 lives a
configuration, intervals 95%; every agent has 64 hidden neurons, a consolidator 2.14's defaults, nights every 500
moments. Regrets are deterministic; times are not. A **paired** difference is taken life by life between two agents of
one seed that differ in the one setting named: they live the same moments until the first difference matters, so
before the first night a night's difference is exactly 0. A random arm's regret is about 0.31 on the ring and 0.375 in
the bandits.

**What complementary learning systems predicts**, the expectation the tasks were built to test: nights pay at new
observations like seen ones (the slow part generalizes, a pattern-separating store does not), at noisy and partial
cues (a smooth learner tolerates what moves a sparse code), when a second task would overwrite the first in the fast
store, and when there are more associations than the fast store holds apart; and they cost nothing at an observation
seen exactly (5.11).

**The ring** (2 000 moments on the 8 sector centres, then 1 000 anywhere on the ring). The test's regret - the agent's
answer / its consolidator's recall alone - and the regret lived anywhere afterwards:

| the associative memory at gain 1 (the default) | seen | new | noisy | partial | lived anywhere |
|---|---|---|---|---|---|
| no consolidator | 0.301 +- 0.021 | 0.258 +- 0.020 | 0.297 +- 0.019 | 0.307 +- 0.017 | 0.254-0.260 +- 0.021 |
| a consolidator, no nights | 0.139 / 0.039 | 0.126 / 0.038 | 0.200 / 0.081 | 0.239 / 0.143 | 0.123-0.130 +- 0.013 |
| a consolidator and nights | 0.139 / 0.039 | 0.113 / 0.035 | 0.154 / 0.063 | 0.219 / 0.148 | 0.109-0.117 +- 0.013 |
| **the memory at gain 0** | | | | | |
| no consolidator | 0.333 +- 0.016 | 0.290 +- 0.016 | 0.333 +- 0.014 | 0.341 +- 0.012 | 0.284-0.294 +- 0.012 |
| a consolidator, no nights | 0.035 / 0.033 | 0.037 / 0.034 | 0.087 / 0.079 | 0.149 / 0.139 | 0.044-0.045 +- 0.008 |
| a consolidator and nights | 0.035 / 0.033 | 0.032 / 0.030 | 0.057 / 0.054 | 0.153 / 0.150 | 0.035 +- 0.007 |
| nights less no nights, paired | 0 / 0 | -0.005 +- 0.002 / -0.004 +- 0.003 | **-0.030 +- 0.005** / -0.025 +- 0.006 | +0.004 +- 0.013 / +0.011 +- 0.011 | **-0.009 to -0.010** (+- 0.003-0.006) |

(intervals of the consolidating agents' test entries 0.005-0.015.) Three things show. The agent alone learns nothing of
the ring in 3 000 moments - the actor is slow, and the associative memory's linear read contradicts itself, opposite
points' keys being each other's negatives with the same answers. The consolidator's store alone holds the seen points
and even the new ones (0.038): its sparse codes of points of a one-dimensional ring 22 degrees apart share cells, which
is generalization of its own, local kind. And the nights add what the slow part's smoothness gives beyond it: a third
less regret on noisy cues, a fifth less living anywhere, a little at the new points - nothing at the seen ones, and
nothing at the partial ones. With the memory at its default gain the agent's answer is three to four times its own
recall's regret: the memory's read drives the readout against what the consolidator knows (below).

**Transfer** (A, then B under a new code with A's answers; regret by block of 250 moments):

| moments | 1 750-2 000 (A) | 2 000-2 250 (B begins) | 2 250-2 500 | 2 500-2 750 | 3 750-4 000 |
|---|---|---|---|---|---|
| no consolidator | 0.043 +- 0.016 | 0.052 +- 0.019 | 0.046 +- 0.020 | 0.045 +- 0.020 | 0.053 +- 0.018 |
| a consolidator, no nights | 0.022 +- 0.011 | 0.050 +- 0.013 | 0.022 +- 0.010 | 0.027 +- 0.011 | 0.022 +- 0.014 |
| a consolidator and nights | 0.022 +- 0.011 | **0.030 +- 0.009** | 0.013 +- 0.008 | 0.017 +- 0.010 | 0.014 +- 0.008 |
| nights less no nights, paired | 0 | **-0.020 +- 0.011** | -0.009 +- 0.012 | -0.009 +- 0.014 | -0.008 +- 0.016 |

The store does not know B's observations - half like A's, its codes share few cells - so without nights the agent with
a consolidator starts B as badly as an agent without one (0.050 against 0.052); the slow part, taught A at night,
answers B as A, which is right here. Where B conflicts with A (5.11's return task) the same generalization costs:
0.178 +- 0.017 against 0.159 +- 0.019 at B's start (paired +0.019 +- 0.013, measured again in this phase).

**Interference, and a transient store** (the return task: A, a conflicting B, A again; a store with a half-life of 500
moments, `recallhalflife=500`):

| moments | 2 000-2 250 (B begins) | 3 750-4 000 (B) | 4 000-4 250 (A again) | 4 250-4 500 | 5 750-6 000 |
|---|---|---|---|---|---|
| a permanent store, no nights (2.14) | 0.159 +- 0.019 | 0.038 +- 0.016 | **0.069 +- 0.014** | 0.028 +- 0.015 | 0.024 +- 0.011 |
| a permanent store and nights | 0.178 +- 0.017 | 0.030 +- 0.013 | 0.079 +- 0.014 | 0.027 +- 0.014 | 0.014 +- 0.008 |
| a transient store, no nights | 0.172 +- 0.015 | 0.042 +- 0.015 | **0.145 +- 0.018** | 0.070 +- 0.021 | 0.045 +- 0.016 |
| a transient store and nights | 0.189 +- 0.018 | 0.044 +- 0.019 | **0.088 +- 0.019** | 0.037 +- 0.019 | 0.027 +- 0.015 |

Paired, back in A: nights against none with the transient store -0.057 +- 0.022 (and -0.032 to -0.018 in the blocks
after); the transient store with nights against the permanent one without, +0.019 +- 0.019. So complementary learning
systems' account holds as stated - a fast store whose traces fade forgets the surroundings left for another, and nights
save most of it into the slow part - but the permanent sparse store, separating the surroundings' patterns, keeps it
better with no nights at all. Interference in the store is what pattern separation already prevents (5.11); the nights
are needed only by a store that forgets.

**Capacity.** Sixty-four random contexts (no structure for a slow part to find), 4 000 moments: nights change nothing
(every block within +-0.003, paired), with the default store (2 400 cells for the 16 numbers, 16 active) or a
small one (300 cells: +0.010 to +0.018 of regret, which the nights do not recover). The ring with 64 training points
(structure to find): nights lower the noisy cues' regret (-0.017 +- 0.011) and nothing else measurably, and a store of
240 cells costs about +0.01 everywhere, nights or not. The agent learns from few moments (the calm gate, open question
8): with many contexts each is written a few times at rate 0.2, and the night consolidates those weak values, mistakes
included, as they are - a slow part fitting the dreams does not extract more than the dreams hold.

**Which memory drives the readout** (from the ring's gap between answer and recall, then checked on the bandit tasks,
a consolidator without nights; paired):

| | memory gain 1 | memory gain 0 | paired |
|---|---|---|---|
| ring, the test's new points | 0.126 | 0.037 | - |
| return, A again: 4 000-4 250 | 0.069 | 0.021 | **-0.048 +- 0.017** |
| return, the end: 5 750-6 000 | 0.024 | 0.004 | -0.020 +- 0.012 |
| reversal, after the swap: 2 000-2 250 | 0.179 | 0.223 | **+0.044 +- 0.024** |
| reversal, the end: 3 750-4 000 | 0.026 | 0.059 | +0.033 +- 0.038 |
| return with nights, B begins | 0.178 | 0.194 | +0.015 +- 0.020 |
| return with nights, A again | 0.079 | 0.026 | **-0.053 +- 0.015** |

The associative memory's linear read hurts wherever answers are not linear in the observation - the ring - or where
two surroundings with conflicting answers share most of their observations (its keys overlap by half, so B's writes
overwrite A's); it helps where one observation's answer changes, its fast store taking a new value in one write where
the consolidator's store moves at 0.2 a write. Without the memory, nights cost more at a conflicting B's start (0.194
against 0.138 without nights, paired +0.055 +- 0.016): the slow part's generalization then drives the readout alone.

**The reservoir** (the ring, memory at 0, nights; paired against every cue kept, 450 +- 19 of them): 128 cues - a night
19 ms instead of 53, regret within +-0.003 everywhere but the partial cues (+0.009 to +0.011 +- 0.010); 32 cues - 4.8
ms, the noisy cues +0.007 to +0.009 +- 0.007, the partial +0.024 to +0.028 +- 0.012. A night costs about 0.12 ms a cue
kept (60 passes, 16 slow neurons). A cap of 1024 changes no decision in the return task's lives (8 lives compared
line for line): they keep fewer.

**Cost** (one thread, loads 2-5): on the ring a moment costs 0.016-0.025 ms without a consolidator and 0.086-0.094 ms
with one (a store read at every settle, a day at every moment that learns), a night 50-57 ms over 410-450 cues - 0.1 ms
a moment at a night every 500 moments. A transient store's fade is one multiplication a moment and a fold of the table
(3 600 x 4 numbers) every 500 moments at a half-life of 500: the return task took 45.1 s with it and 44.7 s without.

**Checks** (`make test`): a fading store reads as the table multiplied by hand, its fade folded exactly; a reservoir of
16 cues of 200 keeps each quarter of the days about equally often (163, 157, 161, 159 of 160, over 40 consolidators);
a transient agent with a reservoir, saved with a fade pending, restores into an agent of another seed and lives its next
100 moments, a night among them, exactly as the saved one.

### 5.13 Results of phase 10 (2026-10-10)

`examples/nights.olang` and `examples/bandit_settle.olang` (F32), olang ada716d's compiler (oannc5), the shared
four-core machine. 40 lives a configuration, 80 for the mixed task; intervals 95%; every agent has 64 hidden neurons and
a consolidator with 2.14's settings unless a row says otherwise; nights every 500 moments where a table says nights.
Paired differences as in 5.12 (`bench/paired.olang`). Columns are blocks of 250 moments named by their last moment.

**Which memory drives the readout (question 15).** The agent as it was (both reads at gain 1), the weighed reads (the
drive `2 ((1 - Mix) m + Mix c)`), the associative memory off with the recall at gain 1 (5.12's gain 0), and the
recall alone at gain 2:

| | ring, new points (test) | ring, lived anywhere | return: B begins | return: A again | reversal: after the swap | 64 contexts: 3 750-4 000 |
|---|---|---|---|---|---|---|
| both at 1 | 0.126 +- 0.013 | 0.127 +- 0.012 | 0.159 +- 0.019 | 0.069 +- 0.014 | 0.179 +- 0.018 | 0.228 +- 0.011 |
| weighed | 0.043 +- 0.010 | 0.044 +- 0.007 | 0.120 +- 0.014 | 0.020 +- 0.008 | 0.153 +- 0.017 | 0.196 +- 0.016 |
| the recall alone at 1 | 0.037 +- 0.008 | 0.045 +- 0.006 | 0.138 +- 0.014 | 0.021 +- 0.013 | 0.223 +- 0.023 | - |
| **the recall alone at 2** | **0.031 +- 0.007** | **0.035 +- 0.006** | **0.108 +- 0.015** | **0.023 +- 0.011** | **0.161 +- 0.018** | **0.164 +- 0.010** |

(no nights; the ring lived anywhere is moments 2 000-3 000, after the test.) Weighing beats both reads at 1 everywhere,
by a third to two thirds - the reversal included, where the memory had helped (5.12): right after the swap the recall's
share falls from 0.91 to 0.82 for a block and climbs back to 0.95 as the store relearns. Elsewhere it settles at
0.94-0.97 (`WeighRate` 0.03 and 0.3 measure the same within the intervals). But the recall alone at the same total gain
does as well within the intervals in every column and better beyond them on the 64 contexts - paired against the
weighing: the ring's new points -0.012 +- 0.012 and lived -0.009 +- 0.008, B's start -0.012 +- 0.019, back in A
+0.002 +- 0.012, the reversal +0.008 +- 0.024, the 64 contexts' end -0.032 +- 0.017. So 5.12's finding that the
memory helps after a reversal was the readout's drive, not the memory: the recall alone at gain 1 recovers slowly
(0.223), at gain 2 as fast as both together (0.161). With nights and with noisy observations the same: the return with
nights B's start 0.178 / 0.167 / 0.161 and back in A 0.079 / 0.034 / 0.025 (both / weighed / the recall at 2); noisy
(`noise=0.1`, no nights) back in A 0.085 / 0.032 / 0.028. The transfer task's B begins at 0.030 / 0.023 / 0.015.

**The drive's gain.** The recall alone, no nights:

| gain | return: B begins | return: A again | reversal: after the swap | 64 contexts: 3 750-4 000 | ring, lived anywhere |
|---|---|---|---|---|---|
| 1 | 0.138 +- 0.014 | 0.021 +- 0.013 | 0.223 +- 0.023 | - | 0.045 +- 0.006 |
| 1.5 | 0.118 +- 0.014 | 0.020 +- 0.009 | 0.170 +- 0.013 | 0.158 +- 0.010 | - |
| 2 | 0.108 +- 0.015 | 0.023 +- 0.011 | 0.161 +- 0.018 | 0.164 +- 0.010 | 0.035 +- 0.006 |
| 3 | 0.099 +- 0.015 | 0.012 +- 0.006 | 0.145 +- 0.016 | 0.157 +- 0.009 | 0.036 +- 0.005 |
| 4 | 0.089 +- 0.012 | 0.007 +- 0.004 | 0.143 +- 0.016 | 0.160 +- 0.010 | 0.041 +- 0.006 (*) |

(*) ring blocks 2 250-3 000 at gain 4 as at 2-3 within the intervals, its new points' test 0.035 against 0.031. The
drive's gain is an inverse temperature on the recalled values - with values of rewards in `[-1, 1]` and the readout's
`T = 0.25`, a gain of 1 makes a recalled difference of 0.6 a factor of about 11 in the policy's odds, a gain of 2 about
120 - and on these stationary four-armed tasks greedier pays. That is a question of exploration, not of which memory
(open question 18). An agent without a consolidator gains from a doubled memory gain too where one observation's answer
changes - the reversal's block after the swap 0.229 +- 0.023 at 1, 0.181 +- 0.020 at 2 (paired -0.048 +- 0.028) - and
nothing beyond the intervals elsewhere (the return -0.015 to -0.030 +- 0.019-0.032, the ring and both bandits within
+-0.005).

**Partial cues (question 16).** Observations lacking numbers, the agent told which (`known`), with and without
completion. The test's partial cues (the training points with half their numbers missing; consolidator, nights) and
lives where half the moments' observations each lack every number with probability 1/2 (`missing=0.5`; the ring with
`partial`'s half):

| | whole observations | half missing | half missing, completed |
|---|---|---|---|
| ring test, partial cues: the answer, the recall (the recall alone at 2) | 0.030 / 0.028 (the seen points) | 0.144 / 0.145 | **0.030 / 0.029** |
| the same, both reads at 1 | 0.139 / 0.039 (seen) | 0.219 / 0.148 | **0.140 / 0.040** |
| ring, training (moments 250-2 000) | 0.036 +- 0.010 | 0.108 +- 0.007 | **0.043 +- 0.010** |
| ring, lived anywhere (2 000-3 000) | 0.031 +- 0.006 | 0.087 +- 0.005 | **0.036 +- 0.008** |
| bandit, no consolidator (250-4 000) | 0.042 +- 0.009 | 0.061 +- 0.009 | **0.041 +- 0.007** |
| bandit, a consolidator (250-4 000) | 0.011 +- 0.005 | 0.029 +- 0.004 | **0.007 +- 0.003** |
| return with nights: B begins | 0.161 +- 0.015 | 0.243 +- 0.018 | **0.180 +- 0.015** |
| return with nights: A again | 0.025 +- 0.010 | 0.112 +- 0.021 | **0.044 +- 0.016** |
| return with nights: the rest of A (4 250-6 000) | 0.008 +- 0.005 | 0.093 +- 0.017 | **0.008 +- 0.006** |

(the recall alone at 2 unless a row says otherwise, familiarity off - its test 0.030 at the seen points against 5.12's
0.139, decision 77.) Completion answers a partial cue of a point seen as the point itself: the ring's observations lie
in a plane of the 16 numbers, so any 8 of them tell where on the ring the point is, and the conditional mean puts it
there - the answer's regret 0.030, the whole point's. Lived, completed observations cost what whole ones do within the
intervals (paired, the ring lived +0.005 +- 0.008, the bandit without a consolidator -0.002 +- 0.011); uncompleted
ones cost from half as much again (the bandit without a consolidator) to eleven times as much (the rest of the
return's A). The return task's B starts dearer half missing even
completed (0.180 against 0.161): what is missing includes B's code, and the completer, having learned only A until
then, fills it with A's.

**Generalization as a bet (question 17).** The recall alone at 2, nights every 500 moments; the mixed task (80 lives:
each life meets one new surroundings sharing A's answers and one conflicting with them) by kind of surroundings, its
first 250 moments and the next 250:

| | conflicting: first | conflicting: next | sharing: first | sharing: next |
|---|---|---|---|---|
| the guess at weight 1 (the agent as it was) | 0.167 +- 0.013 | 0.044 +- 0.013 | 0.051 +- 0.015 | 0.019 +- 0.008 |
| at weight 0 | 0.124 +- 0.012 | 0.037 +- 0.011 | 0.066 +- 0.011 | 0.019 +- 0.009 |
| **learned, `GuessRate` 0.03** | **0.111 +- 0.011** | **0.029 +- 0.010** | **0.047 +- 0.012** | **0.018 +- 0.008** |
| learned, 0.1 | 0.123 +- 0.012 | 0.043 +- 0.011 | 0.047 +- 0.011 | 0.019 +- 0.008 |

Paired against weight 1: weight 0 -0.043 +- 0.016 where the new surroundings conflict and +0.015 +- 0.015 where they
share; learned at 0.03, -0.056 +- 0.013 and -0.004 +- 0.011. The tasks of 5.12 (paired against weight 1): the transfer's
B start (0.015) +0.039 +- 0.012 at weight 0 and +0.006 +- 0.005 learned; the return with nights' B start (0.161) -0.049
+- 0.020 and -0.039 +- 0.019; the ring's partial cues +0.021 +- 0.010 at weight 0, -0.003 +- 0.006 learned, its lived
regret +0.008 +- 0.005 and -0.001 +- 0.004; the reversal, the bandit and the 64 contexts learned within +-0.007. The
learned weight ends a life at 0.76-0.95: the first outcomes at a conflicting surroundings' observations send it down for
as long as they last, and a familiar stretch brings it back toward 1. On the agent as it was (both reads at 1) the bet
weighed less - the guess was half of a drive beside a memory read pulling elsewhere - and learning it bought nothing
beyond the intervals (mixed, 40 lives: -0.017 +- 0.019 conflicting, -0.016 +- 0.019 sharing).

**The agent as it was against the agent as it is** (2.14's settings, both reads at gain 1, against the defaults now:
the recall alone at 2, familiarity with the learned guess, completion; nights every 500 moments; paired):

| | as it was | as it is | paired |
|---|---|---|---|
| ring: new points (test) | 0.113 +- 0.013 | **0.029 +- 0.008** | -0.085 +- 0.014 |
| ring: lived anywhere | 0.113 +- 0.011 | **0.030 +- 0.007** | -0.083 +- 0.012 |
| ring, half the moments half missing: lived anywhere | 0.163 +- 0.005 | **0.040 +- 0.009** | -0.122 +- 0.011 |
| ring, the same: partial cues (test) | 0.243 +- 0.009 | **0.042 +- 0.013** | -0.201 +- 0.017 |
| return: B begins | 0.178 +- 0.017 | **0.121 +- 0.018** | -0.057 +- 0.020 |
| return: A again | 0.079 +- 0.014 | **0.023 +- 0.009** | -0.056 +- 0.014 |
| return, noisy (`noise=0.1`): B begins / A again | 0.193 / 0.097 | **0.146 / 0.043** | -0.047 +- 0.016 / -0.054 +- 0.018 |
| reversal: after the swap | 0.179 +- 0.018 | **0.156 +- 0.014** | -0.024 +- 0.022 |
| transfer: B begins | 0.030 +- 0.009 | **0.021 +- 0.009** | -0.009 +- 0.014 |
| mixed (80 lives): conflicting, first 250 moments | 0.187 +- 0.011 | **0.111 +- 0.011** | -0.076 +- 0.014 |
| mixed: sharing, first 250 moments | 0.078 +- 0.017 | **0.047 +- 0.012** | -0.030 +- 0.013 |
| bandit, 4 contexts: first block / 3 750-4 000 | 0.140 / 0.005 | **0.089 / 0.006** | -0.051 +- 0.011 / +0.001 +- 0.005 |
| bandit, 64 contexts: 3 750-4 000 | 0.230 +- 0.011 | **0.171 +- 0.011** | -0.058 +- 0.013 |

The four-context tasks' first blocks fall by about a third (0.138-0.140 to 0.089, the recall's stronger drive), and
every difference but the reversal's, the transfer's and the four-context bandit's end is beyond its interval.

**Cost** (one thread, interleaved runs of 10 lives at loads of 2-7): a moment on the ring 0.082-0.085 ms as it was and
0.077-0.083 as it is, a night 53-55 ms against 45-47 (over 413 and 435 cues kept); the return task's 10 lives 18.0-18.9
s against 19.1-19.6 s - familiarity's gather at every recall and scatter at every day's write, about 4%.

**Checks** (`make test`): the weigher's share by hand at rate 1, toward the forecast nearer the outcomes, toward the
memories when noisy outcomes favour them, and at its prior where the forecasts agree; the guesser's weight by hand
through an unfamiliar and a familiar outcome, to 0 and 1 under wrong and right guesses, fixed at rate 0; completion of a
point of a learned plane from 3 of its 6 numbers within 0.01, the known numbers kept, nothing learned or every number
known leaving the observation as it was; the store's familiarity halfway to 1 a write at rate 1/2, only for the outputs
written, unchanged by a fade, a fold and a clear, and 0 at a reading sharing no cell; an agent with all three on driving
its readout exactly as stated, and a checkpoint restoring its life - partial observations and a night among the next
100 moments - into an agent of another seed, which agents lacking any of the three refuse.

## 6. Decisions and open questions

**Decided**

1. **Order.** After the MNIST MLP, **transformers are built first and settling networks second.** Consequence: the
   kernels both need - the batch-1 GEMV path, the vectorized row reductions and softmax, and fast `exp`/`tanh` (section 3,
   items 1, 4, 6) - are built for the transformer round; the kernels only settling needs (`Ger` and the fused eligibility
   form, masked updates, absolute sums, top-k, the sparse-code products, CSR) follow in the second round.
2. **FPGA target: a PYNQ-Z2 board** (Zynq-7020: dual Cortex-A9 and programmable logic with about 53 k LUTs, 220 DSP
   slices and 140 BRAM36 blocks, about 4.9 Mbit; Vivado and Vitis HLS; PYNQ overlays driven from the ARM cores).
   Consequences in section 4: 16-bit fixed point on certified circuits, a 64-lane descriptor-driven engine, at most
   about 197 k resident 16-bit weights, learning on the ARM cores by default.
3. **Spiking set up from the start** (the user, answering open question 4: "We want spiking set up"): the neuron model
   is a closed enum with a working leaky integrate-and-fire variant (4.6), aimed at the PYNQ-Z2.

**Taken at implementation (phase 1, 2026-10-09)** - details within the design, each recorded where it applies:

4. **Where it lives**: `circuit.olang` inside oann (open question 2, as recommended).
5. **The gain counts recurrent synapses only** (1.2): a folded input block is a constant of the map, so it neither
   enters `kappa` nor is scaled by `Certify`, which multiplies every recurrent block by one factor. (The document had
   counted input blocks too; that bounds `|v|` for the board, which needs it as a separate check, but it is not the
   contraction's constant, and certifying with it would have shrunk the 784-wide input blocks to near nothing.)
6. **A phase nudged with `beta > 0` steps at `dt / (1 + beta lambda)`** (1.2), `lambda` the force's largest self-slope
   (`1 / (4 T)` cross-entropy, 1 squared error) - without it the default lesson (`beta = 0.5`, `T = 0.25`) refused
   every plus phase on XOR. `Rate(beta)` and `Budget(tolerance, beta)` use that step.
7. **Input regions** are linear by default (the drive is the activity) and have no bias; any region may take a drive.
8. **Handles and recording follow `Graph`**: `Plan(r)` draws the weights (Glorot-uniform, masked by a Bernoulli draw
   where `density < 1`), `Project` takes no generator; the method making a hidden region is `Hidden` (the sketch's
   `Region` would read as a constructor of the handle type).
9. **The double buffer is per phase, committed and candidate** (2.10); a sweep runs in place in the candidate.
10. **Damping continues** from where an attempt ended rather than restarting from the warm start.
11. **Tolerances, nudges and certificate targets are `F64`**, whatever `T` is, as std/linalg's `alpha`/`beta` are.
12. **`LessonTolerance` holds `kappa` at most 0.9** and `Budget` is twice the certified need (q at most 0.95), at least 128.
13. **The nudge** is per phase and applies to every readout by its own `Cost`; a cross-entropy readout reads
    `LabelData`, a squared-error one `TargetData`. The temperature lives in the readout's cost.
14. *(Superseded by decision 17.)* **`circuit.Adam`** steps the parameter region until oann's optimizers take a flat region.
15. **`DriveGrad`** is the gradient of the cost averaged over the rows, as `Contrast`'s is.
16. **Spiking** (4.6): rates as spike counts over windows; residual = a rate's change from the last window; the
    nudge reads a per-neuron rate trace (time constant a quarter window); reset by subtraction; a synaptic current
    per neuron; `LifRate` as the rate model; the default `LifNeuron(leak 0.1, threshold 1, synapse 0.25, window 256)`.

**Taken in phase 2 (2026-10-09)**

17. **optim takes flat regions**: `FlatAdamW` and `FlatSgd` step any `params`/`grads` pair of arrays, sharing their
    loops with `AdamW` and `Sgd` (decision 14's follow-up); `circuit.Adam` is gone, circuits expose `ParamData()` and
    `GradData()`.
18. **The agent's circuit** (2.11): observation and context trace one-way into the first hidden region, a reciprocal
    chain, the memories' read a drive on the readout, the critic on every hidden activity.
19. **One stream per agent** (open question 5): the moment loop needs no per-stream eligibility; many lives are many
    agents.
20. **The fast memory's decay is lazy**, so calm moments touch no memory (5.3.4). The context trace follows every
    moment (it is activity, not learning). The critic's trace only decays on calm moments.
21. **Tuned defaults**: actor's Adam `3e-4` (was `1e-3`), `c_0 = 0.2` (was 0.02), `alpha_s = 0.003` (was 0.01),
    `theta = 1.5` (was 2), measured on the reversal task (5.8). With the starting values the agent stopped learning at
    the end of its critical period and never recovered from a reversal.
22. **Rewards in 5.5 are -1 or +1**, the range 1.5 asks for. With 0 or 1 every tried arm looked better than an untried
    one (the memory stores rewards, an untried arm reads 0), which favoured repeating.
23. **A terminal outcome** clears the eligibility and the critic's trace after learning from it; the context trace
    persists.
24. **Arousal reads the clipped TD error**, and `V(x_prev)` is evaluated with the critic as it is when the outcome
    arrives.
25. **Refusals** (2.11): a refused free settle refuses the moment; a refused nudged phase or re-settle keeps the
    moment, counted.
26. *(Superseded by decision 48.)* **The agent owns its generator** (made from a seed), so a checkpoint can carry it as
    the seed and the numbers drawn. std/rand exposes no state, so a restore replays the draws and goes into a new agent
    of the same shape and seed.
27. **Checkpoints** are written in the safetensors layout, with every tensor stored as F64 (2.11).
28. **The critic's weights are F64** whatever `T` is.
29. **The circuit is made by a function**, working around repro/ctorpush.
30. **Pinning is detected** by the rate of repeating the last action when the best arm changed (5.8).

**Taken in phase 3 (2026-10-09)**

31. **The board engine is data**: a descriptor table of 8 words per region and 8 per block, weights, biases and three
    tables, with the formats and every operation stated in `board.olang`'s header - the simulation is the engine's
    specification (2.12), and plain `I16`/`I32`/`I64` arrays stand in for a `Q1_15` type.
32. **Formats 4.2 left open**: drives, biases and constants Q4.14 like potentials; an input's activity from its Q4.14
    drive through the activation unit (a linear input's `sat16(2 d)`, so a drive of exactly 1 reads `1 - 2^-15`);
    probabilities and forces Q.16 (17 bits), `dt` Q.16 unsigned, `beta` Q.14, `1/T` Q.10.
33. **Rounding**: the engine's shifts round to the nearest, halves up (`(x + 2^(k-1)) >> k`), as a DSP's rounding
    constant does; the processing system quantizes to the nearest, ties to even (its float unit's default); every
    saturation is counted.
34. **A block that does not fit Q1.15 carries a power-of-two shift** - only folded input blocks, which the certificate
    does not bound; and a constant or total beyond Q4.14's range saturates rather than having its own wider format,
    because a `tanh` or hard-sigmoid activity cannot tell (1.2's range question for the folded inputs, answered).
35. **The constant is rounded once a settle** to an 18-bit word and the total once a sweep (two roundings, rather than
    a 48-bit constant per neuron per row held through the settle).
36. **One activation unit, a table**: 1024 segments over `[-8, 8)`, each a base and a delta (two BRAM18 words), an
    8-bit interpolation fraction; the hard sigmoid uses the same table, exact between knots. Linear and `LifRate`
    relaxing neurons and spiking circuits are refused by the engine (spiking is phase 4 - decision 49).
37. **The cross-entropy force on the board**: `z = (s - max) / T` rounded to Q5.14 and clamped at -16, an exponential
    table of 1024 segments over `[-16, 0]`, a sum, and one division per neuron (to the nearest).
38. **The board's tolerance** is `max(floor(tau 2^14), 5)` steps of Q4.14 - 4.2's `max(tau, 3e-4)`, the floor covering
    the integer iteration's last cycle of a step or two.
39. **The board is validated against the circuit carrying the board's own values** (`StoreParams`, `StoreInputs`), so
    5.6's bound - `(tau_b + Delta + tau) / (1 - kappa)` with `Delta` the error of one evaluation of the map - covers the
    engine's arithmetic alone; the weights' rounding is a separate term (a fan-in times `2^-16`).
40. **Learning on the board is 4.4's default**: the engine settles, the states are read back, the contrast and the
    optimizer's step are taken in the circuit's precision on master weights, `Restrain(0.9)` keeps them certified and
    `Load` pushes the requantized copy after every step.
41. **Golden vectors**: `Dump` writes the image and the last settle as safetensors with integer dtypes, for a
    testbench to compare a hardware engine with, bit for bit.
42. **The sparse-code store**: `R`'s row `i` from a generator seeded by the seed and `i` (any row regenerates alone);
    the running mean follows the writes only (`MeanRate` 0.01), so a read changes nothing; a write moves the mean before
    coding; `Rate` 1 (one exposure stores); `K = ceil(0.05 Cells)`; a selected cell whose projection is not positive
    is inactive (0 in the code).
43. **Top-k** is a quickselect (median of three) on a copy, then a pass counting the larger and a pass collecting:
    ties go to the earlier position, positions come out increasing.
44. **Readout groups** are equal-sized groups of one readout region (heterogeneous groups are separate readouts); a
    class per group per row; an agent's joint action is one number, `sum_g Chosen[g] actions^g`, and its memory writes
    each group's chosen action with the shared reward.
45. **Sparse projections**: every projection that is not complete gets a pattern first - drawn by geometric gaps or
    sorted from given pairs - and then a weight per synapse, Glorot over the expected fan-in and fan-out, so the dense
    and sparse layouts of one seed are one circuit (this changes the draws of masked dense projections from phase 1;
    complete ones are unchanged). `Auto` is sparse at a density of at most 0.25 (5.9); a batch is transposed into
    feature-major once a sweep (one row used as it is). The kernels live in oann (`sparse.olang`) until something else
    needs them in std/linalg.
46. **On the board a sparse block is stored densely**, absent synapses as zeros: lanes that skip absent synapses (an
    index memory per lane) wait until a sparse circuit is to run there.
47. **The board runs whatever rate circuit it is given**, certified or not: the guarantees of 4.2 and 5.6 hold for
    certified circuits; an uncertified one is measured (5.9: the 96.6% MNIST circuit answers identically).

**Taken in phase 4 (2026-10-09)**

48. **Checkpoints keep the generator's state** (std/rand's `State`/`SetState`, format version 2; supersedes decision
    26): a restore needs no replay, so it goes into any agent of the saved one's shape and settings - made from another
    seed, or the agent that saved it, rolled back - and brings the saved seed (`Agent.Seed` is now mutable for it). A
    version 1 checkpoint is refused rather than replayed; none exists outside the tests.
49. **Spiking on the board engine** (4.6): Lif neurons in integers, the circuit's own dynamics a time step per sweep.
    Formats: potential and synaptic current Q4.14 (the rate engine's potential format), leak and synapse rate Q.16,
    threshold Q4.14, a spike one bit, the rate trace and its step Q.24, a window's count an integer; a rate is
    `min((count << 15 + window / 2) / window, 2^15 - 1)` - a divider, rounding to the nearest - and the residual and
    the tolerance are in steps of Q1.15, at least one (`SpikeTolerance`). The transport is events - each spike of the step
    before adds its column of weights into post, and for a reciprocal block its row into pre - so a spiking lane adds and
    never multiplies; exact in the 48-bit accumulator as the rate engine's sums are. The inputs stay rate-coded.
50. **The rate trace is Q.24, finer than an activity.** A trace following a rate over a window of 20 000 steps moves by
    about a twentieth of a step of Q1.15 a step, so a Q1.15 trace rounded its decay to a whole step and biased the
    nudge's force: the spike-count contrast then agreed with the floating-point circuit's in sign on 12 of 15 large
    entries, differing by 0.55 of the largest; with Q.24, on 15 of 15, differing by 0.053 (5.10). The force reads the
    trace as an activity, `min(rnd(tr, 9), 2^15 - 1)`.
51. **The spiking engine is checked statistically, not bit for bit against floating point** - spike timing is chaotic,
    so a difference of one rounding becomes a spike a step early or late. The checks: one neuron against the analytic
    rate, the per-step rounding stated as a drive error of `2^-15 / leak` (the rate lies between those of the drives that
    far either side, each within `f^2 / (1 - f) + 1 / window` of the formula); a circuit against the floating-point one
    carrying the board's values and Lif parameters (`LifOf`), and both against their rate model; the lesson's contrast
    against the rate model's. A hardware engine is still checked against the simulation bit for bit (`Dump`).
52. **A region's descriptor grows to 12 words** (leak, threshold and synapse rate of a Lif region, one word spare), and
    the golden vectors are version 2: the currents, spikes, traces and counts of a spiking engine, and its window and
    trace step among the scalars.
53. **The store's read shifts the slow part's target; it is no node of the graph.** With no gradient through it, the
    slow part learning `y - m` has exactly the gradient of the whole output `y = C h + c + m`, so 2.7's `Custom` op is not
    needed. By day the store reads before the slow part steps and writes the residual of the slow part after it, at the
    new key: the store holds what the slow weights miss as they now are.
54. **A Lif current beyond Q4.14's range saturates on the board**, as a rate neuron's constant does (decision 34). For
    a Lif neuron that is not harmless - a current of 8 fires about 0.79 spikes a step (leak 0.1, threshold 1) where one of
    10 or more would fire every step - but it caps only rates far above the 0.2 a step MNIST's readout is taught; there
    6-15% of the hidden neurons' constants clipped and the board answered as F32 did (5.10). Kept until a circuit needs
    the range.
55. **The readout temperature of a supervised circuit meant for the board is 0.05** (`board.Temperature`; open question
    10). Measured over four seeds and five epochs of restrained MNIST: 93.9% against 93.7% at 0.1 (higher on every seed,
    by 0.15-0.31) and 91.3% at 0.25, at about the sweeps a lesson of 0.1 (41 against 39) and fewer an answer (3.1 against
    3.7). An agent's policy is another matter: its life tolerance `T (1 - kappa) / 40` falls below the board's floor
    (`3.05e-4`) for `T` under about 0.12 at `kappa = 0.9`, so an agent on the board needs `T >= 0.12`; agents keep 0.25.
56. **Dawn writes in passes over keys coded once** (Kaczmarz's method), until every residual reads back within `1e-3`, at
    most 10 passes; dawn's writes do not move the store's mean. More passes recall the dreams more exactly - on random
    targets one pass left `slow + store` no nearer the dreams than the slow part alone (0.19 rms either way), 10 passes
    0.11, 100 passes 0.026 - but the dreams hold the day's interference too, and an exact dawn carries it from night to
    night: with slow learning by day, task A's recall after task B fell from 93% (one to three passes) to 91% (10) and
    85% (100); without it, the default, the passes changed nothing measurable (94-96%). 10 keeps most of the
    exactness. A pass costs a gather and a scatter a step once keys are coded (a night over 128 cues 0.5 s at 100
    passes, against 6.3 s coding every key every pass). Where the codes of similar keys share all their cells no number
    of passes separates them.
57. **Calm moments stay greedy, and arousal does not follow the policy's entropy** (open question 8's two remedies,
    both measured over 40 lives, 5.10). Sampling in calm moments raised the bandit's regret floor (0.035 to 0.057 over
    moments 750-2 000) and the reversal's (0.074 to 0.10 after it): exploration without learning costs choices and
    teaches nothing. Arousal rising with the policy's normalized entropy lowered the bandit's late floor (0.047 to 0.033
    at a gain of 4) but raised its early one (0.035 to 0.056), slowed recovery from a reversal at gains of 2 and 4 (0.074
    to 0.082-0.087), and spent calm moments (89% to 58-65%) - no setting better at all three. `Settings.CalmSamples` and
    `Settings.EntropyGain` keep both options, off.
58. **No slow learning by day by default** (`DayRate = 0`): the line search of 1.9 is built, but measured over 20 lives
    (5.10), a day's step of 0.5 let one day of task B move the slow weights so far that the night consolidated task A's
    corrupted recall (A kept at 32.7%, against 95.8% with no learning by day), and a step of 0.05 bought nothing
    measurable on its own (the slow part alone 55.9% after task A, against 51.9% for a store alone) while keeping less
    of A (91.4%). A neocortex that learns slowly is what complementary learning systems assume.
59. **The consolidator's store separates patterns**: 150 cells per number of its key, 0.5% of them active (at least 16) -
    against 1.6's 20 cells per number and 5% (Dasgupta et al.'s fly). With 5% a second task's writes landed on the first
    task's cells, the first task's dreams were the interference, and the night consolidated it: A kept at 78.9% with
    nights against 95.8% (5.10). Hippocampal pattern separation by sparse coding is the corresponding requirement of
    the theory. Twice the cells kept a little more (97.4%), at twice the cost of a code. store.olang's own default
    stays: it is 1.6's, and the store alone does not consolidate.
60. **A night replays every cue kept, from `h = 0`, with Adam started afresh** (rate 0.01, 60 passes, batches shuffled by
    the consolidator's own generator, every sequence starting at `h = 0`). The consolidator forgets no cue; a cap or a
    sampled replay waits for a task that needs it.
61. **The retention task's tasks look different**: each has a context of 8 random signs beside the shared symbols, as two
    surroundings of a life do - not one bit (5.10 measures one bit too).
62. **An agent may have a consolidator** (`Settings.Consolidate`, open question 11), off by default: its store lowered
    every task's regret (5.11), but it costs nine to twenty times a moment of an agent without one, and the nights add
    nothing measured yet. An agent without one lives exactly as before.
63. **One moment a sequence** (a window of one, from `h = 0`): the agent's context trace carries its history, and a
    longer window would need the last moments' observations at every recall. The consolidator keeps what each
    observation's actions brought.
64. **The day is gated by arousal, as the memories are**: the moments that learn write their outcomes and keep their
    observations as cues; a calm moment writes nothing (1.7's "no memory write").
65. **The agent's store is keyed by the observation alone** (`SleepSettings.StateInKey` off; 1.9's consolidator keeps
    the state in its key): a night moves the slow part's state, and with it which memories share cells. Measured on the
    return task (5.11), a state in the key let one surroundings' days write into the other's cells after a night (the
    first block back 0.095 against 0.068 without nights); keyed by the observation, a night leaves every recall it has
    seen as it was.
66. **Only what was observed is written**: the reward is the value of each group's chosen action, the others unknown -
    the slow part's target there its own output, the store's error there zero (`Day`'s and `Store.Write`'s `known`).
    Writing them as zero, or as anything else, would teach values nothing observed.
67. **The store learns by day at `RecallRate` 0.2**, the persistent memory's `c_0`: rewards are draws of +-1, and a
    store at rate 1 recalls the last one. Dawn writes at 1 (Kaczmarz to the dreams' residuals, which are not noisy).
68. **A quiet readout** (`SleepSettings.QuietReadout`): the slow part answers 0 until its first night, so an action never
    tried reads 0 rather than the untrained part's noise - a drive on the readout the actor would have to learn against.
69. **The recall is a drive on the readout beside the memories', at gain 1** (`RecallGain`), the same scale as the
    memories' read: values of rewards in `[-1, 1]`.
70. **Sleep is called by the life's owner** (`Agent.Sleep`), not by the agent: when a stretch of life ends - an episode,
    a day, a change of surroundings - is the world's to know. The bandit example sleeps every 500 moments.
71. **A checkpoint keeps the consolidator's store's projection seed, not the projection**: the projection is made again
    from it (`Store.Reseed`) when the restoring agent's own differs, as the agent's generator state goes into any agent
    of its shape.

**Taken in phase 9 (2026-10-10)** - open question 14, measured (2.15, 5.12):

72. **What an agent's nights are for** (open question 14, answered by measurement): generalization where observations
    recur only approximately - a new surroundings sharing old answers (B's first block 0.050 to 0.030), noisy cues (a
    third less regret), new points of a smooth rule (a fifth less, living anywhere on the ring) - and retention for a
    transient store. Not: an observation seen exactly, a partial cue, a store too small for its contexts, or
    surroundings conflicting with old ones, where they cost (+0.019 at their start; +0.055 without the associative
    memory). Sleep stays the caller's (decision 70), worth calling for a life whose observations come back only
    approximately and whose new surroundings tend to share old answers.
73. **The consolidator's store stays permanent; a transient one is an option** (`Settings.RecallHalfLife`, 0): with a
    half-life of 500 moments nights recover most of what it forgets (back in A 0.145 to 0.088) but never beat a
    permanent store without nights (0.069), whose pattern separation already protects it from interference. The fade is
    kept pending as one number (`Store.Fade`), so it costs nothing per read or write, and folded at a checkpoint.
74. **An agent's nights replay at most 1 024 cues** (`Settings.SleepCues`, a reservoir: a uniform sample of every moment
    that learned, from the consolidator's generator): a night costs about 0.12 ms a cue, and every cue kept grows it
    with the life without end. 128 of 450 cues measured within +-0.003 of every cue kept but for the partial cues
    (+0.01), 32 a little worse; 1 024 binds in no task measured, so every result of 5.11 and 5.12 stands. The
    consolidator alone keeps every cue by default (`SleepSettings.Cues` 0, decision 60), as `examples/sleep_retention`
    measures it.
75. **Nights are measured in pairs** (`perlife=1`): two agents of one seed live the same moments until the first night
    makes a difference, so a night's effect is taken life by life; and **generalization on a ring whose answers no
    linear read holds** (`examples/nights.olang`), tested with `Imagine` so the test changes nothing, on seen, new, noisy
    and partial observations.
76. **The associative memory stays in a consolidating agent** (gain 1): measured, it costs most where answers are not
    linear in the observation (the ring: 0.126 against 0.037) or where conflicting surroundings share most of an
    observation (back in A 0.069 against 0.021), and helps where one observation's answer changes (a reversal's first
    block 0.179 against 0.223). Neither memory alone is best everywhere: open question 15. *Superseded by decision 77.*

**Taken in phase 10 (2026-10-10)** - open questions 15-17, measured (2.16, 5.13):

77. **A consolidating agent's readout is driven by its recall alone, at `RecallGain` 2** (`Settings.RecallAlone`, on;
    open question 15): the two reads' former gains summed on the recall. Measured against both reads at 1, it lowers the
    regret on every task - the ring's new points 0.126 to 0.031, B's start in the return 0.159 to 0.108, back in A 0.069
    to 0.023, the reversal's block after the swap 0.179 to 0.161, the 64 contexts' end 0.228 to 0.164 - and it matches
    the weighing of decision 78 within the intervals everywhere but the 64 contexts, where it is better
    (-0.032 +- 0.017). The associative memory is still written (a weighing agent reads it); `RecallAlone` off with
    `RecallGain` 1 is the agent as it was (2.14). Decision 76 is superseded: what the memory added beside a consolidator was drive,
    which the recall supplies better.
78. **Weighing the reads by their forecasts is built and not taken** (`Settings.Weigh`, off; `WeighRate` 0.1): the
    readout's drive `RecallGain ((1 - Mix) m + Mix c)`, `Mix` the least-squares weight of the recall's forecast in the
    outcome (Bates and Granger 1969) over running means at the moments that learn. It beats both reads at gain 1
    everywhere and ends at a share of 0.94-0.97 for the recall (0.82 in the block after a reversal), so it buys little
    over the recall alone, and with 64 contexts, where the linear memory knows nothing, its noise costs.
79. **Observations with numbers missing are completed** (`Settings.Completion`, on; open question 16): `Step`, `Begin`
    and `Imagine` take `known`, and the agent completes what it lacks before anything reads the observation - from a
    correlation-matrix memory of its whole observations, by the conditional mean `x_u = M_uo (M_oo + nu I)^-1 x_o`. With
    half the moments missing half their numbers it brings every task back to its regret with whole observations within
    the intervals (the ring lived 0.087 to 0.036 against 0.031 whole; the four-context bandit without a consolidator
    0.061 to 0.041 against 0.042), and a partial cue of a seen point is answered as the point itself (the ring's test
    0.144 to 0.030, the whole points' 0.030). On by default because a life of whole observations is the same with it or
    without (its matrix is learned and never read); it costs `n^2` multiply-adds at each moment that learns (`n` the
    observation's numbers).
80. **Completion needs the mask** - which numbers are missing is the caller's to say (`known`). Without one a completer
    cannot tell a partial observation from a new one: computed for these tasks' geometry, half the ring's numbers zeroed
    leave 0.67 of a cue outside the span of the observations learned, and a return task's new surroundings 0.73. A
    blind completion would merge new surroundings into old ones, which is pattern completion's risk without pattern
    separation's.
81. **The completer learns as the other memories do**: at the moments that learn, from the observation acted on, only
    when it was whole (a completed one would teach the completer its own estimates), at `1 / count` until that falls to
    arousal's slow rate (`Settings.Slow`, 0.003), and with a ridge `nu = 0.01 tr(M) / n` that keeps the solve well posed
    where the observations span fewer directions than the numbers known. Numbers nothing learned relates to the known
    ones are completed as 0, what an unmarked missing number reads as anyway.
82. **The slow part's guess at unfamiliar observations is weighed, and the weight learned** (`Settings.Familiarity`,
    on, `Guess` 1, `GuessRate` 0.03; open question 17): the store keeps per output how much its days taught it
    (`Store.ReadFamiliar`), the recall is `store + (f + (1 - f) Guess) slow`, and `Guess` is the least-squares weight of
    the unfamiliar part in the outcomes over sums forgetting by `1 - GuessRate` a moment that learns, from a prior of 1
    worth one unfamiliar outcome of a guess of 1/2. Measured on the recall-alone readout, in a life meeting both kinds
    of new surroundings (80 lives): the first 250 moments of conflicting ones 0.167 to 0.111 (-0.056 +- 0.013), of
    sharing ones unchanged (-0.004 +- 0.011); the return with nights' B start 0.161 to 0.121; the transfer's B start
    0.015 to 0.021 (+0.006 +- 0.005), the one cost; the ring, the bandits and the reversal unchanged within +-0.007. A
    weight fixed at 0 removes the same conflict cost but loses the transfer's generalization (+0.039 +- 0.012) and costs
    the ring's partial cues; a weight fixed at 1 is the agent as it was.
83. **`GuessRate` 0.03**: measured at 0.01, 0.03, 0.1 and 0.3 - the conflicting surroundings' first block -0.054,
    -0.056, -0.044 and -0.026, the transfer's B start +0.008, +0.006, +0.004 and +0.002 - so a slower forgetting keeps
    more of what earlier surroundings showed, at a small cost where the guess was right; 0.03 is the knee.
84. **Familiarity is the days', not the nights'**: never faded with a transient store, never cleared or rewritten at
    dawn. A night consolidates what the days saw into the slow part, so an observation seen remains familiar after its
    trace in the store fades - the slow part's answer there is consolidated memory, not generalization.
85. **5.11's and 5.12's tables describe the agent as it was** (both reads at gain 1, no familiarity), which
    `recallalone=0 recallgain=1 familiarity=0` restores in the examples; 5.13 measures the agent as it is against them.

**Open questions**

1. **Scope and order within settling networks.** Recommended: the circuit and the agent (phases 1-2) first; the
   sparse-code store, readout groups and sparse connectivity next; the consolidator and sleep last, on the existing
   `Graph`.
2. *(Taken: inside oann - decision 4.)* **Where it lives.** Modules inside oann (`circuit`, `agent`, `memory`,
   `arousal`) sharing `Matrix` and the planner, or a separate package depending on oann? Recommended: inside oann.
3. **Vector math in olang.** Write fast `tanh`/`exp` approximations in the matrix library (no language change), or take up
   vectorized math functions as an olang question (X8 now forbids replacing a library call)? Recommended: library now;
   the transformer round is the first real test, and the olang question is raised if the library version is not fast
   enough there.
4. *(Answered: yes - decision 3.)* **Spiking.** Should the neuron model be a pluggable enum from the first version
   (recommended; costs one `match`), and is a LIF model with spike-count contrasts the spiking direction you mean?
5. *(Taken: `B = 1` - decision 19.)* **Batched lives.** Is a single continuing stream enough at first, or are
   batched streams (`B` rows sharing weights, per-row eligibility) needed early for faster experiments? Recommended:
   `B = 1` first; the arena already plans `B` rows.
6. **Learning on the board.** PS-only learning with quantized copies pushed to the PL (the default of 4.4), or the fused
   on-chip update pass for small cores from the start? Recommended: PS-only first.
7. **ARM-side software.** Cross-compile olang to the board's ARM cores (an olang item: `TargetArch` is the host's today),
   or keep the PS side a thin driver with all logic in the exported plan? Recommended: raise the olang item when the
   board work starts; thin driver until then.
8. **Exploration in calm moments** (from 5.8). The arousal gate detects change, not suboptimality, so a policy that is
   still imperfect when it stops surprising the agent stays so: a regret floor of about 0.03-0.05 in the bandit. Two
   ways out, both changes to the model: sample rather than act greedily in calm moments (exploration without learning,
   at no cost to calm's "no synapse touched"), or let arousal also rise with the policy's entropy. *Both were measured
   and neither is taken (decision 57): the first raises the floor, the second trades a lower late floor for a higher
   early one and slower recovery from a reversal.* Recommended: look for a signal of suboptimality that is not the
   policy's own uncertainty - the critic's error over a longer window, say - when a task needs a lower floor. Default:
   greedy when calm, arousal from surprise and disappointment only.
9. **Sparse lanes on the board** (decision 46). A sparse block stored densely costs its full size in BRAM and cycles;
   lanes skipping absent synapses need an index per weight (about 10 bits) and break the one-weight-per-clock rhythm of
   a lane. Recommended: dense until a wiring diagram is to run on the board; then measure the densities involved.
   Default: dense.
10. *(Taken: 0.05 for supervised circuits meant for the board, measured - decision 55.)* **A lower temperature for
    certified circuits** (from 5.9). Restrained MNIST gains 2.3 points at `T = 0.05`, at about 2.4x the sweeps of a
    lesson at the end of training. Recommended: make `T = 0.1` the default for circuits meant for the board (`Restrain`
    on), keep 0.25 otherwise. Default: 0.25 everywhere.
11. *(Taken: built as an option - decisions 62-71.)* **The consolidator and the agent.** The consolidator stands alone:
    its days are sequences given to it. An agent could live its days into one - observations as inputs, the rewards of
    its actions as targets - and drive its readout with the consolidator's recall beside its memories, sleeping between
    stretches of life. Recommended: when a task needs the agent to keep what it learned across a change of surroundings
    (the retention of 5.10, lived); until then the agent's persistent memory is its only consolidation (1.6). Default:
    separate. *Built (2.14) and measured on the retention task lived (5.11): the store keeps the agent's answers across
    the change; the nights add nothing there.*
12. **The capacity of dawn's store.** A store that cannot hold every residual apart leaves its residue in the recall
    after a night (decision 56); the cues kept also grow without bound (decision 60). Recommended: measure on the first
    task that consolidates more than a few thousand steps - grow the store with its cues, or replay a sample. Default:
    a fixed store, every cue kept. *Narrowed in phase 9 (decision 74): a night can replay a sample of the cues (a reservoir),
    and an agent's do, at most 1 024; and nights do not make up for a store too small for its contexts (5.12) - what
    remains is how large a store a life needs.*
13. **Spiking on the board's lanes.** The simulation counts events (about 290 a step a row on MNIST against 2 560
    multiply-adds of the rate engine's dense recurrent transport) but a lane design for them - which lane adds a spike's
    column, how a reciprocal block's rows are read - is not made, nor whether Lif currents need a wider format than
    Q4.14 (decision 54). Recommended: when a spiking circuit is to be synthesized. Default: the simulation only.
14. **What an agent's nights are for** (from 5.11). Keyed by its observations, an agent's nights change its recall only
    where it has never been - the slow part's generalization - which cost it where the new surroundings conflicted with
    the old and bought nothing measurable with noisy observations. A task where generalization pays - new contexts drawn
    near old ones with the old ones' answers, or a store too small for every observation (open question 12) - is where
    they should. Recommended: measure on such a task before using nights in an agent. Default: a consolidator, if
    any, sleeping as the caller chooses. *Answered in phase 9 (decision 72, 5.12): nights pay where observations recur
    only approximately - a new surroundings sharing old answers, noisy cues, new points of a smooth rule - and for a
    store that forgets; they cost where new surroundings conflict; a permanent pattern-separating store needs them for
    nothing else.*
15. *(Answered: the recall alone, at the two gains' sum - decisions 77-78.)* **Which memory drives the readout** (from
    5.12). The associative memory's linear read and the consolidator's recall both drive the readout at gain 1; the
    first is wrong wherever answers are not linear in the observation or conflicting surroundings share most of it (a
    consolidating agent's regret coming back to A 0.069 with it, 0.021 without), the second slow where one observation's
    answer changes (a reversal's first block 0.179 with the memory, 0.223 without). Recommended: weigh each read by how
    well it has predicted lately - each memory's recent error at the moments that learn, a per-memory associability
    (Pearce & Hall 1980, arousal's own principle) - and measure on the ring, the return and the reversal together.
    Default: both at gain 1. *Measured in phase 10 (5.13): weighing by forecast pays, but the recall alone at the same
    total gain pays as much - what the memory added was drive.*
16. *(Answered: completed from the observations learned, when the caller says which numbers are missing - decisions
    79-81.)* **Partial cues** (from 5.12). With half of an observation's numbers missing neither the store nor the
    nights help (regret 0.14-0.15 against 0.31 by chance, 0.035 when whole): a sparse code of a partial reading is
    another code, and the slow part reads a smaller input. Pattern completion - the cue completed before it is keyed, by
    the attractors of an auto-associative network (Hopfield 1984) or the nearest cue kept - is the mechanism the theory
    gives the hippocampus for this. Recommended: when a task presents partial observations. Default: none. *Built in
    phase 10 (2.16) as a correlation-matrix memory read by conditional mean: partial observations answered as whole
    ones.*
17. *(Answered: weighed by familiarity, the weight learned from the outcomes - decisions 82-84.)* **Generalization as a
    bet** (from 5.12). The slow part's recall at an unfamiliar observation is right when new surroundings share old
    answers and wrong when they conflict, and the agent cannot know which before it acts. A familiarity signal - how
    many of the observation's code cells the days have written - could weigh the slow part's recall down where the store
    knows nothing and arousal is about to learn anyway. Recommended: measure on a life that meets both kinds of new
    surroundings. Default: the recall at full gain everywhere. *Measured in phase 10 (5.13): a fixed weight trades one
    kind for the other; a weight learned from the first outcomes at unfamiliar observations keeps the generalization
    where it holds and drops it where it does not.*
18. **The readout's drive gain** (from 5.13). The recall's gain on the readout is an inverse temperature on the
    recalled values: 3 and 4 measured lower regret still than 2 on the return and the reversal, the 64 contexts level
    from 1.5 and the ring from 2 (a little worse at 4), and a doubled memory gain helps an agent without a consolidator
    after a reversal (0.229 to 0.181).
    On these stationary four-armed tasks greed pays; where actions must be tried again it may not, and the arousal gate
    already ties exploration to surprise (open question 8). Recommended: measure with a task whose payoffs drift slowly,
    together with question 8. Default: `RecallGain` 2, `MemoryGain` 1.


---

## References

Settling and energy
- Hopfield, J. J. (1984). Neurons with graded response have collective computational properties like those of two-state
  neurons. *PNAS* 81.
- Scellier, B., Bengio, Y. (2017). Equilibrium propagation: bridging the gap between energy-based models and
  backpropagation. *Frontiers in Computational Neuroscience* 11.
- Laborieux, A., Ernoult, M., Scellier, B., Bengio, Y., Grollier, J., Querlioz, D. (2021). Scaling equilibrium
  propagation to deep ConvNets by drastically reducing its gradient estimator bias. *Frontiers in Neuroscience* 15.
- O'Connor, P., Gavves, E., Welling, M. (2019). Training a spiking neural network with equilibrium propagation. *AISTATS*.
  (to be checked)
- Martin, E. et al. (2021). EqSpike: spike-driven equilibrium propagation for neuromorphic implementations. *iScience* 24.
  (to be checked)
- Glorot, X., Bengio, Y. (2010). Understanding the difficulty of training deep feedforward neural networks. *AISTATS*.
- Kingma, D. P., Ba, J. (2015). Adam: a method for stochastic optimization. *ICLR*.

Reward learning
- Sutton, R. S., Barto, A. G. (2018). *Reinforcement Learning: An Introduction*, 2nd ed. MIT Press.
- Sutton, R. S. (1988). Learning to predict by the methods of temporal differences. *Machine Learning* 3.
- Barto, A. G., Sutton, R. S., Anderson, C. W. (1983). Neuronlike adaptive elements that can solve difficult learning
  control problems. *IEEE Trans. Systems, Man, and Cybernetics* 13.
- Williams, R. J. (1992). Simple statistical gradient-following algorithms for connectionist reinforcement learning.
  *Machine Learning* 8.
- Konda, V. R., Tsitsiklis, J. N. (2000). Actor-critic algorithms. *NIPS* 12.
- Frémaux, N., Gerstner, W. (2016). Neuromodulated spike-timing-dependent plasticity, and theory of three-factor
  learning rules. *Frontiers in Neural Circuits* 9.
- Izhikevich, E. M. (2007). Solving the distal reward problem through linkage of STDP and dopamine signaling. *Cerebral
  Cortex* 17.
- Schultz, W., Dayan, P., Montague, P. R. (1997). A neural substrate of prediction and reward. *Science* 275.
- Mnih, V. et al. (2015). Human-level control through deep reinforcement learning. *Nature* 518.

Memory, arousal, consolidation
- Kohonen, T. (1972). Correlation matrix memories. *IEEE Trans. Computers* C-21. Anderson, J. A. (1972). A simple neural
  network generating an interactive memory. *Mathematical Biosciences* 14. Widrow, B., Hoff, M. E. (1960). Adaptive
  switching circuits. *IRE WESCON Convention Record*.
- Blundell, C. et al. (2016). Model-free episodic control. arXiv.
- Elman, J. L. (1990). Finding structure in time. *Cognitive Science* 14.
- Marr, D. (1969). A theory of cerebellar cortex. *J. Physiology* 202. Albus, J. S. (1971). A theory of cerebellar
  function. *Mathematical Biosciences* 10. Kanerva, P. (1988). *Sparse Distributed Memory*. MIT Press.
- Dasgupta, S., Stevens, C. F., Navlakha, S. (2017). A neural algorithm for a fundamental computing problem. *Science* 358.
- McClelland, J. L., McNaughton, B. L., O'Reilly, R. C. (1995). Why there are complementary learning systems in the
  hippocampus and neocortex. *Psychological Review* 102.
- McGaugh, J. L. (2004). The amygdala modulates the consolidation of memories of emotionally arousing experiences.
  *Annual Review of Neuroscience* 27.
- Pearce, J. M., Hall, G. (1980). A model for Pavlovian learning: variations in the effectiveness of conditioned but not
  of unconditioned stimuli. *Psychological Review* 87.
- Yu, A. J., Dayan, P. (2005). Uncertainty, neuromodulation, and attention. *Neuron* 46. Aston-Jones, G., Cohen, J. D.
  (2005). An integrative theory of locus coeruleus-norepinephrine function. *Annual Review of Neuroscience* 28. Doya, K.
  (2002). Metalearning and neuromodulation. *Neural Networks* 15. Bear, M. F., Singer, W. (1986). Modulation of visual
  cortical plasticity by acetylcholine and noradrenaline. *Nature* 320.
- Robins, A. (1995). Catastrophic forgetting, rehearsal and pseudorehearsal. *Connection Science* 7. Wilson, M. A.,
  McNaughton, B. L. (1994). Reactivation of hippocampal ensemble memories during sleep. *Science* 265. Hinton, G. E.,
  Plaut, D. C. (1987). Using fast weights to deblur old memories. *Proc. Cognitive Science Society*.
- Vitter, J. S. (1985). Random sampling with a reservoir. *ACM Trans. Mathematical Software* 11.
- Bates, J. M., Granger, C. W. J. (1969). The combination of forecasts. *Operational Research Quarterly* 20.
- Cho, K. et al. (2014). Learning phrase representations using RNN encoder-decoder for statistical machine translation.
  *EMNLP*. Bradbury, J. et al. (2017). Quasi-recurrent neural networks. *ICLR*. Werbos, P. J. (1990). Backpropagation
  through time: what it does and how to do it. *Proc. IEEE* 78.

Hardware
- Xilinx/AMD. Zynq-7000 SoC Data Sheet: Overview (DS190); Zynq-7000 SoC Technical Reference Manual (UG585); 7 Series DSP48E1
  Slice User Guide (UG479); 7 Series FPGAs Memory Resources User Guide (UG473).
