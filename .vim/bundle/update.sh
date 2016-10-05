#!/bin/bash

for d in *; do
    if [ -d "$d/.git" ]; then
        (
          echo "[0;31m* $d[0m"
          cd "$d"
          #      [ "$d" = "outliner" ] && git stash
          git pull
          #      [ "$d" = "outliner" ] && git stash pop
          [ "$d" = "youcompleteme" ] && git submodule update --init --recursive
        )
    fi
done
