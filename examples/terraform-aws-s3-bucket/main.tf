
module "s3-buckets" {
  for_each = toset(local.bucket_names)

  source = "../.."
  # source  = "bytejunkie/s3-bucket/aws"
  # version = "1.0.4"

  bucket_name = each.value

  force_destroy            = local.local_data.buckets[each.value].force_destroy
  bucket_versioning_status = local.local_data.buckets[each.value].bucket_versioning_status

  expiration_rules = local.local_data.buckets[each.value].lifecycle_rules.expiration

}
