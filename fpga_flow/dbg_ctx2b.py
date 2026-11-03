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
g=steps("snowflake_sim/ref/golden_tmp.txt"); c=steps("snowflake_sim/run/rtl_trace_ctx0.txt")
for i in (0,1):
    print("=== step",i,"golden",g[i][0],"ctx0",c[i][0])
    gn=[l for l in g[i][1] if l.startswith("N ")]; cn=[l for l in c[i][1] if l.startswith("N ")]
    for a,b in zip(gn,cn):
        print(("  %-42s %-42s %s" % (a,b,"" if a==b else "DIFF")))
