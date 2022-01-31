#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shutdown
while pgrep -u $UID -x polybar >dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
# polybar example &

MONITOR_DOCKED_PRIMARY="DP-3-3"
MONITOR_DOCKED_LEFT="DP-3-2"

MONITOR_EXT_JULES="HDMI-1"

MONITOR_INTERNAL="eDP-1"

if [[ $DOCKED -eq 1 ]]; then
    [[ ! -z $MONITOR_DOCKED_PRIMARY ]] && MONITOR=$MONITOR_DOCKED_PRIMARY polybar i3 &
    [[ ! -z $MONITOR_DOCKED_LEFT ]] && MONITOR=$MONITOR_DOCKED_LEFT polybar i3-secondary &
    [[ ! -z $MONITOR_INTERNAL ]] && MONITOR=$MONITOR_INTERNAL polybar i3-secondary &
elif [[ $DOCKED -eq 2 ]]; then
    [[ ! -z $MONITOR_INTERNAL ]] && MONITOR=$MONITOR_INTERNAL polybar i3 &
    [[ ! -z $MONITOR_EXT_JULES ]] && MONITOR=$MONITOR_EXT_JULES polybar i3-secondary &
else
    [[ ! -z $MONITOR_INTERNAL ]] && MONITOR=$MONITOR_INTERNAL polybar i3 &
fi
