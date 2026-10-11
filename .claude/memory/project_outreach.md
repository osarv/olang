---
name: project-outreach
description: "Contract work to pay for compute: fixed-price measured speedups; the outreach doc, 14 targets and 8 letters; the company Gmail I am to send from; what waits on the user"
metadata:
  node_type: memory
  type: project
  modified: 2026-10-11
---

The user, 2026-10-11: "If I want to make some money easy with your help, how would I do it? We need more compute", then
"I want to do contract work" and "something where you can do most of the heavy lifting but there still is a niche
somehow". The niche chosen: **fixed-price, measured speedups**. A client names a slow path and a benchmark; the
delivery is a pull request that reaches an agreed speedup on their own benchmark, with a short report. The default
guarantee is "if it misses the number, you don't pay". The proof comes from olang and oann measurements: GEMM
15-17 -> 57-78 GFLOPS, training memory 793 MB -> 57 MB, a closure loop 1.63 s -> 0.23 s, JSON, BF16 and
integer-to-text.

**Where things are:**
- Bounty platforms were checked first (/home/user/review/bounties/README.md). They scored 1-2/5: the sites were
  blocked from the sandbox, and the programs are shrinking. So the plan is direct outreach.
- Targets: /home/user/review/outreach/targets.md lists 14 companies. The evidence is GitHub issues only, because the
  companies' own sites could not be opened from the sandbox. Contacts come from GitHub org profiles.
- The doc: Claude Docs "Performance outreach: letters and targets",
  https://claude.ai/code/artifact/f11da951-e413-477c-859a-ff5f4e27e46b (body node 1135884b-742f, rev 16 when filled).
  - The offer, with the proof table.
  - Letter templates in English and Swedish.
  - The target table, with a Status dropdown per row.
  - Eight tailored letters: Rerun, Dragonfly, Polars, Ollama, Defold (Swedish), Embedl (Swedish), GreptimeDB and
    ParadeDB.
  - "Before sending": six decisions for the user, and how to send.
  - One open doc comment, asking about the send order.

**Sending:** the user said "I'd prefer if you sent the emails too. I'll set up a gmail for the company that you can use
as you please." So when a Gmail connector appears, I send the letters. These are the ground rules I stated; the user
did not object:
- only the agreed letters, one per company, a few a day;
- one follow-up after 7 days, and stop the moment someone asks;
- nothing that commits Oscar (a price, a scope, a date, a contract) goes out without his OK;
- the AI-use line stays in.

Before each letter: check that the issue is still open, and check the contact address on the company's own site.

**Company name:** the user asked "What could I name my company?" I offered Osarv (recommended), O Labs/Olab, Hotpath,
Measured, Cycles, Kvick and Rask, and said to avoid "fart". I offered to check availability (Bolagsverket, .se/.com
domains, EUIPO) and to draft a compute-credits application. Neither offer has an answer yet. The open questions are
QL in [[project-olang-pending-decisions]].

**How to apply:** send nothing until the Gmail exists and the user has OKed the defaults (QL2). When the user is back,
re-raise QL. Replies come back to me for a scope and quote draft, which goes to the user before it goes out.
