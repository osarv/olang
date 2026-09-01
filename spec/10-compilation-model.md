# 10. Compilation Model

## 10.1 Compilation modes

**P1.** The compiler operates in exactly one of two modes, selected by a command-line flag; there is
no other entry point.

**P2.** `-c <file>`: compiles one program, with `<file>` as its root module. Every module reachable
from `<file>` by imports ([04-modules.md](04-modules.md)) is pulled in transitively. `<file>` must
declare a `main` function (§10.2); the result is one native executable.

**P3.** `-t <file> [<file> ...]`: for each listed file, independently, compiles that file as its own
root module (transitively pulling in its own imports, exactly as `-c` would) and runs every
`test { }` block declared *directly in that file* (§10.4) — not those declared in any module it
merely imports. `main` is not required in this mode, and is not run even if present. Each listed
file's compilation and test run is independent: a compile-time error in one listed file does not
prevent the others from being checked and run.

## 10.2 Program entry

**P4.** In `-c` mode, the root module must declare a function named `main` with exactly this shape:
no parameters, no success type, and at least one declared error
([03-declarations.md](03-declarations.md) D8) — `func main() SomeError [+ ...] { ... }`. Any other
shape (parameters, a `ret-type`, or no declared error at all) is a compile-time error. There is no
other valid `main` signature; in particular, there is no "return an int/bool status" convention.

## 10.3 Process exit

**P5.** Running the compiled program (`-c` mode) invokes `main`. If it returns normally (falls off
the end, or a bare `return`), the process exits with status `0`. If an error (§7) escapes `main`
uncaught, the process prints `unhandled error: TypeName.WORD\n` to `stderr` (naming the specific
declared error type and word that escaped) and exits with status `1`.

**P6.** `done` and `crash` ([06-statements.md](06-statements.md) §6.6) exit the process immediately,
from anywhere, with status `0` or `1` respectively, printing nothing, independent of §10.3's own
`main`-return handling.

## 10.4 Test blocks

**P7.** `test-decl ::= "test" STR_LIT block`, valid as a top-level declaration in any module.
`STR_LIT` is the test's description. A `test` block has no error union of its own — the same rule a
destructor's body follows ([09-constructors-and-destructors.md](09-constructors-and-destructors.md)
§9.3 C7): every fallible call inside it must be fully caught.

**P8.** A `test` block is only ever executed under `-t` (§10.1 P3), and only for the file it is
directly declared in. Each test in a run prints its own description together with pass/fail, and
one test failing (§6.7 S18, inside the block itself) does not stop the remaining tests in the same
file, or any other listed file, from running.
