# Rules moved out of rules.md (not imported)

The user's rules that a later rule supersedes, or that became moot. Current rules are in rules.md.


## Moved from rules.md on 2026-11-08 (paragraphs a later rule in the file supersedes, or that are moot; verbatim)

### Pacing by usage: the first lessons and the per-week rules (superseded by "Standing rule from 2026-10-26" and "from the week starting 2026-10-31")

**First lesson (2026-10-08):** six implementation agents took the five-hour window from 18% to 39% in fifteen minutes
(~1.4%/min), so the five-hour window, not the week, binds while many agents run. Size the batch to what is left of the
window and the time to its reset; two of the six were paused (TaskStop) and resumed after the reset (SendMessage
continues a stopped agent with its context). The user asked to be reminded: "Remember the rule about matching usage to
agent spawning".

**Plan upgraded 2026-10-09 ~07:09 UTC** (the user: "You have a lot more usage now" - after asking about Max 5x vs
20x): both windows read 0 right after. On the old plan four agents spent a window in ~80 minutes; measure again before
assuming the new rate.

**The goal is the whole week used.** The user, 2026-10-09: "time the usage limit reset for maximum efficiency. Too slow
and you lose credits. Too quick and you lose quality. ... the weekly limit ... is basically the entire bottleneck. Base
your calculations on a 70% uptime over a week." Then, corrected 15:10 CEST: "Aim to have used all compute by the week's
end. The 70 percent rule is about expected uptime, not desired usage." Target weekly burn per active hour = (1 - weekly
utilization) / (0.7 x hours to the weekly reset); measure the actual burn (weekly % per hour, per running agent) from
rate_limit_events at every agent completion or check-in. The five-hour window caps the pace: measured 12:03-13:03 UTC on
2026-10-09, five-hour +19%/h against weekly +5%/h (about 3.8 five-hour points per weekly point), so flat out at the
five-hour limit (20%/h) is ~5.3% of the week per hour; keep the five-hour window landing at ~100% right at each of its
resets when the weekly one has room, and recompute the ratio as readings come in.

**Early in a week, lax (2026-10-10):** weekly went 0.07 -> 0.12 in an hour with 4-5 agents (~1% of the week per
agent-hour), over the ~0.8%/h target. The user confirmed (13:25 CEST): "we don't have to burn the entire budget the
first 25 hours. You can lax it down a bit." The day's pace (quarter of the week in ~10 h) was too fast.

**Speed over evenness (the user, 2026-10-11 ~16:00 CEST): "Using up the weekly limit faster than the entire week is not
a problem in and of itself. Its only a problem if it lowers the effect/tokens ratio. Otherwise faster is better."** This
supersedes the "one agent at a time, stay on the line" pacing of 2026-10-10. Run as many agents in parallel as there is
independent work that does not cost effect per token: no duplicated work, no merge-conflict churn (split by file/area),
no agents queued idle on the verify slots, and the same quality bar (reviews before merging relaxations). Running out
of the week early is fine; arm a send_later for just after the reset when it happens.

**Week of 2026-10-17 to 2026-10-24 (the user, 2026-10-18): "This week I want the code stuff to stop at around 90
percent of the weekly usage limit (you can burn the rest on Saturday if it becomes evident it won't get used
otherwise) so I can have some tokens to build the company".** Code work (agents, merges, reviews) stops at ~0.90 weekly;
the last ~10% is the user's for company work. The reset is Sat 2026-10-24 06:00 CEST, so "Saturday" is read as the
last hours before it (Friday night): if the reserve is evidently unused then, it may go to code. At the request, 11:00
CEST Sunday, the week read 0.67 after ~29 h, so ~23% for ~6 days - a small fraction of the pace so far: the two
batches near their end (wt-mathmeth, wt-mem2) finish and merge, the port agents (lower, catch-up) wrapped up with
hand-off notes, then one agent at a time with gaps - the error-set generics/checked batch first, generators after.
Check the week at every completion; nothing new starts above ~0.85. (This week's rule overrides "speed over evenness"
for this week only.)

**Week of 2026-10-24 to 2026-10-31 (the user, 2026-10-25: "Make sure to stop at 90 percent usage this week too").**
Same rule as last week: code work (agents, merges, reviews) stops at ~0.90 weekly; the rest is the user's. Nothing new
starts above ~0.85; running agents finish and merge. The reset is Sat 2026-10-31 ~06:00 CEST. Check the week at every
completion and check-in.

### The week ending 2026-11-07 and the finishing push (past; the standing 0.92 stop is the rule)

**The week ending Sat 2026-11-07 (the user, 2026-11-04: "You can run up to 95% this week", then minutes later
"Actually, scrap that").** Read as withdrawing the 95%: the standing 0.92 stop holds this week too. The bulk review
started on the 95% was stopped at once (it had not yet built anything).

## The finishing push: build first, verify once (the user, 2026-11-07)
"make sure you build everything now before verifying and testing and stuff. I want the language to be finished today.
So no unnecessary reviews or verifications. Just do one at the end." For the push to finish the language: rounds run
side by side and merge without their own full verify, gates or review (agents develop on targeted tests and run one
`make quick` through vlock at the end); goldens and the seed are settled once at the end; then one full verify, the
gates (scopesan, scopefuzz, fuzz free, dead regions) and one bulk review with its fixes. Rules for agents:
/home/user/review/rounds/finish-rules.md.

### What goes into the C compiler (stage 0) - MOOT, stage 0 removed 2026-10-23

## What goes into the C compiler (stage 0)
**MOOT since 2026-10-23: stage 0 (bootstrap/) is removed; every change is made in olang only. Kept as history.**
The user, 2026-10-17, first: "The C compiler only changes when a change is necessary to compile the 'real' self-hosted
Olang compiler ... always build the best solution and amend the C compiler if that is necessary. We don't want to
restrict the self-hosted compiler because the C compiler needs it." Then, refining it: "if something really
fundamentally changes things, like the command line arguments that make the two compilers fundamentally different, then
update the C one as well. Fix bugs in both etc. What I meant to say is that new flashy features for other things, like
for example arbitrary precision types etc should be restricted to the real compiler. The C compiler should be fully
functioning with all the relevant (and flashy) features to build the main compiler, but without the extra stuff like
FPGA targets and stuff like that."

**Why (the user):** "These rules about the difference between what goes in the different compilers is to save tokens
and time primarily" - not purity. Never revert finished work in C to satisfy the rule (the word command line stays);
just don't spend effort building extras twice.

**How to apply:**
- Into BOTH compilers: the language core and anything that would make the two fundamentally different (syntax, error
  model, array model, generics, the command line, test semantics), everything the port's own source or its std uses,
  and every bug fix (found in one, fixed in both).
- ONLY into the self-hosted compiler: extra features for other domains - arbitrary-precision or arbitrary-width types,
  FPGA/HLS targets, new backends and the like - unless the port itself comes to need one, in which case stage 0 gets it.
- The port is written in the best olang; stage 0 is amended to follow, never the reverse.
- The 2026-10-17 batches (errors, arrays incl. QW, the word command line, formatter) are core: they went into both.

**Syntax goes into both (the user, 2026-10-18, on generators): "they are a syntax features so I kinda think they should
go in both. Restricting the port on syntax is probably gonna backfire eventually."** Anything the port's own source
could be written with - syntax and language constructs (generators included) - goes into stage 0 too, so the port is
never restricted by what stage 0 accepts. Port-only stays for domain extras. (This answered QAK, which asked whether
features the compiler's source does not use may go into the self-hosted compiler only.)

**Bootstrap by a generated seed, and the C compiler is frozen at self-hosting (the user, 2026-10-18, "I want it that way
yes", superseding "one-step bootstrap from C, always" given an hour earlier):** once the port self-hosts, the C compiler
is frozen. Rebuilding from nothing is one run: a committed seed - LLVM IR the olang compiler wrote of itself, regenerated
by a command whenever compiler/ moves on, never hand-written - is compiled by clang, and that builds the current source
(Zig's approach). No chain of intermediate compilers (no `bootstrap/CHAIN`) and no second hand-written compiler
maintained. So after self-hosting every feature is built once, in olang; until then stage 0 gets only what the port's own
source (and the std it uses) needs, plus bug fixes. (The superseded rule, 2026-10-18 earlier: "the C compiler should
always be up to date to the point where it can in one run compile the olang compiler ... we don't compile the olang
compiler using the C compiler to compile the next bootstrap step" - stage 0 maintained for as long as the port is.)

