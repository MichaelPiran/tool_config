#!/usr/bin/env bash

choice=$(
    printf '%s\n' \
        "files" \
        "words" \
        "words-c" \
        "words-w" \
        "words-c-w" \
        "directories" \
    | fzf
)

case "$choice" in
    files) ff ;;
    words) fw ;;
    words-c) fw -c ;;
    words-w) fw -w ;;
    words-c-w) fw -c -w ;;
    directories) fd ;;
esac
