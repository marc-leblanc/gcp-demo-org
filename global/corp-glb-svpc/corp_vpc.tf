module "vpc" {
  source  = "app.terraform.io/leblanchq/vpc/gcp"
  version = "1.0.3"
  # insert required variables here
  gcp_vpc_name = var.corp_vpc_name
  gcp_vpc_description = var.corp_vpc_description
  project = var.gcp_project
}

output "vpc_name" { 
    value = module.vpc.VPC_Name
}