# wt-satarith - saturating arithmetic (QCX 7)

Done: arith.Saturating<T> (std/arith), the four library-only supplied methods satAdd/satSub/satMul/satShl (check,
typed PrimOps, MIR verifier, emit with LLVM's saturating intrinsics - the product widened up to 32 bits so lanes
vectorize, mul.fix.sat above), the evaluator (Machine.saturate), tests (baked, decided, run, interpret, -debug),
checks/cases/satadd01outside, SPEC (E6c, E15a), std/README, CLAUDE.md, HISTORY.md (measurements there); goldens
(tokens, ast, run.txt's std/arith rows) recaptured, only this branch's files differing.
Verify: passed but for compiler/lsp.olang (killed for memory beside other rounds' builds; passes alone) and
consistency's complaint about this PROGRESS.md (drop it at the merge). Nothing left.
