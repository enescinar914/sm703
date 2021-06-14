provider "aws" {
  alias  = "central"
  region = "us-east-2"
}

resource "aws_s3_bucket" "b" {
  bucket = "sm703bucket"
  acl    = "private"

  tags = {
    Name        = "sm703bucket"
    Environment = "Main"
  }
}
