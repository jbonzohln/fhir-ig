#!/bin/bash
# ==============================================================================
# build.sh — USCDI-SCD IG Build Script
# ==============================================================================
# Prerequisites:
#   - Node.js >= 18 (for SUSHI)
#   - Java 17+ (for IG Publisher)
#   - SUSHI installed: npm install -g fsh-sushi
#   - IG Publisher downloaded: ./_updatePublisher.sh
#
# Usage:
#   ./build.sh          — Full build (SUSHI + IG Publisher)
#   ./build.sh -s       — SUSHI only (no IG Publisher)
#   ./build.sh -v       — Validate FSH only (no build)
# ==============================================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "======================================================"
echo "  USCDI-SCD Implementation Guide Build"
echo "  $(date)"
echo "======================================================"

# Check SUSHI is installed
if ! command -v sushi &> /dev/null; then
  echo "ERROR: SUSHI is not installed. Install with: npm install -g fsh-sushi"
  exit 1
fi

# SUSHI compile step
echo ""
echo "--- Step 1: Running SUSHI (FSH → FHIR JSON) ---"
sushi .
echo "SUSHI completed successfully."

# IG Publisher step (skip with -s flag)
if [[ "$1" != "-s" ]]; then
  echo ""
  echo "--- Step 2: Running IG Publisher ---"
  
  if [ ! -f "input-cache/publisher.jar" ]; then
    echo "IG Publisher not found. Run ./_updatePublisher.sh first."
    exit 1
  fi

  java -jar input-cache/publisher.jar \
    -ig ig.ini \
    -tx https://tx.fhir.org/r4
  
  echo ""
  echo "======================================================"
  echo "  BUILD COMPLETE"
  echo "  Output: output/index.html"
  echo "======================================================"
fi
