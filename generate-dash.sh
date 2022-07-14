rm -rf dash
mkdir dash
ffmpeg -re -i test5.mkv -map 0:v -map 0:a -f dash ./dash/master.mpd
