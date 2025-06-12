
resource "google_access_context_manager_access_policy" "org_policy" {
  parent = "organizations/123456789"  # You must replace this manually if needed
  title  = "GCP Security Policy"
}
