#!/usr/bin/env bash
# Usage: ./run_ngspice_parallel.sh <spice_file> [batch_size] [total_cases] [initial_range]

SPICE_FILE="${1:?Usage: $0 <spice_file> [batch_size] [total_cases] [initial_range]}"
BATCH_SIZE="${2:-8}"
TOTAL_CASES="${3:-256}"
INITIAL_RANGE="${4:-5}"

BASENAME="$(basename "${SPICE_FILE%.*}")"
EXT="${SPICE_FILE##*.}"
OUT_DIR="simulations/${BASENAME}"
mkdir -p "$OUT_DIR"

NCORES=$(nproc)
NUM_BATCHES=$(( (TOTAL_CASES + BATCH_SIZE - 1) / BATCH_SIZE ))

echo "CPU cores     : $NCORES"
echo "Batches       : $NUM_BATCHES"
echo "Output        : $OUT_DIR"
echo "Initial range : $INITIAL_RANGE"
echo ""

# ---------- launch all batches -----------------------------------------------
BATCH=0
CORE=0
PIDS=()
BATCH_LOGS=()
BATCH_RAWS=()
BATCH_STARTS=()
BATCH_ENDS=()

for (( start=0; start<TOTAL_CASES; start+=BATCH_SIZE )); do
  end=$(( start + BATCH_SIZE ))
  (( end > TOTAL_CASES )) && end=$TOTAL_CASES
  BATCH=$(( BATCH + 1 ))

  BATCH_SPICE="${OUT_DIR}/${BASENAME}_commandRange_${INITIAL_RANGE}_batch${BATCH}.${EXT}"
  BATCH_LOG="${OUT_DIR}/${BASENAME}_commandRange_${INITIAL_RANGE}_batch${BATCH}.log"
  BATCH_RAW="${OUT_DIR}/commandRange_${INITIAL_RANGE}_${start}.raw"
  BATCH_LOGS+=("$BATCH_LOG")
  BATCH_RAWS+=("$BATCH_RAW")
  BATCH_STARTS+=($start)
  BATCH_ENDS+=($end)

  cp "$SPICE_FILE" "$BATCH_SPICE"
  sed -i "41s/.*/let initial_range =${INITIAL_RANGE}/" "$BATCH_SPICE"
  sed -i "52s/.*/let min =${start}/" "$BATCH_SPICE"
  sed -i "53s/.*/let max =${end}/"   "$BATCH_SPICE"

  : > "$BATCH_LOG"
  OMP_NUM_THREADS=1 taskset -c $CORE ngspice -b "$BATCH_SPICE" > "$BATCH_LOG" 2>&1 &
  PIDS+=($!)

  echo "batch $BATCH → core $CORE  (cases $start-$((end-1)))  raw: $BATCH_RAW  PID ${PIDS[-1]}"
  CORE=$(( (CORE + 1) % NCORES ))
done

# ---------- live progress loop -----------------------------------------------
echo ""

show_progress() {
  if [[ "${1}" == "redraw" ]]; then
    printf "\033[%dA" $(( NUM_BATCHES + 2 ))
  fi

  local done_count=0
  local all_done=true

  printf "%-14s %-6s %-6s %-6s  %-22s %s\n" "BATCH" "CASE" "MIN" "MAX" "PROGRESS" "STATUS"
  printf '%0.s─' {1..64}; printf '\n'

  for (( b=0; b<NUM_BATCHES; b++ )); do
    local log="${BATCH_LOGS[$b]}"
    local pid="${PIDS[$b]}"
    local bnum=$(( b + 1 ))
    local bmin="${BATCH_STARTS[$b]}"
    local bmax="${BATCH_ENDS[$b]}"
    local bsize=$(( bmax - bmin ))

    # read last absolute code value from log, convert scientific notation via awk
    local code=$bmin
    if [[ -f "$log" ]]; then
      local raw
      raw=$(grep -oP 'code = \K[\d.eE+]+' "$log" 2>/dev/null | tail -1)
      if [[ -n "$raw" ]]; then
        code=$(awk "BEGIN { printf \"%d\", $raw }")
      fi
    fi

    local status="running"
    if ! kill -0 "${pid}" 2>/dev/null; then
      status="done"
      code=$bmax
      done_count=$(( done_count + 1 ))
    else
      all_done=false
    fi

    # progress relative to this batch's range
    local rel=$(( code - bmin ))
    (( rel < 0 )) && rel=0
    local pct=$(( rel * 100 / bsize ))
    (( pct > 100 )) && pct=100
    local filled=$(( pct / 5 ))
    local empty=$(( 20 - filled ))
    local bar
    bar="$(printf '%0.s█' $(seq 1 $filled 2>/dev/null))$(printf '%0.s░' $(seq 1 $empty 2>/dev/null))"

    local color="" reset="\033[0m"
    [[ "$status" == "done" ]]    && color="\033[32m"
    [[ "$status" == "running" ]] && color="\033[36m"

    printf "${color}%-14s %6d %6d %6d  [%s] %3d%%  %s${reset}\n" \
      "batch ${bnum}" "$code" "$bmin" "$bmax" "$bar" "$pct" "$status"
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
    echo "  batch $b FAILED — see ${OUT_DIR}/${BASENAME}_batch${b}.log"
    FAILED=$(( FAILED + 1 ))
  fi
done

echo ""
(( FAILED > 0 )) && echo "$FAILED batch(es) failed." || echo "All done."
