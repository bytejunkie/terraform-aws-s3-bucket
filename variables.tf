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


variable "additional_tags" {
  type        = map(string)
  description = "(Optional) a map of tags to add to the defaults applied to the resource."
  default     = null
}
