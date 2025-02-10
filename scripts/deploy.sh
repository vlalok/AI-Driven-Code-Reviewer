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
# Hash 5404
# Hash 8811
# Hash 9176
# Hash 1823
# Hash 9600
# Hash 8736
# Hash 9087
# Hash 3279
# Hash 4190
# Hash 6459
# Hash 1934
# Hash 1672
# Hash 2166
# Hash 4031
# Hash 2369
# Hash 4334
# Hash 2044
# Hash 4343
# Hash 9790
# Hash 3436
# Hash 1653
# Hash 1652
# Hash 9026
# Hash 1451
# Hash 7951
# Hash 5720
# Hash 5467
# Hash 8563
# Hash 2086
# Hash 9927
# Hash 7814
# Hash 3314
# Hash 5899
# Hash 5339
# Hash 1218
# Hash 7874
# Hash 4487
# Hash 2651
# Hash 7304
# Hash 5366
# Hash 1313
# Hash 8812
# Hash 1992
# Hash 4534
# Hash 3477
# Hash 7123
# Hash 6588
# Hash 7620
# Hash 6296
# Hash 4549
# Hash 2919
# Hash 4990
# Hash 4540
# Hash 8896
# Hash 8422
# Hash 3277
# Hash 2896
# Hash 7558