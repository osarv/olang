Review B1 (genrefs G2-G6), 2026-11-10. run.sh FILE: plain build, -debug -sanitize build with gdb counts of
__olang_gen_reclaim (@R) / gen_free (@F) / gen_buffree (@B), and interpret. Every probe printed the expected values in
all three; no sanitizer poison read. p1-p3 temp/collection structs bound to mut refs; p4-p6 refs into a node's part
across removal; p7,p9*,p12 struct copies/views of a node's key; p8 by-value struct param; p10-p11 enum payload,
global, deque, pair, list, Vec<enum>; p13 orphan weak read; p14 generator; p15 catch-only use; p16 array/Vec copies;
split/ two modules. ctl*.olang: controls.
