terraform {
  cloud {
    organization = "<ORGANIZATION>"

    workspaces {
      name = "testing"
    }
  }
}