
resource "google_access_context_manager_service_perimeter" "vpc_sc_perimeter" {
  name        = "accessPolicies/${google_access_context_manager_access_policy.org_policy.name}/servicePerimeters/gcp-cloud-security-perimeter"
  parent      = "accessPolicies/${google_access_context_manager_access_policy.org_policy.name}"
  title       = "GCP Cloud Security Perimeter"
  description = "Restricts access to selected services in this project"

  status {
    resources = ["projects/${var.project_number}"]

    restricted_services = [
      "logging.googleapis.com",
      "bigquery.googleapis.com",
      "storage.googleapis.com"
    ]

    access_levels = [
      "accessPolicies/${google_access_context_manager_access_policy.org_policy.name}/accessLevels/allow_ip_7324316848"
    ]
  }
}
