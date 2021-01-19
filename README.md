# Terraform GitHub Developer Repo Module

This module creates a GitHub Repository and matched Terraform Cloud workspace for a developer to immediately begin using.  A GitHub repository is created from a template repositpory.  The repo will contain whatever the template provides plus a terraform.tf file pointing back to a Terraform Cloud workspace of the same name.  The Terraform Cloud workspace is tied to the repo to run automatically upon commits to the main branch.

## Requirements

Use of this module requires the github provider and the tfe providers.   The GitHub account used in the provider must have the rights to create a repository in the designated organization.  There must also be a template project in GitHub.  The TFE provider must use an account that has the ability to create workspaces.  Additionally there must be a GitHub VCS connection for the TFC organization.

## Versions

* 1.0.1: Initial version
* 1.0.2: Changes for auto queue and apply.
* 1.0.3: Added workspace id to output

## Usage

```hcl
module "sample-repo" {
    source = "app.terraform.io/csmith/developer-repo/github"

    project_name = "sample project"
    project_environment = "DEV"
    project_template = "template_repo"

    org_name = "TFC Organization Name"
    oauth_token_id = "GitHub OAuth token"
}
```