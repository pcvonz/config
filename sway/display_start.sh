#!/usr/bin/env bash
DISPLAYS=$(wlr-randr | rg '^\w' | awk  '{print $1}')

echo $DISPLAYS

DISPLAY_COUNT=$(echo $DISPLAYS | wc -w)

echo $DISPLAY_COUNT

if [ $DISPLAY_COUNT -eq "2" ]; then
    echo "Turning display off"
    wlr-randr --output eDP-1 --off
fi

echo $?
