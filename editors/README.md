# editors - olang in editors and agents

What the compiler offers tools, and the editor support built on it:

- `olang lsp` (SPEC B15) - a Language Server Protocol server on the standard input and output: diagnostics as the
  compiler reports them, hover (an item's signature as `olang explain` gives it - with its effects, a generic's needs and
  whether it can be a value - and its doc comment), go to
  definition, document symbols, completion after `.` (a module's names, a value's fields and methods) and of the names
  in scope, and formatting (`olang format`). Any LSP client can use it.
- `olang mcp` (B16) - a Model Context Protocol server on the standard input and output, for agents: the tools `check`,
  `explain`, `doc`, `format` and `test`.
- `olang doc FILE [NAME]`, `olang doc -html DIR [FILE...]` (B14) - a module's documentation, its doc comments (L4b:
  the `#` lines directly above a declaration) with the signatures the compiler sees; HTML for a whole library (std's
  when no file is named).
- `olang explain -caps FILE` (B11c) - what each module of a program may reach (files, network, processes, environment,
  threads, C); `olang api OLD NEW PATH` (B21) - a module's interface changes between two versions, breaking or not.
- `nvim/` - a Neovim plugin: filetype, syntax highlighting, `:make` through the compiler, `K` on a rule, format on
  save, and the language server. Its own README says how to install it.

## How the servers work

Each server speaks the protocol in one process and runs the compiler's front end - load, names, check, the
compile-time decisions, the scope rules; never code generation - in another: a fork of the server for each round of
analysis (`compiler/lsp.olang`, `compiler/mcp.olang`, on `compiler/session.olang`). So a crash of the compiler on a
broken file ends that process, never the server, and since olang reclaims memory by scopes rather than freeing it, each
analysis's memory goes with its process. The language server checks an open file as the root of its program, as
`olang test` checks it - after an edit, once the text has been unchanged for 40 ms, and again for every open file
that imports it.

Measured (2026-10-24, a 4-core container): an edit to a small program to its diagnostics 70-100 ms; an edit to one of
the compiler's own modules, whose program is the whole compiler, 1.4-1.8 s - the checker's time over 60,000 lines, the
same as `olang explain` on it. A request on a file the worker has checked is answered from that check (hover, symbols,
definition: a few ms).

## Other editors

Any LSP client: run `olang lsp` for files ending in `.olang`, root at the directory holding `olang.lock` or `.git`.
Helix (`languages.toml`):

```toml
[language-server.olang]
command = "olang"
args = ["lsp"]

[[language]]
name = "olang"
scope = "source.olang"
file-types = ["olang"]
comment-token = "#"
indent = { tab-width = 4, unit = "    " }
language-servers = ["olang"]
auto-format = true
```

## Agents (MCP)

An MCP client starts `olang mcp` as a stdio server. Claude Code:

```
claude mcp add olang -- olang mcp
```

or in a project's `.mcp.json`:

```json
{ "mcpServers": { "olang": { "command": "olang", "args": ["mcp"] } } }
```

The tools, each taking paths relative to the server's working directory:

| tool | arguments | gives |
|---|---|---|
| `check` | `file`, `text` (optional: the unsaved text) | every diagnostic as data (`file`, `line`, `column`, `endLine`, `endColumn`, `rule`, `message`, `notes`) and as the compiler writes it |
| `explain` | `file` and `name` (an item, `Type.Method`), or `name` alone (a rule, `T6b`) | the item as the compiler sees it (B11b), or the specification's rule (B11a) |
| `doc` | `file` (a path, or a std module as `std/json`), `name` (optional) | the module's documentation, or the item's |
| `format` | `file`, `text` (optional) | the text in olang's layout - the file is not changed |
| `test` | `file` | each test's outcome, and what the run printed |

An agent can also use `olang lsp` itself through an MCP bridge that wraps a language server, but the MCP server is the
simpler path: an agent asks a question and gets the answer, with no open documents to keep in step.
