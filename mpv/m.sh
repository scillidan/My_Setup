#!/bin/bash

source "$(dirname "$0")/set_env.sh"

run_mpv() {
    mpv --config-dir="$MPV_CONFIG" --force-window --idle $2
    exit
}

dir=$1

if [ "$dir" = "video" ]; then
    MPV_CONFIG="$CONFIG_DIR_VIDEO"
    run_mpv
elif [ "$dir" = "stream" ]; then
    MPV_CONFIG="$CONFIG_DIR_STREAM"
    run_mpv
elif [ "$dir" = "music" ]; then
    MPV_CONFIG="$CONFIG_DIR_MUSIC"
    run_mpv
elif [ "$dir" = "manga" ]; then
    MPV_CONFIG="$CONFIG_DIR_MANGA"
    run_mpv
elif [ "$dir" = "edit" ]; then
    MPV_CONFIG="$CONFIG_DIR_EDIT"
    run_mpv
else
    echo "Invalid dir"
    exit 1
fi

exit