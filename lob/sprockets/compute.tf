module "compute-instance" {
  source  = "app.terraform.io/leblanchq/compute-instance/google"
  version = "1.0.5"
  svpc_project_name = var.gcp_project
  subnet = data.terraform_remote_state.lhq_ca_network.ca_subnet_01["name"]
  node_count = 1
  data_disk_count = 1 
  host_prefix = "lhq_sprockets_"
  labels = "sprockets,ca"
}