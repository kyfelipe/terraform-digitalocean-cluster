data "digitalocean_kubernetes_versions" "cluster" {
  version_prefix = var.k8s_version_prefix
}

resource "digitalocean_kubernetes_cluster" "master" {
  name     = var.cluster_name
  region   = var.region
  vpc_uuid = digitalocean_vpc.cluster.id

  auto_upgrade  = var.auto_upgrade
  surge_upgrade = var.surge_upgrade

  version = data.digitalocean_kubernetes_versions.cluster.latest_version
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

  depends_on = [digitalocean_vpc.cluster]
}
