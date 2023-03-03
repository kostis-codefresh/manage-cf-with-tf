terraform {
  required_providers {
    codefresh = {
      source = "codefresh-io/codefresh"
      version = "0.2.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}


provider "codefresh" {
  api_url = var.api_url
  token = var.cf_token
}

provider "github" {
  token = var.gh_token # or `GITHUB_TOKEN`
}

resource "codefresh_project" "test" {
  name = "myproject"

  tags = [
    "docker",
  ]
}