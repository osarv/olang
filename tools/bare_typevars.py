#!/usr/bin/env python3
# G8b (2026-10-09): a type variable is introduced by its first "<T>" and written bare, "T", after it. This rewrites
# olang sources written under the old rule ("<T>" everywhere) to the new one:
#   - in a "type" item (a struct or a trait) the header's parameter list introduces every variable, so every
#     "<X ...>" naming one of them anywhere in the item - its header's constraints included ("Map<K Hashable<<K>>, V>")
#     - becomes "X";
#   - in a function (a method's receiver included) the first "<X ...>" read left to right introduces X and keeps its
#     spelling; every later one becomes "X". A constraint written on a later one moves to the introduction.
# Comments and string literals are left alone. Files are rewritten in place; with --check nothing is written and the
# exit status says whether anything would change.
#
# Usage: tools/bare_typevars.py [--check] [-v] FILE|DIR...
#   A type a file declares, std's (beside this script) and the built-in ones are known types: "a<X>" right after a
#   parameter's name is a type variable only when X is none of them.
import os
import re
import sys

IDSTART = re.compile(r"[A-Za-z_]")
IDCHAR = re.compile(r"[A-Za-z0-9_]")
KEYWORDS = {"mut", "fn", "and", "or", "not", "in", "is", "as", "if", "else", "for", "range", "try", "null", "true",
            "false", "default", "return", "match", "case"}
BUILTIN_TYPES = {"Array", "Bool", "I8", "I16", "I32", "I64", "U8", "U16", "U32", "U64", "F16", "BF16", "F32", "F64"}


def code_mask(src):
    """True for each character outside comments, string literals and character literals."""
    mask = [True] * len(src)
    i, n = 0, len(src)
    while i < n:
        c = src[i]
        if c == "#":
            if src.startswith("##", i):
                j = src.find("##", i + 2)
                j = n if j < 0 else j + 2
            else:
                j = src.find("\n", i)
                j = n if j < 0 else j
        elif c == '"' or c == "'":
            j = i + 1
            while j < n and src[j] != c and src[j] != "\n":
                j += 2 if src[j] == "\\" else 1
            j = min(j + 1, n)
        else:
            i += 1
            continue
        for k in range(i, j):
            if src[k] != "\n":
                mask[k] = False
        i = j
    return mask


def read_iden(src, i):
    j = i
    while j < len(src) and IDCHAR.match(src[j]):
        j += 1
    return src[i:j], j


class Occ:
    """One "<X [constraint]>" written in code: start (the "<"), end (past its ">"), the name, the constraint's span."""

    def __init__(self, start, end, name, cstart, cend):
        self.start, self.end, self.name, self.cstart, self.cend = start, end, name, cstart, cend

    def constraint(self, src):
        return src[self.cstart:self.cend] if self.cstart is not None else None


CONSTRAINT_CHARS = re.compile(r"[A-Za-z0-9_., <>&]")
NOT_A_CONSTRAINT = re.compile(r"\b(and|or|not|in|is|as|if|else|for|range)\b")


def param_name_before(src, i, known):
    """Whether the name ending at i is a parameter's ("(a<T>, b<T>)"): written after "(" or ",", and no type's name -
    neither "x List<I32> = ..." nor "f(Box<T>(x))" in code already written the new way."""
    k = i
    while k > 0 and IDCHAR.match(src[k - 1]):
        k -= 1
    if src[k:i] in known:
        return False
    while k > 0 and src[k - 1] in " \t":
        k -= 1
    return k > 0 and src[k - 1] in "(,"


def occurrence_at(src, mask, i, hi, names, known):
    """The type variable written with its "<" at i, else None. names: the variables of the item when known (then only
    those are taken), else None. A "<" right after a name is one only after a parameter's name ("a<T>"), never
    after a type's ("Box<T>" is type arguments) and never for a name a type has."""
    if src[i] != "<" or not mask[i] or i + 1 >= hi or not IDSTART.match(src[i + 1]):
        return None
    prev = src[i - 1] if i > 0 else " "
    if prev in ")]" or prev.isdigit():
        return None
    name, j = read_iden(src, i + 1)
    if name in KEYWORDS or (names is not None and name not in names):
        return None
    if IDCHAR.match(prev) and (name in known or not param_name_before(src, i, known)):
        return None
    if j < hi and src[j] == ">":
        return Occ(i, j + 1, name, None, None)
    if j >= hi or src[j] != " ":
        return None
    # a constraint, or a constant variable's type: up to the ">" closing this "<", on this line
    depth, k = 1, j
    while k < hi and src[k] != "\n":
        ch = src[k]
        if not mask[k] or not CONSTRAINT_CHARS.match(ch):
            return None
        if ch == "<":
            depth += 1
        elif ch == ">":
            depth -= 1
            if depth == 0:
                cs, ce = j + 1, k
                if src[cs:ce].strip() == "" or NOT_A_CONSTRAINT.search(src[cs:ce]):
                    return None
                return Occ(i, k + 1, name, cs, ce)
        k += 1
    return None


def occurrences(src, mask, lo, hi, names, known):
    out = []
    for i in range(lo, hi):
        if src[i] == "<":
            o = occurrence_at(src, mask, i, hi, names, known)
            if o:
                out.append(o)
    return out


# ---- items ----

def tokens(src, mask):
    """(kind, text, start): "w" a word, "p" one punctuation character, "nl" a line end - code only."""
    out = []
    i, n = 0, len(src)
    while i < n:
        c = src[i]
        if c == "\n":
            out.append(("nl", c, i))
            i += 1
        elif not mask[i] or c in " \t\r":
            i += 1
        elif IDSTART.match(c):
            w, j = read_iden(src, i)
            out.append(("w", w, i))
            i = j
        else:
            out.append(("p", c, i))
            i += 1
    return out


def items(src, mask):
    """(kind, start, end) for each top-level item - "fn", "type" or "other" - those inside a top-level "if"/"else"
    included. An item starts with a word at the start of a line outside every block, bracket and parenthesis
    ("destruct" continues the type before it) and runs to the next one."""
    stack = []  # one entry per open "{": True for a top-level "if"/"else" block, whose contents are items
    paren = 0
    res, cur = [], None
    line_start, pending, after_close = True, False, False

    def close(pos):
        nonlocal cur
        if cur:
            res.append((cur[0], cur[1], pos))
        cur = None

    for kind, text, pos in tokens(src, mask):
        if kind == "nl":
            line_start = True
            continue
        item_level = all(stack) and paren == 0
        if kind == "w" and item_level and text == "else" and after_close:
            close(pos)
            cur = ["other", pos]
            pending = True
        elif kind == "w" and item_level and line_start and text != "destruct":
            close(pos)
            cur = [text if text in ("fn", "type") else "other", pos]
            pending = text == "if"
        after_close = False
        line_start = False
        if kind != "p":
            continue
        if text in "([":
            paren += 1
        elif text in ")]":
            paren = max(paren - 1, 0)
        elif text == "{":
            stack.append(pending and item_level)
            pending = False
        elif text == "}" and stack:
            if stack.pop():
                close(pos)
                after_close = True
    close(len(src))
    return res


# ---- rewriting ----

def type_params(src, mask, start, end):
    """The parameter names of "type NAME<params> ..." and where they start (past the list's own "<"), else ([], 0)."""
    m = re.compile(r"type\s+[A-Za-z_][A-Za-z0-9_]*<").match(src, start)
    if not m:
        return [], 0
    i = m.end()
    depth, names, expect_name = 1, [], True
    while i < end and depth > 0:
        c = src[i]
        if not mask[i]:
            i += 1
            continue
        if c == "<":
            depth += 1
        elif c == ">":
            depth -= 1
        elif c == "," and depth == 1:
            expect_name = True
        elif depth == 1 and expect_name and IDSTART.match(c):
            w, j = read_iden(src, i)
            names.append(w)
            expect_name = False
            i = j
            continue
        i += 1
    return names, m.end()


def outermost(occs):
    """The occurrences not written inside another's constraint."""
    out, last_end = [], -1
    for o in occs:
        if o.start >= last_end:
            out.append(o)
            last_end = o.end
    return out


def bare(src, o):
    """What "<X ...>" becomes: "X", spaced from a name it would otherwise run into ("b<T>" -> "b T")."""
    r = o.name
    if o.start > 0 and IDCHAR.match(src[o.start - 1]):
        r = " " + r
    if o.end < len(src) and IDCHAR.match(src[o.end]):
        r = r + " "
    return r


def line_of(src, pos):
    return src.count("\n", 0, pos) + 1


def rewrite_item(src, mask, kind, start, end, known, report, path):
    edits = []  # (start, end, replacement)
    if kind == "type":
        names, after = type_params(src, mask, start, end)
        for o in outermost(occurrences(src, mask, after, end, set(names), known)) if names else []:
            if o.cstart is not None:
                report.append("%s:%d: constraint on '%s' dropped (the header carries it): %s"
                              % (path, line_of(src, o.start), o.name, o.constraint(src)))
            edits.append((o.start, o.end, bare(src, o)))
        return edits
    if kind != "fn":
        return edits
    names = {o.name for o in occurrences(src, mask, start, end, None, known)}
    if not names:
        return edits
    first = {}
    skip_until = -1
    for o in occurrences(src, mask, start, end, names, known):
        if o.start < skip_until:
            continue  # inside a later occurrence's constraint, which goes with it
        if o.name not in first:
            first[o.name] = o
            continue
        if o.cstart is not None:
            f = first[o.name]
            if f.cstart is None:
                edits.append((f.start, f.end, "<%s %s>" % (o.name, o.constraint(src))))
                f.cstart = -1  # moved: a further one is a second constraint
                report.append("%s:%d: constraint on '%s' moved to its introduction"
                              % (path, line_of(src, o.start), o.name))
            else:
                report.append("%s:%d: a second constraint on '%s' dropped: %s"
                              % (path, line_of(src, o.start), o.name, o.constraint(src)))
            skip_until = o.end
        edits.append((o.start, o.end, bare(src, o)))
    return edits


def keep_comment_columns(src, mask, edits):
    """Spaces before a trailing comment on each line an edit shortened, so comments aligned in a column stay so."""
    shrink = {}  # line start -> (characters removed, end of the line's last edit)
    for s, e, r in edits:
        ls = src.rfind("\n", 0, s) + 1
        removed, last = shrink.get(ls, (0, 0))
        shrink[ls] = (removed + (e - s) - len(r), max(last, e))
    out = []
    for ls, (removed, last) in shrink.items():
        le = src.find("\n", last)
        le = len(src) if le < 0 else le
        k = last
        while k < le and not (src[k] == "#" and not mask[k]):
            k += 1
        if removed > 0 and k < le and src[k - 1] == " ":
            out.append((k, k, " " * removed))
    return out


def migrate(src, path, known, report):
    mask = code_mask(src)
    edits = []
    for kind, start, end in items(src, mask):
        edits.extend(rewrite_item(src, mask, kind, start, end, known, report, path))
    n = len(edits)
    edits.extend(keep_comment_columns(src, mask, edits))
    edits.sort()
    out, last = [], 0
    for s, e, r in edits:
        if s < last:
            continue
        out.append(src[last:s])
        out.append(r)
        last = e
    out.append(src[last:])
    return "".join(out), n


def files(args):
    for a in args:
        if os.path.isdir(a):
            for root, dirs, fs in os.walk(a):
                dirs[:] = sorted(d for d in dirs if d not in ("build", ".git"))
                for f in sorted(fs):
                    if f.endswith(".olang"):
                        yield os.path.join(root, f)
        else:
            yield a


KEEP = re.compile(r"# check: fail [^\n]*(was introduced already|is introduced later)")
TYPE_DECL = re.compile(r"^\s*type\s+([A-Za-z_][A-Za-z0-9_]*)", re.M)


def std_types():
    """The type names std declares - the prelude's are named bare in every module."""
    known = set(BUILTIN_TYPES)
    std = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "std")
    for p in files([std]):
        with open(p, encoding="utf-8") as f:
            known.update(TYPE_DECL.findall(f.read()))
    return known


def main():
    args = sys.argv[1:]
    check = "--check" in args
    verbose = "-v" in args
    args = [a for a in args if a not in ("--check", "-v")]
    paths = list(files(args))
    std = std_types()
    total_edits, total_files, total_lines = 0, 0, 0
    report = []
    for path in paths:
        with open(path, encoding="utf-8") as f:
            src = f.read()
        if KEEP.match(src):
            continue  # a checks case whose point is "<X>" written again, or "X" before "<X>"
        new, n = migrate(src, path, std | set(TYPE_DECL.findall(src)), report)
        if new == src:
            continue
        changed = sum(1 for a, b in zip(src.split("\n"), new.split("\n")) if a != b)
        total_edits += n
        total_files += 1
        total_lines += changed
        if verbose:
            print("%s: %d rewritten on %d lines" % (path, n, changed))
        if not check:
            with open(path, "w", encoding="utf-8") as f:
                f.write(new)
    for r in report:
        print(r)
    print("%s%d occurrences on %d lines in %d files" % ("would rewrite " if check else "rewrote ", total_edits,
                                                         total_lines, total_files))
    sys.exit(1 if check and total_edits else 0)


if __name__ == "__main__":
    main()
