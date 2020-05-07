# Provider vars
variable "token" {
  type        = string
  description = "Digitalocean Token"
}

# Cluster vars
variable "cluster_name" {
  type        = string
  description = "Cluster name"
}

variable "region" {
  type        = string
  default     = "nyc1"
  description = "Cluster region"
}

variable "kubernetes_version" {
  type        = string
  default     = "1.16.8-do.0"
  description = "DO Kubernetes version"
}

variable "tags" {
  type        = list(string)
  default     = []
  description = "Cluster tags"
}

variable "kubeconfig_path" {
  type        = string
  default     = "./kubeconfig"
  description = "Kubeconfig path"
}

# Node pool vars
variable "node_name" {
  type        = string
  default     = "autoscale-pool-01"
  description = "Node name"
}

variable "node_size" {
  type        = string
  default     = "s-1vcpu-2gb"
  description = "Node size"
}

variable "node_autoscale" {
  type        = bool
  default     = true
  description = "Node auto scale"
}

variable "node_min" {
  type        = number
  default     = 2
  description = "Min nodes"
}

variable "node_max" {
  type        = number
  default     = 3
  description = "Max nodes"
}

variable "node_tags" {
  type        = list(string)
  default     = []
  description = "Node tags"
}

variable "node_count" {
  type        = number
  default     = 1
  description = "Node count"
}
