#!/bin/bash

docker build -f Dockerfile.alpine -t cmmc/static-webserver:latest  .
docker build -f Dockerfile.rpi -t cmmc/static-webserver:rpi .
docker build -f Dockerfile.rpi2 -t cmmc/static-webserver:rpi2 .
docker build -f Dockerfile.rpi3 -t cmmc/static-webserver:rpi3 .
