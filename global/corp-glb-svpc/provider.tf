provider "google"{
    project = data.terraform_remote_state.project_control.outputs.gcp_project_id
}