terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
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
