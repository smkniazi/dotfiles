#!/bin/bash
#example 10% , 10%+,  10%-
amixer -q -D pulse sset Master $1
#echo $1 >> /tmp/switcher.log
#curval=$(amixer sget Master | grep "Front Left.*[0-9]*%" | grep -oh "[0-9]*%" | grep -oh "[0-9]*")
#pkill zenity
#timeout 1 zenity --scale --text test --min-value 0 --max-value 100 --value $curval
