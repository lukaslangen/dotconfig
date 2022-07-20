#!/bin/bash

MONITOR_DOCKED_PRIMARY="HDMI-A-0"
MONITOR_INTERNAL="eDP"

HDMI_ACTIVE=$(xrandr | grep ' connected' | grep 'HDMI' | awk '{print $1}')

function moveWorkspace () {
    SPACE=$1
    MONITOR=$2

    echo $SPACE
    echo $MONITOR

    i3-msg [workspace="$SPACE"] move workspace to output $MONITOR
}

if [[ ! -z "$HDMI_ACTIVE" ]]; then
    ~/.screenlayout/docked.sh

    moveWorkspace 1 $MONITOR_DOCKED_PRIMARY
    moveWorkspace 2 $MONITOR_DOCKED_PRIMARY
    moveWorkspace 3 $MONITOR_DOCKED_PRIMARY
    moveWorkspace 4 $MONITOR_DOCKED_PRIMARY
    moveWorkspace 5 $MONITOR_DOCKED_PRIMARY
    moveWorkspace 6 $MONITOR_DOCKED_PRIMARY
    moveWorkspace 7 $MONITOR_DOCKED_PRIMARY
    moveWorkspace 8 $MONITOR_DOCKED_PRIMARY
    moveWorkspace 9 $MONITOR_INTERNAL
    moveWorkspace 10 $MONITOR_INTERNAL
else
    ~/.screenlayout/undocked.sh

    moveWorkspace 1 $MONITOR_INTERNAL
    moveWorkspace 2 $MONITOR_INTERNAL
    moveWorkspace 3 $MONITOR_INTERNAL
    moveWorkspace 4 $MONITOR_INTERNAL
    moveWorkspace 5 $MONITOR_INTERNAL
    moveWorkspace 6 $MONITOR_INTERNAL
    moveWorkspace 7 $MONITOR_INTERNAL
    moveWorkspace 8 $MONITOR_INTERNAL
    moveWorkspace 9 $MONITOR_INTERNAL
    moveWorkspace 10 $MONITOR_INTERNAL
fi

~/.config/polybar/launch.sh
