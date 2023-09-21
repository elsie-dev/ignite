# kubectl --kubeconfig "$(kind get kubeconfig-path --name=cluster)" config view
# kind create cluster --name my-kind
# kind get kubeconfig-path --name my-kind


#!/bin/bash
CLUSTER_NAME="sample-cluster"

#creating cluster using kind locally
kind create cluster --name "$CLUSTER_NAME"

#checking if cluster is created successfully
kind get clusters

# Saving kubeconfig to ~/.kube/config
KUBECONFIG_PATH="$(kind get kubeconfig-path --name "$CLUSTER_NAME")"
cp "$KUBECONFIG_PATH" ~/.kube/config

echo "KIND cluster $CLUSTER_NAME created and kubeconfig saved ."