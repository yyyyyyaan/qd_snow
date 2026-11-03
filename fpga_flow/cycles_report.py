#!/usr/bin/env python
#=====================================================================
# cycles_report.py -- P0b: the measured n-axis cycle slope.
#
# Reads the per-round reports that tb_snowflake_pe_array_lat1.sv prints
# (`[cyc] round=<i> cycles=<c>`, stdout only) out of the ModelSim logs and fits
#
#       cycles_per_round(n) = A + n * S(d)
#
# where S(d) is the per-slice execution cost.  The FIT IS CROSS-CHECKED against
# a completely independent path: the flat array's stage census in
# fpga_flow/cycles.csv (one stage per clock), under the model
#
#       S(d) = S_nomerge(d) + 2 * S_merge(d)
#
# because the merged lattice commits edges only in merging pass B, so every
# merging stage costs two phase rounds while drop / grow / grow_half cost one.
#
#   python fpga_flow/cycles_report.py
#=====================================================================
import io, os, re, sys, glob, collections

HERE = os.path.dirname(os.path.abspath(__file__))
LOG = os.path.join(HERE, 'logs')
CYC = re.compile(r'\[cyc\] round=(\d+) cycles=(\d+)')


def read_text(path):
    """PowerShell's `*>>` writes UTF-16LE (with a BOM); python must be told."""
    with open(path, 'rb') as f:
        raw = f.read()
    if raw[:2] in (b'\xff\xfe', b'\xfe\xff'):
        return raw.decode('utf-16')
    try:
        return raw.decode('utf-8')
    except UnicodeDecodeError:
        return raw.decode('utf-16', errors='replace')


def latest_rounds(path, n=12):
    """the LAST n per-round reports in the log (the logs are append-only)."""
    txt = read_text(path)
    vals = [int(m.group(2)) for m in CYC.finditer(txt)]
    if len(vals) < n:
        return None
    return vals[-n:]


def flat_stages():
    """(code, d) -> (nomerge, merge) stages per round, from cycles.csv."""
    out = {}
    path = os.path.join(HERE, 'cycles.csv')
    if not os.path.exists(path):
        return out
    with io.open(path, encoding='utf-8', errors='replace') as f:
        hdr = None
        for line in f:
            cells = [c.strip() for c in line.split(',')]
            if hdr is None:
                hdr = cells
                continue
            if len(cells) < len(hdr) or not cells[0]:
                continue
            row = dict(zip(hdr, cells))
            if row.get('schedule') != '2:1':
                continue
            try:
                drop = int(row['drop']); grow = int(row['grow'])
                gh = int(row['grow_half']); mg = int(row['merge'])
                rounds = int(row['rounds'])
            except (KeyError, ValueError):
                continue
            out[(row['code'], int(row['d']))] = ((drop + grow + gh) / float(rounds),
                                                 mg / float(rounds))
    return out


def main():
    flat = flat_stages()
    rows = []
    for path in sorted(glob.glob(os.path.join(LOG, 'msim_lat1_*.log'))):
        base = os.path.basename(path)
        m = re.match(r'msim_lat1_(\w+)_d(\d+)_s(\d+)(?:_(\w+))?\.log$', base)
        if not m:
            continue
        code, d, n, pat = m.group(1), int(m.group(2)), int(m.group(3)), m.group(4) or 'std'
        vals = latest_rounds(path)
        if not vals:
            continue
        rows.append((code, d, n, pat, vals))

    print("=" * 78)
    print("P0b  measured cycles per decode round  (start pulse -> `done`)")
    print("=" * 78)
    print("%-9s %3s %3s %-5s %8s %6s %6s   %s" %
          ("code", "d", "n", "pat", "mean", "min", "max", "per-round series"))
    by = collections.defaultdict(dict)
    for code, d, n, pat, vals in sorted(rows):
        mean = sum(vals) / float(len(vals))
        print("%-9s %3d %3d %-5s %8.2f %6d %6d   %s" %
              (code, d, n, pat, mean, min(vals), max(vals), ','.join(map(str, vals))))
        if pat == 'std':
            by[(code, d)][n] = mean

    print()
    print("=" * 78)
    print("fit   cycles_per_round(n) = A + n * S(d)   (S = per-slice cost)")
    print("=" * 78)
    print("%-9s %3s %-22s %8s %8s   %s" % ("code", "d", "fit", "A", "S(d)", "cross-check from cycles.csv"))
    for (code, d) in sorted(by):
        pts = sorted(by[(code, d)].items())
        if len(pts) < 2:
            continue
        # least squares on the measured points
        k = len(pts); sx = sum(p[0] for p in pts); sy = sum(p[1] for p in pts)
        sxx = sum(p[0] * p[0] for p in pts); sxy = sum(p[0] * p[1] for p in pts)
        S = (k * sxy - sx * sy) / float(k * sxx - sx * sx)
        A = (sy - S * sx) / float(k)
        resid = max(abs(A + S * x - y) for x, y in pts)
        note = ''
        if (code, d) in flat:
            snm, sm = flat[(code, d)]
            pred = snm + 2 * sm
            note = ("S_nomerge=%.3f S_merge=%.3f -> %.3f  (%+.2f%%)"
                    % (snm, sm, pred, 100.0 * (S - pred) / pred))
        else:
            note = 'no flat anchor for this (code,d)'
        print("%-9s %3d %-22s %8.2f %8.3f   %s" %
              (code, d, ' '.join('%d:%.2f' % p for p in pts), A, S, note))
        print("%42s max residual = %.2f cycles" % ('', resid))
    return 0


if __name__ == '__main__':
    sys.exit(main())
