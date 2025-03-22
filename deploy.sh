#!/bin/bash

set -e

# Server deployment
kubectl apply -f server/deployment.yaml
kubectl apply -f server/service.yaml

# Service-registry deployment
kubectl apply -f service-registry/deployment.yaml
kubectl apply -f service-registry/service.yaml

# Scrapper-service deployment
kubectl apply -f scrapper-service/deployment.yaml
kubectl apply -f scrapper-service/service.yaml