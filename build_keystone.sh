#!/bin/bash

# create the database pod and service
kubectl create -f keystone-db.yaml
kubectl create -f keystone-db-service.yaml
# create a replication cluster for keystone
kubectl create -f keystone-rc.yaml
# create a service for the public api endpoint
kubectl create -f keystone-public-service.yaml
