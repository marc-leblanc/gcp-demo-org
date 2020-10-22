data "google_compute_subnetwork" "ca_subnet_01" {
  name   = var.snet_name
  region = var.gcp_region
  ip_cidr_range = "10.2.0.0/16"
  #network = data.terraform_remote_state.corp_vpc.outputs.vpc_name
}