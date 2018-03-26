#!/bin/bash

while [[ -f $HOME/screen$n.mp4 ]]
do
	n=$((n+1))
done
filename="$HOME/screen$n.mp4"

ffmpeg -y \
-f pulse -i 0 \
-framerate 30 \
-s $(xdpyinfo | grep dimensions | awk '{print $2;}') \
-f x11grab -i :0.0 \
-c:v libx264rgb \
-crf 23 \
-preset ultrafast $filename 

#-preset ultrafast $filename 
