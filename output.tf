
output repo_desc {
  value = github_repository.dev_repo.description
}

output repo_fullname {
  value = github_repository.dev_repo.full_name
}

output tfc_workspace_name {
  value = github_repository.dev_repo.name
}

output repo_clone_url {
  value = github_repository.dev_repo.http_clone_url
}
