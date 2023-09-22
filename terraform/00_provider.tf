provider "kubernetes" {
  config_path = "/home/vagrant/.kube/config"  #path to kubeconfig
  config_context = "sample-cluster" #context name of cluster
  load_config_file = false
}

terraform {
  required_providers {
    kind = {
      source  = "tehcyx/kind"
      version = "0.2.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.10.1"
    }

    null = {
      source  = "hashicorp/null"
      version = "3.2.1"
    }

    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }

  required_version = ">= 1.0.0"
}
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }

  # localhost registry with password protection
  registry {
    url = "oci://localhost:5000"
    username = "username"
    password = "password"
  }

  # private registry
  registry {
    url = "oci://private.registry"
    username = "username"
    password = "password"
  }
