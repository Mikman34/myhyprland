#!/bin/bash

entries=" Lock
 Suspend
󰍃 Log out
󰜉 Reboot
󰍛 Reboot to UEFI
󰑓 Hard reboot
⏻ Shutdown"

selected=$(echo -e "$entries" | wofi --dmenu --prompt="Power Menu:" --width=400 --height=450)

case $selected in
*Lock)
  swaylock
  ;;
*Suspend)
  systemctl suspend
  ;;
*Log\ out)
  hyprctl dispatch exit
  ;;
*Reboot)
  systemctl reboot
  ;;
*Reboot\ to\ UEFI)
  systemctl reboot --firmware-setup
  ;;
*Hard\ reboot)
  pkexec sh -c 'echo b > /proc/sysrq-trigger'
  ;;
*Shutdown)
  systemctl poweroff
  ;;
esac
