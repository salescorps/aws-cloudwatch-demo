provider "aws" {
  region = "eu-west-3"
}

resource "aws_cloudwatch_event_rule" "this" {
  name                = "terraform-cloud"
  schedule_expression = "rate(${var.health_check_count} ${var.health_check_unit})"
  is_enabled          = true
}