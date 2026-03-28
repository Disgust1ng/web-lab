#!/bin/bash

echo "Starting Frequency Analyzer..."

FREQ_RESULT=$(python3 .github/scripts/frequency.py data.txt)

echo "RESULT: $FREQ_RESULT"

bash .github/scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"

echo "Done!"
