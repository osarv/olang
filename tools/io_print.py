#!/usr/bin/env python3
"""Migrates olang sources to printing through std/io (M19f, 2026-10-17): the prelude's print words are gone and
io.Print/Println/PrintErr/PrintErrln take no try.

    python3 tools/io_print.py [--dry] PATH...

Each PATH is an .olang file or a directory searched for them. In code (never inside a string or a character literal):
  - print(x) / println(x) / eprint(x) / eprintln(x) become io.Print(x) / io.Println(x) / io.PrintErr(x) / io.PrintErrln(x),
    through the alias the file imports std/io as, and `import "std/io"` is added where the file has no such import;
  - try io.Print(x) and try io.PrintErr(x), with any catch clauses after them, become io.Print(x) / io.PrintErr(x) when
    every clause's block is empty or only fail, abort or unreachable (the print stops the program itself now); a clause
    doing anything else is real handling, kept as try io.Write(io.Stdout, x) catch ... (io.Stderr for PrintErr).
In comments a call written as one is renamed the same way (the check headers "# check:", "# also:", "# flags:" are left
alone). Text inside string literals - programs a generator writes, expected outputs - is not touched; those are migrated by
hand. Running it again changes nothing: it is idempotent. std/io.olang itself is skipped.
"""
import os
import re
import sys

RENAME = {"print": "Print", "println": "Println", "eprint": "PrintErr", "eprintln": "PrintErrln"}
TRIVIAL = {"", "fail", "abort", "unreachable"}


def mask(text):
    """'c' code, 's' inside a string or character literal (quotes included), 'm' a comment - one letter per character."""
    out = []
    i, n = 0, len(text)
    while i < n:
        c = text[i]
        if c == '#':
            if text.startswith("##", i):
                j = text.find("##", i + 2)
                j = n if j < 0 else j + 2
            else:
                j = text.find("\n", i)
                j = n if j < 0 else j
            out.append('m' * (j - i))
            i = j
        elif c == '"' or c == "'":
            j = i + 1
            while j < n and text[j] != c and text[j] != '\n':
                j += 2 if text[j] == '\\' else 1
            j = min(j + 1, n)
            out.append('s' * (j - i))
            i = j
        else:
            out.append('c')
            i += 1
    return "".join(out)


def close_of(text, m, start):
    """The index just past the bracket closing the one at start, counting only brackets in code."""
    depth = 0
    for i in range(start, len(text)):
        if m[i] != 'c':
            continue
        ch = text[i]
        if ch in "([{":
            depth += 1
        elif ch in ")]}":
            depth -= 1
            if depth == 0:
                return i + 1
    return -1


def io_alias(text, path):
    """The alias the file reaches std/io by, or None."""
    for mo in re.finditer(r'^\s*import\s+(?:(\w+)\s+)?"([^"]+)"', text, re.M):
        alias, target = mo.group(1), mo.group(2)
        resolved = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(path)), target))
        if target == "std/io" or resolved.endswith(os.sep + os.path.join("std", "io")):
            return alias or "io"
    return None


def add_import(text):
    lines = text.split("\n")
    last = -1
    for k, l in enumerate(lines):
        if l.startswith("import "):
            last = k
    if last < 0:
        last = -1
        for k, l in enumerate(lines):
            if l.startswith("#"):
                last = k
            else:
                break
    lines.insert(last + 1, 'import "std/io"')
    return "\n".join(lines)


def migrate_tries(text, alias):
    """try ALIAS.Print(...) [catch ...] - the try stripped, or turned into a Write where a clause handles the failure."""
    changed = True
    while changed:
        changed = False
        m = mask(text)
        for mo in re.finditer(r'\btry\s+' + re.escape(alias) + r'\.(Print|PrintErr)\(', text):
            if m[mo.start()] != 'c':
                continue
            paren = mo.end() - 1
            end = close_of(text, m, paren)
            if end < 0:
                continue
            args = text[paren + 1:end - 1]
            # the catch clauses after it, on its line or the lines after
            k = end
            bodies = []
            while True:
                mc = re.compile(r'[ \t]*(?:\n[ \t]*)?catch\b([^{}\n]*)\{').match(text, k)
                if not mc or m[mc.start() + len(mc.group(0)) - 1] != 'c':
                    break
                brace = mc.end() - 1
                bend = close_of(text, m, brace)
                if bend < 0:
                    break
                bodies.append(text[brace + 1:bend - 1].strip())
                k = bend
            stream = "Stdout" if mo.group(1) == "Print" else "Stderr"
            if not bodies or all(b in TRIVIAL for b in bodies):
                repl = alias + "." + mo.group(1) + "(" + args + ")"
                text = text[:mo.start()] + repl + text[k:]
            else:
                repl = "try " + alias + ".Write(" + alias + "." + stream + ", " + args + ")"
                text = text[:mo.start()] + repl + text[end:]
            changed = True
            break
    return text


DECL = re.compile(r'\bfn\s*(\([^()]*\)\s*)?$')
HEADER = re.compile(r'^#\s*(check|also|flags):')


def migrate_bare(text, alias):
    """print(...) and its three siblings, in code and in comments, renamed into io's."""
    m = mask(text)
    out = []
    last = 0
    count = 0
    for mo in re.finditer(r'(?<![\w.$])(eprintln|eprint|println|print)\(', text):
        kind = m[mo.start()]
        if kind == 's':
            continue
        line_start = text.rfind("\n", 0, mo.start()) + 1
        if kind == 'm' and HEADER.match(text[line_start:].lstrip()):
            continue
        if DECL.search(text[line_start:mo.start()]):
            continue
        out.append(text[last:mo.start()])
        out.append(alias + "." + RENAME[mo.group(1)] + "(")
        last = mo.end()
        if kind == 'c':
            count += 1
    out.append(text[last:])
    return "".join(out), count


def migrate_file(path, dry):
    if os.path.normpath(path).endswith(os.path.join("std", "io.olang")):
        return False
    text = open(path, encoding="utf-8", errors="surrogateescape").read()
    alias = io_alias(text, path)
    new, count = migrate_bare(text, alias or "io")
    if alias:
        new = migrate_tries(new, alias)
    elif count:
        new = add_import(new)
    if new == text:
        return False
    if not dry:
        open(path, "w", encoding="utf-8", errors="surrogateescape").write(new)
    print(("would migrate " if dry else "migrated ") + path)
    return True


def main(argv):
    dry = "--dry" in argv
    paths = [a for a in argv if a != "--dry"]
    if not paths:
        print(__doc__)
        return 2
    files = []
    for p in paths:
        if os.path.isdir(p):
            for root, dirs, names in os.walk(p):
                dirs[:] = [d for d in dirs if d not in (".git", "build")]
                files += [os.path.join(root, f) for f in sorted(names) if f.endswith(".olang")]
        else:
            files.append(p)
    n = sum(migrate_file(f, dry) for f in sorted(set(files)))
    print(str(n) + " files " + ("would change" if dry else "changed"))
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
