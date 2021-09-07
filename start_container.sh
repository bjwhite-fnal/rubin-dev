#!/bin/bash
release=`python -mplatform`
if [[ ${release} == *redhat* ]]; then
    container_manager='podman'
fi

# Start up the Rubin Data Management container, mounting dev/ into it.
echo "manager: ${container_manager}"
${container_manager} run \
    -v ${PWD}/dev:/home/lsst/dev \
    -d \
    -it \
    --name ${USER}-rubin-dev \
    rubin-dev
