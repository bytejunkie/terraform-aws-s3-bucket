resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = "private"

  force_destroy = var.force_destroy
  
  tags = {
    Name      = var.bucket_name
    Module_By = "Bytejunkie77"
  }
}
