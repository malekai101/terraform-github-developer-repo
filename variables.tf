
// The variables in this section are passed by the providers.  They remain here from testing.

/*
variable github_token {
  description = "A token with access to create a GitHub account."
}

variable github_organization {
  description = "The GitHub organization in which to create the repo"
}

variable tfe_api_key {

}
*/


// GitHub

variable project_name {
  description = "Name of the project."
}

variable project_environment {
  description = "Project environment [Dev, QA, Prod]"
}

variable project_template {
  description = "Name of the template GitHub project."
}

variable project_template_owner {
  description = "The GitHub org owner of the GitHub template project."
}

// TFC

variable oauth_token_id {
  description = "The OAuth token for the GitHub VCS provider in which to house the code."
}

variable org_name {
  description = "The TFC org name in which to create the workspace."
}