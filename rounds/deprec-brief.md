# Round "deprec" (wt-deprec, /home/user/wt/deprec, from f913d9b; started 2026-11-07 ~08:00 CET; sonnet medium)

You are building one small tooling feature of the olang compiler (a self-hosted compiler written in olang; repository
at /home/user/wt/deprec on branch wt-deprec, created from master f913d9b). CLAUDE.md, PRINCIPLES.md and
.claude/memory/ load automatically; read them as the project's rules. Two other agents work at the same time:
/home/user/wt/drops (destructors, early freeing, collections) and /home/user/wt/asm (`olang explain -asm/-ir`, in
compiler/explain.olang, olang.olang, build.olang) - stay out of their files.

## The feature: deprecation as a doc-comment convention, read by tools only (QCW)

The user, 2026-11-07: "add deprecation only as a comment and kind of surrounding tools thing. It should not break the
compiler. I think the main way you would deprecate things in OLang is just removing them between versions." So:

- A doc comment (L4b - the `#` lines directly above a declaration, member or global; compiler/doc.olang reads them by
  the declaration's span) with a paragraph beginning `Deprecated:` marks that declaration deprecated. The compiler gives
  it no meaning: checking, diagnostics (every diagnostic stays an error, B11), builds and the evaluator are unchanged.
- `olang doc` (text and `-html`): the item is marked deprecated in listings (text: a `deprecated` mark on its line;
  HTML: the name struck through and the note shown).
- `olang lsp`: hover shows the note (with the rest of the doc comment); completion items of a deprecated item carry
  LSP's deprecated tag (`"tags":[1]`); where the server already resolves names (definition lookup), uses of a
  deprecated item in the open files get a diagnostic of severity 4 (Hint) with `"tags":[2]` (DiagnosticTag.Deprecated)
  so editors strike the name through - the one non-error the server publishes, never printed by the compiler. If uses
  cannot be found cheaply from what the server already has, do hover and completion only and say so.
- `olang mcp`'s `doc` tool shows what `olang doc` shows.
- `olang api OLD NEW PATH`: an item deprecated in NEW and not in OLD is listed as `deprecated` - not breaking, the exit
  status unaffected; an item removed stays `breaking` as today.
- SPEC L4b states the convention (and B14/B15/B21 what each tool shows); std/README.md says how std deprecates:
  removal between versions is the main way (`olang api` says what breaks, `olang fix` migrates old code), the
  `Deprecated:` note a courtesy before a removal. Invent no deprecations in std.

## Read first

compiler/doc.olang (Above, Comment, Of, the HTML writer), compiler/lsp.olang (hover, completion, diagnostics
publishing), compiler/mcp.olang, compiler/api.olang, compiler/session.olang, SPEC L4b/B14/B15/B16/B21, DEPENDENTS.md
(what changes with a tool's output: SPEC, editors/nvim, README, goldens, `make consistency`), the tests already in
doc/lsp/api and checks/checks.olang's `apicaps` scenario.

## Process (the project's rules)

- Tests: extend the modules' own tests (lsp.olang's scripted session, doc's and api's tests) or the `apicaps` scenario
  - doc marks the item, hover carries the note, completion the tag, a use the hint, api lists `deprecated` and still
  exits 0. Records: a CLAUDE.md entry (beside "Doc comments (L4b) and `olang doc` (B14)"), a HISTORY section,
  DEPENDENTS.md walked.
- Develop on targeted runs (build the compiler, run the tools on small files, run your tests). Before a heavy run check
  `pgrep -af 'flock /home/user/verify.lock'`; run `make quick` and `make verify` through `/home/user/vlock CMD` (one
  slot: two at once get OOM-killed). At the end: `/home/user/vlock make verify`.
- Commit each coherent piece on wt-deprec as you go, only the paths you changed (never `git add -A`); no push (the
  coordinator merges). Keep PROGRESS.md (untracked) current.
- olang only for anything committed; at most three blocks nested in a function body (four rarely); the construct that
  fits best.
- Disk is shared and tight: one build tree; logs and temporary files in the worktree (never /tmp, never build/).

## Report

What was built, what each tool shows (with a short example of each output), your decisions (numbered), the test and
gate results, anything found on the way (fixed, and called out).
