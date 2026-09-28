# Day 26 - Terraform State & Drift

## Overview

This project demonstrates Terraform state and how Terraform detects and fixes infrastructure drift.

## Technologies

- Terraform
- HCL
- WSL Ubuntu
- Git/GitHub

## What I Practiced

- Creating a Terraform-managed resource
- Understanding `terraform.tfstate`
- Using `terraform state list`
- Using `terraform state show`
- Creating infrastructure drift by manually changing a managed file
- Detecting drift with `terraform plan`
- Fixing drift with `terraform apply`
- Verifying a clean state with `terraform plan`

## Project Structure

```text
day26-terraform-state/
├── main.tf
├── README.md
└── .gitignore
```

## Terraform Workflow

```bash
terraform init
terraform plan
terraform apply
terraform state list
terraform state show local_file.drift_test
terraform plan
terraform apply
```

## Drift Demonstration

Terraform initially created the file with:

```text
Terraform managed file
```

The file was then manually changed to:

```text
I changed this manually
```

Terraform detected the difference with:

```bash
terraform plan
```

Running `terraform apply` restored the file to the desired configuration.

Final verification:

```text
No changes. Your infrastructure matches the configuration.
```

## Key Learning

- Terraform state is Terraform's record of managed infrastructure.
- `terraform.tfstate` should not normally be committed to Git.
- Drift occurs when real infrastructure differs from the desired configuration.
- `terraform plan` detects differences.
- `terraform apply` can reconcile infrastructure with the configuration.
- `terraform state list` lists resources tracked by Terraform.
- `terraform state show` displays detailed information about a tracked resource.

## Security

Terraform state can contain sensitive infrastructure information, so state files are excluded from Git using `.gitignore`.

Never commit passwords, API keys, access keys, tokens, private keys, or sensitive Terraform state.

## Author

Bilal - Cloud/DevOps learning journey
