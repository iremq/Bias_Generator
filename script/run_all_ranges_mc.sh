#!/usr/bin/env bash
# Usage: ./run_all_ranges_mc.sh <spice_file> [batch_size] [total_cases] [range_start] [range_end] [mc_samples] [num_cores]

SPICE_FILE="${1:?Usage: $0 <spice_file> [batch_size] [total_cases] [range_start] [range_end] [mc_samples] [num_cores]}"
BATCH_SIZE="${2:-16}"
TOTAL_CASES="${3:-256}"
RANGE_START="${4:-0}"
RANGE_END="${5:-7}"
MC_SAMPLES="${6:-10}"
NUM_CORES="${7:-$(nproc)}"

BASENAME="$(basename "${SPICE_FILE%.*}")"
OUT_DIR="simulations/${BASENAME}"
MERGE_DIR="${OUT_DIR}/mergePlot"
mkdir -p "$MERGE_DIR"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

NUM_BATCHES=$(( (TOTAL_CASES + BATCH_SIZE - 1) / BATCH_SIZE ))
CORES_PER_BATCH=$(( NUM_CORES / NUM_BATCHES ))
(( CORES_PER_BATCH < 1 )) && CORES_PER_BATCH=1

echo "=================================================="
echo " Full MC sweep"
echo " Spice file      : $SPICE_FILE"
echo " Ranges          : ${RANGE_START} → ${RANGE_END}"
echo " MC samples      : ${MC_SAMPLES}"
echo " Batch size      : $BATCH_SIZE  |  Total cases : $TOTAL_CASES"
echo " Num batches     : $NUM_BATCHES"
echo " Total cores     : $NUM_CORES"
echo " Cores per batch : $CORES_PER_BATCH"
echo " Output dir      : $OUT_DIR"
echo " Merge dir       : $MERGE_DIR"
echo "=================================================="
echo ""

for (( r=RANGE_START; r<=RANGE_END; r++ )); do
  echo ""
  echo "██████████████████████████████████████████████████"
  echo "  initial_range = $r   ($(( r - RANGE_START + 1 )) / $(( RANGE_END - RANGE_START + 1 )))"
  echo "██████████████████████████████████████████████████"
  echo ""

  bash "${SCRIPT_DIR}/run_ngspice_parallel_mc.sh" \
    "$SPICE_FILE" "$BATCH_SIZE" "$TOTAL_CASES" "$r" "$MC_SAMPLES" "$NUM_CORES"

  if (( $? != 0 )); then
    echo "WARNING: some batches failed for range $r, merging anyway..."
  fi

  for (( s=0; s<MC_SAMPLES; s++ )); do
    BATCH_RAWS=()
    while IFS= read -r f; do
      BATCH_RAWS+=("$f")
    done < <(ls "${OUT_DIR}/commandRange_${r}_"*"_${s}.raw" 2>/dev/null)

    if (( ${#BATCH_RAWS[@]} == 0 )); then
      echo "ERROR: no .raw files found matching: ${OUT_DIR}/commandRange_${r}_*_${s}.raw"
      continue
    fi

    MERGED="${MERGE_DIR}/commandRange_${r}_mc${s}.raw"
    echo "Merging ${#BATCH_RAWS[@]} files → $MERGED  (mc sample $s / $((MC_SAMPLES-1)))"
    python3 "${SCRIPT_DIR}/merge_raw.py" -o "$MERGED" --no-sort "${BATCH_RAWS[@]}"

    if (( $? == 0 )); then
      echo "  done: $MERGED"
    else
      echo "  ERROR: merge failed for range $r sample $s"
    fi
  done

done

echo ""
echo "=================================================="
echo " All done."
echo " Merged files in: $MERGE_DIR"
ls "$MERGE_DIR"/*.raw 2>/dev/null | while read f; do echo "  $f"; done
echo "=================================================="
