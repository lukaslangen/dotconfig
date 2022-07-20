#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shutdown
while pgrep -u $UID -x polybar >dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
# polybar example &

MONITOR_DOCKED_PRIMARY="HDMI-A-0"
MONITOR_INTERNAL="eDP"

HDMI_ACTIVE=$(xrandr | grep ' connected' | grep 'HDMI' | awk '{print $1}')

if [[ ! -z "$HDMI_ACTIVE" ]]; then
    [[ ! -z $MONITOR_DOCKED_PRIMARY ]] && MONITOR=$MONITOR_DOCKED_PRIMARY polybar i3 &
    [[ ! -z $MONITOR_INTERNAL ]] && MONITOR=$MONITOR_INTERNAL polybar i3-secondary &
else
    [[ ! -z $MONITOR_INTERNAL ]] && MONITOR=$MONITOR_INTERNAL polybar i3 &
fi
