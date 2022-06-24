variable "bucket_name" {
  type        = string
  description = "(Required) The name for the bucket"
}

variable "bucket_versioning_status" {
  type        = string
  description = "(Required) The name for the bucket"
  default     = "Suspended"
}


variable "force_destroy" {
  type        = string
  description = "(Required) The force_destroy setting for the bucket"
}
