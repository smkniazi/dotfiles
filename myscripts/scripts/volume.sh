#!/bin/bash
#example 10% , 10%+,  10%-
amixer -q -D pulse sset Master $1
#echo $1 >> /tmp/switcher.log
curval=$(amixer sget Master | grep "Front Left.*[0-9]*%" | grep -oh "[0-9]*%" | grep -oh "[0-9]*")
pkill zenity
message="Current volume level is $curval"
timeout 1 zenity --scale --text "$message" --title "$message" --min-value 0 --max-value 100 --value $curval
