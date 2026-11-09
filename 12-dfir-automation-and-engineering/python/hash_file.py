#!/usr/bin/env python3
"""Calculate a SHA-256 hash for a file without modifying it."""

from __future__ import annotations

import argparse
import hashlib
from pathlib import Path


def sha256_file(path: Path, chunk_size: int = 1024 * 1024) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(chunk_size), b""):
            digest.update(chunk)
    return digest.hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Calculate a SHA-256 hash for a file."
    )
    parser.add_argument("file", type=Path, help="Path to the file to hash")
    args = parser.parse_args()

    if not args.file.exists():
        parser.error(f"File does not exist: {args.file}")
    if not args.file.is_file():
        parser.error(f"Not a regular file: {args.file}")

    print(f"SHA256  {sha256_file(args.file)}  {args.file}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
