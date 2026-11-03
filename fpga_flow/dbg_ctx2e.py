for name in ("ref/golden_tmp.txt","run/rtl_trace_ctx0.txt"):
    print("===",name)
    cur=None; out=[]
    for ln in open("snowflake_sim/"+name, encoding="utf-8"):
        ln=ln.rstrip()
        if ln.startswith("T "): cur=ln
        elif ln.startswith("P "): out.append((cur,ln))
    for c,p in out: print("   after", c, "->", p)
