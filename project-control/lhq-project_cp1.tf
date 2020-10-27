resource "google_project" "lhq_project_cp1" {
  name       = var.gcp_project_name
  project_id = "${var.gcp_project_name}-id"
  folder_id  = var.gcp_folder_id
  billing_account = var.gcp_billing_account

  auto_create_network = false

}

resource "google_project_service" "project_apis" {
  project = google_project.lhq_project_cp1.project_id
  service = "iam.googleapis.com"

  disable_dependent_services = true
}