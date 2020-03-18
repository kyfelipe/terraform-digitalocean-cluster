resource "digitalocean_kubernetes_cluster" "cluster" {
  name    = var.cluster_name
  region  = var.cluster_region
  version = var.cluster_version
  tags    = var.cluster_tags

  node_pool {
    name       = var.node_pool_name
    size       = var.node_pool_size
    auto_scale = var.node_pool_auto_scale
    min_nodes  = var.node_pool_min_nodes
    max_nodes  = var.node_pool_max_nodes
    tags       = var.node_pool_tags
  }
}
