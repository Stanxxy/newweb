# !/bin/sh
kill -s 9 $(pgrep video_server)
cd ~/newweb/
git pull git@github.com:Stanxxy/newweb.git master
cd video_server/
./video_server &
