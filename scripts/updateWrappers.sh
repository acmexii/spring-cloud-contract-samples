#!/bin/bash

set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

export ROOT="${ROOT:-`pwd`}"
export WRAPPER_VERSION="5.6.2"

for d in consumer*
do
    ( echo "Updating $d" && cd "$d" && gradle wrapper --gradle-version "${WRAPPER_VERSION}" )
done
for d in producer*
do
    (  echo "Updating $d" && cd "$d" && gradle wrapper --gradle-version "${WRAPPER_VERSION}" )
done