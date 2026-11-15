# ad

Reverse-mode autodiff on N-d tensors: the recorded graph oann's models train on (docs/redesign.md, section 1.3).

| file | what |
|---|---|
| `graph.olang` | `Graph<T>`, `Var`, `Op` (a closed enum, `Custom(any Function&)` for operations defined outside), `Init`, `Mode`, `Function`. Recording with shape checks (a mismatch is reported by `Plan` as a `ShapeError`), the plan - parameters, their gradients, inputs, then one activation region in which every value, gradient, kept tensor and scratch is placed by its lifetime over a step - and Forward/Backward dispatch; eager mode (each op runs as recorded, on its own storage); views (`Reshape`, `Permute`, `Slice`, `Expand`) that copy nothing; BF16/F16 graphs with F32 masters; KV-cache decoding; safetensors checkpoints (io/checkpoint); INT8 inference of the Linear layers (kernels/gemm's `GemmI8`); profiling by op kind |
| `ops.olang` | every operation's forward and vector-Jacobian product over the kernels (kernels/gemm, elem, attention, scan, conv): products and linear layers, element-wise ops and activations, softmax, log-softmax, cross-entropy, MSE, layer and RMS norm, embedding, learned and rotary positions, attention, dropout, convolution and pooling, the gated and selective scans and the delta rule, reductions, the views' backward |

Rules the graph keeps: a step (Forward, Backward) allocates nothing - its resident memory is flat after the first
(tested); eager and captured runs agree bit for bit; results are the same for every thread count; an intermediate's
value or gradient is valid within its step only (the activation region is reused), while inputs, parameters, outputs
(nodes nothing reads), losses and nodes given to `Keep` live to the step's end.

Tests: `olang test ad/graph.olang` (the graph's own), `olang test tools/gradcheck.olang` (a gradient check per operation
in F64). Measures: `bench/mlp_ad.olang` (M1, MNIST MLP), `bench/arena_ad.olang` (M9, the transformer's arena and
resident memory per step) - `make mlpad`, `make arenaad`.
