# !/bin/sh
kill -s 9 $(pgrep webserver)
cd ~/newweb/
git pull git@github.com:Stanxxy/newweb.git
cd webserver/
./webserver &
