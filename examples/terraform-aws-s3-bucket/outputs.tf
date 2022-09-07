
output "buckets" {
  value = local.bucket_names
}

output "bucket_name" {
  value = module.s3-buckets.bucket.bucket_name
}
