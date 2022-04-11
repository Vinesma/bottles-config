#!/usr/bin/env bash

BOTTLE="Koikatsu"
BOTTLES_ROOT="$HOME/.local/share/bottles/bottles/$BOTTLE"
GAME_ROOT="$BOTTLES_ROOT/drive_c/Program Files (x86)/Koikatsu"
GAME_EXE=Koikatu.exe

run() {
    cd "$GAME_ROOT" || exit 1
    bottles -b Koikatsu -e "$GAME_ROOT/$GAME_EXE"
}

if [ "$1" == "-v" ]; then
    run
else
    run &> /dev/null
fi
