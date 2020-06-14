#!/usr/bin/env bash
# Script to build a local docker image

SCRIPTNAME="$(realpath $0)"
SCRIPTPATH="$(dirname $SCRIPTNAME)"
source ${SCRIPTPATH}/../.info

#docker build -t ${IMAGE_NAME}:${IMAGE_VERSION} "${SCRIPTPATH}/.."
#docker tag IMAGE_ID docker.pkg.github.com/${OWNER}/${REPOSITORY}/${IMAGE_NAME}:${IMAGE_VERSION}

docker build -t docker.pkg.github.com/${OWNER}/${REPOSITORY}/${IMAGE_NAME}:${IMAGE_VERSION} "${SCRIPTPATH}/.."

docker push docker.pkg.github.com/${OWNER}/${REPOSITORY}/${IMAGE_NAME}:${IMAGE_VERSION}