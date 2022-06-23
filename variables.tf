variable "bucket_name" {
  type        = string
  description = "(Required) The name for the bucket"
}


variable "force_destroy" {
  type        = string
  description = "(Required) The force_destroy setting for the bucket"
}
