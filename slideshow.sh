#!/bin/sh

killall swaybg
wal -i "$(find wallpapers/. -type f | shuf -n1)" --cols16 -n
swaybg -i "$(< "${HOME}/.cache/wal/wal")" -m fill &
OLD_PID=$!

while true; do
	sleep 1800
	wal -i "$(find wallpapers/. -type f | shuf -n1)" --cols16 -n
	swaybg -i "$(< "${HOME}/.cache/wal/wal")" -m fill &
	NEXT_PID=$!
	sleep 1
	kill $OLD_PID
	OLD_PID=$NEXT_PID
done
