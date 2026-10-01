# Day 29 - Terraform Modules

## Overview
A practical Terraform project demonstrating reusable child modules using the local provider.

## What I practiced
- Root modules and child modules
- Calling a child module with a `module` block
- Passing variables into a module
- Returning values with module outputs
- Referencing child-module outputs from the root module
- Terraform state paths for resources managed by modules
- `terraform init`, `terraform validate`, `terraform plan`, `terraform apply`, and `terraform state list`

## Project structure

```text
day29-terraform-modules/
├── main.tf
├── outputs.tf
├── .gitignore
└── modules/
    └── file/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

## Workflow

1. The root module calls `./modules/file`.
2. The root module passes `filename` and `content`.
3. The child module creates a local file.
4. The child module returns `file_path).
5. The root module exposes that value as `created_file_path`.
6. `terraform plan` verifies the desired state.
7. `terraform apply` creates the file.
8. `terraform state list` shows the resource as `module.file.local_file.this`.

## Key learning

A Terraform module is a reusable building block. Modules help organize larger Terraform codebases and reduce repeated configuration.

## Security

Terraform state files and working directories are excluded with `.gitignore`. Do not commit secrets, credentials, or state files to a public repository.
