resource "google_project" "lhq_dev_project" {
  name       = "lhq-dev-projectXYZ"
  project_id = "lhq-dev-projectxyz-id"
  folder_id  = var.gcp_folder_id
}