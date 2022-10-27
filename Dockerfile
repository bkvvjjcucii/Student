FROM heroku/heroku:18
RUN apt install ffmpeg
RUN ffmpeg -re -i https://b1news.beritasatumedia.com/Beritasatu/B1News_manifest.m3u8 -c:v copy -c:a aac -ar 44100 -ab 128k -ac 2 -strict -2 -flags +global_header -bsf:a aac_adtstoasc -bufsize 2000k -f flv "rtmp://a.rtmp.youtube.com/live2/uz4g-t2ue-harg-pw1a-3439"
CMD bash heroku.sh
