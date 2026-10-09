#!/usr/bin/env python3
# T25b/D9/C3/D11a (2026-10-09): "mut" speaks only about what a reference reaches - "mut T&" is writable, "T&" read-only,
# in every position - and a binding's reassignability is never written (a global's "mut" excepted). This rewrites
# olang sources written under the old rule, where "mut" at the top of a parameter, field or receiver also made the
# binding assignable, and a local's reference took its initializer's permission:
#   - a bare-pun field takes its parameter's type, permission included, and has no "mut": "x mut" becomes "x" (text);
#   - "mut" before a by-value parameter's, receiver's or field's type is removed (the compiler's D9/C3 errors);
#   - "mut" before a local's value type, or before its ":=", is removed (D11a);
#   - a local declared with a reference type and written through, or passed where a writable reference is wanted,
#     becomes "x mut T& = ..." (the note the compiler gives at such a local).
# The last three are driven by the compiler's own diagnostics: each file is compiled (-c, or -t for one that tests on
# TestBuild), what it reports is applied, and that repeats until nothing more changes. Only files under the paths given
# are edited; a diagnostic about another file (the standard library, imported) is left alone. A checks/cases program
# that must fail keeps the failure it is about: nothing is applied from a diagnostic carrying its expected text.
# Comments and string literals are left alone, and so is a file holding the line "# perm_mut: skip" (a program about
# the old spelling itself). Files are rewritten in place.
#
# Not found by either pass, so worth a look by hand: "mut" before a by-value type variable at the top of a parameter or
# field ("x mut <T>", "v mut T = n") meant the binding's before and means "writable when bound to a reference" now -
# drop it where it meant the binding.
#
# Usage: tools/perm_mut.py [--olang PATH] [-j N] FILE|DIR...
#   --olang  the compiler to run (default: build/out beside this script's repository)
#   -j       how many compilations run at once (default 3)
import os
import re
import subprocess
import sys
import tempfile
from concurrent.futures import ThreadPoolExecutor

HERE = os.path.dirname(os.path.abspath(__file__))
IDCHAR = re.compile(r"[A-Za-z0-9_]")


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


# ---- the text pass: puns ----

NAMES = r"[A-Za-z_][A-Za-z0-9_]*(?:\s*,\s*[A-Za-z_][A-Za-z0-9_]*)*"
# a pun is a whole statement: at a line's start or after a "{", and ending the line or the block
PUN = re.compile(r"(^|\{)([ \t]*" + NAMES + r")[ \t]+mut(?=[ \t]*(?:$|\}|#))", re.M)


def drop_pun_mut(src):
    mask = code_mask(src)
    out, last, n = [], 0, 0
    for m in PUN.finditer(src):
        s = m.start(2)
        e = m.end()
        if not all(mask[s:e]):
            continue
        # "mut" alone on a line, or a keyword list, is no pun
        words = re.findall(r"[A-Za-z_][A-Za-z0-9_]*", m.group(2))
        if not words or any(w in ("return", "error", "break", "continue", "done", "fail", "mut", "fn", "type") for w in words):
            continue
        out.append(src[last:m.end(2)])
        rest = re.match(r"[ \t]*#", src[e:])
        if rest and rest.end() > 2:  # a trailing comment stays where it was
            out.append(" " * (e - m.end(2)))
        last = e
        n += 1
    out.append(src[last:])
    return "".join(out), n


# ---- the compiler pass ----

DIAG = re.compile(r"^(.*?):(\d+):(\d+): (error(?:\[([^\]]*)\])?|note): (.*)$")
DROP = [
    ("D9", "a by-value parameter is the callee's own copy"),
    ("C3", "a field is writable wherever its instance is"),
    ("D11a", "a local is always writable - 'mut' is for a reference"),
    ("D11a", "':=' gives a local its initializer's permission"),
]
DECLARE = re.compile(r"'([A-Za-z_][A-Za-z0-9_]*)' is declared read-only here - declare it '")


def expected_texts(src):
    """What a checks/cases program must fail with - nothing reporting it is applied."""
    out = []
    for line in src.splitlines()[:12]:
        m = re.match(r"#\s*(?:check:\s*fail|also:)\s*(.*)$", line)
        if m and m.group(1).strip():
            out.append(m.group(1).strip())
    return out


def compile_diags(olang, path, workdir):
    mode = "-c"
    try:
        with open(path) as f:
            if "TestBuild" in f.read():
                mode = "-t"
    except OSError:
        return ""
    try:
        r = subprocess.run([olang, mode, path], cwd=workdir, capture_output=True, text=True, timeout=900,
                           env=dict(os.environ, NO_COLOR="1"))
    except subprocess.TimeoutExpired:
        return ""
    return r.stdout + r.stderr


def edits_from(output, allowed):
    """(path, line, col, kind, name): kind "drop" removes the "mut" there, "add" puts " mut" after the name there."""
    edits = []
    current = None  # the error a note belongs to, and whether it was one to skip
    for raw in output.splitlines():
        m = DIAG.match(raw)
        if not m:
            continue
        path, line, col, what, rule, msg = m.group(1), int(m.group(2)), int(m.group(3)), m.group(4), m.group(5), m.group(6)
        full = os.path.realpath(path) if not os.path.isabs(path) else os.path.realpath(path)
        if what.startswith("error"):
            current = (full, raw)
            for r, text in DROP:
                if rule == r and msg.startswith(text):
                    edits.append((full, line, col, "drop", None, raw))
            continue
        d = DECLARE.search(msg)
        if d and current:
            edits.append((full, line, col, "add", d.group(1), current[1]))
    return [e for e in edits if any(e[0] == a or e[0].startswith(a + os.sep) for a in allowed)]


def realign(lines, k, delta, at):
    """Keeps a trailing comment where it was: the spaces before it after column at take up what the edit changed."""
    text = lines[k]
    mask = code_mask(text)
    hash_at = next((i for i in range(at, len(text)) if text[i] == "#" and not mask[i]), -1)
    if hash_at <= at:
        return
    gap = hash_at
    while gap > at and text[gap - 1] == " ":
        gap -= 1
    spaces = hash_at - gap
    if spaces < 2 or delta == 0:
        return
    want = max(1, spaces - delta)
    lines[k] = text[:gap] + " " * want + text[hash_at:]


def shift_expected(lines, shifts):
    """A checks/cases header naming LINE:COL on a line an edit changed follows the edit's shift of that column."""
    def moved(m):
        line, col = int(m.group(1)), int(m.group(2))
        for l, at, delta in shifts:
            if l == line and col - 1 > at:
                col += delta
        return "%d:%d:" % (line, col)
    for k in range(min(12, len(lines))):
        if re.match(r"#\s*(?:check:\s*fail|also:)", lines[k]):
            lines[k] = re.sub(r"\b(\d+):(\d+):", moved, lines[k])


def apply(edits):
    by_file = {}
    for e in edits:
        by_file.setdefault(e[0], set()).add(e[1:5] + (e[5],))
    count = {"drop": 0, "add": 0}
    for path, es in by_file.items():
        with open(path) as f:
            src = f.read()
        expect = expected_texts(src)
        lines = src.split("\n")
        done = set()
        shifts = []
        # right to left within a line, so earlier columns stay put
        for line, col, kind, name, why in sorted(es, key=lambda e: (e[0], -e[1])):
            if any(x in why for x in expect):
                continue
            if (line, col, kind) in done or line - 1 >= len(lines):
                continue
            done.add((line, col, kind))
            text = lines[line - 1]
            at = col - 1
            if kind == "drop":
                if text[at:at + 3] != "mut" or (at + 3 < len(text) and IDCHAR.match(text[at + 3])):
                    continue
                end = at + 3
                while end < len(text) and text[end] in " \t":
                    end += 1
                if end >= len(text) or text[end] in "#}":  # nothing after it: take the space before instead
                    start = at
                    while start > 0 and text[start - 1] in " \t":
                        start -= 1
                    lines[line - 1] = text[:start] + text[at + 3:]
                else:
                    lines[line - 1] = text[:at] + text[end:]
            else:
                if text[at:at + len(name)] != name:
                    continue
                after = at + len(name)
                if text[after:after + 4] == " mut":
                    continue
                lines[line - 1] = text[:after] + " mut" + text[after:]
            realign(lines, line - 1, len(lines[line - 1]) - len(text), at)
            shifts.append((line, at, len(lines[line - 1]) - len(text)))
            count[kind] += 1
        shift_expected(lines, shifts)
        with open(path, "w") as f:
            f.write("\n".join(lines))
    return count


def olang_files(paths):
    out = []
    for p in paths:
        if os.path.isdir(p):
            for root, dirs, files in os.walk(p):
                dirs[:] = [d for d in dirs if d not in ("build", ".git")]
                out += [os.path.join(root, f) for f in files if f.endswith(".olang")]
        elif p.endswith(".olang"):
            out.append(p)
    return sorted(os.path.realpath(f) for f in out)


def main(argv):
    olang = os.path.join(os.path.dirname(HERE), "build", "out")
    jobs = 3
    paths = []
    i = 0
    while i < len(argv):
        if argv[i] == "--olang":
            olang = argv[i + 1]
            i += 2
        elif argv[i] == "-j":
            jobs = int(argv[i + 1])
            i += 2
        else:
            paths.append(argv[i])
            i += 1
    if not paths:
        print(__doc__ or "usage: tools/perm_mut.py [--olang PATH] [-j N] FILE|DIR...", file=sys.stderr)
        return 2
    olang = os.path.realpath(olang)
    files = olang_files(paths)
    allowed = [os.path.realpath(p) for p in paths]

    puns = 0
    for f in files:
        with open(f) as fh:
            src = fh.read()
        if "# perm_mut: skip" in src:  # a program about the old spelling itself
            continue
        new, n = drop_pun_mut(src)
        if n:
            with open(f, "w") as fh:
                fh.write(new)
            puns += n
    print(f"puns: {puns} 'mut' removed")

    total = {"drop": 0, "add": 0}
    with tempfile.TemporaryDirectory() as tmp:
        for round_ in range(1, 9):
            work = [os.path.join(tmp, f"w{k}") for k in range(jobs)]
            for w in work:
                os.makedirs(w, exist_ok=True)

            def one(k_f):
                k, f = k_f
                return compile_diags(olang, f, work[k % jobs])

            with ThreadPoolExecutor(jobs) as ex:
                outputs = list(ex.map(one, enumerate(files)))
            edits = []
            for o in outputs:
                edits += edits_from(o, allowed)
            count = apply(edits)
            print(f"round {round_}: {count['drop']} 'mut' removed, {count['add']} 'mut' added")
            total["drop"] += count["drop"]
            total["add"] += count["add"]
            if not count["drop"] and not count["add"]:
                break
    print(f"total: {puns} pun 'mut' removed, {total['drop']} other 'mut' removed, {total['add']} 'mut' added to locals")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
