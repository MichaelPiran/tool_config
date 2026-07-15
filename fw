#!/usr/bin/env bash

set -euo pipefail

RG_OPTS="--column --line-number --no-heading --color=always"

WHOLE_WORD=false
CASE_SENSITIVE=false

while getopts "wc" opt; do
    case "$opt" in
        w) WHOLE_WORD=true ;;
        c) CASE_SENSITIVE=true ;;
        *)
            echo "Usage: fw.sh [-w] [-c]"
            exit 1
            ;;
    esac
done

if $WHOLE_WORD; then
    RG_OPTS="$RG_OPTS --word-regexp"
fi

if $CASE_SENSITIVE; then
    RG_OPTS="$RG_OPTS --case-sensitive"
else
    RG_OPTS="$RG_OPTS --smart-case"
fi

RELOAD_CMD="rg $RG_OPTS {q}"

fzf \
    --ansi \
    --disabled \
    --delimiter ':' \
    --bind "change:reload:$RELOAD_CMD || true" \
    --bind 'enter:become(vim "+call cursor({2},{3})" {1})'
