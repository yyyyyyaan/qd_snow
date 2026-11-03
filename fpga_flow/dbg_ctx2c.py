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
for i in range(len(g)):
    if i>=len(c): print("ctx trace ends at step",i); break
    if g[i][0]!=c[i][0] or g[i][1]!=c[i][1]:
        print("first mismatch at step",i,":",g[i][0],c[i][0])
        for k,(a,b) in enumerate(zip(g[i][1],c[i][1])):
            if a!=b:
                print("  line",k,"G:",a)
                print("  line",k,"C:",b)
                for j in range(max(0,k-3), min(len(g[i][1]), k+4)):
                    print("     ctx %-44s | %s" % (g[i][1][j], c[i][1][j]))
                break
        break
