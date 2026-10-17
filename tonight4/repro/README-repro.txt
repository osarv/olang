b1_backlink.olang - CONFIRMED NEW UAF (O17b). rv4 accepts; -d build segfaults; master rejects.
  The handle method `stash` stores a reference to the handle copy's OWN storage into the map's
  long-lived Cell, laundered through `h.c.kept = h.c.kept & h`. The O17b body scan treats the
  `& h` operand as a scope marker and judges `stash` "uses its receiver only through its reference".
b2_nonhandle.olang - control: same program with a 2-field (non-handle) Box is correctly rejected (O17).
b3_noand.olang - control: the same store written directly (`h.c.kept = h`) is correctly rejected (O17).
c3_o26keep.olang - over-rejection (safe direction): slice bound to a local then returned (O26 error);
c4_inline.olang - the inline form `return V(a[1:4])` is accepted and runs.
