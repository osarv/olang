#!/usr/bin/env python3
"""Rewrites olang command lines from the one-character flags to the words of SPEC.md B1 (2026-10-17).

    olang -b f.olang        olang build f.olang
    olang -c f.olang        olang compile f.olang
    olang -t a.olang b.olang olang test a.olang b.olang
    olang -i f.olang x      olang interpret f.olang x
    olang -e B1             olang explain B1
    -d -r -s -u             -debug -race -sanitize -update
    -a NAME   -D N=V        -target NAME   -define N=V

An invocation is the compiler named as "$OLANG", \\"$OLANG\\", $(OLANG), ${OLANG}, $OLANG, build/out, build/stage0 or
olang, followed by one-character flags; the flags are rewritten and the mode's word put first, everything from the first
word that is no such flag left as it was. A "# flags:" header of a checks case is rewritten the same way (its flags
follow "build"). Re-runnable: text already in words is left alone.

    python3 tools/cli_words.py FILE...      rewrites the files in place, printing each one changed
"""
import re
import sys

MODES = {"-b": "build", "-c": "compile", "-t": "test", "-i": "interpret", "-e": "explain"}
BARE = {"-d": "-debug", "-r": "-race", "-s": "-sanitize", "-u": "-update"}
VALUED = {"-a": "-target", "-D": "-define"}

INVOKER = re.compile(r'(\\"\$OLANG\\"|"\$OLANG"|\$\(OLANG\)|\$\{OLANG\}|\$OLANG\b|\bbuild/out\b|\bbuild/stage0\b|'
                     r'(?<![\w/.-])olang(?![\w.-]))')


def split_word(w):
    """a word's flag part and what trails it (a closing quote, an escaped quote)"""
    m = re.match(r'^(-[A-Za-z]+(?:=[^\s"\\`]*)?|[^\s"\\`]+)(.*)$', w)
    return (m.group(1), m.group(2)) if m else (w, "")


def convert(rest):
    """rest: the text after an invoker. Returns the rewritten text, or None when it holds no old flag"""
    # words, with the spaces before each kept
    parts = re.findall(r'(\s+)(\S+)', rest)
    if not parts or not parts[0][1].startswith("-"):
        return None
    mode = None
    opts = []
    used = 0
    trail = ""
    i = 0
    while i < len(parts):
        word, tail = split_word(parts[i][1])
        if word in MODES and mode is None:
            mode = MODES[word]
        elif word in BARE:
            opts.append(BARE[word])
        elif word in VALUED and i + 1 < len(parts) and not tail:
            v, t = split_word(parts[i + 1][1])
            opts.append(VALUED[word] + " " + v)
            i += 1
            tail = t
        elif word.startswith("-D") and len(word) > 2 and "=" in word:
            opts.append("-define " + word[2:])
        else:
            break
        used = i + 1
        i += 1
        if tail:
            trail = tail
            break
    if used == 0 or (mode is None and not opts):
        return None
    consumed = "".join(s + w for s, w in parts[:used])
    after = rest[len(consumed):] if rest.startswith(consumed) else None
    if after is None:
        return None
    words = ([mode] if mode else []) + opts
    return " " + " ".join(words) + trail + after


def migrate_line(line):
    # right to left, so rewriting one invocation never moves another
    for m in reversed(list(INVOKER.finditer(line))):
        conv = convert(line[m.end():])
        if conv is not None:
            line = line[:m.end()] + conv
    return line


def migrate(text):
    lines = text.split("\n")
    for k, l in enumerate(lines):
        if l.startswith("# flags:"):
            conv = convert(" " + l[len("# flags:"):].lstrip())
            if conv is not None:
                lines[k] = "# flags:" + conv
            continue
        lines[k] = migrate_line(l)
    return "\n".join(lines)


def main():
    for path in sys.argv[1:]:
        with open(path, encoding="utf-8", errors="surrogateescape") as f:
            text = f.read()
        new = migrate(text)
        if new != text:
            with open(path, "w", encoding="utf-8", errors="surrogateescape") as f:
                f.write(new)
            print(path)


if __name__ == "__main__":
    main()
