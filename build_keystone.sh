# create the cluster if it does not exist
if ! `gcloud container clusters describe keystone`; then
  gcloud container clusters create keystone --num-nodes 3 --machine-type g1-small
fi

# create the database pod and service
kubectl create -f keystone-db.yaml
kubectl create -f keystone-db-service.yaml
kubectl create -f keystone.yaml

