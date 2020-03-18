Exemplo de main.tf para uso do módulo
```
variable "token" {}

module "kubernetes_cluster" {
  source       = "kyfelipe/digitalocean/cluster"
  version      = "0.1.0"
  token        = var.token
  cluster_name = "cluster-name"
}
```
