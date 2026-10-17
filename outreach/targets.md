# Outreach targets: fixed-price performance pull requests

Researched 2026-10-11. Read-only: nothing contacted, nothing cloned, no GitHub API or MCP.

## Read this first: what the network allowed

- Only github.com pages could be opened. Every company website, careers page and job board (rerun.io, mullvad.net, embedl.com, recruitee, ashby, lever, jobbsafari and so on) failed with DNS errors or 403.
- So all evidence below is GitHub issues, READMEs and org profiles that I opened. No job ads could be opened, so none are cited.
- Contact routes come from the GitHub org profile or from a public issue comment. The profile's "email" field is the company's own published address. A company site may show a better route, such as a contact form or a CTO name. Check it by hand before sending.
- Sizes are almost never published on the pages I could open. I write "not published" where that is so.
- Dates are read from the issue pages. "Open" was checked on the page on 2026-10-11.
- Result: 14 targets, not 16. Five are Swedish and nine international. Many Swedish companies have no public GitHub footprint, so I had nothing to cite. See "Left out".
- Several issue pages say "Reactions are currently unavailable", so I give comment counts and dates instead of reaction counts.

Order: strength and recency of evidence, strongest first. The top 8 by fit for a solo contractor are at the end.

---

## 1. Dragonfly (DragonflyDB), Israel

- Site: https://dragonflydb.io
- Size: not published. The org shows 442 followers.
- Makes: a C++ in-memory datastore, "a modern replacement for Redis and Memcached".
- Evidence (all open on 2026-10-11):
  - https://github.com/dragonflydb/dragonfly/issues/8226 (opened 2026-09-03, last comment 2026-09-09, bug). `psync_buffer_bytes` grew about 4.3 GB in 20 s on an 8 GB host. The backlog is bounded by entry count, not bytes. Maintainers have a partial mitigation only on dev images.
  - https://github.com/dragonflydb/dragonfly/issues/6545 (opened 2026-02-05, marked stale 2026-09-30). After upgrading 1.26 to 1.36, the gap between RSS and `used_memory` grew from 10-20 GB to 50-100 GB. No root cause was found.
  - https://github.com/dragonflydb/dragonfly/issues/5625 (opened 2025-08-06, last comment 2026-04-16, 42 comments). Snapshots stall reads and writes for about 15 minutes at 237 GB, and p99 spikes appear with large hashes.
  - https://github.com/dragonflydb/dragonfly/issues/6452 (opened 2026-01-23, 17 comments in the list view). INFO commands stall during snapshots.
- They likely want: memory accounting and bounding of replication and journal buffers, snapshot serialization that yields (no latency spikes), and allocator fragmentation work.
- Contact: team@dragonflydb.io (GitHub org profile).
- Angle: "Your open #8226 and #6545 are unbounded-memory reports. Send me the one you most want closed and a repro, and I deliver a PR that bounds it by an agreed factor, at a fixed price."

## 2. GreptimeDB (Greptime), location not listed

- Site: https://greptime.com
- Size: not published. The org shows 300 followers.
- Makes: an open-source observability database in Rust (metrics, logs, traces).
- Evidence:
  - https://github.com/GreptimeTeam/greptimedb/issues/9435 (opened 2026-10-02, open, assigned). A 7-day PromQL range query over about 406k series peaked at 10.6-11.0 GiB and timed out at 300 s, with or without `experimental_series_scan_v2`. The reporter asks for bounded scan memory.
  - https://github.com/GreptimeTeam/greptimedb/issues/9120 ("Tracking: optimize metric export and import", opened 2026-09-11, updated 2026-10-11). Seen in the listing only. I did not open it.
  - https://github.com/GreptimeTeam/greptimedb/issues/9466 ("Prometheus Remote Read compatibility and performance", opened 2026-10-08). Listing only.
- They likely want: bounded memory in scans and query paths, faster PromQL and export, and fewer lock stalls in the metadata server (#9414, #9419).
- Contact: info@greptime.com (GitHub org profile).
- Angle: "#9435 is a clean, measurable target: 10 GiB down to a stated bound on your own reproduction, delivered as a PR with a before/after benchmark."

## 3. Feldera, USA

- Site: https://feldera.com
- Size: not published. The org shows 70 followers.
- Makes: an incremental computation engine in Rust (streaming SQL).
- Evidence:
  - https://github.com/feldera/feldera/issues/7357 (opened 2026-10-01, open). A production pipeline pod swings 5-8 GiB in a sawtooth pattern while the process uses under 3 GiB. rclone listing memory grows linearly: 0.35 GB at 500k objects, 3.0 GB at 5M. The author proposes direct file checks instead of a bucket listing.
  - https://github.com/feldera/feldera/issues/7349 (opened 2026-10-01). S3 checkpoint GC uses a lot of memory. Listing only.
  - https://github.com/feldera/feldera/issues/7450 (opened 2026-10-09). Aggregate memory pressure can stall control APIs. Listing only.
- They likely want: memory-bounded checkpoint GC and sync, plus backpressure under memory pressure.
- Contact: support@feldera.com (GitHub org profile; a support address, so ask for the engineering lead).
- Angle: "Three memory issues opened in the last two weeks. I take one, with a measured peak-RSS target, at a fixed price."

## 4. ParadeDB, USA

- Site: https://paradedb.com
- Size: not published. The org shows 188 followers.
- Makes: Postgres with full-text search (BM25), vector search and aggregations, built on Rust/Tantivy.
- Evidence:
  - https://github.com/paradedb/paradedb/issues/5770 (opened 2026-07-30, open, label priority-high, reassigned 2026-09-30). IVF centroid training memory grows linearly with table size: about 26 GB at 10M x 1024-d vectors and about 260 GB at 100M. The issue proposes a cap.
  - https://github.com/paradedb/paradedb/issues/6739 (opened 2026-10-08). Heap filter evaluation accumulates temporary memory with `jsonb_build_array`. Listing only.
  - https://github.com/paradedb/paradedb/issues/6705 (opened 2026-10-07). COUNT(col) grouped by col reads the column twice. Listing only.
- They likely want: bounded training memory, scan and aggregate fast paths, and top-k join work.
- Contact: hello@paradedb.com (sales, partnerships and media per GitHub org profile; careers@paradedb.com for hiring).
- Angle: "#5770 has a written design and a memory formula. I can ship the cap plus a recall check, with the memory target agreed up front."

## 5. Rerun, Sweden (Stockholm)

- Site: https://www.rerun.io (could not be opened here)
- Size: not published. The org shows 795 followers.
- Makes: an open-source visualization and data layer for multimodal robotics and "physical AI" data, in Rust.
- Evidence (all open):
  - https://github.com/rerun-io/rerun/issues/12602 (opened 2026-01-30, label performance, no assignee). Python `rr.log` of small items costs about 40 µs per call, about 20x the Rust path. Causes: pyarrow encoding and `_log_components`.
  - https://github.com/rerun-io/rerun/issues/8101 (opened 2024-11-12, reopened, last activity 2026-10-06). Viewer latency grows at 150 scalars per cycle. Ingestion costs about 10 ms per input from many tiny chunks, and plot rendering has too many line primitives.
  - https://github.com/rerun-io/rerun/issues/10276 (opened 2025-06-17, open; a commit referenced it 2026-06-17). Rendering many `Boxes3D` is about 100x slower than points.
  - https://github.com/rerun-io/rerun/issues/12960 (opened 2026-10-06). Memory leak in the MCAP importer, about 9 KiB per call. Listing only.
- They likely want: faster small-log paths in the SDK, chunk compaction and ingestion throughput, and instanced rendering.
- Contact: inbound@rerun.io (GitHub org profile).
- Angle: "#12602 has a profile (half the time is archetype conversion). I deliver a PR that cuts the per-call cost by an agreed factor, with a benchmark you can rerun."

## 6. Ollama, USA

- Site: https://ollama.com
- Size: not published. Four people are shown on the org page.
- Makes: a local LLM runtime (Go plus llama.cpp-derived and MLX runners).
- Evidence (all open):
  - https://github.com/ollama/ollama/issues/14861 (opened 2026-03-15, last comment 2026-07-08, performance + bug, assigned). On qwen3.5:35b, 53 tok/s with llama.cpp against 32 with Ollama. On an RTX 4090, 57.7 against 30.7. A maintainer says a 0.31.2 pre-release "should be the same speed".
  - https://github.com/ollama/ollama/issues/5800 (opened 2024-07-19, last comment 2026-10-07, performance). Speculative decoding is not merged.
  - https://github.com/ollama/ollama/issues/2929 (opened 2024-03-05, last comment 2026-08-21, performance, assigned). Only half of the CPU cores are used on NUMA and virtualized hosts. The thread has many thumbs-up. `OLLAMA_NUM_THREADS` does not work.
- They likely want: CPU thread placement and NUMA handling, kernel gaps against llama.cpp, and speculative or n-gram decoding.
- Contact: hello@ollama.com (GitHub org profile).
- Angle: "#2929 is a CPU and NUMA problem with a clear metric (tokens/s on a stated machine). I deliver a PR for a fixed price."

## 7. Polars (Polars Inc.), Netherlands

- Site: https://www.pola.rs
- Size: not published. The org shows 1.3k followers.
- Makes: a DataFrame query engine in Rust.
- Evidence (all open):
  - https://github.com/pola-rs/polars/issues/21850 (opened 2025-03-19, last activity 2025-10-16, P-medium, performance). Nested window aggregations in `rolling` use 9.9 GB and 1.3 s, against 0.24 GB and 0.03 s when rewritten by hand. A maintainer says a denesting optimizer pass is needed.
  - https://github.com/pola-rs/polars/issues/26432 (opened 2026-02-05, P-goal, performance, internal). Morsel backpressure in IO sources. Morsels pile up in memory when downstream is slow. The issue proposes semaphore permits.
  - https://github.com/pola-rs/polars/issues/14936 (opened 2024-03-08, about 10 comments). Avoid reading partitioned files when the answer is in hive paths or row-group statistics. Listing only.
- They likely want: optimizer passes (denesting, filter pushdown), IO backpressure, and string-to-datetime fast failure (#21951).
- Contact: info@polars.tech (GitHub org profile).
- Angle: "#21850 has a 40x gap and a maintainer's sketch of the fix. I deliver the optimizer pass or a stateful rolling kernel, at a fixed price against that benchmark."

## 8. Qdrant, Germany (Berlin)

- Site: https://qdrant.tech
- Size: not published. The org shows 1.8k followers.
- Makes: a vector database in Rust.
- Evidence:
  - https://github.com/qdrant/qdrant/issues/10954 (opened 2026-10-05, open, bug). Telemetry requests are serialized behind a global tokio Mutex, so `/metrics` scrapes queue and time out. The author says the lock protects nothing. This is a small, fixable item.
  - https://github.com/qdrant/qdrant/issues/10877 (opened 2026-09-30, 4 comments) and https://github.com/qdrant/qdrant/issues/10978 (opened 2026-10-06). Copy-on-write flush dependencies, and a shard-holder lock held during snapshot restore. Listing only.
  - https://github.com/qdrant/qdrant/issues/5250 (opened 2024-10-16, open). Memory growth during concurrent ingestion. Old, and maintainers call it expected. Weak.
- They likely want: lock contention and flush paths, memory behavior at scale, and edge/embedded footprint.
- Contact: info@qdrant.com (GitHub org profile).
- Angle: "Internal lock and flush hotspots, as in #10954 and #10877, are the kind of change I can bound with a benchmark and ship as a PR."
- Note: this is a bigger company, probably over 100 staff. Check that an engineering lead can say yes without procurement.

## 9. Defold (Defold Foundation), Sweden (Stockholm)

- Site: https://defold.com (the org lists info@defold.se)
- Size: not published. The org page shows three members.
- Makes: a free game engine (C++ runtime and Lua scripting; editor in Clojure).
- Evidence (all open, all with the performance label, updated 2026-10-08):
  - https://github.com/defold/defold/issues/11583 (opened 2025-12-07). `http.request` stalls small requests while a large download runs. The cause is the round-robin balancer in `http_service.cpp`; the plan is to move to `dmJobSystem`. Priority 5, no assignee.
  - https://github.com/defold/defold/issues/12151 (opened 2026-04-02). Frustum culling ignores the render predicate in multi-pass rendering. Priority 3, no assignee.
  - https://github.com/defold/defold/issues/11123 (opened 2025-08-21). Slow Android scene loading and bundling.
  - https://github.com/defold/defold/issues/9770 (opened 2024-11-16). Optimize the static vertex data format of models. Listing only.
- They likely want: engine-side C++ fixes, such as job-system HTTP, culling and vertex formats.
- Contact: info@defold.se (GitHub org profile).
- Angle: "Your backlog already scores and sizes #11583 and #12151. Take one off it with a PR and a benchmark."
- Note: this is a foundation, not a company. Small team, so the offer is easy to say yes to, but the budget is small.

## 10. Embedl, Sweden (Gothenburg, HQ)

- Site: https://www.embedl.com
- Size: not published. There are two public GitHub members, and an office in Palo Alto.
- Makes: efficient deep-learning tools for edge hardware: model compression, deployment, LLM inference speedups.
- Evidence:
  - https://github.com/embedl/flash-head (README, updated 2026; Jul 2026 PR #4). FlashHead is a vLLM plugin that claims up to 2.0x model-level speedup by clustering token embeddings and scoring about 12k of 128k tokens. The roadmap lists speculative decoding in progress, EAGLE in progress, and benchmarks on Qualcomm, AMD and Intel "not yet started".
  - https://github.com/embedl/flash-head/issues (one open issue, #1 "vllm serve", opened 2026-04-15) and https://github.com/embedl/flash-head/pulls (one open PR, 2026-07-10). These show a small, active repo.
  - This is a product that sells speed, not a bug report. The need is inferred from the roadmap, not stated as a defect.
- They likely want: CPU and edge kernels, quantized inference paths, and porting to other accelerators.
- Contact: info@embedl.com and models@embedl.com (the README says "enterprise licensing, custom model optimization and engineering support").
- Angle: "You have three benchmark items on the FlashHead roadmap with no owner. I take one, with a speedup target on a device you name."
- Note: Gothenburg, so a local meeting is possible.

## 11. Meilisearch, France

- Site: https://www.meilisearch.com
- Size: not published. The org shows 1.3k followers.
- Makes: a search engine in Rust.
- Evidence (all open):
  - https://github.com/meilisearch/meilisearch/issues/3581 (opened 2023-03-09, labels updated 2025-08-13, performance). A `_geoPoint` sort over 6.3M documents takes about 1 s, against under 10 ms without it. A maintainer says the R-tree needs a rewrite for LMDB. The geo index must sit in RAM at about 200 MiB per 1M documents.
  - https://github.com/meilisearch/meilisearch/issues/3377 (opened 2021-09-09, last comment 2026-08-18, performance). A contributor asks whether the rstar bulk-load work is still wanted.
  - https://github.com/meilisearch/meilisearch/issues/3126 (opened 2022-11-23, 12 comments). High volumes of search requests. Listing only; I did not open it.
- They likely want: geosearch speed and memory, and bulk-load for the R-tree.
- Contact: bonjour@meilisearch.com (GitHub org profile).
- Angle: "Geosearch has been a known gap since 2021, and a contributor is asking whether anyone wants it. I deliver the R-tree work with a stated speedup on your 6M-document case."
- Note: the evidence is older than the others. Only the 2026-08-18 comment is recent.

## 12. Mullvad VPN, Sweden (Gothenburg)

- Site: https://mullvad.net (could not be opened). The Gothenburg location is from my own background knowledge. The GitHub profile does not state a location.
- Size: not published. Eight people avatars are shown.
- Makes: a VPN with a Rust client app (WireGuard, DNS blocking).
- Evidence (all open):
  - https://github.com/mullvad/mullvadvpn-app/issues/4640 (opened 2023-05-01, last comment 2025-12-21, macOS). Installing the app cuts download speed on M1 Macs by about 30%. A maintainer said in March 2024 that the team had not investigated.
  - https://github.com/mullvad/mullvadvpn-app/issues/9984 (opened 2026-03-13, last comment 2026-03-18). Extremely slow DNS on Windows with a custom DNS server. The team could not reproduce it.
  - https://github.com/mullvad/mullvadvpn-app/issues/11039 (opened 2026-08-28, maintainer label 2026-08-31). DNS timeouts and slow loading on Ubuntu 26.04.
- They likely want: throughput on macOS (firewall `pf` and the userspace WireGuard path) and DNS latency fixes.
- Contact: support@mullvadvpn.net (given publicly by a contributor in issue #9984; support only, not an engineering address). The org profile shows no email.
- Angle: "#4640 has been open three years without a root cause. I deliver a profile and a fix, or a documented negative result, at a fixed price."
- Note: weak as a performance need. These are user bug reports, not planned engineering work. The contact route is poor. Use it last.

## 13. Embark Studios, Sweden (Stockholm)

- Site: https://embark.dev (the org lists embark-studios.com)
- Size: not published. The company is probably above 200, so it is borderline for the size range.
- Makes: a game studio that builds in Rust and open-sources tools (puffin profiler, rpmalloc-rs, Quilkin game-server proxy, cargo-deny).
- Evidence (all open):
  - https://github.com/EmbarkStudios/quilkin/issues/1330 (opened 2026-01-21, kind/feature). Use a bump allocator for DB mutation queries. The author says the current approach is "extremely wasteful" but "not needed right now".
  - https://github.com/EmbarkStudios/quilkin/issues/1472 (opened 2026-09-11). A third allocator feature beside jemalloc and mimalloc. Listing only.
  - https://github.com/EmbarkStudios/quilkin/issues/1394 (opened 2026-05-07). XDP mode: sessions never close and the process freezes. Listing only.
  - https://github.com/EmbarkStudios/puffin/issues/185 ("Doesn't memory keep growing?", opened 2024-01-25). Listing only.
- They likely want: allocator and per-request memory work in the proxy, and profiler overhead.
- Contact: opensource@embark-studios.com (GitHub org profile; this is the open-source address, not sales).
- Angle: "I am a Gothenburg allocator and Rust performance specialist. #1330 is a bounded, benchmarkable change."
- Note: weak evidence. The author calls the work "not needed right now".

## 14. QuestDB, UK (London): evidence strong, contact route not found

- Site: https://questdb.com (could not be opened)
- Size: not published. The org shows 382 followers.
- Makes: a time-series database in Java and C++, with SIMD kernels.
- Evidence (all open):
  - https://github.com/questdb/questdb/issues/7463 (opened 2026-08-04, Performance, SQL, linked PR #7497). `LIMIT -N` over an indexed scan on a table of 7.5e9 rows takes about 20 s, against milliseconds with `ORDER BY ts DESC`. The cost is two full passes.
  - https://github.com/questdb/questdb/issues/5916 (opened 2025-07-08, Performance). CASE expressions are slower than the cast rewrite. Assigned.
  - https://github.com/questdb/questdb/issues/7749 and https://github.com/questdb/questdb/issues/7759 (opened 2026-10-06 and 2026-10-07). Parallelize filtered LATEST ON; a join-order problem. Listing only.
- They likely want: JIT and SIMD paths, parallel scans, and join planning.
- Contact: none public on the pages I could open. The org profile shows no email. I could not open the company site. The co-founder `@bluestreak01` is listed on the org. I did not look up a title.
- Angle: "#7463 is a 20 s to ms case with a written design. I take it at a fixed price."
- Note: check the website for a contact form before using this.

---

## Only through consulting brokers (too large)

Volvo Cars, Volvo Group, Ericsson, Spotify, Klarna, Saab, King, Telia, Zenseact (Gothenburg, autonomous-driving software; the org page showed 16 followers but the company has several hundred staff), Axis Communications, Sectra, Neo4j, Qlik, Truecaller, Mojang. Grafana Labs also listed Sweden on GitHub but is a large US-based company.

## Left out

- Smart Eye (Gothenburg), Tobii (Stockholm), Spiideo (Malmö), Voysys (Gothenburg), Elk Audio (Stockholm), Qualisys (Gothenburg), Eyevinn (Stockholm), Hopsworks (Stockholm), Modelon (Lund), Bitcraze (Malmö), CodeScene, Twingly, FossID, Imagimob, Einride, Encore: I opened their GitHub orgs and found no current performance evidence.
  - Hopsworks: its RonDB PGO issue (#335) dates from 2023.
  - Elk Audio and Eyevinn: their repos have no open performance issues.
  - Modelon: only a 2023 memory issue.
  - Voysys, Spiideo and Smart Eye: only forks or empty repos.
- Configura (Linköping): a web search snippet suggested a 2026 job ad for a Rust runtime engine, but the page could not be opened, so it is not cited.
- Typesense: the facet performance issue (#914) is from 2023.
- Memgraph: its performance issues are from 2022-2023 and the list showed a bulk update date.
- LanceDB and Tracel AI (Burn): strong recent performance issues, but no public contact email on their org pages. Both are worth a look on their websites.
- Job-ad evidence (type 2) is missing for every target because job sites were blocked. A 2026 job ad would be a useful second signal. Check the careers pages of Rerun, Embedl and Dragonfly by hand.

## Top 8 (fit for a solo contractor, evidence, and a usable contact)

1. Rerun (Stockholm, Sweden): inbound@rerun.io. Open Python-logging (#12602) and ingestion (#8101) performance issues, active through 2026-10-06.
2. Dragonfly (Israel): team@dragonflydb.io. Five memory and latency issues, two opened since February 2026, in a C++ datastore.
3. Polars (Netherlands): info@polars.tech. A 40x nested-rolling gap (#21850) with a known fix path, plus a 2026 backpressure item (#26432).
4. Ollama (USA): hello@ollama.com. CPU and NUMA utilization (#2929) and a tokens/s gap (#14861), both active in 2026.
5. Defold (Stockholm, Sweden): info@defold.se. Engine-side C++ fixes (#11583, #12151) already sized and scored on its backlog.
6. Embedl (Gothenburg, Sweden): info@embedl.com. Edge and LLM inference speedups with unowned roadmap benchmarks, and a local meeting is possible.
7. GreptimeDB (location not listed): info@greptime.com. 10 GiB PromQL memory case (#9435), opened 2026-10-02.
8. ParadeDB (USA): hello@paradedb.com. Vector index training memory (#5770) with a written design, priority-high, 2026.
