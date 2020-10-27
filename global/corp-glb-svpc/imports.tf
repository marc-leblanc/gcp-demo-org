data "terraform_remote_state" "project_control" {
  backend = "remote"
  config = {
    organization = "leblanchq"
    workspaces = {
        name = "lhq-${var.env}-project-control"
    }
  }
}
