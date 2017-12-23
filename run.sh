#!/bin/ash

env 
echo $MQTT_HOST
wget $(wget -q -O- https://api.github.com/repos/cmmakerclub/cmmc-devices2/releases/latest | jq -r  ".assets[].browser_download_url") -O- | tar xvz -C /home/www
find /home/www
sed -i "s/hostname: DEFAULT_MQTT_HOSTNAME/hostname: '$MQTT_HOST'/g" /home/www/main.bundle.js
sed -i "s/port: DEFAULT_MQTT_WS_PORT/port: '$MQTT_WS_PORT'/g" /home/www/main.bundle.js
sed -i "s/filter: DEFAULT_MQTT_FILTER/filter: '$MQTT_TOPIC_FILTER'/g" /home/www/main.bundle.js

  # path: DEFAULT_MQTT_WS_PATH,
  # filter: DEFAULT_MQTT_FILTER,
  # topic: DEFAULT_MQTT_TOPIC

darkhttpd /home/www --port 8080