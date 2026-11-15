# checks/aistudy

The 50 programs of `docs/aistudy.md`, the study of how safe AI-written olang is: what compiles and then fails at run
time, and which of those failures the compiler could catch. Each file starts with the spec it was written from (a
comment), was written once as a first draft without the compiler, then fixed until it built; the fixes are the
compile rounds counted in the study. `x01_strappend.olang` is an extra probe (memory), outside the 50.

Every file but p10 compiles and runs (`build/olang FILE`, `build/olang -checked FILE`, `-race` for the concurrent ones).
Where the study found a run-time failure the program still has it: the files were fixed to compile, never to
behave, so they keep their bugs. Exit status other than 0 is therefore expected for p02, p03, p09, p19, p24, p25, p31,
p33, p44, p45, p48 and p49, and wrong output for p06, p07, p10, p11, p15, p20, p23, p27, p28, p29, p34-p37 and p46. The
one program that hung (p16's negative cycle) has its probe call commented out. They are not part of `make verify`.

The files were brought to the language of 2026-11-15 by `olang fix` (text joined with `+`, `chan.Init` removed) after the
study. What the study found was fixed after it: p10 is now refused while compiling (D16c: a lambda assigned to the
variable it captures), p24's draft (lower-case fields) would be refused by json.Encode, p22 needs no `chan.Init`, and
x01's self-append loop at 40000 iterations peaks at 13 MB (3.6 GB in the study).
