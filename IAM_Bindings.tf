# Replace with your GCP project ID and your personal Google account
variable "project_id" {
  default = "gcp-cloud-security-monitoring"
}

variable "user_email" {
  default = "k_omodt@msn.com"
}

resource "google_project_iam_member" "resourcemanager_admin" {
  project = var.project_id
  role    = "roles/resourcemanager.projectIamAdmin"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "iam_security_admin" {
  project = var.project_id
  role    = "roles/iam.securityAdmin"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "logging_admin" {
  project = var.project_id
  role    = "roles/logging.admin"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "monitoring_admin" {
  project = var.project_id
  role    = "roles/monitoring.admin"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "access_policy_admin" {
  project = var.project_id
  role    = "roles/accesscontextmanager.policyAdmin"
  member  = "user:${var.user_email}"
}


