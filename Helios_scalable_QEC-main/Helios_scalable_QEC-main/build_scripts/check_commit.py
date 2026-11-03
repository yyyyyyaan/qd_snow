import sys, os
sys.argv = ["x", "--d", "5"]
import importlib.util
spec = importlib.util.spec_from_file_location("gs", "generate_snowflake.py")
m = importlib.util.module_from_spec(spec); spec.loader.exec_module(m)
g = m.collect(5)
print("commit edges (edge idx -> u-v, commit bit):")
for e, ci in sorted(g["commit_idx"].items(), key=lambda kv: kv[1]):
    u, v = g["edge_uv"][e]
    print(f"  e{e}: {u}-{v}  bit{ci}  value=0x{1<<ci:02x}")
