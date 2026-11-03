p="snowflake_sim/ref/golden_tmp.txt"
lines=open(p, encoding="utf-8").read().splitlines()
idx=[i for i,l in enumerate(lines) if l.startswith("P ")]
print("P line indices:", idx[:3])
i=idx[0]
for k in range(i-3, i+4):
    print("%6d: %s" % (k, lines[k]))
