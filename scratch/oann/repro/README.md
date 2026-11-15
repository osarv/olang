# repro

Minimal programs for olang issues found while writing oann. Each file's header says what it shows and what was expected.
Last re-checked against olang 374c1e3c (2026-11-15); the files were brought to that syntax (`olang fix`, then by hand
where the library changed) so each builds or fails as its header says.

| file | status | why |
|---|---|---|
| `fieldname.olang` | reproduces | D3a: a constructor field may not share a function's name in its module. A deliberate rule, kept as a record of the friction |
| `joinparen.olang` | reproduces | E13b: `$alpha (" x")` calls what was rendered. The rule is deliberate, but the message is now `E13b: F64 is not a function`, not the E11b that named the way out (`$(...)`) - worth restoring |
| `lambdacapture.olang` | reproduces (new) | O17: a value captured by a lambda and lent to a callee that only reads it (building a local struct holding the read-only parameter) is "the callee can store through it"; the same call outside the lambda is accepted |
| `nullmigrate.olang` | reproduces (new) | `olang fix` crashes in `tools/null_migrate.olang:162` (slice bounds out of range) on a T2c error reported inside a generic's instance; the tools after it do not run |
| `fieldofresult.olang` | fixed | builds and prints ok: region inference (QCB) replaced the O10d refusal. Kept as a regression case |
| `lambdalend.olang` | fixed | builds and prints ok: O17 no longer refuses the lent value. `linalg.View` now fails with `ShapeError`, so the matrix is made with the `Matrix` constructor |
| `membercascade.olang` | fixed | one error, `S has no member 'flag'`, no second one |
| `nestedtry.olang` | no longer a limitation | a `try` takes the whole expression after it (E24): `try entry["shape"].AsArr() catch { ... }` covers the lookup and the conversion with one clause. The old nested form still gets R9, as the spec says |
| `resultgrowth.olang` | fixed | resident memory stays flat over 4 000 000 calls (1720 kB before, 1792 kB after); O26a no longer moves the unrelated local into the result scope |
| `variadicat.olang` | reproduces (new) | E31: a variadic `At(idx ...I64)` is the operator for one index only; `x[i, j]` is an error. An N-d tensor (rank known at run time) cannot declare `t[i, j]` for every rank |
| `traittype.olang` | reproduces (new) | a trait method's signature naming a type not in scope (its module not imported) is not reported; a generic calling it through `any` then fails in lowering ("an unknown type ... a local"). Expected M22 at the trait |
| `colfields.olang` | reproduces (new) | `Columns<C>.Fields` is empty when C's fields are lower case, even in C's own module, so a generic cannot reach a column by reflection; capitalized fields work (dyn's cells are capitalized for it) |
| `genref.olang` | reproduces (new) | D18c/T22a: a method generator yielding an enum read from the receiver's Vec is refused once the enum has a case holding a reference (`any Update&`), whatever case is yielded; `.Copy()` does not help. dyn's `System.Rules` was one (now `AttachedAt`) |
| `tempref.olang` | reproduces (new) | a temporary passed to a `&` parameter of a function whose result copies it into a struct also holding a reference, that result itself a temporary passed by reference, is built in the referent's scope at every call: resident memory grows without bound. ad/graph took tensors by value to avoid it |
| `allocfacts.olang` | reproduces (new) | G42 too coarse to pin a hot path allocation-free while compiling: a local fixed array (`Array<F32>(8)`, kernels/elem's lanes) and an error carrying a literal text (`!` on any tensor view) read `Allocates` true |
| `methodfacts.olang` | reproduces (new) | G42 through a method of a generic type's instance (`Box<I64>.Fill.Allocates`) is refused at build: "it does not check a generic name as a value yet" |
| `tryindex.olang` | fixed | builds and runs: `try` no longer makes an array index inside its operand a checked one (indexing is unchecked, `try a.Get(i)` the checked form) |
| `learnerarg.olang` | reproduces (new) | C2d: a struct of another module holding a reference parameter (dyn/learn's `Learner`, dyn/bridge's `Bridge`), made inside a function from that function's reference parameter, "would outlive" the argument, though it is a local dropped there; the same struct copied into the root module builds. dyn/bridge's tests build the system inside the helper instead |
| `factcascade.olang` | reproduces (new) | any other error in a program (an unused import here) makes every `assert not f.Allocates` (S17a, G42) read false: 36 spurious S17a errors from dyn/ and nn/optim behind one unneeded `try` while writing models/hybrid |

The `Status` line in each file's header repeats the row.
