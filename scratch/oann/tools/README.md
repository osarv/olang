# tools

Checks and counters that run on oann's layers, not part of a model (docs/redesign.md, section 1.8).

| file | what |
|---|---|
| `gradcheck.olang` | `GradientError(g, loss, n, h)`: the gradient a `Graph<F64>`'s Backward gives every parameter and every watched input against the loss's central differences; `Weigh` makes a scalar loss of any output; one test per operation of ad/graph.olang, on a full batch and a short one |

Run: `olang test tools/gradcheck.olang`.
