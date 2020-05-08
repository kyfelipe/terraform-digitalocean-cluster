resource "digitalocean_vpc" "cluster" {
  name   = "cluster-${var.cluster_name}"
  region = var.region
  ip_range = var.vpc_ip_range
  description = "VPC on ${var.cluster_name} cluster"
}