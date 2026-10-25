F6: an extern call is taken to let go of nothing, but C may call an export fn (X12) that lets go.

    clang -O2 -c cb.c -o cb.o
    OLANG=/home/user/wt/bulk1/build/olang
    $OLANG build -debug -sanitize -output build/x9 x9.olang && ./build/x9

Observed: "use after scope closed: storage a closed scope gave back was read or written", status 134
(the -O3 build happens to print the old texts). Expected: five lines of text; -memory should report that
'G.t' keeps (an extern is "a body not known", O8d). interpret cannot load cb.o (B3e), nor resolve the
callback symbol from a .so, so only the built program shows it.
