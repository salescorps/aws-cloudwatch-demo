###############################################################################
# Copyright nkstechweb.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
###############################################################################
terraform {
  required_version          = ">= 0.15.1, < 2.0.0"
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = ">= 4.27.0, < 5.0.0"
      configuration_aliases = [
      ]
    }
  }
}
