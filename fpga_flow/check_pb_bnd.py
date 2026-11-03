"""Does the flat array's `!IS_BND` term in `push` ever matter?

The flat PE computes

    det_def = (!IS_BND) && defect;
    if (ptr != C) push[ptr-1] = det_def;

The two-pass (pass B) rule replaces the live tap with a bank comparison

    nb_push[d] = (source's ptr == d+1) && source's defect

which is missing the `!IS_BND(source)` factor unless it is carried explicitly.
This script answers, from the GOLDEN traces themselves (which carry a
`G-N <id> <is_boundary>` line), whether the two rules can ever disagree, i.e.
whether some boundary node ever holds `defect=1` with `pointer != C` at a
merging step.

    python fpga_flow/check_pb_bnd.py <golden> [<golden> ...]
"""
import io
import sys


def check(path):
    is_bnd = {}
    stage = None
    rows = 0
    hits = []
    with io.open(path, encoding="utf-8") as f:
        for ln in f:
            p = ln.split()
            if not p:
                continue
            if p[0] == "G-N":
                is_bnd[int(p[1])] = int(p[2])
            elif p[0] == "T":
                stage = p[2]
            elif p[0] == "N":
                rows += 1
                nid, defect, ptr = int(p[1]), int(p[5]), int(p[6])
                if is_bnd.get(nid, 0) and defect and ptr != 0:
                    hits.append((stage, nid, ptr))
    return rows, hits, sum(is_bnd.values()), len(is_bnd)


def main():
    bad = 0
    for path in sys.argv[1:]:
        rows, hits, nb, nn = check(path)
        tag = path.replace("\\", "/").split("/")[-1]
        if hits:
            bad += 1
            st = {}
            for s, _, _ in hits:
                st[s] = st.get(s, 0) + 1
            print("%-40s HITS %-6d stages=%s  (bnd %d/%d, %d node rows)"
                  % (tag, len(hits), st, nb, nn, rows))
        else:
            print("%-40s clean        (bnd %d/%d, %d node rows)" % (tag, nb, nn, rows))
    print("VERDICT: %s" % ("DISAGREEMENT POSSIBLE -- the !IS_BND term is REQUIRED"
                           if bad else
                           "no disagreement in these traces -- term never fires"))
    return 0


if __name__ == "__main__":
    sys.exit(main())
