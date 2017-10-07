#!/bin/bash
#example 10% , 10%+,  10%-
amixer -q -D pulse sset Master $1
#echo $1 >> /tmp/switcher.log
