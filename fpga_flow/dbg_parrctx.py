def steps(path):
    out=[]; cur=None; body=[]
    for ln in open(path, encoding="utf-8"):
        ln=ln.strip()
        if ln.startswith("T "):
            if cur: out.append((cur, body))
            cur=ln; body=[]
        elif cur is not None: body.append(ln)
    if cur: out.append((cur, body))
    return out
g=steps("fpga_flow/logs/pearray_ref_trace.txt"); c=steps("fpga_flow/logs/pearray_ctx1_trace.txt")
print("ref steps", len(g), " ctx steps", len(c))
n=min(len(g),len(c)); bad=None
for i in range(n):
    if g[i][0]!=c[i][0] or g[i][1]!=c[i][1]: bad=i; break
print("first mismatch:", bad)
if bad is not None:
    for k in range(max(0,bad-2), min(n,bad+2)):
        print("  REF %-12s | CTX %-12s | %s" % (g[k][0], c[k][0], "same" if g[k][1]==c[k][1] else "DIFF"))
    if g[bad][1] and c[bad][1]:
        for a,b in zip(g[bad][1], c[bad][1]):
            if a!=b:
                print("   REF:", a); print("   CTX:", b); break
