
/*
provider "github" {
  token        = var.github_token
  organization = var.github_organization
}
*/

resource "github_repository" "dev_repo" {
  name        = "${replace(var.project_name, " ", "_")}_${var.project_environment}"
  description = "CSmith TF Test"

  visibility         = "private"
  gitignore_template = "terraform"
  auto_init          = true

  template {
    owner      = var.project_template_owner
    repository = var.project_template
  }
}

// This section is not needed in a GitOps workflow
/*
resource "github_repository_file" "terraform_file" {
  repository          = github_repository.dev_repo.name
  branch              = "main"
  file                = "terraform.tf"
  commit_message      = "Managed by Terraform"
  commit_author       = "Chris Smith"
  commit_email        = "csmith@gmail.com"
  overwrite_on_create = true
  content             = <<-EOT
  terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "csmith"

    workspaces {
      name = "${github_repository.dev_repo.name}"
    }
  }
}
EOT
}
*/



