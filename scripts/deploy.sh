#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 8444
# Hash 1315
# Hash 3019
# Hash 2958
# Hash 4284
# Hash 6658
# Hash 5264
# Hash 7931
# Hash 8376
# Hash 3831
# Hash 3440
# Hash 9336
# Hash 6631
# Hash 5559
# Hash 7348
# Hash 7449
# Hash 4162
# Hash 9670
# Hash 7001
# Hash 4966
# Hash 8142
# Hash 3476
# Hash 2655
# Hash 3099
# Hash 5444
# Hash 2078
# Hash 4004