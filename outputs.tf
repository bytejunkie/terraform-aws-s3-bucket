output "bucket" {
  value = aws_s3_bucket.bucket
}

output "bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}

output "force_destroy" {
  value = aws_s3_bucket.bucket.force_destroy
}
