rm -rf hls
mkdir hls
#ffmpeg -re -i test5.mkv -map 0:v -map 0:a -f hls ./hls/master.m3u8

ffmpeg -i test5.mkv \
 -master_pl_name master.m3u8 \
 -g 30 \
 -hls_time 2 \
 -hls_list_size 0 \
 -f hls \
 -map 0:v \
 -map 0:a \
 hls/kevin.m3u8
