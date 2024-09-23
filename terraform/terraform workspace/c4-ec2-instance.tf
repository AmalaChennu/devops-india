# Create EC2 Instance - Amazon Linux
resource "aws_instance" "my-ec2-vm" {
    ami           = data.aws_ami.amzlinux.id 
    instance_type = var.instance_type 
    count         = terraform.workspace == "default" ? 2:1 
    user_data     = file("apache-install.sh")
    vpc_security_group.ids = [aws_security_group.S.id, aws_security_group.W.id]
    tags = {
        "Name" = "vm-${terraform.workspace}-${count.index}"
    }
}