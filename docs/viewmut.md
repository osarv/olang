# Writes to a `for` loop's copy (proposal)

## The pitfall

`for x in v.ViewMut()` binds `x` as a copy of each element, so a write to `x` - or to a field of it - is lost:

```olang
type P struct(x I64) {
    x
}

fn bump<T>(v mut Vec<T>&, f fn&(x T) T) {
    for x in v.ViewMut() {
        x = f(x)                  # changes the copy only
    }
}

fn main() {
    v := Vec<I64>[1, 2, 3]
    bump(v, fn(a I64) I64 { return a * 10 })
    Println(v)                    # Vec<I64>[1, 2, 3]
    ps := Vec<P>[]
    ps.Push(P(1))
    for p in ps.ViewMut() {
        p.x = 7                   # changes the copy only
    }
    Println(ps[0].x)              # 1
}
```

Both compile with no diagnostic (`p.x = 7` reads `p` under D3b; `x = f(x)` reads `x`). `for y in v.ViewMut() { y += 1 }`
is caught only as D3b's unused `y`.

## By design

SPEC S9a: over an array (`ViewMut()` gives `mut Array<T>&`) "`x` is each element in order, **copied** - assigning to `x`
does not change the array; `a[i] = ...` through the index form does". The same holds for an indexable, an iterator and
runs. The spelling that writes through exists:

```olang
w := v.ViewMut()
for i, x in w: w[i] = f(x)
```

So the meaning stays; the question is whether the compiler should refuse the trap (accept or reject, no warnings).

## Options

- **A. Dead store to a loop's copy is an error.** A store to a `for` name, or through it to a field or element of a
  by-value copy, that no read of that name follows before the turn ends is a compile-time error: "'x' is a copy of
  the element (S9a); the write is lost - write `for i, x in w: w[i] = ...`". Narrow, breaks no correct code, but
  needs a per-turn liveness walk in the checker, and misses `p.x = 7; Println(p.x)` (read, still lost to the Vec).
- **B. A `for` loop's names are read-only.** Assigning to `x`, or writing through it into a copied value (`x = ...`,
  `x += 1`, `x.f = ...`, `x[i] = ...` on a by-value element), is a compile-time error naming the index form, and
  `y := x` for a changeable copy. One rule, every loop kind, no flow analysis; a unique element is already a
  read-only reference (S9a), so this makes the copy case match it. Costs a migration where code reuses `x` as
  scratch (`olang fix`: `x := x` is shadowing, so it renames to a fresh local).
- **C. Iterating a writable array binds a writable reference.** `for x in w` over a `mut Array<T>&` (a `ViewMut()`, a
  `mut` slice) makes `x` a `mut T&` into the element, so `x = ...` and `x.f = ...` write through - what the name
  `ViewMut` promises, with no copy (cheaper). A meaning change: the same `for x in` copies over a read-only array and
  refers over a writable one; the evaluator, scopes (the reference is the array's), and E12c's borrow follow the
  existing unique-element path.

## Recommendation

B: it removes the trap everywhere with one rule that composes (the element of a unique type is already a read-only
name), costs nothing at run time, and needs no liveness analysis. C is worth adding on top only if write-through
iteration over views proves common enough to want; with B in place, C is purely additive (today's refused writes
would become legal), so it can wait.
