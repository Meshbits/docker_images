#!/usr/bin/env bash
# Script to run the image

SCRIPTNAME="$(realpath $0)"
SCRIPTPATH="$(dirname $SCRIPTNAME)"
source ${SCRIPTPATH}/../.info

docker run \
  -v ${SCRIPTPATH}/..:/home/${user}/app \
  -v ${SCRIPTPATH}/../src:/home/${user}/src \
  -v ${SCRIPTPATH}/../.komodo:/home/${user}/.komodo \
  -v ${SCRIPTPATH}/../.zcash-params:/home/${user}/.zcash-params \
  -u ${user} \
  -it ${IMAGE_NAME}:${IMAGE_VERSION} /bin/bash \
  ${1}