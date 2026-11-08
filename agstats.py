import json,re,sys,glob
uses={};done={}
for f in glob.glob('/root/.claude/projects/-home-user/*.jsonl'):
  for line in open(f):
    try: e=json.loads(line)
    except: continue
    m=e.get('message') or {}
    c=m.get('content')
    if isinstance(c,list):
      for b in c:
        if b.get('type')=='tool_use' and b.get('name')=='Agent':
          i=b['input']; uses[b['id']]=(e.get('timestamp','')[:16],i.get('description',''),i.get('model','inherit'),i.get('effort','-'))
    s=line
    for mm in re.finditer(r'<tool-use-id>(toolu_\w+)</tool-use-id>.{0,400}?<status>(\w+)</status>.{0,3000}?<subagent_tokens>(\d+)</subagent_tokens><tool_uses>(\d+)</tool_uses><duration_ms>(\d+)',s):
      done[mm.group(1)]=mm.groups()[1:]
print("start\tagent\tmodel\teffort\tstatus\tktok\ttools\tmin")
for k,(t,d,mo,ef) in sorted(uses.items(),key=lambda x:x[1][0]):
  if k in done:
    st,tok,tu,ms=done[k]; print(f"{t}\t{d}\t{mo}\t{ef}\t{st}\t{int(tok)//1000}\t{tu}\t{int(ms)//60000}")
