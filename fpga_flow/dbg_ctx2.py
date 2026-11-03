def steps(path):
    out=[]; cur=None; body=[]
    for ln in open(path, encoding="utf-8"):
        ln=ln.strip()
        if ln.startswith("T "):
            if cur: out.append((cur, body))
            cur=ln; body=[]
        elif cur is not None:
            body.append(ln)
    if cur: out.append((cur, body))
    return out
g=steps("snowflake_sim/ref/golden_tmp.txt")
for name in ("rtl_trace_ctx0.txt","rtl_trace_ctx1.txt"):
    c=steps("snowflake_sim/run/"+name)
    n=min(len(g),len(c)); bad=None
    for i in range(n):
        if g[i][0]!=c[i][0] or g[i][1]!=c[i][1]:
            bad=i; break
    print("%s: steps=%d golden=%d  first mismatch step=%s" % (name, len(c), len(g), bad))
    if bad is not None:
        for k in range(max(0,bad-3), min(n,bad+3)):
            print("   G %-12s | C %-12s | %s" % (g[k][0], c[k][0], "same" if g[k][1]==c[k][1] else "BODY-DIFF"))
        if bad < len(c) and bad < len(g) and g[bad][1] and c[bad][1]:
            for a,b in zip(g[bad][1][:6], c[bad][1][:6]):
                print("      G: %-40s C: %-40s %s" % (a,b,"" if a==b else "<-- DIFF"))
