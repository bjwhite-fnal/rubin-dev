#!/bin/bash
docker run \
    -v ${PWD}/mount:/home/lsst/dev \
    -d \
    -it \
    --name ${USER}-rubin-dev \
    rubin-dev
