#!/bin/bash

# رابط البث المباشر
m3u8_url="https://watch.3rbcafee.com/2024/10/sscnew-prem.html?id=SSC1"

# بيانات البث من Restream
rtmp_url="rtmp://live.restream.io/studio"
stream_key="streamv2_9518871_145adf010235485884ae41c78f59e5bb6d8efb"

# تنفيذ الأمر باستخدام FFmpeg
ffmpeg -re -i "$m3u8_url" \
-c:v libx264 -preset veryfast -b:v 4500k -maxrate 4500k -bufsize 9000k \
-c:a aac -b:a 128k -f flv "$rtmp_url/$stream_key"
