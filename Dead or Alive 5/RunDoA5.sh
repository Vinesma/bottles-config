#!/usr/bin/env bash

BOTTLE="Dead or Alive 5"
BOTTLES_ROOT="$HOME/.local/share/bottles/bottles/$BOTTLE"
GAME_ROOT="$BOTTLES_ROOT/drive_c/Program Files (x86)/Dead or Alive 5 - Last Round"
GAME_EXE=gameSR.exe

run() {
    cd "$GAME_ROOT" || exit 1
    bottles -b "$BOTTLE" -e "$GAME_ROOT/$GAME_EXE"
}

if [ "$1" == "-v" ]; then
    run
else
    run &> /dev/null
fi
