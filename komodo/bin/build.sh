#!/usr/bin/env bash
# Script to build a local docker image
set -e

SCRIPTNAME="$(realpath $0)"
SCRIPTPATH="$(dirname $SCRIPTNAME)"
source ${SCRIPTPATH}/../.info

#docker build -t ${IMAGE_NAME}:${IMAGE_VERSION} "${SCRIPTPATH}/.."
#docker tag IMAGE_ID docker.pkg.github.com/${OWNER}/${REPOSITORY}/${IMAGE_NAME}:${IMAGE_VERSION}

for IMAGE_NAME in linux win; do
  docker build -t docker.pkg.github.com/${OWNER}/${REPOSITORY}/komodobuild_${IMAGE_NAME}:${IMAGE_VERSION} -f "Dockerfile_${IMAGE_NAME}" "${SCRIPTPATH}/.."
done
