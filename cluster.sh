#!/bin/bash

# Define the cluster name and desired Kubernetes version
CLUSTER_NAME="sample-cluster"
KUBE_VERSION="v1.28.1"

# Check if KIND is installed
if ! command -v kind &> /dev/null; then
  echo "KIND is not installed."
  exit 1
fi

# Create a KIND cluster with the specified Kubernetes version and name
kind create cluster --config=<(cat <<EOF
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
  kubeadmConfigPatches:
  - |
    kind: InitConfiguration
    nodeRegistration:
      kubeletExtraArgs:
        node-labels: "ingress-ready=true"
        authorization-mode: "AlwaysAllow"
  extraPortMappings:
  - containerPort: 80
    hostPort: 80
EOF
)

# Get the kubeconfig for the newly created cluster
KUBECONFIG_PATH="$(kind get kubeconfig-path --name="$CLUSTER_NAME")"
cp "$KUBECONFIG_PATH" "./kubeconfig-$CLUSTER_NAME"

echo "KIND cluster $CLUSTER_NAME is created."
echo "Kubeconfig saved as ./kubeconfig-$CLUSTER_NAME"
