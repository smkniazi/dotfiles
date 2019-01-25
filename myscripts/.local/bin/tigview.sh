#!/bin/bash
#echo "commit: "$1
#echo "file "$2
PAGER='vim -' git -c color.ui=true show $1:$2
