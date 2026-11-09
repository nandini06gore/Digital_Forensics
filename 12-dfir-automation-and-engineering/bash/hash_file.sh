#!/usr/bin/env bash
# Calculate a SHA-256 hash without modifying the source file.
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <file>" >&2
  exit 2
fi

file=$1
if [[ ! -f "$file" ]]; then
  echo "Error: not a regular file: $file" >&2
  exit 1
fi

if command -v sha256sum >/dev/null 2>&1; then
  sha256sum -- "$file"
elif command -v shasum >/dev/null 2>&1; then
  shasum -a 256 -- "$file"
else
  echo "Error: sha256sum or shasum is required." >&2
  exit 1
fi
