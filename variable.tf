variable "project_name" {
  description = "Name of the Project"
  type        = string
  default     = "project-ci-cd"
}
variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
  default     = "project-s3-bucket256"
}
variable "kms_key_arn" {
  description = "KMS Key ARN"
  type        = string
  default     = "arn:aws:kms:ap-south-1:068760013706:key/2b310d6a-dc34-4ed1-b64e-87bfd1fa3672" # change it
}


