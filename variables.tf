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

variable "cluster_region" {
  type        = string
  default     = "nyc1"
  description = "Cluster region"
}

variable "cluster_version" {
  type        = string
  default     = "1.16.6-do.0"
  description = "Cluster version"
}

variable "cluster_tags" {
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
variable "node_pool_name" {
  type        = string
  default     = "autoscale-pool-01"
  description = "Node pool name"
}

variable "node_pool_size" {
  type        = string
  default     = "s-1vcpu-2gb"
  description = "Node pool size"
}

variable "node_pool_auto_scale" {
  type        = bool
  default     = true
  description = "Node pool auto scale"
}

variable "node_pool_min_nodes" {
  type        = number
  default     = 2
  description = "Node pool min nodes"
}

variable "node_pool_max_nodes" {
  type        = number
  default     = 3
  description = "Node pool auto max nodes"
}

variable "node_pool_tags" {
  type        = list(string)
  default     = []
  description = "Node pool tags"
}
