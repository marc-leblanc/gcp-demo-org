data "terraform_remote_state" "lhq_corp_vpc" {
  backend = "remote"
  config = {
    organization = "leblanchq"
    workspaces = {
        name = "lhq-corp-vpc"
    }
  }
}

data "terraform_remote_state" "lhq_ca_network" {
    backend = "remote"
    config = {
        organization = "leblanchq"
        workspaces = {
            name = "lhq-ca-network"
        }
    }
}