#!/usr/bin/env bash

DSP=$(xrandr | awk '/1680x1050/ {print $1}' | head -n 1)

xrandr --output $DSP --primary
echo "Xwayland: Primary monitor set"
