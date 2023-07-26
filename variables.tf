###############################################################################
# Copyright nkstechweb.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
###############################################################################

variable "health_check_count" {
  description = "The scheduling expression for count"
  type    = string
  default = "5"
}

variable "health_check_unit" {
  description = "The scheduling expression for unit"
  type    = string
  default = "minutes"
}