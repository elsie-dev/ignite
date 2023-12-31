# # variable "kind_cluster_name" {
# #   type        = string
# #   description = "cluster name."
# #   default     = "sample"
# # }

# # variable "kind_cluster_config_path" {
# #   type        = string
# #   description = "The location where this cluster's kubeconfig will be saved to."
# #   default     = "~/.kube/config"
# # }

# variable "ingress_nginx_helm_version" {
#   type        = string
#   description = "Helm version for the nginx ingress controller."
#   default     = "4.7.1"
# }

# variable "ingress_nginx_namespace" {
#   type        = string
#   description = "The nginx ingress namespace."
#   default     = "ingress-nginx"
# }

# # variable "kubectl_manifests" {
# #   type        = string
# #   description = "Raw yaml manifest example."

# # }


variable "kind_cluster_name" {
  type        = string
  description = "cluster name."
  default     = "demo-local"
}

variable "kind_cluster_config_path" {
  type        = string
  description = "The location where this cluster's kubeconfig will be saved to."
  default     = "~/.kube/config"
}

variable "ingress_nginx_helm_version" {
  type        = string
  description = "The Helm version for the nginx ingress controller."
  default     = "4.7.1"
}

variable "ingress_nginx_namespace" {
  type        = string
  description = "The nginx ingress namespace (it will be created if needed)."
  default     = "ingress-nginx"
}