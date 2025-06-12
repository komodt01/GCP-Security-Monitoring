
# Lessons Learned

## Access Context Manager Limitation
GCP does not support Access Context Manager (VPC SC, Access Levels, Access Policies) without an Organization node. 
Because this project was conducted without an Organization, we were unable to use Terraform to deploy VPC Service Controls or IP-based Access Levels.

## IAM Conditions Scope
`request.ip` is only valid within Access Context Manager conditions, not in `google_project_iam_binding`. We pivoted to using `request.time` for time-based conditional access.

## Alerting Channel API Behavior
The Monitoring Notification Channel API returned intermittent 503 errors. This part of the project will be completed manually or revisited after backend stabilization.

## Best Practice
Applying Terraform in modular phases (one file or feature at a time) made troubleshooting significantly easier and more predictable.
