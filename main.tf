terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "drift_test" {
  filename = "${path.module}/drift.txt"
  content  = "Terraform managed file"
}
