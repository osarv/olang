#!/usr/bin/env python3
"""The character-level transformer of examples/charlm.olang, written again in numpy (forward and a hand-written
backward, in F64), started from the same parameters - drawn from the same xoshiro256** generator in the same order and
rounded to F32 as oann stores them - and trained on the same windows with the same AdamW, schedule and clipping. It
prints the loss of each of the first steps, for bench/lmref.olang's to be compared with: the two agree to the
precision F32 arithmetic allows.

Usage: charlm.py STEPS [SEED [LAYERS WIDTH HEADS CONTEXT SEQUENCES]]   (10 1 4 128 4 64 16)
"""
import math
import sys

import numpy as np

M64 = (1 << 64) - 1
GOLDEN = 11400714819323198485


def mix64(x):
    z = x & M64
    z = ((z ^ (z >> 30)) * 0xBF58476D1CE4E5B9) & M64
    z = ((z ^ (z >> 27)) * 0x94D049BB133111EB) & M64
    return z ^ (z >> 31)


def rotl(x, k):
    return ((x << k) | (x >> (64 - k))) & M64


class Rand:
    """std/rand's Rand: xoshiro256** seeded through splitmix64"""

    def __init__(self, seed):
        self.s = [mix64(seed + i * GOLDEN) for i in range(1, 5)]

    def next(self):
        s0, s1, s2, s3 = self.s
        out = (rotl((s1 * 5) & M64, 7) * 9) & M64
        t = (s1 << 17) & M64
        s2 ^= s0
        s3 ^= s1
        s1 ^= s2
        s0 ^= s3
        s2 ^= t
        s3 = rotl(s3, 45)
        self.s = [s0, s1, s2, s3]
        return out

    def below(self, n):
        limit = (0 - ((0 - n) & M64) % n) & M64       # the largest multiple of n that fits, 0 for n = 2^k
        while True:
            x = self.next()
            if limit == 0 or x < limit:
                return x % n

    def float(self):
        return float(self.next() >> 11) * (1.0 / 9007199254740992.0)

    def normal(self):
        u = 1.0 - self.float()
        v = self.float()
        return math.sqrt(-2.0 * math.log(u)) * math.cos(2.0 * math.pi * v)


def fill_normal(r, rows, cols, mean, sd):
    return np.array([[np.float32(mean + sd * r.normal()) for _ in range(cols)] for _ in range(rows)],
                    dtype=np.float32).astype(np.float64)


def params(r, V, T, D, L):
    """the parameters in the order layers.NewTransformer registers them, each drawn as nn.Plan draws it"""
    names, shapes, inits = [], [], []

    def add(name, rows, cols, init):
        names.append(name)
        shapes.append((rows, cols))
        inits.append(init)

    w = ("normal", 0.02)
    out = ("normal", 0.02 / math.sqrt(2 * L))
    add("emb", V, D, w)
    add("pos", T, D, w)
    for i in range(L):
        add(f"{i}.n1g", 1, D, ("one",))
        add(f"{i}.n1b", 1, D, ("zero",))
        for p in "qkv":
            add(f"{i}.{p}w", D, D, w)
            add(f"{i}.{p}b", 1, D, ("zero",))
        add(f"{i}.ow", D, D, out)
        add(f"{i}.ob", 1, D, ("zero",))
        add(f"{i}.n2g", 1, D, ("one",))
        add(f"{i}.n2b", 1, D, ("zero",))
        add(f"{i}.uw", 4 * D, D, w)
        add(f"{i}.ub", 1, 4 * D, ("zero",))
        add(f"{i}.dw", D, 4 * D, out)
        add(f"{i}.db", 1, D, ("zero",))
    add("nfg", 1, D, ("one",))
    add("nfb", 1, D, ("zero",))
    P = {}
    decay = {}
    for name, (rows, cols), init in zip(names, shapes, inits):
        if init[0] == "normal":
            P[name] = fill_normal(r, rows, cols, 0.0, init[1])
        elif init[0] == "one":
            P[name] = np.ones((rows, cols))
        else:
            P[name] = np.zeros((rows, cols))
        decay[name] = name in ("emb", "pos") or name.endswith("w")
    r.next()            # Plan seeds the graph's dropout generator from the next number
    return names, P, decay


EPS = 1e-5
C = 0.7978845608028654
A = 0.044715


def layernorm(x, g, b):
    mean = x.mean(axis=1, keepdims=True)
    var = ((x - mean) ** 2).mean(axis=1, keepdims=True)
    rstd = 1.0 / np.sqrt(var + EPS)
    xhat = (x - mean) * rstd
    return xhat * g + b, (xhat, rstd)


def layernorm_back(dy, g, cache):
    xhat, rstd = cache
    gg = dy * g
    dx = rstd * (gg - gg.mean(axis=1, keepdims=True) - xhat * (gg * xhat).mean(axis=1, keepdims=True))
    return dx, (dy * xhat).sum(axis=0, keepdims=True), dy.sum(axis=0, keepdims=True)


def gelu(u):
    return 0.5 * u * (1.0 + np.tanh(C * (u + A * u ** 3)))


def gelu_back(dy, u):
    t = np.tanh(C * (u + A * u ** 3))
    return dy * (0.5 * (1.0 + t) + 0.5 * u * (1.0 - t * t) * C * (1.0 + 3.0 * A * u * u))


def attention(q, k, v, H, T):
    N, D = q.shape
    dh = D // H
    B = N // T
    scale = 1.0 / math.sqrt(dh)
    q4 = q.reshape(B, T, H, dh).transpose(0, 2, 1, 3)
    k4 = k.reshape(B, T, H, dh).transpose(0, 2, 1, 3)
    v4 = v.reshape(B, T, H, dh).transpose(0, 2, 1, 3)
    s = q4 @ k4.transpose(0, 1, 3, 2) * scale
    mask = np.triu(np.ones((T, T), dtype=bool), 1)
    s = np.where(mask, -np.inf, s)
    s = s - s.max(axis=-1, keepdims=True)
    p = np.exp(s)
    p = p / p.sum(axis=-1, keepdims=True)
    y = (p @ v4).transpose(0, 2, 1, 3).reshape(N, D)
    return y, (q4, k4, v4, p, scale)


def attention_back(dy, cache, H, T):
    q4, k4, v4, p, scale = cache
    B, _, _, dh = q4.shape
    N = B * T
    do = dy.reshape(B, T, H, dh).transpose(0, 2, 1, 3)
    dv = p.transpose(0, 1, 3, 2) @ do
    dp = do @ v4.transpose(0, 1, 3, 2)
    ds = p * (dp - (dp * p).sum(axis=-1, keepdims=True)) * scale
    dq = ds @ k4
    dk = ds.transpose(0, 1, 3, 2) @ q4
    back = lambda t: t.transpose(0, 2, 1, 3).reshape(N, H * dh)
    return back(dq), back(dk), back(dv)


def step(P, tok, tgt, L, H, T):
    """the loss and every parameter's gradient for one batch"""
    N = tok.shape[0]
    x = P["emb"][tok] + P["pos"][np.arange(N) % T]
    caches = []
    for i in range(L):
        n1, c1 = layernorm(x, P[f"{i}.n1g"], P[f"{i}.n1b"])
        q = n1 @ P[f"{i}.qw"].T + P[f"{i}.qb"]
        k = n1 @ P[f"{i}.kw"].T + P[f"{i}.kb"]
        v = n1 @ P[f"{i}.vw"].T + P[f"{i}.vb"]
        a, ca = attention(q, k, v, H, T)
        h = x + a @ P[f"{i}.ow"].T + P[f"{i}.ob"]
        n2, c2 = layernorm(h, P[f"{i}.n2g"], P[f"{i}.n2b"])
        u = n2 @ P[f"{i}.uw"].T + P[f"{i}.ub"]
        m = gelu(u)
        caches.append((n1, c1, a, ca, n2, c2, u, m))
        x = h + m @ P[f"{i}.dw"].T + P[f"{i}.db"]
    nf, cf = layernorm(x, P["nfg"], P["nfb"])
    z = nf @ P["emb"].T
    z = z - z.max(axis=1, keepdims=True)
    e = np.exp(z)
    probs = e / e.sum(axis=1, keepdims=True)
    loss = -np.log(probs[np.arange(N), tgt]).mean()
    G = {name: np.zeros_like(value) for name, value in P.items()}
    dz = probs.copy()
    dz[np.arange(N), tgt] -= 1.0
    dz /= N
    G["emb"] += dz.T @ nf
    dnf = dz @ P["emb"]
    dx, G["nfg"], G["nfb"] = layernorm_back(dnf, P["nfg"], cf)
    for i in reversed(range(L)):
        n1, c1, a, ca, n2, c2, u, m = caches[i]
        G[f"{i}.dw"] = dx.T @ m
        G[f"{i}.db"] = dx.sum(axis=0, keepdims=True)
        du = gelu_back(dx @ P[f"{i}.dw"], u)
        G[f"{i}.uw"] = du.T @ n2
        G[f"{i}.ub"] = du.sum(axis=0, keepdims=True)
        dn2 = du @ P[f"{i}.uw"]
        dh, G[f"{i}.n2g"], G[f"{i}.n2b"] = layernorm_back(dn2, P[f"{i}.n2g"], c2)
        dh = dh + dx
        G[f"{i}.ow"] = dh.T @ a
        G[f"{i}.ob"] = dh.sum(axis=0, keepdims=True)
        dq, dk, dv = attention_back(dh @ P[f"{i}.ow"], ca, H, T)
        dn1 = np.zeros_like(n1)
        for p, d in (("q", dq), ("k", dk), ("v", dv)):
            G[f"{i}.{p}w"] = d.T @ n1
            G[f"{i}.{p}b"] = d.sum(axis=0, keepdims=True)
            dn1 += d @ P[f"{i}.{p}w"]
        dx1, G[f"{i}.n1g"], G[f"{i}.n1b"] = layernorm_back(dn1, P[f"{i}.n1g"], c1)
        dx = dh + dx1
    np.add.at(G["emb"], tok, dx)
    np.add.at(G["pos"], np.arange(N) % T, dx)
    return loss, G


def main():
    args = [int(a) for a in sys.argv[1:]]
    steps = args[0] if args else 10
    seed = args[1] if len(args) > 1 else 1
    L, D, H, T, B = args[2:7] if len(args) > 6 else (4, 128, 4, 64, 16)
    text = open("data/shakespeare/input.txt", "rb").read()
    vocab = sorted(set(text))
    index = {c: i for i, c in enumerate(vocab)}
    ids = np.array([index[c] for c in text], dtype=np.int64)
    train = ids[: int(len(ids) * 0.9)]
    r = Rand(seed)
    names, P, decay = params(r, len(vocab), T, D, L)
    windows = Rand(seed)
    M = {n: np.zeros_like(p) for n, p in P.items()}
    Vs = {n: np.zeros_like(p) for n, p in P.items()}
    peak, warmup, floor, b1, b2, eps, wd = 1e-3, 100, 1e-4, 0.9, 0.99, 1e-8, 0.1
    for t in range(steps):
        starts = [windows.below(len(train) - T) for _ in range(B)]
        tok = np.concatenate([train[s:s + T] for s in starts])
        tgt = np.concatenate([train[s + 1:s + T + 1] for s in starts])
        loss, G = step(P, tok, tgt, L, H, T)
        norm = math.sqrt(sum(float((g * g).sum()) for g in G.values()))
        if norm > 1.0:
            for g in G.values():
                g *= 1.0 / (norm + 1e-6)
        if t < warmup:
            rate = peak * (t + 1) / warmup
        elif t >= steps:
            rate = floor
        else:
            rate = floor + 0.5 * (1.0 + math.cos(math.pi * (t - warmup) / (steps - warmup))) * (peak - floor)
        c1 = 1.0 - b1 ** (t + 1)
        c2 = 1.0 - b2 ** (t + 1)
        for n in names:
            M[n] = b1 * M[n] + (1 - b1) * G[n]
            Vs[n] = b2 * Vs[n] + (1 - b2) * G[n] ** 2
            keep = 1.0 - rate * wd if decay[n] else 1.0
            P[n] = keep * P[n] - (rate / c1) * M[n] / (np.sqrt(Vs[n]) / math.sqrt(c2) + eps)
        print(f"step {t + 1} loss {loss:.6f} norm {norm:.6f}")


main()
