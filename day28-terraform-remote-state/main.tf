terraform {
  backend "local" {
    path = "terraform.tfstate"
  }

  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "remote_state_demo" {
  filename = "${path.module}/remote-state-demo.txt"
  content  = "Terraform Remote State Practice - Day 28"
}
