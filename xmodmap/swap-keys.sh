#!/bin/bash
xmodmap -e "keycode 108 = Super_L"   # reassign Alt_R to Super_L
xmodmap -e "remove mod1 = Super_L"  # make sure X keeps it out of the mod1 group


