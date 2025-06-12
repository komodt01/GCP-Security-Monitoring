
resource "google_logging_metric" "access_denied_metric" {
  project = var.project_id
  name    = "access_denied_count"
  filter  = "resource.type=\"gce_instance\" AND severity=\"ERROR\" AND protoPayload.status.code=7"

  metric_descriptor {
    display_name = "Access Denied Count"
    metric_kind  = "DELTA"
    value_type   = "INT64"
    unit         = "1"
  }
}
