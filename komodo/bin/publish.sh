#!/usr/bin/env bash
# Script to build a local docker image
set -e

SCRIPTNAME="$(realpath $0)"
SCRIPTPATH="$(dirname $SCRIPTNAME)"
source ${SCRIPTPATH}/../.info

for IMAGE_NAME in linux win; do
  docker push docker.pkg.github.com/${OWNER}/${REPOSITORY}/komodobuild_${IMAGE_NAME}:${IMAGE_VERSION}
done
