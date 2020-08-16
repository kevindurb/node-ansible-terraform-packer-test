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
  image = "68530033"
  name = "api"
  region = "nyc3"
  size = "s-1vcpu-1gb"
}

output "web_ip" {
  value = digitalocean_droplet.web.ipv4_address
}
