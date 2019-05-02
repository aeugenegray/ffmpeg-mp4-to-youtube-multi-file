#!/bin/bash
for name in *.mp4; do
  ffmpeg -re -i "$name" --c:v libx264 -preset veryfast -maxrate 2500k -bufsize 4000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv -strict -2 rtmp://a.rtmp.youtube.com/live2/tz29-c32s-z8b8-as4r 
done 

