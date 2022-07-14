rm -rf hls
mkdir hls
ffmpeg -re -i test5.mkv -map 0:v -map 0:a -f hls ./hls/master.m3u8
