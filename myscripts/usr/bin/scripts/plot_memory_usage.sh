#!/bin/bash

if [ -z $1 ]; then
	echo "please, specify the PID"
	exit
fi

if [ -z $2 ]; then
	echo "please, specify the plot name. i.e ~/Exepriment1Plot"
	exit
fi

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

sleepTime=1;
timeElapsed=0;
PID=$1
dataFile="$2.log"
plotFile="$2.png"
rm -f $dataFile
rm -f $plotFile

while true; do
if [ -d "/proc/$PID" ]; then
        RSS=$(ps -p $PID -o rss=)
	RSS=$(($RSS / 1024))
        echo "PID $PID. Time $timeElapsed. RSS $RSS";
        echo "$timeElapsed $RSS" >> $dataFile
        timeElapsed=$((timeElapsed + $sleepTime))
        gnuplot -e "plotFile='$plotFile';dataFile='$dataFile'" $DIR/gnuplot_memory_usage_graph.script
        sleep $sleepTime
else
	 gnuplot -e "plotFile='$plotFile';dataFile='$dataFile'" $DIR/gnuplot_memory_usage_graph.script
        echo "PID $PID does not exists"
        exit
fi
done
