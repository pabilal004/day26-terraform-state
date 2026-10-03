# Day 30 - Advanced Terraform

## Overview

This project practices advanced Terraform concepts using the HashiCorp Local provider in a local WSL environment. No AWS account is required.

## Concepts Practiced

- Terraform variables
- Local values (locals)
- Explicit resource dependencies with depends_on
- Terraform resource state
- Environment-specific variable overrides
- Infrastructure drift detection and recovery
- Terraform project organization
- terraform init, validate, plan, apply, and state list

## Project Structure

    day30-terraform-advanced/
    ├── main.tf
    ├── variables.tf
    ├── .gitignore
    └── README.md

Terraform also creates local runtime/state files during practice. These are intentionally excluded from Git.

## How It Works

The project defines:

- project_name as a reusable local value.
- environment as an input variable.
- local_file.app to create app.txt.
- local_file.config to create config.txt.
- depends_on to explicitly make config depend on app.

## Commands Practiced

    terraform init
    terraform validate
    terraform plan
    terraform apply
    terraform apply -var="environment=production"
    terraform state list

## Drift Test

The project simulated an external/manual change:

    echo "MANUALLY CHANGED" > app.txt
    terraform plan

Terraform detected that the managed file no longer matched the configuration. Applying the configuration restored the expected content.

A final check with:

    terraform plan -var="environment=production"

returned:

    No changes. Your infrastructure matches the configuration.

## Key Learning

    Variable -> Local -> Resource
                       |
                 Terraform State

    Manual change -> Drift -> terraform plan -> terraform apply

## Security

- Terraform state files are excluded from Git.
- Variable files containing sensitive values are excluded.
- No credentials, tokens, or private keys are stored in this project.
