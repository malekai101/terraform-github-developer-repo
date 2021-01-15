/*
provider "tfe" {
  token = var.tfe_api_key
}
*/

data "http" "tfc_ips" {
  url = "https://app.terraform.io/api/meta/ip-ranges"

  request_headers = {
    Accept = "application/vnd.api+json"
  }
}

## Consul Demo Workspace
 resource "tfe_workspace" "dev_project_workspace" {
   name         = github_repository.dev_repo.name
   organization = var.org_name
   queue_all_runs = false
   vcs_repo {
     identifier     = github_repository.dev_repo.full_name
     branch         = "main"
     oauth_token_id = var.oauth_token_id
  }
}