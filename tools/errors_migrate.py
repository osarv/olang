#!/usr/bin/env python3
"""Migrates olang code to the errors batch (QO1, QQ1: SPEC R1a, E15a, E24, E31a), driven by the compiler's own
diagnostics, as tools/perm_mut.py is:

  - a "try" that only turned on checks - "nothing here fails as written - write 'checked' to check it" (E15a) - becomes
    "checked";
  - a Try form's name (TryAt, TryPlus, tryAt, ...) in a method declaration becomes its Checked form's (CheckedAt, ...);
  - inside a test block, a call that can now fail - a std function that used to stop the program on a mistake (Format
    with a bad base, List.Insert out of range, chan.Send on a closed channel) - is written "try CALL catch { fail }" as
    a statement, or "(try CALL catch { fail })" as a value: a failure fails the test, as the old stop did.

Run it on files or directories; it compiles each file with "-t" (a test build reaches everything the file imports),
rewrites what the diagnostics name, anywhere they point, and repeats until nothing more changes:

    python3 tools/errors_migrate.py --olang build/out shared.olang std/ checks/ ...

What the compiler cannot decide - a call that now can fail (a std function that used to stop the program, chan.Send,
List.RemoveAt), a bare "error" statement (each needs an error type of its own) - is listed at the end for a person.
"""
import argparse, os, re, subprocess, sys

DIAG = re.compile(r"^(?P<file>[^:\s][^:]*):(?P<line>\d+):(?P<col>\d+): error\[(?P<rule>[^\]]*)\]: (?P<msg>.*)$")
TRYFORMS = ["At", "SetAt", "Slice", "Plus", "Minus", "Mul", "Div", "Rem", "MatMul", "Neg", "ShiftLeft", "ShiftRight",
            "Inc", "Dec"]

def olang_files(paths):
    for p in paths:
        if os.path.isdir(p):
            for root, _, names in os.walk(p):
                for n in sorted(names):
                    if n.endswith(".olang"): yield os.path.join(root, n)
        elif p.endswith(".olang"): yield p

def rename_try_forms(path):
    src = open(path).read()
    out = src
    for f in TRYFORMS:
        out = re.sub(r"\bTry" + f + r"\b", "Checked" + f, out)
        out = re.sub(r"\btry" + f + r"\b", "checked" + f, out)
    if out != src:
        open(path, "w").write(out)
        return True
    return False

def diagnostics(olang, path):
    d = os.path.dirname(os.path.abspath(path)) or "."
    r = subprocess.run([olang, "-t", os.path.basename(path)], cwd=d, capture_output=True, text=True)
    for line in r.stdout.splitlines():
        m = DIAG.match(line)
        if m:
            f = m["file"] if os.path.isabs(m["file"]) else os.path.join(d, m["file"])
            yield os.path.normpath(f), int(m["line"]), int(m["col"]), m["rule"], m["msg"]

def keep_comment(old, new):
    """new, with a trailing comment moved back to the column it had in old where the spaces before it allow"""
    oc = code_of(old)
    if len(oc) >= len(old) or not old[len(oc):].lstrip().startswith("#"): return new
    col = len(old) - len(old[len(oc):].lstrip())
    nc = len(code_of(new))
    m = re.match(r"(.*?\S)(\s+)(#.*)$", new[:]) if nc < len(new) else None
    if not m: return new
    head = new[:nc].rstrip()
    pad = max(1, col - len(head))
    return head + " " * pad + new[nc:].lstrip()

def edit(file, line, col, old, new):
    try:
        lines = open(file).read().split("\n")
    except OSError:
        return False
    l = lines[line - 1]
    if l[col - 1:col - 1 + len(old)] != old: return False
    lines[line - 1] = keep_comment(l, l[:col - 1] + new + l[col - 1 + len(old):])
    open(file, "w").write("\n".join(lines))
    return True

def code_of(l):
    """a line without its comment and with its text literals emptied, for counting braces"""
    out = []
    k = 0
    while k < len(l):
        c = l[k]
        if c == "#": break
        if c == '"' or c == "'":
            q = c
            k += 1
            while k < len(l) and l[k] != q:
                if l[k] == "\\": k += 1
                k += 1
            out.append(q + q)
        else: out.append(c)
        k += 1
    return "".join(out)

def in_test(lines, line):
    """whether line (1-based) is inside a test block"""
    depth = 0
    test_at = None
    for i in range(line):
        c = code_of(lines[i])
        if test_at is None and re.match(r'\s*test\s+"', lines[i]): test_at = depth
        if i == line - 1: return test_at is not None
        depth += c.count("{") - c.count("}")
        if test_at is not None and depth <= test_at: test_at = None
    return False

def call_extent(l, col):
    """the start and end (0-based, end exclusive) of the call whose name begins at col (1-based)"""
    i = col - 1
    j = i
    while j < len(l) and (l[j].isalnum() or l[j] == "_"): j += 1
    if j >= len(l) or l[j] != "(": return None
    depth = 0
    k = j
    while k < len(l):
        if l[k] in "([": depth += 1
        elif l[k] in ")]":
            depth -= 1
            if depth == 0: break
        elif l[k] == '"':
            k += 1
            while k < len(l) and l[k] != '"':
                if l[k] == "\\": k += 1
                k += 1
        k += 1
    if k >= len(l): return None
    end = k + 1
    start = i
    while start > 0 and l[start - 1] == ".":
        s = start - 1
        if s > 0 and l[s - 1] in ")]":
            close = l[s - 1]; open_ = "(" if close == ")" else "["
            d = 0; m = s - 1
            while m >= 0:
                if l[m] == close: d += 1
                elif l[m] == open_:
                    d -= 1
                    if d == 0: break
                m -= 1
            if m < 0: return None
            s = m
        while s > 0 and (l[s - 1].isalnum() or l[s - 1] in "_$"): s -= 1
        start = s
    return start, end

def wrap_failing_call(file, line, col):
    try:
        lines = open(file).read().split("\n")
    except OSError:
        return False
    if not in_test(lines, line): return False
    l = lines[line - 1]
    ext = call_extent(l, col)
    if not ext: return False
    a, b = ext
    whole = l[:a].strip() == "" and l[b:].split("#")[0].strip() == ""
    if whole: new = l[:a] + "try " + l[a:b] + " catch { fail }" + l[b:]
    else: new = l[:a] + "(try " + l[a:b] + " catch { fail })" + l[b:]
    lines[line - 1] = keep_comment(l, new)
    open(file, "w").write("\n".join(lines))
    return True

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--olang", default="build/out")
    ap.add_argument("paths", nargs="+")
    a = ap.parse_args()
    olang = os.path.abspath(a.olang)
    files = list(olang_files(a.paths))
    for f in files: rename_try_forms(f)
    left = {}
    for rnd in range(20):
        changed = 0
        left = {}
        todo = {}
        for f in files:
            for file, line, col, rule, msg in diagnostics(olang, f):
                todo.setdefault(file, {})[(line, col)] = (rule, msg)
        for file, ds in todo.items():
            # right to left, bottom to top: an edit moves nothing still to be edited
            for (line, col) in sorted(ds, reverse=True):
                rule, msg = ds[(line, col)]
                if "write 'checked' to check it" in msg:
                    if edit(file, line, col, "try", "checked"): changed += 1; continue
                elif rule == "E15" and "this call can fail" in msg:
                    if wrap_failing_call(file, line, col): changed += 1; continue
                left[(file, line, col)] = f"{file}:{line}:{col}: [{rule}] {msg}"
        print(f"round {rnd + 1}: {changed} edits", file=sys.stderr)
        if not changed: break
    for k in sorted(left): print(left[k])

if __name__ == "__main__":
    main()
