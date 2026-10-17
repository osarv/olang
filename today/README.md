# Review of 2026-10-09's features (compiler 189ec6a, /home/user/wt/review2/build/out)

run.sh FILE MODES - builds with -b (b), -b -d (d), interprets (i), or tests (t); asanrun.sh - the ASan/UBSan copy
(asan/build/out) over every program here. old/ - fa061c3 built, to tell pre-existing from new.

Confirmed (see the report for output):
 1 scopes/01.olang (02 control, 03 fixed-array variant)  UAF: struct field stored after construction, returned
 2 constgen/64d.olang (64b, 64c, 64e)                     invalid IR / no length check: V3(runTimeArray), V3 extends Array<F32,3>
 3 constgen/01.olang, 05.olang, 79.olang                  constant-argument fold ignores operand types (U8/I32 wrap)
 4 constgen/50.olang, 49d.olang, 53b.olang                deferred constant argument reads as known 0 in an instantiation
 5 constgen/03.olang, 27.olang, 02c.olang, 57.olang       := drops Array<T,N>'s length; fixed->run-time copy unrolled
 6 constgen/04.olang                                      == on fixed arrays unrolled per element
 7 constgen/67.olang (67b control)                        lambda parameter bound to Array<T,N> rejected by D9a
 8 constgen/61.olang                                      constant variable in a parameter default: unknown name
 9 constgen/06.olang                                      conditional constant argument computes the branch not taken
10 constgen/19.olang, 19b.olang                           G20 "declares no Eq" not enforced
11 constgen/07.olang, 78.olang                            U64 constants above I64 max; hex into U64; I64 min
12 constgen/45.olang                                      fixed-array local larger than the stack: SIGSEGV
13 pool/01.olang                                          idle workers keep what their tasks gave back
14 pool/03.olang (03b control)                            GemmWorkspace keeps every superseded panel
15 small/15, small/04, privacy/08, privacy/17, privacy/27, constgen/60b, constgen/38, constgen/39, constgen/08 - diagnostics
