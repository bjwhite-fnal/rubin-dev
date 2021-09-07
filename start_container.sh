#!/bin/bash
release=`awk -F= '/^NAME/{print $2}' /etc/os-release | tr -d '\n'`
if [[ ${release} == "\"Scientific Linux\"" ]]; then
    container_manager='podman'
else
    container_manager='docker'
fi

# Start up the Rubin Data Management container, mounting dev/ into it.
echo "manager: ${container_manager}"
${container_manager} run \
    -v ${PWD}/dev:/home/lsst/dev \
    -d \
    -it \
    --name ${USER}-rubin-dev \
    rubin-dev
