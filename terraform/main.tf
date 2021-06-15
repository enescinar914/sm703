resource "aws_s3_bucket_object" "object" {
  bucket = "sm703bucket"
  key = "TF_key"
  source = "."

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
}

provider "aws" {
  region = "us-east-2"
}

provider "aws" {
  region = "us-east-2"
  alias = "us_east"
}
