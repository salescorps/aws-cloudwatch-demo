
locals {
  common_tags = {
    project     = "Trustee"
    environment = terraform.workspace
  }
}