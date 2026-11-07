# Bulk review 8 - sec8 (section 8 and memory)

## Progress
- Started 2026-11-07. Reading the records (CLAUDE.md entries, SPEC rules O25i, O27, T22a, T13b/O8d/D9i, O15, C11).

## Findings
(none yet)

(interim) F1 candidate: a reference to an element of a Vec/Map of unique values (r Blob& = ls[0], w := ls[0], a walk's
name, m.Ref(k)!) kept across a removal that vacates it (Truncate, Clear, Remove) is read after early freeing released
the element's storage - segfault in a plain build. f01_elemref_truncate.olang (with destructor), f01b_... (none),
b/a09*.olang (walk, :=, Map.Ref). NEW/OLDER pending the old compiler (sec8/old).
