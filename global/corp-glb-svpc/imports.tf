data "terraform_remote_state" "lhq_project_control" {
  backend = "remote"
  config = {
    organization = "leblanchq"
    workspaces = {
        name = "lhq-${var.env}-project-control"
    }
  }
}