resource "google_project" "lhq_prod_project" {
  name       = "lhq-prod-projectXYZ"
  project_id = "${self.name}-id"
  folder_id  = var.gcp_folder_id
}