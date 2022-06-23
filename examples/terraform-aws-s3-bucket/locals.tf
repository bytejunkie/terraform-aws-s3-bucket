locals {
  local_data = jsondecode(file("${path.module}/variables.json"))

  bucket_names = [for k, v in local.local_data.buckets : k]
}
