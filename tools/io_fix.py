#!/usr/bin/env python3
"""Drives a file to compile after io_try.py: builds it, and from the compiler's own errors adds `?`/`+ io.IoError` to a
function whose try lets IoError escape (R9), `try` to a call of a function that can now fail (E15), and `catch
io.IoError { }` to a tried call in a test block or where nothing can fail (R13). Prints what it could not fix.

    python3 tools/io_fix.py OLANG FILE..."""
import re, subprocess, sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from io_print import io_alias, mask

olang = sys.argv[1]
ERR = re.compile(r'^(\S+?):(\d+):(\d+): error\[(\w+)\]: (.*)$')
stats = {"sig": 0, "try": 0, "catch": 0}


def build(path):
    src = open(path).read()
    if re.search(r'^test\b', src, re.M):
        cmd = [olang, "-t", path]
    elif re.search(r'^fn main\b', src, re.M):
        cmd = [olang, "-b", path]
    else:
        cmd = [olang, "-c", path]
    d = os.path.join("/tmp/claude-0/o", re.sub(r'\W', '_', path))
    os.makedirs(d, exist_ok=True)
    cmd[-1] = os.path.abspath(path)
    r = subprocess.run(cmd, cwd=d, capture_output=True, text=True, timeout=600)
    return (r.stdout + r.stderr).split("\n")


def container(lines, ln):
    """Index of the line opening the top-level item containing line ln (0-based)."""
    k = ln
    while k >= 0 and not re.match(r'(fn|test|type|extern)\b', lines[k]):
        k -= 1
    return k


def fix_file(path, alias):
    for rounds in range(40):
        out = build(path)
        errs = [m for m in (ERR.match(l) for l in out) if m and os.path.abspath(m.group(1)) == os.path.abspath(path)]
        lines = open(path).read().split("\n")
        edit = None
        for m in errs:
            ln, col, code, msg = int(m.group(2)) - 1, int(m.group(3)) - 1, m.group(4), m.group(5)
            if code == "E15":
                lines[ln] = lines[ln][:col] + "try " + lines[ln][col:]; stats["try"] += 1; edit = 1; break
            if code in ("R9", "R13"):
                k = container(lines, ln)
                head = lines[k]
                inner = any(re.match(r'\s*.*\bfn\(', lines[j]) for j in range(k + 1, ln + 1)) or head.startswith("test") \
                    or head.startswith("type") or code == "R13"
                if not inner and head.startswith("fn "):
                    # signature: before the opening brace of the body
                    j = k
                    while "{" not in lines[j]:
                        j += 1
                    b = lines[j].rindex("{")
                    pre = lines[j][:b].rstrip()
                    tail = pre[pre.rindex(")") + 1:] if ")" in pre else pre
                    named = msg.startswith("IoError")
                    if "?" in tail:
                        if not named:
                            print("MANUAL", path, ln + 1, msg[:60]); return
                        if tail.strip().endswith("?"):
                            pre += " " + alias + ".IoError"
                        elif (alias + ".IoError") in tail or "IoError" in tail:
                            print("STUCK", path, ln + 1); return
                        else:
                            pre += " + " + alias + ".IoError"
                    else:
                        pre += " ? " + (alias + ".IoError" if named else "").rstrip()
                        pre = pre.rstrip()
                    lines[j] = pre + " " + lines[j][b:]; stats["sig"] += 1; edit = 1; break
                line = lines[ln]
                mk = mask(line)
                i = line.find("(", col)
                depth = 0; end = -1
                while i >= 0 and i < len(line):
                    if mk[i] == 'c':
                        if line[i] == "(": depth += 1
                        elif line[i] == ")":
                            depth -= 1
                            if depth == 0: end = i + 1; break
                    i += 1
                if end > 0 and not line[end:].lstrip().startswith("catch"):
                    lines[ln] = line[:end] + " catch " + alias + ".IoError { }" + line[end:]
                    stats["catch"] += 1; edit = 1; break
                print("MANUAL", path, ln + 1, msg[:60]); 
        if not edit:
            for m in errs:
                if m.group(4) not in ("R9", "R13", "E15"):
                    print("OTHER", path, m.group(2), m.group(4), m.group(5)[:70])
            return
        open(path, "w").write("\n".join(lines))


for f in sys.argv[2:]:
    t = open(f).read()
    a = io_alias(t, f)
    if a:
        fix_file(f, a)
print(stats)
