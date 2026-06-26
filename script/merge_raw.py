#!/usr/bin/env python3
"""
merge_raw.py  —  Combine multiple ngspice binary .raw files into one.

Files are expected to be named commandRange_R_START.raw and are sorted
by the batch start number (last integer in filename) before merging.

Usage:
    python3 merge_raw.py -o combined.raw simulations/MyDac/commandRange_5_*.raw
"""

import argparse
import glob
import os
import re
import sys
from datetime import datetime


def read_raw(path: str):
    with open(path, "rb") as fh:
        raw = fh.read()

    marker = b"Binary:\n"
    idx = raw.find(marker)
    if idx == -1:
        raise ValueError(f"{path}: 'Binary:' marker not found")

    header_bytes = raw[: idx + len(marker)]
    binary_data  = raw[idx + len(marker):]
    header_text  = header_bytes.decode("latin-1")

    m = re.search(r"No\. Points:\s*(\d+)", header_text)
    if not m:
        raise ValueError(f"{path}: 'No. Points' not found in header")
    n_points = int(m.group(1))

    m2 = re.search(r"No\. Variables:\s*(\d+)", header_text)
    if not m2:
        raise ValueError(f"{path}: 'No. Variables' not found in header")
    n_vars = int(m2.group(1))

    return header_text, binary_data, n_points, n_vars


def update_header(header_text: str, new_n_points: int, new_date: str | None = None) -> str:
    header_text = re.sub(
        r"(No\. Points:\s*)\d+",
        lambda m: m.group(1) + str(new_n_points),
        header_text,
    )
    if new_date:
        header_text = re.sub(
            r"(Date:\s*).*",
            lambda m: m.group(1) + new_date,
            header_text,
        )
    return header_text


def main():
    parser = argparse.ArgumentParser(
        description="Merge multiple ngspice binary .raw files into one."
    )
    parser.add_argument("inputs", nargs="+", help="Input .raw files or glob pattern.")
    parser.add_argument("-o", "--output", default="combined.raw", help="Output .raw file.")
    parser.add_argument("--no-sort", action="store_true", help="Keep input order as-is.")
    args = parser.parse_args()

    input_files = []
    for pattern in args.inputs:
        expanded = glob.glob(pattern) if "*" in pattern or "?" in pattern else [pattern]
        input_files.extend(expanded)

    if not args.no_sort:
        # sort by last integer in filename = batch start case number
        def sort_key(path):
            numbers = re.findall(r'\d+', os.path.basename(path))
            return int(numbers[-1]) if numbers else 0
        input_files.sort(key=sort_key)

    if not input_files:
        print("ERROR: no input files found.", file=sys.stderr)
        sys.exit(1)

    missing = [f for f in input_files if not os.path.isfile(f)]
    if missing:
        print(f"ERROR: files not found: {', '.join(missing)}", file=sys.stderr)
        sys.exit(1)

    print(f"Merging {len(input_files)} file(s) → {args.output}")

    all_binary   = b""
    total_points = 0
    ref_header   = None
    ref_n_vars   = None

    for i, path in enumerate(input_files):
        header, binary, n_points, n_vars = read_raw(path)
        print(f"  [{i+1:>3}] {path:50s}  points={n_points}  vars={n_vars}")

        if ref_header is None:
            ref_header = header
            ref_n_vars = n_vars
        else:
            if n_vars != ref_n_vars:
                print(f"WARNING: {path} has {n_vars} vars but expected {ref_n_vars}.", file=sys.stderr)

        expected_bytes = n_points * n_vars * 8
        if len(binary) != expected_bytes:
            print(f"WARNING: {path}: expected {expected_bytes} B got {len(binary)} B.", file=sys.stderr)

        all_binary   += binary
        total_points += n_points

    now_str    = datetime.utcnow().strftime("%a %b %d %H:%M:%S UTC %Y")
    out_header = update_header(ref_header, total_points, new_date=now_str)

    os.makedirs(os.path.dirname(os.path.abspath(args.output)), exist_ok=True)
    with open(args.output, "wb") as fh:
        fh.write(out_header.encode("latin-1"))
        fh.write(all_binary)

    print(f"\nDone: {args.output}  ({total_points} points, {os.path.getsize(args.output)} bytes)")


if __name__ == "__main__":
    main()
