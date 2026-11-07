---
name: project-olang-vec-growth-question
description: "SETTLED 2026-09-23: no growable contiguous Vec in olang. List<T> is chunked and append-only; Buffer was rejected on measurements"
metadata:
  node_type: memory
  type: project
  originSessionId: 7f2a5325-2cc9-4c97-9679-ec83bcdf63a5
  modified: 2026-09-23T00:00:00.000Z
---

The open question was how a growable `Vec<T>` reallocates when a scope is a bump allocator that frees
nothing. **Answered by dropping Vec.** olang's workload (LLM inference, big data) allocates once at a
size known at load time and never resizes — which `T[expr]` already was (now `Array<T>(n)`). Growth only matters for
incremental construction, where contiguity buys nothing until the end.

So: **`List<T>` is chunked and append-only**, with `ToArray()` copying to contiguous. Chunked indexing
measured 1.7x flat, but append-only never indexes a chunk. Not hash-like: for keys 0..n-1 a shift and
mask is a perfect hash.

`Buffer` (virtual reservation so storage never moves) was rejected: ~320KB resident per touched >=1MB
mapping (20k small buffers = 6.3GB vs 1.3MB malloc), and growing page-by-page fails outright — `mremap`
in place returns ENOMEM every time, because Linux packs mmap regions with no gaps.

**Why:** this closed a question that had blocked the stdlib for weeks, and it also made `&expr`, the
slice-invalidation rule and borrow tracking unnecessary rather than deferred — a List never exposes
anything that moves.
**How to apply:** don't reopen contiguous growth; if incremental accumulation comes up, it's List.
See [[project-olang-next-steps]].
