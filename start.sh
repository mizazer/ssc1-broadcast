#!/bin/bash
ffmpeg -i "https://af.ayassport.ir/hls2/ssc1.m3u8" -f flv "rtmp://live.restream.io/studio/streamv2_9518871_145adf010235485884ae41c78f59e5bb6d8efb"
