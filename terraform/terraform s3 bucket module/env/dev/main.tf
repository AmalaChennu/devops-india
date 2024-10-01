module "s3-private-bucket"{
        source = "../../s3-private"
        name = "private-terraform-module"
        environment = "dev"
}