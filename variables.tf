# Provider vars
variable "token" {
  type        = string
  description = "Digitalocean Token"
}

# Cluster vars
variable "cluster_name" {
  type        = string
  description = " A name for the Kubernetes cluster."
}

variable "region" {
  type        = string
  default     = "nyc1"
  description = "Cluster region"
}

variable "auto_upgrade" {
  type        = bool
  default     = false
  description = "A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window."
}

variable "surge_upgrade" {
  type        = bool
  default     = false
  description = "Cluster region"
}

variable "k8s_version_prefix" {
  type        = string
  default     = "1.18."
  description = "DO Kubernetes version prefix"
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
  default     = "s-2vcpu-2gb"
  description = "The slug identifier for the type of Droplet to be used as workers in the node pool."
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

# VPC vars
variable "vpc_ip_range" {
  type        = string
  default     = "10.20.0.0/16"
  description = "The range of IP addresses for the VPC in CIDR notation"
}
