module "vpc" {
  source  = "app.terraform.io/leblanchq/vpc/gcp"
  version = "1.0.3"
  # insert required variables here
  gcp_vpc_name = "arc-${var.env}-${var.corp_vpc_name}"
  gcp_vpc_description = var.corp_vpc_description
  gcp_project = data.terraform_remote_state.project_control.outputs.gcp_project_id
  auto_snets = false
}

output "vpc_name" { 
    value = module.vpc.VPC_Name
}