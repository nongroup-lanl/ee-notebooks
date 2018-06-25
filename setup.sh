#!/bin/bash
export GCP_PROJECT_ID=sandbox-project-207822
export CONTAINER_IMAGE_NAME=gcr.io/earthengine-project/datalab-ee:latest
export WORKSPACE=/Users/rmsare/workspace/datalab-ee
mkdir -p $WORKSPACE
cd $WORKSPACE
docker run -it -p "127.0.0.1:8081:8080" -v "$WORKSPACE:/content" -e "PROJECT_ID=$GCP_PROJECT_ID" $CONTAINER_IMAGE_NAME
