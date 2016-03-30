#!/bin/bash
TAG=jicksta/caradoc
docker build --quiet --tag $TAG .
docker run --volume $PWD/mnt:/mnt -it $TAG
