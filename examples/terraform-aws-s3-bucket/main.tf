
module "s3-buckets" {
  for_each = toset(local.bucket_names)

  source  = "bytejunkie/s3-bucket/aws//examples/terraform-aws-s3-bucket"
  version = "1.0.3"

  bucket_name = each.value

  force_destroy = local.local_data.buckets[each.value].force_destroy
}
