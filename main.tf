
# random string as suffix
resource "random_string" "random" {
  length  = 5
  upper   = false
  special = false
}

resource "aws_s3_bucket" "b" {
  bucket = format("%s-%s", "tf-bucket", random_string.random.result)

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}

resource "aws_cloudwatch_event_rule" "this" {
  name                = "terraform-cloud"
  schedule_expression = "rate(${var.health_check_count} ${var.health_check_unit})"
  is_enabled          = true
}