resource "local_file" "kubeconfig" {
  content         = digitalocean_kubernetes_cluster.master.kube_config[0].raw_config
  filename        = var.kubeconfig_path
  file_permission = "600"
}
