#!/bin/bash

# رابط البث المباشر
m3u8_url="https://af.ayassport.ir/hls2/ssc1.m3u8​"

# بيانات البث من Restream
rtmp_url="rtmp://live.restream.io/studio"
stream_key="streamv2_9518871_145adf010235485884ae41c78f59e5bb6d8efb"

# تنفيذ الأمر باستخدام FFmpeg
ffmpeg -re -i "$m3u8_url" \
-c:v libx264 -preset veryfast -b:v 4500k -maxrate 4500k -bufsize 9000k \
-c:a aac -b:a 128k -f flv "$rtmp_url/$stream_key"
