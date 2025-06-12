resource "google_project_iam_binding" "logging_viewer_time_based" {
  project = var.project_id
  role    = "roles/logging.viewer"

  members = [
    "user:${var.user_email}"
  ]

  condition {
    title       = "TimeBasedAccess"
    description = "Allow access only after Jan 1, 2024"
    expression  = "request.time >= timestamp('2024-01-01T00:00:00Z')"
  }
}
