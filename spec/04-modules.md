# 4. Modules

## 4.1 Modules

**M1.** Each source file is exactly one module. A module's identity is its file path as written in
the `import` that reached it (or, for the file named directly on the command line, that path); two
imports naming the same underlying file, however reached, refer to the same module (see §4.6).

**M2.** Module imports may form cycles: module A may import module B while B imports A. This is
legal without restriction as long as neither side needs the other's own top-level names to be fully
resolved before *its own* top-level declarations can be scanned (in practice: cyclic imports work
because scanning a module's own declared type names never requires parsing or resolving anything in
an imported module first — see §4.4 for the one place import order *does* matter for a module
participating in a cycle).

## 4.2 Imports

**M3.** `import-decl ::= "import" [ IDEN ] STR_LIT [ STMNT_END ]`. `STR_LIT` is the imported file's
path, resolved relative to the invoking compiler's own working directory (the same rule for every
module, not relative to the importing file). `IDEN`, when present, is the alias other code in this
module uses to refer to the imported module's exported names (§4.4).

**M4.** When `IDEN` is omitted, the alias is derived from the imported file's own name: any leading
directory path is stripped, and a trailing `.olang` extension is stripped. `import "shared.olang"`
and `import shared "shared.olang"` are equivalent. If the derived alias is not a legal identifier
(L6 — e.g. the file name contains a hyphen or starts with a digit), that is a compile-time error;
such a file must be imported with an explicit alias instead.

**M5.** Two imports in the same module may not use the same alias (D2). Two imports in the same
module may not resolve to the same underlying file either, whether both are written directly or one
is reached transitively through re-export (§4.5) — see §4.6.

## 4.3 Visibility

**M6.** A name is **public** (visible outside the module that declares it) if and only if its first
character is an uppercase letter (`A`–`Z`); otherwise it is **private** (visible only within its own
declaring module). This single rule governs every kind of name: types, error types, functions,
global variables, and import aliases (§4.5) alike. There is no separate export keyword, export list,
or visibility modifier.

**M7.** A private name is a compile-time error to reference from outside its declaring module, even
if the referencing code otherwise has a valid path to it (e.g. through a correctly-resolved import
alias chain, §4.4).

## 4.4 Cross-module name resolution

**M8.** `alias-chain ::= { IDEN "." }` — zero or more import aliases, each already followed by its
own `.`. A name, from the referencing module's own or from another module, is written
`alias-chain IDEN`: `Name` (zero hops, `alias-chain` empty), `alias.Name` (one hop), `a.b.Name` (two
hops), and so on to any depth. Every rule elsewhere in this specification that names a possibly
cross-module type, function, error type, or variable is built on this same `alias-chain IDEN` shape,
so it is cited here once rather than repeated at each site.

**M9.** Resolving an alias chain is a left-to-right walk: the first alias is looked up among the
*referencing* module's own imports (M3) — always permitted, regardless of that import's own
visibility (M6 does not apply to your own directly-declared imports). Each *subsequent* alias in the
chain is looked up among the *previously reached* module's own imports, and requires that import's
own alias to be public (M6) — this is exactly what re-export (§4.5) means. The final identifier in
the chain is looked up, and its own visibility (M6) checked, in the module the walk arrives at.

**M10.** If, at any hop, the named alias does not exist among the relevant module's imports, or (for
a hop past the first) is private, or the walk would revisit a module already visited earlier in the
same walk, that is a compile-time error.

**M11.** An alias chain of any length is accepted in every position that names a type, a function
(including a constructor, [09-constructors-and-destructors.md](09-constructors-and-destructors.md)),
an error type, or a global variable: type references (§2.9), call targets
([05-expressions.md](05-expressions.md) §5.4), the `error` statement
([07-error-handling.md](07-error-handling.md)), `catch` clauses
([07-error-handling.md](07-error-handling.md)), a bare variable read or write
([05-expressions.md](05-expressions.md), [06-statements.md](06-statements.md) §6.2), and struct and
array literal construction ([05-expressions.md](05-expressions.md) §5.6, §5.7).

**M12.** A vocab value (`Type.WORD`, [05-expressions.md](05-expressions.md) §5.8) is never
alias-qualified: `Type` in that position always resolves against the *referencing* module's own
declared types only, never through an import, regardless of any import alias of the same name.

**M13.** Within one module, resolving *any* multi-hop alias chain (M8) requires that every
intermediate module's own set of imports already be fully known. For two modules in a raw import
cycle (M2), this is guaranteed for the module reached *last* in the cycle but not necessarily for
whichever side's own source text is parsed while the *other* side is still finishing its own import
list — concretely: if module A imports module B (participating in a cycle back to A) and *also*
re-exports some third module C, and B's own source references something through A reached via C, B's
source must declare its import of A only after any import that provides what it needs from that
chain has itself already been fully processed — in practice, order the import that is *not* the
cyclic partner first. This is a narrow, mechanical ordering requirement, not a general limitation on
what can be expressed.

## 4.5 Re-export

**M14.** An import is **re-exported** exactly when its own alias (explicit or derived, M3–M4) is
public (M6). A module importing *this* module can then reach the re-exported module through it, by
chaining through the alias (§4.4) — this is the only mechanism for transitive visibility; there is
no separate opt-in re-export declaration.

**M15.** Re-export composes to any depth: if A re-exports B and B re-exports C, a module importing A
can reach a name declared in C as `a.B.Name` (M9).

## 4.6 Reachability restrictions

**M16.** Within one module, the set of modules reachable from it — its own directly-declared
imports (M3), together with, for each such import, everything transitively reachable from it purely
through re-exported (public) aliases (§4.5) — must contain no underlying file more than once. If the
same file would be reachable two different ways from one module (whether by importing it twice
directly under different aliases, or once directly and again through another import's own
re-export), that is a compile-time error.

**M17.** A cycle in the *public*-reachability graph specifically (as opposed to an ordinary raw
import cycle, M2, which is unrestricted) — a module re-exporting something that, through a chain of
further re-exports, eventually re-exports that same module back — is a compile-time error.

**M18.** M16 and M17 do not restrict two *unrelated* modules from both directly importing the same
third module; each module's own direct import is a single path from that module's own perspective,
and only overlaps *within one module's own reachable set* (M16) are restricted.
