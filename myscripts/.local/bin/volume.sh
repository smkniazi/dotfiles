#!/bin/bash
#example 10% , 10%+,  10%-
#set -x

if [ "$1" = "inc" ]; then
  xdotool key XF86AudioRaiseVolume
  echo "increased" >> /tmp/loger
else 
  xdotool key XF86AudioLowerVolume 
  echo "decreased" >> /tmp/loger
fi
#/usr/bin/amixer -q sset Master $1  
##echo $1 >> /tmp/switcher.log
#
#curval=$(/usr/bin/amixer sget Master | grep "Front Left.*[0-9]*%" | grep -oh "[0-9]*%" | grep -oh "[0-9]*")
#pkill zenity
#message="Current volume level is $curval"
##timeout 1 zenity --scale --text "<span size=\"xx-large\">$message</span>" --title "$message" --min-value 0 --max-value 100 --value $curval
#
#timeout 0.5 zenity --info  --text "<span size=\"large\">Volume</span>\n<span size=\"xx-large\"><b>$curval%</b></span>" --title "$message" --ellipsize 
##--width=80 --height=40
#
exit 

