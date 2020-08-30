#!/bin/bash

# VARS ***************************************
# You can change any parameters here

IMAGE_NAME="my-nginx"
CONTAINER_NAME="nginx"
CLIENT_PORT="80"
CONTAINER_PORT="80"

# COMMANDS ***********************************

# Checks if the container already exists. Make sure the chosen container name isn't already in use
docker container inspect $CONTAINER_NAME > /dev/null 2>/dev/null

# If the container exists, delete it
if [ $? -eq 0 ]
then
    docker container rm -f $CONTAINER_NAME
fi

# Build the image
docker build -t $IMAGE_NAME .

# Run the container
docker run -d -p $CLIENT_PORT:$CONTAINER_PORT --name $CONTAINER_NAME $IMAGE_NAME