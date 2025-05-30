#! /bin/bash

# name of image
IMAGE=lab-website-renderer:latest

# name of running container
CONTAINER=lab-website-renderer

# choose platform flag
PLATFORM=""

# default vars
DOCKER_RUN="docker run"
WORKING_DIR=$(pwd)

# fix windows faux linux shells/tools
if [[ $OSTYPE == msys* ]] || [[ $OSTYPE == cygwin* ]]; then
    DOCKER_RUN="winpty docker run"
    WORKING_DIR=$(cmd //c cd)
fi

# Check if image exists
if docker images --format '{{.Repository}}:{{.Tag}}' | grep -q "^${IMAGE}\$"; then
    echo "Image ${IMAGE} exists. Running container..."
else
    # build docker image if it doesn't exist
    docker build ${PLATFORM} \
        --tag ${IMAGE} \
        --file ./.docker/Dockerfile .
fi

# run built docker image
${DOCKER_RUN} ${PLATFORM} \
    --name ${CONTAINER} \
    --init \
    --rm \
    --interactive \
    --tty \
    --publish 4000:4000 \
    --publish 35729:35729 \
    --volume "${WORKING_DIR}:/usr/src/app" \
    ${IMAGE} "$@"
