#!/bin/bash

layout=$(setxkbmap -query | awk '/layout/{print $2}')
if [ "$layout" = "it" ]; then
    movement_button="ograve"
elif [ "$layout" = "us" ]; then
    movement_button=";"
else
    movement_button=""
fi

echo $movement_button
