terraform {
  required_providers {
    digitalocean = {
      source = "terraform-providers/digitalocean"
    }

    local = {
      source = "hashicorp/local"
    }
  }

  required_version = ">= 0.13"
}
