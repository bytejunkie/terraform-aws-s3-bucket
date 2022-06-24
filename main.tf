resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = "private"

  force_destroy = var.force_destroy

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

# TODO Add a Bucket Policy
