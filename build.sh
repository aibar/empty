#!/bin/bash

docker build --rm \
       -f Dockerfile-builder \
       -t empty-builder .

docker run --rm -it \
       -v $PWD:/mnt \
       empty-builder \
       cp /rootfs.tar.gz /mnt