#!/bin/sh

if [ -z "${1}" ]; then
   version="latest"
else
   version="${1}"
fi

IMAGE="viniciussalmeida/jenkins:${version}"

echo "Building ${IMAGE} image..."
docker build -t ${IMAGE} .