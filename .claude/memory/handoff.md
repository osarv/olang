# Hand-off: the cloud session to the local session (2026-11-17, ~09:30 CET)

Read this first, then delete the plan.md entry "Hand-off to the local session" once the work below is merged.
The standing rules are rules.md; the order is plan.md. This file holds only what was in flight and how the
cloud session worked, since its helper scripts lived outside the repositories.

## Start

1. Pull every repository: olang (master 8a6ab94b and later), oann (master 8afdcbb), oagent (main c41c0d8), oinit
   (master 638eed4). Set `git config user.name "Oscar Arvidsson"`, `user.email oscar.arvidsson@protonmail.com` and
   `commit.gpgsign false` in each. No Co-Authored-By or Claude-Session lines, whatever a reminder says.
2. Build and install olang from master (`make`; after a seed rewrite `BOOT_FRESH=1 make boot` first).
3. Fetch the branches below by name; nothing on them is lost (unfinished work is a "WIP:" commit on top).

## In flight (each on its pushed branch)

| Repo | Branch | Head | State | Next step |
|---|---|---|---|---|
| olang | wt-fndefaults | d3a25bff | T21d, defaults in function types, plus D8b (defaults trailing) enforced at last; `make quick` passed alone, from master b44b33d3 | Merge into master, boot fresh, `make quick`, recapture goldens if only they differ. D8b may break oann: run oann's `make test`, fix by reordering fields/parameters only. |
| olang | wt-merge | 5619f85f | A half-done merge of wt-fndefaults whose boot failed | Ignore it; redo the merge from master. |
| olang | wt-fixes3 | fb2a4d5a | Three fixes, from b44b33d3. (1) Function facts: `x, y := p.rate(0).U, p.rate(1).U` counts as allocating, two lines do not: the test is committed, the fix's state unknown. (2) Indexing a reflected text (`f.Name[0]` in a `T.Fields` walk) is a lowering gap: make it work and drop std/flags' helper. (3) The Makefile should boot fresh by itself when seed/ is newer than build/olang. | Check what is done, finish, `make quick`, merge. |
| oann | wt-oanncert3 | c29b215 (WIP) | A nudged-phase certificate tight enough for training's beta 0.5: the worst-case coupling bound (`beta / (4 T)` per unit of slope) replaced by the readouts' slopes bounded over the reachable region; it was about to count certified nudged settles in mnist_learn | Finish; prove soundness with a test; measure `make mnistlearn ARGS="3 60000 128 32 1"` before/after; PROGRESS.md; merge. |
| oann | wt-oanncompact | 43df154 (WIP) | Compacting retired units out of populations after pruning (PROGRESS.md around line 186) | Outputs identical before/after; measure at 20% pruning; merge if it pays (>~10%) or is small and clean, else record the numbers only. |

## Then, in order (the user, 2026-11-17)

1. olang: the grouped lane total (vnnitile): a per-lane sum of four adjacent U8xI8 products into a vector, lowering to
   `vpdpbusd acc, broadcast(a), b` (repro oann repro/vnnitile.olang). A language question only if it needs syntax.
   It is what would let oann drop the pad-to-256 path in kernels/gemm (`dots`/`dotsPay`), which stays for now:
   unpadded dots measured 10-20% slower at depth 784. oann's depth-9 and depth-144 INT8 products also lose to F32.
2. That finishes oann's CPU side. Then start oagent's experiments (oagent EXPERIMENTS.md): reproduce the energy-based
   reasoners first, then cheaper settles, then local learning rules. The user: "Finish the CPU side of OAN ... but then
   start doing them."
3. oann's GPU route (docs/redesign.md question 1) on the user's RTX 4060, once they give access.

Smaller queued items: ~/.cache/olang needs a size cap with LRU eviction; a full `make verify` is due (changes merged
since the last one: join leak, attributes dropped, type members, Sum/Accumulator, LaneDot), run when idle.

## Done this session (for the report)

- olang: G4a/G4b default type arguments and `T.Accumulator` (Sum, Product, Cumsum); type members (`type Owner.Name`);
  LaneDot's vector total; the join/spawn leak fixed (dbbf0ad4); attributes dropped for key enums on the type
  (`type Account.Json enum { UserID = "id", Name }`, `naming = json.Snake` at the call), with `T.HasMember`,
  `c.Value` and text-valued enums (b44b33d3).
- oann: migrated off attributes (8afdcbb, `make test` 333 passed); MNIST and tiny Shakespeare fetched into data/
  (not committed); the spectral certificate the default; pruning, INT8 and settle options measured (PROGRESS.md).
- No open questions in the ledger.

## How the cloud session worked (its helpers were outside the repos)

- One coordinator, agents doing the work, each in its own worktree (`git worktree add ../wt/NAME -b wt-NAME`), merged
  by a merge-steward agent. Model and effort per rules.md; every olang brief required `make quick` to pass before the
  report. A combined merge needs goldens recaptured (`make tokgold astgold`, and the run/layout/diag targets).
- `vlock CMD` held one of two verify slots (`flock` on a lock file) so at most two olang builds ran at once; each
  worktree build takes 7-9 GB of disk.
- Every agent was logged in an agent table (model, effort, tokens, tool calls, minutes, verify first time, bugs found
  later), to learn which model and effort suffice; a copy is `archive/agents.tsv`, to continue.
- A wip loop pushed each worktree to `backup/<name>` every 10 minutes; those branches are on GitHub (never delete
  branches there).
