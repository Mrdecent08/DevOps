resource "aws_s3_bucket" "sample_bucket" {
  bucket = "sample_bucket"
  acl = "private"
  versioning {
    enabled = true
  }
  lifecycle_rule {
    enabled = true

    transition {
      days = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days = 60
      storage_class = "GLACIER"
    }
  }
  tags = {
    NAME = "Sample Bucket"
  }
}
