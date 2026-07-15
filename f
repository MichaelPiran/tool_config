#!/usr/bin/env bash

choice=$(
    printf '%s\n' \
        "directories" \
        "files" \
        "history" \
        "words" \
        "words-c" \
        "words-w" \
        "words-c-w" \
    | fzf
)

case "$choice" in
    files) ff ;;
    directories) fd ;;
    history) echo fh ;;
    words) fw ;;
    words-c) fw -c ;;
    words-w) fw -w ;;
    words-c-w) fw -c -w ;;
esac
