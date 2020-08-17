#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag house_prediction .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run --publish 8000:80 --detach --name house_prediction house_prediction