# tools/params - param_migrate's hand forms

Declarations written by hand in the rework's form (docs/rework.md section 16, round 3), which no rule of
`tools/param_migrate.olang` can make from the old form: a reader that hands back views of what it is given takes it
bare and gives a value - its parts arrays of a run-time length held by value (QCE: `Split` gives `Array<String>`,
`Lines` a `LineIter` holding its text) - which changes its body, not only its signature; a few the tool leaves taking `&` where the rework's checker needs them bare
or reading differently (round 3b: json's `Parse`/`Decode` take their text bare, an array's `Reversed` holds its array,
list's `Last` reads through its own fields, a builder's `ToString` gives a value); and the few tests whose callers
changed with them. `tools/params/PATH` holds the hand forms for the file at PATH of the tree migrated: run with
`--hand tools/params` (as `make verify-params` does), each declaration here - a function, a method (by its receiver's
type and its name), a type or a test, its comment lines with it - replaces the one of its key in that file after the
text phase, or is added at its end; several of one key (a method of two instances, `Vec<String>.Join` beside
`Vec<String&>.Join`) all replace the file's first. The repository's std stays in the old form until the flip (round 4),
when these are folded into it and this folder goes.
