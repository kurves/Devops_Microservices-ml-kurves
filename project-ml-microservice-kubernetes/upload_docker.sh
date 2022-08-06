#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=kurves/kurves-sklearn-python
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag kurves-sklearn-python kurves/kurves-sklearn-python
# Step 3:
# Push image to a docker repository
docker push kurves/kurves-sklearn-python:latest
