resource "digitalocean_kubernetes_cluster" "master" {
  name    = var.cluster_name
  region  = var.region
  vpc_uuid = digitalocean_vpc.cluster.id

  version = var.kubernetes_version
  tags    = var.tags

  node_pool {
    name       = var.node_name
    size       = var.node_size
    auto_scale = var.node_autoscale
    min_nodes  = var.node_min
    max_nodes  = var.node_max
    node_count = var.node_count
    tags       = var.node_tags
  }
}
