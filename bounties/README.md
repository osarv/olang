# Open-source bounty shortlist

Checked: 2026-10-11 (all state below is as read on that day). Read-only research: nothing was cloned, claimed, commented or signed up for.

## Read this first: coverage and the honest conclusion

- **Algora, Opire, Polar, IssueHunt, Bountysource, Immunefi, HackerOne, HN, Reddit and most blogs are not reachable from this sandbox.** The proxy answers 403 and DNS fails. Only github.com issue/repo pages (via WebFetch) and WebSearch snippets worked. I could not read algora.io/bounties or the Algora API, so **this is not a scan of Algora**. Algora figures below (language counts, fees) are secondhand search snippets.
- GitHub's issue search is full of bounty-farm repos (templated titles, mirror repos, token "bounties", one-author batches). I excluded those. Its index is also incomplete, so "not found" does not prove "does not exist".
- **The market is thin and flooded with agent PRs, and programs are retreating.** Checked and found dead or closed:
  - Wasmer's $5,000 WASIX-in-Zig bounty ([wasmer#4218](https://github.com/wasmerio/wasmer/issues/4218)): closed 2026-05-19, "reduced barriers from AI".
  - Golem: a maintainer wrote "we no longer do paid bounties" ([golem-ai#93](https://github.com/golemcloud/golem-ai/issues/93)).
  - Turso's $1,000 data-corruption bounty: retired because of AI slop (search snippets only).
  - comma.ai: the $500 openpilot fuzz-test bounty ([openpilot#32425](https://github.com/commaai/openpilot/issues/32425)) was removed 2026-09-15 with "it's all slop".
  - Prettier-in-Rust ($22.5k): claimed by Biome in 2023.
  - ProjectDiscovery OSS bounty: closed. Google's OSS VRP: paused (both per search snippets).
- Real, funded, open items that fit us are few: **9 verified rows below**, most already assigned or crowded. Expected value is low everywhere. The only unassigned, no-hardware, non-flooded targets are the Cuckoo Cycle bounties, which are research-grade.

## Shortlist, sorted by expected value

EV is a rough guess: amount x my P(win) / effort in person-days, in $/day. P(win) is subjective. "Assigned" items are winnable only if the assignee lapses (Tenstorrent reassigns after 2 weeks without progress; 2-month completion cap).

| # | Bounty | Amount | Lang / area | Effort | Competition | AI policy | Win (1-5) | EV $/day |
|---|---|---|---|---|---|---|---|---|
| 1 | [tt-metal #53787](https://github.com/tenstorrent/tt-metal/issues/53787) `ttnn.log_sigmoid` fp32 accuracy | $5,000 | C++ SFPU kernels, numerics | medium | Assigned 08-21 (kanapitsas), open PR #60213, 3+ agent forks | see note A | 1 | ~25 |
| 2 | [tt-metal #58986](https://github.com/tenstorrent/tt-metal/issues/58986) fp32 `cumsum` NaN after inf/overflow | $1,000 | C++ kernel, numerics | small-medium | Assigned 10-02, open PR #59913, 6 forks reference it | A | 2 | ~20 |
| 3 | [tt-metal #55105](https://github.com/tenstorrent/tt-metal/issues/55105) `polygamma` returns 0 for n>=7 | $1,500 | C++ kernel, numerics | medium | Assigned 09-11 (singhharsh1708), 3 backups waiting | A | 1 | ~15 |
| 4 | [tt-metal #8621](https://github.com/tenstorrent/tt-metal/issues/8621) host tilizer BFP8/4/2: threads, SIMD, no copies | $500 | C++, CPU SIMD, host only | small-medium | **Unassigned**, no PR, 7+ claim comments Oct 7-11 (one AI "agent", one spammer); partial work merged in 2025 | A | 2 | ~12 |
| 5 | [tt-metal #51655](https://github.com/tenstorrent/tt-metal/issues/51655) `typecast` to uint16 truncate | $1,000 | C++ kernel | small | Assigned 09-02, 3 competing PRs | A | 1 | ~10 |
| 6 | [rav1d perf bounty](https://www.memorysafety.org/blog/rav1d-perf-bounty/) (Prossimo/ISRG) | $20,000 pool, discretionary split | Rust, codec perf (~5% gap to dav1d in 2024 numbers) | large | Unknown. Repo active (commits Aug 2026), perf issues open | Not read | 1 | ~10, **status unverified** |
| 7 | [Cuckoo Cycle: SipHash-1-2, unrestricted memory](https://github.com/tromp/cuckoo) | $5,000 | C/C++, AVX2 solver | large | **Pending claim** [#116](https://github.com/tromp/cuckoo/issues/116) (2.03x, disputed whether it counts). Only compete if it is rejected | none stated | 1 | ~10 (conditional) |
| 8 | [Cuckoo Cycle: SipHash-1-2, <=1 byte/edge](https://github.com/tromp/cuckoo) | $5,000 | C/C++, memory-bound solver | large | No claim visible | none stated | 2 | ~8 |
| 9 | [tt-metal #59732](https://github.com/tenstorrent/tt-metal/issues/59732) `ttnn.sampling` bias | $3,000 | C++/Python | medium | Assigned 10-08, PR #60225 | A | 1 | ~8 |
| 10 | [Cuckoo Cycle: commodity hardware](https://github.com/tromp/cuckoo) Cuckatoo32 >=1 gps at <=100 W/gps | $10,000 minus hardware | C++/CUDA, GPU/CPU solver | large | No claim visible | none stated | 1 | ~7, needs GPUs |
| 11 | [tt-metal #56908](https://github.com/tenstorrent/tt-metal/issues/56908) distributed LayerNorm row-stride bug | $3,000 | C++ | medium-large | Assigned 09-17, CI-green PR #57650 | A | 1 | ~6, needs Wormhole |
| 12 | [Tarsnap bug bounty](https://github.com/Tarsnap/tarsnap/blob/master/AGENTS.md) (also spiped, kivaloo) | Under $100 = account credit, not cash; larger amounts not visible | C, fuzzing/robustness | small per bug | 60+ "[bug bounty]" issues, most LLM-written; upstream libarchive bugs ineligible | Allowed if the LLM is disclosed | 2 | ~5 |
| 13 | [Tari wallet-benchmarks #1](https://github.com/tari-project/wallet-benchmarks/issues/1) | 150,000 XTM (USD value unknown) | Rust, benchmark harness | medium | 6+ claimers, 2 open PRs; maintainer wrote his own and said he will split among three | none stated | 1 | n/a |
| 14 | [tt-metal #49307](https://github.com/tenstorrent/tt-metal/issues/49307) Command-R bring-up | $2,500 | Python/TTNN | large | Deadline expired 10-10, 8+ would-be takers | A | 1 | ~1, needs T3K |

**Note A, Tenstorrent AI policy** (from CONTRIBUTING.md): AI-assisted code is fine if you personally review it and post manually. Using agents or automation to claim or request assignment is "strictly prohibited" and can mean a permanent ban. Payout needs a merged PR ("Accepted Contribution"); amounts are $1-3,000 by tier, set at Tenstorrent's discretion. I could not fetch BOUNTY_TERMS.md, so payment mechanics and eligibility rules are unread. No hardware is needed for some items: contributors validate on the `ttsim` simulator, but acceptance needs Wormhole and Blackhole CI, and ttsim aborts on fp32 DEST.

**Per-row notes on what must be done**
1. Add the missing x<=-4 branch and fix the tail and mid-range polynomials; fp32 within 4 ULP of PyTorch on [-30,30]. Proposed form: `min(x,0) - log1p(exp(-|x|))`.
2. Make the fp32 cumsum follow IEEE after +/-inf and overflow on the default compensated path. Add tests for lengths 4, 8, 33, dims 0 and -2, plus a device-profiler overhead note.
3. Fold the n! scale into the series so intermediates do not underflow. Return nonzero for n in [1,11] wherever the true value is a normal fp32, within 1 bf16 ULP.
4. Multi-thread the host tilizer, add CPU intrinsics for BFP8/4/2, drop redundant FLOAT32 conversions, and keep rounding parity with the device. A benchmark and CPU-only validation are the natural deliverables. A maintainer comment suggests splitting `test_tiles.hpp` into .hpp/.cpp.
5. Make float to uint16 truncate like the other integer destinations (Blackhole and Wormhole B0 kernels). Update goldens that currently encode rounding.
6. Rules say Rust only, no changes to the shared assembly. I could not read the current terms or any award status (memorysafety.org is blocked from here).
7-8. Rules, per the README: the SipHash bounties are not subject to double or fractional payouts. The maintainer says the bar is "the fastest possible solver", not a particular implementation, and was sceptical that cheaper hashing alone counts. The two bounties already paid (a $10,000 time-memory trade-off in April and a 1 BTC M1 Ultra one in July) show he does pay.
10. Cuckatoo32 solver at >=1 graph/s per 100 W on consumer hardware, open source, minimal cycle-loss.
12. Tarsnap pays for bug *reports*, not patches. If someone else fixes your bug, you still get the bounty. It never pays crypto. Full rules are at tarsnap.com/bugbounty.html (unreadable here).

**Competition caveat.** The tt-metal threads show 8-14 near-identical posts from single accounts, forks labelled "autonomous agent", and a repeated spam comment with PayPal/crypto details. Maintainers delete comments and assign by hand, so "first to comment" does not win; a merged PR does.

## Checked and not worth pursuing

- [Gyroflow #742](https://github.com/gyroflow/gyroflow/issues/742) ($500, Rust, Algora): 7+ attempt PRs, and the maintainer wrote on 2026-10-11 "please don't submit any more PRs for this issue".
- [tinygrad #18310](https://github.com/tinygrad/tinygrad/issues/18310) ($500 QCOM A630 emulator, Python): PR #18635 "mockgpu: qcom a630" carries `bounty locked`, which probably means it is taken (inferred, not confirmed). tinygrad's bounty list is a Google sheet I could not read.
- tt-metal #55248 (matmul program-cache key collision): the reporter wants it "through the bounty program", but no amount is posted.
- Wasmer/Zig WASIX, Golem, Turso, comma #32425, Prettier, ProjectDiscovery: see the top section.
- Bounty-farm repos (NSPG13/agent-bounties, SecureBananaLabs, UnsafeLabs/Bounty-Hunters, sorosave/SUSU-LABS contracts, claude-builders-bounty, mergeos, sn-monetization-runtime, fork-named Go repos with "$10" bounties): ignore.

## Standing security/fuzzing programs (leads only)

Not issue bounties; I could not open any of their pages. Amounts come from search snippets:
- Google OSS-Fuzz integration rewards: the maximum was raised to $30,000 in 2023; 2026 status unknown. Google's OSS VRP is reported paused (Oct 2026) in favour of Patch Rewards.
- RISC Zero via HackenProof (critical $10k-$150k) and ZKsync OS via Immunefi (up to $100k): Rust, security only, highly competitive.
- GitHub's own bug bounty was cut by at least half on 2026-07-27, and reports describe VIP-tier filtering of AI submissions.

## Platforms: claiming, fees, payout, Sweden

- **Algora** (GitHub bounties; maintainer posts `/bounty $N`, you `/attempt`, then `/claim` on your PR; paid on merge):
  - Contributors get 100%; the poster pays the fee. Quoted figures conflict: 9% on one pricing page, 11% on another, so check the live page.
  - Payouts go through Stripe Connect, usually 1-3 business days after the poster pays. The docs' country list includes Sweden. India and the UAE are limited to businesses; nothing similar was found for Sweden.
  - Many Algora bounties here are stale (2022-2024 and never closed). A search snippet put the Rust board at 28 and C++ at 5, but it is a cached snapshot and I could not verify it.
  - Algora's own pages were unreadable for me; fees and Sweden support come from search snippets of algora.io/docs/payments.
- **Opire / Polar / IssueHunt / Bountysource:** pages unreachable. Bountysource is dead (projects migrated away). IssueHunt is listed as discontinued on AlternativeTo. Polar now presents itself as a merchant-of-record platform and its founder says it does not believe in traditional bounties. I found one anecdote that three Opire rewards were closed or gone (Sept 2026). Treat all three as inactive for our purposes.
- **Project-run programs:**
  - Tenstorrent: payment mechanics unread; assignment is manual.
  - Cuckoo Cycle: paid personally by the maintainer in USD or BTC.
  - Tari: XTM tokens on request via Discord ("up to a week").
  - Tarsnap: account credit under $100, never crypto.
- **Sweden:** I found nothing that blocks a Swedish individual. Algora (Stripe) lists Sweden. Gaps: I could not read Tenstorrent's terms, and the crypto payouts (XTM, BTC) raise their own tax and reporting questions. Prize income is taxable in Sweden; this is not legal advice.

## Takeaways

- Take only items that win on engineering, and where the work needs no hardware: Cuckoo Cycle (#7, #8) for a long-horizon benchmark-driven attempt, and tt-metal #8621 for a one-to-two-day SIMD pass. Email or comment first to confirm nobody has the item and the bounty is still honoured.
- Do not rely on "first PR wins": maintainers are rejecting agent floods and removing bounties.
- Re-check this list before acting; tt-metal threads change daily.
