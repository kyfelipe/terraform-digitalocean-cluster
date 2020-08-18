Exemplo de main.tf para uso do módulo

```hcl
variable "token" {}

module "do_kubernetes_cluster" {
  source       = "kyfelipe/cluster/digitalocean"
  version      = "0.1.2"
  token        = var.token
  cluster_name = "cluster-name"
}
```
