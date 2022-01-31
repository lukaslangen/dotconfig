#!/bin/bash

CONFIG_ROOT=$HOME/.config
CURRENT_DIR=$(pwd)

for d in */; do
    ln -s "$CURRENT_DIR/$d" "$CONFIG_ROOT"
done
