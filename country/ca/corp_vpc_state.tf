data "terraform_remote_state" "corp_vpc" {
  backend = "remote"
  config = {
    organization = "leblanchq"
    workspaces = {
        name = "lhq-corp-vpc"
    }
  }
}