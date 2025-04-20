#!/bin/bash

# رابط البث المباشر (مثال: SSC)
SOURCE="https://www.elahmad.com/tv/live/shahid_shaka.php?id=ssc1"

# رابط الإرسال (مثال: YouTube, Facebook, إلخ)
# لازم تغيّر هذا حسب اللي تحب تبث فيه
DEST="rtmp://live.restream.io/studio/streamv2_9518871_145adf010235485884ae41c78f59e5bb6d8efb"

# ffmpeg command
ffmpeg -re -i "$SOURCE" -c:v copy -c:a aac -f flv "$DEST"
