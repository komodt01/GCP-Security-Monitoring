Functional Requirements

Enable core GCP services for logging and monitoring.

Create IAM bindings with conditions for restricted access.

Define at least one Access Level or IAM condition policy.

Capture audit and access events in Cloud Logging.

Create a log-based metric that detects a defined security event.

Configure an alerting path based on that metric (where available).

Non-Functional Requirements

Use Terraform for repeatable deployment.

Use least-privilege IAM roles for Terraform and monitoring.

Avoid manual configuration in the console where possible.

Keep the design cloud-native and limited to GCP-managed services.

Security Requirements

All IAM changes must be auditable.

Access restrictions must be enforced through IAM Conditions
or Access Levels where supported.

Logs must capture both successful and failed access attempts.

Alerting should highlight events that may indicate misuse
or misconfiguration.

Compliance Requirements

Support basic mapping to NIST 800-53 AC and AU families.

Support logging and review requirements similar to ISO 27001.

Retain logs long enough to support basic audit needs
(retention duration depends on environment).
