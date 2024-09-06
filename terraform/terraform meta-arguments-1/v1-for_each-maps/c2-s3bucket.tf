# Create S3 Bucket per environment with for_each and maps
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

resource "aws_s3_bucket" "mys3bucket092024" {
    # for_each Meta-Argument
    for_each = {
        dev   = "my-devapp-bucket"
        qa    = "my-qaapp-bucket"
        stage = "my-stageapp-bucket"
        prod  = "my-prodapp-bucket"
    }
    
    bucket = "${each.key}-${each.value}"
    acl    = "private"
    
    tags = {
        environment = each.key 
        bucketname  = "${each.key}-${each.value}"
        eachvalue   = each.value 
    }
}