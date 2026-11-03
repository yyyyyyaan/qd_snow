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
i=24
print("golden body len",len(g[i][1]),"ctx body len",len(c[i][1]))
print("golden tail:", g[i][1][-4:])
print("ctx    tail:", c[i][1][-4:])
for k in range(min(len(g[i][1]),len(c[i][1]))):
    if g[i][1][k]!=c[i][1][k]:
        print("first diff at body line",k)
        for j in range(max(0,k-2), min(len(c[i][1]), k+3)):
            print("   G %-40s | C %s" % (g[i][1][j] if j<len(g[i][1]) else "-", c[i][1][j]))
        break
else:
    print("common prefix identical; extra lines:")
    for j in range(min(len(g[i][1]),len(c[i][1])), max(len(g[i][1]),len(c[i][1]))):
        print("   G %-40s | C %s" % (g[i][1][j] if j<len(g[i][1]) else "-", c[i][1][j] if j<len(c[i][1]) else "-"))
