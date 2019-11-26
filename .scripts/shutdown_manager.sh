#!/bin/sh

choices="Shutdown\nReboot\nExit"
chosen=$(echo -e "$choices" | dmenu -i -b)

case "$chosen" in

    Shutdown) shutdown now ;;
    Reboot) reboot ;;
    Exit) mpc clear && i3-msg exit ;;
esac
