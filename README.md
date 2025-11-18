# GCP Cloud Security Monitoring Project

## Purpose
This project implements a small Google Cloud security monitoring pattern.
It uses IAM Conditions, Access Policies, Cloud Logging, and Monitoring to
detect and alert on high-risk access activity in a GCP environment.

The goal is to demonstrate how native GCP services can be used to enforce
access governance, capture audit events, and build basic security signals.

## What This Project Does
- Enables the required GCP APIs for security and logging
- Creates IAM bindings with conditions for restricted access
- Defines an Access Policy and Access Level where supported
- Captures audit logs and access events through Cloud Logging
- Creates a log-based metric that identifies security-relevant events
- Provides a foundation for attaching an alert policy to the metric
- Includes Terraform teardown instructions for clean removal

## How It Works
1. IAM Conditions and Access Levels restrict access to selected resources.
2. GCP services generate audit logs and access logs.
3. Cloud Logging collects these logs in a centralized location.
4. A log-based metric filters for specific events of interest.
5. Monitoring can trigger alerts based on the metric.
6. Optional VPC Service Controls can be added if the environment supports it.
7. All configuration is deployed through Terraform for repeatability.

## Key Components
- IAM Conditions and IAM Bindings
- Access Policy and Access Level (where organization support exists)
- Cloud Logging and log-based metrics
- Cloud Monitoring alerting (design included)
- VPC Service Controls (optional and environment-dependent)
- API enablement for security and monitoring services

## Repository Files
- access_level.tf  
- access_policy.tf  
- api_enablement.tf  
- IAM_Bindings.tf  
- iam_conditions.tf  
- logging.tf  
- vpc_sc.tf  
- compliance_mapping.md  
- lessonslearned.md  
- teardown.md  
- GCP Cloud Security Monitoring Diagram.png (optional)

## Deployment
Configure variables in terraform.tfvars (or terraform.tfvars.example).

Run:
terraform init  
terraform plan  
terraform apply

## Teardown
See teardown.md for instructions to safely remove all resources.

## Notes
This project is for learning and portfolio demonstration only.
It is not intended to replace a full enterprise monitoring or SOC solution.
