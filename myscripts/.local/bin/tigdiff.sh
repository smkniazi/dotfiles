#!/bin/bash
echo $@ >> /tmp/log
if [ "0000000000000000000000000000000000000000" = "$1" ]; then
    git difftool -y "HEAD" -- $2
else
    git difftool -y $1~1 $1 -- $2
fi
#echo "$1 $2 $3"
