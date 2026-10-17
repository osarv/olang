#!/usr/bin/env python3
# agg.py FILE [depth]: from heaptrack collapsed stacks (frames root;...;leaf COST), sum cost by the
# first frame below the allocator wrappers (ListAdd, ReallocOrCrash, MallocOrCrash, ...), and by inclusive function.
import sys, collections
wr = {"ReallocOrCrash","MallocOrCrash","CallocOrCrash","ListAdd","ListInit","malloc","realloc","calloc","StrDup","StrDupN","ListAddAll","ListReserve","strdup","ListNew"}
leaf = collections.Counter(); incl = collections.Counter(); chain = collections.Counter(); tot = 0
for line in open(sys.argv[1]):
    st, _, c = line.rstrip().rpartition(" ")
    c = int(c); tot += c
    fr = [f.split(" ")[0] for f in st.split(";")]
    fr = [f for f in fr if f]
    i = len(fr) - 1
    while i > 0 and (fr[i] in wr or fr[i].startswith(("__","operator"))): i -= 1
    leaf[fr[i]] += c
    chain[";".join(fr[max(0,i-3):i+1])] += c
    for f in set(fr): incl[f] += c
M = 1 << 20
print(f"total {tot/M:.0f}MB")
print("== by allocating function (first non-wrapper frame)")
for f, c in leaf.most_common(25): print(f"{c/M:9.1f}MB  {f}")
print("== by allocating chain (4 frames)")
for f, c in chain.most_common(25): print(f"{c/M:9.1f}MB  {f}")
print("== inclusive")
for f, c in incl.most_common(int(sys.argv[2]) if len(sys.argv)>2 else 40): print(f"{c/M:9.1f}MB  {f}")
