kubectl delete service $DEPLOYMENT_NAME
kubectl delete deployment $DEPLOYMENT_NAME
gcloud container clusters delete $CLUSTER_NAME --quiet \
    --project=$PROJECT_ID

