terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

module "file" {
  source = "./modules/file"

  filename = "day29-output.txt"
  content  = "Hello from Terraform Module - Day 29!"
}
