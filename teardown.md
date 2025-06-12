
# Teardown Instructions

## Step 1: Remove Terraform Resources
```bash
terraform destroy
```

## Step 2: Manually Verify Clean-Up
- Visit IAM & Admin > Audit Logs to ensure log-based metric no longer triggers
- Visit Monitoring > Alert Policies to confirm removal
- Ensure IAM bindings with conditions are revoked

## Step 3: Delete the GCP Project (Optional)
```bash
gcloud projects delete <project_id>
```
Use this only if the project was created solely for this lab.
