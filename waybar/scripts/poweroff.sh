#!/bin/bash
case $(wofi -d << EOF | sed 's/^ *//'
    Shutdown
    Reboot
    Log off
    Sleep
    Lock
    Cancel
EOF
) in
    "Shutdown")
        systemctl poweroff
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Sleep")
        systemctl suspend
        ;;
    "Lock")
        loginctl lock-session
        ;;
    "Log off")
        swaymsg exit
        ;;
esac
