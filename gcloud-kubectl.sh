# set kubectl context for newly created GKE cluster
export PROJECT_ID = "insert your project id here"
export GKE_CLUSTER_ID = "insert your gke cluster id here"

echo 'checking gcloud version if it fails, probably gcloud cli not installed'
gcloud version

echo 'setting up kubectl to use gke cluster $GKE_CLUSTER_ID'
gcloud container clusters get-credentials $GKE_CLUSTER_ID --region europe-west3 --project $PROJECT_ID
