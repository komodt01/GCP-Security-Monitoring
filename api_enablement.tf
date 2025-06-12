resource "google_project_service" "cloudresourcemanager" {
  project = var.project_id
  service = "cloudresourcemanager.googleapis.com"
}

resource "google_project_service" "iam" {
  project = var.project_id
  service = "iam.googleapis.com"
}

resource "google_project_service" "logging" {
  project = var.project_id
  service = "logging.googleapis.com"
}

resource "google_project_service" "monitoring" {
  project = var.project_id
  service = "monitoring.googleapis.com"
}

resource "google_project_service" "accesscontextmanager" {
  project = var.project_id
  service = "accesscontextmanager.googleapis.com"
}

resource "google_project_service" "compute" {
  project = var.project_id
  service = "compute.googleapis.com"
}
