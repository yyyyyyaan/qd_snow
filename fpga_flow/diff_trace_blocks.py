"""Block-aligned trace diff: align on the T lines, then show the first state
line that differs inside the first block whose state differs."""
import io
import sys


def parse(path):
    blocks = []
    cur = None
    for ln in io.open(path, encoding="utf-8"):
        ln = ln.rstrip("\n")
        if ln.startswith("#") or not ln:
            continue
        if ln.startswith("T "):
            cur = [ln, []]
            blocks.append(cur)
        elif ln.startswith("P "):
            continue
        elif cur is not None:
            cur[1].append(ln)
    return blocks


def main():
    g = parse(sys.argv[1])
    r = parse(sys.argv[2])
    print("blocks: golden %d, rtl %d" % (len(g), len(r)))
    for i in range(min(len(g), len(r))):
        if g[i][0] != r[i][0]:
            print("block %d: T line differs\n  G %s\n  R %s" % (i, g[i][0], r[i][0]))
            return
        a, b = g[i][1], r[i][1]
        if a != b:
            print("block %d  %s : state differs (%d vs %d lines)"
                  % (i, g[i][0], len(a), len(b)))
            shown = 0
            for j in range(min(len(a), len(b))):
                if a[j] != b[j]:
                    print("   G %s\n   R %s" % (a[j], b[j]))
                    shown += 1
                    if shown >= 8:
                        break
            return
    print("all common blocks identical; golden tail %s" % (g[min(len(g), len(r)):][:3],))


if __name__ == "__main__":
    main()
