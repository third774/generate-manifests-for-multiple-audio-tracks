###
Good docs:
http://underpop.online.fr/f/ffmpeg/help/options-51.htm.gz
###

rm -rf hls
mkdir hls

echo "Generating HLS manifest"
ffmpeg -i test5.mkv \
-master_pl_name master.m3u8 \
-g 30 \
-hls_time 2 \
-hls_list_size 0 \
-f hls \
-map 0:v \
-map 0:a \
hls/segment_.m3u8

echo "Playing video"
ffplay hls/master.m3u8

