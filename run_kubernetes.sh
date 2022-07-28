#!/usr/bin/env bash

# This tags and uploads an image to Kubernetes

# Step 1:
# This is your Docker ID/path
dockerpath="cfcife/cfcife-microsvc:v1.0.0"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy cfcife-microsvc --image=$dockerpath --port=80
# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/cfcife-microsvc --address 8000:80