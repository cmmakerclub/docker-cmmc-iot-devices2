#!/bin/ash

wget $(wget -q -O- https://api.github.com/repos/cmmakerclub/cmmc-devices2/releases/latest | jq -r  ".assets[].browser_download_url") -O- | tar xvz -C /home/www
# unzip -qqo dist.zip -d /home/www
# tar -xvf dist.tar.gz -C /home/www

darkhttpd /home/www --port 8080