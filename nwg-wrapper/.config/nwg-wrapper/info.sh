#!/usr/bin/env bash
#
#
echo '<span>'
time=$(date +"%H:%M %P")
date=$(date +"%a, %d %b")
echo $time 
echo $date
echo ''
bat=$(cat /sys/class/power_supply/BAT0/capacity)
echo 'Battery: '$bat'%'
vol=$(pamixer --get-volume)
echo 'Volume: '$vol'%'
screen=$(light | cut -f1 -d'.')
echo 'Brightness: '$screen'%'
echo '</span>'
