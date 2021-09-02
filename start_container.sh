#!/bin/bash

# Start up the Rubin Data Management container, mounting dev/ into it.
docker run \
    -v ${PWD}/dev:/home/lsst/dev \
    -d \
    --name ${USER}-rubin-dev \
    rubin-dev
