# R1 progress (untracked)
- Done: UseOwn/calleeKeepsSelf; split values lent at their references (argExisting, splitLent, Set via O29 argRoot);
  lifts (liftSplit/liftStorage, liftSplitPlace for O17a, liftAtCall for for-in copies); payload case of written claims;
  numberField for E31b views. 41/44 compile (+t17payloadscopes); permute5/6/6b keep T22a/T25c.
- IR: compiler (base sources) and bench byte-identical (irsnap/irc scripts in /tmp/claude-0).
- Records: SPEC O17/O17a/T17c, settled.md, HISTORY, refusals.md progress; goldens run.txt/diag.txt.
- checks.olang: passed after fixing e31bcallargsowned, e31binplacehome, t17payloadscopes headers (rerun in verify).
- Next: scopesan, scopefuzz, tokgold/astgold/layoutgold, consistency, verify, push.
