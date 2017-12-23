#!/bin/bash

docker build -f Dockerfile.alpine -t cmmc/iot-cmmc-devices2:latest  .
docker build -f Dockerfile.rpi -t cmmc/iot-cmmc-devices2:rpi .
docker build -f Dockerfile.rpi2 -t cmmc/iot-cmmc-devices2:rpi2 .
docker build -f Dockerfile.rpi3 -t cmmc/iot-cmmc-devices2:rpi3 .

docker tag cmmc/iot-cmmc-devices2:latest cmmc/iot-cmmc-devices:latest
docker tag cmmc/iot-cmmc-devices2:rpi cmmc/iot-cmmc-devices:rpi
docker tag cmmc/iot-cmmc-devices2:rpi2 cmmc/iot-cmmc-devices:rpi2
docker tag cmmc/iot-cmmc-devices2:rpi3 cmmc/iot-cmmc-devices:rpi3

#
#docker push cmmc/iot-cmmc-devices2:latest
#docker push cmmc/iot-cmmc-devices2:rpi
#docker push cmmc/iot-cmmc-devices2:rpi2
#docker push cmmc/iot-cmmc-devices2:rpi3
#
#docker push cmmc/iot-cmmc-devices:latest
#docker push cmmc/iot-cmmc-devices:rpi
#docker push cmmc/iot-cmmc-devices:rpi2
#docker push cmmc/iot-cmmc-devices:rpi3
#