#!/bin/bash
# delete all of our kubernetes objects

#kubectl delete -f keystone-admin-service.yaml

kubectl delete -f keystone-public-service.yaml
kubectl delete -f keystone-rc.yaml
kubectl delete -f keystone-db-service.yaml
kubectl delete -f keystone-db.yaml
