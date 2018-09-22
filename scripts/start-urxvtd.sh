#!/usr/bin/env sh

# This is a simple script to check if the URXVT daemon is currently running.  If
# it isn't, then it will start it; otherwise, nothing happens.  This script is
# used to prohibit multiple copies of the daemon from being started, usually due
# to reloading the windowing system's configuration file repeatedly.

if ! pgrep -xU will urxvtd >/dev/null 2>&1; then
    urxvt256cd --fork --opendisplay --quiet
fi
