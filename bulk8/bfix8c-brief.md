# bfix8c (/home/user/wt/bfix8c, opus high) - migration tools, builders, literals, diagnostics
Read /home/user/review/bulk8/FIX-RULES.md. Fix: lang/NOTES.md F5 (medium: literal_migrate rewrites today's `bag.Bag[a,
b]` and a type variable's `C[...]` - it must know imported types' and type variables' FromIter, so `olang fix` stays
idempotent on current code), F4 (builder_migrate making a builder that clashes with an enum case), F6 (a bare generic
builder owner accepted; D19a's hint suggesting it; the call through an instance stopping the build), F7 (M19g for a
ColumnVec column view after growth), F8 (Vec/Map literals of unique values refused; SPEC E19's contradiction; a
comprehension into a concrete-iterator FromIter); tools/NOTES.md F2 (medium: `olang fix` leaves calls to std functions
whose names changed when they became builders - net.ParseIP, net.ParseAddr, time.DateOf, net.ListenUDP; give the tool a
table of std's renamed builders; the "declares no" diagnostic gains its rule tag and did-you-mean, one error per cause),
F3 (`P()` reporting E14 three times), F8 (`olang api` naming a raised error's change "changed global"), F10 (a length
lost through a generic handing its array on), and the stale texts listed at the end of tools/NOTES.md (SPEC's upper-case
error words, std/json's comments, std/net and std/time headers) - and the "olang fix: cannot run tools_X" first-run
failure both reviewers saw (the tool cache being built concurrently).
