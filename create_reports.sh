#! /bin/bash

OUT_DIR="${1:-tmp}"
OUT_DIR="reports/${OUT_DIR#reports/}"
OUT_DIR="${OUT_DIR%/}"

echo "Storing reports in ${OUT_DIR}"
mkdir -p ${OUT_DIR}

for script in benchmarks/*; do
  BENCHMARK=${script#benchmarks/}
  OUT_FILE="${OUT_DIR}/${BENCHMARK%.rb}.txt"

  echo "Running ${BENCHMARK}"
  ruby ${script} > ${OUT_FILE}
done
