---
name: direction
description: "The user's direction for olang and the work around it, and how to read and address them: principles, natural language, dictated messages, time zone, oann/oagent plans"
metadata:
  node_type: memory
  type: user
  modified: 2026-10-08
---

## Principles

The user, 2026-10-08: "no manual memory management, C-like performance, natural language as much as possible, minimal
syntax, multi-purpose. AI/data science and scripting as well as GUI etc. This is the basis of a bunch of larger
projects so it's important we get the design solid and smooth."

**How to apply:** weigh every design detail against these, in roughly this order of non-negotiability: no manual memory
management (scopes/arenas, never free or a GC pause), C-like performance (no hidden per-operation cost, see
rules.md, "Language rules"), natural language (below, "Natural language"), minimal syntax (reuse a construct
before adding one), multi-purpose (a choice that serves only one domain needs a reason). "Solid and smooth": prefer one
rule that composes over special cases, and fix rough edges found while building rather than recording them.

Written out as `PRINCIPLES.md` in the repo root (the user: "Record the general language-vibe specs"), imported by
CLAUDE.md so every session loads it; keep it current when the direction moves.

**Compile speed (the user, 2026-10-23): "Making compilation faster is going to matter a lot."** After being told the
port's -O3 self-build takes ~108 s against the C compiler's ~32 s, mostly clang on the port's generated IR. So build
time is a first-class goal of the port, measured as performance is: weigh it in every emit/lowering decision, and keep
a compile-speed round going (instance merging and sharing, less IR per line, parallel and cached objects).
Then: "That is the first approved item we fix" - read as: of the decided-but-unbuilt items (plan.md's build list), compile
speed comes first, ahead of every language feature queued for after self-hosting.

**FPGA (2026-10-09):** the user wants olang to target FPGAs for spiking neural network implementations - a long-term
domain to weigh when designing numeric types (bit widths, fixed point, saturation) and concurrency (dataflow).

**oann and the matrix library (2026-10-09):** "Oann btw is very incomplete. It should be written in Olang as well. I want
the matrix library to be efficient. It should work as the base for all operations and operands." oann gets rewritten
in olang (the C version is only a rough reference); std/linalg's Tensor is the operand of every numeric/NN operation,
and efficiency comes first: zero-allocation in-place forms, transposed matmul without copies, fused elementwise.

**Settling networks are the main experiment (the user, 2026-10-28, after a walkthrough of the basic function -
the artifact "How a Network Settles", https://claude.ai/artifact/Hwn2xBvjNSsEHVYVTPFwk2): "This is what we are going to
be experimenting with primarily btw".** So olang's work is weighed by what the settle needs: many small cache-resident
GEMVs in an allocation-free loop, symmetric reciprocal blocks, low precision and the FPGA path (oann/docs/settling.md
sections 1.10, 3, 4). When experiments start is the user's to say (asked 2026-10-28, decisions.md QBY).

**Settling networks research (the user, 2026-10-11):** "When you are done with the compiler I want you to start playing
around with the settling networks to extract functional structures for various tasks. Be it MNIST initially, but NLP
and robotics later on. You may use genetic algorithms if you want." This starts once the self-hosted compiler is
done (confirmed by the user: "The self hosted one"). The goal is to find the circuit structures (regions,
projections, connectivity motifs, memories) that solve a task, and to understand them. It is not only accuracy. MNIST
comes first, then NLP, then robotics. Evolutionary search over circuit structures is allowed. The clean-room rule
holds: work only from oann/docs/settling.md and the published papers.
Where it lives (the user, 2026-10-11, superseding "a subdirectory of oann"): a new private repository, **osarv/oagent** -
"where all implementations of the agent and its research go. This is where we will bootstrap superintelligence. The
end stage is not being reliant on other companies at all." The GitHub integration cannot create repositories (403), so
the user created it on github.com (2026-10-11), and it is attached and cloned at /home/user/oagent. Its first
commit (2d216f2, main) has the README (goal, stages, oversight) and CLAUDE.md (working rules).
**The goal (the user, 2026-10-11):** "growth, like for any dynamic system, growing more powerful through differentiation
and pruning. The settling network should become a general high-quality agent that can take on any task using as little
compute as possible. It may use settling stuff, it may implement backprop, genetic algorithms, as long as it grows
stronger and more efficient." Any method is fair. The measure is capability per unit of compute, rising over time.
Refined the same day: "the differentiation and pruning part is maybe incorrectly phrased. Use any method. Do more with
less, continuously." So the goal is that sentence. Differentiation and pruning are examples of methods, not the
definition.
And: "you may grow it in size and use more compute, it's not like the amount of compute has to stay constant. Any
good organism will grow in resource usage." Total size and compute may grow. Both capability and capability per unit of
compute should keep rising.
Priorities (the user, 2026-10-11): "For now, general semantic intelligence is the most important thing, eventually
robotics and image generation will be done too. Bootstrapping is what to focus on." Read as: the agent's own
bootstrapping loop comes first, built on cheap tasks; general semantic intelligence (language, knowledge, reasoning) is
the main target; robotics and image generation come later. README stages updated to match. I stated this reading to the
user, since "bootstrapping" could also mean the compiler's.
**The long-term plan (the user, 2026-10-11):** "a settling network with recursive self improvement for
superintelligence". How I approach it, as told to the user: oversight is designed in from the start, not added later.
- A self-improvement step is a proposal: evaluated in a sandbox against fixed benchmarks, kept only when it is better.
- A capability jump needs the user's sign-off.
- The system cannot change its own objective, its evaluation, or the oversight itself.
- Everything is logged, so each change can be traced and undone.

## Natural language

The user (2026-09-30, on the `for` remake): "I really like the for ... in ... pattern, I want to take Olang more
in the direction of 'natural language'".

**How to apply:** when offering syntax options, include and weigh the form that reads as plain English
(`for x in a`), and say when a choice cuts against it. It is a direction, not a mandate to rewrite existing
syntax unasked - raise candidates (e.g. `and`/`or`/`not`) as questions, don't change them silently. Questions go in the
ledger decisions.md when asked; answers go to CLAUDE.md/HISTORY.md.

## Dictated messages

The user dictates many messages (2026-10-08: "there are going to be dictation errors showing up ... the text is going
to be as if I speak and something gets wrong and I correct it. Record it so that you are aware of it").

**How to apply:** read for intent. Misheard words are common ("case cards" = case guards, "öikenmabaled" = like
labeled, "Fox" = fix, "grap the lady commits" = grab the latest commits). A sentence that changes course mid-way
("do X, no, Y") means the later part. Never quote a garbled word back as though it were meant; when a reading is
genuinely ambiguous and the choice matters, state the reading taken (and record it as such in the ledger, per
rules.md, "How to decide and record") rather than stalling.

## Times

The user lives in Gothenburg: give every time in reports as Swedish local time - CEST (UTC+2) until 2026-10-25, CET
(UTC+1) after - written like "15:10 CEST".

The user, 2026-10-09: "For time use CEST instead. That's the Stockholm one, I live in Gothenburg. That way I don't have
to convert it in my head manually every time."

**How to apply:** convert before writing to the user (Europe/Stockholm). Tools still speak UTC (send_later `at`,
rate_limit_event `resetsAt`, cron fields - though create_trigger accepts `CRON_TZ=Europe/Stockholm`); convert at the
boundary. Older entries in memory and CLAUDE.md written in UTC stay as they are.

## Contracts and proving

The user, 2026-10-24: "We are going to do theorem proving." Contracts (conditions in brackets after the parameters and
after named results) are the language's statements of what a function requires and guarantees; scope obligations are
contracts the compiler infers. A prover is to decide as many conditions as it can while compiling. Rule (mine,
recorded with it): proving only moves conditions out of "unchecked" - proved ones need no check, refuted ones are
errors, the rest stay opt-in through `checked` - so a program's meaning never depends on how clever the prover is.
