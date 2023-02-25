terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
  cloud {
    organization = "FriendsOfShopware"
    workspaces {
      name = "github"
    }
  }
}

provider "github" {
  owner = "FriendsOfShopware"
}

resource "github_membership" "users" {
  for_each = toset(distinct(concat(
    var.members,
    var.administrators,
  )))
  username = each.key
  role     = contains(var.administrators, each.key) ? "admin" : "member"
}

resource "github_repository" "repositories" {
  for_each               = var.repositories
  name                   = each.key
  description            = each.value.description
  has_issues             = try(each.value.has_issues, true)
  topics                 = try(each.value.topics, [])
  has_projects           = false
  has_wiki               = false
  auto_init              = false
  delete_branch_on_merge = true
  homepage_url           = try(each.value.homepage_url, "")
  vulnerability_alerts   = true
  allow_auto_merge       = true
  allow_update_branch    = true
  archive_on_destroy     = true

  lifecycle {
    prevent_destroy = true
  }
  security_and_analysis {
    secret_scanning {
      status = "enabled"
    }
  }
}

resource "github_branch" "repositories" {
  for_each = var.repositories
  repository = github_repository.repositories[each.key].name
  branch = "main"
}

resource "github_branch_default" "repositories" {
  for_each = var.repositories
  repository = github_repository.repositories[each.key].name
  branch = github_branch.repositories[each.key].branch
  rename = true
}