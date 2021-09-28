#!/bin/bash
docker build -t dm-image -f docker/Dockerfile .
# load variables starting with "C8YDM"
docker run --env-file <(env | grep C8YDM) \
           --rm --name dm-agent -it -v /var/run/docker.sock:/var/run/docker.sock dm-image
