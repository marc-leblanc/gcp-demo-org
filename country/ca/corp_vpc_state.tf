data "terraform_remote_state" "corp_vpc" {
  backend = "remote"
  config = {
    organization = "leblanchq"
    workspaces = {
        name = "lhq-${var.env}-corp-vpc"
    }
  }
}

data "terraform_remote_state" "project_control" {
  backend = "remote"
  config = {
    organization = "leblanchq"
    workspaces = {
        name = "lhq-${var.env}-project-control"
    }
  }
}