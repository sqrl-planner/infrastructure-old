terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "sqrl-planner"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "infrastructure"
    }
  }
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.36.2"
    }
  }
}

variable "hcloud_token" {
  type      = string
  default   = ""
  sensitive = true
}


provider "hcloud" {
  token = var.hcloud_token
}

resource "hcloud_ssh_key" "eamon_key" {
  name = "eamon_key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO2UGRoGNRda03FC6YzqYUFLmh6UGMtLoOUZrOOq2kN2 m@eamonma.com"
}

# resource "hcloud_primary_ip" "main" {
#   name          = "main"
#   datacenter    = "ash-dc1"
#   type          = "ipv4"
#   assignee_type = "server"
#   auto_delete   = false
# }

# resource "hcloud_server" "web1" {
#   name        = "web1"
#   image       = "ubuntu-22.04"
#   server_type = "cpx11"
#   datacenter  = "ash-dc1"

#   ssh_keys = [
#     hcloud_ssh_key.eamon_key.id
#   ]

#   public_net {
#     ipv4_enabled = true
#     ipv6_enabled = true
#     ipv4         = hcloud_primary_ip.main.id
#   }
# }
