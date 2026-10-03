terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

locals {
  project_name = "cloud-devops"
  environment  = var.environment
}

resource "local_file" "app" {
  filename = "${path.module}/app.txt"
  content  = "Project: ${local.project_name}\nEnvironment: ${local.environment}"
}

resource "local_file" "config" {
  depends_on = [local_file.app]

  filename = "${path.module}/config.txt"
  content  = "Configuration for ${local.project_name}"
}
