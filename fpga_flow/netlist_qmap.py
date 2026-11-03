#!/usr/bin/env python
#=====================================================================
# netlist_qmap.py -- who drives a net in a Vivado funcsim netlist?
#
# Why: the gate-level run of the MERGED lattice array hangs with an empty
# trace, and synth reports 100 x `[Synth 8-6859] multi-driven net`.  The
# netlist itself is the best evidence: `write_verilog -mode funcsim` emits
# every FDRE with an explicit `.Q(...)`/`.D(...)`/`.CE(...)`, so for a net of
# interest we can list EVERY register that drives it and whether that register
# is live (CE is a real signal) or a vestige (`CE(1'b0)`, which never updates).
#
#   python fpga_flow/netlist_qmap.py <netlist.v> <net> [<net> ...]
#   python fpga_flow/netlist_qmap.py <netlist.v> --multi      # every multi-driven net
#=====================================================================
import io, re, sys, collections

BLK = re.compile(r'^\s*(FDRE|FDSE|FDPE|FDCE|FDRSE|FDRE_1|FDSE_1)\s+(\\?\S+)\s*$')
PIN = re.compile(r'\.(\w+)\s*\((.*?)\)\s*[,;]?\s*$')


def parse(path):
    """-> list of (celltype, instname, {pin: net}) in file order."""
    cells = []
    with io.open(path, encoding='utf-8', errors='replace') as f:
        lines = f.readlines()
    i = 0
    while i < len(lines):
        m = BLK.match(lines[i])
        if not m:
            i += 1
            continue
        ctype, name = m.group(1), m.group(2)
        pins = {}
        j = i + 1
        # the port map runs to the first line that terminates the instantiation
        while j < len(lines):
            txt = lines[j].strip()
            p = PIN.search(lines[j])
            if p:
                pins[p.group(1)] = p.group(2).strip()
            j += 1
            if txt.endswith(';'):
                break
        cells.append((ctype, name, pins))
        i = j
    return cells


def main():
    if len(sys.argv) < 3:
        print(__doc__); return 2
    path = sys.argv[1]
    cells = parse(path)
    byq = collections.defaultdict(list)
    for ctype, name, pins in cells:
        q = pins.get('Q')
        if q:
            byq[q].append((ctype, name, pins))

    args = sys.argv[2:]
    if args == ['--multi']:
        multi = {q: v for q, v in byq.items() if len(v) > 1}
        print("FDRE cells parsed : %d" % len(cells))
        print("distinct Q nets   : %d" % len(byq))
        print("multi-driven nets : %d" % len(multi))
        for q in sorted(multi, key=lambda s: (len(s), s)):
            live = [(n, p) for _, n, p in multi[q] if p.get('CE') != "1'b0"]
            print("  %-22s drivers=%d live=%d  %s"
                  % (q, len(multi[q]), len(live),
                     ' '.join(n for _, n, _ in multi[q][:4])))
        return 0

    for net in args:
        v = byq.get(net, [])
        print("=== %s : %d driver(s) ===" % (net, len(v)))
        for ctype, name, pins in v:
            print("   %-8s %-42s CE=%-8s D=%-24s R=%s"
                  % (ctype, name, pins.get('CE', '?'), pins.get('D', '?'),
                     pins.get('R', '?')))
    return 0


if __name__ == '__main__':
    sys.exit(main())
