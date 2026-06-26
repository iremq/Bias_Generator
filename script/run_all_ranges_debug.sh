#!/usr/bin/env bash
# Usage: ./run_all_ranges.sh <spice_file> [batch_size] [total_cases] [range_start] [range_end]
#
# Iterates initial_range from range_start to range_end (inclusive),
# runs the parallel simulation for each, then merges the batch .raw files.
# Default: initial_range 0 to 7  (8 values), 16 batches of 16 cases = 256 total

SPICE_FILE="${1:?Usage: $0 <spice_file> [batch_size] [total_cases] [range_start] [range_end]}"
BATCH_SIZE="${2:-16}"
TOTAL_CASES="${3:-256}"
RANGE_START="${4:-0}"
RANGE_END="${5:-7}"

BASENAME="$(basename "${SPICE_FILE%.*}")"
OUT_DIR="simulations/${BASENAME}"
MERGE_DIR="${OUT_DIR}/mergePlot"
mkdir -p "$MERGE_DIR"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "=================================================="
echo " Full sweep: initial_range ${RANGE_START} → ${RANGE_END}"
echo " Spice file : $SPICE_FILE"
echo " Batch size : $BATCH_SIZE  |  Total cases : $TOTAL_CASES"
echo " Output dir : $OUT_DIR"
echo " Merge dir  : $MERGE_DIR"
echo "=================================================="
echo ""

for (( r=RANGE_START; r<=RANGE_END; r++ )); do
  echo ""
  echo "██████████████████████████████████████████████████"
  echo "  initial_range = $r   ($(( r - RANGE_START + 1 )) / $(( RANGE_END - RANGE_START + 1 )))"
  echo "██████████████████████████████████████████████████"
  echo ""

  # run all parallel batches for this range and wait until all done
  bash "${SCRIPT_DIR}/run_ngspice_parallel_debug.sh" "$SPICE_FILE" "$BATCH_SIZE" "$TOTAL_CASES" "$r"

  if (( $? != 0 )); then
    echo "WARNING: some batches failed for range $r, merging anyway..."
  fi

  # collect all batch raw files for this range (sorted by batch start number)
  BATCH_RAWS=( $(ls "${OUT_DIR}/commandRange_${r}_"*.raw 2>/dev/null | sort -V) )

  if (( ${#BATCH_RAWS[@]} == 0 )); then
    echo "ERROR: no .raw files found matching: ${OUT_DIR}/commandRange_${r}_*.raw"
    echo "Skipping merge for range $r."
    continue
  fi

  MERGED="${MERGE_DIR}/commandRange_${r}.raw"
  echo ""
  echo "Merging ${#BATCH_RAWS[@]} files → $MERGED"
  python3 "${SCRIPT_DIR}/merge_raw.py" -o "$MERGED" "${BATCH_RAWS[@]}"

  if (( $? == 0 )); then
    echo "Merge done: $MERGED"
  else
    echo "ERROR: merge failed for range $r"
  fi

  echo ""
done

echo ""
echo "=================================================="
echo " All ranges done."
echo " Merged files in: $MERGE_DIR"
ls "$MERGE_DIR"/*.raw 2>/dev/null | while read f; do echo "  $f"; done
echo "=================================================="
