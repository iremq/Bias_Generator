"""
Monte Carlo ngspice analysis — reads .raw files via spicelib.

File naming convention:  commandRange_{A}_{B}_{C}[.raw]
  A  = curve group       → one plotted curve per unique A
  B  = x-axis variable   → e.g. a swept parameter value
  C  = MC sample index   → averaged to produce mean / std / CV

Measured signal: i(out_up)  (edit SIGNAL_NAME below to change)

Usage
-----
  python mc_analysis.py                   # scan current directory
  python mc_analysis.py /path/to/raws    # scan another directory
  python mc_analysis.py /path/to/raws 1e3 2e3 5e3   # provide real B values
"""

import os
import re
import sys
import glob
import warnings
from collections import defaultdict

import numpy as np
import matplotlib.pyplot as plt
import matplotlib.cm as cm

# spicelib ≥ 1.0  (pip install spicelib)
from spicelib import RawRead

# ── Configuration ──────────────────────────────────────────────────────────────

DATA_DIR     = sys.argv[1] if len(sys.argv) > 1 else "."
FILE_PATTERN = os.path.join(DATA_DIR, "commandRange_7_*")   # adjust glob if needed

SIGNAL_NAME  = "i(out_up)"   # exact trace name as written by ngspice

# Optional: map integer B indices to real physical values (e.g. frequencies).
# Supply them as extra CLI args after the directory, in ascending B order.
#   python mc_analysis.py ./data 1e3 2e3 5e3 10e3
B_REAL_VALUES: list[float] = [float(v) for v in sys.argv[2:]] if len(sys.argv) > 2 else []


# ── 1. Read one .raw file ──────────────────────────────────────────────────────

def read_signal(filepath: str) -> float | None:
    """
    Open a ngspice .raw file with spicelib and return the scalar value of
    SIGNAL_NAME.

    For a DC operating-point or .measure result the file typically holds a
    single point.  For a transient / AC sweep we take the last point of step 0,
    which is the usual convention for a MC run where each file is one sample.
    """
    try:
        raw = RawRead(filepath, traces_to_read=SIGNAL_NAME, dialect="ngspice", verbose=False)
    except Exception as exc:
        print(f"  [WARN] spicelib could not read {os.path.basename(filepath)}: {exc}")
        return None

    try:
        trace = raw.get_trace(SIGNAL_NAME)
    except IndexError:
        # Try case-insensitive fallback
        names = raw.get_trace_names()
        match = next((n for n in names if n.lower() == SIGNAL_NAME.lower()), None)
        if match is None:
            print(f"  [WARN] '{SIGNAL_NAME}' not in {os.path.basename(filepath)}. "
                  f"Available: {names}")
            return None
        trace = raw.get_trace(match)

    wave = trace.get_wave(0)          # step 0 (MC files usually have 1 step)
    return float(wave[-1])            # last point


# ── 2. Discover and group files ────────────────────────────────────────────────

def load_data() -> dict:
    """
    Returns:  data[A][B] = [value_C0, value_C1, …]
    """
    files = sorted(glob.glob(FILE_PATTERN))
    if not files:
        sys.exit(f"No files matched: {FILE_PATTERN}\n"
                 "Usage: python mc_analysis.py [directory] [B_val0 B_val1 …]")

    print(f"Found {len(files)} file(s)")

    name_re = re.compile(r"commandRange_(\d+)_(\d+)_(\d+)")
    data: dict = defaultdict(lambda: defaultdict(list))
    skipped = 0

    for fpath in files:
        m = name_re.search(os.path.basename(fpath))
        if not m:
            skipped += 1
            continue
        A, B = int(m.group(1)), int(m.group(2))
        value = read_signal(fpath)
        if value is not None:
            data[A][B].append(value)

    if skipped:
        print(f"  → {skipped} file(s) skipped (name did not match pattern)")
    return data


# ── 3. Statistics ──────────────────────────────────────────────────────────────

def compute_stats(data: dict) -> dict:
    """stats[A][B] = {mean, std, cv, n}"""
    stats: dict = {}
    for A, b_dict in data.items():
        stats[A] = {}
        for B, values in b_dict.items():
            arr  = np.array(values, dtype=float)
            mean = arr.mean()
            std  = arr.std(ddof=1) if len(arr) > 1 else 0.0
            with warnings.catch_warnings():
                warnings.simplefilter("ignore")
                cv = (std / mean * 100) if mean != 0 else np.nan
            stats[A][B] = {"mean": mean, "std": std, "cv": cv, "n": len(arr)}
    return stats


# ── 4. B-index → real x-axis ──────────────────────────────────────────────────

def b_to_x(b_indices: list[int]) -> tuple[np.ndarray, str]:
    """Map sorted integer B indices to real values if provided, else keep ints."""
    if B_REAL_VALUES:
        all_bs = sorted(b_indices)
        mapping = {b: B_REAL_VALUES[i] for i, b in enumerate(all_bs)
                   if i < len(B_REAL_VALUES)}
        x = np.array([mapping.get(b, float(b)) for b in b_indices])
        label = "Sweep value"
    else:
        x = np.array(b_indices, dtype=float)
        label = "B index"
    return x, label


# ── 5. SI unit helper ─────────────────────────────────────────────────────────

def si_scale(values: np.ndarray) -> tuple[float, str]:
    """Return (divisor, prefix) so that values/divisor sit in [1, 1000)."""
    prefixes = [
        (1e-12, "p"), (1e-9, "n"), (1e-6, "µ"), (1e-3, "m"),
        (1.0,   ""),  (1e3,  "k"), (1e6,  "M"), (1e9,  "G"),
    ]
    peak = np.nanmax(np.abs(values))
    if peak == 0 or not np.isfinite(peak):
        return 1.0, ""
    for div, prefix in reversed(prefixes):
        if peak >= div:
            return div, prefix
    return prefixes[0]


# ── 6. Plots — one window per A value ─────────────────────────────────────────

def _style_ax(ax, title: str, x_label: str, y_label: str) -> None:
    ax.set_title(title, fontsize=11, fontweight="bold", pad=8)
    ax.set_xlabel(x_label, fontsize=10)
    ax.set_ylabel(y_label, fontsize=10)
    ax.legend(fontsize=9, framealpha=0.85, edgecolor="#cccccc")
    ax.grid(True, linestyle="--", linewidth=0.6, alpha=0.5)
    ax.spines[["top", "right"]].set_visible(False)


def plot_results(stats: dict) -> None:
    A_values = sorted(stats.keys())

    # Pre-compute curve data and global SI scales
    curve_data = {}
    all_mean_vals, all_std_vals = [], []

    for A in A_values:
        b_sorted = sorted(stats[A].keys())
        x, x_label = b_to_x(b_sorted)
        mean = np.array([stats[A][b]["mean"] for b in b_sorted])
        std  = np.array([stats[A][b]["std"]  for b in b_sorted])
        cv   = np.array([stats[A][b]["cv"]   for b in b_sorted])
        n    = stats[A][b_sorted[0]]["n"]
        curve_data[A] = dict(x=x, x_label=x_label, mean=mean, std=std, cv=cv, n=n)
        all_mean_vals.extend([*(mean - 2*std), *(mean + 2*std)])
        all_std_vals.extend(std)

    # One shared SI scale across all windows so curves are comparable
    div_mean, pfx_mean = si_scale(np.array(all_mean_vals))
    div_std,  pfx_std  = si_scale(np.array(all_std_vals))

    # Colour cycle: one colour per B index (same across all windows)
    all_b = sorted({b for A in A_values for b in stats[A]})
    b_colours = {b: cm.tab10(i / max(len(all_b) - 1, 1)) for i, b in enumerate(all_b)}

    for A in A_values:
        d        = curve_data[A]
        x        = d["x"]
        mean     = d["mean"]
        std      = d["std"]
        cv       = d["cv"]
        n        = d["n"]
        x_label  = d["x_label"]
        b_sorted = sorted(stats[A].keys())

        fig, (ax_m, ax_s, ax_cv) = plt.subplots(
            3, 1, figsize=(11, 12), sharex=True,
            gridspec_kw={"hspace": 0.35}
        )
        fig.suptitle(
            f"Monte Carlo — A = {A}   |   {SIGNAL_NAME}   |   n = {n} samples",
            fontsize=13, fontweight="bold", y=0.98
        )
        try:
            fig.canvas.manager.set_window_title(f"MC  A={A}")
        except Exception:
            pass

        colours = [b_colours[b] for b in b_sorted]

        # ── subplot 1 : Mean ± 1σ / ±2σ ──────────────────────────────────────
        for colour, bval, mu, sigma in zip(colours, b_sorted, mean, std):
            # ±2σ outer band (single point → vertical errorbar style)
            ax_m.errorbar(
                bval if not B_REAL_VALUES else x[b_sorted.index(bval)],
                mu / div_mean,
                yerr=[[2*sigma / div_mean], [2*sigma / div_mean]],
                fmt="none", color=colour, alpha=0.25, linewidth=6, capsize=0
            )

        # Filled bands across the sweep
        ax_m.fill_between(x, (mean - 2*std) / div_mean, (mean + 2*std) / div_mean,
                          color="steelblue", alpha=0.10, linewidth=0, label="±2σ")
        ax_m.fill_between(x, (mean - std) / div_mean,   (mean + std) / div_mean,
                          color="steelblue", alpha=0.25, linewidth=0, label="±1σ")
        ax_m.plot(x, (mean + 2*std) / div_mean, color="steelblue",
                  linewidth=0.7, linestyle=":")
        ax_m.plot(x, (mean - 2*std) / div_mean, color="steelblue",
                  linewidth=0.7, linestyle=":")
        ax_m.plot(x, (mean + std) / div_mean, color="steelblue",
                  linewidth=1.0, linestyle="--")
        ax_m.plot(x, (mean - std) / div_mean, color="steelblue",
                  linewidth=1.0, linestyle="--")
        ax_m.plot(x, mean / div_mean, color="steelblue",
                  linewidth=2.2, marker="o", markersize=5, label="mean")
        _style_ax(ax_m,
                  title="Mean   ——   ±1σ  - -   ±2σ  ···",
                  x_label="",
                  y_label=f"Current  [{pfx_mean}A]")

        # ── subplot 2 : Standard deviation ────────────────────────────────────
        ax_s.fill_between(x, 0, std / div_std,
                          color="darkorange", alpha=0.25, linewidth=0)
        ax_s.plot(x, std / div_std, color="darkorange",
                  linewidth=2.2, marker="s", markersize=5, label="σ")
        _style_ax(ax_s,
                  title="Standard Deviation  σ",
                  x_label="",
                  y_label=f"σ  [{pfx_std}A]")

        # ── subplot 3 : Coefficient of Variation ──────────────────────────────
        ax_cv.fill_between(x, 0, cv,
                           color="seagreen", alpha=0.25, linewidth=0)
        ax_cv.plot(x, cv, color="seagreen",
                   linewidth=2.2, marker="^", markersize=5, label="CV")
        _style_ax(ax_cv,
                  title="Coefficient of Variation  CV = σ/μ × 100",
                  x_label=x_label,
                  y_label="CV  [%]")

        fig.tight_layout(rect=[0, 0, 1, 0.97])
        out = os.path.join(DATA_DIR, f"mc_A{A}.png")
        fig.savefig(out, dpi=150)
        print(f"  Saved → {out}")

    print("All plots saved.")
    plt.show()


# ── 6. CSV export ──────────────────────────────────────────────────────────────

def export_csv(stats: dict) -> None:
    import csv
    out_csv = os.path.join(DATA_DIR, "mc_stats.csv")
    with open(out_csv, "w", newline="") as fh:
        w = csv.writer(fh)
        w.writerow(["A", "B", "n_samples", "mean", "std", "cv_pct"])
        for A in sorted(stats):
            for B in sorted(stats[A]):
                s = stats[A][B]
                w.writerow([A, B, s["n"],
                             f"{s['mean']:.6e}", f"{s['std']:.6e}", f"{s['cv']:.4f}"])
    print(f"CSV saved  → {out_csv}")


# ── 7. Main ────────────────────────────────────────────────────────────────────

if __name__ == "__main__":
    print(f"Scanning {FILE_PATTERN} …\n")
    raw_data = load_data()
    stats    = compute_stats(raw_data)

    # Console summary
    print(f"\n{'A':>4}  {'B':>6}  {'n':>5}  {'mean':>14}  {'std':>14}  {'CV%':>8}")
    print("─" * 60)
    for A in sorted(stats):
        for B in sorted(stats[A]):
            s = stats[A][B]
            print(f"{A:>4}  {B:>6}  {s['n']:>5}  "
                  f"{s['mean']:>14.4e}  {s['std']:>14.4e}  {s['cv']:>8.2f}")

    export_csv(stats)
    plot_results(stats)