# bfix8a (/home/user/wt/bfix8a, opus xhigh) - section 8 and memory
Read /home/user/review/bulk8/FIX-RULES.md. Fix, from sec8/NOTES.md: F1 (high, older: a reference to a collection
element that owns storage, kept across a removal, reads storage early freeing released - the keep decision must reach
the regions an element owns), F2 (high: O15 holders that are elements of a collection, through RefMut, Map elements and
a call given both - typed.DropHolds/holdWalk), F3 (O27's ViewKeptDestructor bypassed through a callee handing a view
back), F4 (defer/errdefer hand-on of a unique by-value parameter over-rejected - T13b says deferred code runs last),
F5 (T22a's message naming the type argument instead of `keepIt<Blob>`). After the fixes, run `make scopefuzz` and
`make fuzz free`-style smoke runs (fuzz/README) briefly over what you changed.
