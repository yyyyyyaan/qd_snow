"""Print the ptr renumbering map between localuf's full direction set and a
reduced one, for compare_trace.py --ptrmap.

    python fpga_flow/dirs_ptrmap.py --code surface --d 5 --dirs used
    -> 1:2,2:5,3:6,4:7,5:8,6:11

Why this is needed: the RTL trace prints a node's `ptr` as a raw direction
index.  With `--dirs used` the generator keeps only the directions that
actually occur (6 of localuf's 12 for a phenomenological surface-code graph),
preserving localuf's relative order, so every index changes.  The golden trace
always uses the full 12-direction numbering.  The two are therefore
semantically identical but numerically different, and a plain line comparison
FAILs on the ptr field alone -- measured at surface d3: golden ptr=5 vs RTL
ptr=2, which is exactly W (5th of the 12, 2nd of the 6).

The map is computed from localuf itself, never hand-written: hand-writing it
would assume the very thing the regression is supposed to check.
"""
import argparse
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
BUILD = os.path.normpath(os.path.join(
    HERE, "..", "Helios_scalable_QEC-main", "Helios_scalable_QEC-main",
    "build_scripts"))
sys.path.insert(0, BUILD)

from generate_snowflake import make_code                     # noqa: E402
from localuf.decoders.snowflake import Snowflake             # noqa: E402


def ptrmap(kind, d, dirs_mode):
    dec = Snowflake(make_code(kind, d))
    order = tuple(dec._NEIGHBOR_ORDER)
    if dirs_mode == "all":
        return {}
    present = set()
    for _idx, nd in dec.NODES.items():
        present.update(nd.NEIGHBORS.keys())
    used = tuple(x for x in order if x in present)
    # 1-based ptr values; 0 means "no pointer" and is never remapped
    return {used.index(x) + 1: order.index(x) + 1 for x in used}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--code", choices=["rep", "surface"], default="surface")
    ap.add_argument("--d", type=int, default=5)
    ap.add_argument("--dirs", choices=["all", "used"], default="used")
    a = ap.parse_args()
    m = ptrmap(a.code, a.d, a.dirs)
    print(",".join("%d:%d" % (k, v) for k, v in sorted(m.items())))


if __name__ == "__main__":
    main()
