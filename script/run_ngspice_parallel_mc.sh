#!/usr/bin/env bash
# Usage: ./run_ngspice_parallel_mc.sh <spice_file> [batch_size] [total_cases] [initial_range] [mc_samples] [num_cores]

SPICE_FILE="${1:?Usage: $0 <spice_file> [batch_size] [total_cases] [initial_range] [mc_samples] [num_cores]}"
BATCH_SIZE="${2:-8}"
TOTAL_CASES="${3:-256}"
INITIAL_RANGE="${4:-5}"
MC_SAMPLES="${5:-10}"
NUM_CORES="${6:-$(nproc)}"

BASENAME="$(basename "${SPICE_FILE%.*}")"
EXT="${SPICE_FILE##*.}"
OUT_DIR="simulations/${BASENAME}"
mkdir -p "$OUT_DIR"

NUM_BATCHES=$(( (TOTAL_CASES + BATCH_SIZE - 1) / BATCH_SIZE ))

# cores per batch (floor), minimum 1
CORES_PER_BATCH=$(( NUM_CORES / NUM_BATCHES ))
(( CORES_PER_BATCH < 1 )) && CORES_PER_BATCH=1

echo "Total cores      : $NUM_CORES"
echo "Batches          : $NUM_BATCHES"
echo "Cores per batch  : $CORES_PER_BATCH"
echo "OMP threads/batch: $CORES_PER_BATCH"
echo "Output           : $OUT_DIR"
echo "Initial range    : $INITIAL_RANGE"
echo "MC samples       : $MC_SAMPLES"
echo ""

# ---------- launch all batches -----------------------------------------------
BATCH=0
CORE_START=0
PIDS=()
BATCH_LOGS=()
BATCH_STARTS=()
BATCH_ENDS=()

for (( start=0; start<TOTAL_CASES; start+=BATCH_SIZE )); do
  end=$(( start + BATCH_SIZE ))
  (( end > TOTAL_CASES )) && end=$TOTAL_CASES
  BATCH=$(( BATCH + 1 ))

  BATCH_SPICE="${OUT_DIR}/${BASENAME}_commandRange_${INITIAL_RANGE}_batch${BATCH}.${EXT}"
  BATCH_LOG="${OUT_DIR}/${BASENAME}_commandRange_${INITIAL_RANGE}_batch${BATCH}.log"
  BATCH_LOGS+=("$BATCH_LOG")
  BATCH_STARTS+=($start)
  BATCH_ENDS+=($end)

  cp "$SPICE_FILE" "$BATCH_SPICE"
  sed -i "49s/.*/let initial_range =${INITIAL_RANGE}/" "$BATCH_SPICE"
  sed -i "62s/.*/let min =${start}/" "$BATCH_SPICE"
  sed -i "63s/.*/let max =${end}/"   "$BATCH_SPICE"

  # build core range string for taskset: e.g. "0-3" or "4-7"
  CORE_END=$(( CORE_START + CORES_PER_BATCH - 1 ))
  # clamp to NUM_CORES-1
  (( CORE_END >= NUM_CORES )) && CORE_END=$(( NUM_CORES - 1 ))

  if (( CORES_PER_BATCH == 1 )); then
    CORE_RANGE="${CORE_START}"
  else
    CORE_RANGE="${CORE_START}-${CORE_END}"
  fi

  : > "$BATCH_LOG"
  OMP_NUM_THREADS=$CORES_PER_BATCH taskset -c "$CORE_RANGE" \
    ngspice -b "$BATCH_SPICE" > "$BATCH_LOG" 2>&1 &
  PIDS+=($!)

  echo "batch $BATCH → cores $CORE_RANGE  (cases $start-$((end-1)))  PID ${PIDS[-1]}"

  CORE_START=$(( CORE_START + CORES_PER_BATCH ))
  # wrap around if more batches than cores
  (( CORE_START >= NUM_CORES )) && CORE_START=0
done

# ---------- live progress loop -----------------------------------------------
echo ""

show_progress() {
  if [[ "${1}" == "redraw" ]]; then
    printf "\033[%dA" $(( NUM_BATCHES + 2 ))
  fi

  local done_count=0
  local all_done=true

  printf "%-14s %-6s %-6s  %-22s %s\n" "BATCH" "DONE" "TOTAL" "PROGRESS" "STATUS"
  printf '%0.s─' {1..64}; printf '\n'

  for (( b=0; b<NUM_BATCHES; b++ )); do
    local log="${BATCH_LOGS[$b]}"
    local pid="${PIDS[$b]}"
    local bnum=$(( b + 1 ))
    local bmin="${BATCH_STARTS[$b]}"

    local completed=0
    local raw_files
    raw_files=( "${OUT_DIR}/commandRange_${INITIAL_RANGE}_${bmin}_"*.raw )
    if [[ -f "${raw_files[0]}" ]]; then
      completed=${#raw_files[@]}
    fi

    local status="running"
    if ! kill -0 "${pid}" 2>/dev/null; then
      status="done"
      completed=$MC_SAMPLES
      done_count=$(( done_count + 1 ))
    else
      all_done=false
    fi

    local pct=$(( completed * 100 / MC_SAMPLES ))
    (( pct > 100 )) && pct=100
    local filled=$(( pct / 5 ))
    local empty=$(( 20 - filled ))
    local bar
    bar="$(printf '%0.s█' $(seq 1 $filled 2>/dev/null))$(printf '%0.s░' $(seq 1 $empty 2>/dev/null))"

    local color="" reset="\033[0m"
    [[ "$status" == "done" ]]    && color="\033[32m"
    [[ "$status" == "running" ]] && color="\033[36m"

    printf "${color}%-14s %6d %6d  [%s] %3d%%  %s${reset}\n" \
      "batch ${bnum}" "$completed" "$MC_SAMPLES" "$bar" "$pct" "$status"
  done

  printf '%0.s─' {1..64}; printf '\n'
  printf "done: %d / %d\n" "$done_count" "$NUM_BATCHES"

  [[ "$all_done" == true ]]
}

show_progress "first"
while true; do
  sleep 1
  if show_progress "redraw"; then break; fi
done

# ---------- collect exit codes -----------------------------------------------
echo ""
FAILED=0
for i in "${!PIDS[@]}"; do
  b=$(( i + 1 ))
  if ! wait "${PIDS[$i]}"; then
    echo "  batch $b FAILED — see ${OUT_DIR}/${BASENAME}_commandRange_${INITIAL_RANGE}_batch${b}.log"
    FAILED=$(( FAILED + 1 ))
  fi
done

echo ""
(( FAILED > 0 )) && echo "$FAILED batch(es) failed." || echo "All done."
