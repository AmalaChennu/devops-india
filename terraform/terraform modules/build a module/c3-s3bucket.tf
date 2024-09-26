# Call our Custom Terraform Module Which We build earlier
module "website_s3_bucket" {
    source       = "/terraform/terraform modules/modules/aws-s3-static-website-bucket" # Mandatory
    bucket_name  = var.my_s3_bucket
    tags         = var.my_s3_tags
}