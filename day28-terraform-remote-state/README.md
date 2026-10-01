# Day 28 - Terraform Remote State Practice

## Overview

This project demonstrates Terraform state management and the concepts behind remote state. Because no AWS account is available for this practice, the project uses Terraform's local backend while simulating the workflow used with a remote backend such as Amazon S3.

## What I Practiced

- Terraform backend configuration
- Local Terraform state
- Remote state concepts
- `terraform init`
- `terraform plan`
- `terraform apply`
- `terraform state list`
- `terraform state show`
- Terraform drift detection
- Reconciliation of infrastructure drift
- Protecting Terraform state with `.gitignore`

## Project Structure

```text
day28-terraform-remote-state/
├── main.tf
├── .gitignore
└── README.md
```

## Terraform Workflow

```bash
terraform init
terraform plan
terraform apply
terraform state list
terraform state show local_file.remote_state_demo
terraform plan
terraform apply
terraform plan
```

## Drift Demonstration

Terraform initially created a local file containing:

```text
Terraform Remote State Practice - Day 28
```

The file was then manually changed outside Terraform to demonstrate drift. `terraform plan` detected the difference, and `terraform apply` reconciled the resource back to the Terraform configuration.

Final verification returned:

```text
No changes. Your infrastructure matches the configuration.
```

## Remote State Concept

In a team environment, Terraform state can be stored in a remote backend such as Amazon S3 so multiple engineers can work with shared state. State locking helps prevent conflicting Terraform operations.

This practice project uses the local backend because no AWS account is configured.

## Security

Terraform state can contain sensitive infrastructure information. State files, `.terraform/`, variable files, and crash logs are excluded using `.gitignore`.

Never commit passwords, API keys, AWS access keys, tokens, private keys, or Terraform state to a public repository.

## Author

Bilal - Cloud/DevOps learning journey
