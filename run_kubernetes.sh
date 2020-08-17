#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=narothamsai/house-prediction

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment house-prediction --image=$dockerpath 

# Step 3:
# List kubernetes pods
kubectl get pods

kubectl rollout status deployment house-prediction

kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/house-prediction 8000:80
