# Terraform variables for the Civo provider.

# This is the Civo API token. You can get this from the Civo dashboard. While there are better methods
# to managing secrets, this is a simple way to get started. Store it in a terrafom.tfvars file and ensure
# this file is included in your .gitignore file.
variable "civo_token" {
  description = "Civo API token."
  type        = string
}

variable "region" {
  type        = string
  description = "The region for your cluster."
  default     = "NYC1"
}

# Set the authorized network for your cluster. I set the source IP of my home router.
# You can easily find your IP address by searching "What is my IP address" on Google or
# from the command line by running "curl ifconfig.me" or "curl -4 icanhazip.com"

variable "authorized_networks" {
  type        = set(string)
  description = "The authorized network for your cluster."
  default     = ["0.0.0.0/32"]
}

# Set k3s cluster variables.

variable "cluster_type" {
  type        = string
  description = "The type of cluster to create."
  default     = "k3s"
}
variable "name" {
  type        = string
  description = "The name for your cluster."
  default     = "k3s-cluster"
}

variable "kubernetes_version" {
  type        = string
  description = "The version of Kubernetes to use."
  default     = "v1.29.2-k3s1"
}

variable "label" {
  type        = string
  description = "Label for the main node pool."
  default     = "k3s-cluster"
}