# Output ariable Definitions
output "arn" {
    description = "ARN of the s3 bucket"
    value       = aws_s3_bucket.s3_bucket.arn 
}
output "name" {
    description = "Name (id) of the bucket"
    value       = aws_s3_bucket.s3_bucket.id
}
output "domain" {
    description = "Domain Name of the bucket"
    value       = aws_s3_bucket.s3_bucket.website_domain
}
output "endpoint" {
    description = "Endpoint Information of the bucket"
    value       = aws_s3_bucket.s3_bucket.website_endpoint
}