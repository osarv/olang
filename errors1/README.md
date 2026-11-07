# Light design review: the errors batch (wt-merge @ e4d5f80)

Scope: the rules, not the C implementation. SPEC diff a12aa0e..e4d5f80 read against QO1, QO4, QO6, QQ1, QU and QV, and
about 30 small programs run on `/home/user/wt/merge/build/out` (built, `-debug`, `test`, `interpret`). Repros are in
`repro/`. Run them with `/home/user/wt/merge/build/out [test|interpret] FILE`. No memory-safety or scope review.

The decisions are implemented. Nothing contradicts QO1, QO4, QO6, QQ1, QU or QV in substance. The findings are
behaviour that differs from SPEC, gaps the new rules leave open, and stale text.

## Findings

### Behaviour that differs from SPEC

1. **E15a table, float to integer of an infinity.** SPEC says `OVERFLOW for an infinity`; the compiler and `interpret`
   give `INVALID` (`checked I32(inf)`, repro `a3.olang`: `inf 2 -inf 2 nan 2 1e12 1`). The SPEC text itself is
   inconsistent too: it defines INVALID as "a NaN made from what is not one", which excludes a NaN converted to an
   integer, yet that row gives INVALID for one. QO6 says "INVALID keeps IEEE's meaning", and IEEE 754 calls a NaN or
   an infinity converted to an integer an invalid operation. **Fix:** keep the implementation (NaN or infinity gives
   INVALID; a finite value out of range gives OVERFLOW, as integer conversions do). Reword INVALID: "IEEE 754's
   invalid operation: a NaN made from operands that are not NaN, or a NaN or infinity converted to an integer".

2. **E15a table, `0.0 / 0.0` matches two rows.** One says "`DIVIDE_BY_ZERO` for a zero divisor"; the other says
   "`INVALID` for a NaN result from operands that are not NaN". The compiler gives DIVIDE_BY_ZERO (`a2.olang`, `0/0 1`).
   IEEE 754 calls 0/0 invalid; its division-by-zero exception is for a finite nonzero dividend. **Fix:** state which
   wins. To follow QO6, make it `INVALID` for 0/0 (and inf/inf), with DIVIDE_BY_ZERO only for a nonzero finite dividend.

3. **E15a table, `<<` row.** The two phrasings disagree for signed types. "When a set bit is shifted out" and "the
   true value `x * 2^n` does not fit" give different answers:
   - I8 `-1 << 1` shifts a set bit out, but `-2` fits. The compiler does not fail.
   - I8 `64 << 1` shifts no set bit out, but 128 does not fit. The compiler gives OVERFLOW.
   The compiler follows the second phrasing (`a2.olang`). **Fix:** drop "a set bit is shifted out" and keep the
   true-value wording.

4. **E15a table, integer to narrow float.** `checked F16(x)` from an `I64` of 70000 fails with OVERFLOW in the
   compiler (`a2.olang`). No row covers it: "float narrowing `F32(f)`, `F16(f)`, `BF16(f)`" lists float sources only,
   and "integer conversion `T(x)`" reads as an integer target. QO6 meant "every finite value turning infinite".
   **Fix:** add "integer to float `T(x)`: `OVERFLOW` when the value becomes infinite".

5. **D8e: a `noreturn` call as a `match` value is refused.** `case 1 => os.Exit(5)` fails with "every value of this
   match is ?, found I64", wherever the call sits in the match (`n6.olang`). The conditional form works
   (`x I64 = Fatal() if Bad else 3`). D8e promises the call "fits wherever a value of any type is expected". The
   internal stand-in `?` also leaks into the message. **Fix:** in S12b (and E28), the "first value that is not a
   literal" rule skips `noreturn` calls. A match or conditional whose values are all `noreturn` calls has no type and
   leaves (D10a).

6. **D8e: a `noreturn` call as a generic argument.** `pick(3, os.Exit(1))` binds `T` to `?`. The result is cascading
   E12, E28 and D15 errors (`n9.olang`). **Fix:** G9a says a `noreturn` call takes no part in inference, as `null`
   takes none. The rest follows from D8e.

7. **D8e: a `noreturn` lambda is accepted.** `f := fn() noreturn { os.Exit(3) }` compiles, although D8e says a lambda
   may not be `noreturn`. A call through `f` in value position is then typed `?` (`n3.olang`). **Fix:** reject it at
   the lambda with D8e's error. (`g fn() noreturn = fn() { ... }` is correctly refused.)

8. **`noreturn` on a trait method (T31 is silent).** A method that returns meets `Quit() noreturn`. The broken promise
   then surfaces as a D10a error inside the generic, at instantiation (`n7.olang`). A `noreturn` method meeting
   `Quit()` with no result works (`n8.olang`), as T22's fit says. **Fix:** add to T31's list: "`noreturn` agrees - a
   `noreturn` trait method is met only by a `noreturn` method; a `noreturn` method meets one with no result and no
   errors (T22)". D10a should also count a constrained call to a `noreturn` trait method as leaving, in the generic's
   own body.

9. **X1 grammar has no `noreturn`.** D8e says an `extern fn` may be `noreturn`, and `std/os.olang:10` declares
   `extern fn exit(status I32) noreturn`. But `extern-func-decl ::= ... ")" [ extern-ret-type ] STMNT_END` admits
   neither. **Fix:** change it to `[ extern-ret-type | "noreturn" ]`. X1a should add that the compiler takes the
   `noreturn` at its word: a foreign function that returns after declaring `noreturn` is undefined behaviour.

10. **`!` and `try` do not take what a nested `checked` lets through.**
    - `(checked arr[A])!` gives two errors: R9, "BuiltinError can escape", and E35, "nothing here can fail - write it
      without '!'".
    - `try (checked arr[A]) + 1` gives E15a: "nothing here fails as written - write 'checked'" (`x7.olang`,
      `x2.olang`).
    This is consistent with how a nested `try` behaves, since the inner one propagates first. But SPEC does not say
    it, and it leaves no way to write "check, and end the program on failure" except `checked e catch { unreachable }`.
    Both messages also point the wrong way. **Fix (recommended):** a clause-less `checked` written as the operand of
    `!` or `try` hands its errors to them, so `(checked a[i])!` is the checked index that ends the program. Otherwise,
    state the rule in E15a and E35, and make the diagnostic name the `catch { unreachable }` form.

11. **`spawn f(x)!` drops the `!`.** The spawn is refused with P4's "this call can fail - write 'spawn try'", as if
    the `!` were not there (`s1.olang`). The P1 and P4 grammar take a call, and E35 says nothing about spawns.
    **Fix:** decide one of two:
    - (a) allow it: the task ends the program from its thread, as a failed assert does (P6). This is the natural
      reading of "`!` on any postfix".
    - (b) refuse it with an error naming `spawn try`.
    The `!` must not be silently ignored.

12. **Checked-only operators survive, and `for x in try` calls them.** E31a's last paragraph keeps a type with
    `CheckedAt` and no `At` ("has that operation only under `checked`"). S9d says such a type is walked "under
    `checked` (S9e)", but S9e has only `for x in try`. The compiler walks it under `try` through `CheckedAt`
    (`x6.olang`), which breaks R8's "try never turns a check on". QQ1's final shape had Checked forms only as opt-in
    variants of a plain operator. The user objected to operators reachable under one keyword and not the other.
    **Fix:** a `CheckedX` requires its plain `X` (a compile-time error otherwise). Drop E31a's last paragraph and
    S9d's CheckedAt sentence.

13. **E31a's superset rule is not enforced for a generic type's checked form.** Take `Box<T>.Plus ?` (inferred) and
    `Box<T>.CheckedPlus ? BuiltinError`. For `Box<V>`, where `V.Plus` fails with `VErr`, the program compiles: the
    checked form catches `VErr`, so `checked (a + b)` fails with fewer errors than `try (a + b)` (`x4.olang`). The rule
    is stated "at its declaration", which cannot decide it when the plain form's inferred set depends on `T`.
    **Fix:** check the superset per instantiation, reporting with G16b's "instantiated here" note, and say so in E31a.

### Rules that read inconsistently

14. **R8 against D16b on lambdas.**
    - R8: "a lambda whose type writes no errors - its clauses must take all of it".
    - D16b infers a lambda's errors from its body when none are written: `fn() I64 { return try f(0) }` is fallible,
      and calling it needs `try` (`t1.olang`).
    - D16b orders a lambda's errors "in the order they first appear", while R1a orders an inferred set canonically.
    - A named function needs `?` to infer; a lambda infers with nothing written. That makes two spellings of
      inference.
    **Fix:** R8 should say "a lambda whose expected type (D16a) writes no errors". Give lambdas R1a's canonical
    order. Consider requiring `?` on a lambda to infer, matching QO1 (a direction question).

15. **Shared multi-word std error types make catching one word incomplete.** `l.Pop()` declares the whole `ListError`
    (`EMPTY NOT_FOUND OUT_OF_RANGE`). Under R14, `catch ListError.EMPTY` is therefore never complete on `Pop`, even
    though `Pop` can only be EMPTY (`q1.olang`: R9 "ListError can escape"). QO1 follow-up 2 says "an error declared
    beside its function". **Fix:** either
    - one error type per failure kind, or
    - (rule change, recommended) let a written set name words, `? ListError.EMPTY`, with R14 judging at that level.
    Related inconsistencies:
    - `ParseInt(base I64)` fails at run time with `ParseError.BAD_BASE`, while `Format(base Radix)` uses
      `TextError.BAD_BASE`, checked at compile time for a literal. That is one concept in two mechanisms, and two
      words of one name.
    - `Radix(10)` written as an explicit call needs `try`: T29d's literal rule covers an initializer, an assignment,
      an argument or a returned value, but not the explicit call.

### Stale text

16. Stale text in SPEC and the records:
    - **S18d** says "A test build (`-t`) and a debug build (`-d`)" and "with `-i`". These are now `test`, `-debug` and
      `interpret` (B1 words).
    - The **X6 `__olang_on_crash` row** was changed by this batch from "Under `interpret`" to "Under `-i`", which is a
      regression.
    - **E6c** (around line 2265): "writes `try` (E15a), which checks it there" should say `checked`.
    - **E16** (around line 2685): "an out-of-range index written without `try` is a compile-time error" should say
      `checked`.
    - **P4**: "a function declaring errors (§7 R1)" should say "a function that can fail (R1, R1a)".
    - **R5, R6, R7 and R14** speak only of a declared list read "left to right". They should point to R1a's canonical
      order for an inferred set, and say whether an inferred-empty function has a code (R7).
    - **E15a**, "other than inside a call (which has its own signature)": the compiler checks the arguments
      (`c1.olang`: `checked id(Big + 1)` fails with OVERFLOW), as R8's "arguments included" suggests. It should say
      "other than in the called function's body".
    - **PRINCIPLES.md**: principle 2 says "`try` opts into a check" (should be `checked`), principle 3 lists `done` and
      `fail`, and principle 5 and judging-question 4 say `-i`.
    - **CLAUDE.md**: line 531 "`chan.Send` on a closed channel stops the program" contradicts QO4 and its own Errors
      section, since `Send` fails with `ChanError.CLOSED`. Line 542 says "opt-in with `try`".

## What held

- **Inferred sets (R1a).**
  - Mutual recursion infers both sets (`b1.olang`).
  - Across modules, with `lib` compiled alone by `compile` and then linked by a run (`m/`).
  - An inferred-empty set needs no `try`; a generic's `?` differs per instantiation (`Box<I64>` with no `try`,
    `Box<V>` with one; `x4.olang`).
  - A named function fits a function type listing its errors in any order (`b1.olang`, `b2.olang`).
  - `? E` as a promise; `main` with no `?` and a `try` not caught is R9's error.
- **`try` reach.** It covers arguments (`$g(3)` inside `io.Println(...)!`) and chains. A `try` covering nothing in a
  generic's body is allowed.
- **`checked`.** It checks arguments too. Its results:
  - `<<` by the true value;
  - `U64(-1)` gives OVERFLOW;
  - `F16(70000)` gives OVERFLOW.
  `interpret` agrees with the build on every checked case tried (`a2.olang`, `a3.olang`, `c1.olang`).
- **Checked forms.** The superset rule is enforced for a non-generic type, with a message naming the error to add
  (`x3.olang`).
- **`!`.**
  - It prints `FILE:LINE: Type.WORD`, with the module's base name for an imported type (`zz.Aerr.A`).
  - It aborts with status 134, fails the running test, and needs no `?`.
  - `-f()!` binds as `-(f()!)`, and `f(One)!!=2` lexes correctly.
  - `!` on something that cannot fail is an error.
- **Tests (S16).**
  - A test passes by `return`, with its deferred code running.
  - It fails by an escaping `try`, a `checked` escaping, or a `!`, each with the right `FAIL` line and trace
    (`t1.olang`, `t2.olang`).
- **The trace (S18d).** It is printed under `-debug` and `interpret` ("raised here", "try passed it on", "left the
  test"). Other builds print the hint line instead.
- **`noreturn`.**
  - The body check: "may not reach its end" (`n4.olang`), and `noreturn ?` is refused (`n2.olang`).
  - `catch default os.Exit(2)` and a conditional value work (`n1.olang`, `n6.olang`).
  - `os.Exit` passed for `fn(c I32)` works, as does a `noreturn` function-value parameter used as a statement and as
    a conditional value (`n5.olang`).
- **std (QO4).** `ListError.EMPTY` and `OUT_OF_RANGE`, `ChanError.CLOSED` on `Send`, and `Radix`, with
  `(255).Format(16)` taking no `try`. No std function outside tests and internal invariants ends the program.
