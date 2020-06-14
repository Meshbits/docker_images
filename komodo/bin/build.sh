#!/usr/bin/env bash
# Script to build a local docker image

SCRIPTNAME="$(realpath $0)"
SCRIPTPATH="$(dirname $SCRIPTNAME)"
source ${SCRIPTPATH}/../.info

docker build -t ${IMAGE_NAME}:${IMAGE_VERSION} "${SCRIPTPATH}/.."