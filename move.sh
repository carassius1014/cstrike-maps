#!/usr/bin/env bash

IN_BASE="$1"
OUT_BASE="czero"

for TARGET in $(git ls-files "$IN_BASE")
do
    REAL=$(realpath --relative-to "$IN_BASE" "$TARGET")
    OUT="$OUT_BASE/$REAL"

    DIR=$(dirname "$OUT")
    mkdir -p "$DIR"

    mv "$TARGET" "$OUT"
done
