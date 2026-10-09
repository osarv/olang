# olang principles

What olang is for and how it should feel. This is the yardstick every design detail is measured against; `spec.md`
says what the rules are, `CLAUDE.md` records each decision, `HISTORY.md` why.

olang is a general-purpose language for AI and data work, scripting, tools and GUIs, and the base of larger projects.
So the design has to be **solid and smooth**: rules that compose, no rough edges left for later.

## The principles, most binding first

1. **No manual memory management, and no garbage collector.** Memory lives in scopes: what a block allocates is
   reclaimed when the block closes, in one step. A reference's scope is part of its type and the compiler proves it
   never outlives what it names (§8). There is no `free`, no reference counting, no collection pause. Resources (a file,
   a lock) have destructors, run once when their scope closes.
2. **C-like performance.** You get what the machine can do unless you ask for less: `-O3` and whole-program LTO by
   default, generics compiled per type, data laid out as C lays it out. **No cost is paid per operation that the code
   does not show**: indexing, arithmetic and conversions are unchecked, and `try` opts into a check where you want one.
   A check paid once per construction (a slice's bounds, an array's length) is fine. A cost the reader should see is
   written at the use site: atomics are named operations, an operator is a named method, a copy of an array is an
   assignment someone wrote.
3. **Natural language, as much as possible.** Prefer a word you can say aloud to a symbol: `for x in a`, `and`/`or`/
   `not`, `a if c else b`, `x in c`, `x is T`, `x as T`, `done`, `fail`, `unreachable`, `extends`. A symbol earns its
   place when a word would be longer to read without being clearer (`+`, `[]`, `=>`).
4. **Minimal syntax.** One way to write each thing. No semicolons; blocks always have braces; conditions have no
   parentheses; one loop keyword (`for`); one spelling of an error set (`?`); `mut` only where it decides something.
   Reuse a construct before adding one. A spelling that is removed is simply gone, not kept alive by a diagnostic.
5. **Multi-purpose.** The same language has to serve:
   - scripting: `-i`, text joined by adjacency, `$x` for any value;
   - AI and data: F16/BF16/F8, complex numbers, comprehensions, SIMD-aligned arrays, parallel `join`/`spawn`;
   - systems work: `extern fn`, C layouts;
   - GUIs: run-time interfaces (`any Trait&`) are planned for open sets of widgets.
   - hardware: FPGAs are planned, for spiking neural networks - a compiler-checked subset synthesized to hardware.

   A feature that serves only one of these needs a reason.

## What "solid and smooth" means in practice

- **One rule that composes beats special cases.** A new feature is lowered to what already exists wherever it can be,
  so scopes, errors, generics and the compile-time evaluator apply to it without rules of their own.
- **The compiler checks what it can, and runs what it can.** Anything computable at compile time may be computed
  there, with no `constexpr` colouring of functions. A rule the compiler cannot check is stated as such: a wrong
  `extern` prototype, an out-of-range index, a data race.
- **Errors are errors.** A function that can fail says so in its signature (`?`) and a caller handles it (`try`,
  `catch`); there are no exceptions, and nothing returns a value beside a flag. Running out, missing and failing are
  all errors.
- **Nothing is uninitialized, nothing is narrowed by accident.** Every value starts as something its type allows. A
  number widens implicitly where nothing is lost and narrows only when written (`I32(x)`). There is no shadowing.
- **Explicit where a cost or a hazard would otherwise be invisible; implicit where nothing is lost.** Borrowing,
  numeric widening and a literal adapting to its target are implicit. Copies of arrays, checks and synchronisation are
  written.

## Deliberately not

- No garbage collector, no manual `free`, no reference counting.
- No exceptions and no hidden control flow.
- No per-operation run-time checks.
- No borrow checker; scope containment does that job.
- No implicit lossy conversions, no shadowing, no uninitialized storage.
- No preprocessor or macros: conditional compilation is a top-level `if` on build constants (`-D`).
- No header files: a module's interface is its source.

## Judging a new feature

1. Does the programmer have to manage memory for it? Then it is wrong.
2. Does it add a cost on every use that the use does not show? Then it needs `try`, a name, or a redesign.
3. Can it be said in words? Is there an existing construct it could reuse instead?
4. Does it compose: with generics, scopes, error sets, the compile-time evaluator, `-i`?
5. Does it serve more than one of the domains above?
