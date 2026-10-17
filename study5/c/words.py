import re, sys, time, collections
t=time.time()
text=open(sys.argv[1]).read()
words=[m.group(0).lower() for m in re.finditer(r"[A-Za-z][A-Za-z']*", text)]
c=collections.Counter(words)
b=collections.Counter(a+" "+b for a,b in zip(words,words[1:]))
print("words",len(words),"distinct",len(c),"mean %.2f"%(sum(map(len,words))/len(words)))
print(sorted(c.items(), key=lambda kv:(-kv[1],kv[0]))[:5])
print(sorted(b.items(), key=lambda kv:(-kv[1],kv[0]))[:3])
print("%.3f s"%(time.time()-t))
