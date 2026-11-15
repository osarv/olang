# Byte-level BPE trained and applied independently of oann, to check tokenizer.olang: the same pre-tokenization
# (GPT-2's pattern with byte classes - letters are ASCII letters and bytes from 0x80, digits 0-9, whitespace
# " \t\n\v\f\r", which is what \s means in a bytes pattern), the same tie-breaking (the most frequent pair, the
# smaller pair among equals), the plain algorithm - every pair recounted for every merge - and GPT-2's encoder
# (merge every occurrence of the lowest-ranked pair, left to right, until none is left).
#
#     python3 -I bench/ref/bpe.py data/shakespeare/input.txt 512 build/bpe_olang.txt
#
# reads the merges and validation tokens bench/bpe.olang wrote and says whether they are the same.

import collections
import re
import sys

PATTERN = re.compile(
    rb"""'s|'t|'re|'ve|'m|'ll|'d| ?[A-Za-z\x80-\xff]+| ?[0-9]+| ?[^\sA-Za-z0-9\x80-\xff]+|\s+(?!\S)|\s+""")


def chunks(data):
    return PATTERN.findall(data)


def train(data, vocab):
    counts = collections.Counter(chunks(data))
    words = [list(w) for w in counts]
    weights = [counts[w] for w in counts]
    merges = []
    for k in range(vocab - 256):
        pairs = collections.Counter()
        for w, c in zip(words, weights):
            for a, b in zip(w, w[1:]):
                pairs[(a, b)] += c
        if not pairs:
            break
        best = min(pairs, key=lambda p: (-pairs[p], p))
        merges.append(best)
        made = 256 + k
        for i, w in enumerate(words):
            if len(w) < 2:
                continue
            out = []
            j = 0
            while j < len(w):
                if j + 1 < len(w) and w[j] == best[0] and w[j + 1] == best[1]:
                    out.append(made)
                    j += 2
                else:
                    out.append(w[j])
                    j += 1
            words[i] = out
    return merges


def encode(data, merges):
    rank = {p: k for k, p in enumerate(merges)}
    cache = {}
    ids = []
    for piece in chunks(data):
        if piece not in cache:
            w = list(piece)
            while len(w) > 1:
                best = min(zip(w, w[1:]), key=lambda p: rank.get(p, len(merges)))
                if best not in rank:
                    break
                made = 256 + rank[best]
                out = []
                j = 0
                while j < len(w):
                    if j + 1 < len(w) and w[j] == best[0] and w[j + 1] == best[1]:
                        out.append(made)
                        j += 2
                    else:
                        out.append(w[j])
                        j += 1
                w = out
            cache[piece] = w
        ids.extend(cache[piece])
    return ids


def main():
    path, vocab, theirs = sys.argv[1], int(sys.argv[2]), sys.argv[3]
    data = open(path, "rb").read()
    split = int(len(data) * 0.9)
    merges = train(data[:split], vocab)
    ids = encode(data[split:], merges)
    lines = open(theirs).read().split("\n")
    cut = lines.index("--")
    their_merges = [tuple(int(x) for x in line.split()) for line in lines[:cut]]
    their_ids = [int(x) for x in lines[cut + 1:] if x]
    same_merges = sum(1 for a, b in zip(merges, their_merges) if a == b)
    print(f"numpy-free Python BPE: {len(merges)} merges, {len(ids)} validation tokens")
    print(f"merges equal to oann's: {same_merges} of {len(merges)} (oann has {len(their_merges)})")
    print(f"validation tokens: {'the same' if ids == their_ids else 'DIFFERENT'} ({len(their_ids)} from oann)")
    if merges != their_merges:
        for k, (a, b) in enumerate(zip(merges, their_merges)):
            if a != b:
                print(f"first difference at merge {k}: python {a}, oann {b}")
                break
        sys.exit(1)
    if ids != their_ids:
        sys.exit(1)


main()
