"""
Generate TFG-quality figures from PLPUF test_app2 data (10 independent runs).
Outputs PDF figures to the fig/ directory for direct inclusion in LaTeX.

Usage:
    python generate_figures.py

Requires: matplotlib, numpy
    pip install matplotlib numpy
"""

import re
import os
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from pathlib import Path

plt.rcParams.update({
    "font.family": "serif",
    "font.size": 11,
    "axes.labelsize": 12,
    "axes.titlesize": 13,
    "legend.fontsize": 10,
    "xtick.labelsize": 10,
    "ytick.labelsize": 10,
    "figure.dpi": 300,
    "savefig.dpi": 300,
    "savefig.bbox": "tight",
    "axes.grid": True,
    "grid.alpha": 0.3,
})

DATA_DIR = Path(r"C:\Users\emari\Desktop\axi-plpuf-ip\vitis-axi-plpuf"
                r"\plpuf_test_app2\plpuf_test_app2_tests")
FIG_DIR = Path(r"C:\Users\emari\Desktop\axi-plpuf-ip"
               r"\Documento_TFG_EmanuelMarin\fig")
FIG_DIR.mkdir(exist_ok=True)

NUM_RUNS = 10
DUR_RANGE = range(1, 11)

# ── Parse all runs ──────────────────────────────────────────────────────────

def parse_duration_sweep(text):
    pattern = (r"\s*(\d+)\s*\|\s*([\d.]+)%\s*\|\s*([\d.]+)%\s*\|"
               r"\s*([\d.]+)%\s*\|\s*([\d.]+)\s*\|\s*([\d.]+)\s*"
               r"\(\s*([\d.]+)%\)")
    rows = {}
    for m in re.finditer(pattern, text):
        c = int(m.group(1))
        rows[c] = {
            "uniformity": float(m.group(2)),
            "reliability": float(m.group(3)),
            "ber": float(m.group(4)),
            "intra_hd": float(m.group(5)),
            "inter_hd_bits": float(m.group(6)),
            "inter_hd_pct": float(m.group(7)),
        }
    return rows

def parse_avalanche(text):
    bit_pattern = r"\s*(\d+)\s*\|\s*(\d+)\s*\|\s*([\d.]+)%"
    bits = []
    for m in re.finditer(bit_pattern, text):
        bits.append({"bit": int(m.group(1)),
                      "hd": int(m.group(2)),
                      "hd_pct": float(m.group(3))})
    avg_m = re.search(r"Average avalanche:\s*([\d.]+)%", text)
    avg = float(avg_m.group(1)) if avg_m else None
    return bits, avg

def parse_stability(text):
    stable_m = re.search(r"Stable bits.*?:\s*(\d+)\s*/\s*128", text)
    noisy_m = re.search(r"Noisy\s+bits.*?:\s*(\d+)\s*/\s*128", text)
    return (int(stable_m.group(1)) if stable_m else 0,
            int(noisy_m.group(1)) if noisy_m else 0)

all_sweeps = []
all_avalanche_bits = []
all_avalanche_avg = []
all_stable = []
all_noisy = []

for run_i in range(1, NUM_RUNS + 1):
    fpath = DATA_DIR / f"plpuf_test_app2_{run_i}.txt"
    text = fpath.read_text(encoding="utf-8", errors="replace")

    sweep = parse_duration_sweep(text)
    all_sweeps.append(sweep)

    bits, avg = parse_avalanche(text)
    all_avalanche_bits.append(bits)
    all_avalanche_avg.append(avg)

    stable, noisy = parse_stability(text)
    all_stable.append(stable)
    all_noisy.append(noisy)

durations = list(DUR_RANGE)

def metric_array(key):
    arr = np.zeros((NUM_RUNS, len(durations)))
    for r in range(NUM_RUNS):
        for ci, c in enumerate(durations):
            arr[r, ci] = all_sweeps[r][c][key]
    return arr

uniformity = metric_array("uniformity")
reliability = metric_array("reliability")
ber = metric_array("ber")
intra_hd = metric_array("intra_hd")
inter_hd_pct = metric_array("inter_hd_pct")

# ── Figure 1: Uniformity vs Duration ────────────────────────────────────────

fig, ax = plt.subplots(figsize=(6.5, 4))
mean = uniformity.mean(axis=0)
std = uniformity.std(axis=0)
ax.errorbar(durations, mean, yerr=std, fmt="o-", capsize=4,
            color="#2563EB", markerfacecolor="white", markeredgewidth=1.5,
            linewidth=1.8, label="Uniformidad promedio ($n=10$)")
ax.axhline(50, color="#DC2626", linestyle="--", linewidth=1.2,
           label="Ideal (50\\%)")
ax.set_xlabel("Duración de activación $c$")
ax.set_ylabel("Uniformidad (\\%)")
ax.set_xticks(durations)
ax.set_ylim(44, 54)
ax.legend(loc="lower right")
fig.savefig(FIG_DIR / "res_uniformity.pdf")
plt.close(fig)
print("  -> res_uniformity.pdf")

# ── Figure 2: Reliability & BER vs Duration ─────────────────────────────────

fig, ax1 = plt.subplots(figsize=(6.5, 4))
m_rel = reliability.mean(axis=0)
s_rel = reliability.std(axis=0)
m_ber = ber.mean(axis=0)
s_ber = ber.std(axis=0)

ax1.errorbar(durations, m_rel, yerr=s_rel, fmt="s-", capsize=4,
             color="#2563EB", markerfacecolor="white", markeredgewidth=1.5,
             linewidth=1.8, label="Confiabilidad")
ax1.set_xlabel("Duración de activación $c$")
ax1.set_ylabel("Confiabilidad (\\%)", color="#2563EB")
ax1.tick_params(axis="y", labelcolor="#2563EB")
ax1.set_xticks(durations)
ax1.set_ylim(85, 101)

ax2 = ax1.twinx()
ax2.errorbar(durations, m_ber, yerr=s_ber, fmt="^-", capsize=4,
             color="#DC2626", markerfacecolor="white", markeredgewidth=1.5,
             linewidth=1.8, label="BER")
ax2.set_ylabel("BER (\\%)", color="#DC2626")
ax2.tick_params(axis="y", labelcolor="#DC2626")
ax2.set_ylim(-1, 15)

lines1, labels1 = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax1.legend(lines1 + lines2, labels1 + labels2, loc="center right")
ax1.grid(True, alpha=0.3)
fig.savefig(FIG_DIR / "res_reliability_ber.pdf")
plt.close(fig)
print("  -> res_reliability_ber.pdf")

# ── Figure 3: Intra-HD vs Duration ──────────────────────────────────────────

fig, ax = plt.subplots(figsize=(6.5, 4))
m_intra = intra_hd.mean(axis=0)
s_intra = intra_hd.std(axis=0)
ax.errorbar(durations, m_intra, yerr=s_intra, fmt="D-", capsize=4,
            color="#7C3AED", markerfacecolor="white", markeredgewidth=1.5,
            linewidth=1.8, label="HD intra-dispositivo promedio ($n=10$)")
ax.axhline(0, color="#059669", linestyle="--", linewidth=1.2,
           label="Ideal (0 bits)")
ax.set_xlabel("Duración de activación $c$")
ax.set_ylabel("Distancia de Hamming intra-dispositivo (bits)")
ax.set_xticks(durations)
ax.set_ylim(-1, 20)
ax.legend(loc="upper left")
fig.savefig(FIG_DIR / "res_intra_hd.pdf")
plt.close(fig)
print("  -> res_intra_hd.pdf")

# ── Figure 4: Inter-challenge HD (%) vs Duration ────────────────────────────

fig, ax = plt.subplots(figsize=(6.5, 4))
m_inter = inter_hd_pct.mean(axis=0)
s_inter = inter_hd_pct.std(axis=0)
ax.errorbar(durations, m_inter, yerr=s_inter, fmt="o-", capsize=4,
            color="#D97706", markerfacecolor="white", markeredgewidth=1.5,
            linewidth=1.8,
            label="HD inter-desafío promedio ($n=10$)")
ax.axhline(50, color="#DC2626", linestyle="--", linewidth=1.2,
           label="Ideal (50\\%)")
ax.set_xlabel("Duración de activación $c$")
ax.set_ylabel("Distancia de Hamming inter-desafío (\\%)")
ax.set_xticks(durations)
ax.set_ylim(34, 54)
ax.legend(loc="lower left")
fig.savefig(FIG_DIR / "res_inter_hd.pdf")
plt.close(fig)
print("  -> res_inter_hd.pdf")

# ── Figure 5: Avalanche effect (aggregated bar chart) ───────────────────────

num_bits = 32
aval_matrix = np.zeros((NUM_RUNS, num_bits))
for r in range(NUM_RUNS):
    for b in all_avalanche_bits[r]:
        if b["bit"] < num_bits:
            aval_matrix[r, b["bit"]] = b["hd_pct"]

m_aval = aval_matrix.mean(axis=0)
s_aval = aval_matrix.std(axis=0)
avg_aval = np.mean(all_avalanche_avg)

fig, ax = plt.subplots(figsize=(7, 4))
bars = ax.bar(range(num_bits), m_aval, yerr=s_aval, capsize=2,
              color="#6366F1", alpha=0.8, edgecolor="#4338CA", linewidth=0.5)
ax.axhline(50, color="#DC2626", linestyle="--", linewidth=1.2,
           label="Ideal (50\\%)")
ax.axhline(avg_aval, color="#059669", linestyle="-.", linewidth=1.5,
           label=f"Promedio observado ({avg_aval:.2f}\\%)")
ax.set_xlabel("Posición del bit invertido en el desafío")
ax.set_ylabel("Cambio en la respuesta (\\%)")
ax.set_xticks(range(0, num_bits, 4))
ax.set_ylim(0, 55)
ax.legend(loc="upper right")
fig.savefig(FIG_DIR / "res_avalanche.pdf")
plt.close(fig)
print("  -> res_avalanche.pdf")

# ── Figure 6: Combined summary (all metrics vs duration) ────────────────────

fig, axes = plt.subplots(2, 2, figsize=(7.5, 6), sharex=True)

ax = axes[0, 0]
ax.errorbar(durations, uniformity.mean(0), yerr=uniformity.std(0),
            fmt="o-", capsize=3, color="#2563EB", markerfacecolor="white",
            markeredgewidth=1.2, linewidth=1.5)
ax.axhline(50, color="#DC2626", ls="--", lw=1)
ax.set_ylabel("Uniformidad (\\%)")
ax.set_ylim(44, 54)
ax.set_title("(a) Uniformidad")

ax = axes[0, 1]
ax.errorbar(durations, reliability.mean(0), yerr=reliability.std(0),
            fmt="s-", capsize=3, color="#2563EB", markerfacecolor="white",
            markeredgewidth=1.2, linewidth=1.5)
ax.set_ylabel("Confiabilidad (\\%)")
ax.set_ylim(85, 101)
ax.set_title("(b) Confiabilidad")

ax = axes[1, 0]
ax.errorbar(durations, intra_hd.mean(0), yerr=intra_hd.std(0),
            fmt="D-", capsize=3, color="#7C3AED", markerfacecolor="white",
            markeredgewidth=1.2, linewidth=1.5)
ax.set_ylabel("HD intra (bits)")
ax.set_xlabel("Duración $c$")
ax.set_ylim(-1, 20)
ax.set_title("(c) HD intra-dispositivo")

ax = axes[1, 1]
ax.errorbar(durations, inter_hd_pct.mean(0), yerr=inter_hd_pct.std(0),
            fmt="o-", capsize=3, color="#D97706", markerfacecolor="white",
            markeredgewidth=1.2, linewidth=1.5)
ax.axhline(50, color="#DC2626", ls="--", lw=1)
ax.set_ylabel("HD inter-desafío (\\%)")
ax.set_xlabel("Duración $c$")
ax.set_ylim(34, 54)
ax.set_title("(d) HD inter-desafío")

for a in axes.flat:
    a.set_xticks(durations)
    a.grid(True, alpha=0.3)

fig.tight_layout()
fig.savefig(FIG_DIR / "res_summary_4panel.pdf")
plt.close(fig)
print("  -> res_summary_4panel.pdf")

# ── Print numeric summary for LaTeX table ───────────────────────────────────

print("\n=== Numeric Summary (mean ± std across 10 runs) ===\n")
print(f"{'c':>3} | {'Unif%':>12} | {'Reliab%':>12} | {'BER%':>12} "
      f"| {'IntraHD':>12} | {'InterHD%':>12}")
print("-" * 75)
for ci, c in enumerate(durations):
    print(f"{c:3d} | "
          f"{uniformity.mean(0)[ci]:5.2f} ± {uniformity.std(0)[ci]:4.2f} | "
          f"{reliability.mean(0)[ci]:5.2f} ± {reliability.std(0)[ci]:4.2f} | "
          f"{ber.mean(0)[ci]:5.2f} ± {ber.std(0)[ci]:4.2f} | "
          f"{intra_hd.mean(0)[ci]:5.2f} ± {intra_hd.std(0)[ci]:4.2f} | "
          f"{inter_hd_pct.mean(0)[ci]:5.2f} ± {inter_hd_pct.std(0)[ci]:4.2f}")

print(f"\nAvalanche avg: {avg_aval:.2f}% ± {np.std(all_avalanche_avg):.2f}%")
print(f"Stable bits (c=5): {np.mean(all_stable):.1f} ± "
      f"{np.std(all_stable):.1f} / 128")
print(f"Noisy bits  (c=5): {np.mean(all_noisy):.1f} ± "
      f"{np.std(all_noisy):.1f} / 128")

print("\nAll figures saved to:", FIG_DIR)
