#!/bin/sh
#
# Riccardo Palombo - https://riccardo.im
# Preparato per la community Patreon: patreon.com/riccardopalombo

entries="Logout\n Suspend\n Reboot\n Shutdown"
selected=$(echo -e $entries | rofi -dmenu -theme power-dark -i | awk '{print tolower($1)}')
echo $selected

case $selected in
  logout)
    exec swaymsg exit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl -i reboot;;
  shutdown)
    exec systemctl -i poweroff;;
esac
