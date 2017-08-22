#!/bin/bash

docker build -f Dockerfile.alpine -t cmmc/iot-cmmc-devices:latest  .
docker build -f Dockerfile.rpi -t cmmc/iot-cmmc-devices:rpi .
docker build -f Dockerfile.rpi2 -t cmmc/iot-cmmc-devices:rpi2 .
docker build -f Dockerfile.rpi3 -t cmmc/iot-cmmc-devices:rpi3 .
