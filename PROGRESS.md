# optsurvey progress (hand-off note)

Task: survey missed optimizations in the olang compiler, measured; output docs/optsurvey.md. No compiler changes.

## Done
- build/olang built; bench baseline run (`build/bench_run -r 3`, log optlog/bench1.txt, not committed).

## Measured so far
- Vec push 50M: 1.2-5 s vs C 0.5 s; almost all of it is kernel time (page faults): olang 326k faults / 1.3 GB vs C 195k / 783 MB.

## Notes
Running notes (raw, measured) are in optlog/notes.txt, committed with -f.

## Next
- the remaining areas of the brief.
