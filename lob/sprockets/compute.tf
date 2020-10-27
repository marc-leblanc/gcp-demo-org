module "compute-instance" {
  source  = "app.terraform.io/leblanchq/compute-instance/google"
  version = "1.0.9"
  svpc_project_name = data.terraform_remote_state.project_control.outputs.gcp_project_id
  subnet = data.terraform_remote_state.ca_network.outputs.ca_subnet_01["name"]
  node_count = 1
  data_disk_count = 1 
  host_prefix = "lhq-sprockets-${var.env}-"
  labels = { "lob"="sprockets", "country"="ca", "env"=var.env}
  tags = "http"
  node_type = "f1-micro"
}