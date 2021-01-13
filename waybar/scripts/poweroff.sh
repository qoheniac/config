#!/bin/bash
case $(rofi -dmenu << EOF | sed 's/^ *//'
    Shutdown
    Reboot
    Log off
    Hibernate
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
    "Hibernate")
        systemctl hibernate
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
