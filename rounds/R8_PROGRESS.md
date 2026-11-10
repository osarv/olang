# R8 progress (wt-r8)
- done: dead five msgs removed (uncommitted)
- committed: P4a/R11 defaults, DefaultScope sharper (load.olang:808 $ removable after seed regen)
- committed: C11 arrays + globals + prog_end (lower: Assign hook globalHeld, dropAt run-time array; emit: @main prog_end calls)
- committed: e31bviewenumfield, d18yieldown. LEFT: c11keptvec (needs conditional Copy), t22alatelambda (loop fixed point over versions)
- all code/docs/goldens/seed committed and pushed (wt-r8). verify #1 failed (test-block assert $ strips, k2 ct_Kept, interp refused fixture, layout) - fixed b6bfb21d. verify #2 killed by bg timeout; verify #3 running (verify3.log). then: make scopefuzz SEED=7 COUNT=300, report.
- IR gate done: compiler/ and bench byte-identical pre-strip but main's __olang_prog_end; strip: -9705 IR lines, -2658 calls.
