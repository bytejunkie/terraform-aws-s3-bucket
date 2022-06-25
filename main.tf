resource "aws_s3_bucket" "bucket" {
  bucket        = var.bucket_name
  force_destroy = var.force_destroy

  lifecycle_rule {
    enabled = true
    expiration {
      days = 7
    }
  }

  tags = {
    Name      = var.bucket_name
    Module_By = "Bytejunkie77"
  }
} #TODO  merge tags

resource "aws_s3_bucket_versioning" "version" {
  bucket = aws_s3_bucket.bucket.id

  versioning_configuration {
    status = var.bucket_versioning_status
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
  bucket = aws_s3_bucket.bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "lifecycle" {
  bucket = aws_s3_bucket.bucket.id

  rule {
    id = "rule-1"
    expiration {
      days                         = 60
      expired_object_delete_marker = true
    }
    # ... other transition/expiration actions ...

    status = "Enabled"
  }
}


# TODO Add a Bucket Policy
