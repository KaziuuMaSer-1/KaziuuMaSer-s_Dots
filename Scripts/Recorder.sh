#!/bin/sh
# ~/Scripts/toggle-recording.sh

if pgrep -f "gpu-screen-recorder -w" > /dev/null; then
    # Recording is running -> stop it gracefully
    pkill -SIGINT -f "gpu-screen-recorder -w"
    notify-send "Recording stopped" 2>/dev/null
else
    # Not running -> start it
    BASE="/home/oliwier/Videos/$(date +%Y-%m-%d)"
    OUTPUT="$BASE.mp4"
    i=1
    while [ -e "$OUTPUT" ]; do
        OUTPUT="$BASE-$i.mp4"
        i=$((i + 1))
    done
flatpak run --command=gpu-screen-recorder com.dec05eba.gpu_screen_recorder \
    -w portal -restore-portal-session no -a default_output -o "$OUTPUT" &
    disown
fi
