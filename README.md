# terraform-aws-s3-bucket

## Background
This module deploys the AWS S3 Bucket Resource

## usage

This is the simplest possible usage of the module. 
```
module "bucket" {
  source  = "bytejunkie/bucket/aws"
  version = "1.0.0"
  # insert the 1 required variable here
  bucket_name = "bytejunkies_bucket"
}
```

## Required Parameters

``` hcl
variable "bytejunkies_bucket" {
  type        = string
  description = "(Required) The name for the bucket"
}
```

## Optional Parameters


## Examples

There are some code examples in /examples/terraform-aws-s3-bucket