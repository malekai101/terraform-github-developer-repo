
output repo_desc {
  description = "The description of the GitHub repo."
  value = github_repository.dev_repo.description
}

output repo_fullname {
  description = "The full name of the GitHub repo."
  value = github_repository.dev_repo.full_name
}

output tfc_workspace_name {
  description = "The name of the TFC workspace."
  value = github_repository.dev_repo.name
}

output repo_clone_url {
  description = "The HTTP clone URL for the repo."
  value = github_repository.dev_repo.http_clone_url
}
