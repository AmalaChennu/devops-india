resource "aws_instance" "APP1" {
    ami           = ""
    instance_type = ""
    user_data     = file{"${path.module}/App-install.sh"}
    tags = {
        Name = "APP1"
    }
}