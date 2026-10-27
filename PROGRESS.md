# wt-surv: survey2 section 2 items 1, 2, 5 and the formatter-cache bug

## Done
- Item 4 (formatter "cache"): there is no formatter cache since stage 0 went - `olang format` is linked in. The wrong
  layout was a formatter bug: a method's receiver followed by the method's own type list (`fn (p T&) Read<Q>(`) was
  written `fn(p` (fmt.receiver looked for `(` right after the name). Fixed; std/list's seven damaged methods restored;
  the format fixture has such a method. The comment "collapse" in std/flags.olang is B13's rule (the file was not in
  layout). `olang fix`'s tools were the real shared cache (fix/ keyed by mtime only): now fix/KEY per compiler path and
  tools path, a `.from` stamp per tool naming the compiler that built it, rebuilt when sources (tools, compiler/, std)
  are newer.

- Item 1 Place.Here (E40, D8a): std/prelude/place.olang (Place(File String&, Line I64, Column I64), Str
  FILE:LINE:COLUMN); check.placeHere builds Place(...) by constructor with constant args; callDefault sets the call's
  place (the called name's span, the outermost call's) while a call's defaults are built. typed.Place and mir.Place
  renamed Lvalue (D3a reserves prelude names), free.olang's Place fields PlaceId. tests/place.olang, checks cases
  placemember, placereserved. Records (CLAUDE/HISTORY) still to write.

## Next
- Item 5 top-level assert
- Item 2 become
