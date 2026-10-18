# Memory: one rule, and freeing early as the compiler's optimization

Status: design for review, 2026-10-17. Nothing in it is built yet. The user decided the direction (ledger QAB,
2026-10-17) and approved building it ("do it"). Section 5.5 is the plan an implementation agent follows, round by
round. This replaces owned references (`own`, `take`, loans: SPEC §8.8, `docs/own.md`).

The user's words, in order:
- "I want it gone completely somehow and the memory model more streamlined."
- "The compiler is allowed to do tricks all it wants, but the user should not have to deal with it."
- On freeing early: "as long as we can make it effective at actually finding the places where memory can be freed and
  the rules to trigger it somewhat explicit so a programmer can make it happen at will."
- On Vec: "Vec is basically a normal array hidden behind an access gate. The error we get when vec moves is a
  correctness bug not a memory bug."

## 0. Summary

- **One rule for the language.** Everything lives in a scope - a block, or the program - and is reclaimed when that
  scope closes. That is §8 as it is today, without §8.8. No keyword, no type and no error is about freeing.
- **Freeing early is the compiler's optimization.** A place - a field, an element, a global, a local - lets go of what
  it holds when it is given a new value or its entry is removed. If the place was the only holder, the storage is
  reclaimed at once. Otherwise it stays until its scope closes, as today. It is never an error, never changes a value,
  and shows only in memory use. Stage 0 (the C compiler) never frees early; the port does it in its scope pass (M6).
- **The trigger rule** (section 2.2) is two sentences a programmer can steer by, and `olang build -memory` lists every
  place that keeps what it let go of, with the store or the view that made it keep it.
- **Vec becomes a handle**, as List and Map are. A copy is a second name, and growth points the header at a bigger
  buffer. A view of its elements is written, `v.View()`, and is valid until `v` grows. Using a view after a growth the
  compiler can see is an error; a growth it cannot see gives the old elements, never a memory error.
- **Both halves are needed.** The handle removes the need for ownership: copies are second names, growth never leaves
  a dangling view, and the garbage growth leaves is less than the final buffer. Early freeing removes the accumulation
  in long-lived structures - a field replaced per request, entries removed from a map, frames popped from a stack -
  and lets a Vec give its old buffers back at once.
- **Destructors run exactly when they do today**, when their scope closes. Storage holding an instance whose destructor
  is still to run is never freed early. Prompt release of a resource becomes an explicit `Close()`.
- **What goes**: `own`, `take`, owning parameters and results, borrowed copies, every borrow error, SPEC §8.8
  (O30-O42), T25e and E34.

## 1. The rule

### 1.1 As SPEC would state it

These are drafts. Round 3 (section 5.5) writes the final text.

**§8's opening and title.** The title becomes "Scopes". The sentence "Owned references (§8.8) add a check of their own"
goes. The overview at SPEC's top (lines 75-77) loses its §8.8 sentences.

**O8c (revised).** Nothing a scope holds is reclaimed before the scope closes, except what O8d reclaims: storage a
place let go of while it was that storage's only holder. So what a loop puts into a scope that outlives the loop stays
until that scope closes, unless the loop puts it into a place that lets go of it again.

**O8d (new: letting go).** *(Not yet implemented: the C compiler reclaims nothing before its scope closes.)*
A **place** is storage that holds a value and can be given another: a local, a field, an element of an array or a
collection, a global. A place **lets go** of what it holds when it is assigned (S4), when the entry holding it is
removed (M19d's `RemoveAt`, `SwapRemove`, `Remove`, `Clear`, `Truncate`), and, for a local given something moved out of
a collection (`Pop`, `TakeAt`, `SwapTake`, `Take`), when its block is left. What it held is reclaimed then - not when
its scope closes - when the place was its **only holder**:
1. it was **made for the place**: built there (a constructor call, an enum case, an array, a literal, text rendered or
   joined, a call's built result, O13), `null`, or constant data (T25d); or moved there from a place that was its only
   holder (a collection's `Pop`, `TakeAt` or `Take`, and the last use of a local given one);
2. no reference into it - to it, or to anything built where it lives - was **stored anywhere else**: in another place,
   a global, a closure kept past the call that made it, a task, or a call that may keep it (O10b, O26a);
3. nothing it holds is reached by more than one thread (§6.8);
4. nothing it holds is an instance whose destructor is still to run (O15);
5. the place can let go again before its scope closes: it is let go of in a loop, or in a function that can run again
   while the place lives;
6. no reference read from what the place holds is in use across a call that may make the place let go.

A reference read from it that is still in use when the place lets go in the function holding the reference delays the
reclaiming to that reference's last use.
Reclaiming early changes no value a program can read, runs no destructor (O15), and is not otherwise observable: a
program's memory use, and the report of B14, are the only ways to see it.

**O15 (one sentence added).** Reclaiming storage early (O8d) never runs a destructor: storage holding an instance whose
destructor is still to run is kept until the instance's scope closes, and the destructor runs there, in this order.

**M19d's Vec paragraph** is rewritten for the handle (section 4.1). **M19g (a Vec's views)** is new (section 4.4).

**B14 (new: the memory report).** *(Not yet implemented: stage 0 has no `-memory`.)* `-memory` is an option of `build`,
`test` and running a file (B1). After the build's diagnostics it prints one row for each place that keeps what it lets
go of until its scope closes, with notes naming why (the store, the view, the task, the destructor), and then a count of
the places that reclaim at once. Rows have B11's form, `path:line:col: memory: ...`. It changes nothing about the build.

The keyword table (L-rules) drops `own` and `take`, which become ordinary names. `type-expr` loses `[ "own" ]`.

### 1.2 What the programmer sees

Nothing new to write. Code that compiles today without `own` compiles the same way and computes the same values. What
changes is memory: a long-running loop that replaces things in a structure that outlives it now stays flat where the
rule holds.

How to make storage be reclaimed when it is replaced:

| to | write |
|---|---|
| have a place's old value freed when it is given a new one | give it new storage - a constructor call, `$x`, a join, `ToUpper()`, `Clone()` - not a reference to storage that lives elsewhere |
| keep part of a value that is about to be replaced or removed | copy that part: `$x`, `x.Clone()`, a number |
| free an entry of a collection | remove it: `Remove`, `RemoveAt`, `Pop`, `Clear`, `Truncate`; `Take`/`TakeAt` to move it out |
| free a place's value now | give the place something else: `null`, a new value, `Clear()` |
| move a value between collections without keeping both | `b.Push(try a.Pop())`, `m2.Put(k, try m1.Take(k))` |
| let a reference read from a place not hold the old value | read what you need (a number, a copy) before the place lets go, not after |

`olang build -memory` says, for every place that keeps what it lets go of, which store, view, task or destructor made
it keep it, and what to write instead (section 2.8).

## 2. The early-free analysis

### 2.1 Terms

- **Place**: storage holding a value that can be given another (O8d). The analysis decides per **place declaration**:
  a field (per type, per instantiation for a generic type), a local, a global. A collection's elements and a Vec's
  buffer are decided per construction site of the collection (the `List<T>()`, `Map<K, V>()` or `Vec<T>()` call that
  made it, named in the report by the field or local holding it), since one generic body serves every collection of a
  type.
- **What a place holds**: its value, plus everything built where that value lives - by its constructor, into its
  fields, by its methods. For a `Conn` in a map that is the `Conn`, its text and its builders' chunks. §8 places all of
  it in the place's scope; the analysis gives it a **region** of its own inside that scope (section 3.4).
- **Holder**: a place whose value refers into the region. A sole place's region has one holder.
- **View**: a reference into the region held by a local or a temporary: a reference read from the place, one read
  through it, a handle copied out of it, a collection's iterator over it, the hidden borrow of a `for ... in`. Values
  holding no reference - numbers, `Bool`s - read out of it are not views (O26a's rule).
- **Letting go**: the place is assigned, its entry removed, or (for a local holding something moved out of a
  collection) its block left.

### 2.2 The trigger rule

> **When a place lets go of what it holds, that storage is freed at once if it was made for that place and no reference
> into it was ever stored anywhere else. A reference read from it that is still in use delays the free to that
> reference's last use.**

That is the whole rule a programmer steers by. Conditions 3-6 of O8d refine it: one thread, no pending destructor, a
place that can let go again, and no reference into it held across a call that lets go (2.5). The report names whichever
kept something.

### 2.3 The facts it uses

Most of what the analysis needs, §8 already computes: every reference's exact scope, every store, and what each callee
does with what it is given. What is new comes from the `own` checker, which is removed from the language but kept as
machinery (section 3.3).

| fact | where it comes from | what the analysis uses it for |
|---|---|---|
| the exact scope of every reference: where its referent lives | O25, O25a-h | which references can point into a place's value |
| where every temporary is built | O6, O18a-c; the port's `Plan.Built[site]` | condition 1: which values are made for a place; and where to build them (in a region) |
| every store of existing storage into a field, element, global or local, with its source and target | O9, O25b, O25c, O20 | condition 2: a reference into a value stored elsewhere |
| a callee's obligations - which of its parameters it stores where | O10b, O10c | condition 2 through calls |
| whether a call may keep an argument - in its result, its receiver, another argument | O26a, O18c (`calleeMayKeepArg`) | condition 2 through calls |
| built or borrowed results | O13, O14 | condition 1: a built result holds none of its arguments unless an obligation says so |
| per-instance bindings and derived scopes | C2d, O23a | whether a field's referent is inside the value or outside it |
| task arguments and captures | P2, D16c | condition 3 |
| destructor registration, once per constructor call | O16 | condition 4 |
| liveness of what is derived from a read | `own`'s loans (O38), kept internal | views at a let-go point (section 2.5) |
| what a function may let go of, per place, through which parameter or global | `own`'s release effects (O39), kept internal | letting go inside a call while the caller holds a view |
| last-use moves | `own`'s move positions (O34), kept internal, inferred | condition 1: moved there from a sole place |

### 2.4 How it decides

1. **Provenance.** For every candidate place, give its values a fresh scope ρ that the place's scope outlives and that
   outlives nothing, as `own` gave each object a region (O33). Tag every reference read from the place with ρ and run
   §8's tag propagation again. Every reference whose tag becomes ρ points into the value. Where §8 would now reject a
   flow, the target is either a local or temporary of this function (a **view**, judged by liveness in 2.5) or anything
   else (an **escape**: condition 2 fails, and that flow is the report's note). One `ρ` for all of a place's values
   would accept a reference into one value stored inside another (`b.next = a`, both read from one map), which a later
   removal of `a` would leave dangling: each read gets a region term of its own, and for a store no region term
   outlives another or itself (`docs/scope-model.md` 5.5).
2. **Made for it.** Every store into the place is checked against condition 1: a temporary built there, `null`, constant
   data, or a move from a sole place.
3. **Fixed point.** All candidate places are tried at once. A place that fails drops out, and so does every place whose
   condition 1 relied on moves from it. Repeat until nothing changes - a greatest fixed point over a finite set.
4. **Where it runs.** A place's conditions can involve code in any module that reaches its values. So the decision is
   the program's, made where it is linked (the root of `build` or `test`), from summaries computed per function. Other
   modules' objects read the decisions as link-time constants (section 3.5).
5. **Placement.** A value built for a sole place is built in a region of its own (section 3.4). Every other value is
   built where §8 puts it today.

Failing is always safe. A place that is not sole behaves exactly as today: its values live in its scope until the scope
closes.

### 2.5 Views when a place lets go

A view of the old value may still be in use when the place lets go. Three cases:

- **In the same function.** The free waits until after the view's last use, on every path. Lowering holds the old
  region in a hidden local and frees it there. Nothing runs at run time but the free. A removal that hands the element
  out - `Pop`, `TakeAt`, `SwapTake`, `Take` - lets go in the caller, which receives it, so views the caller holds are
  this case too.
- **In a caller, across a call that lets go.** `c := try s.conns.Get(fd)` is used after `s.Close(other)`, and `Close`
  removes entries of `s.conns`. The callee cannot see the caller's view. In this design, such a place - every place the
  call may let go of, by the callee's summary - keeps what it lets go of until its scope closes. The report names the
  view and the call ("read what you need from 'c' before the call"). Pins would make this precise at a run-time cost;
  that is direction question 1 (section 6.3).
- **On another thread.** Condition 3 keeps every value a task can reach from being freed early, in this first version.
  Atomic pins could lift it later.

### 2.6 Where it is conservative

Each of these only keeps memory; none is ever an error.

1. **Per declaration, not per value.** One store of a reference into a `Conn.hdrs` value elsewhere makes every `Conn`'s
   headers stay. The report points at that store.
2. **A collection's elements, and a Vec's buffer, are decided per construction site.** Two `Map<String&, I64>` made in
   different places are decided apart, but every map made at one site shares the decision.
3. **Views across calls** keep a place (2.5), unless pins are chosen.
4. **Threads**: anything a task can reach is kept.
5. **Calls through function values.** The iterator helpers and `Sort` hold a view of their collection while they call
   the function they were given. A callback parameter the callee only calls - never assigns, stores, captures or hands
   to anything but another such parameter - is charged with what the caller's function value may let go of. So
   `l.Iter().Any(fn(x) { ... })` with a lambda that removes nothing keeps nothing. Any other call through a function
   value, a callee in a cycle not yet settled, and every `extern` are taken to keep and to let go of anything they can
   reach. (Decision 49's walk once read a cycle still being settled as "nothing" and a reassigned callback as the one
   passed; both were use-after-frees, and this rule is written against them.)
6. **A value whose region holds a pending destructor** is kept (section 5.2).
7. **Copies between elements of one array in a program's own code** (a hand-written shift, `a[k] = a[k + 1]`) make that
   array's elements not sole. The analysis cannot tell which positions are live. The prelude's collections say so
   explicitly with two internal operations (section 3.4), so `List`, `Map` and `Vec` removals are exact.
8. **A place let go of only once before its scope closes** is not worth a region (condition 5): bump allocation is
   cheaper, and the scope's close comes first anyway.

### 2.7 Worked examples

Each program below compiles and runs today; the peak memory was measured with the C compiler (`build/out`,
`/usr/bin/time`, 2026-10-17). The expected results after the port are analysis, not measurement - nothing is built yet.

#### A server's connections, each allocating per request

```olang
type Conn struct() {
    fd I64 = -1
    req String& = ""                     # the request being handled
    hdrs Map<String&, String&>           # its header lines, by name
}

type Server struct(n I64) {
    conns mut Array<mut Conn&>& = Array<mut Conn&>(n)
    for i in range n { conns[i] = Conn() }
}

fn parseHeaders(raw String&) Map<String&, String&> {
    m := Map<String&, String&>()
    for line in raw.Lines() {
        i := try line.FindByte(':') catch { continue }
        m.Put($line[:i], $line[i + 1:].Trim())
    }
    return m
}

fn (s mut Server&) OnRequest(i I64, raw String&) {
    s.conns[i].req = raw.ToUpper()
    s.conns[i].hdrs = parseHeaders(raw)
}
```

- **Today**: 200,000 requests over 64 connections peak at **120 MB**, and it grows with the number of requests.
- **`Conn.req`: freed at each request.** Its values are `""` (constant data) and `ToUpper()`'s result (built). Nothing
  stores a reference into them.
- **`Conn.hdrs`: freed at each request.** Its values are a `Map` made by `Conn`'s zero value and `parseHeaders`'s
  result. That result is the local `m`, which O26a builds in the result scope; every key and value is a copy (`$...`).
  The old map's record, buckets, slots and texts go together.
- **Expected**: what 64 connections hold at once, well under a megabyte.
- **Blocked variant**: `s.lastHost = try s.conns[i].hdrs.Get("Host")` stores a reference into a connection's headers in
  a field of the server. Condition 2 fails, so every connection's old headers stay. The report:

```
server.olang:24:5: memory: 's.conns[i].hdrs' keeps what it lets go of until the Server's scope closes
server.olang:25:5: note: a reference into it is stored here, in 's.lastHost'; store a copy, '$(...)'
```

#### An interpreter's frames in a long-lived List

```olang
type Frame struct(d I64) {
    depth I64 = d
    vars Map<String&, I64>
}

type Interp struct() {
    frames List<mut Frame&>
}

fn (it mut Interp&) call(d I64) I64 {
    it.frames.Push(Frame(d))
    f := try it.frames.Last() catch { unreachable }
    f.vars.Put("x" $d, d)
    r := d
    if d > 0 { r += it.call(d - 1) }
    try it.frames.Pop() catch { unreachable }
    return r + f.depth
}
```

- **Today**: 100,000 calls six deep peak at **118 MB**. Usage study 6 measured the same shape in a real interpreter at
  1.8 KB a loop turn - 717 MB at 400,000 turns (ledger QF).
- **The frames are sole.** Each `Frame(d)` is built for the list, its keys are new text, and nothing stores a reference
  into a frame elsewhere. `Pop` takes the top frame out, and `call` drops it at the end of that statement.
- **As written, the frames stay.** `f` is used after `it.call(d - 1)`, and that call pops frames, so a view is held
  across a call that lets go (2.5). The report:

```
frames.olang:15:5: memory: removed elements of 'it.frames' are kept until the Interp's scope closes
frames.olang:18:12: note: 'f' (line 12) is used here, after 'it.call(d - 1)' (line 15), which removes frames;
                          read what you need from 'f' before the call
```

- **The fix is one line.** Read the number before the call: `depth := f.depth` before `if d > 0`, then
  `return r + depth`. A number carries nothing, so no view crosses the call. Every `Pop` then frees its frame - its map,
  buckets and key text - and memory is what six frames hold. `f` is also used after this function's own `Pop` in the
  original. That is the same-function case: `Pop` hands the frame to this function, which lets go of it at the end of
  that statement, so the free simply waits for `f`'s last use.
- With pins (question 1), the code as written frees too.

#### A Vec growing in a loop, with and without a view

```olang
fn squares(n I64) Vec<I64> {
    v := Vec<I64>()
    for i in range n { v.Push(i * i) }
    return v
}
```

- **No view**: each growth lets go of the old buffer, and the port frees it at once.
- **Today**: `Vec` already frees each old buffer, through `own`. Even so, 50,000,000 pushes (400 MB of elements) peak at
  **1.05 GB** in 1.11 s, against **0.53 GB** in 0.52 s for a `List`. The freed buffers go back to the thread's pool
  (O8b), not to the system - the run makes one `munmap` - and a growing Vec never asks for a size its old buffers can
  serve. Three such Vecs one after another also peak at 1.05 GB, so the pool does give the storage back to the next one.
- **Stage 0's handle Vec** keeps the old buffers in the Vec's scope instead. Expected: the same 1.05 GB, since the pool
  kept them anyway.
- **The port** can do better for a large buffer: grow it in place with `mremap`, moving no element and leaving no old
  buffer, whenever no view of it may be in use (section 4.3).

With a view the compiler can see, it is an error (M19g):

```olang
fn tail(n I64) {
    v := Vec<I64>()
    v.Push(1)
    head := v.View()                 # a window on the buffer as it is now
    for i in range n { v.Push(i) }   # may move the elements into a new buffer
    io.Println($head[0])!            # error[M19g]
}
```

```
tail.olang:6:16: error[M19g]: 'head' is a view of 'v' (line 4), and 'v' may have grown since
tail.olang:5:26: note: here; take the view after the growth, or copy the elements first: 'v.ToArray()'
```

A view the compiler cannot see across, through a second name stored in a structure, gives the old elements:

```olang
type Job struct() {
    items Vec<I64>
}

fn add(j mut Job&) { j.items.Push(9) }

fn report(v Vec<I64>, j mut Job&) {   # a caller set 'j.items = v' earlier: two names for one Vec
    head := v.View()
    add(j)                            # grows v through j.items - report cannot see that
    io.Println($head[0])!             # the old elements; memory-safe
}
```

- No compile-time error: `report` is given `j`, not `v`, and nothing in `report` says `j.items` is `v`.
- **Memory-safe.** The analysis takes `add` as possibly growing any Vec reachable from `j`, so `v`'s old buffer is
  kept while `head` is in use. The analysis may be conservative; the error may not, since it must never refuse correct
  code.
- **Caught elsewhere.** The compile-time evaluator stops on the read whenever it runs this code, and a `-sanitize` run
  reports it (section 4.4).

#### A Map with entries removed

```olang
type Rec struct(t String&) {
    text String& = t
}

fn main() {
    m := Map<String&, Rec&>()
    for i in range 1000000 {
        m.Put($i, Rec("payload " $i " - about sixty bytes of value text ....."))
        if i >= 100 { m.Remove($(i - 100)) }
    }
    io.Println($m.Len())!
}
```

- **Today**: at most 100 entries live at once, yet the run peaks at **99 MB**. `Map` already reuses a removed key's slot
  record; the keys and the `Rec`s accumulate.
- **Port**: each `Remove` lets go of its key and its `Rec`, both made for the map. Memory is what 100 entries hold.
  This needs the prelude's `Remove` to say it lets go of the entry (section 3.4, round 4).
- **Variants.**
  - A `Rec` read with `x := try m.Get(k)` and used after `m.Remove(k)` is a view held across a call that lets go (2.5):
    the map keeps what it removes, and the report says so. `x := try m.Take(k)` is the idiom instead: `Take` hands the
    value to this function, which lets go of it after `x`'s last use, and storing `x` somewhere is then a move.
  - One stored in a long-lived field (`s.current = try m.Get(k)`) stops this map's values from being freed early. The
    report names that store.

#### Text reassigned into a long-lived field

```olang
type Session struct() {
    status String& = ""
}

fn (s mut Session&) tick(n I64) {
    s.status = "line " $n " of the file - a status text padded out to about a hundred bytes ......................"
}
```

- **Today**: a million ticks peak at **131 MB**.
- **Port**: each tick frees the previous text. Memory is one status line.
- **Blocked variant**: `s.status = msg`, with `msg` a parameter, gives the field text that lives elsewhere. Condition
  1 fails for `Session.status`, so its own texts stay too. The report says to write `$msg`.
- **A local works the same way.** `s := ""` then `for w in words { s = $s " " $w }` lets go of the old text each turn.
  Today a run keeps every intermediate string - memory quadratic in the text's length. With the port it keeps one
  (the time is still quadratic; `StringBuilder` is the tool for that).

#### A syntax tree rewritten by passes

```olang
type Expr enum {
    Lit(v I64)
    Add(a Expr&, b Expr&)
    Neg(a Expr&)
}

type Program struct() {
    root Expr& = null
}

fn simplify(e Expr&) Expr& {          # a built result: every node is new
    match e {
        case Expr.Lit(v) { return Expr.Lit(v) }
        case Expr.Neg(Expr.Neg(a)) { return simplify(a) }
        case Expr.Neg(a) { return Expr.Neg(simplify(a)) }
        case Expr.Add(Expr.Lit(x), Expr.Lit(y)) { return Expr.Lit(x + y) }
        case Expr.Add(a, b) { return Expr.Add(simplify(a), simplify(b)) }
    }
}

# main: p.root = build(10), then 20,000 times: p.root = simplify(p.root)
```

- **Today**: 20,000 passes over a 3,070-node tree peak at **1.49 GB**.
- **Port**: `simplify`'s result is built. O14 refuses `return e` in a built result, so the result can hold nothing of
  its argument. Each `p.root = simplify(p.root)` lets go of the old tree with no view in use (the argument's view ended
  with the call), and frees it. Memory is two trees at the moment of the assignment, about 200 KB.
- **The sharing version stays.** `fn simplify(e Expr&) Expr&e` with `case Expr.Lit(v) { return e }` reuses
  unchanged nodes. Its result is borrowed from `e`, so new nodes are built where the old tree lives, and the place's
  new value lives in its old value's storage. Today it peaks at **0.99 GB**, and the port keeps it as it is. The report:

```
ast.olang:40:9: memory: 'p.root' keeps what it lets go of until main's scope closes
ast.olang:17:1: note: its new value is built where the old one lives: 'simplify' borrows its result from 'e';
                      a built result ('Expr&') frees the old tree
```

That is the real trade: share nodes, or free the old tree. The language does not hide it.

### 2.8 The report

`olang build -memory f.olang` (also `test -memory` and running a file with it) prints, after the diagnostics:

- one row for each place that keeps what it lets go of, at the place's let-go site in the program's code (a let-go
  inside the prelude is reported at the program's call, as B11 reports a library's error at its use);
- notes naming the reason: the store (condition 2), the value that was not made for it (condition 1), the view held
  across a call (2.5), the task (condition 3), the destructor (condition 4);
- one summary line.

```
$ olang build -memory server.olang
server.olang:24:5: memory: 's.conns[i].hdrs' keeps what it lets go of until the Server's scope closes
server.olang:25:5: note: a reference into it is stored here, in 's.lastHost'; store a copy, '$(...)'
memory: 3 places let go of storage in code that runs again - 2 free it at once, 1 keeps it (above)
```

It lists only what keeps memory, so a program with nothing to fix prints one line. Places that free at once are counted,
not listed. It is computed by the same analysis that decides the build, so it never disagrees with the program it
describes.

## 3. The port and the runtime

### 3.1 M6, the scope pass

M6 already owns placement (`compiler/DESIGN.md` 1.7) and computes summaries bottom-up over the call graph's strongly
connected components. Early freeing adds to it:

- **Per function, per parameter and global**: where references reachable from it may be stored (obligations and
  may-keep, already computed); which places it may let go of (`own`'s release effect); which views it holds across which
  calls (`own`'s loan liveness).
- **Per program, at the root**: the fixed point of 2.4 over all candidate places, giving each place sole or not, and for
  each place that is not sole the first reason found (the report's note).
- **In the plan**: `Built[site]` becomes `Region(site)` for a site building a sole place's value, as it already is for
  an `own` object today. Let-go sites are marked to release.

M6's formal model (`docs/scope-model.md`, planned as M6's first step) covers §8 alone now - no §8.8 - plus one chapter
for the provenance check of 2.4.

### 3.2 M7, lowering and MIR

The MIR (`compiler/DESIGN.md` 1.8.1) already has what this needs, built for `own`:

| MIR | `own` used it for | early freeing uses it for |
|---|---|---|
| `Region` scopes, `New(Region...)` | an own object's region (O30) | a sole place's value |
| `Give(s)` | the region now belongs to the owner just stored | the region now belongs to the place |
| `Release(p)` | an own slot released (O35) | a place lets go: free its region, or hand it to its scope (a pending destructor, a view across a call) |
| `RegisterOwner(s, p)` | owner locals, holds, results in flight | a local holding something moved out of a collection, released on every way out |
| `Take(p)` | a move (E34) | an inferred move: the last use of such a local, a collection handing out what it removes |
| O39-O41's liveness pass over MIR | a release under a live loan is an error | a release under a live view in the same function waits for the view's last use |

Lowering decides none of it; it reads the plan. The plan's invariant - nothing in it changes a value - still holds:
early freeing changes no value. The MIR verifier gains one rule: nothing reads through a region after the `Release` that
freed it, on any path.

### 3.3 What of `own`'s machinery is kept

| `own` (removed from the language) | kept, internal |
|---|---|
| a region per owned object (O30), small ones one block (13.4) | the region per sole place's value; the same runtime |
| release points (O35) | let-go points |
| moves by last use (O34) | inferred moves out of collections |
| loans and their liveness (O38) | views and their liveness |
| release effects, a fixed point over bodies (O39) | may-let-go effects |
| confinement of borrows (own4) | condition 2, as a fallback instead of an error |
| reach (O34) | the scope a region is handed to when it cannot be freed |
| drop registration (decision 16) | handing a region to its scope |

What is not kept: every error (O32-O42), `take`, borrowed copies, owning parameters and results as written. Where `own`
refused a program, the analysis keeps the storage instead and says why.

The thirteen review rounds in `docs/own.md` (sections 12-27) found use-after-frees that the checker accepted. The same
holes now mean a wrong early free, not a wrong error, so the risk moves rather than disappears (section 6.1). What
changes is that the conservative answer is always available: when in doubt, keep.

### 3.4 The runtime: how memory is actually returned

The arena is a bump allocator. It can only free a whole scope. So a value that may be freed early must not be bumped
into its place's scope: it is **built in a region of its own** from the start, at the build site the plan names.

- **A region is `own`'s, unchanged** (`std/runtime/runtime.ll`, `__olang_own_new`, `__olang_own_free`, renamed
  `__olang_region_*`). A value of at most 2 KB and its first allocations take one block from the C allocator: a 48-byte
  header, room for destructor nodes, a word before the value naming the region, the value. A larger value takes arena
  chunks under a scope header, growing as any scope does. What the value builds later - chunks of a builder it holds, a
  map's buckets - lands in the same region; the word before the value is how lowering finds it.
- **Freeing** closes the region: its chunks go back to the thread's pool (O8b), a small region's block to the C
  allocator.
- **Where freed storage goes.** The pool keeps what a thread frees for its later allocations of that size, up to an
  eighth of RAM, and returns storage to the system only beyond that (O8b). So a workload that replaces again and again
  settles: the pool hands the same storage back. One growing buffer does not lower its own peak (measured in 2.7).
- **Cost.** An allocation into a region is a C-allocator call (tens of nanoseconds) where a bump is a few. A free is a
  `free`. Measured with `own`: a million small objects made and released in 0.18 s and 111 MB (13.4). That is why
  condition 5 limits regions to places that let go again before their scope closes. If the C allocator shows in the
  benchmarks, small regions come from per-thread slabs beside O8b's classes (`own`'s decision 15, never built).
- **Collections** keep one flag in their record (`listState`, `mapState`, `vecState`), set at construction from the
  construction site's decision. Element let-go code in the prelude tests it: a predictable branch per removal of an
  element type holding references, none for numbers.
- **Two internal operations for the prelude.** A collection's invariant - which positions are live - is not something
  the compiler can infer: after a shift, the last position holds a duplicate of a live element. So the prelude says
  what it lets go of, with two compiler-supplied operations only the prelude may call:
  - `p.vacate()` gives what `p` holds and leaves `p` empty (zero bits). As a statement, it lets go of it. `Pop`,
    `TakeAt`, `RemoveAt`, `SwapRemove`, `Clear`, `Truncate`, `Map.Remove` and `Map.Clear` use it; a shift moves with
    it, so no duplicate is left.
  - `a.retire()` says a collection no longer uses an array: a `Vec`'s old buffer, a `List`'s or `Map`'s replaced index
    array. Views of it are stale from then on (M19g).

  Stage 0 compiles `vacate` as a plain read and `retire` as nothing, so optimized code does not change (round 4's
  acceptance). Under `-sanitize`, `retire` poisons and holds back the array (section 4.4).
- **Large buffers grow in place.** For a buffer that is a whole mapping, growth can use `mremap`, which moves no element
  and leaves no old buffer - but only when no view of it may be in use, the same condition as freeing it. Measured
  before it is decided (section 4.6).

### 3.5 Separate compilation

Each module is compiled once to its own object (B3), but a place's decision depends on the whole program. The answer is
B3d's: the root object decides. Each site that depends on a decision - a build site, a let-go site, a collection's
construction - reads an external constant (`@olang.sole.<place>`), and the root object defines every constant after the
analysis. LTO folds them away, so an optimized build pays nothing. `-race` builds, which skip LTO, load a constant.
Nothing else in a non-root object changes, so it still depends only on its sources.

### 3.6 Testing it

The analysis has `own`'s weakness: a bug is a use-after-free. Three oracles catch one:

1. **The evaluator.** A debug mode of `eval` (M8) marks a region dead where lowering frees it, and stops at any read
   through it with an internal compiler error. Run on the corpus and the fuzzer's programs.
2. **The sanitizer.** Under `-sanitize`, every early free poisons and holds back the region (B2f, unchanged), so a wrong
   free is reported in a run.
3. **The scope fuzzer** gets an early-free mode in place of its `own` mode: scenarios that replace and remove in
   long-lived places, keep views across calls, stores into other places, read everything back after a churn, run under
   `-sanitize` against `interpret`. Each scenario also has a memory bound, so a place that should have freed and did not
   is a finding too.

The six programs of 2.7, scaled down, become checks with memory budgets (`ulimit -v`, as the landing checks already
do).

## 4. Vec

### 4.1 Representation

```olang
type Vec<T> struct(cap I64 = 0) {
    s mut vecState<T>& = vecState<T>(cap)       # every copy of this value names the same Vec
}

# what a Vec holds - private, reached only through a Vec
type vecState<T> struct(cap I64) {
    data mut Array<T>& = Array<T>(cap)          # the buffer; its first n elements are the Vec's
    n I64 = 0
}
```

- **A handle**, as `List` and `Map` are (O17b). A `Vec` value is one reference to a record holding the buffer and the
  count, made where the `Vec` is constructed (C2d).
- **Copies are second names.** `b := a`, a field, an element and a by-value argument all name the same Vec, as a copy
  of a Go map does. `Clone()` is a copy with storage of its own. `Array<Vec<I64>>(n, Vec<I64>())`
  is `n` names for one Vec (T8), as for `List`.
- **Nothing about it is special to the checker.** It is an ordinary value: a type argument (`List<Vec<T>>`,
  `Map<K, Vec<V>>`, `Vec<Vec<T>>`), a field, a global, a capture, a task's argument. Everything Vec phase 2b was going
  to add works without it.
- **Its operations keep their names and meanings** (M19d): `Push`, `PushAll`, `Reserve`, `Len`, `Cap`, `v[i]`,
  `v[i] = x`, `First`, `Last`, `Pop`, `Clear`, `Truncate`, `Insert`, `TakeAt`, `RemoveAt`, `SwapTake`, `SwapRemove`,
  `Reverse`, `Sort`, `IndexOf`, `Remove`, `Has`, `Join`, `View`, `ViewMut`, `Iter`, `Clone`, `ToArray`, `Eq`, `Hash`,
  `Str`. Two go: `RunFrom` (4.2) and the `own` in `vecGrown`.

### 4.2 Indexing, walking, and why the loads hoist

`v[i]` is three steps: the handle's reference (`v.s`), the buffer's descriptor (`s.data`), the element. When `v` is a
local, the handle sits in a register, and the descriptor load is the only cost beyond an array's. When `v` is a field
reached through a parameter (`s.pos[i]`), the handle's reference is one more load.

**In a loop that does not grow the Vec, both loads hoist.** T36 already tags an array's descriptor as a field and an
element store as an element, and those two families never alias. So `for i in range n { v[i] = v[i] * 2 }` loads the
descriptor once, as for an array.

**What has to be added is a tag on references.** T36 leaves them untagged, so the load of `s.pos`'s reference may alias
every element store, and LLVM reloads it each iteration. Extend T36's field/element split to references. It is sound
for the same reason: no storage is reachable both as a field and as an element, and olang has no casts. Then a method
like `fn (s mut Sim&) step() { for i in range s.pos.Len() { s.pos[i] += s.vel[i] } }` hoists all four loads. That
also helps `List` and `Map` held in fields.

**A loop that may grow the Vec reloads**, after the call that may grow it. That is what `std::vector` and Rust's `Vec`
do, and it is correct: the buffer may have moved.

**`for x in v` walks through the handle**, by `At` and `Len` (S9d), not by a run (S9f). It never holds a view. When
nothing in the body can change `v`'s record - no store to it and no call LLVM cannot see through - the loads hoist and
the loop vectorizes as an array walk does (measured in 4.6). When the body
pushes, it sees what it pushed, as a walk over a `List` does - a work list is `for x in q { ... q.Push(y) }`. So `Vec`
drops `RunFrom`, which handed the loop one view of the whole buffer.

### 4.3 Growth

- **Geometric.** A full buffer is replaced by one twice the size (8 at first). The elements are copied, and the old
  buffer is let go - an assignment to `s.data`, followed by `old.retire()`.
- **The port frees the old buffer at once** when no view of it may be in use: when no `View()` of that Vec's buffer is
  stored anywhere and none is live across a call that may grow it. That is the ordinary rule, applied to
  `vecState.data`.
- **Otherwise it stays until the Vec's scope closes.** The buffers growth leaves add up to less than the final one (8 +
  16 + ... + N/2 = N - 8), so a Vec never holds more than twice what its last buffer takes. Stage 0 always works this
  way.
- **Shrinking keeps the capacity.** `Pop`, `Clear` and `Truncate` keep the buffer, so a Vec emptied and refilled
  allocates nothing. To give a big buffer back, replace the Vec: `v = v.Clone()` lets go of the old one.
- **Large buffers.** A buffer of at least a megabyte is a whole mapping. When no view may be in use, the port grows it
  with `mremap`: no copy, no old buffer, and the 2x peak of 2.7 disappears. Measured before it is adopted.

### 4.4 Views, and staleness

**M19g (a Vec's views).** `v.View()` is a window on `v`'s buffer as it is now: its elements as an `Array<T>&`,
`ViewMut()` writably. It is valid until `v` grows - a `Push`, `PushAll`, `Insert` or `Reserve`, any Vec method whose
body may replace the buffer - since growth moves the elements into a new buffer and the view still shows the old one.

- A view is the only way to have a Vec's elements as an array. There is no implicit conversion from `Vec<T>` to
  `Array<T>&` and no slice operator on a Vec: `v.View()[a:b]` is the one spelling, so every view is written in the
  source.
- Using a view after its Vec may have grown is a compile-time error where the compiler can see the same Vec on both
  sides:
  1. **In one function**: the function grows `v` - a growing method called on `v`, or on a second name of it the
     function made (`w := v`) - between taking the view and using it.
  2. **A call given both**: a call between the view and its use, or a call given the view, is also given `v` - or a
     writable struct holding `v` - through a parameter its body may grow. That is read off the body: a growing method
     called on the parameter or a part of it, or the parameter handed to a callee that may, settled as a fixed point
     over calls. A callee whose body is not known (a function value, an `extern`) counts as growing what it is given
     writably.
  3. **A global by name**: `v` is a mutable global, or reached from one by fields, and such a call's body may grow that
     global by name (a fixed point over bodies).
- **Never by element type.** Reading one Vec while another of the same element type grows is fine. A call through a
  function value is not assumed to grow a Vec it is not given.
- What it cannot see - a callee growing `v` through another path, such as a second name stored in a structure - is the
  documented hazard: the view shows the elements as they were at the growth.

**That hazard is never a memory error.** A buffer is not freed while a view of it may be in use (O8d), so a stale view
reads valid memory holding the old elements. Two more nets catch it where it runs:

- **The compile-time evaluator** (K1, `interpret`) knows which Vec each view came from. `retire()` marks the old buffer,
  and a read or write through a view of a retired buffer stops evaluation with both places named - the view and the
  growth. That covers the asserts it decides, the globals it bakes and every program it interprets, hidden routes
  included.
- **Under `-sanitize`**, `retire()` poisons the old buffer and holds it back (B2f) instead of keeping it, so a stale
  read is reported at run time. A sanitized Vec's buffer has a mapping of its own, so it can be made unreadable.

The residual hazard is only a hidden alias, in code that neither the evaluator nor a sanitized run reaches.

**Staleness is a correctness issue, inherent to growable contiguous arrays.** It is not a memory issue. Every language
with one has it:

| language | a view or iterator kept across growth |
|---|---|
| C++ `std::vector` | invalidated: undefined behaviour |
| Go `append` | shares the old array or not, depending on capacity, silently |
| Java `ArrayList` | an iterator fails at run time (a modification count checked at every step) |
| Rust `Vec` | refused at compile time, by the borrow checker |
| olang `Vec` | written (`View()`), refused where exact, caught by the evaluator and the sanitizer, otherwise the old elements - never freed memory |

olang makes it visible rather than analysing it away.

### 4.5 Why both halves are needed

- **Early freeing alone** cannot make a contiguous growable array safe. A view across a growth either dangles or needs
  ownership and borrow errors - which is what `own` was.
- **The handle alone** makes `Vec` simple and safe: no ownership, copies are second names, growth never dangles,
  garbage bounded under the final buffer. But long-lived structures still grow without bound: a field replaced per
  request, a map's removed entries, popped frames (2.7: 99 MB to 1.49 GB of garbage today). That is ledger QF, the
  problem `own` was made for.
- **Together** they cover what `own` covered, with nothing for the programmer to write.

### 4.6 Benchmark plan

`bench/vec.olang` and a C counterpart. Instruction counts come from callgrind at `-target x86-64-v3` (valgrind cannot
run AVX-512), and times are interleaved medians from `bench/run.sh`. The baselines are an `Array`, a `List`, and today's
`own` Vec (a worktree at the commit before round 1).

| row | what | budget |
|---|---|---|
| walk | `for x in v`, a sum over 1M, 10 times | within 3% of an Array's instructions; vectorized |
| gather | `v[idx[i]]`, 10M random | within 5% of an Array (today: Vec 110M, Array 105M, List 600M) |
| store | `v[i] = v[i] * 2` | within 3% of an Array |
| two fields | `s.pos[i] += s.vel[i]` in a method | within 5% of the same on two Arrays, every load hoisted (needs 4.2's reference tags) |
| push | 1M, then 50M | 1M within 10% of today's Vec (75.0M instructions, List 38.7M); peak memory at 50M (today 1.05 GB, List 0.53 GB) |
| opaque call | a loop calling a function each element | reloads expected; recorded, no budget |
| sort | `Sort` with a lambda, 1M | within 5% of today's (731M) |
| `mremap` growth | 50M pushes, the port | peak memory and time, against the copy |

A budget missed is a finding for the round that caused it, not a reason to keep the old Vec.

### 4.7 Considered: dropping Vec

Arrays for fixed sizes, `List` for growing, `l.ToArray()` - one visible copy - where contiguity is needed. A `List`
never moves what it stores, so no view of it is ever stale, and its growth leaves nothing to free.

- **Cost**: random indexing of a `List` is about 5.7 times an array's instructions (600M against 105M for 10M accesses,
  `docs/own.md` 19.3). Walking costs the same (117.5M each), and pushing is cheaper (38.7M against 75.0M).
- **Decision**: the user kept Vec ("No don't drop vec yet").
- **Independent of this**: `List` already reads its first chunk (8 elements) directly. Beyond it, indexing finds the
  chunk with six comparisons, because olang has no leading-zeros operation. A compiler-supplied `x.LeadingZeros()` on
  integers (LLVM's `ctlz`, one instruction) would make that one step. Worth doing for `List` whatever happens to `Vec`.

## 5. Removal, migration and the build plan

### 5.1 What goes

| what | where |
|---|---|
| `own` and `take` as keywords, `own` in `type-expr` | SPEC L-rules and grammar; `bootstrap/token.c`, `syntax.c`; `compiler/scan.olang` |
| owned references, regions as a language concept, reach, moves, releases, loans, borrowed copies, owning parameters and results | SPEC §8.8 (O30-O42), T25e, E34 |
| *(§8.8, not yet implemented)* clauses | SPEC L9, T2, T8, E1, E31b, S3, C11, M19d, K1, K2 |
| the borrow errors | `bootstrap/errmsg.h` (O30-O42, T25e, E34 entries); `compiler/msgs.olang` |
| the §8.8 checker, codegen and evaluator code | `bootstrap/semantic.c`, `codegen.c`, `comptime.c` |
| `Owning` in types, `Take` as written | `compiler/types.olang`, `compiler/typed.olang` (an inferred `Take` stays) |
| the scope fuzzer's own mode | `fuzz/scopegen.olang`, the checks scenario that runs own seeds |
| "Owned references ... a check of their own" | PRINCIPLES.md ("Deliberately not"), CLAUDE.md's opening and its "Ownership (§8.8)" section |

Kept: the runtime's region functions (renamed, for the port), every §8 rule outside §8.8, `TakeAt`/`SwapTake`/`Take` as
ordinary collection methods (the prelude's own naming: Take gives, Remove lets go). `docs/own.md` stays as the record,
with a status line pointing here. Rule numbers O30-O42 are retired, not reused.

### 5.2 Destructors and prompt release

**Destructors keep running exactly where they do today**: once per constructor call, when the scope the instance was
built in closes, in reverse construction order (O15, O16). Early freeing never moves one.

**Why destructor timing must not depend on the analysis:**
- **Behaviour must not depend on how precise the analysis is.** Stage 0 frees nothing early and the port does. Every
  improvement to the analysis would free more, earlier. If destructors followed the frees, the same program would run
  differently under stage 0, the port and each later port.
- **Swift is the cautionary example.** Its optimizer may release an object right after its last use rather than at the
  end of its scope. Code that relied on a `deinit` at scope end broke, and `withExtendedLifetime` had to be added to pin
  objects alive.
- **A destructor's effects are what make early running observable**: a file descriptor number copied out, output order,
  shared state, a lock released. A destructor that touches only its own object only frees memory, and freeing memory
  needs no destructor.

**So storage holding an instance whose destructor is still to run is never freed early** (O8d's condition 4). When a
place lets go of such a value, its region is handed to the scope §8 places it in and closed with it.

**Prompt release of a resource becomes a written call** - the one thing `own` did automatically that a program now
writes. `own` closed a connection's socket the moment the connection left its map. Now the handler writes
`c.Close()` before removing it.

std's resource types (files, sockets, processes, channels) follow one pattern:
- **`Close()` is idempotent.** The object records that it is closed (`fd = -1`); a second `Close` does nothing.
- **The destructor is the backstop.** It closes only what is still open, when the object's scope closes.
- **Use after `Close` fails with an error** (`IoError.CLOSED`) instead of touching a descriptor number the system may
  have handed to another file.

**The consequence, stated plainly.** With the backstop, a closed socket's destructor is still pending until its scope
closes. By condition 4, the value holding it - a `Conn` in a long-lived map - then stays too: memory grows with the
number of connections ever opened, even though each was closed. Direction question 2 (section 6.3) is a way out:
`Close()` disarms the backstop, after which the instance has no destructor left to run, and its value can be freed when
removed. For nothing of the backstop to stay behind, its registration node lives in the instance's own region and is
unlinked from its scope's list when disarmed (the list becomes doubly linked). Without it, a long-lived structure that
should not grow holds its resources by descriptor (`I32`, as `std/os` does today) or in types without a destructor.

**What the server of 2.7 needs.** Its `Conn` holds `fd I64`, a plain number, so early freeing works for it as written.
A `Conn` holding a std resource type instead (a socket object with a destructor) would keep every connection's storage
for as long as the server lives, closed or not. So disarming is a dependency of early freeing for servers, not an
extra:
- with it (ledger QAD 2, recommended yes; the user has not answered yet), `c.Close()` then the removal frees the
  connection;
- without it, a server that should stay flat holds descriptors, and std's resource types do not compose with early
  freeing in long-lived structures.

### 5.3 What each use of `own` becomes

| today | after |
|---|---|
| `std/prelude/vec.olang`: `data own mut Array<T>&`, `vecGrown(take v.data, ...)` | the handle of 4.1; growth assigns `s.data` and calls `old.retire()`; no `own`, no `take` |
| `Vec.View()` as a borrowed own result (O37) | an ordinary borrowed result `Array<T>&v`; M19g decides misuse |
| `Vec.RunFrom` | removed; `for x in v` walks by `At`/`Len` (4.2) |
| `Vec.Clone()` as an owned result | an ordinary result |
| `std/prelude/tests/vec.olang` (10 tests) | rewritten for the handle: second names, `Clone`, Vec as a type argument, field, global, capture and task; the K2 and S18c tests kept |
| `tests/shared.olang`, 37 tests named O30-O42 | removed - they test removed rules. Shapes that still mean something without `own` (a million-node chain, a deep fork) become plain scope tests read back after a churn |
| `checks/cases/o30*`-`o42*` (156: 155 fail, 1 run) | the fail cases removed with their rules; the run case kept without `own` |
| `checks/cases/vec*` (160: 138 fail, 22 run) | the fail cases removed (they expect `own`'s errors on Vec); the run cases kept, adapted; new M19g cases (round 2) |
| `checks/cases/o17permute*` (13) | removed: they guarded lending an own array's buffer |
| `fuzz/scopegen.olang`'s own mode (about 100 lines) | removed; the port adds the early-free mode (3.6) |
| `fuzz/gen.olang` (4 lines of `own`) | removed |
| `compiler/scan.olang`, `types.olang`, `typed.olang`, `msgs.olang`, `generic.olang` | `own`/`take` tokens, the `Owning` flag, written `Take`, the own messages and one generic test removed |
| `compiler/mir.olang` | `Region`, `Give`, `Release`, `RegisterOwner`, `Take` kept, with comments pointing here |
| `compiler/DESIGN.md` | 1.6.1, 1.7, 1.8, 1.8.1 and the M6/M7 rows rewritten: §8.8 out, early freeing in (3.1-3.2) |
| oann | nothing: it uses neither `own` nor `Vec` |

### 5.4 What QJ1, Vec phase 2b and the work waiting on them become

- **QJ1 (borrowed copies)** is gone. `b := a` is a second name for every collection.
- **Vec phase 2b** is gone. Its list (`docs/own.md` 19.4, 25.6) was Vec as a type argument, in tasks and lambdas, own
  elements in `List`/`Map`, and `TakeAt`/`SwapTake` moving owners. The handle gives the first three after round 1; early
  freeing gives the rest in the port.
- **QZ2's plan** waited on phase 2b: the iterator helpers and `StringBuilder` onto `Vec` (`a.ToVec()`), and `List` to
  `std/list`. It can start after round 1. It is decided separately and is not part of this plan.
- **Ledger QF** (long-lived structures only grow) is answered by early freeing, in the port. Its test is 2.7's six
  programs staying within their memory budgets.

### 5.5 The build plan

Six rounds, in order. Each round is one branch and leaves `make verify` passing. Each walks CLAUDE.md's checklist: SPEC
first, both compilers where it applies, the evaluator, tests, checks, migration, diagnostics, CLAUDE.md and HISTORY.md
(the ledger is the coordinator's). Rounds 2 and 5 touch different files and may run in parallel; the rest are
sequential, because they all edit `bootstrap/semantic.c` and SPEC.

**Round 1 - Vec as a handle.**
- **std**: `vec.olang` as in 4.1-4.3, without `own` or `take`. Growth fills the new buffer, copies, assigns `s.data` and
  calls `old.retire()`. `RunFrom` goes; `for x in v` walks by `At`/`Len`.
- **Compiler (stage 0)**: `a.retire()` on arrays, callable only from the prelude's modules. In codegen it is nothing,
  except under `-sanitize`, where it poisons the array and holds it back through `san.ll` - a sanitized Vec buffer gets
  a chunk of its own. In the evaluator it marks the array's node retired, and a read or write through a reference into
  a retired array stops evaluation with both places.
- **SPEC**: M19d's Vec paragraph rewritten for the handle; B2f gains "a Vec's replaced buffer"; K1 gains the
  stale-view stop.
- **Tests**: `std/prelude/tests/vec.olang` rewritten (5.3), each read back after a churn. A stale view through a hidden
  alias is caught by an assert the evaluator decides (a must-fail check) and by a `-sanitize` run (a checks scenario).
- **Checks**: delete the `vec*` fail cases whose programs now compile; adapt the 22 run cases.
- **Bench**: 4.6's rows, recorded against today's Vec.
- **Accept when**: `make verify`; the Vec tests agree built, built with `-debug`, built with `-sanitize` and
  interpreted; 4.6's budgets met or each miss recorded as a finding.

**Round 2 - the view rule, M19g, in stage 0.**
- **Checker**: the three cases of 4.4. Case 1 is liveness of what derives from `View()`/`ViewMut()` in one function.
  Cases 2 and 3 need a may-grow summary per parameter and per global name: a fixed point over bodies, written new or
  adapted from `own`'s release effects. A method "may grow" when its body assigns `vecState.data` or calls one that may.
- **Diagnostics**: `error[M19g]` with a note at the growth naming the fix (take the view after it, or `v.ToArray()`).
- **SPEC**: M19g.
- **Checks**: one must-fail case per route - a direct `Push`, a second name, a call given `v` that grows it, a writable
  struct holding `v`, a global grown by name, a chain of callees, a function value given `v` writably. Run cases for
  what is allowed - another Vec of the same element type growing, a call given `v` read-only or one that only sets
  elements, a view taken after the growth.
- **Accept when**: `make verify`; every case names `M19g`.

**Round 3 - `own` removed from stage 0 and from SPEC.**
- **Parser**: `own` and `take` stop being tokens; they become names.
- **Checker**: the §8.8 code goes - ownership settling, release and borrow effects, the borrow pass, regions, reach,
  confinement, borrowed copies, holds, owned results, O17's own-array cases, T25e, E34.
- **Codegen**: regions, `Give`/`Release`, drop nodes, F3's holds and results in flight go. The runtime's region
  functions stay, renamed `__olang_region_*`, with a C-driven test in `checks` (as B2f's scenario drives the runtime) so
  they keep working until the port uses them.
- **Evaluator**: its region model goes.
- **errmsg**: the O30-O42, T25e and E34 entries go.
- **SPEC**: §8.8, T25e, E34, every *(§8.8, not yet implemented)* clause, the keywords, the grammar, §8's title and
  opening, O8c's last sentence, the Map paragraph's own values; O8c revised and O8d and O15's sentence added (1.1),
  O8d marked *(not yet implemented)*. The other edits of `docs/scope-model.md` 9.1 item 9 land here too, S13b's
  included: a binding read out of a by-value enum parameter is built into where that parameter's scope variable says
  (O4b), not "nothing is built into" it. It is the one place the scope model departs from SPEC's letter.
- **Records**: PRINCIPLES.md's "Deliberately not" line; CLAUDE.md's opening paragraph, "Ownership (§8.8)" removed and
  "Memory and scopes" given the O8d entry and the Vec entry; HISTORY.md's entry; `docs/own.md`'s status line;
  `docs/README.md`.
- **Tests, checks, fuzz**: as 5.3.
- **Accept when**:
  - `make verify` passes;
  - no `own` or `take` remains as language anywhere in the repository (comments in HISTORY and `docs/own.md` excepted);
  - **IR identity**: the IR stage 0 writes for every program in the corpus, std, checks, bench and fuzz that never used
    `own` is byte-identical before and after the round, collected as for the move to `bootstrap/` (743 files then);
  - the scope fuzzer, in its remaining modes, finds nothing at its fixed seeds.

**Round 4 - the prelude lets go explicitly.**
- **Compiler (stage 0)**: `p.vacate()` on any place, callable only from the prelude's modules. Stage 0 and the evaluator
  compile it as a plain read: the slot keeps its bits, which nothing reads, since the prelude vacates only dead
  positions.
- **std**: `List`, `Vec` and `Map` let go with it - `Pop`, `TakeAt`, `RemoveAt` (shifting by `vacate`), `SwapTake`,
  `SwapRemove`, `Clear`, `Truncate`, `Map.Remove`, `Map.Clear` - and `Map.Take(k)` is added as an ordinary method.
- **SPEC**: M19d lists `Take`; the internal operations are not language and go in no rule beyond M19d's note that the
  prelude has them.
- **Accept when**: `make verify`; the collection tests unchanged and passing; the bench's instruction counts unchanged
  (the optimizer deletes a loop of plain reads, so `Clear` costs what it did).

**Round 5 - the port's code and design.**
- **compiler/**: 5.3's rows. `DESIGN.md`: §8.8 out, 3.1-3.3 in, the M6 and M7 rows rewritten.
- **Accept when**: the port's acceptance so far still passes (`tokdiff`, `astdiff`, `namesdiff`, `layoutdiff`, the
  modules' own tests).

**Round 6 - early freeing, in the port (M6, M7, M9).**
- The analysis of section 2 (M6), lowering (M7), the runtime of 3.4, the report (B14), the three oracles of 3.6, and
  4.6's `mremap` row.
- **The gate.** Early freeing is unsafe in one way only: a place wrongly proved sole while a reference into its region
  escapes. Everything else it gets wrong only keeps memory. So the round is held to three things before any
  measurement:
  1. **No reached program reads a freed region.** The evaluator's dead-region mode, `-sanitize` and the early-free
     fuzzer (3.6) run over the corpus, std, checks and the fuzzer's programs, and find nothing.
  2. **Every relaxation is reviewed.** The first version keeps wherever 2.6 says. Each step past that gets a soundness
     review before it merges, as each `own` relaxation did.
  3. **Always keep where a fact is missing.** A fact not computed, not converged, or not known for a body (a function
     value, an `extern`, a cycle not yet settled) means keep. Keeping is the default answer, not an afterthought.
- **Two reachability notions 2.3 does not list.** The analysis needs both. Each has a structural, conservative default,
  as 2.6 item 5 has for callbacks:
  1. **Which construction-site collections a parameter may reach.** It decides whether a call may let go of, or grow,
     a place the caller holds a view of (2.5, and the hidden alias of 4.4's `report`/`Job`). Default: a parameter
     reaches every construction site whose collection type is reachable from the parameter's type through fields,
     elements, payloads and references. A global reaches the sites reachable from its type. A body not known reaches
     every site reachable from what it is given. Only a site not reachable this way is distinct.
  2. **Which construction-site collections a task may reach** (condition 3). Default: every site reachable, by the
     same type walk, from the task's arguments, captures, the function values held in what it is handed, its clauses
     and targets, and from every global. All of them are kept.
  Precision past these defaults is a relaxation, under the gate above.
- **Accept when**:
  - 2.7's five programs that replace in long-lived places (server, frames, Map, text field, tree), as checks under
    `ulimit -v`, stay under 8 MB each - the frames one in its one-line-fixed form, or as written if pins were chosen;
  - the Vec program peaks under 1.5 times its final buffer with `mremap` growth, or, if `mremap` is not adopted, at
    round 1's measurement;
  - their blocked variants produce exactly the report rows shown in 2.7;
  - the evaluator's dead-region mode, `-sanitize` and the early-free fuzzer find nothing;
  - `bench/` within 2% of round 5's times outside the rows that allocate into regions.

**Round 7 - `x.Destroy()`, decided by the user 2026-10-18 (replaces disarming, ledger QAD).**
- **Rule:** `x.Destroy()` runs the destructor of `x`'s object now and marks it run, so nothing runs for it when its
  scope closes: every destructor runs exactly once, at its scope's close or at a proven `Destroy()`. It compiles only
  where the compiler proves `x` is the sole way left to reach the object - the early-free proof of section 2 (no
  reference to it stored anywhere else, no view of it live); otherwise it is an error naming what else reaches it. A
  use of `x` after it in the same function is an error. So early destruction never causes a use-after-free or a
  use-after-close. With no destructor pending, the object's storage may be freed early (section 2).
- **No `Close`, no idempotent destructors:** the destructor is the close. std's resource types lose `Close`.
- **Stage 0:** a simple local version - `x` a local initialized straight from a `Take` or a constructor call, never
  stored, passed, captured or viewed. **The port:** the full analysis, in M6.
- **Fallback, documented:** a long-lived structure whose values cannot be proven sole is rebuilt periodically - a block
  inside the server loop, left every N requests, so its scope closes and every destructor runs once.
- **Accept when:** a server holding std sockets in a `Map` stays flat (as 2.7's server) with `Destroy()` after `Take`;
  must-fail cases for a second reference (another map, a field, a capture), a use after `Destroy()`, and a view held.

## 6. Risks, decisions, questions

### 6.1 Risks

1. **A wrong early free is a use-after-free.** `own`'s thirteen review rounds found holes like these in a checker of
   the same shape. Mitigations: the fallback is always to keep; the three oracles of 3.6; each relaxation of the
   analysis gets a soundness review before it merges, as each `own` relaxation did.
2. **At-a-distance effects.** One store in another module stops a place from freeing early. The report makes it
   visible, but a programmer must look.
3. **Compile time.** The fixed point runs at every root build over the whole program's summaries. The summaries are
   per function and the fixed point is over places, so it should be small next to checking; it is measured in round 6.
4. **Allocation cost.** A region costs a C-allocator call where a bump is cheaper. Condition 5 confines it to places
   that let go again; a loop replacing a field a million times now pays malloc and free a million times, for flat
   memory.
5. **Freed storage is reused, not returned.** The pool keeps it (O8b). A program whose peak is one big growth does not
   get its peak back (2.7); `mremap` growth answers that for large Vec buffers only.
6. **Destructor-holding values** in long-lived structures keep growing unless question 2 is answered yes. This is
   a dependency for the server use case, not a refinement: a `Conn` holding a std socket object frees nothing early
   without it (5.2). Ledger QAD 2, unanswered.
7. **Threads.** Servers that share structures with tasks get no early freeing from this first version.

### 6.2 Decided here

These are details within the user's direction. They are recorded so the user can object.

1. Places are decided per declaration; a collection's elements and a Vec's buffer per construction site (2.1, 2.6).
2. Decisions are made at the root and delivered as link-time constants folded by LTO (3.5).
3. A region is `own`'s runtime region, unchanged, and freed storage returns to the thread's pool (3.4).
4. Condition 5: only places that let go again before their scope closes get regions (O8d).
5. Values a task can reach are never freed early in this version (condition 3).
6. The prelude gets two internal operations, `vacate()` and `retire()`, no part of the language (3.4).
7. `Vec` drops `RunFrom`; `for x in v` walks by `At`/`Len` and sees what the body pushes (4.2).
8. `Vec` has no slice operator; `v.View()[a:b]` is the one spelling (4.4).
9. M19g case 2 reads the callee's body per parameter, rather than refusing every call given `v` writably. It refuses
   less correct code and is still exact: never by element type (4.4).
10. T36's field/element split extends to references (4.2).
11. The report is `-memory`, an option of `build`, `test` and running a file; it lists only places that keep (2.8).
12. `Map.Take(k)` is added as an ordinary method (round 4).
13. `docs/own.md` stays as a record; O30-O42 are retired, not reused.

### 6.3 Direction questions

1. **Pins for views held across a call.** A local reference into a value, still used after a call that may make its
   place let go, currently makes that place keep everything it lets go of (2.5). Pins would make it exact: the view
   raises a count in the value's region before the call and lowers it after its last use, and a let-go frees an
   unpinned value at once and a pinned one at its last unpin. The cost is two stores at each such call, at sites the
   report lists - a run-time cost the code does not show (principle 2). Without pins, the interpreter of 2.7 frees only
   after its one-line fix; with them, as written. **Recommended: no pins in the first version.** The report shows the
   line to change, and pins can be added later without changing any program.
2. **Disarming a destructor.** Should a type's own methods be able to cancel its destructor for one instance, once they
   have done its work - so `Close()` leaves nothing pending, and a closed connection's storage can be freed when it is
   removed (5.2)? It would be a compiler-supplied method callable only in the type's own module (spelled `x.Disarm()`,
   say). It keeps destructor timing independent of the analysis: whether the destructor runs depends only on whether
   the program closed the object. **Recommended: yes.** Without it, a long-lived structure holding std's resources
   grows with every resource it ever held, and the server of 2.7 frees early only while its `Conn` holds a
   descriptor number (5.2).
