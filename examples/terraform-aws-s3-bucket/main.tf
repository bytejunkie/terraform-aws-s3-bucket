
module "s3-buckets" {
  for_each = toset(local.bucket_names)

  # source  = "bytejunkie/s3-bucket/aws"
  # version = "1.0.0"
  source = "../.."

  bucket_name = each.value

  force_destroy = local.local_data.buckets[each.value].force_destroy
}
