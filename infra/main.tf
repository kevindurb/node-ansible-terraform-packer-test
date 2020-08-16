terraform {
  required_providers {
    digitalocean = {
      source = "terraform-providers/digitalocean"
    }
  }
}

variable "digitalocean_api_token" {}

provider "digitalocean" {
  token = var.digitalocean_api_token
}

resource "digitalocean_droplet" "web" {
  image  = "68520945"
  name   = "api"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
}
