# Input Variable definitions
variable "bucket_name" {
  description = "Name of the s3 bucket . Must be Unique across AWS"
  type        = string
}
variable "tags" {
  description = " Tags to set on the Bucket"
  type        = map(string)
  default     = {}
}