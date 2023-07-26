terraform {
  cloud {
    organization = "techweb"

    workspaces {
      name = "dv"
    }
  }
}