#!/usr/bin/env python3
# T6a (2026-10-10): an integer literal's own type - what it is where nothing gives it a type - is I64, where it was I32.
# So "x := 0" declares an I64, a range of literals counts in I64 ("for i in range 10"), a type variable only literals
# reach binds I64, and "-D N=5" defines an I64. A literal written against a typed target still adapts, as before.
#
# Code written under the old rule may now hand such an I64 to something narrower - an I32 parameter, field or element -
# which a number does not flow into (T6b). The compiler says where, and adds a note naming the declaration that made
# the value an I64. This applies those notes:
#   - "x := 0" (or "for x := 0, ...") becomes "x I32 = 0" - the type the old rule gave it, which the program was
#     written against, so nothing else changes meaning;
#   - "for i in range 10" becomes "for i in range I32(10)" - a range's first argument that is not a literal gives the
#     type of its values (S9b); the end argument is the one converted ("range 1, I32(10)").
# The type written is the one the note asks for (the narrower type the value was handed to). An error with no such note
# - a Fold or a generic call whose type variable only a literal reached, a conditional of an I32 and such a local - is
# printed for a look by hand: its fix is usually to write the literal's type ("Fold(I32(0), ...)") or to widen what
# receives it to I64, which is often the better type for a count.
#
# Each file is compiled (-t when it has tests, -c otherwise), the notes applied, and that repeats until nothing more
# changes. Only files under the paths given are edited; a note about another file is left alone. A checks/cases program
# that must fail keeps the failure it is about: nothing is applied from a diagnostic carrying its expected text.
# Comments and string literals are never edited. Files are rewritten in place.
#
# Usage: tools/int_literal_i64.py [--olang PATH] [-j N] FILE|DIR...
#   --olang  the compiler to run (default: build/out beside this script's repository)
#   -j       how many compilations run at once (default 3)
# For oann: python3 /home/user/olang/tools/int_literal_i64.py --olang /home/user/olang/build/out /home/user/oann
import os
import re
import subprocess
import sys
import tempfile
from concurrent.futures import ThreadPoolExecutor

HERE = os.path.dirname(os.path.abspath(__file__))

DIAG = re.compile(r"^(.*?):(\d+):(\d+): (error(?:\[([^\]]*)\])?|note): (.*)$")
LOCAL = re.compile(r"'([A-Za-z_][A-Za-z0-9_]*)' is I64, its literal's own type - declare the type it should have, "
                   r"'[A-Za-z_][A-Za-z0-9_]* ([A-Z][A-Za-z0-9]*) = \.\.\.'")
RANGE = re.compile(r"the range's literals make '[A-Za-z_][A-Za-z0-9_]*' I64 - (?:write |convert its end, )'([A-Z][A-Za-z0-9]*)\(")


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


def expected_texts(src):
    """What a checks/cases program must fail with - nothing reporting it is applied."""
    out = []
    for line in src.splitlines()[:12]:
        m = re.match(r"#\s*(?:check:\s*fail|also:)\s*(.*)$", line)
        if m and m.group(1).strip():
            out.append(m.group(1).strip())
    return out


def compile_diags(olang, path, workdir):
    try:
        with open(path) as f:
            src = f.read()
    except OSError:
        return ""
    mode = "-t" if ("TestBuild" in src or re.search(r'^\s*test\s+"', src, re.M)) else "-c"
    try:
        r = subprocess.run([olang, mode, path], cwd=workdir, capture_output=True, text=True, timeout=900,
                           env=dict(os.environ, NO_COLOR="1"))
    except subprocess.TimeoutExpired:
        return ""
    return r.stdout + r.stderr


def diags_from(output, allowed):
    """Edits (path, line, col, kind, type, error) from the notes, and the errors no note answers (path, raw)."""
    edits, unanswered = [], []
    current = None
    answered = False

    def close():
        if current and not answered and "I64" in current[1]:
            unanswered.append(current)

    for raw in output.splitlines():
        m = DIAG.match(raw)
        if not m:
            continue
        path, line, col, what, msg = m.group(1), int(m.group(2)), int(m.group(3)), m.group(4), m.group(6)
        full = os.path.realpath(path)
        if what.startswith("error"):
            close()
            current = (full, raw)
            answered = False
            continue
        lm, rm = LOCAL.search(msg), RANGE.search(msg)
        if current and (lm or rm):
            edits.append((full, line, col, "local" if lm else "range", (lm or rm).group(2 if lm else 1), current[1]))
            answered = True
    close()
    keep = lambda p: any(p == a or p.startswith(a + os.sep) for a in allowed)
    return [e for e in edits if keep(e[0])], [u for u in unanswered if keep(u[0])]


def range_end(text, at, mask):
    """The span (start, end) of the end argument of the range whose note points at column at: the one argument of
    "range e", the second of "range s, e[, step]"."""
    k = text.rfind("range", 0, at + 1)
    while k >= 0 and not (mask[k] and (k == 0 or not re.match(r"[A-Za-z0-9_]", text[k - 1]))):
        k = text.rfind("range", 0, k)
    if k < 0:
        return None
    i = k + len("range")
    args, start, depth = [], i, 0
    while i < len(text):
        c = text[i]
        if not mask[i]:
            i += 1
            continue
        if c in "([":
            depth += 1
        elif c in ")]":
            if depth == 0:
                break
            depth -= 1
        elif c == "," and depth == 0:
            args.append((start, i))
            start = i + 1
        elif c == "{" and depth == 0:
            break
        elif depth == 0 and re.match(r"\s(if|for)\b", text[i:]):  # a comprehension's filter or next clause
            break
        i += 1
    args.append((start, i))
    s, e = args[1] if len(args) >= 2 else args[0]
    while s < e and text[s] in " \t":
        s += 1
    while e > s and text[e - 1] in " \t":
        e -= 1
    return (s, e) if s < e else None


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
    lines[k] = text[:gap] + " " * max(1, spaces - delta) + text[hash_at:]


def apply(edits):
    by_file = {}
    for e in edits:
        by_file.setdefault(e[0], set()).add(e[1:6])
    count = {"local": 0, "range": 0}
    for path, es in by_file.items():
        with open(path) as f:
            src = f.read()
        expect = expected_texts(src)
        lines = src.split("\n")
        done = set()
        shifts = []
        # right to left within a line, so earlier columns stay put
        for line, col, kind, typ, why in sorted(es, key=lambda e: (e[0], -e[1])):
            if any(x in why for x in expect) or (line, col) in done or line - 1 >= len(lines):
                continue
            done.add((line, col))
            text = lines[line - 1]
            mask = code_mask(text)
            at = col - 1
            if kind == "local":
                m = re.compile(r"([A-Za-z_][A-Za-z0-9_]*)[ \t]*:=").match(text, at)
                if not m or not mask[at]:
                    continue
                new = text[:at] + m.group(1) + " " + typ + " =" + text[m.end():]
            else:
                span = range_end(text, at, mask)
                if not span:
                    continue
                s, e = span
                if re.match(r"[A-Z][A-Za-z0-9]*\(", text[s:e]):  # converted already
                    continue
                new = text[:s] + typ + "(" + text[s:e] + ")" + text[e:]
                at = s
            lines[line - 1] = new
            realign(lines, line - 1, len(new) - len(text), at)
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
        print("usage: tools/int_literal_i64.py [--olang PATH] [-j N] FILE|DIR...", file=sys.stderr)
        return 2
    olang = os.path.realpath(olang)
    files = olang_files(paths)
    allowed = [os.path.realpath(p) for p in paths]
    total = {"local": 0, "range": 0}
    unanswered = []
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
            edits, unanswered = [], []
            for o in outputs:
                e, u = diags_from(o, allowed)
                edits += e
                unanswered += u
            count = apply(edits)
            print(f"round {round_}: {count['local']} locals typed, {count['range']} ranges typed")
            total["local"] += count["local"]
            total["range"] += count["range"]
            if not count["local"] and not count["range"]:
                break
    print(f"total: {total['local']} locals typed, {total['range']} ranges typed")
    seen = set()
    expected = {}
    for path, raw in unanswered:
        if path not in expected:
            try:
                with open(path) as f:
                    expected[path] = expected_texts(f.read())
            except OSError:
                expected[path] = []
        if raw not in seen and not any(x in raw for x in expected[path]):  # a checks/cases program's own failure
            seen.add(raw)
            print("by hand: " + raw)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
