#!/usr/bin/env python3
"""Puts `try` before every call of std/io's Print/Println/PrintErr/PrintErrln in code (M19f: they fail with IoError).

    python3 tools/io_try.py PATH...

Calls inside string or character literals and in comments are left alone. Idempotent."""
import os, re, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from io_print import mask, io_alias


def migrate(text, alias):
    m = mask(text)
    out, last, n = [], 0, 0
    for mo in re.finditer(r'(?<![\w.$])' + re.escape(alias) + r'\.(?:Println|PrintErrln|PrintErr|Print)\(', text):
        if m[mo.start()] != 'c':
            continue
        if re.search(r'\btry\s+$', text[max(0, mo.start() - 12):mo.start()]):
            continue
        out.append(text[last:mo.start()]); out.append("try "); last = mo.start(); n += 1
    out.append(text[last:])
    return "".join(out), n


def main(paths):
    total = 0
    for root in paths:
        files = [root] if os.path.isfile(root) else [os.path.join(d, f) for d, _, fs in os.walk(root) if not any(x in d.split(os.sep) for x in ('build', '.git')) for f in fs if f.endswith(".olang")]
        for p in files:
            try:
                t = open(p).read()
            except UnicodeDecodeError:
                continue
            a = io_alias(t, p)
            if a is None:
                continue
            new, n = migrate(t, a)
            if n:
                open(p, "w").write(new); total += n
    print("added try to", total, "calls")

main(sys.argv[1:])
