export PROJECT_ID=test-269303
export CLUSTER_NAME=cluster-1
export DEPLOYMENT_NAME=deployment-1
export IMAGE=gcr.io/$PROJECT_ID/websocket-build-tests:latest

gcloud container clusters create $CLUSTER_NAME --flags-file=./cluster_flags.yaml
gcloud container clusters get-credentials $CLUSTER_NAME
kubectl create deployment $DEPLOYMENT_NAME --image=$IMAGE
kubectl expose deployment $DEPLOYMENT_NAME \
    --type LoadBalancer --port 80 --target-port 8080
